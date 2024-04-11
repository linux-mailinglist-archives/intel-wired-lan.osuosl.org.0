Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 36BA08A2240
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Apr 2024 01:24:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D9276606E0;
	Thu, 11 Apr 2024 23:24:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l2TUHHc52XHL; Thu, 11 Apr 2024 23:24:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B4DA860831
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712877844;
	bh=rRivkFTwpbrMoX+soLwrRjcmuek10hkYauNxoaIDPLI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Rt99Wjd7ojBVuDAPQFYSdB+8/BGaUQPjrQOZLfdTANhmNaF0Cdk4Ci1iaYOy/mBrK
	 5VYg5HzEYBaYJ7PRWDWathQKviddOa2F/cKMMRh46btViDxplNFhYmc1wgtMUnbL/1
	 P0thN2/LEI8alWqQrlpEwTIJMGeaE41xJXRDJqdrPyGr/mJaQdE0AKNr1CDFvbSkT0
	 TAY1sR7RmbUbgMpyMM6/p8AXDp9qmdGZkBqgfdVOvUeyDg5DYsK3M4SZCIXutQTb1O
	 YlG+ZC7EDX4TmN3Xx340bB00fpiIYnmP7WOexS99lsjIqFRUHBloSMLXPjY7ZYzz8Q
	 RMlmk1VLrZFcQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B4DA860831;
	Thu, 11 Apr 2024 23:24:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1528E1BF263
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Apr 2024 23:24:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0C17D404C4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Apr 2024 23:24:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pyan7pj9xLBU for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Apr 2024 23:24:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 66F70400AC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 66F70400AC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 66F70400AC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Apr 2024 23:24:01 +0000 (UTC)
X-CSE-ConnectionGUID: swpMzKIlQmWDMPyGR1uwGQ==
X-CSE-MsgGUID: oUrWGrAuR22sJ1zoaC+7Sg==
X-IronPort-AV: E=McAfee;i="6600,9927,11041"; a="33718229"
X-IronPort-AV: E=Sophos;i="6.07,194,1708416000"; d="scan'208";a="33718229"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2024 16:24:00 -0700
X-CSE-ConnectionGUID: QMh1Uu/hT9K6z1I2m6JpxQ==
X-CSE-MsgGUID: 0wbBKrQRQ8qHlYEwzObFPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,194,1708416000"; d="scan'208";a="21104175"
Received: from lkp-server01.sh.intel.com (HELO e61807b1d151) ([10.239.97.150])
 by fmviesa006.fm.intel.com with ESMTP; 11 Apr 2024 16:23:58 -0700
Received: from kbuild by e61807b1d151 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rv3lr-00095X-0o;
 Thu, 11 Apr 2024 23:23:55 +0000
Date: Fri, 12 Apr 2024 07:23:51 +0800
From: kernel test robot <lkp@intel.com>
To: Karol Kolacinski <karol.kolacinski@intel.com>,
 intel-wired-lan@lists.osuosl.org
Message-ID: <202404120744.ROMZFi55-lkp@intel.com>
References: <20240408111814.404583-19-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240408111814.404583-19-karol.kolacinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712877841; x=1744413841;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=G7tNbr/pyOlZ4/hL1mcrTmWV4w+ePVYtzpFLZe0MG5k=;
 b=GWxyn7shjCyrIBqKVOX1TtLgYZLRjX/iT6qMvhrh/L+1Pei3VJ0HN6eK
 22P694/zhaU6bfisSu9CSWBch7vKQo06TjN2HJbfMzeONVpG7rfV9Gj7i
 uRYxzub9UygywRULUuSR/vTVkf+ugOxVPwnYYlkHcXzsUOvN9FzvbuvcH
 0EE57nmb3txzCHDa+PvO0BVvV5z6YAN6NY3RVYbCPTFSfsAC7jFGfy3nt
 XwtWVv6vj2ce6/enaNYy1Seh/c/NmF9EJ2cFg3V9TWxuASbzgKzhmslBP
 lME57y3Xr1v09XM92PPhMnT7+wE/sqlIJCV6EuZvI3q1jezt/1Qbr9XXt
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GWxyn7sh
Subject: Re: [Intel-wired-lan] [PATCH v7 iwl-next 05/12] ice: Move CGU block
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
Cc: Sergey Temerkhanov <sergey.temerkhanov@intel.com>, netdev@vger.kernel.org,
 llvm@lists.linux.dev, Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>, anthony.l.nguyen@intel.com,
 oe-kbuild-all@lists.linux.dev, Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Karol,

kernel test robot noticed the following build warnings:

[auto build test WARNING on c6f2492cda380a8bce00f61c3a4272401fbb9043]

url:    https://github.com/intel-lab-lkp/linux/commits/Karol-Kolacinski/ice-Introduce-ice_ptp_hw-struct/20240408-192129
base:   c6f2492cda380a8bce00f61c3a4272401fbb9043
patch link:    https://lore.kernel.org/r/20240408111814.404583-19-karol.kolacinski%40intel.com
patch subject: [PATCH v7 iwl-next 05/12] ice: Move CGU block
config: arm-randconfig-002-20240412 (https://download.01.org/0day-ci/archive/20240412/202404120744.ROMZFi55-lkp@intel.com/config)
compiler: clang version 16.0.4 (https://github.com/llvm/llvm-project.git ae42196bc493ffe877a7e3dff8be32035dea4d07)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240412/202404120744.ROMZFi55-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202404120744.ROMZFi55-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/net/ethernet/intel/ice/ice_ptp_hw.c:902:19: warning: shift count is negative [-Wshift-count-negative]
           high = FIELD_GET(P_REG_40B_HIGH_M, val);
                  ~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/ice/ice_ptp_hw.h:381:27: note: expanded from macro 'P_REG_40B_HIGH_M'
   #define P_REG_40B_HIGH_M                GENMASK(39, 8)
                                           ^
   include/linux/bits.h:35:31: note: expanded from macro 'GENMASK'
           (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
                                        ^
   include/uapi/linux/bits.h:9:19: note: expanded from macro '__GENMASK'
            (~_UL(0) >> (__BITS_PER_LONG - 1 - (h))))
                     ^
   note: (skipping 3 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:460:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
           ~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler_types.h:448:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
           ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler_types.h:440:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
>> drivers/net/ethernet/intel/ice/ice_ptp_hw.c:902:19: warning: shift count is negative [-Wshift-count-negative]
           high = FIELD_GET(P_REG_40B_HIGH_M, val);
                  ~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/ice/ice_ptp_hw.h:381:27: note: expanded from macro 'P_REG_40B_HIGH_M'
   #define P_REG_40B_HIGH_M                GENMASK(39, 8)
                                           ^
   include/linux/bits.h:35:31: note: expanded from macro 'GENMASK'
           (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
                                        ^
   include/uapi/linux/bits.h:9:19: note: expanded from macro '__GENMASK'
            (~_UL(0) >> (__BITS_PER_LONG - 1 - (h))))
                     ^
   note: (skipping 3 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:460:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
           ~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler_types.h:448:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
           ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler_types.h:440:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
>> drivers/net/ethernet/intel/ice/ice_ptp_hw.c:902:19: warning: shift count is negative [-Wshift-count-negative]
           high = FIELD_GET(P_REG_40B_HIGH_M, val);
                  ~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/ice/ice_ptp_hw.h:381:27: note: expanded from macro 'P_REG_40B_HIGH_M'
   #define P_REG_40B_HIGH_M                GENMASK(39, 8)
                                           ^
   include/linux/bits.h:35:31: note: expanded from macro 'GENMASK'
           (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
                                        ^
   include/uapi/linux/bits.h:9:19: note: expanded from macro '__GENMASK'
            (~_UL(0) >> (__BITS_PER_LONG - 1 - (h))))
                     ^
   note: (skipping 3 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:460:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
           ~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler_types.h:448:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
           ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler_types.h:440:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
>> drivers/net/ethernet/intel/ice/ice_ptp_hw.c:902:19: warning: shift count is negative [-Wshift-count-negative]
           high = FIELD_GET(P_REG_40B_HIGH_M, val);
                  ~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/ice/ice_ptp_hw.h:381:27: note: expanded from macro 'P_REG_40B_HIGH_M'
   #define P_REG_40B_HIGH_M                GENMASK(39, 8)
                                           ^
   include/linux/bits.h:35:31: note: expanded from macro 'GENMASK'
           (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
                                        ^
   include/uapi/linux/bits.h:9:19: note: expanded from macro '__GENMASK'
            (~_UL(0) >> (__BITS_PER_LONG - 1 - (h))))
                     ^
   note: (skipping 4 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:460:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
           ~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler_types.h:448:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
           ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler_types.h:440:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
>> drivers/net/ethernet/intel/ice/ice_ptp_hw.c:902:19: warning: shift count is negative [-Wshift-count-negative]
           high = FIELD_GET(P_REG_40B_HIGH_M, val);
                  ~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/ice/ice_ptp_hw.h:381:27: note: expanded from macro 'P_REG_40B_HIGH_M'
   #define P_REG_40B_HIGH_M                GENMASK(39, 8)
                                           ^
   include/linux/bits.h:35:31: note: expanded from macro 'GENMASK'
           (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
                                        ^
   include/uapi/linux/bits.h:9:19: note: expanded from macro '__GENMASK'
            (~_UL(0) >> (__BITS_PER_LONG - 1 - (h))))
                     ^
   note: (skipping 4 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:460:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
           ~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler_types.h:448:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
           ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler_types.h:440:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
>> drivers/net/ethernet/intel/ice/ice_ptp_hw.c:902:19: warning: shift count is negative [-Wshift-count-negative]
           high = FIELD_GET(P_REG_40B_HIGH_M, val);
                  ~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/ice/ice_ptp_hw.h:381:27: note: expanded from macro 'P_REG_40B_HIGH_M'
   #define P_REG_40B_HIGH_M                GENMASK(39, 8)
                                           ^
   include/linux/bits.h:35:31: note: expanded from macro 'GENMASK'
           (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
                                        ^
   include/uapi/linux/bits.h:9:19: note: expanded from macro '__GENMASK'
            (~_UL(0) >> (__BITS_PER_LONG - 1 - (h))))
                     ^
   note: (skipping 5 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:460:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
           ~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler_types.h:448:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
           ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler_types.h:440:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
>> drivers/net/ethernet/intel/ice/ice_ptp_hw.c:902:19: warning: shift count is negative [-Wshift-count-negative]
           high = FIELD_GET(P_REG_40B_HIGH_M, val);
                  ~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/ice/ice_ptp_hw.h:381:27: note: expanded from macro 'P_REG_40B_HIGH_M'
   #define P_REG_40B_HIGH_M                GENMASK(39, 8)
                                           ^
   include/linux/bits.h:35:31: note: expanded from macro 'GENMASK'
           (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
                                        ^
   include/uapi/linux/bits.h:9:19: note: expanded from macro '__GENMASK'
            (~_UL(0) >> (__BITS_PER_LONG - 1 - (h))))
                     ^
   note: (skipping 6 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:460:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
           ~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler_types.h:448:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
           ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler_types.h:440:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
>> drivers/net/ethernet/intel/ice/ice_ptp_hw.c:902:19: warning: shift count is negative [-Wshift-count-negative]
           high = FIELD_GET(P_REG_40B_HIGH_M, val);
                  ~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/ice/ice_ptp_hw.h:381:27: note: expanded from macro 'P_REG_40B_HIGH_M'
   #define P_REG_40B_HIGH_M                GENMASK(39, 8)
                                           ^
   include/linux/bits.h:35:31: note: expanded from macro 'GENMASK'
           (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
                                        ^
   include/uapi/linux/bits.h:9:19: note: expanded from macro '__GENMASK'
            (~_UL(0) >> (__BITS_PER_LONG - 1 - (h))))
                     ^
   note: (skipping 5 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:460:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
           ~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler_types.h:448:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
           ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler_types.h:440:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
>> drivers/net/ethernet/intel/ice/ice_ptp_hw.c:902:19: warning: shift count is negative [-Wshift-count-negative]
           high = FIELD_GET(P_REG_40B_HIGH_M, val);
                  ~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/ice/ice_ptp_hw.h:381:27: note: expanded from macro 'P_REG_40B_HIGH_M'
   #define P_REG_40B_HIGH_M                GENMASK(39, 8)
                                           ^
   include/linux/bits.h:35:31: note: expanded from macro 'GENMASK'
           (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
                                        ^
   include/uapi/linux/bits.h:9:19: note: expanded from macro '__GENMASK'
            (~_UL(0) >> (__BITS_PER_LONG - 1 - (h))))
                     ^
   note: (skipping 6 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:460:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
           ~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler_types.h:448:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
           ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler_types.h:440:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
>> drivers/net/ethernet/intel/ice/ice_ptp_hw.c:902:19: warning: shift count is negative [-Wshift-count-negative]
           high = FIELD_GET(P_REG_40B_HIGH_M, val);
                  ~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/ice/ice_ptp_hw.h:381:27: note: expanded from macro 'P_REG_40B_HIGH_M'
   #define P_REG_40B_HIGH_M                GENMASK(39, 8)
                                           ^
   include/linux/bits.h:35:31: note: expanded from macro 'GENMASK'
           (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
                                        ^
   include/uapi/linux/bits.h:9:19: note: expanded from macro '__GENMASK'
            (~_UL(0) >> (__BITS_PER_LONG - 1 - (h))))
                     ^
   include/linux/bitfield.h:156:30: note: expanded from macro 'FIELD_GET'
                   (typeof(_mask))(((_reg) & (_mask)) >> __bf_shf(_mask)); \
                                              ^~~~~
>> drivers/net/ethernet/intel/ice/ice_ptp_hw.c:902:19: warning: shift count is negative [-Wshift-count-negative]
           high = FIELD_GET(P_REG_40B_HIGH_M, val);
                  ~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/ice/ice_ptp_hw.h:381:27: note: expanded from macro 'P_REG_40B_HIGH_M'
   #define P_REG_40B_HIGH_M                GENMASK(39, 8)
                                           ^
   include/linux/bits.h:35:31: note: expanded from macro 'GENMASK'
           (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
                                        ^
   include/uapi/linux/bits.h:9:19: note: expanded from macro '__GENMASK'
            (~_UL(0) >> (__BITS_PER_LONG - 1 - (h))))
                     ^
   include/linux/bitfield.h:156:50: note: expanded from macro 'FIELD_GET'
                   (typeof(_mask))(((_reg) & (_mask)) >> __bf_shf(_mask)); \
                                                         ~~~~~~~~~^~~~~~
   include/linux/bitfield.h:45:38: note: expanded from macro '__bf_shf'
   #define __bf_shf(x) (__builtin_ffsll(x) - 1)
                                        ^
   11 warnings generated.


vim +902 drivers/net/ethernet/intel/ice/ice_ptp_hw.c

   875	
   876	/**
   877	 * ice_write_40b_phy_reg_e82x - Write a 40b value to the PHY
   878	 * @hw: pointer to the HW struct
   879	 * @port: port to write to
   880	 * @low_addr: offset of the low register
   881	 * @val: 40b value to write
   882	 *
   883	 * Write the provided 40b value to the two associated registers by splitting
   884	 * it up into two chunks, the lower 8 bits and the upper 32 bits.
   885	 */
   886	static int
   887	ice_write_40b_phy_reg_e82x(struct ice_hw *hw, u8 port, u16 low_addr, u64 val)
   888	{
   889		u32 low, high;
   890		u16 high_addr;
   891		int err;
   892	
   893		/* Only operate on registers known to be split into a lower 8 bit
   894		 * register and an upper 32 bit register.
   895		 */
   896		if (!ice_is_40b_phy_reg_e82x(low_addr, &high_addr)) {
   897			ice_debug(hw, ICE_DBG_PTP, "Invalid 40b register addr 0x%08x\n",
   898				  low_addr);
   899			return -EINVAL;
   900		}
   901		low = FIELD_GET(P_REG_40B_LOW_M, val);
 > 902		high = FIELD_GET(P_REG_40B_HIGH_M, val);
   903	
   904		err = ice_write_phy_reg_e82x(hw, port, low_addr, low);
   905		if (err) {
   906			ice_debug(hw, ICE_DBG_PTP, "Failed to write to low register 0x%08x\n, err %d",
   907				  low_addr, err);
   908			return err;
   909		}
   910	
   911		err = ice_write_phy_reg_e82x(hw, port, high_addr, high);
   912		if (err) {
   913			ice_debug(hw, ICE_DBG_PTP, "Failed to write to high register 0x%08x\n, err %d",
   914				  high_addr, err);
   915			return err;
   916		}
   917	
   918		return 0;
   919	}
   920	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
