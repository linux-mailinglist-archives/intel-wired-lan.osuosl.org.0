Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EBFF7275ED
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Jun 2023 05:56:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 78BE541DE3;
	Thu,  8 Jun 2023 03:56:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 78BE541DE3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686196593;
	bh=kssFgIeNcWOGVJ+4L6ZZIXAY4wav5mGkugxO17APNxg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=z64yl3ohzTPBeV43BhDrc4ExrZAe2d9peqfImU1Xo6sARXukBiVB21cjjJ5jRpiPB
	 XS95M4lpIHlFGqdIlWU+yQmDHgnpVxutX9U219Uz60zqU/XY9Os72JFEbMzSZse6mV
	 7yEClf0yrud6sIf/MHSsi//dqU4So5M0yuAjFPXXqF75z9puSIzptMWOX+fWxhnUZX
	 co2BXGTS2Uqh6TrNb7yb7fWs80AuKl2jPVkIScvyZmoYNQZolSZAQLu0IIhyN4wwxr
	 eJOoSxdlBxKyRDfipavjABP6AE0ukLzCLTGxyoeF7x0KeR0gLupuIeRT5lhpFcpRPd
	 5h577OFm4mykA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a_prOwiCsDpm; Thu,  8 Jun 2023 03:56:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E2A6B41C5E;
	Thu,  8 Jun 2023 03:56:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E2A6B41C5E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C72451BF426
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jun 2023 03:56:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 98E3C8308D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jun 2023 03:56:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 98E3C8308D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Iqe_l2ZA1PEz for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Jun 2023 03:56:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 735D48211B
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 735D48211B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jun 2023 03:56:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="360522645"
X-IronPort-AV: E=Sophos;i="6.00,226,1681196400"; d="scan'208";a="360522645"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 20:56:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="854174682"
X-IronPort-AV: E=Sophos;i="6.00,226,1681196400"; d="scan'208";a="854174682"
Received: from lkp-server01.sh.intel.com (HELO 15ab08e44a81) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 07 Jun 2023 20:56:20 -0700
Received: from kbuild by 15ab08e44a81 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1q76l2-0007Dm-0x;
 Thu, 08 Jun 2023 03:56:20 +0000
Date: Thu, 8 Jun 2023 11:55:42 +0800
From: kernel test robot <lkp@intel.com>
To: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>,
 intel-wired-lan@lists.osuosl.org
Message-ID: <202306081116.lKcH4bg6-lkp@intel.com>
References: <20230607222443.119-4-paul.m.stillwell.jr@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230607222443.119-4-paul.m.stillwell.jr@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686196583; x=1717732583;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=k99wrPIvy0sEGb2/m3VmAkXjfmuNeLcXmkCqr20amFY=;
 b=MCgpiRxO7AIYe0KaTfShs7VupWJYXmdiqHBmpJwUk/1pbyZuh5X63cMu
 N5XcXkKg+O+6fJP1McN6LZZzjgd7Ck7j3DQv8BLPVsqq3oG4defrK37fE
 NMpaG0WZmNr8a98ePM75489ranvtjtgHsgcsy1EsnXy1wVbNjzdHYR9+k
 d41VBQtu+8adUyXHQCuOMsiKc7xmBsg1mqT/YDG/W87Q9+TqxM8X0FQhJ
 eriF1rewc2Xy9FM4dFkMS6Ki4XApkpn6U2MlSeCexUI97Sy3NoxHdn8ai
 9ETN5BV8MLuRGGdW9ZNOe7KcABDBMhtl/yMOGUfii9bOV6XgvMb+0iT6n
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MCgpiRxO
Subject: Re: [Intel-wired-lan] [PATCH net-next v12 3/4] ice: add ability to
 read FW log data and configure the number of log buffers
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
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Paul,

kernel test robot noticed the following build warnings:

[auto build test WARNING on net-next/main]

url:    https://github.com/intel-lab-lkp/linux/commits/Paul-M-Stillwell-Jr/ice-remove-FW-logging-code/20230608-062658
base:   net-next/main
patch link:    https://lore.kernel.org/r/20230607222443.119-4-paul.m.stillwell.jr%40intel.com
patch subject: [Intel-wired-lan] [PATCH net-next v12 3/4] ice: add ability to read FW log data and configure the number of log buffers
config: x86_64-randconfig-a006-20230607 (https://download.01.org/0day-ci/archive/20230608/202306081116.lKcH4bg6-lkp@intel.com/config)
compiler: clang version 15.0.7 (https://github.com/llvm/llvm-project.git 8dfdcc7b7bf66834a761bd8de445840ef68e4d1a)
reproduce (this is a W=1 build):
        mkdir -p ~/bin
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        git remote add net-next https://git.kernel.org/pub/scm/linux/kernel/git/davem/net-next.git
        git fetch net-next main
        git checkout net-next/main
        b4 shazam https://lore.kernel.org/r/20230607222443.119-4-paul.m.stillwell.jr@intel.com
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang ~/bin/make.cross W=1 O=build_dir ARCH=x86_64 olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang ~/bin/make.cross W=1 O=build_dir ARCH=x86_64 SHELL=/bin/bash drivers/net/ethernet/intel/ice/

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202306081116.lKcH4bg6-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/net/ethernet/intel/ice/ice_debugfs.c:638:6: warning: variable 'debug_count' set but not used [-Wunused-but-set-variable]
           int debug_count;
               ^
   1 warning generated.


vim +/debug_count +638 drivers/net/ethernet/intel/ice/ice_debugfs.c

   623	
   624	/**
   625	 * ice_debugfs_data_read - read from 'data' file
   626	 * @filp: the opened file
   627	 * @buffer: where to write the data for the user to read
   628	 * @count: the size of the user's buffer
   629	 * @ppos: file position offset
   630	 */
   631	static ssize_t ice_debugfs_data_read(struct file *filp, char __user *buffer,
   632					     size_t count, loff_t *ppos)
   633	{
   634		struct ice_pf *pf = filp->private_data;
   635		struct ice_hw *hw = &pf->hw;
   636		int data_copied = 0;
   637		bool done = false;
 > 638		int debug_count;
   639	
   640		/* don't allow commands if the FW doesn't support it */
   641		if (!ice_fwlog_supported(&pf->hw))
   642			return -EOPNOTSUPP;
   643	
   644		if (ice_fwlog_ring_empty(&hw->fwlog_ring))
   645			return 0;
   646	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
