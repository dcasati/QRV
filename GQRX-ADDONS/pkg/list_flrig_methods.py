import xmlrpc.client

FLRIG_URL = "http://localhost:12345"  # Adjust as needed
client = xmlrpc.client.ServerProxy(FLRIG_URL)

try:
    methods = client.system.listMethods()
    print("Available methods:", methods)
except Exception as e:
    print(f"Error connecting to flrig: {e}")

