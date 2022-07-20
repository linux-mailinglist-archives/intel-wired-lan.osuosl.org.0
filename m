Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E81E057BC77
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Jul 2022 19:18:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4465240C10;
	Wed, 20 Jul 2022 17:18:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4465240C10
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658337486;
	bh=NfGOcORE9kJfuPLoOc2vb2RU+eABF7jIubTH/wspgfY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XLc/KctERsGCMqyzWuiMtOVt0OJKKmeftY3y9rijAFtyhzstFW07pcq44pZierOKE
	 lxX4vdn3iIJY03Aq4uMuIQ1IWbo2aHHBdWt0qsCKfH7mYPsJQh0/CeyMX/T2zepeqk
	 ldcAqDUHkE2wmby2CqX5F+Uj/SOjVzVK9Scuh8VcmurxObUUEaeve5nJfT1S3UINqJ
	 8UNhZSyhbe0ApF3W+U7iv2/7xO6wZ7zjGmsrE5OROzIIqCURJEgdzzvkhNK/7YyknH
	 2GD4kJCYFXEm1rAoNjwJ8KPIHePpKgulR0MWkKFCYxJikE/S5ceqdk6zEkclmD0s12
	 KNUuiD5jYfitA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1xi0NwgDSixm; Wed, 20 Jul 2022 17:18:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0A09D40141;
	Wed, 20 Jul 2022 17:18:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0A09D40141
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8918C1BF47A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jul 2022 17:17:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 608DC60B9D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jul 2022 17:17:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 608DC60B9D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 90t2xcRuNl_h for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Jul 2022 17:17:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 10EE460671
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 10EE460671
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jul 2022 17:17:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10414"; a="348532243"
X-IronPort-AV: E=Sophos;i="5.92,286,1650956400"; d="scan'208";a="348532243"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2022 10:17:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,286,1650956400"; d="scan'208";a="573391454"
Received: from lkp-server01.sh.intel.com (HELO 7dfbdc7c7900) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 20 Jul 2022 10:17:55 -0700
Received: from kbuild by 7dfbdc7c7900 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1oEDKd-0000kP-32;
 Wed, 20 Jul 2022 17:17:55 +0000
Date: Thu, 21 Jul 2022 01:17:16 +0800
From: kernel test robot <lkp@intel.com>
To: Michal Wilczynski <michal.wilczynski@intel.com>,
 intel-wired-lan@lists.osuosl.org
Message-ID: <202207210108.7ZpVcgDQ-lkp@intel.com>
References: <20220720144004.14250-5-michal.wilczynski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220720144004.14250-5-michal.wilczynski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658337478; x=1689873478;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=aaMRu0YMpd6UIpKvdCj/TdZ7q48/j1x3vJQOxT3gP5M=;
 b=g2JZmCiUKcIg4bN1UDGau8k/5a9kIXOUQ8m8k0x5Z6rtn4axy9Rvjfv1
 OT8OfVc4b7yEW0C2LO1gMzbP1CvDVUB8VHimQQ1hs4AT6G8fQqymoFfFj
 0I9hBk7dWngxS7PmIBMFVkxfidlGmGDZTBGUk0aPr8syx8mJuMiZ2iCp6
 4YtpiW6OgUF6AdSuX7TygzQaY/XZWVL9uHfmeq8p19qBibkswN0fOpj8n
 ulgPTHeGWslVSpJA+E8sY+djaWZ92mHlKdK5dBTl70jIjwzdtB9AB588/
 D38y72veYb/s54YhW4Cg0CtsR5/YbTVbP3ZTqRgzpd5gFCbvIYK5gQF8s
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=g2JZmCiU
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
Cc: kbuild-all@lists.01.org, Michal Wilczynski <michal.wilczynski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Michal,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on net-next/master]

url:    https://github.com/intel-lab-lkp/linux/commits/Michal-Wilczynski/ice-Support-5-layer-tx-scheduler-topology/20220720-224322
base:   https://git.kernel.org/pub/scm/linux/kernel/git/davem/net-next.git 5fb859f79f4f49d9df16bac2b3a84a6fa3aaccf1
config: x86_64-randconfig-a002 (https://download.01.org/0day-ci/archive/20220721/202207210108.7ZpVcgDQ-lkp@intel.com/config)
compiler: gcc-11 (Debian 11.3.0-3) 11.3.0
reproduce (this is a W=1 build):
        # https://github.com/intel-lab-lkp/linux/commit/15b804e74b266402a1af3d04b1b3106d06670c23
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Michal-Wilczynski/ice-Support-5-layer-tx-scheduler-topology/20220720-224322
        git checkout 15b804e74b266402a1af3d04b1b3106d06670c23
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        make W=1 O=build_dir ARCH=x86_64 SHELL=/bin/bash

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/net/ethernet/intel/ice/ice_devlink.c:389:5: warning: no previous prototype for 'ice_get_tx_topo_user_sel' [-Wmissing-prototypes]
     389 | int ice_get_tx_topo_user_sel(struct ice_pf *pf, bool *txbalance_ena)
         |     ^~~~~~~~~~~~~~~~~~~~~~~~
>> drivers/net/ethernet/intel/ice/ice_devlink.c:421:1: warning: no previous prototype for 'ice_update_tx_topo_user_sel' [-Wmissing-prototypes]
     421 | ice_update_tx_topo_user_sel(struct ice_pf *pf, bool txbalance_ena)
         | ^~~~~~~~~~~~~~~~~~~~~~~~~~~


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
