cmpif dev %@0%
goto dev_help
echo -----------�R�}���h�ꗗ--------------
echo 
echo help:�w���v��\�����܂��B
echo echo:�R���\�[���Ƀ��b�Z�[�W��\�����܂��B
echo date:���݂̓�����\�����܂��B
echo time:���݂̎��Ԃ�\�����܂��B
echo exit:HSPPO���I�����܂��B
echo cls:�v�����v�g����ԏ�ɂ����Ă��܂��B
echo exec:Windows�A�v���P�[�V���������s���܂��B
echo script:�X�N���v�g�����s���܂��B/bin/�t�H���_���̃X�N���v�g�͂��̃L�[���[�h�Ȃ�
echo        �Ŏ��s�ł��܂��B
echo wait:��莞�ԃX�N���v�g�̎��s���~���܂��B�P�ʂ̓~���b�ł��B
echo goline:�X�N���v�g���s���ɁA�s�ԍ��w��ŃW�����v���܂��B
echo ls:�J�����g�f�B���N�g�����̃f�B���N�g���ƃt�@�C����\�����܂��B
echo ver:HSPPO�̃o�[�W������\�����܂��B
echo cat:�t�@�C���̓��e��\�����܂��B
echo setvalue:�ϐ��̓��e�����������܂��B
echo aevalue:�ϐ��ɒǋL���܂��B
echo rem:�������܂���B�R�����g���������Ɏg�p���܂��B
echo cmpif:2�̕����񂪓������A�����łȂ����ɂ���ĕ��򏈗����s���܂��B
echo input:���[�U�[�̓��͂�������������ϐ��ɑ�����܂��B
echo cd:�J�����g�f�B���N�g���[��ύX���܂��B
echo install:HSPPO���C���X�g�[�����܂��B
help_info
goto END


label dev_help

echo -----------�R�}���h�ꗗ--------------
echo system'reset:cls���߂̉������̂��߂̖��߂ł��B����cls���߂Ɠ����ł��B
echo read:�t�@�C�������ϐ�@read�ɓǂݍ��݂܂��B
echo write:�w�肳�ꂽ���ϐ��̃t�@�C����C�ӂ̃t�@�C���ɏ����o���܂��B
echo delline:���ϐ��̎w�肵���s���폜���܂��B
help_end

label END