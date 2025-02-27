Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0053DA47CC4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Feb 2025 13:02:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2AAD0412BA;
	Thu, 27 Feb 2025 12:02:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XYXJ5I4rRgir; Thu, 27 Feb 2025 12:02:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D9A8B41388
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740657745;
	bh=4t//uTlXr1U0t/xLokpH18szyBoNiNEC9Gd1S7y6IRc=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=MsAr2TK5wLHhADr6Om5a/Ya/d6KCexb77h1guPeUanFYAuwOYGrCxxlQM4zFUZfPK
	 V0gQ3heX6UsLL/BVGsvRPbcR4vc2c8aIFO0/h65Sbf4t/ohT2akTx4dsXfpLMCpor/
	 mlI14Hv32dufoYMcpO6SlxrtPjahCBO5EbBvc9J48EP1BLBG6KoKS5ko1zd+U84W15
	 FAeuhoTxv4tei4Ityr7ewPEhZYRgS1jx7qO8tPDsf6CzWEq5h2EOYjAXGhVFxOjrki
	 XDOvIy47gcclrR7LVIct5uwxV82iKAOz++U25Hm2Ao0yk3LtN9zKE7kp78MpdIeCCs
	 JpbGpx7dTUbBg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D9A8B41388;
	Thu, 27 Feb 2025 12:02:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1388A711
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2025 12:02:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EA13641217
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2025 12:02:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7BKzh2LjClzW for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Feb 2025 12:02:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 943A1411FA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 943A1411FA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 943A1411FA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2025 12:02:22 +0000 (UTC)
X-CSE-ConnectionGUID: n4yevQzzRx+PgJs5S/BA8g==
X-CSE-MsgGUID: fJzoL4XIQ0CYpTuEe88AwA==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="41391629"
X-IronPort-AV: E=Sophos;i="6.13,319,1732608000"; d="scan'208";a="41391629"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 04:02:22 -0800
X-CSE-ConnectionGUID: kl3X6qBZTKiDfvLj41hQBw==
X-CSE-MsgGUID: zqq3xt4ERBiRWCK7BZWvLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="122250354"
Received: from lkp-server02.sh.intel.com (HELO 76cde6cc1f07) ([10.239.97.151])
 by orviesa005.jf.intel.com with ESMTP; 27 Feb 2025 04:02:21 -0800
Received: from kbuild by 76cde6cc1f07 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tncaY-000DJc-2u
 for intel-wired-lan@lists.osuosl.org; Thu, 27 Feb 2025 12:02:08 +0000
Date: Thu, 27 Feb 2025 20:01:04 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202502272058.xwRSwGFL-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740657743; x=1772193743;
 h=date:from:to:subject:message-id;
 bh=FMKA/q0Ts4ZEcEcvfYuRmOm+9gGXrfBaCVPH2IdcBcg=;
 b=OzEeZ1ojL/lNidqz+LOwZUjP++Q0lIE7uTqRHVrwEPBi1naSrim3hsC+
 aHO014BdB1HuLyxuPNfaXQhSHM9ET2KEpv0WoI37aDu/o6avcWj5bbBYg
 0eiDHvy0f7zgSWPWCwBLGXfcln7hRKHE2OnB0HY4L7IBf892c+thCFLVW
 tpl7f+jqF6pCrfJ6kogJDevRlqRgSYZLsm1aqg9Q8Pf1YCMXKpiNwnwzy
 ARU4iem6Qg+eXWZWyUulHcETqO+HZ58Rvw8adbJK8t1rWRF47xlfK2QxS
 RgY/YMapxRR/ThpMQVzQG2Kb5IW5MZ09hvr+2K3+L5vKivkJ04jlilqqK
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OzEeZ1oj
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 91c8d8e4b7a38dc099b26e14b22f814ca4e75089
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 10GbE
branch HEAD: 91c8d8e4b7a38dc099b26e14b22f814ca4e75089  enic: add dependency on Page Pool

elapsed time: 1966m

configs tested: 74
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
arc                   randconfig-001-20250227    gcc-13.2.0
arc                   randconfig-002-20250227    gcc-13.2.0
arm                   randconfig-001-20250227    gcc-14.2.0
arm                   randconfig-002-20250227    clang-17
arm                   randconfig-003-20250227    gcc-14.2.0
arm                   randconfig-004-20250227    clang-21
arm64                 randconfig-001-20250227    gcc-14.2.0
arm64                 randconfig-002-20250227    clang-19
arm64                 randconfig-003-20250227    gcc-14.2.0
arm64                 randconfig-004-20250227    gcc-14.2.0
csky                  randconfig-001-20250227    gcc-14.2.0
csky                  randconfig-002-20250227    gcc-14.2.0
hexagon               randconfig-001-20250227    clang-14
hexagon               randconfig-002-20250227    clang-16
i386        buildonly-randconfig-001-20250227    gcc-12
i386        buildonly-randconfig-002-20250227    gcc-11
i386        buildonly-randconfig-003-20250227    clang-19
i386        buildonly-randconfig-004-20250227    gcc-12
i386        buildonly-randconfig-005-20250227    gcc-11
i386        buildonly-randconfig-006-20250227    clang-19
i386                  randconfig-011-20250227    gcc-12
i386                  randconfig-012-20250227    gcc-12
i386                  randconfig-013-20250227    gcc-12
i386                  randconfig-014-20250227    gcc-12
i386                  randconfig-015-20250227    gcc-12
i386                  randconfig-016-20250227    gcc-12
i386                  randconfig-017-20250227    gcc-12
loongarch             randconfig-001-20250227    gcc-14.2.0
loongarch             randconfig-002-20250227    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250227    gcc-14.2.0
nios2                 randconfig-002-20250227    gcc-14.2.0
parisc                randconfig-001-20250227    gcc-14.2.0
parisc                randconfig-002-20250227    gcc-14.2.0
powerpc               randconfig-001-20250227    clang-19
powerpc               randconfig-002-20250227    gcc-14.2.0
powerpc               randconfig-003-20250227    clang-19
powerpc64             randconfig-001-20250227    clang-17
powerpc64             randconfig-002-20250227    clang-21
powerpc64             randconfig-003-20250227    gcc-14.2.0
riscv                 randconfig-001-20250227    gcc-14.2.0
riscv                 randconfig-002-20250227    gcc-14.2.0
s390                             allmodconfig    clang-19
s390                             allyesconfig    gcc-14.2.0
s390                  randconfig-001-20250227    clang-18
s390                  randconfig-002-20250227    gcc-14.2.0
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                    randconfig-001-20250227    gcc-14.2.0
sh                    randconfig-002-20250227    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250227    gcc-14.2.0
sparc                 randconfig-002-20250227    gcc-14.2.0
sparc64               randconfig-001-20250227    gcc-14.2.0
sparc64               randconfig-002-20250227    gcc-14.2.0
um                    randconfig-001-20250227    clang-17
um                    randconfig-002-20250227    gcc-12
x86_64      buildonly-randconfig-001-20250227    clang-19
x86_64      buildonly-randconfig-002-20250227    clang-19
x86_64      buildonly-randconfig-003-20250227    clang-19
x86_64      buildonly-randconfig-003-20250227    gcc-12
x86_64      buildonly-randconfig-004-20250227    clang-19
x86_64      buildonly-randconfig-004-20250227    gcc-12
x86_64      buildonly-randconfig-005-20250227    clang-19
x86_64      buildonly-randconfig-006-20250227    clang-19
x86_64      buildonly-randconfig-006-20250227    gcc-12
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20250227    gcc-14.2.0
xtensa                randconfig-002-20250227    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
