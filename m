Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1804E4BD9BE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Feb 2022 13:47:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A42DF60E32;
	Mon, 21 Feb 2022 12:47:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jMgpwrCqRgss; Mon, 21 Feb 2022 12:47:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A290860B85;
	Mon, 21 Feb 2022 12:47:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DC25C1BF3BE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Feb 2022 12:47:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C2F624015A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Feb 2022 12:47:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gX-SmycGy8id for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Feb 2022 12:47:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A0DB340117
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Feb 2022 12:47:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645447637; x=1676983637;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=eu4m2+PnvYexLBH4e4tYCZ64YFtw3z4xlXKaT8jn93k=;
 b=YxlrsyIhZsN6/0HcUDg19ByEibdlue1jqxCR+eVxqhU/QmENXxP2mCxk
 BJq3XoGLOmwINpic/vofxchpWaHqLgjysVwZ7J+7oAn/mefYGTFY33iSx
 es09R+V04IqqaHfrMxO9563i0yzQg+npLg8vIYHjw+vDg/nEVzaG0Fir6
 y/15nxZ4TQw+LRjO58bfiBufiwzQv9bdQWgmKpTrnbAGEL10GvwJnid0v
 j5kylS4lzJBUxn4faXY0I/XfrFiDIi1gcv8zuFCPGG4F20zs87BXU1sBS
 1B0czS1lN34ykTkifB2nyB/0m8+zq1Bb6c1nh7Y4bhLHRDqGz+AxPXiKQ g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10264"; a="231470888"
X-IronPort-AV: E=Sophos;i="5.88,385,1635231600"; d="scan'208";a="231470888"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2022 04:47:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,385,1635231600"; d="scan'208";a="775988367"
Received: from lkp-server01.sh.intel.com (HELO da3212ac2f54) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 21 Feb 2022 04:47:15 -0800
Received: from kbuild by da3212ac2f54 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nM85y-0001bY-J3; Mon, 21 Feb 2022 12:47:14 +0000
Date: Mon, 21 Feb 2022 20:46:59 +0800
From: kernel test robot <lkp@intel.com>
To: Mateusz Palczewski <mateusz.palczewski@intel.com>,
 intel-wired-lan@lists.osuosl.org
Message-ID: <202202212032.vtYT36Q4-lkp@intel.com>
References: <20220221103115.32319-1-mateusz.palczewski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220221103115.32319-1-mateusz.palczewski@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Add restoration of VF
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

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on net/master]

url:    https://github.com/0day-ci/linux/commits/Mateusz-Palczewski/i40e-Add-restoration-of-VF-MSI-X-state-during-PCI-reset/20220221-183514
base:   https://git.kernel.org/pub/scm/linux/kernel/git/davem/net.git 8940e6b669ca1196ce0a0549c819078096390f76
config: ia64-buildonly-randconfig-r002-20220221 (https://download.01.org/0day-ci/archive/20220221/202202212032.vtYT36Q4-lkp@intel.com/config)
compiler: ia64-linux-gcc (GCC) 11.2.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/0day-ci/linux/commit/c0bd3a5312cdc4bfebb4724cc4e881f747b4f80b
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Mateusz-Palczewski/i40e-Add-restoration-of-VF-MSI-X-state-during-PCI-reset/20220221-183514
        git checkout c0bd3a5312cdc4bfebb4724cc4e881f747b4f80b
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.2.0 make.cross O=build_dir ARCH=ia64 SHELL=/bin/bash drivers/net/ethernet/intel/i40e/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c: In function 'i40e_restore_all_vfs_msi_state':
>> drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c:180:66: warning: comparison between pointer and integer
     180 |                         if (vfdev->is_virtfn && vfdev->is_physfn == pdev)
         |                                                                  ^~


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
 > 180				if (vfdev->is_virtfn && vfdev->is_physfn == pdev)
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
