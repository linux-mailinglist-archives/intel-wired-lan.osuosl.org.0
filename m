Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 31816A7C4EC
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Apr 2025 22:31:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 92F9E40507;
	Fri,  4 Apr 2025 20:31:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tQN8uBD0gUJJ; Fri,  4 Apr 2025 20:31:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9FCB14032A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1743798677;
	bh=7Vc4E+noAgXHKTXsiOxOrpHJ07qNpTMpLRGl3jW2AoA=;
	h=Date:From:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ttBgutHZ5yd2+y3v0l7NGBnQ8YpzwbSphSR3WkXa7Gb3ScMhQ84HedBhdHZW+8hDW
	 TeuSQdhLWOnDVYcIJc8oYCIVmOlDdPN9b54XNQHFVmp7y0KH7mfBIYjw7gphm5vR/a
	 pwHWKU1tdTDcmH/ETkvPSrZFnCLrm+X3rJisbCmHzjV3AbuQ1mp+OzoM5nSpdHMG/Y
	 QZxGm1TtEBvYyF1fPcWAIj0pJ2Ibc5lh6OTFhCM96lye4TTcELCxaMCmQsHW84thLy
	 +sgkrfY90Wy7bZC5uwIMzrq9n3YnICOOteEWAbsmS4yPa9JjOwvhQMfE67P9aFyg9Q
	 c5FBYyxF1vLig==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9FCB14032A;
	Fri,  4 Apr 2025 20:31:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id E4A0C13D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Apr 2025 20:31:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CB3534035E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Apr 2025 20:31:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vGxY8Xfmn7le for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Apr 2025 20:31:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 797CE40315
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 797CE40315
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 797CE40315
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Apr 2025 20:31:14 +0000 (UTC)
X-CSE-ConnectionGUID: 908OyenvSOiSLzhaZzsI9w==
X-CSE-MsgGUID: gN4mtpL4S2yD32yrXMG92w==
X-IronPort-AV: E=McAfee;i="6700,10204,11394"; a="45368925"
X-IronPort-AV: E=Sophos;i="6.15,189,1739865600"; d="scan'208";a="45368925"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2025 13:31:13 -0700
X-CSE-ConnectionGUID: 6n+7R+3eT8CKDO30OqWPgA==
X-CSE-MsgGUID: xAM4iaIuScqKKc58k1ktMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,189,1739865600"; d="scan'208";a="131539550"
Received: from lkp-server01.sh.intel.com (HELO b207828170a5) ([10.239.97.150])
 by fmviesa003.fm.intel.com with ESMTP; 04 Apr 2025 13:31:01 -0700
Received: from kbuild by b207828170a5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1u0ngo-0001Wx-2r;
 Fri, 04 Apr 2025 20:30:58 +0000
Date: Sat, 5 Apr 2025 04:30:22 +0800
From: kernel test robot <lkp@intel.com>
To: Dan Williams <dan.j.williams@intel.com>
Cc: oe-kbuild-all@lists.linux.dev,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
Message-ID: <202504050434.Eb4vugh5-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743798674; x=1775334674;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=2xG5vzI7WOaJ7SzKjjcO34IbLda1ke+QDwq4mvCJaHo=;
 b=F7z7xVApIBYiA4Ak0GVe5YdHKpMRKSffVQdgGfkg/2jpK0XTH+ej10k0
 WU05EvWpOejphf5qbTd1hVxL4XcNiYc24py75Qzq4fQbeTLG8n8fQjdYO
 PzJLQ+Od7mHjS0geSIeKhpmxasHwUq4hnM0buktYiFFejlp//wB0sDanJ
 i+w/ko6B7gQ296ZEXJSNhR3Ryr/aekx7TDIck97/rfkfQ580TSv9ZGKgz
 +amYJziEMIlEzuDdFwpKnU6mAbuZmfy3uH1E5x1EPQls/wpRKzbQTxvE8
 vil7/R91XA+0H5Gy7qntXS6r/pQiPcMfimq2TSI1zCeNMEKFLXEwF0JSD
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=F7z7xVAp
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue 2/12]
 include/linux/build_bug.h:78:41: error: static assertion failed:
 "sizeof(__uapi_uuid_t) == sizeof(uuid_t) && __alignof__(__uapi_uuid_t) ==
 __alignof__(uuid_t)"
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
head:   41ab790c342f99d9eb891807b2ff00caa56804b9
commit: a4bf8e3b34147889963e4c46d1e7916f7157b784 [2/12] fwctl/cxl: Fix uuid_t usage in uapi
config: arm-randconfig-003-20250405 (https://download.01.org/0day-ci/archive/20250405/202504050434.Eb4vugh5-lkp@intel.com/config)
compiler: arm-linux-gnueabi-gcc (GCC) 8.5.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250405/202504050434.Eb4vugh5-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202504050434.Eb4vugh5-lkp@intel.com/

All errors (new ones prefixed by >>):

   In file included from include/linux/bits.h:22,
                    from include/linux/ratelimit_types.h:5,
                    from include/linux/ratelimit.h:5,
                    from include/linux/dev_printk.h:16,
                    from include/linux/device.h:15,
                    from drivers/cxl/port.c:3:
>> include/linux/build_bug.h:78:41: error: static assertion failed: "sizeof(__uapi_uuid_t) == sizeof(uuid_t) && __alignof__(__uapi_uuid_t) == __alignof__(uuid_t)"
    #define __static_assert(expr, msg, ...) _Static_assert(expr, msg)
                                            ^~~~~~~~~~~~~~
   include/linux/build_bug.h:77:34: note: in expansion of macro '__static_assert'
    #define static_assert(expr, ...) __static_assert(expr, ##__VA_ARGS__, #expr)
                                     ^~~~~~~~~~~~~~~
   include/uapi/cxl/features.h:16:1: note: in expansion of macro 'static_assert'
    static_assert(sizeof(__uapi_uuid_t) == sizeof(uuid_t) &&
    ^~~~~~~~~~~~~


vim +78 include/linux/build_bug.h

bc6245e5efd70c Ian Abbott       2017-07-10  60  
6bab69c65013be Rasmus Villemoes 2019-03-07  61  /**
6bab69c65013be Rasmus Villemoes 2019-03-07  62   * static_assert - check integer constant expression at build time
6bab69c65013be Rasmus Villemoes 2019-03-07  63   *
6bab69c65013be Rasmus Villemoes 2019-03-07  64   * static_assert() is a wrapper for the C11 _Static_assert, with a
6bab69c65013be Rasmus Villemoes 2019-03-07  65   * little macro magic to make the message optional (defaulting to the
6bab69c65013be Rasmus Villemoes 2019-03-07  66   * stringification of the tested expression).
6bab69c65013be Rasmus Villemoes 2019-03-07  67   *
6bab69c65013be Rasmus Villemoes 2019-03-07  68   * Contrary to BUILD_BUG_ON(), static_assert() can be used at global
6bab69c65013be Rasmus Villemoes 2019-03-07  69   * scope, but requires the expression to be an integer constant
6bab69c65013be Rasmus Villemoes 2019-03-07  70   * expression (i.e., it is not enough that __builtin_constant_p() is
6bab69c65013be Rasmus Villemoes 2019-03-07  71   * true for expr).
6bab69c65013be Rasmus Villemoes 2019-03-07  72   *
6bab69c65013be Rasmus Villemoes 2019-03-07  73   * Also note that BUILD_BUG_ON() fails the build if the condition is
6bab69c65013be Rasmus Villemoes 2019-03-07  74   * true, while static_assert() fails the build if the expression is
6bab69c65013be Rasmus Villemoes 2019-03-07  75   * false.
6bab69c65013be Rasmus Villemoes 2019-03-07  76   */
6bab69c65013be Rasmus Villemoes 2019-03-07  77  #define static_assert(expr, ...) __static_assert(expr, ##__VA_ARGS__, #expr)
6bab69c65013be Rasmus Villemoes 2019-03-07 @78  #define __static_assert(expr, msg, ...) _Static_assert(expr, msg)
6bab69c65013be Rasmus Villemoes 2019-03-07  79  
07a368b3f55a79 Maxim Levitsky   2022-10-25  80  

:::::: The code at line 78 was first introduced by commit
:::::: 6bab69c65013bed5fce9f101a64a84d0385b3946 build_bug.h: add wrapper for _Static_assert

:::::: TO: Rasmus Villemoes <linux@rasmusvillemoes.dk>
:::::: CC: Linus Torvalds <torvalds@linux-foundation.org>

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
