TASK=CoLA
SUFFIX=sparsity0.6
EX_CATE=CoFi_mod
PRUNING_TYPE=structured_heads+structured_mlp+hidden+layer
SPARSITY=0.6
DISTILL_LAYER_LOSS_ALPHA=0.9
DISTILL_CE_LOSS_ALPHA=0.1
LAYER_DISTILL_VERSION=4
SPARSITY_EPSILON=0.01
DISTILLATION_PATH=mofyrt/bert-base-uncased-finetuned-cola

PRUNED_MODEL_PATH=/scratch/network/hw8161/CoFiPruning/out/$TASK/$EX_CATE/${TASK}_${SUFFIX}
PRUNING_TYPE=None # Setting the pruning type to be None for standard fine-tuning.
LEARNING_RATE=3e-5

bash scripts/run_CoFi_mod.sh $TASK $SUFFIX $EX_CATE $PRUNING_TYPE $SPARSITY $DISTILLATION_PATH $DISTILL_LAYER_LOSS_ALPHA $DISTILL_CE_LOSS_ALPHA $LAYER_DISTILL_VERSION $PRUNED_MODEL_PATH $LEARNING_RATE
