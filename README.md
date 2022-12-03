# sc_multimodal
 
dense_model.pt - parameters of MLP model 1 that predicts all genes

dense_model_hvg.pt - parameters of MLP model 2 that predicts highly variable genes

hvg_index.npy - column index of highly variable genes

sample_input.npz - sample input (chromatin accessibility data)

sample_target.npz - sample target for R2 calculation (gene expression data)

multimodal_sample_run.ipynb - Jupyter notebook for evaluation on sample data

multimodal_sample_run.html - Jupyter notebook for evaluation on sample data (HTML export)

tsvd_input.pkl - tSVD matrix factorizer for original input data

tsvd_input_binary.pkl - tSVD matrix factorizer for binarized input data

src/multimodal_dev.ipynb - Jupyter notebook for development (contains all used code)

src/multimodal_dev.html - Jupyter notebook for development (HTML export)
