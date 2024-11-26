Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 99F829D9BFC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Nov 2024 18:02:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 962BA6FAC0;
	Tue, 26 Nov 2024 17:02:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Jrk4GpNO7ND7; Tue, 26 Nov 2024 17:02:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B54F86FAD2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1732640552;
	bh=saUlLhORN6Z8rztpUCI0huZoHbK25w6IcXQ6/Ctv2HU=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=7sY0m0UStsMQaefi2SqdizeHOKExjOLtrjrzjoK+rEeI0diQDKCofijZS3pXQhLX2
	 V5F718cWUY6f/VmgBZJsmkKXJt2psRPZSFSHjOqgUZZ95GtZsJexrfx0QJj1QveIyl
	 mgxSNd9XmrQn5ca2xn185neQZ2/XiFkfBMOAtJ8BA4/oG8hGdefyrV8qA5zTSOQ7Be
	 wEIX4VyQXJgmbx+L0zJQpP/gzNk+dYVzC+WbVWbnhYDHmTHsXplfdqVnT+K2EaOQt2
	 lux1xkI+/Us6mx1wo8u2W/VF61GSNtqvPUm0zQ6hiCYMbEnvVEMKOb95BN8OxfTKJV
	 SB9a1tfgOlkjw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B54F86FAD2;
	Tue, 26 Nov 2024 17:02:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3DAB5112A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Nov 2024 17:02:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2BD314ED61
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Nov 2024 17:02:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hhT-w3Iw24AY for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Nov 2024 17:02:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E6EBE4ED8B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E6EBE4ED8B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E6EBE4ED8B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Nov 2024 17:02:28 +0000 (UTC)
X-CSE-ConnectionGUID: 7xG+1JsOSqO1c4/Teinsbw==
X-CSE-MsgGUID: tZjA0ogxQ7GSEugb00Zfeg==
X-IronPort-AV: E=McAfee;i="6700,10204,11268"; a="44197616"
X-IronPort-AV: E=Sophos;i="6.12,186,1728975600"; d="scan'208";a="44197616"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2024 09:02:27 -0800
X-CSE-ConnectionGUID: Wp03XhxpRPGP2y1mWP0FJQ==
X-CSE-MsgGUID: cuqKSN5ARBCshbPkwr0JFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,186,1728975600"; d="scan'208";a="129189517"
Received: from lkp-server01.sh.intel.com (HELO 8122d2fc1967) ([10.239.97.150])
 by orviesa001.jf.intel.com with ESMTP; 26 Nov 2024 09:02:27 -0800
Received: from kbuild by 8122d2fc1967 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tFyxE-0007Qj-0Y
 for intel-wired-lan@lists.osuosl.org; Tue, 26 Nov 2024 17:02:24 +0000
Date: Wed, 27 Nov 2024 00:59:59 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202411270049.b4DOenZ8-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732640549; x=1764176549;
 h=date:from:to:subject:message-id;
 bh=5+OtWFjhGcmz3/rPkAXiUY3fT0bCMV+w9j+oRfUOUrI=;
 b=leramlZgIv4lpE7OcL3SztnU5yg8Y6Afos3pPK2Z02/jup1v+3MAJS6W
 jbV4t30Gh+wI2Dxs0DykbUzQIFO6rJczgAzyk/js/0E/h4Lh0z2TG6/48
 SvLYtoWmoDCrT24ja+drf9OK3mMoZLTSfaAVMW2G4gm4TkHJpLAJQlD+s
 SXC2Om5y7eFuQvqDg5MQn7iQX44vM41kYj6gvC8kg3voqDGqAPZd47dA3
 OJ/35x1T0YyWXmv/gwpKwCru24uTBy6dSYaFf4F+1mMeiFNt5thVEXYp0
 B96A/idPjHVhUEifrfsjEHxhCJE7K5VK05bKAb1UqzO9/K3SAwP8XM9zA
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=leramlZg
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 cef3450b7554872344aa4679940972a6f59af285
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
branch HEAD: cef3450b7554872344aa4679940972a6f59af285  idpf: add read memory barrier when checking descriptor done bit

elapsed time: 1115m

configs tested: 191
configs skipped: 21

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    clang-20
alpha                            allyesconfig    gcc-14.2.0
arc                              allmodconfig    clang-20
arc                               allnoconfig    gcc-14.2.0
arc                              allyesconfig    clang-20
arc                          axs101_defconfig    gcc-14.2.0
arc                      axs103_smp_defconfig    gcc-13.2.0
arc                     haps_hs_smp_defconfig    gcc-14.2.0
arc                            hsdk_defconfig    gcc-14.2.0
arc                   randconfig-001-20241126    gcc-14.2.0
arc                   randconfig-002-20241126    gcc-14.2.0
arc                        vdk_hs38_defconfig    gcc-14.2.0
arm                              allmodconfig    clang-20
arm                               allnoconfig    gcc-14.2.0
arm                              allyesconfig    clang-20
arm                       aspeed_g5_defconfig    gcc-13.2.0
arm                          ep93xx_defconfig    clang-14
arm                      integrator_defconfig    gcc-14.2.0
arm                          ixp4xx_defconfig    gcc-14.2.0
arm                       multi_v4t_defconfig    gcc-13.2.0
arm                       multi_v4t_defconfig    gcc-14.2.0
arm                        mvebu_v5_defconfig    gcc-13.2.0
arm                             mxs_defconfig    gcc-14.2.0
arm                             pxa_defconfig    clang-14
arm                   randconfig-001-20241126    gcc-14.2.0
arm                   randconfig-002-20241126    gcc-14.2.0
arm                   randconfig-003-20241126    gcc-14.2.0
arm                   randconfig-004-20241126    gcc-14.2.0
arm                         s3c6400_defconfig    gcc-14.2.0
arm                           sama7_defconfig    gcc-14.2.0
arm                         vf610m4_defconfig    gcc-14.2.0
arm                    vt8500_v6_v7_defconfig    gcc-14.2.0
arm                         wpcm450_defconfig    gcc-14.2.0
arm64                            allmodconfig    clang-20
arm64                             allnoconfig    gcc-14.2.0
arm64                 randconfig-001-20241126    gcc-14.2.0
arm64                 randconfig-002-20241126    gcc-14.2.0
arm64                 randconfig-003-20241126    gcc-14.2.0
arm64                 randconfig-004-20241126    gcc-14.2.0
csky                              allnoconfig    gcc-14.2.0
csky                  randconfig-001-20241126    gcc-14.2.0
csky                  randconfig-002-20241126    gcc-14.2.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    gcc-14.2.0
hexagon                          allyesconfig    clang-20
hexagon               randconfig-001-20241126    gcc-14.2.0
hexagon               randconfig-002-20241126    gcc-14.2.0
i386        buildonly-randconfig-001-20241126    gcc-12
i386        buildonly-randconfig-002-20241126    gcc-12
i386        buildonly-randconfig-003-20241126    gcc-12
i386        buildonly-randconfig-004-20241126    gcc-12
i386        buildonly-randconfig-005-20241126    gcc-12
i386        buildonly-randconfig-006-20241126    gcc-12
i386                  randconfig-001-20241126    gcc-12
i386                  randconfig-002-20241126    gcc-12
i386                  randconfig-003-20241126    gcc-12
i386                  randconfig-004-20241126    gcc-12
i386                  randconfig-005-20241126    gcc-12
i386                  randconfig-006-20241126    gcc-12
i386                  randconfig-011-20241126    gcc-12
i386                  randconfig-012-20241126    gcc-12
i386                  randconfig-013-20241126    gcc-12
i386                  randconfig-014-20241126    gcc-12
i386                  randconfig-015-20241126    gcc-12
i386                  randconfig-016-20241126    gcc-12
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch             randconfig-001-20241126    gcc-14.2.0
loongarch             randconfig-002-20241126    gcc-14.2.0
m68k                             alldefconfig    clang-14
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
m68k                       bvme6000_defconfig    gcc-14.2.0
m68k                       m5275evb_defconfig    gcc-14.2.0
m68k                        stmark2_defconfig    gcc-13.2.0
m68k                          sun3x_defconfig    clang-14
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
microblaze                      mmu_defconfig    gcc-13.2.0
mips                              allnoconfig    gcc-14.2.0
mips                          ath79_defconfig    clang-14
mips                         db1xxx_defconfig    gcc-14.2.0
mips                           jazz_defconfig    gcc-14.2.0
mips                         rt305x_defconfig    gcc-14.2.0
mips                   sb1250_swarm_defconfig    gcc-14.2.0
mips                           xway_defconfig    clang-14
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20241126    gcc-14.2.0
nios2                 randconfig-002-20241126    gcc-14.2.0
openrisc                          allnoconfig    clang-20
openrisc                         allyesconfig    gcc-14.2.0
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    clang-20
parisc                           allyesconfig    gcc-14.2.0
parisc                randconfig-001-20241126    gcc-14.2.0
parisc                randconfig-002-20241126    gcc-14.2.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    clang-20
powerpc                          allyesconfig    gcc-14.2.0
powerpc                      bamboo_defconfig    gcc-14.2.0
powerpc                   currituck_defconfig    gcc-14.2.0
powerpc                 mpc837x_rdb_defconfig    gcc-14.2.0
powerpc                      pcm030_defconfig    gcc-14.2.0
powerpc                      pmac32_defconfig    clang-14
powerpc                      pmac32_defconfig    gcc-14.2.0
powerpc                      ppc6xx_defconfig    gcc-14.2.0
powerpc               randconfig-001-20241126    gcc-14.2.0
powerpc               randconfig-002-20241126    gcc-14.2.0
powerpc               randconfig-003-20241126    gcc-14.2.0
powerpc                    socrates_defconfig    gcc-13.2.0
powerpc                     tqm8541_defconfig    gcc-14.2.0
powerpc64             randconfig-001-20241126    gcc-14.2.0
powerpc64             randconfig-002-20241126    gcc-14.2.0
powerpc64             randconfig-003-20241126    gcc-14.2.0
riscv                            allmodconfig    gcc-14.2.0
riscv                             allnoconfig    clang-20
riscv                            allyesconfig    gcc-14.2.0
riscv                 randconfig-001-20241126    gcc-14.2.0
riscv                 randconfig-002-20241126    gcc-14.2.0
s390                             allmodconfig    clang-20
s390                             allmodconfig    gcc-14.2.0
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.2.0
s390                  randconfig-001-20241126    gcc-14.2.0
s390                  randconfig-002-20241126    gcc-14.2.0
sh                               alldefconfig    gcc-14.2.0
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                         ap325rxa_defconfig    gcc-13.2.0
sh                        apsh4ad0a_defconfig    gcc-14.2.0
sh                         ecovec24_defconfig    gcc-14.2.0
sh                        edosk7760_defconfig    gcc-14.2.0
sh                            hp6xx_defconfig    clang-14
sh                 kfr2r09-romimage_defconfig    gcc-14.2.0
sh                          kfr2r09_defconfig    gcc-13.2.0
sh                          kfr2r09_defconfig    gcc-14.2.0
sh                          landisk_defconfig    gcc-13.2.0
sh                          landisk_defconfig    gcc-14.2.0
sh                     magicpanelr2_defconfig    gcc-13.2.0
sh                    randconfig-001-20241126    gcc-14.2.0
sh                    randconfig-002-20241126    gcc-14.2.0
sh                          rsk7203_defconfig    gcc-13.2.0
sh                          rsk7264_defconfig    gcc-14.2.0
sh                   rts7751r2dplus_defconfig    gcc-14.2.0
sh                          sdk7780_defconfig    gcc-14.2.0
sh                        sh7763rdp_defconfig    gcc-13.2.0
sparc                            alldefconfig    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc64               randconfig-001-20241126    gcc-14.2.0
sparc64               randconfig-002-20241126    gcc-14.2.0
um                               allmodconfig    clang-20
um                                allnoconfig    clang-20
um                               allyesconfig    clang-20
um                               allyesconfig    gcc-12
um                    randconfig-001-20241126    gcc-14.2.0
um                    randconfig-002-20241126    gcc-14.2.0
x86_64      buildonly-randconfig-001-20241126    clang-19
x86_64      buildonly-randconfig-002-20241126    clang-19
x86_64      buildonly-randconfig-003-20241126    clang-19
x86_64      buildonly-randconfig-004-20241126    clang-19
x86_64      buildonly-randconfig-005-20241126    clang-19
x86_64      buildonly-randconfig-006-20241126    clang-19
x86_64                                  kexec    clang-19
x86_64                randconfig-001-20241126    clang-19
x86_64                randconfig-002-20241126    clang-19
x86_64                randconfig-003-20241126    clang-19
x86_64                randconfig-004-20241126    clang-19
x86_64                randconfig-005-20241126    clang-19
x86_64                randconfig-006-20241126    clang-19
x86_64                randconfig-011-20241126    clang-19
x86_64                randconfig-012-20241126    clang-19
x86_64                randconfig-013-20241126    clang-19
x86_64                randconfig-014-20241126    clang-19
x86_64                randconfig-015-20241126    clang-19
x86_64                randconfig-016-20241126    clang-19
x86_64                randconfig-071-20241126    clang-19
x86_64                randconfig-072-20241126    clang-19
x86_64                randconfig-073-20241126    clang-19
x86_64                randconfig-074-20241126    clang-19
x86_64                randconfig-075-20241126    clang-19
x86_64                randconfig-076-20241126    clang-19
x86_64                               rhel-9.4    clang-19
x86_64                               rhel-9.4    gcc-12
xtensa                            allnoconfig    gcc-14.2.0
xtensa                generic_kc705_defconfig    gcc-14.2.0
xtensa                randconfig-001-20241126    gcc-14.2.0
xtensa                randconfig-002-20241126    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
