Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 719A1961A1E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Aug 2024 00:44:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 746286063D;
	Tue, 27 Aug 2024 22:44:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OI9z-dcNieJw; Tue, 27 Aug 2024 22:44:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 64B3E6064B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724798665;
	bh=c8rtCjn0dE20cflxjdtxeWLPdaKqg/rTOKMxhCMkYCA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=c9HdlVcdZIlb9C1bGwqyGG4BhfZZGK8MWsvgKey0spvQ1jcCQRkwWKitTChAkAJW+
	 cWhWJqAW6WJMnK3zv50U/r087LZa1JWE2E7mMTHq5MBcon18QZJUKZFx7DO8fyHc3k
	 LjkbAZh6oIKU66IoXFquAzv7UuPscjxj6VH3Vz6pfObRkS0hYIjY13/M10SKXUx+3l
	 ZDMBvtCnxnTmrd89yb+4i72TA2R4HNzGae94nJf8rdhH2XRcNlwr1zKldUMTJtnm4c
	 JakZIaLNYS/7sRw/Gd2tlkAhPSuTidqRvi/+Orn5CMKsMzqFsmsDz+8bD/TdeuG3rW
	 a9BQVm4gpMByg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 64B3E6064B;
	Tue, 27 Aug 2024 22:44:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C86851BF284
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 22:44:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B334580F5C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 22:44:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C_Io82mAQ-TU for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Aug 2024 22:44:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8E01580F50
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8E01580F50
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8E01580F50
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 22:44:22 +0000 (UTC)
X-CSE-ConnectionGUID: j1xQE807RWuiILHgxkBGEw==
X-CSE-MsgGUID: Uv8wxVtzSea4Uzn3hsp97Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11177"; a="27098010"
X-IronPort-AV: E=Sophos;i="6.10,181,1719903600"; d="scan'208";a="27098010"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2024 15:44:22 -0700
X-CSE-ConnectionGUID: R7wIFeYuQfOvCtImHad6Ag==
X-CSE-MsgGUID: WTlNluDOQla+iizW8L72lQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,181,1719903600"; d="scan'208";a="63531614"
Received: from lkp-server01.sh.intel.com (HELO 9a732dc145d3) ([10.239.97.150])
 by orviesa007.jf.intel.com with ESMTP; 27 Aug 2024 15:44:20 -0700
Received: from kbuild by 9a732dc145d3 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sj4vB-000KA8-2V;
 Tue, 27 Aug 2024 22:44:17 +0000
Date: Wed, 28 Aug 2024 06:43:22 +0800
From: kernel test robot <lkp@intel.com>
To: Karol Kolacinski <karol.kolacinski@intel.com>,
 intel-wired-lan@lists.osuosl.org
Message-ID: <202408280657.Z0MrIA15-lkp@intel.com>
References: <20240827130814.732181-11-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240827130814.732181-11-karol.kolacinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724798663; x=1756334663;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=YgWUSPeK6BFSt/xE9BFNhvSZMrUFm5JsRJJ6sFnqzTw=;
 b=f56sVSPZazGL1daIZMcozIw73IFvSsLvKZ71gZ6w25hI1EmBUcB/ESek
 LsX3LRmUtdXAdEGNRy5bHXl49X/Kh416BC5Pv9AJo5aYNgFB20K44LOZP
 Zi5vJo09BJ5/rAS2timCy7JUGl+WKeZNnI+r92WNadjN2nolk0/gnC64G
 Vic875lsB3p5UJwSU3S0giIBc5Q5JqN99mvCbG6/BMvuIAb4KmQjPOKJv
 uk3/klUpG+/eR9748vGyLvCIoZw6z6vIbz8SBA1eDU7DEH6DshqhuOzUd
 AT9GyLGsy25ENLWsCJ6yjnSGcF5Sr+0JOfnQ9KbMQ8ixB9x+pM2gzf2QT
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=f56sVSPZ
Subject: Re: [Intel-wired-lan] [PATCH v8 iwl-next 2/7] ice: Remove
 unncecessary ice_is_e8xx() functions
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
Cc: netdev@vger.kernel.org, Karol Kolacinski <karol.kolacinski@intel.com>,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 oe-kbuild-all@lists.linux.dev
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Karol,

kernel test robot noticed the following build errors:

[auto build test ERROR on 025f455f893c9f39ec392d7237d1de55d2d00101]

url:    https://github.com/intel-lab-lkp/linux/commits/Karol-Kolacinski/ice-Don-t-check-device-type-when-checking-GNSS-presence/20240827-211218
base:   025f455f893c9f39ec392d7237d1de55d2d00101
patch link:    https://lore.kernel.org/r/20240827130814.732181-11-karol.kolacinski%40intel.com
patch subject: [Intel-wired-lan] [PATCH v8 iwl-next 2/7] ice: Remove unncecessary ice_is_e8xx() functions
config: loongarch-allmodconfig (https://download.01.org/0day-ci/archive/20240828/202408280657.Z0MrIA15-lkp@intel.com/config)
compiler: loongarch64-linux-gcc (GCC) 14.1.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240828/202408280657.Z0MrIA15-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202408280657.Z0MrIA15-lkp@intel.com/

All errors (new ones prefixed by >>, old ones prefixed by <<):

WARNING: modpost: missing MODULE_DESCRIPTION() in kernel/locking/test-ww_mutex.o
WARNING: modpost: missing MODULE_DESCRIPTION() in lib/test_objpool.o
WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/clk/imx/mxc-clk.o
WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/clk/imx/clk-imxrt1050.o
WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/devfreq/governor_simpleondemand.o
WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/devfreq/governor_performance.o
WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/devfreq/governor_powersave.o
WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/devfreq/governor_userspace.o
>> ERROR: modpost: "ice_is_generic_mac" [drivers/net/ethernet/intel/ice/ice.ko] undefined!
>> ERROR: modpost: "ice_is_e825c" [drivers/net/ethernet/intel/ice/ice.ko] undefined!

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
