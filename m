Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AFB4B6B1AEE
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Mar 2023 06:43:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 238986125F;
	Thu,  9 Mar 2023 05:43:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 238986125F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678340603;
	bh=5SluRCVowVyT9rai0V7XYMgt2qF6kOHr8gDdYue5GYg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5OKzqYTYdobLg4T534fSefOjNgHY0pRRggS4f2PAIXwA9nLUASeIz2jNoWpaoJoQ3
	 8wDt8Go7f6HtEjpQQESPEI69sHaCgdVcWrK6C0IBfN1Wu2e/n1B2DdQiMC+0CWGZnY
	 dBSg1JnSh5kM7JxDPXf81vobEf1htGqWmrv4A1e/OMLlBBzWah3APmqGiThIivbzOW
	 DPF6nbY0e+yImd0/GozMKhrVwh1BpFclGaKeLgE++Gtay8tkQPAxMNNAO+1veh17vo
	 x0iYtsB3cxpQ3q7D80JP6KgJyI8P89XItF3Mz/LT8dEXdj9mikkVlkD/IrvMciY/rN
	 OrRIzxQwToPGg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jv4qr81nIgGh; Thu,  9 Mar 2023 05:43:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D71F661186;
	Thu,  9 Mar 2023 05:43:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D71F661186
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7AF661BF847
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Mar 2023 05:43:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 530E180EA2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Mar 2023 05:43:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 530E180EA2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MyEGU2HOAEdS for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Mar 2023 05:43:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B25FE80EA5
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B25FE80EA5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Mar 2023 05:43:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="337884465"
X-IronPort-AV: E=Sophos;i="5.98,245,1673942400"; d="scan'208";a="337884465"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 21:43:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="670601915"
X-IronPort-AV: E=Sophos;i="5.98,245,1673942400"; d="scan'208";a="670601915"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 08 Mar 2023 21:43:12 -0800
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pa93X-0002gj-1L;
 Thu, 09 Mar 2023 05:43:11 +0000
Date: Thu, 9 Mar 2023 13:42:16 +0800
From: kernel test robot <lkp@intel.com>
To: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>,
 intel-wired-lan@lists.osuosl.org
Message-ID: <202303091324.Fz9iqJvc-lkp@intel.com>
References: <20230308235102.170-4-paul.m.stillwell.jr@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230308235102.170-4-paul.m.stillwell.jr@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678340594; x=1709876594;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=sOkcArzsj+hqHpsD2FP0lGoNTDGk9VjHdgWHEWqSPnQ=;
 b=hnjB+P7kWn0u93bn+hAiHxQSccuSUeB/Xg2oa4Mz2Jm4LnvF1XY9WkCv
 MGbjy6HGqmQ92r0dgPmXowOMp6n4xhLumx1eKh0+27f9KMfFalOlq5IXS
 LTaCjiRJ7P3qsI4td8/gyggvkV8MafC6m+wAd1lF1Evs4elkaEy0rG+54
 oE9HosXsxTeYEMGptT+teM2TrIbAieszjk8PHXnaA4oFT04as1R7EJrFh
 +FX0fLcRDnnFLXA8IfZL20lWhALCn3iLW3vFK0m6YJ4uinYZZhV9LSFFy
 DWYc1KpoH0nnvs4Sj3GmKNwWj3qO6w+p2Kbm0/TIGjL7KVAcdkH/J5IeK
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hnjB+P7k
Subject: Re: [Intel-wired-lan] [PATCH net-next v10 3/5] ice: add ability to
 set FW log configuration
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
Cc: llvm@lists.linux.dev, Brett Creeley <brett.creeley@intel.com>,
 oe-kbuild-all@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Paul,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on tnguy-next-queue/dev-queue]
[also build test WARNING on linus/master v6.3-rc1 next-20230309]
[cannot apply to net-next/master]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Paul-M-Stillwell-Jr/ice-remove-FW-logging-code/20230309-075355
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
patch link:    https://lore.kernel.org/r/20230308235102.170-4-paul.m.stillwell.jr%40intel.com
patch subject: [Intel-wired-lan] [PATCH net-next v10 3/5] ice: add ability to set FW log configuration
config: i386-randconfig-a013 (https://download.01.org/0day-ci/archive/20230309/202303091324.Fz9iqJvc-lkp@intel.com/config)
compiler: clang version 14.0.6 (https://github.com/llvm/llvm-project f28c006a5895fc0e329fe15fead81e37457cb1d1)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/3b04c760aa44876f9b794246a3cf0f3c3bfcafe3
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Paul-M-Stillwell-Jr/ice-remove-FW-logging-code/20230309-075355
        git checkout 3b04c760aa44876f9b794246a3cf0f3c3bfcafe3
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=i386 olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=i386 SHELL=/bin/bash drivers/net/ethernet/intel/ice/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202303091324.Fz9iqJvc-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/net/ethernet/intel/ice/ice_main.c:4574:13: warning: result of comparison of constant 4294967296 with expression of type 'unsigned long' is always false [-Wtautological-constant-out-of-range-compare]
           if (events >= BIT_ULL(ICE_AQC_FW_LOG_ID_MAX)) {
               ~~~~~~ ^  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   1 warning generated.


vim +4574 drivers/net/ethernet/intel/ice/ice_main.c

  4554	
  4555	/**
  4556	 * ice_pf_fwlog_update_modules - update 1 or more modules via debugfs
  4557	 * @pf: pointer to the PF struct
  4558	 * @log_level: log_level to use for the @events
  4559	 * @events: events to update
  4560	 */
  4561	int ice_pf_fwlog_update_modules(struct ice_pf *pf, u8 log_level,
  4562					unsigned long events)
  4563	{
  4564		struct ice_fwlog_module_entry *entries;
  4565		struct ice_hw *hw = &pf->hw;
  4566		u16 module_id, max_bits;
  4567	
  4568		if (log_level >= ICE_FWLOG_LEVEL_INVALID) {
  4569			dev_err(ice_pf_to_dev(pf), "Invalid FW log level %u, all level(s) >= %u are invalid\n",
  4570				log_level, ICE_FWLOG_LEVEL_INVALID);
  4571			return -EINVAL;
  4572		}
  4573	
> 4574		if (events >= BIT_ULL(ICE_AQC_FW_LOG_ID_MAX)) {
  4575			dev_err(ice_pf_to_dev(pf), "Invalid FW log events 0x%lx, all FW log event bits >= 0x%llx are invalid\n",
  4576				events, BIT_ULL(ICE_AQC_FW_LOG_ID_MAX));
  4577			return -EINVAL;
  4578		}
  4579	
  4580		entries = (struct ice_fwlog_module_entry *)hw->fwlog_cfg.module_entries;
  4581	
  4582		max_bits = min_t(u16, BITS_PER_TYPE(unsigned long),
  4583				 ICE_AQC_FW_LOG_ID_MAX);
  4584	
  4585		for_each_set_bit(module_id, &events, max_bits) {
  4586			entries[module_id].log_level = log_level;
  4587		}
  4588	
  4589		return 0;
  4590	}
  4591	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
