Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CCBD9C0C00
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Nov 2024 17:53:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 058348418C;
	Thu,  7 Nov 2024 16:53:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vcEfg5dfgdK9; Thu,  7 Nov 2024 16:53:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 770CD84190
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730998410;
	bh=nH8Zbu15xfRejdKWtGdQSKkGttyweHRbc0z1VT0+fFA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=yWiiPe8rrIQMmNjz8xGo1OD6ozq/gisU1QyC2+ZTEx6RP6/AZWZ1vh0lSblaCc9j0
	 /8WhAOF+UicbR5n/ErGz38y4/vPcGa+vx+FwdbmANUhaFRwihSm/1x9RM+zZ6f4g8S
	 VtZ7L8pCbhLZ6qvSOhn0teTf/pL8vmVOD3D3NdyLSz/Y3ftLC0MUEeNUevjwVyrwXN
	 S0h952mZJ4IVi5t0Lqxl/ZXpVS6DvBMQAr29ao+OE3gWtQKNQdqSPpLEwp8LFIa0zy
	 uSvaKUv0Wt4rhNvpc3W91zBOgURyvzsQgIm0A3Lth1y7ftOLfNxhSdNg7Q4zNB5dmo
	 2ft7RXJMtsIjg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 770CD84190;
	Thu,  7 Nov 2024 16:53:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id D551CC1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Nov 2024 16:53:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CFE69610BA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Nov 2024 16:53:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QT6434k3E-4B for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Nov 2024 16:53:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6481660679
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6481660679
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6481660679
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Nov 2024 16:53:27 +0000 (UTC)
X-CSE-ConnectionGUID: X1nzj8RUTBi9T3xfO7RL5A==
X-CSE-MsgGUID: EEHQduqER1SFQvbTdSGEbg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="48314908"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="48314908"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 08:53:26 -0800
X-CSE-ConnectionGUID: vpGF2OqjQxCBPWSNIq66Mw==
X-CSE-MsgGUID: IUgRfaCPQQOmQTTGkz5wTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,135,1728975600"; d="scan'208";a="85483254"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
 by fmviesa010.fm.intel.com with ESMTP; 07 Nov 2024 08:53:25 -0800
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1t95l5-000qVq-1g
 for intel-wired-lan@lists.osuosl.org; Thu, 07 Nov 2024 16:53:23 +0000
Date: Fri, 08 Nov 2024 00:52:52 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202411080045.Cn1SY95n-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730998407; x=1762534407;
 h=date:from:to:subject:message-id;
 bh=JbVe/OLxREeo74nrP/I6L24Nynu4PdEwr5el3rP4EPQ=;
 b=UPlYaT1+0HYNqdPwMTLCzm1XTek2hZ1JsgHZxPvbcmGDxTjMmIPBKdBq
 pZShEpX9q1jF9qyYO+hyCFO+qzaVmmF0NI2uZhIf8HlP5uCKh+/njzHIv
 GLS7UliSUBi5gMX+W0/E1BQlbjHnEtoHNWhGkYzMdE4hnVxuAc5e6ahFQ
 m8DETjBhWCFY4FcO57soEaV2Vu4XR4nhaSTHOIVuehrgv1/Zol1/+yCdF
 mh4rYRK9ZTjsQlEPHOnnVMzZHhizFOQIJlhVfX654AkNTwxiC8abe7LLM
 +ofeZUoijpuoiW5wckIaKAHGZB6ucUe4GnLH/Glp+xQFDiqZ8Ca4Fgefy
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UPlYaT1+
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 d8ec134a885b32f6a0290c6f4fbd364afdb52fc5
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
branch HEAD: d8ec134a885b32f6a0290c6f4fbd364afdb52fc5  ixgbe: downgrade logging of unsupported VF API version to debug

elapsed time: 1449m

configs tested: 238
configs skipped: 8

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    clang-20
alpha                            allyesconfig    gcc-14.2.0
alpha                               defconfig    gcc-14.2.0
arc                              allmodconfig    clang-20
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-13.2.0
arc                               allnoconfig    gcc-14.2.0
arc                              allyesconfig    clang-20
arc                              allyesconfig    gcc-13.2.0
arc                                 defconfig    gcc-14.2.0
arc                     haps_hs_smp_defconfig    clang-20
arc                   randconfig-001-20241107    gcc-13.2.0
arc                   randconfig-001-20241107    gcc-14.2.0
arc                   randconfig-002-20241107    gcc-13.2.0
arc                   randconfig-002-20241107    gcc-14.2.0
arm                              allmodconfig    clang-20
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    clang-20
arm                               allnoconfig    gcc-14.2.0
arm                              allyesconfig    clang-20
arm                              allyesconfig    gcc-14.2.0
arm                                 defconfig    gcc-14.2.0
arm                        multi_v7_defconfig    gcc-14.2.0
arm                             mxs_defconfig    clang-20
arm                         nhk8815_defconfig    clang-20
arm                         orion5x_defconfig    clang-20
arm                   randconfig-001-20241107    clang-16
arm                   randconfig-001-20241107    gcc-14.2.0
arm                   randconfig-002-20241107    gcc-14.2.0
arm                   randconfig-003-20241107    gcc-14.2.0
arm                   randconfig-004-20241107    clang-20
arm                   randconfig-004-20241107    gcc-14.2.0
arm                       spear13xx_defconfig    gcc-14.2.0
arm64                            allmodconfig    clang-20
arm64                             allnoconfig    gcc-14.2.0
arm64                               defconfig    clang-20
arm64                               defconfig    gcc-14.2.0
arm64                 randconfig-001-20241107    gcc-14.2.0
arm64                 randconfig-002-20241107    gcc-14.2.0
arm64                 randconfig-003-20241107    clang-20
arm64                 randconfig-003-20241107    gcc-14.2.0
arm64                 randconfig-004-20241107    clang-20
arm64                 randconfig-004-20241107    gcc-14.2.0
csky                              allnoconfig    gcc-14.2.0
csky                                defconfig    gcc-14.2.0
csky                  randconfig-001-20241107    gcc-14.2.0
csky                  randconfig-002-20241107    gcc-14.2.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    clang-20
hexagon                           allnoconfig    gcc-14.2.0
hexagon                          allyesconfig    clang-20
hexagon                             defconfig    gcc-14.2.0
hexagon               randconfig-001-20241107    clang-20
hexagon               randconfig-001-20241107    gcc-14.2.0
hexagon               randconfig-002-20241107    clang-20
hexagon               randconfig-002-20241107    gcc-14.2.0
i386                             allmodconfig    clang-19
i386                             allmodconfig    gcc-12
i386                              allnoconfig    clang-19
i386                              allnoconfig    gcc-12
i386                             allyesconfig    clang-19
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20241107    clang-19
i386        buildonly-randconfig-001-20241107    gcc-12
i386        buildonly-randconfig-002-20241107    clang-19
i386        buildonly-randconfig-002-20241107    gcc-12
i386        buildonly-randconfig-003-20241107    clang-19
i386        buildonly-randconfig-003-20241107    gcc-12
i386        buildonly-randconfig-004-20241107    clang-19
i386        buildonly-randconfig-004-20241107    gcc-12
i386        buildonly-randconfig-005-20241107    clang-19
i386        buildonly-randconfig-006-20241107    clang-19
i386        buildonly-randconfig-006-20241107    gcc-12
i386                                defconfig    clang-19
i386                  randconfig-001-20241107    clang-19
i386                  randconfig-002-20241107    clang-19
i386                  randconfig-002-20241107    gcc-12
i386                  randconfig-003-20241107    clang-19
i386                  randconfig-003-20241107    gcc-12
i386                  randconfig-004-20241107    clang-19
i386                  randconfig-004-20241107    gcc-12
i386                  randconfig-005-20241107    clang-19
i386                  randconfig-005-20241107    gcc-12
i386                  randconfig-006-20241107    clang-19
i386                  randconfig-011-20241107    clang-19
i386                  randconfig-011-20241107    gcc-12
i386                  randconfig-012-20241107    clang-19
i386                  randconfig-013-20241107    clang-19
i386                  randconfig-014-20241107    clang-19
i386                  randconfig-014-20241107    gcc-12
i386                  randconfig-015-20241107    clang-19
i386                  randconfig-016-20241107    clang-19
loongarch                        alldefconfig    gcc-14.2.0
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch                           defconfig    gcc-14.2.0
loongarch             randconfig-001-20241107    gcc-14.2.0
loongarch             randconfig-002-20241107    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
m68k                         amcore_defconfig    clang-20
m68k                                defconfig    gcc-14.2.0
m68k                        m5307c3_defconfig    gcc-14.2.0
m68k                           sun3_defconfig    clang-20
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
microblaze                          defconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                        bcm47xx_defconfig    clang-15
mips                         db1xxx_defconfig    clang-20
nios2                             allnoconfig    gcc-14.2.0
nios2                               defconfig    gcc-14.2.0
nios2                 randconfig-001-20241107    gcc-14.2.0
nios2                 randconfig-002-20241107    gcc-14.2.0
openrisc                          allnoconfig    clang-20
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
openrisc                            defconfig    gcc-12
openrisc                  or1klitex_defconfig    clang-20
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    clang-20
parisc                            allnoconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                              defconfig    gcc-12
parisc                randconfig-001-20241107    gcc-14.2.0
parisc                randconfig-002-20241107    gcc-14.2.0
parisc64                            defconfig    gcc-14.2.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    clang-20
powerpc                           allnoconfig    gcc-14.2.0
powerpc                          allyesconfig    gcc-14.2.0
powerpc                        cell_defconfig    clang-20
powerpc                      chrp32_defconfig    clang-20
powerpc                   currituck_defconfig    clang-20
powerpc                        icon_defconfig    gcc-14.2.0
powerpc                   motionpro_defconfig    clang-20
powerpc                     mpc5200_defconfig    clang-20
powerpc                 mpc834x_itx_defconfig    clang-20
powerpc                  mpc885_ads_defconfig    clang-20
powerpc                      pasemi_defconfig    clang-20
powerpc                      ppc64e_defconfig    clang-20
powerpc               randconfig-001-20241107    clang-16
powerpc               randconfig-001-20241107    gcc-14.2.0
powerpc               randconfig-002-20241107    clang-20
powerpc               randconfig-002-20241107    gcc-14.2.0
powerpc               randconfig-003-20241107    gcc-14.2.0
powerpc                     tqm8555_defconfig    clang-20
powerpc64             randconfig-003-20241107    gcc-14.2.0
riscv                            allmodconfig    gcc-14.2.0
riscv                             allnoconfig    clang-20
riscv                             allnoconfig    gcc-14.2.0
riscv                            allyesconfig    gcc-14.2.0
riscv                               defconfig    gcc-12
riscv                 randconfig-001-20241107    gcc-14.2.0
riscv                 randconfig-002-20241107    gcc-14.2.0
s390                             allmodconfig    clang-20
s390                             allmodconfig    gcc-14.2.0
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.2.0
s390                                defconfig    gcc-12
s390                  randconfig-001-20241107    clang-20
s390                  randconfig-001-20241107    gcc-14.2.0
s390                  randconfig-002-20241107    gcc-14.2.0
s390                       zfcpdump_defconfig    clang-20
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                         apsh4a3a_defconfig    gcc-14.2.0
sh                                  defconfig    gcc-12
sh                        edosk7760_defconfig    clang-20
sh                    randconfig-001-20241107    gcc-14.2.0
sh                    randconfig-002-20241107    gcc-14.2.0
sh                           se7712_defconfig    clang-20
sh                           sh2007_defconfig    clang-20
sparc                            allmodconfig    gcc-14.2.0
sparc                       sparc64_defconfig    gcc-14.2.0
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20241107    gcc-14.2.0
sparc64               randconfig-002-20241107    gcc-14.2.0
um                               allmodconfig    clang-20
um                                allnoconfig    clang-17
um                                allnoconfig    clang-20
um                               allyesconfig    clang-20
um                               allyesconfig    gcc-12
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20241107    clang-20
um                    randconfig-001-20241107    gcc-14.2.0
um                    randconfig-002-20241107    gcc-12
um                    randconfig-002-20241107    gcc-14.2.0
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64      buildonly-randconfig-001-20241107    clang-19
x86_64      buildonly-randconfig-002-20241107    clang-19
x86_64      buildonly-randconfig-002-20241107    gcc-12
x86_64      buildonly-randconfig-003-20241107    clang-19
x86_64      buildonly-randconfig-003-20241107    gcc-12
x86_64      buildonly-randconfig-004-20241107    clang-19
x86_64      buildonly-randconfig-005-20241107    clang-19
x86_64      buildonly-randconfig-005-20241107    gcc-12
x86_64      buildonly-randconfig-006-20241107    clang-19
x86_64      buildonly-randconfig-006-20241107    gcc-12
x86_64                              defconfig    clang-19
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-19
x86_64                                  kexec    gcc-12
x86_64                randconfig-001-20241107    clang-19
x86_64                randconfig-002-20241107    clang-19
x86_64                randconfig-003-20241107    clang-19
x86_64                randconfig-004-20241107    clang-19
x86_64                randconfig-004-20241107    gcc-12
x86_64                randconfig-005-20241107    clang-19
x86_64                randconfig-006-20241107    clang-19
x86_64                randconfig-011-20241107    clang-19
x86_64                randconfig-011-20241107    gcc-12
x86_64                randconfig-012-20241107    clang-19
x86_64                randconfig-013-20241107    clang-19
x86_64                randconfig-013-20241107    gcc-12
x86_64                randconfig-014-20241107    clang-19
x86_64                randconfig-014-20241107    gcc-12
x86_64                randconfig-015-20241107    clang-19
x86_64                randconfig-015-20241107    gcc-12
x86_64                randconfig-016-20241107    clang-19
x86_64                randconfig-071-20241107    clang-19
x86_64                randconfig-072-20241107    clang-19
x86_64                randconfig-073-20241107    clang-19
x86_64                randconfig-074-20241107    clang-19
x86_64                randconfig-074-20241107    gcc-12
x86_64                randconfig-075-20241107    clang-19
x86_64                randconfig-076-20241107    clang-19
x86_64                               rhel-8.3    gcc-12
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20241107    gcc-14.2.0
xtensa                randconfig-002-20241107    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
