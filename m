Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A5BB9D2713
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Nov 2024 14:38:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C2897615EC;
	Tue, 19 Nov 2024 13:38:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yyrTivqmZRYf; Tue, 19 Nov 2024 13:37:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6C2816F76B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1732023479;
	bh=KkIZTIlBwX5bYqPI8PkZhJah/I85wJHivwOte7fZkrY=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=5A5slcPUKTh94kzKqCFsThFuaCzCukgyQrsfFYbd8y77taZP4Yjt4ypSWIOnAyjC/
	 j//tJhfWXbJPHS830Zef8ZGsMuG4+CgSNOrJ2jIPPWpf4/Fa5VGR6FI6Kww5vnuc0Y
	 z8bAF/u9en2lbvanEwKSOM4TC/EmBmuhxKVsSANzhFhNfE7SDfhwf9LXPSteW4tbE2
	 ktImI/a+8z9oPsqiOQM4gWTP73MoMrXURDQvM4Ec3ZnaB+WhKjo9rBcuGxRkLvuD2l
	 NwqVi1PaadebiOnl3ubjOsRsmTnI1vaKVoBt8xbs4Tmm/0dsIXBQS0NfNkw3QG7ISY
	 BvK5T4olu7o8Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6C2816F76B;
	Tue, 19 Nov 2024 13:37:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 034AC4962
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2024 13:37:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F2A30855EA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2024 13:37:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d50Rc9rfCu9s for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Nov 2024 13:37:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F05E8855ED
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F05E8855ED
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F05E8855ED
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2024 13:37:54 +0000 (UTC)
X-CSE-ConnectionGUID: Jurp1m8RTVmMRSuywyE03A==
X-CSE-MsgGUID: 6g8yh3wdQseFkCZ8TQ2E2g==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="35691282"
X-IronPort-AV: E=Sophos;i="6.12,166,1728975600"; d="scan'208";a="35691282"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2024 05:37:55 -0800
X-CSE-ConnectionGUID: gegt9gp6QxmEf6Qi8czx4g==
X-CSE-MsgGUID: k3a0tDVDSoect1msxPkNJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,166,1728975600"; d="scan'208";a="89571220"
Received: from lkp-server01.sh.intel.com (HELO 8122d2fc1967) ([10.239.97.150])
 by orviesa009.jf.intel.com with ESMTP; 19 Nov 2024 05:37:54 -0800
Received: from kbuild by 8122d2fc1967 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tDOQR-00009S-0p
 for intel-wired-lan@lists.osuosl.org; Tue, 19 Nov 2024 13:37:51 +0000
Date: Tue, 19 Nov 2024 20:30:03 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202411192054.zS7BPRQs-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732023475; x=1763559475;
 h=date:from:to:subject:message-id;
 bh=qK16oJxdAAHhrG3KquFU8VvvzOCiYAY95RmoXU7GoBM=;
 b=Omkn8YNiMY406IRDR4ZZGUJHAipXpDM+0lfa6K/TnIwNQOdAeCEUDdli
 8jlfkZINSsocMuftKOd8YWLwtCuuyuBe0f6p3ol8sEneZZQRNekbYapOa
 rAqZnwv+AOY1n01NImyoKwHD15WcsIAKWLI16Ssct2MQXCAucKYAdP1zh
 atYhueVAhiSQwYp3KAaKybMDg0vz87cIq3cZNCDAJNwec8SCsfgj3DoXw
 Umm4opDtv86juWFHCL5fo0zQg+NVkGFy+EJ6FPwBNUa/9DAfTmBZjoMoU
 Xl8MtXYt3nSBkkdA+uznOB3P24w62VB/UJ9tvk0fMrY6S/dvFwfv5Ovh9
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Omkn8YNi
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 9760d0d2024d641efae59ac5817cab226c410090
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
branch HEAD: 9760d0d2024d641efae59ac5817cab226c410090  idpf: add lock class key

elapsed time: 928m

configs tested: 112
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    clang-20
alpha                               defconfig    gcc-14.2.0
arc                              allmodconfig    clang-20
arc                               allnoconfig    gcc-14.2.0
arc                              allyesconfig    clang-20
arc                                 defconfig    gcc-14.2.0
arc                        vdk_hs38_defconfig    clang-20
arc                    vdk_hs38_smp_defconfig    clang-20
arm                              allmodconfig    clang-20
arm                               allnoconfig    gcc-14.2.0
arm                              allyesconfig    clang-20
arm                                 defconfig    gcc-14.2.0
arm                         nhk8815_defconfig    clang-20
arm                             pxa_defconfig    clang-20
arm                       spear13xx_defconfig    clang-20
arm64                            allmodconfig    clang-20
arm64                             allnoconfig    gcc-14.2.0
arm64                               defconfig    gcc-14.2.0
csky                              allnoconfig    gcc-14.2.0
csky                                defconfig    gcc-14.2.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    gcc-14.2.0
hexagon                          allyesconfig    clang-20
hexagon                             defconfig    gcc-14.2.0
i386                             allmodconfig    clang-19
i386                              allnoconfig    clang-19
i386                              allnoconfig    gcc-12
i386                             allyesconfig    clang-19
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20241119    clang-19
i386        buildonly-randconfig-002-20241119    clang-19
i386        buildonly-randconfig-003-20241119    clang-19
i386        buildonly-randconfig-004-20241119    clang-19
i386        buildonly-randconfig-005-20241119    clang-19
i386        buildonly-randconfig-006-20241119    clang-19
i386                                defconfig    clang-19
i386                  randconfig-001-20241119    clang-19
i386                  randconfig-002-20241119    clang-19
i386                  randconfig-003-20241119    clang-19
i386                  randconfig-004-20241119    clang-19
i386                  randconfig-005-20241119    clang-19
i386                  randconfig-006-20241119    clang-19
i386                  randconfig-011-20241119    clang-19
i386                  randconfig-012-20241119    clang-19
i386                  randconfig-013-20241119    clang-19
i386                  randconfig-014-20241119    clang-19
i386                  randconfig-015-20241119    clang-19
i386                  randconfig-016-20241119    clang-19
loongarch                         allnoconfig    gcc-14.2.0
loongarch                           defconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                                defconfig    gcc-14.2.0
m68k                       m5208evb_defconfig    clang-20
m68k                       m5249evb_defconfig    clang-20
m68k                        m5307c3_defconfig    clang-20
m68k                            mac_defconfig    clang-20
m68k                            q40_defconfig    clang-20
microblaze                        allnoconfig    gcc-14.2.0
microblaze                          defconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                      bmips_stb_defconfig    clang-20
mips                       rbtx49xx_defconfig    clang-20
nios2                             allnoconfig    gcc-14.2.0
nios2                               defconfig    gcc-14.2.0
openrisc                          allnoconfig    clang-20
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
openrisc                            defconfig    gcc-12
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    clang-20
parisc                            allnoconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                              defconfig    gcc-12
parisc64                            defconfig    gcc-14.2.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    clang-20
powerpc                           allnoconfig    gcc-14.2.0
powerpc                          allyesconfig    gcc-14.2.0
powerpc                      tqm8xx_defconfig    clang-20
riscv                            allmodconfig    gcc-14.2.0
riscv                             allnoconfig    clang-20
riscv                             allnoconfig    gcc-14.2.0
riscv                            allyesconfig    gcc-14.2.0
riscv                               defconfig    gcc-12
riscv             nommu_k210_sdcard_defconfig    clang-20
s390                             allmodconfig    gcc-14.2.0
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.2.0
s390                                defconfig    gcc-12
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                                  defconfig    gcc-12
sh                 kfr2r09-romimage_defconfig    clang-20
sh                        sh7763rdp_defconfig    clang-20
sparc                            allmodconfig    gcc-14.2.0
sparc64                             defconfig    gcc-12
um                               allmodconfig    clang-20
um                                allnoconfig    clang-17
um                                allnoconfig    clang-20
um                               allyesconfig    clang-20
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64                              defconfig    clang-19
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-19
x86_64                               rhel-9.4    gcc-12
xtensa                            allnoconfig    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
