TASK=MRPC
SUFFIX=sparsity0.6
EX_CATE=CoFi_mod
PRUNING_TYPE=structured_heads+structured_mlp+hidden+layer
SPARSITY=0.6
DISTILL_LAYER_LOSS_ALPHA=0.9
DISTILL_CE_LOSS_ALPHA=0.1
LAYER_DISTILL_VERSION=4
SPARSITY_EPSILON=0.01
DISTILLATION_PATH=Intel/bert-base-uncased-mrpc

bash scripts/run_CoFi_mod.sh $TASK $SUFFIX $EX_CATE $PRUNING_TYPE $SPARSITY $DISTILLATION_PATH $DISTILL_LAYER_LOSS_ALPHA $DISTILL_CE_LOSS_ALPHA $LAYER_DISTILL_VERSION $SPARSITY_EPSILON
