Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C37834662B8
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Dec 2021 12:49:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3B70F607D4;
	Thu,  2 Dec 2021 11:49:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uh5nnMMQdAHn; Thu,  2 Dec 2021 11:49:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 19F9C6071E;
	Thu,  2 Dec 2021 11:49:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EBE381BF5F8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Dec 2021 11:49:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CB33060665
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Dec 2021 11:49:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mRppLvUxQnrT for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Dec 2021 11:49:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C62B8605BF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Dec 2021 11:49:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10185"; a="223923159"
X-IronPort-AV: E=Sophos;i="5.87,281,1631602800"; d="scan'208";a="223923159"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2021 03:49:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,281,1631602800"; d="scan'208";a="541203627"
Received: from lkp-server02.sh.intel.com (HELO 9e1e9f9b3bcb) ([10.239.97.151])
 by orsmga001.jf.intel.com with ESMTP; 02 Dec 2021 03:49:30 -0800
Received: from kbuild by 9e1e9f9b3bcb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mskaf-000GH2-Lc; Thu, 02 Dec 2021 11:49:29 +0000
Date: Thu, 2 Dec 2021 19:48:51 +0800
From: kernel test robot <lkp@intel.com>
To: Brett Creeley <brett.creeley@intel.com>
Message-ID: <202112021957.1KmfBjqc-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue 108/111]
 drivers/net/ethernet/intel/ice/ice_vlan_mode.c:96:31: error: 'ICE_DBG_AQ'
 undeclared; did you mean 'ICE_DBG_LAN'?
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
Cc: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, kbuild-all@lists.01.org,
 linux-kernel@vger.kernel.org, Dan Nowlin <dan.nowlin@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
head:   99b52d8ae980f329a6b1c3f2cb76eb31c800a684
commit: 3f419c30541088b1a1b8a7a7197d82c21ba3898c [108/111] ice: Support configuring the device to Double VLAN Mode
config: m68k-randconfig-r014-20211202 (https://download.01.org/0day-ci/archive/20211202/202112021957.1KmfBjqc-lkp@intel.com/config)
compiler: m68k-linux-gcc (GCC) 11.2.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git/commit/?id=3f419c30541088b1a1b8a7a7197d82c21ba3898c
        git remote add tnguy-next-queue https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git
        git fetch --no-tags tnguy-next-queue dev-queue
        git checkout 3f419c30541088b1a1b8a7a7197d82c21ba3898c
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.2.0 make.cross O=build_dir ARCH=m68k SHELL=/bin/bash

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from drivers/net/ethernet/intel/ice/ice_type.h:11,
                    from drivers/net/ethernet/intel/ice/ice.h:58,
                    from drivers/net/ethernet/intel/ice/ice_common.h:7,
                    from drivers/net/ethernet/intel/ice/ice_vlan_mode.c:4:
   drivers/net/ethernet/intel/ice/ice_vlan_mode.c: In function 'ice_aq_is_dvm_ena':
>> drivers/net/ethernet/intel/ice/ice_vlan_mode.c:96:31: error: 'ICE_DBG_AQ' undeclared (first use in this function); did you mean 'ICE_DBG_LAN'?
      96 |                 ice_debug(hw, ICE_DBG_AQ, "Failed to get VLAN mode, status %d\n",
         |                               ^~~~~~~~~~
   drivers/net/ethernet/intel/ice/ice_osdep.h:42:14: note: in definition of macro 'ice_debug'
      42 |         if ((type) & (hw)->debug_mask)                          \
         |              ^~~~
   drivers/net/ethernet/intel/ice/ice_vlan_mode.c:96:31: note: each undeclared identifier is reported only once for each function it appears in
      96 |                 ice_debug(hw, ICE_DBG_AQ, "Failed to get VLAN mode, status %d\n",
         |                               ^~~~~~~~~~
   drivers/net/ethernet/intel/ice/ice_osdep.h:42:14: note: in definition of macro 'ice_debug'
      42 |         if ((type) & (hw)->debug_mask)                          \
         |              ^~~~


vim +96 drivers/net/ethernet/intel/ice/ice_vlan_mode.c

     3	
   > 4	#include "ice_common.h"
     5	
     6	/**
     7	 * ice_pkg_get_supported_vlan_mode - determine if DDP supports Double VLAN mode
     8	 * @hw: pointer to the HW struct
     9	 * @dvm: output variable to determine if DDP supports DVM(true) or SVM(false)
    10	 */
    11	static int
    12	ice_pkg_get_supported_vlan_mode(struct ice_hw *hw, bool *dvm)
    13	{
    14		u16 meta_init_size = sizeof(struct ice_meta_init_section);
    15		struct ice_meta_init_section *sect;
    16		struct ice_buf_build *bld;
    17		int status;
    18	
    19		/* if anything fails, we assume there is no DVM support */
    20		*dvm = false;
    21	
    22		bld = ice_pkg_buf_alloc_single_section(hw,
    23						       ICE_SID_RXPARSER_METADATA_INIT,
    24						       meta_init_size, (void **)&sect);
    25		if (!bld)
    26			return -ENOMEM;
    27	
    28		/* only need to read a single section */
    29		sect->count = cpu_to_le16(1);
    30		sect->offset = cpu_to_le16(ICE_META_VLAN_MODE_ENTRY);
    31	
    32		status = ice_aq_upload_section(hw,
    33					       (struct ice_buf_hdr *)ice_pkg_buf(bld),
    34					       ICE_PKG_BUF_SIZE, NULL);
    35		if (!status) {
    36			DECLARE_BITMAP(entry, ICE_META_INIT_BITS);
    37			u32 arr[ICE_META_INIT_DW_CNT];
    38			u16 i;
    39	
    40			/* convert to host bitmap format */
    41			for (i = 0; i < ICE_META_INIT_DW_CNT; i++)
    42				arr[i] = le32_to_cpu(sect->entry.bm[i]);
    43	
    44			bitmap_from_arr32(entry, arr, (u16)ICE_META_INIT_BITS);
    45	
    46			/* check if DVM is supported */
    47			*dvm = test_bit(ICE_META_VLAN_MODE_BIT, entry);
    48		}
    49	
    50		ice_pkg_buf_free(hw, bld);
    51	
    52		return status;
    53	}
    54	
    55	/**
    56	 * ice_aq_get_vlan_mode - get the VLAN mode of the device
    57	 * @hw: pointer to the HW structure
    58	 * @get_params: structure FW fills in based on the current VLAN mode config
    59	 *
    60	 * Get VLAN Mode Parameters (0x020D)
    61	 */
    62	static int
    63	ice_aq_get_vlan_mode(struct ice_hw *hw,
    64			     struct ice_aqc_get_vlan_mode *get_params)
    65	{
    66		struct ice_aq_desc desc;
    67	
    68		if (!get_params)
    69			return -EINVAL;
    70	
    71		ice_fill_dflt_direct_cmd_desc(&desc,
    72					      ice_aqc_opc_get_vlan_mode_parameters);
    73	
    74		return ice_aq_send_cmd(hw, &desc, get_params, sizeof(*get_params),
    75				       NULL);
    76	}
    77	
    78	/**
    79	 * ice_aq_is_dvm_ena - query FW to check if double VLAN mode is enabled
    80	 * @hw: pointer to the HW structure
    81	 *
    82	 * Returns true if the hardware/firmware is configured in double VLAN mode,
    83	 * else return false signaling that the hardware/firmware is configured in
    84	 * single VLAN mode.
    85	 *
    86	 * Also, return false if this call fails for any reason (i.e. firmware doesn't
    87	 * support this AQ call).
    88	 */
    89	static bool ice_aq_is_dvm_ena(struct ice_hw *hw)
    90	{
    91		struct ice_aqc_get_vlan_mode get_params = { 0 };
    92		int status;
    93	
    94		status = ice_aq_get_vlan_mode(hw, &get_params);
    95		if (status) {
  > 96			ice_debug(hw, ICE_DBG_AQ, "Failed to get VLAN mode, status %d\n",
    97				  status);
    98			return false;
    99		}
   100	
   101		return (get_params.vlan_mode & ICE_AQ_VLAN_MODE_DVM_ENA);
   102	}
   103	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
