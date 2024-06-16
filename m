Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F0AF909DAE
	for <lists+intel-wired-lan@lfdr.de>; Sun, 16 Jun 2024 15:23:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 295354067F;
	Sun, 16 Jun 2024 13:23:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ccTIz2m1UK2u; Sun, 16 Jun 2024 13:23:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E6F514067B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718544203;
	bh=VAC+xTVnAwNtf33kFBsZAMQvUgcIibRYi5FaddOgi10=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=AbnVERJWvkJ+Uzz4r5+p0CDKECSWAXLDNCI+AsDvEYryeJ74QGGeSGZRl29hnISle
	 Xvrusx7Ubztp0LyRO3kCQTfxl0DPqzwa44i2rt1NtxQbg6vDUq4bHDpdGKburq+Ll7
	 TBbyzsFFRzUFCjWgHpE4K+E6lGMzauc0K1GmhU9YqoyYs0evYIlIN6fTJdaEs9V2y+
	 Rn2vwLcR1jgYdByvyYIMLvd9pcUy4e6MvlJchiBJvY6tCrMXTYNKQj7uMm4fr0XQiL
	 PTCioC2sOuKg1ScAhjCLVlupROPn0cLeOTChuAcXpXChM0KFbxDDZpenDi1aMN+B78
	 ih56AdkDq+dZQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E6F514067B;
	Sun, 16 Jun 2024 13:23:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8EB241BF2C4
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Jun 2024 13:23:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 851F881EDC
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Jun 2024 13:23:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KJwtkExgXFLw for <intel-wired-lan@lists.osuosl.org>;
 Sun, 16 Jun 2024 13:23:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 57E5381EB4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 57E5381EB4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 57E5381EB4
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Jun 2024 13:23:19 +0000 (UTC)
X-CSE-ConnectionGUID: 0G1LxK+1QIi7ZrCbYAI2Dw==
X-CSE-MsgGUID: O75cQKLMS0WWZJNIdUSz0g==
X-IronPort-AV: E=McAfee;i="6700,10204,11104"; a="19209607"
X-IronPort-AV: E=Sophos;i="6.08,242,1712646000"; d="scan'208";a="19209607"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2024 06:23:18 -0700
X-CSE-ConnectionGUID: I3jvXnS0QdC+/aA6rzO5UQ==
X-CSE-MsgGUID: nxtvt3zMRqqRUbPDtFztVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,242,1712646000"; d="scan'208";a="64164778"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by fmviesa002.fm.intel.com with ESMTP; 16 Jun 2024 06:23:17 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sIpql-0002pa-1g
 for intel-wired-lan@lists.osuosl.org; Sun, 16 Jun 2024 13:23:15 +0000
Date: Sun, 16 Jun 2024 21:22:21 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202406162119.kIV5Wr3p-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718544199; x=1750080199;
 h=date:from:to:subject:message-id;
 bh=ZQgZCRSOL2CEfiqYm1+nehvXfs6OSj9onypcNeNASYk=;
 b=U+qNJZkYUro2pXIZyn+zHzHMJWhybocMzDG82URXjMu2K+856MPZTph7
 UdbXNgyPpF10QK/XEQpzFjIaGol61Qtes/DTHEUy1+OI/QocxltZhh+qQ
 tNo2lMHStDw+724XjtDVs7OKxYRcI9t0VKciWPtKqcVbmqdacDTeYy+jU
 gE2ZJLEGqNTSeQPl4w0scsG/D6pWX8kwIbjWdIpnBORgpZzWEA5sg63aa
 uiVKhlLD0cLA4Wk/2MjoDVhG9qe4M0g756X2jGFOy8NPdQyNvfaYlb2/q
 CArLLUOtvUpLD1TtmAl2cBKZIQjCDlwXIaYdFAa2dpzdwKpr1DXev6n/4
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=U+qNJZkY
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 404dbd26322f50c8123bf5bff9a409356889035f
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git main
branch HEAD: 404dbd26322f50c8123bf5bff9a409356889035f  net: qrtr: ns: Ignore ENODEV failures in ns

elapsed time: 2997m

configs tested: 83
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.2.0
alpha                               defconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                                 defconfig   gcc-13.2.0
arm                               allnoconfig   clang-19
arm                                 defconfig   clang-14
arm64                             allnoconfig   gcc-13.2.0
arm64                               defconfig   gcc-13.2.0
csky                              allnoconfig   gcc-13.2.0
csky                                defconfig   gcc-13.2.0
hexagon                           allnoconfig   clang-19
hexagon                             defconfig   clang-19
i386         buildonly-randconfig-001-20240615   clang-18
i386         buildonly-randconfig-002-20240615   gcc-9
i386         buildonly-randconfig-003-20240615   gcc-7
i386         buildonly-randconfig-004-20240615   clang-18
i386         buildonly-randconfig-005-20240615   clang-18
i386         buildonly-randconfig-006-20240615   gcc-13
i386                  randconfig-001-20240615   clang-18
i386                  randconfig-002-20240615   gcc-13
i386                  randconfig-003-20240615   clang-18
i386                  randconfig-004-20240615   clang-18
i386                  randconfig-005-20240615   clang-18
i386                  randconfig-006-20240615   clang-18
i386                  randconfig-011-20240615   clang-18
i386                  randconfig-012-20240615   gcc-12
i386                  randconfig-013-20240615   gcc-13
i386                  randconfig-014-20240615   clang-18
i386                  randconfig-015-20240615   clang-18
i386                  randconfig-016-20240615   gcc-13
loongarch                         allnoconfig   gcc-13.2.0
loongarch                           defconfig   gcc-13.2.0
m68k                              allnoconfig   gcc-13.2.0
m68k                                defconfig   gcc-13.2.0
microblaze                        allnoconfig   gcc-13.2.0
microblaze                          defconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-13.2.0
nios2                               defconfig   gcc-13.2.0
openrisc                          allnoconfig   gcc-13.2.0
openrisc                            defconfig   gcc-13.2.0
parisc                            allnoconfig   gcc-13.2.0
parisc                              defconfig   gcc-13.2.0
parisc64                            defconfig   gcc-13.2.0
powerpc                           allnoconfig   gcc-13.2.0
riscv                             allnoconfig   gcc-13.2.0
riscv                               defconfig   clang-19
s390                              allnoconfig   clang-19
s390                                defconfig   clang-19
sh                                allnoconfig   gcc-13.2.0
sh                                  defconfig   gcc-13.2.0
sparc                             allnoconfig   gcc-13.2.0
sparc                               defconfig   gcc-13.2.0
sparc64                             defconfig   gcc-13.2.0
um                                allnoconfig   clang-17
um                                  defconfig   clang-19
um                             i386_defconfig   gcc-13
um                           x86_64_defconfig   clang-15
x86_64       buildonly-randconfig-001-20240615   gcc-9
x86_64       buildonly-randconfig-002-20240615   clang-18
x86_64       buildonly-randconfig-003-20240615   clang-18
x86_64       buildonly-randconfig-004-20240615   clang-18
x86_64       buildonly-randconfig-005-20240615   gcc-9
x86_64       buildonly-randconfig-006-20240615   clang-18
x86_64                randconfig-001-20240615   gcc-13
x86_64                randconfig-002-20240615   gcc-8
x86_64                randconfig-003-20240615   gcc-13
x86_64                randconfig-004-20240615   gcc-13
x86_64                randconfig-005-20240615   gcc-13
x86_64                randconfig-006-20240615   gcc-8
x86_64                randconfig-011-20240615   clang-18
x86_64                randconfig-012-20240615   gcc-13
x86_64                randconfig-013-20240615   clang-18
x86_64                randconfig-014-20240615   clang-18
x86_64                randconfig-015-20240615   clang-18
x86_64                randconfig-016-20240615   clang-18
x86_64                randconfig-071-20240615   clang-18
x86_64                randconfig-072-20240615   clang-18
x86_64                randconfig-073-20240615   gcc-7
x86_64                randconfig-074-20240615   gcc-13
x86_64                randconfig-075-20240615   clang-18
x86_64                randconfig-076-20240615   gcc-13
xtensa                            allnoconfig   gcc-13.2.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
