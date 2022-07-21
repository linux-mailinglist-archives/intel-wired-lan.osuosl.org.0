Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D51BB57C1D7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Jul 2022 03:14:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E1E0C83FDD;
	Thu, 21 Jul 2022 01:14:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E1E0C83FDD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658366076;
	bh=zKwTrg2G6Nw1aoHfcnc+fIJgyQvV3bwgDeq99Gf5Dw8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=P+ygAqfnovfRFNsxw6KMZq0y0nU0uqHqeQkzkBHj80R3vwo2OI3ZfD/peZqCUKJAR
	 Gc+EseQ1AKtWizq/UJ5xxAM7hFJ9shmOOVHcGFC0mWwr2hpY8OY5oIMQg1uVhWbEKI
	 iH3icolAfdQkk9U272e8rqeYzRnqXVvt8i/gXC1umPEyx2KeSGAtJq9I/HcC0jFBq7
	 6cB9JGczm35w4Irc8ICcDU4DnMfvBDP55xqMfDzDJPPFUpU1NmbkW6/T2jEnATg+lH
	 jNGRjjyqZ7j31lQSzYqkKly+QG/1b2F07ZDUUhGEmSeXxCKJTYSrkuV4v2V7M+YAvJ
	 7KrPuuNjsGsDg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RgV8Mb1QFZDP; Thu, 21 Jul 2022 01:14:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AE8C983F9A;
	Thu, 21 Jul 2022 01:14:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AE8C983F9A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 125331BF357
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 01:14:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D1AFA60E32
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 01:14:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D1AFA60E32
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6nv2v30pFwht for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Jul 2022 01:14:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A079360E08
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A079360E08
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 01:14:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10414"; a="267321408"
X-IronPort-AV: E=Sophos;i="5.92,287,1650956400"; d="scan'208";a="267321408"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2022 18:14:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,287,1650956400"; d="scan'208";a="630977946"
Received: from lkp-server01.sh.intel.com (HELO 7dfbdc7c7900) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 20 Jul 2022 18:14:17 -0700
Received: from kbuild by 7dfbdc7c7900 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1oEKld-0001Bn-0K;
 Thu, 21 Jul 2022 01:14:17 +0000
Date: Thu, 21 Jul 2022 09:13:20 +0800
From: kernel test robot <lkp@intel.com>
To: Michal Wilczynski <michal.wilczynski@intel.com>,
 intel-wired-lan@lists.osuosl.org
Message-ID: <202207210918.4FyECq6p-lkp@intel.com>
References: <20220720144004.14250-5-michal.wilczynski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220720144004.14250-5-michal.wilczynski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658366068; x=1689902068;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=cFmA4tDwWO1v3+Cs+8THbxou38QrqHVwFSFCzKlY2pE=;
 b=X+hYPhiGAxaqjIPFiwYs81IyQGlDTvyTV1lFwVK+AfRgg/HoRtF4OqNt
 mF4UZayGIQSHjvqHEO4w0NP51Mi5mUp7mVLsbAnlTHx6sLpIRKfYUL335
 phUgrrHipjX46KPe1vDU3572UyDB7rVE6Ouzrkbt17Wu1MMFVXY65Ub6f
 eD1phE+SFOiGs92/ztXWnJHiezNwFmnR9b1C7Bb8AWTDjz99mQ2s+1JwR
 YU1vFoEpM7NbHxNMbMM6vy9Glr+BQbZ/F1p38vjz8w22d7Hx99F6CmjnB
 kjN3Q1pWag6FlbZd870DdcdK8H5aLaGiLc15/jgW7x9xgfBghM9p14gBd
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=X+hYPhiG
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 4/4] ice: Add txbalancing
 devlink param
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
Cc: llvm@lists.linux.dev, kbuild-all@lists.01.org,
 Michal Wilczynski <michal.wilczynski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Michal,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on net-next/master]

url:    https://github.com/intel-lab-lkp/linux/commits/Michal-Wilczynski/ice-Support-5-layer-tx-scheduler-topology/20220720-224322
base:   https://git.kernel.org/pub/scm/linux/kernel/git/davem/net-next.git 5fb859f79f4f49d9df16bac2b3a84a6fa3aaccf1
config: i386-randconfig-a013 (https://download.01.org/0day-ci/archive/20220721/202207210918.4FyECq6p-lkp@intel.com/config)
compiler: clang version 15.0.0 (https://github.com/llvm/llvm-project dd5635541cd7bbd62cd59b6694dfb759b6e9a0d8)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/15b804e74b266402a1af3d04b1b3106d06670c23
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Michal-Wilczynski/ice-Support-5-layer-tx-scheduler-topology/20220720-224322
        git checkout 15b804e74b266402a1af3d04b1b3106d06670c23
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=i386 SHELL=/bin/bash drivers/net/ethernet/intel/ice/

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/net/ethernet/intel/ice/ice_devlink.c:389:5: warning: no previous prototype for function 'ice_get_tx_topo_user_sel' [-Wmissing-prototypes]
   int ice_get_tx_topo_user_sel(struct ice_pf *pf, bool *txbalance_ena)
       ^
   drivers/net/ethernet/intel/ice/ice_devlink.c:389:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int ice_get_tx_topo_user_sel(struct ice_pf *pf, bool *txbalance_ena)
   ^
   static 
>> drivers/net/ethernet/intel/ice/ice_devlink.c:421:1: warning: no previous prototype for function 'ice_update_tx_topo_user_sel' [-Wmissing-prototypes]
   ice_update_tx_topo_user_sel(struct ice_pf *pf, bool txbalance_ena)
   ^
   drivers/net/ethernet/intel/ice/ice_devlink.c:420:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int
   ^
   static 
   2 warnings generated.


vim +/ice_get_tx_topo_user_sel +389 drivers/net/ethernet/intel/ice/ice_devlink.c

   379	
   380	/**
   381	 * ice_get_tx_topo_user_sel - Read user's choice from flash
   382	 * @pf: pointer to pf structure
   383	 * @txbalance_ena: value read from flash will be saved here
   384	 *
   385	 * Reads user's preference for Tx Scheduler Topology Tree from PFA TLV.
   386	 *
   387	 * Returns zero when read was successful, negative values otherwise.
   388	 */
 > 389	int ice_get_tx_topo_user_sel(struct ice_pf *pf, bool *txbalance_ena)
   390	{
   391		struct ice_aqc_nvm_tx_topo_user_sel usr_sel = {};
   392		struct ice_hw *hw = &pf->hw;
   393		int status;
   394	
   395		status = ice_acquire_nvm(hw, ICE_RES_READ);
   396		if (status)
   397			return status;
   398	
   399		status = ice_aq_read_nvm(hw, ICE_AQC_NVM_TX_TOPO_MOD_ID, 0,
   400					 sizeof(usr_sel), &usr_sel, true, true, NULL);
   401		ice_release_nvm(hw);
   402	
   403		*txbalance_ena = usr_sel.data & ICE_AQC_NVM_TX_TOPO_USER_SEL;
   404	
   405		return status;
   406	}
   407	
   408	/**
   409	 * ice_update_tx_topo_user_sel - Save user's preference in flash
   410	 * @pf: pointer to pf structure
   411	 * @txbalance_ena: value to be saved in flash
   412	 *
   413	 * When txbalance_ena is set to true it means user's preference is to use
   414	 * five layer Tx Scheduler Topology Tree, when it is set to false then it is
   415	 * nine layer. This choice should be stored in PFA TLV field and should be
   416	 * picked up by driver, next time during init.
   417	 *
   418	 * Returns zero when save was successful, negative values otherwise.
   419	 */
   420	int
 > 421	ice_update_tx_topo_user_sel(struct ice_pf *pf, bool txbalance_ena)
   422	{
   423		struct ice_aqc_nvm_tx_topo_user_sel usr_sel = {};
   424		struct ice_hw *hw = &pf->hw;
   425		int status;
   426	
   427		status = ice_acquire_nvm(hw, ICE_RES_WRITE);
   428		if (status)
   429			return status;
   430	
   431		status = ice_aq_read_nvm(hw, ICE_AQC_NVM_TX_TOPO_MOD_ID, 0,
   432					 sizeof(usr_sel), &usr_sel, true, true, NULL);
   433		if (status)
   434			goto exit_release_res;
   435	
   436		if (txbalance_ena)
   437			usr_sel.data |= ICE_AQC_NVM_TX_TOPO_USER_SEL;
   438		else
   439			usr_sel.data &= ~ICE_AQC_NVM_TX_TOPO_USER_SEL;
   440	
   441		status = ice_write_one_nvm_block(pf, ICE_AQC_NVM_TX_TOPO_MOD_ID, 2,
   442					      sizeof(usr_sel.data), &usr_sel.data,
   443					      true, NULL, NULL);
   444	
   445	exit_release_res:
   446		ice_release_nvm(hw);
   447	
   448		return status;
   449	}
   450	

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
