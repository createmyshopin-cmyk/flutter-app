// Production API base URL — Railway deployment
// All services import this single getter; never hardcode URLs elsewhere.
const String _productionUrl = 'https://backend-api-production-140f.up.railway.app';

String get apiBaseUrl => _productionUrl;
