Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5C1B72749B
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Jun 2023 03:51:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 002804016F;
	Thu,  8 Jun 2023 01:51:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 002804016F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686189082;
	bh=/tXcS+ipXJex0NLYoxJTGyHQi0/O695HzpHTdqP95kc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WkncD+t3V3fN8ybX8XzEhYv0NGOge7KSr2dkhfC+7T9qWepgIzgPhP5kw1Ag0Waay
	 rsHVyNSI7srIIIPV/JUxGgYaYM280+AAWbAlPwiFsQWYh++keGF3ielz+fFPLHOSPJ
	 +Px8wU4dbQKnrQIt30Jb015uuOc/DpgydAze/b8Psyv75wm6wc7Fd2+5QEv8X/z0Qh
	 hAOmNT94DGeOjlQ2hOcjM46vtYUlR9mzrVzphtQGMq1wCePjHI879TrvBBPJCSm/ib
	 Cvz0L1hydLYx+RONxR0rc9sC6bZYWtXv8ln3z+B1IfUtVAAmHgcTW7lzyXalyZoVeo
	 TBmKx5UqkjwDg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WUYI1CviiZkE; Thu,  8 Jun 2023 01:51:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D0D5C400B9;
	Thu,  8 Jun 2023 01:51:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D0D5C400B9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DB6591BF3C1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jun 2023 01:51:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B377E60F1F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jun 2023 01:51:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B377E60F1F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7c4AkEjbsxz0 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Jun 2023 01:51:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A69BF60EFC
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A69BF60EFC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jun 2023 01:51:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="346781375"
X-IronPort-AV: E=Sophos;i="6.00,225,1681196400"; d="scan'208";a="346781375"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 18:51:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="822400339"
X-IronPort-AV: E=Sophos;i="6.00,225,1681196400"; d="scan'208";a="822400339"
Received: from lkp-server01.sh.intel.com (HELO 15ab08e44a81) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 07 Jun 2023 18:51:12 -0700
Received: from kbuild by 15ab08e44a81 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1q74nv-00077N-2x;
 Thu, 08 Jun 2023 01:51:11 +0000
Date: Thu, 8 Jun 2023 09:50:19 +0800
From: kernel test robot <lkp@intel.com>
To: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>,
 intel-wired-lan@lists.osuosl.org
Message-ID: <202306080921.rgVC3eYY-lkp@intel.com>
References: <20230607222443.119-4-paul.m.stillwell.jr@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230607222443.119-4-paul.m.stillwell.jr@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686189074; x=1717725074;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=DfBhjySOC/aOfriddPQHUPE/IPwmhqkYZ8Upp9h/SZk=;
 b=cjdkRHz6H3SPLdrkWCip5JBRxdOdptKenoE2UHLBS5bgNroTnwIwizeO
 62e9rM/1qfPiw0DbFv9jAfhjmrM1qd8Dn4lYKIuFKbEXzclXZSExTfc1X
 fe0fpuejRrK2OFLqSJG4rPFULjnQd8i8iMeGb5lkjLcegJbnhM7K34kbL
 gsTi3PfXNHPZfiZEVlPWvbzMSd3BQn/08tTFYOC7vZkR5Ka9/HBoc84Li
 wEg6z5EvvV85/MziSx6pJLX8epaFGMTkI4lI27eqF8Xw+bU5KhjxOgqv2
 rJ8mKe438Dg+jdHabxWciy9z6Jb11VZitgzIMaSmox53mXF3QN/KrhEMw
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cjdkRHz6
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
Cc: oe-kbuild-all@lists.linux.dev
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
config: mips-allyesconfig (https://download.01.org/0day-ci/archive/20230608/202306080921.rgVC3eYY-lkp@intel.com/config)
compiler: mips-linux-gcc (GCC) 12.3.0
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
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.3.0 ~/bin/make.cross W=1 O=build_dir ARCH=mips olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.3.0 ~/bin/make.cross W=1 O=build_dir ARCH=mips SHELL=/bin/bash drivers/net/ethernet/intel/ice/

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202306080921.rgVC3eYY-lkp@intel.com/

All warnings (new ones prefixed by >>):

   drivers/net/ethernet/intel/ice/ice_fwlog.c: In function 'ice_fwlog_alloc_ring_buffs':
   drivers/net/ethernet/intel/ice/ice_fwlog.c:41:30: error: implicit declaration of function 'vzalloc'; did you mean 'kvzalloc'? [-Werror=implicit-function-declaration]
      41 |                 ring->data = vzalloc(ring->data_size);
         |                              ^~~~~~~
         |                              kvzalloc
>> drivers/net/ethernet/intel/ice/ice_fwlog.c:41:28: warning: assignment to 'u8 *' {aka 'unsigned char *'} from 'int' makes pointer from integer without a cast [-Wint-conversion]
      41 |                 ring->data = vzalloc(ring->data_size);
         |                            ^
   drivers/net/ethernet/intel/ice/ice_fwlog.c: In function 'ice_fwlog_free_ring_buffs':
   drivers/net/ethernet/intel/ice/ice_fwlog.c:59:25: error: implicit declaration of function 'vfree'; did you mean 'kvfree'? [-Werror=implicit-function-declaration]
      59 |                         vfree(ring->data);
         |                         ^~~~~
         |                         kvfree
   cc1: some warnings being treated as errors


vim +41 drivers/net/ethernet/intel/ice/ice_fwlog.c

    32	
    33	static int ice_fwlog_alloc_ring_buffs(struct ice_fwlog_ring *rings)
    34	{
    35		int i, ret = 0;
    36	
    37		for (i = 0; i < rings->size; i++) {
    38			struct ice_fwlog_data *ring = &rings->rings[i];
    39	
    40			ring->data_size = PAGE_SIZE;
  > 41			ring->data = vzalloc(ring->data_size);
    42			if (!ring->data) {
    43				ret = -ENOMEM;
    44				break;
    45			}
    46		}
    47	
    48		return ret;
    49	}
    50	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
