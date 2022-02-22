Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 949B94BEEF3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Feb 2022 02:44:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A838D8131F;
	Tue, 22 Feb 2022 01:44:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7YREbXlXjIuw; Tue, 22 Feb 2022 01:44:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 88BD081326;
	Tue, 22 Feb 2022 01:44:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1FCC01BF297
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Feb 2022 01:44:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0BAC7401A0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Feb 2022 01:44:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xo-kh8EBioTJ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Feb 2022 01:44:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CAA454019C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Feb 2022 01:44:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645494290; x=1677030290;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=28/m/sulymyOQdb0PDaI9bcqDWm/dTg4vVBO4OUC3Dk=;
 b=hOrNx67eYaAIr6dZ8lDuQrIL9ATM1i8JDHOkRMgiwbJILeqtFpn0bCL9
 HNYHEzpDEu2xQP6rnkwuk92xRD8HGtA3srHpX39K54Kybl+CSHNIX5waK
 zG2m7KaNgCuH2DsQy/w7u/XYmzmBGxX9oYT0syz2oL3cdgfTTOmVCVeOu
 7Ihla7IPMTAhSeLaWcII0YJ5ZDcJK1EWnddlMufwsIvYeeWscPSpuzsu1
 E3LhRrK4qnv0vRjpYrVG2ZBVMHQ2+q/+E3+7EYkJg9YN7RsSQW+w5oZ1Y
 PQocfUMiRCt6C4Zmd1OOsqWhS0yCJYM0V1085C7mp/m7eON8VrxpexAmz w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10265"; a="251774799"
X-IronPort-AV: E=Sophos;i="5.88,386,1635231600"; d="scan'208";a="251774799"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2022 17:44:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,386,1635231600"; d="scan'208";a="505365460"
Received: from lkp-server01.sh.intel.com (HELO da3212ac2f54) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 21 Feb 2022 17:44:48 -0800
Received: from kbuild by da3212ac2f54 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nMKER-0002Cb-Ls; Tue, 22 Feb 2022 01:44:47 +0000
Date: Tue, 22 Feb 2022 09:44:32 +0800
From: kernel test robot <lkp@intel.com>
To: Mateusz Palczewski <mateusz.palczewski@intel.com>,
 intel-wired-lan@lists.osuosl.org
Message-ID: <202202220925.i3vWGofk-lkp@intel.com>
References: <20220221151329.27346-1-mateusz.palczewski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220221151329.27346-1-mateusz.palczewski@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: Add restoration of VF
 MSI-X state during PCI reset
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: Slawomir Laba <slawomirx.laba@intel.com>, kbuild-all@lists.01.org,
 Karen Sornek <karen.sornek@intel.com>,
 Mateusz Palczewski <mateusz.palczewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Mateusz,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on net/master]

url:    https://github.com/0day-ci/linux/commits/Mateusz-Palczewski/i40e-Add-restoration-of-VF-MSI-X-state-during-PCI-reset/20220221-231705
base:   https://git.kernel.org/pub/scm/linux/kernel/git/davem/net.git 8940e6b669ca1196ce0a0549c819078096390f76
config: alpha-buildonly-randconfig-r003-20220221 (https://download.01.org/0day-ci/archive/20220222/202202220925.i3vWGofk-lkp@intel.com/config)
compiler: alpha-linux-gcc (GCC) 11.2.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/0day-ci/linux/commit/ccbd216cb10be64cf9cb5d848bbadedc60bc3878
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Mateusz-Palczewski/i40e-Add-restoration-of-VF-MSI-X-state-during-PCI-reset/20220221-231705
        git checkout ccbd216cb10be64cf9cb5d848bbadedc60bc3878
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.2.0 make.cross O=build_dir ARCH=alpha SHELL=/bin/bash drivers/net/ethernet/intel/i40e/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c: In function 'i40e_restore_all_vfs_msi_state':
>> drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c:180:56: error: 'struct pci_dev' has no member named 'physfn'; did you mean 'is_physfn'?
     180 |                         if (vfdev->is_virtfn && vfdev->physfn == pdev)
         |                                                        ^~~~~~
         |                                                        is_physfn


vim +180 drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c

   154	
   155	/**
   156	 * i40e_restore_all_vfs_msi_state - restore VF MSI state after PF FLR
   157	 * @pdev: pointer to a pci_dev structure
   158	 *
   159	 * Called when recovering from a PF FLR to restore interrupt capability to
   160	 * the VFs.
   161	 */
   162	void i40e_restore_all_vfs_msi_state(struct pci_dev *pdev)
   163	{
   164		struct pci_dev *vfdev;
   165		u16 vf_id;
   166		int pos;
   167	
   168		/* Continue only if this is a PF */
   169		if (!pdev->is_physfn)
   170			return;
   171	
   172		if (!pci_num_vf(pdev))
   173			return;
   174	
   175		pos = pci_find_ext_capability(pdev, PCI_EXT_CAP_ID_SRIOV);
   176		if (pos) {
   177			pci_read_config_word(pdev, pos + PCI_SRIOV_VF_DID, &vf_id);
   178			vfdev = pci_get_device(pdev->vendor, vf_id, NULL);
   179			while (vfdev) {
 > 180				if (vfdev->is_virtfn && vfdev->physfn == pdev)
   181					pci_restore_msi_state(vfdev);
   182				vfdev = pci_get_device(pdev->vendor, vf_id, vfdev);
   183			}
   184		}
   185	}
   186	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
