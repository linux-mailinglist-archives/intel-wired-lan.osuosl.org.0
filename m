Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C66A1727459
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Jun 2023 03:35:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 115EC4091F;
	Thu,  8 Jun 2023 01:35:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 115EC4091F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686188121;
	bh=/LjswsBB/VnQA4AY7ufItvD6CQFq0ZUUFYNN24KnMuk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NU1LypXLNrLsZUAVBqlHcgsMmHjwG/ctmnqGVXzn0bIrsXYpWhiChxSk/mrZ+OLd+
	 ztAcCJxN0XjBOWiCuu5nRQ0MdmSVuyfVe5bylVAm/hqzbFvfLnCx9eEHjvLax9fa06
	 bzeCr3flKDB20BmiaHUeI2TXonKCHNJYaYPPzFtDb4coTzMm5DNpDnA3GWrv5FFm/j
	 YdKX9yLHngJG74iX6hqUYTujG8hFhWkJfkkETK+Ucpqa4CTnoRZNLNojuKWKTCkEIM
	 vmIeLxSe4wKgyyHdECeLYt+6/YJXLQykzJQblUFcxPNedF4OT1MQ4QuUWeNhGfTPdC
	 jhKKGnXxO8atw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bI4uHn0WPtlE; Thu,  8 Jun 2023 01:35:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B7FFC400FE;
	Thu,  8 Jun 2023 01:35:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B7FFC400FE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F14E41BF3C1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jun 2023 01:35:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D37C381F17
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jun 2023 01:35:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D37C381F17
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aCOHMlk3WJf7 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Jun 2023 01:35:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1CDB581E29
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1CDB581E29
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jun 2023 01:35:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="346778438"
X-IronPort-AV: E=Sophos;i="6.00,225,1681196400"; d="scan'208";a="346778438"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 18:35:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="739508913"
X-IronPort-AV: E=Sophos;i="6.00,225,1681196400"; d="scan'208";a="739508913"
Received: from lkp-server01.sh.intel.com (HELO 15ab08e44a81) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 07 Jun 2023 18:35:09 -0700
Received: from kbuild by 15ab08e44a81 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1q74YP-000767-0I;
 Thu, 08 Jun 2023 01:35:09 +0000
Date: Thu, 8 Jun 2023 09:34:15 +0800
From: kernel test robot <lkp@intel.com>
To: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>,
 intel-wired-lan@lists.osuosl.org
Message-ID: <202306080937.OACUPgYJ-lkp@intel.com>
References: <20230607222443.119-3-paul.m.stillwell.jr@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230607222443.119-3-paul.m.stillwell.jr@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686188112; x=1717724112;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=g0TQOua/4os5SR4gknue4rodi5u99F2FOm7cnaImmIs=;
 b=SnbdN3lUKXeHTKr6jVwH7gOzBbtqsriESw91Afuf3doWaCQqPAEiG4QC
 gibI0fa1jGUxGpiRRfxp0v/qdNkPGJAtwpHppt18qA+mqeWLSkVlCuSNn
 pY1dkeyaLXDhXJptxJ+tQmVxkL71CC0l0wGiMWrdwxxZOGJqqUfGOvm56
 nxx51ksQG0SgiX6BeLI+BXzszNsal3HvMv9fhsINnbi3rTCMyZ9UcUbyD
 nU9KfmSgNNQC3M9XK4ODkEZBQfJ/QXAIqk2vXCbp9dJ0kKtKay8E+zCdT
 ymGEbMjxjzYjstk5TFCXn7R/epQPOFyaopexE3HR0Cl53sVkD+7CP6COq
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SnbdN3lU
Subject: Re: [Intel-wired-lan] [PATCH net-next v12 2/4] ice: configure FW
 logging
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
Cc: oe-kbuild-all@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Paul,

kernel test robot noticed the following build errors:

[auto build test ERROR on net-next/main]

url:    https://github.com/intel-lab-lkp/linux/commits/Paul-M-Stillwell-Jr/ice-remove-FW-logging-code/20230608-062658
base:   net-next/main
patch link:    https://lore.kernel.org/r/20230607222443.119-3-paul.m.stillwell.jr%40intel.com
patch subject: [Intel-wired-lan] [PATCH net-next v12 2/4] ice: configure FW logging
config: riscv-randconfig-r042-20230607 (https://download.01.org/0day-ci/archive/20230608/202306080937.OACUPgYJ-lkp@intel.com/config)
compiler: riscv64-linux-gcc (GCC) 12.3.0
reproduce (this is a W=1 build):
        mkdir -p ~/bin
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        git remote add net-next https://git.kernel.org/pub/scm/linux/kernel/git/davem/net-next.git
        git fetch net-next main
        git checkout net-next/main
        b4 shazam https://lore.kernel.org/r/20230607222443.119-3-paul.m.stillwell.jr@intel.com
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.3.0 ~/bin/make.cross W=1 O=build_dir ARCH=riscv olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.3.0 ~/bin/make.cross W=1 O=build_dir ARCH=riscv SHELL=/bin/bash drivers/net/ethernet/intel/ice/

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202306080937.OACUPgYJ-lkp@intel.com/

All errors (new ones prefixed by >>):

   In file included from drivers/net/ethernet/intel/ice/ice_main.c:9:
   drivers/net/ethernet/intel/ice/ice.h: In function 'ice_pf_fwlog_update_module':
   drivers/net/ethernet/intel/ice/ice.h:863:16: error: 'return' with a value, in function returning void [-Werror=return-type]
     863 |         return -EOPNOTSUPP;
         |                ^
   drivers/net/ethernet/intel/ice/ice.h:861:1: note: declared here
     861 | ice_pf_fwlog_update_module(struct ice_pf *pf, int log_level, int module)
         | ^~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/ice/ice_main.c: At top level:
>> drivers/net/ethernet/intel/ice/ice_main.c:4335:6: error: redefinition of 'ice_pf_fwlog_update_module'
    4335 | void ice_pf_fwlog_update_module(struct ice_pf *pf, int log_level, int module)
         |      ^~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/ice/ice.h:861:1: note: previous definition of 'ice_pf_fwlog_update_module' with type 'void(struct ice_pf *, int,  int)'
     861 | ice_pf_fwlog_update_module(struct ice_pf *pf, int log_level, int module)
         | ^~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/ice/ice.h:861:1: warning: 'ice_pf_fwlog_update_module' defined but not used [-Wunused-function]
   cc1: some warnings being treated as errors


vim +/ice_pf_fwlog_update_module +4335 drivers/net/ethernet/intel/ice/ice_main.c

  4328	
  4329	/**
  4330	 * ice_pf_fwlog_update_module - update 1 module
  4331	 * @pf: pointer to the PF struct
  4332	 * @log_level: log_level to use for the @module
  4333	 * @module: module to update
  4334	 */
> 4335	void ice_pf_fwlog_update_module(struct ice_pf *pf, int log_level, int module)
  4336	{
  4337		struct ice_fwlog_module_entry *entries;
  4338		struct ice_hw *hw = &pf->hw;
  4339	
  4340		entries = (struct ice_fwlog_module_entry *)hw->fwlog_cfg.module_entries;
  4341	
  4342		entries[module].log_level = log_level;
  4343	}
  4344	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
