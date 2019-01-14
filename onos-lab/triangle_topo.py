# Import mininet related packages
from mininet.net import Mininet
from mininet.node import Node, RemoteController
from mininet.log import setLogLevel, info
from mininet.node import CPULimitedHost
from mininet.link import TCLink
from mininet.cli import CLI

def run():
  net = Mininet(autoSetMacs=True, cleanup=True)
  
  # Create the network switches
  s1, s2, s3 = [net.addSwitch(s) for s in 's1', 's2', 's3']
  
  h1, h2, h3, h4, h5, h6 = [net.addHost(h) for h in 'h1', 'h2', 'h3', 'h4', 'h5', 'h6']
  
  # Tell mininet to use a remote controller located at 127.0.0.1:6653
  c1 = RemoteController('c1', ip='127.0.0.1', port=6633)
  net.addController(c1)

  # Add link between switches. Each link has a delay of 5ms and 10Mbps bandwidth
  net.addLink(s1, s2)
  net.addLink(s2, s3)
  net.addLink(s3, s1)

  # Add link between a host and a switch
  for (h, s) in [(h1, s1), (h3, s2), (h5, s3)]:
    net.addLink(h, s)
  for (h, s) in [(h2, s1), (h4, s2), (h6, s3)]:
    net.addLink(h, s)
  # Start each switch and assign it to the remote controller
  for s in [s1, s2, s3]:
    s.start([c1])
  net.staticArp()
  net.start()
  
  CLI(net)

if __name__ == '__main__':
    setLogLevel('info')
    run()
