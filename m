Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 51C74AC711E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 May 2025 20:43:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 44E9260EAF;
	Wed, 28 May 2025 18:43:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V3Q34Pj2Vhlm; Wed, 28 May 2025 18:43:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 12A0E60EB1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748457824;
	bh=lnBsmZ7A98VoppIjhag+lmxziWDRFvp8jf15X97ekbE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=idVH1mYulMT0URD883O/5+wT+i6caSGXC9Sev2fVcKdkQkCvCdIq3KrUwF/JhuHVO
	 +/9VY0pf9xv2eBdt0vwC8ITu3kuNx1aFT8PMbSVmLlhyvdBpPCKQB2vrqHwYVT1JND
	 pDfPsRqf2UlqeDb+8hLOkTUYA0RINHPQZrjHlSiBbHUNcrxPNzbOv9ZX93VRgfgcbM
	 L9zb1aV4uQKzy+UoDryq6k5ciXnGkAWpYTI4wz8I/iXs9//TaQvmcGN6Ad6+bSYWQg
	 fakGTL/4meDVIvLuQYLNPio/uTSjpB0hd2J6ElZvIVatwOQ7YBQtpVOTG5P0pVpCPb
	 fu++5NM34F6WA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 12A0E60EB1;
	Wed, 28 May 2025 18:43:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id A2B30DCA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 May 2025 18:43:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 881564087D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 May 2025 18:43:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gs5cLy6hT79B for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 May 2025 18:43:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3FAC74088C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3FAC74088C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3FAC74088C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 May 2025 18:43:39 +0000 (UTC)
X-CSE-ConnectionGUID: grGOjH6+QWqrHndf5SPzwQ==
X-CSE-MsgGUID: y33vyrcfRGmMnzcfJv56lg==
X-IronPort-AV: E=McAfee;i="6700,10204,11447"; a="50652186"
X-IronPort-AV: E=Sophos;i="6.15,322,1739865600"; d="scan'208";a="50652186"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2025 11:43:39 -0700
X-CSE-ConnectionGUID: Fu+RorIoS5aVIZKGA07Imw==
X-CSE-MsgGUID: f2n4g9iyRDC3zE3T6bP0jw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,322,1739865600"; d="scan'208";a="143157349"
Received: from lkp-server01.sh.intel.com (HELO 1992f890471c) ([10.239.97.150])
 by fmviesa006.fm.intel.com with ESMTP; 28 May 2025 11:43:39 -0700
Received: from kbuild by 1992f890471c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uKLkW-000Vym-2t
 for intel-wired-lan@lists.osuosl.org; Wed, 28 May 2025 18:43:36 +0000
Date: Thu, 29 May 2025 02:43:19 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202505290210.WGH0hepk-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748457820; x=1779993820;
 h=date:from:to:subject:message-id;
 bh=qVzPyJ5nr/4QpOgxLvKoxfuWxUlkAoJq8ZlDAGh0YoM=;
 b=X0wAd0by4704K0hTPZ1Xugqxblojz2pg5h2UwYP6dJeakuqBtfOcmzS/
 oPtxJCCt3HbCZxfCt9MOLJIuNkxqymFYnehsgOh/NbAYgl3BBH+VSeFhN
 Ki0HdTmB/0JCG8/jXR0QUChHu7Euc/qGn3upFapHD4HYmgmfGMJQSoJwT
 XJF5F+PrRGiAZFiwalSIznIFUpKCwoNL+2i+Eyo5j+zcsDhWfgiD3Fu3V
 WtxcuR/GW3iWOA2p4tJQnAGAcHbf9lj7cOeK7MLk3R9iVv7SHrsPRO5dX
 AKrAM1WegcioRRLXHZpIUR1uRHMqg5ha23sSJMp7oANuwQ8yYNxGQ0BwJ
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=X0wAd0by
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 1f626cf7e17c0578692d81fff9c75d98a57880c8
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 1f626cf7e17c0578692d81fff9c75d98a57880c8  idpf: return 0 size for RSS key if not supported

elapsed time: 1446m

configs tested: 141
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    gcc-14.2.0
alpha                               defconfig    gcc-14.2.0
arc                              allmodconfig    gcc-14.2.0
arc                               allnoconfig    gcc-14.2.0
arc                              allyesconfig    gcc-14.2.0
arc                          axs101_defconfig    gcc-14.2.0
arc                                 defconfig    gcc-14.2.0
arc                   randconfig-001-20250528    gcc-15.1.0
arc                   randconfig-002-20250528    gcc-13.3.0
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    clang-21
arm                              allyesconfig    gcc-14.2.0
arm                                 defconfig    clang-21
arm                      integrator_defconfig    clang-21
arm                        keystone_defconfig    gcc-14.2.0
arm                           omap1_defconfig    gcc-14.2.0
arm                   randconfig-001-20250528    clang-21
arm                   randconfig-002-20250528    clang-17
arm                   randconfig-003-20250528    clang-19
arm                   randconfig-004-20250528    clang-21
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-14.2.0
arm64                               defconfig    gcc-14.2.0
arm64                 randconfig-001-20250528    gcc-9.5.0
arm64                 randconfig-002-20250528    gcc-7.5.0
arm64                 randconfig-003-20250528    gcc-7.5.0
arm64                 randconfig-004-20250528    gcc-9.5.0
csky                              allnoconfig    gcc-14.2.0
csky                                defconfig    gcc-14.2.0
csky                  randconfig-001-20250528    gcc-15.1.0
csky                  randconfig-002-20250528    gcc-11.5.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-21
hexagon                          allyesconfig    clang-21
hexagon                             defconfig    clang-21
hexagon               randconfig-001-20250528    clang-21
hexagon               randconfig-002-20250528    clang-21
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250528    gcc-12
i386        buildonly-randconfig-002-20250528    clang-20
i386        buildonly-randconfig-003-20250528    clang-20
i386        buildonly-randconfig-004-20250528    clang-20
i386        buildonly-randconfig-005-20250528    gcc-12
i386        buildonly-randconfig-006-20250528    gcc-12
i386                                defconfig    clang-20
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch                           defconfig    gcc-14.2.0
loongarch             randconfig-001-20250528    gcc-15.1.0
loongarch             randconfig-002-20250528    gcc-13.3.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
m68k                                defconfig    gcc-14.3.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
microblaze                          defconfig    gcc-14.3.0
mips                              allnoconfig    gcc-14.2.0
mips                         bigsur_defconfig    gcc-14.2.0
mips                           ip22_defconfig    gcc-14.2.0
mips                        omega2p_defconfig    clang-21
mips                        vocore2_defconfig    clang-21
nios2                             allnoconfig    gcc-14.2.0
nios2                               defconfig    gcc-14.2.0
nios2                 randconfig-001-20250528    gcc-13.3.0
nios2                 randconfig-002-20250528    gcc-9.3.0
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
openrisc                            defconfig    gcc-14.2.0
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                              defconfig    gcc-14.2.0
parisc                randconfig-001-20250528    gcc-6.5.0
parisc                randconfig-002-20250528    gcc-14.2.0
parisc64                            defconfig    gcc-14.3.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    gcc-14.2.0
powerpc                 mpc836x_rdk_defconfig    clang-21
powerpc                     ppa8548_defconfig    gcc-14.2.0
powerpc               randconfig-001-20250528    clang-21
powerpc               randconfig-002-20250528    gcc-7.5.0
powerpc               randconfig-003-20250528    gcc-7.5.0
powerpc                    socrates_defconfig    gcc-14.2.0
powerpc                      tqm8xx_defconfig    clang-19
powerpc64             randconfig-001-20250528    gcc-7.5.0
powerpc64             randconfig-002-20250528    clang-21
powerpc64             randconfig-003-20250528    clang-21
riscv                            allmodconfig    clang-21
riscv                             allnoconfig    gcc-14.2.0
riscv                               defconfig    clang-21
riscv                 randconfig-001-20250528    gcc-9.3.0
riscv                 randconfig-002-20250528    clang-18
s390                             alldefconfig    gcc-14.2.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-14.2.0
s390                                defconfig    clang-21
s390                  randconfig-001-20250528    clang-21
s390                  randconfig-002-20250528    clang-21
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                                  defconfig    gcc-14.2.0
sh                            hp6xx_defconfig    gcc-14.2.0
sh                    randconfig-001-20250528    gcc-9.3.0
sh                    randconfig-002-20250528    gcc-5.5.0
sh                           sh2007_defconfig    gcc-14.2.0
sh                  sh7785lcr_32bit_defconfig    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250528    gcc-14.2.0
sparc                 randconfig-002-20250528    gcc-14.2.0
sparc64                             defconfig    gcc-14.3.0
sparc64               randconfig-001-20250528    gcc-8.5.0
sparc64               randconfig-002-20250528    gcc-14.2.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    gcc-12
um                                  defconfig    clang-21
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250528    clang-21
um                    randconfig-002-20250528    gcc-11
um                           x86_64_defconfig    clang-21
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250528    clang-20
x86_64      buildonly-randconfig-002-20250528    clang-20
x86_64      buildonly-randconfig-003-20250528    gcc-12
x86_64      buildonly-randconfig-004-20250528    gcc-12
x86_64      buildonly-randconfig-005-20250528    gcc-12
x86_64      buildonly-randconfig-006-20250528    gcc-12
x86_64                              defconfig    gcc-11
x86_64                          rhel-9.4-rust    clang-18
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20250528    gcc-14.2.0
xtensa                randconfig-002-20250528    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
