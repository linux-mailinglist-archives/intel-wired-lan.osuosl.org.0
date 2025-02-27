Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EAF37A48601
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Feb 2025 18:01:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 27F15413CB;
	Thu, 27 Feb 2025 17:01:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NzefcjQuuoEI; Thu, 27 Feb 2025 17:01:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E8D0F413E4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740675708;
	bh=lMzGd4dEVKVjyFetLOvs2KsT0AHccEXQCVeS8eCUhAI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=igz7DnbPMblwqBPapDeatc7A4yzzVWJWGLd7ibgOCR1+DPwDkaXmeo8Intt9dbFBO
	 9ckYjrNjarRYxddk65H7gb162miDkdkbbA2MMQwm8kyRNDENgXCao42ZBgIiLqI1pk
	 npw1cguzleGOi4lglxGNVnYpbLHPuKMJd1ADRVXlN9KvmxhKoUz9oGy0hyNSeqgFpY
	 +0wcgPp1nBw8U2ruzBOwqawLL5J2G6BwDPCF/V1k1lGHr2CIEqNnDTD80u2MYE3PS4
	 GfOYWtJyR7d75h+0VaXZz+dyk0bW2Gr73aLh243e0OwkkFVLskrPP1o/IoelmK2DNh
	 F3IpTIDaexWtQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E8D0F413E4;
	Thu, 27 Feb 2025 17:01:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id CAED2711
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2025 17:01:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A727683EC3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2025 17:01:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QowEKt70Uq9R for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Feb 2025 17:01:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C519683ADC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C519683ADC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C519683ADC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2025 17:01:44 +0000 (UTC)
X-CSE-ConnectionGUID: KUowVIoSSj6koL3tosRiWA==
X-CSE-MsgGUID: SGEfgoXiTdyMmuOCfQ4/3Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11358"; a="41834649"
X-IronPort-AV: E=Sophos;i="6.13,320,1732608000"; d="scan'208";a="41834649"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 09:01:44 -0800
X-CSE-ConnectionGUID: 2wv/T3/PS7CMi/zvyuHshA==
X-CSE-MsgGUID: Kfr80lyORD+QCa3gnb/9aw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="122323661"
Received: from lkp-server02.sh.intel.com (HELO 76cde6cc1f07) ([10.239.97.151])
 by orviesa005.jf.intel.com with ESMTP; 27 Feb 2025 09:01:43 -0800
Received: from kbuild by 76cde6cc1f07 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tnhGX-000DkA-09
 for intel-wired-lan@lists.osuosl.org; Thu, 27 Feb 2025 17:01:41 +0000
Date: Fri, 28 Feb 2025 01:01:21 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202502280115.d7feLY0u-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740675705; x=1772211705;
 h=date:from:to:subject:message-id;
 bh=DXBod31N+ECqPZVUSGn9xBePI8lq6F0UfeOHc3VQJmA=;
 b=fRootAnO+DsaI/VPEqKv78xTECnUss7agmRYBrlkX9uYulY1MZXETvL0
 sUgCKkq439U02whLSmyjehqDpgk35zGBRUkmK1L/JzHvuaQVbznAttbEa
 7JOB3gmdKlo78DJEPb8cgcqLnR39m+11kufP4GwLGFk552sUyEFtgsLpC
 sXudjZWEwdGN6HSDfWnlvFHKquOtn3fG3Bw3G8tgWAteQ5ZTgQRKRGDaQ
 4uD9/kHa0O3hSTnDE4kn0EaX6NzoUam49PdKjp77WDMkYCYM54bgIGSOw
 uZ/+zPHhmUnSCjwJEmI1m86nQRRK/8J+e/psrSwhnTEFfwNDHlO2SUL30
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fRootAnO
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 35a24e73c80b5582d74341af1e6ce310d209587b
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 35a24e73c80b5582d74341af1e6ce310d209587b  net: e1000e: convert to ndo_hwtstamp_get() and ndo_hwtstamp_set()

elapsed time: 1449m

configs tested: 62
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                           allyesconfig    gcc-14.2.0
arc                  randconfig-001-20250227    gcc-13.2.0
arc                  randconfig-002-20250227    gcc-13.2.0
arm                  randconfig-001-20250227    gcc-14.2.0
arm                  randconfig-002-20250227    clang-17
arm                  randconfig-003-20250227    gcc-14.2.0
arm                  randconfig-004-20250227    clang-21
arm64                randconfig-001-20250227    gcc-14.2.0
arm64                randconfig-002-20250227    clang-19
arm64                randconfig-003-20250227    gcc-14.2.0
arm64                randconfig-004-20250227    gcc-14.2.0
csky                 randconfig-001-20250227    gcc-14.2.0
csky                 randconfig-002-20250227    gcc-14.2.0
hexagon                         allmodconfig    clang-21
hexagon                         allyesconfig    clang-18
hexagon              randconfig-001-20250227    clang-14
hexagon              randconfig-002-20250227    clang-16
i386       buildonly-randconfig-001-20250227    gcc-12
i386       buildonly-randconfig-002-20250227    gcc-11
i386       buildonly-randconfig-003-20250227    clang-19
i386       buildonly-randconfig-004-20250227    gcc-12
i386       buildonly-randconfig-005-20250227    gcc-11
i386       buildonly-randconfig-006-20250227    clang-19
loongarch            randconfig-001-20250227    gcc-14.2.0
loongarch            randconfig-002-20250227    gcc-14.2.0
nios2                randconfig-001-20250227    gcc-14.2.0
nios2                randconfig-002-20250227    gcc-14.2.0
parisc               randconfig-001-20250227    gcc-14.2.0
parisc               randconfig-002-20250227    gcc-14.2.0
powerpc              randconfig-001-20250227    clang-19
powerpc              randconfig-002-20250227    gcc-14.2.0
powerpc              randconfig-003-20250227    clang-19
powerpc64            randconfig-001-20250227    clang-17
powerpc64            randconfig-002-20250227    clang-21
powerpc64            randconfig-003-20250227    gcc-14.2.0
riscv                randconfig-001-20250227    gcc-14.2.0
riscv                randconfig-002-20250227    gcc-14.2.0
s390                            allmodconfig    clang-19
s390                            allyesconfig    gcc-14.2.0
s390                 randconfig-001-20250227    clang-18
s390                 randconfig-002-20250227    gcc-14.2.0
sh                              allmodconfig    gcc-14.2.0
sh                              allyesconfig    gcc-14.2.0
sh                   randconfig-001-20250227    gcc-14.2.0
sh                   randconfig-002-20250227    gcc-14.2.0
sparc                           allmodconfig    gcc-14.2.0
sparc                randconfig-001-20250227    gcc-14.2.0
sparc                randconfig-002-20250227    gcc-14.2.0
sparc64              randconfig-001-20250227    gcc-14.2.0
sparc64              randconfig-002-20250227    gcc-14.2.0
um                              allmodconfig    clang-21
um                              allyesconfig    gcc-12
um                   randconfig-001-20250227    clang-17
um                   randconfig-002-20250227    gcc-12
x86_64     buildonly-randconfig-001-20250227    clang-19
x86_64     buildonly-randconfig-002-20250227    clang-19
x86_64     buildonly-randconfig-003-20250227    gcc-12
x86_64     buildonly-randconfig-004-20250227    gcc-12
x86_64     buildonly-randconfig-005-20250227    clang-19
x86_64     buildonly-randconfig-006-20250227    gcc-12
xtensa               randconfig-001-20250227    gcc-14.2.0
xtensa               randconfig-002-20250227    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
