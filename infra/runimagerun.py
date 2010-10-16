from boto.ec2.connection import EC2Connection
import boto.ec2

"""
Regions stuff
regions = boto.ec2.regions()
eu = regions[0]
eu = eu.connect()


"""

conn = EC2Connection('<aws access key>', '<aws secret key>')

images = conn.get_all_images()
images
image = images[0]
image.location
ec2-public-images/fedora-core4-base.manifest.xml
reservation = image.run()
instance.update()
instance.state

instance.dns_name
instance.stop()
instance.update()
instance.state
u'shutting-down'

web = conn.create_security_group('apache', 'Our Apache Group')
web
SecurityGroup:apache
web.authorize('tcp', 80, 80, '0.0.0.0/0')
True
