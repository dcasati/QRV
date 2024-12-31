import xmlrpc.client

FLRIG_URL = "http://localhost:12345"

try:
    client = xmlrpc.client.ServerProxy(FLRIG_URL)
    frequency = 7010000  # Example frequency in Hz
    print(f"Sending frequency: {frequency} Hz (type: {type(frequency)})")
    client.rig.set_frequency(frequency)
    print("Frequency set successfully.")
except Exception as e:
    print(f"Error: {e}")

