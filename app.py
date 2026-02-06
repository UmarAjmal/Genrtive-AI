import subprocess
import sys

# Libraries ki list jo install karni hain
libraries = [
    "langchain",
    "langchain-core",
    "langchain-openai",
    "openai",
    "langchain-anthropic",
    "langchain-google-genai",
    "google-generativeai",
    "langchain-huggingface",
    "transformers",
    "huggingface-hub",
    "python-dotenv",
    "numpy",
    "scikit-learn"
]

def install(package):
    print(f"Installing {package}...")
    subprocess.check_call([sys.executable, "-m", "pip", "install", "-U", package])

if __name__ == "__main__":
    print("--- Starting Installation ---")
    for lib in libraries:
        try:
            install(lib)
        except Exception as e:
            print(f"Error installing {lib}: {e}")
    print("\n--- All libraries installed successfully! ---")