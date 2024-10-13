Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5658799BAB5
	for <lists+intel-wired-lan@lfdr.de>; Sun, 13 Oct 2024 20:16:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A2DCA80F5E;
	Sun, 13 Oct 2024 18:16:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id y3PqmVSHhhok; Sun, 13 Oct 2024 18:16:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D7DFF80FBC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728843368;
	bh=5E271pRjKdP7HdWm06hm3Usdi7QpbBDhyT+Vs3Aieu0=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=HRwuwA1+X0rgL5EOiJAUScdPbfTKD24siwcQR/yzpVy9gKVxre8ZypRsX03OkhV5Y
	 pEtXiH44JLJLzHL5/eWEVn3z30sK/zL8RKpHJ/beod388KH5soDLocWZ+ND0BFOf3J
	 oNtwZCyITYyd21v9M48gZSwZd0FLMr8DSijPm6LMd7ouwbjq56IYCv6784q02iaB+j
	 9oOpTMG4tGGyTIiX/EPT79xzLxMSZiRHRL34uJ7wD5xzb+ya6yUszySrcRQEmgzdug
	 5jPB3KX1RvSzVD/EGZ2eGB7DsGb7Xh7d1pxzWdpnL/Eb5FNBBJg56jGVtCNQfBpzeL
	 DeRNQ4Z3T3y/A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D7DFF80FBC;
	Sun, 13 Oct 2024 18:16:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 237DF1BF3DF
 for <intel-wired-lan@lists.osuosl.org>; Sun, 13 Oct 2024 18:16:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1126260603
 for <intel-wired-lan@lists.osuosl.org>; Sun, 13 Oct 2024 18:16:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v6Yx8qRMmhuv for <intel-wired-lan@lists.osuosl.org>;
 Sun, 13 Oct 2024 18:16:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2F56A605FF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2F56A605FF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2F56A605FF
 for <intel-wired-lan@lists.osuosl.org>; Sun, 13 Oct 2024 18:16:02 +0000 (UTC)
X-CSE-ConnectionGUID: 7tPDjbkUQuWTwwX1e5zDMw==
X-CSE-MsgGUID: iQCE3262TSyQ4bQhOE2ctg==
X-IronPort-AV: E=McAfee;i="6700,10204,11224"; a="28069137"
X-IronPort-AV: E=Sophos;i="6.11,201,1725346800"; d="scan'208";a="28069137"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2024 11:16:02 -0700
X-CSE-ConnectionGUID: wTKUZhdERq2tzWJbsTmUAw==
X-CSE-MsgGUID: pCCs/e50Rc21FMf5JQkn/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,201,1725346800"; d="scan'208";a="108167190"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
 by orviesa002.jf.intel.com with ESMTP; 13 Oct 2024 11:16:00 -0700
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1t038I-000EbD-1U
 for intel-wired-lan@lists.osuosl.org; Sun, 13 Oct 2024 18:15:58 +0000
Date: Mon, 14 Oct 2024 02:15:37 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202410140230.5HL8gniV-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728843363; x=1760379363;
 h=date:from:to:subject:message-id;
 bh=u56PvxmmCgI6FKqJBNVtRpLd6Zy0hzSL9PsKNFn9ulg=;
 b=mcs7DgmM+YjEv/1KbrSJ75qfKNm6t4XwQESmBYrqGaIaWBfpOmgmaJBd
 6xNpNa6rUzNvD1ZjwtiUEHl3nG2UDa3Oxn6LmF/nalyEn+HJlg46fTh4w
 7gvFf/Pw/6wEVx7VZ0l5v7WwwoLv1CxG0h6OliW9DuciyehjSomODiVL+
 LYQChEeCBKIAv66NnQeHapnwSV4W67de5oKY86S3PhNyzMmCN9bHWBxp+
 dh1x/Jh1xRO8mm6MDmzRekQ5TIDrb80gN0xigNVEs9WptljV0fgEIB6yn
 JBIpN2jeO6kZqT6hLQob0Wm30Ank9NYkhz8h+q1nRjAlVmYPViAlLF1zS
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mcs7DgmM
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 d677aebd663ddc287f2b2bda098474694a0ca875
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 10GbE
branch HEAD: d677aebd663ddc287f2b2bda098474694a0ca875  tcp: move sysctl_tcp_l3mdev_accept to netns_ipv4_read_rx

elapsed time: 2997m

configs tested: 169
configs skipped: 3

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
arc                   randconfig-001-20241013    gcc-14.1.0
arc                   randconfig-002-20241013    gcc-14.1.0
arm                              allmodconfig    clang-20
arm                               allnoconfig    gcc-14.1.0
arm                              allyesconfig    clang-20
arm                                 defconfig    gcc-14.1.0
arm                          moxart_defconfig    gcc-14.1.0
arm                           omap1_defconfig    gcc-14.1.0
arm                          pxa168_defconfig    gcc-14.1.0
arm                   randconfig-001-20241013    gcc-14.1.0
arm                   randconfig-002-20241013    gcc-14.1.0
arm                   randconfig-003-20241013    gcc-14.1.0
arm                   randconfig-004-20241013    gcc-14.1.0
arm64                            allmodconfig    clang-20
arm64                             allnoconfig    gcc-14.1.0
arm64                               defconfig    gcc-14.1.0
arm64                 randconfig-001-20241013    gcc-14.1.0
arm64                 randconfig-002-20241013    gcc-14.1.0
arm64                 randconfig-003-20241013    gcc-14.1.0
arm64                 randconfig-004-20241013    gcc-14.1.0
csky                              allnoconfig    gcc-14.1.0
csky                                defconfig    gcc-14.1.0
csky                  randconfig-001-20241013    gcc-14.1.0
csky                  randconfig-002-20241013    gcc-14.1.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    gcc-14.1.0
hexagon                          allyesconfig    clang-20
hexagon                             defconfig    gcc-14.1.0
hexagon               randconfig-001-20241013    gcc-14.1.0
hexagon               randconfig-002-20241013    gcc-14.1.0
i386                             allmodconfig    clang-18
i386                              allnoconfig    clang-18
i386                             allyesconfig    clang-18
i386        buildonly-randconfig-001-20241013    gcc-12
i386        buildonly-randconfig-002-20241013    gcc-12
i386        buildonly-randconfig-003-20241013    gcc-12
i386        buildonly-randconfig-004-20241013    gcc-12
i386        buildonly-randconfig-005-20241013    gcc-12
i386        buildonly-randconfig-006-20241013    gcc-12
i386                                defconfig    clang-18
i386                  randconfig-001-20241013    gcc-12
i386                  randconfig-002-20241013    gcc-12
i386                  randconfig-003-20241013    gcc-12
i386                  randconfig-004-20241013    gcc-12
i386                  randconfig-005-20241013    gcc-12
i386                  randconfig-006-20241013    gcc-12
i386                  randconfig-011-20241013    gcc-12
i386                  randconfig-012-20241013    gcc-12
i386                  randconfig-013-20241013    gcc-12
i386                  randconfig-014-20241013    gcc-12
i386                  randconfig-015-20241013    gcc-12
i386                  randconfig-016-20241013    gcc-12
loongarch                        allmodconfig    gcc-14.1.0
loongarch                         allnoconfig    gcc-14.1.0
loongarch                           defconfig    gcc-14.1.0
loongarch             randconfig-001-20241013    gcc-14.1.0
loongarch             randconfig-002-20241013    gcc-14.1.0
m68k                             allmodconfig    gcc-14.1.0
m68k                              allnoconfig    gcc-14.1.0
m68k                             allyesconfig    gcc-14.1.0
m68k                                defconfig    gcc-14.1.0
m68k                            q40_defconfig    gcc-14.1.0
microblaze                       allmodconfig    gcc-14.1.0
microblaze                        allnoconfig    gcc-14.1.0
microblaze                       allyesconfig    gcc-14.1.0
microblaze                          defconfig    gcc-14.1.0
mips                              allnoconfig    gcc-14.1.0
mips                     loongson1c_defconfig    gcc-14.1.0
mips                          rm200_defconfig    gcc-14.1.0
mips                         rt305x_defconfig    gcc-14.1.0
nios2                             allnoconfig    gcc-14.1.0
nios2                               defconfig    gcc-14.1.0
nios2                 randconfig-001-20241013    gcc-14.1.0
nios2                 randconfig-002-20241013    gcc-14.1.0
openrisc                          allnoconfig    gcc-14.1.0
openrisc                            defconfig    gcc-12
parisc                            allnoconfig    gcc-14.1.0
parisc                              defconfig    gcc-12
parisc                randconfig-001-20241013    gcc-14.1.0
parisc                randconfig-002-20241013    gcc-14.1.0
parisc64                            defconfig    gcc-14.1.0
powerpc                           allnoconfig    gcc-14.1.0
powerpc                   currituck_defconfig    gcc-14.1.0
powerpc                     ep8248e_defconfig    gcc-14.1.0
powerpc                     ksi8560_defconfig    gcc-14.1.0
powerpc                      mgcoge_defconfig    gcc-14.1.0
powerpc                      pasemi_defconfig    gcc-14.1.0
powerpc                     powernv_defconfig    gcc-14.1.0
powerpc               randconfig-001-20241013    gcc-14.1.0
powerpc               randconfig-002-20241013    gcc-14.1.0
powerpc               randconfig-003-20241013    gcc-14.1.0
powerpc                     tqm8540_defconfig    gcc-14.1.0
powerpc64             randconfig-001-20241013    gcc-14.1.0
powerpc64             randconfig-002-20241013    gcc-14.1.0
powerpc64             randconfig-003-20241013    gcc-14.1.0
riscv                             allnoconfig    gcc-14.1.0
riscv                               defconfig    gcc-12
riscv                 randconfig-001-20241013    gcc-14.1.0
riscv                 randconfig-002-20241013    gcc-14.1.0
s390                             allmodconfig    gcc-14.1.0
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.1.0
s390                                defconfig    gcc-12
s390                  randconfig-001-20241013    gcc-14.1.0
s390                  randconfig-002-20241013    gcc-14.1.0
sh                               allmodconfig    gcc-14.1.0
sh                                allnoconfig    gcc-14.1.0
sh                               allyesconfig    gcc-14.1.0
sh                                  defconfig    gcc-12
sh                        dreamcast_defconfig    gcc-14.1.0
sh                        edosk7760_defconfig    gcc-14.1.0
sh                    randconfig-001-20241013    gcc-14.1.0
sh                    randconfig-002-20241013    gcc-14.1.0
sh                        sh7763rdp_defconfig    gcc-14.1.0
sparc                            allmodconfig    gcc-14.1.0
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20241013    gcc-14.1.0
sparc64               randconfig-002-20241013    gcc-14.1.0
um                               allmodconfig    clang-20
um                                allnoconfig    clang-17
um                               allyesconfig    clang-20
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20241013    gcc-14.1.0
um                    randconfig-002-20241013    gcc-14.1.0
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-18
x86_64                           allyesconfig    clang-18
x86_64      buildonly-randconfig-001-20241013    clang-18
x86_64      buildonly-randconfig-002-20241013    clang-18
x86_64      buildonly-randconfig-003-20241013    clang-18
x86_64      buildonly-randconfig-004-20241013    clang-18
x86_64      buildonly-randconfig-005-20241013    clang-18
x86_64      buildonly-randconfig-006-20241013    clang-18
x86_64                              defconfig    clang-18
x86_64                                  kexec    clang-18
x86_64                randconfig-001-20241013    clang-18
x86_64                randconfig-002-20241013    clang-18
x86_64                randconfig-003-20241013    clang-18
x86_64                randconfig-004-20241013    clang-18
x86_64                randconfig-005-20241013    clang-18
x86_64                randconfig-006-20241013    clang-18
x86_64                randconfig-011-20241013    clang-18
x86_64                randconfig-012-20241013    clang-18
x86_64                randconfig-013-20241013    clang-18
x86_64                randconfig-014-20241013    clang-18
x86_64                randconfig-015-20241013    clang-18
x86_64                randconfig-016-20241013    clang-18
x86_64                randconfig-071-20241013    clang-18
x86_64                randconfig-072-20241013    clang-18
x86_64                randconfig-073-20241013    clang-18
x86_64                randconfig-074-20241013    clang-18
x86_64                randconfig-075-20241013    clang-18
x86_64                randconfig-076-20241013    clang-18
x86_64                               rhel-8.3    gcc-12
x86_64                           rhel-8.3-bpf    clang-18
x86_64                         rhel-8.3-kunit    clang-18
x86_64                           rhel-8.3-ltp    clang-18
x86_64                          rhel-8.3-rust    clang-18
xtensa                            allnoconfig    gcc-14.1.0
xtensa                randconfig-001-20241013    gcc-14.1.0
xtensa                randconfig-002-20241013    gcc-14.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
