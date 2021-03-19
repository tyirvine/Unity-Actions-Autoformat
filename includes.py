# Install the module
python -m pip install actions_includes

# python -m actions_include <input-workflow-with-includes> <output-workflow-flattened>
python -m actions_includes ./.github/workflows-src/action.yml ./.github/workflows/action.yml
