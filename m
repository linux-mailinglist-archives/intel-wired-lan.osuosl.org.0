Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 000AA9A4093
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Oct 2024 15:58:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7A7E260B1E;
	Fri, 18 Oct 2024 13:58:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O-SR1L0xmil4; Fri, 18 Oct 2024 13:58:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1F3FC60B21
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729259926;
	bh=cbcYjr0K3aTYT//Z0NaDoJzUX+hCNCjAHUZ+teE53z8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=lvL25hFef/sulmnDVassW20kBgUurvlmvCDKBG0cI9a4MA0tiKogQKLIAs+MX+yG/
	 JvM2aKXnERivCyamJjJLqitd2JYnzq5R7DTXQD1m0ZUmT7+dT0SI7NnplfDQp97JZ7
	 TF+vvLhQO+hNf1LFdHABoRQCBqiPl6toA32ir37ojTivT5Y7k7uwhR7KJBOxpqDZYm
	 q4m1GyEwnZ0KrOVr3XSkYU29/gmzjQg7Y6gXUPBwrT8/7rNgUhoCokJM9sFrnHyp1g
	 n+zM6NivFBjuFyYd7i40l5cW6ZRdqT/nxwAYXSijD6eEn6QSgsIBOSdJDpfnhuBubQ
	 NjbMuSMD0hqew==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1F3FC60B21;
	Fri, 18 Oct 2024 13:58:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4EDB727DD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 13:58:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 279784084F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 13:58:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id e-9aO3PXibgE for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Oct 2024 13:58:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C2DAE4083F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C2DAE4083F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C2DAE4083F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 13:58:41 +0000 (UTC)
X-CSE-ConnectionGUID: holHwsWcQpaBFv1cY0ophw==
X-CSE-MsgGUID: J87F48UxS5+uDvSpSC3xlg==
X-IronPort-AV: E=McAfee;i="6700,10204,11229"; a="32587258"
X-IronPort-AV: E=Sophos;i="6.11,213,1725346800"; d="scan'208";a="32587258"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2024 06:58:41 -0700
X-CSE-ConnectionGUID: /GM4nVLyR5Giz/BEsWAezg==
X-CSE-MsgGUID: kOFXpsr2Sfu0YcBka3lxag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,213,1725346800"; d="scan'208";a="79218398"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
 by fmviesa010.fm.intel.com with ESMTP; 18 Oct 2024 06:58:40 -0700
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1t1nUz-000NtR-34
 for intel-wired-lan@lists.osuosl.org; Fri, 18 Oct 2024 13:58:37 +0000
Date: Fri, 18 Oct 2024 21:57:58 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202410182150.ofENIgus-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729259922; x=1760795922;
 h=date:from:to:subject:message-id;
 bh=w5UOAdOcjMOr3yskfO6XMm3Y9ZfISKSJnTbHt3zdmCw=;
 b=AGq+xlWfnbtsKkhnUQQSMig2lzs9/PTS2jQ/nod2kEy9elX5U+8hQpeX
 Qnvol2bdFLLUvNPhnlZCcyzOrzYvYVhapsunh0DSfPqSq4NfsB7QJyxw3
 O4k6wjq5adFfE6TcSSjoG9pJ11eJr1JnXy4ERUj4qQ+gbVjy/Y3TJqLwV
 OcrL4IdsSgpzO77njdwG8pK5pWkRTzdd+ojOkMOnn1LjbROnTyW6sisrN
 clExo+U5lxk2SUF7biJ2uGSKz5bYZMOUtlYXUht8ose6S6i5IB2XDReUa
 6azKek+TjPWcnyEjxZSE7JU/uRKVBhTZghPxpJoXlKXmi06yuVneVW/cX
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AGq+xlWf
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 f87a17ed3b51fba4dfdd8f8b643b5423a85fc551
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git main
branch HEAD: f87a17ed3b51fba4dfdd8f8b643b5423a85fc551  net: phy: realtek: merge the drivers for internal NBase-T PHY's

elapsed time: 1376m

configs tested: 134
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.1.0
alpha                            allyesconfig    clang-20
alpha                               defconfig    gcc-14.1.0
arc                              allmodconfig    clang-20
arc                               allnoconfig    gcc-14.1.0
arc                              allyesconfig    clang-20
arc                                 defconfig    gcc-14.1.0
arm                              allmodconfig    clang-20
arm                               allnoconfig    gcc-14.1.0
arm                              allyesconfig    clang-20
arm                                 defconfig    gcc-14.1.0
arm                          gemini_defconfig    gcc-14.1.0
arm                          ixp4xx_defconfig    gcc-14.1.0
arm                        keystone_defconfig    gcc-14.1.0
arm                        multi_v7_defconfig    gcc-14.1.0
arm                             rpc_defconfig    gcc-14.1.0
arm                         s5pv210_defconfig    gcc-14.1.0
arm                           tegra_defconfig    gcc-14.1.0
arm64                            allmodconfig    clang-20
arm64                             allnoconfig    gcc-14.1.0
arm64                               defconfig    gcc-14.1.0
csky                              allnoconfig    gcc-14.1.0
csky                                defconfig    gcc-14.1.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    gcc-14.1.0
hexagon                          allyesconfig    clang-20
hexagon                             defconfig    gcc-14.1.0
i386                             allmodconfig    clang-18
i386                              allnoconfig    clang-18
i386                             allyesconfig    clang-18
i386        buildonly-randconfig-001-20241018    gcc-11
i386        buildonly-randconfig-002-20241018    gcc-11
i386        buildonly-randconfig-003-20241018    gcc-11
i386        buildonly-randconfig-004-20241018    gcc-11
i386        buildonly-randconfig-005-20241018    gcc-11
i386        buildonly-randconfig-006-20241018    gcc-11
i386                                defconfig    clang-18
i386                  randconfig-001-20241018    gcc-11
i386                  randconfig-002-20241018    gcc-11
i386                  randconfig-003-20241018    gcc-11
i386                  randconfig-004-20241018    gcc-11
i386                  randconfig-005-20241018    gcc-11
i386                  randconfig-006-20241018    gcc-11
i386                  randconfig-011-20241018    gcc-11
i386                  randconfig-012-20241018    gcc-11
i386                  randconfig-013-20241018    gcc-11
i386                  randconfig-014-20241018    gcc-11
i386                  randconfig-015-20241018    gcc-11
i386                  randconfig-016-20241018    gcc-11
loongarch                        allmodconfig    gcc-14.1.0
loongarch                         allnoconfig    gcc-14.1.0
loongarch                           defconfig    gcc-14.1.0
m68k                             allmodconfig    gcc-14.1.0
m68k                              allnoconfig    gcc-14.1.0
m68k                             allyesconfig    gcc-14.1.0
m68k                                defconfig    gcc-14.1.0
m68k                        stmark2_defconfig    gcc-14.1.0
microblaze                       allmodconfig    gcc-14.1.0
microblaze                        allnoconfig    gcc-14.1.0
microblaze                       allyesconfig    gcc-14.1.0
microblaze                          defconfig    gcc-14.1.0
mips                              allnoconfig    gcc-14.1.0
nios2                             allnoconfig    gcc-14.1.0
nios2                               defconfig    gcc-14.1.0
openrisc                          allnoconfig    clang-20
openrisc                         allyesconfig    gcc-14.1.0
openrisc                            defconfig    gcc-12
openrisc                    or1ksim_defconfig    gcc-14.1.0
parisc                           allmodconfig    gcc-14.1.0
parisc                            allnoconfig    clang-20
parisc                           allyesconfig    gcc-14.1.0
parisc                              defconfig    gcc-12
parisc64                            defconfig    gcc-14.1.0
powerpc                          allmodconfig    gcc-14.1.0
powerpc                           allnoconfig    clang-20
powerpc                          allyesconfig    gcc-14.1.0
powerpc                     skiroot_defconfig    gcc-14.1.0
powerpc                      tqm8xx_defconfig    gcc-14.1.0
riscv                            allmodconfig    gcc-14.1.0
riscv                             allnoconfig    clang-20
riscv                            allyesconfig    gcc-14.1.0
riscv                               defconfig    gcc-12
riscv             nommu_k210_sdcard_defconfig    gcc-14.1.0
riscv                    nommu_virt_defconfig    gcc-14.1.0
s390                             allmodconfig    gcc-14.1.0
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.1.0
s390                                defconfig    gcc-12
sh                               allmodconfig    gcc-14.1.0
sh                                allnoconfig    gcc-14.1.0
sh                               allyesconfig    gcc-14.1.0
sh                                  defconfig    gcc-12
sh                           se7705_defconfig    gcc-14.1.0
sh                           se7751_defconfig    gcc-14.1.0
sparc                            allmodconfig    gcc-14.1.0
sparc64                             defconfig    gcc-12
um                               allmodconfig    clang-20
um                                allnoconfig    clang-20
um                               allyesconfig    clang-20
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-18
x86_64                           allyesconfig    clang-18
x86_64      buildonly-randconfig-001-20241018    clang-18
x86_64      buildonly-randconfig-002-20241018    clang-18
x86_64      buildonly-randconfig-003-20241018    clang-18
x86_64      buildonly-randconfig-004-20241018    clang-18
x86_64      buildonly-randconfig-005-20241018    clang-18
x86_64      buildonly-randconfig-006-20241018    clang-18
x86_64                              defconfig    clang-18
x86_64                                  kexec    clang-18
x86_64                                  kexec    gcc-12
x86_64                randconfig-001-20241018    clang-18
x86_64                randconfig-002-20241018    clang-18
x86_64                randconfig-003-20241018    clang-18
x86_64                randconfig-004-20241018    clang-18
x86_64                randconfig-005-20241018    clang-18
x86_64                randconfig-006-20241018    clang-18
x86_64                randconfig-011-20241018    clang-18
x86_64                randconfig-012-20241018    clang-18
x86_64                randconfig-013-20241018    clang-18
x86_64                randconfig-014-20241018    clang-18
x86_64                randconfig-015-20241018    clang-18
x86_64                randconfig-016-20241018    clang-18
x86_64                randconfig-071-20241018    clang-18
x86_64                randconfig-072-20241018    clang-18
x86_64                randconfig-073-20241018    clang-18
x86_64                randconfig-074-20241018    clang-18
x86_64                randconfig-075-20241018    clang-18
x86_64                randconfig-076-20241018    clang-18
x86_64                               rhel-8.3    gcc-12
xtensa                            allnoconfig    gcc-14.1.0
xtensa                       common_defconfig    gcc-14.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
