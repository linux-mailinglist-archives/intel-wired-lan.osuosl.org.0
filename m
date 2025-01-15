Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CD674A12F67
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Jan 2025 00:52:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B38F380CDD;
	Wed, 15 Jan 2025 23:52:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4DKYEAYAFy7l; Wed, 15 Jan 2025 23:52:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 89BD580CF7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736985165;
	bh=XtmTr6DM/aOeSJJm8C/GU24SM7+rNoht0sCC95DuzvY=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=HJW71vmTWXjdvF1WkvLUAQXkVgHkx6DsuTAmdfQbmt+X3Nlpw8pKC2wXUH0Vqv0ox
	 k0MUB/BDrHzHaYEkl8X2Qzref09W0/Gbcb+SURxiOlFl9tTMGHwt5C6s8euTB4crEu
	 JN0i8gYK2EYC7g43PUb3ZmZzF1JrLCU4XJkgMEIqtndCK66bYrJgDqwtARVN1tT9zQ
	 +7bVGBAnodHswz2FceMA+CKWD1u3AsclH1SyNSMRrssVyT8kFrMIwxe7UQVm/y5VYA
	 4x1KC0s3MlPFdvvwtOLQzov5C0oYUW14OOHTtHv9EyX+BbvremrtQ9/agByW+wM6sm
	 XOQf4UH/bSuIQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 89BD580CF7;
	Wed, 15 Jan 2025 23:52:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id AE783B89
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jan 2025 23:52:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 89D1280CB1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jan 2025 23:52:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CKFxjqglJNKj for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Jan 2025 23:52:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6A39280C77
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6A39280C77
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6A39280C77
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jan 2025 23:52:42 +0000 (UTC)
X-CSE-ConnectionGUID: knew6nrDRumMESEGULz7sw==
X-CSE-MsgGUID: lSdm5Y1+TkeUjokRgtKa5Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11316"; a="41025012"
X-IronPort-AV: E=Sophos;i="6.13,207,1732608000"; d="scan'208";a="41025012"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2025 15:52:42 -0800
X-CSE-ConnectionGUID: 5NVk7zCnTGCTpoPKC3qWnA==
X-CSE-MsgGUID: kVk464BUQ8W/u+7FzKRjqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="110405041"
Received: from lkp-server01.sh.intel.com (HELO d63d4d77d921) ([10.239.97.150])
 by orviesa005.jf.intel.com with ESMTP; 15 Jan 2025 15:52:41 -0800
Received: from kbuild by d63d4d77d921 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tYDBe-000R2b-1O
 for intel-wired-lan@lists.osuosl.org; Wed, 15 Jan 2025 23:52:38 +0000
Date: Thu, 16 Jan 2025 07:51:38 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202501160732.aZH7xTI3-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736985163; x=1768521163;
 h=date:from:to:subject:message-id;
 bh=cj48jPkh54YS/E0erGhAeyNHx6eXYv+5FwODzcaJ2mc=;
 b=ZCtAz+LfAZI1CbqO0BY+WFtJ2UFa91aUbqozjOff0xgoWa62kXPYiqzc
 JuHKHgUJFkjZAR0b7KTJug61aYemZSKnz1wj59DbsLErokqAr+1YLTE8E
 E1Rk9FwfX9t2jE4HMvGB9e1v5zZzzg44NoNriIocPQBVA2Olqc50TlvmJ
 37ULJFVZV3N/cazq2NsXqBgw4CEwCkaQoLXUaXFd6YUm9XaAUO6qO0tM0
 0+ViBelehNsdgQX1AxUNN5mmZnyihSA/x2br6f7MkcCBMdsTV2M1Zw1NL
 JWAo7eOaxKnyEfLiYRRn6BZCwhcs9Asuo3XlzJvqeCrlxERParbCy5any
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZCtAz+Lf
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 914639464b760a4ec659a46cc2de9a2fdc4eff5a
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: 914639464b760a4ec659a46cc2de9a2fdc4eff5a  ice: Add in/out PTP pin delays

elapsed time: 1456m

configs tested: 84
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
arc                               allnoconfig    gcc-13.2.0
arc                   randconfig-001-20250115    gcc-13.2.0
arc                   randconfig-002-20250115    gcc-13.2.0
arm                              alldefconfig    gcc-14.2.0
arm                               allnoconfig    clang-17
arm                   randconfig-001-20250115    clang-16
arm                   randconfig-002-20250115    clang-20
arm                   randconfig-003-20250115    clang-20
arm                   randconfig-004-20250115    clang-20
arm                           sunxi_defconfig    gcc-14.2.0
arm64                             allnoconfig    gcc-14.2.0
arm64                 randconfig-001-20250115    clang-20
arm64                 randconfig-002-20250115    gcc-14.2.0
arm64                 randconfig-003-20250115    clang-18
arm64                 randconfig-004-20250115    gcc-14.2.0
csky                              allnoconfig    gcc-14.2.0
csky                  randconfig-001-20250115    gcc-14.2.0
csky                  randconfig-002-20250115    gcc-14.2.0
hexagon                           allnoconfig    clang-20
hexagon               randconfig-001-20250115    clang-20
hexagon               randconfig-002-20250115    clang-19
i386                              allnoconfig    gcc-12
i386        buildonly-randconfig-001-20250115    clang-19
i386        buildonly-randconfig-002-20250115    gcc-12
i386        buildonly-randconfig-003-20250115    gcc-12
i386        buildonly-randconfig-004-20250115    gcc-12
i386        buildonly-randconfig-005-20250115    gcc-12
i386        buildonly-randconfig-006-20250115    gcc-12
loongarch                         allnoconfig    gcc-14.2.0
loongarch             randconfig-001-20250115    gcc-14.2.0
loongarch             randconfig-002-20250115    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250115    gcc-14.2.0
nios2                 randconfig-002-20250115    gcc-14.2.0
openrisc                          allnoconfig    gcc-14.2.0
openrisc                            defconfig    gcc-14.2.0
parisc                            allnoconfig    gcc-14.2.0
parisc                randconfig-001-20250115    gcc-14.2.0
parisc                randconfig-002-20250115    gcc-14.2.0
powerpc                           allnoconfig    gcc-14.2.0
powerpc                 canyonlands_defconfig    clang-19
powerpc               randconfig-001-20250115    gcc-14.2.0
powerpc               randconfig-002-20250115    gcc-14.2.0
powerpc               randconfig-003-20250115    gcc-14.2.0
powerpc64             randconfig-001-20250115    gcc-14.2.0
powerpc64             randconfig-002-20250115    gcc-14.2.0
powerpc64             randconfig-003-20250115    clang-18
riscv                             allnoconfig    gcc-14.2.0
riscv                 randconfig-001-20250115    gcc-14.2.0
riscv                 randconfig-002-20250115    clang-16
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.2.0
s390                  randconfig-001-20250115    clang-20
s390                  randconfig-002-20250115    clang-15
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                    randconfig-001-20250115    gcc-14.2.0
sh                    randconfig-002-20250115    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250115    gcc-14.2.0
sparc                 randconfig-002-20250115    gcc-14.2.0
sparc64               randconfig-001-20250115    gcc-14.2.0
sparc64               randconfig-002-20250115    gcc-14.2.0
um                                allnoconfig    clang-18
um                    randconfig-001-20250115    clang-18
um                    randconfig-002-20250115    gcc-12
x86_64                            allnoconfig    clang-19
x86_64      buildonly-randconfig-001-20250115    gcc-12
x86_64      buildonly-randconfig-002-20250115    gcc-12
x86_64      buildonly-randconfig-003-20250115    clang-19
x86_64      buildonly-randconfig-004-20250115    clang-19
x86_64      buildonly-randconfig-005-20250115    gcc-12
x86_64      buildonly-randconfig-006-20250115    clang-19
x86_64                              defconfig    gcc-11
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20250115    gcc-14.2.0
xtensa                randconfig-002-20250115    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
