# FAQ'S
 
###  Are there any sample Models available?
There are various sample models that are provided in Torchserve out of the box. Checkout out our[Model Zoo](https://github.com/pytorch/serve/blob/master/docs/model_zoo.md) for list of all available models.

### What benefits Torchserve has over AWS Multi-Model-server?
Torchserve is derived from Multi-Model-server, But Torchserve is specifically tuned for Pytorch models. It also has new features like Snapshot and model versioning.

### Can I run Torchserve APIs on different ports other than 8080 & 8081?
Yes, Torchserve API ports are configurable using a properties file or enviroment variable.
Refer  [configuration.md](https://github.com/pytorch/serve/blob/master/docs/configuration.md) for more details.

### Does Torchserve has Windows Support?
Currently Torchserve supports Windows only via WSL(Windows Subsystem for Linux).
The native Windows support will be added in upcoming releases.

###  How do I return an image output for a Style transfer model ?
You would have write a custom handler with the post processing logic as per requirement. 
Refer  [custom  service documentation](https://github.com/pytorch/serve/blob/master/docs/custom_service.md#custom-handlers) for more details.

### Can I do streaming service with Torchserve like streaming speech recognition?
Torchserve currently supports only inference though HTTP 1.0 - Request / Response style.
We dont have anything particular in out roadmap - [pytorch/pytorch#27610](https://github.com/pytorch/pytorch/issues/27610)

### How can I resolve model specific python dependency ?
You can provide a requirements.txt while creating a mar file using "requirements-file/-r"flag. Also you can your dependency files using "--extra-files" flag.  [configuration.md](https://github.com/pytorch/serve/blob/master/docs/configuration.md) 
A sample model example will be added soon with [issue 593](https://github.com/pytorch/serve/issues/593).

### Which are default hanlers availble in Torchserve?
TorchServe has following default handlers.
- [image_classifier](../ts/torch_handlers/image_classifier.py)
- [image_segmenter](../ts/torch_handlers/image_segmenter.py)
- [object_detector](../ts/torch_handlers/object_detector.py)
- [text_classifier](../ts/torch_handlers/text_classifier.py)

### Can I reuse/extend default handlers?
Yes, you can extend base handler or default handlers to reuse the existing code.
Refer [Extend default handlers ](https://github.com/pytorch/serve/blob/master/docs/custom_service.md#Extend-default-handlers) section.
