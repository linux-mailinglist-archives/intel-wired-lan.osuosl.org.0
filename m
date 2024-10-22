Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D3009AA15F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Oct 2024 13:50:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D30A56070E;
	Tue, 22 Oct 2024 11:50:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jNyK0ArGVdoR; Tue, 22 Oct 2024 11:50:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B247E60784
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729597840;
	bh=F/pQqzyKOKMUzmDlB0yYKHADzXNU9R7jevRyJhpoCZo=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=kuc7mHLlkYT4+IyiBRasyKgKAuW6YFU+PK/I47ufloc1eMNZtL8nxhYpqseQh6xGX
	 5YdKYhSJnfOLwQr0RKaENad+QCK8UIovGGrsq92dANJI30R2uYwQH1hAb4qrh+9jFI
	 suRRjGIvvDafM2q5Vp+3e3vBW4c2TDgZFqNcSyooxQXQB8ctlw4ApVmujXYGknRdhn
	 xe2w/NfkrhjxlJV959opc7kvZIl70qkDufFql9o85WOPupkeyEdXywvNjHTexo7R2j
	 B7WQ/m4++64C4Zsuj8qK3EPflCKOjJdNLEUsGg6v91+6K0Ayh1+e1BIG1lOo5CN7sh
	 wXL0P2/KxPUiQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B247E60784;
	Tue, 22 Oct 2024 11:50:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 4064F2072
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 11:50:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 20E73606C9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 11:50:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sQXs2snPfhLq for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Oct 2024 11:50:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org CDCF060768
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CDCF060768
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CDCF060768
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 11:50:36 +0000 (UTC)
X-CSE-ConnectionGUID: c38eIkHfQyelSIh5Xdpr3A==
X-CSE-MsgGUID: awT2Yan9RzSL2WH3lc+q5g==
X-IronPort-AV: E=McAfee;i="6700,10204,11232"; a="29019455"
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="29019455"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 04:50:35 -0700
X-CSE-ConnectionGUID: cdMx+y6/TiGCoC5ox6hfFw==
X-CSE-MsgGUID: HTJuWW/KRDCZfuH1GlcQRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="84635780"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
 by orviesa005.jf.intel.com with ESMTP; 22 Oct 2024 04:50:34 -0700
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1t3DPE-000TW7-1E
 for intel-wired-lan@lists.osuosl.org; Tue, 22 Oct 2024 11:50:32 +0000
Date: Tue, 22 Oct 2024 19:50:19 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202410221911.rWhrQmdt-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729597837; x=1761133837;
 h=date:from:to:subject:message-id;
 bh=7HRj2V+0SJFmQaF0t00qbksQfJ7s6bY2v6APLYiIh6Y=;
 b=OvIfcf+rF6SRjP9D9F8hMU4JhUwq4+O3MUESTwT1vCt3LwAOAL8SfUW4
 zqfHrKHt90Tu+6p9giJUXO38GO+d40R/eZMQauko3j2vK8Gm+H1Lnagm/
 ZDOjZD8XuqCPFSxdc6j6O0hEbht3wxpw42xNkhvgZMDaqZgg8OAB+49Zh
 DfISuCPmlyAPfjXOhMzM0j+tq25spHix03FvpjaIXY71j8ggxBnb5/y0F
 G4Rr/iRClnbmlGAWb6W47iR5o2CPe8cWHqn0xvImmX16nOSRpg67tvH3e
 KG+S1hfjAAffIUiUlpcmcJYXltAfJxNCTGmssM4fwyNKzgUhop7eJdP9Y
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OvIfcf+r
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 d95d9a31aceb2021084bc9b94647bc5b175e05e7
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 200GbE
branch HEAD: d95d9a31aceb2021084bc9b94647bc5b175e05e7  virtio_net: fix integer overflow in stats

elapsed time: 1464m

configs tested: 153
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.1.0
alpha                            allyesconfig    clang-20
alpha                               defconfig    gcc-14.1.0
arc                              allmodconfig    clang-20
arc                               allnoconfig    gcc-14.1.0
arc                              allyesconfig    clang-20
arc                      axs103_smp_defconfig    gcc-14.1.0
arc                                 defconfig    gcc-14.1.0
arm                              allmodconfig    clang-20
arm                               allnoconfig    gcc-14.1.0
arm                              allyesconfig    clang-20
arm                     am200epdkit_defconfig    clang-14
arm                     davinci_all_defconfig    clang-14
arm                                 defconfig    gcc-14.1.0
arm                       multi_v4t_defconfig    clang-14
arm                       omap2plus_defconfig    gcc-14.1.0
arm                             rpc_defconfig    gcc-14.1.0
arm64                            allmodconfig    clang-20
arm64                             allnoconfig    gcc-14.1.0
arm64                               defconfig    gcc-14.1.0
csky                              allnoconfig    gcc-14.1.0
csky                                defconfig    gcc-14.1.0
hexagon                          alldefconfig    gcc-14.1.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    gcc-14.1.0
hexagon                          allyesconfig    clang-20
hexagon                             defconfig    gcc-14.1.0
i386                             allmodconfig    clang-18
i386                              allnoconfig    clang-18
i386                             allyesconfig    clang-18
i386        buildonly-randconfig-001-20241022    clang-18
i386        buildonly-randconfig-002-20241022    clang-18
i386        buildonly-randconfig-003-20241022    clang-18
i386        buildonly-randconfig-004-20241022    clang-18
i386        buildonly-randconfig-005-20241022    clang-18
i386        buildonly-randconfig-006-20241022    clang-18
i386                                defconfig    clang-18
i386                  randconfig-001-20241022    clang-18
i386                  randconfig-002-20241022    clang-18
i386                  randconfig-003-20241022    clang-18
i386                  randconfig-004-20241022    clang-18
i386                  randconfig-005-20241022    clang-18
i386                  randconfig-006-20241022    clang-18
i386                  randconfig-011-20241022    clang-18
i386                  randconfig-012-20241022    clang-18
i386                  randconfig-013-20241022    clang-18
i386                  randconfig-014-20241022    clang-18
i386                  randconfig-015-20241022    clang-18
i386                  randconfig-016-20241022    clang-18
loongarch                        allmodconfig    gcc-14.1.0
loongarch                         allnoconfig    gcc-14.1.0
loongarch                           defconfig    gcc-14.1.0
m68k                             allmodconfig    gcc-14.1.0
m68k                              allnoconfig    gcc-14.1.0
m68k                             allyesconfig    gcc-14.1.0
m68k                         apollo_defconfig    clang-14
m68k                                defconfig    gcc-14.1.0
microblaze                       allmodconfig    gcc-14.1.0
microblaze                        allnoconfig    gcc-14.1.0
microblaze                       allyesconfig    gcc-14.1.0
microblaze                          defconfig    gcc-14.1.0
mips                              allnoconfig    gcc-14.1.0
mips                          eyeq6_defconfig    clang-14
mips                           ip32_defconfig    clang-14
mips                      maltaaprp_defconfig    clang-14
mips                         rt305x_defconfig    clang-14
nios2                             allnoconfig    gcc-14.1.0
nios2                               defconfig    gcc-14.1.0
openrisc                          allnoconfig    clang-20
openrisc                         allyesconfig    gcc-14.1.0
openrisc                            defconfig    gcc-12
parisc                           allmodconfig    gcc-14.1.0
parisc                            allnoconfig    clang-20
parisc                           allyesconfig    gcc-14.1.0
parisc                              defconfig    gcc-12
parisc64                            defconfig    gcc-14.1.0
powerpc                          allmodconfig    gcc-14.1.0
powerpc                           allnoconfig    clang-20
powerpc                          allyesconfig    gcc-14.1.0
powerpc                       maple_defconfig    gcc-14.1.0
powerpc                     mpc512x_defconfig    gcc-14.1.0
powerpc                      ppc64e_defconfig    gcc-14.1.0
powerpc                         ps3_defconfig    gcc-14.1.0
powerpc                     redwood_defconfig    clang-14
powerpc                     tqm5200_defconfig    gcc-14.1.0
powerpc                     tqm8548_defconfig    gcc-14.1.0
riscv                            alldefconfig    clang-14
riscv                            allmodconfig    gcc-14.1.0
riscv                             allnoconfig    clang-20
riscv                            allyesconfig    gcc-14.1.0
riscv                               defconfig    gcc-12
riscv                    nommu_k210_defconfig    clang-14
s390                             allmodconfig    gcc-14.1.0
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.1.0
s390                          debug_defconfig    clang-14
s390                                defconfig    gcc-12
sh                               allmodconfig    gcc-14.1.0
sh                                allnoconfig    gcc-14.1.0
sh                               allyesconfig    gcc-14.1.0
sh                        apsh4ad0a_defconfig    gcc-14.1.0
sh                                  defconfig    gcc-12
sh                        edosk7705_defconfig    gcc-14.1.0
sh                          landisk_defconfig    gcc-14.1.0
sh                          rsk7269_defconfig    clang-14
sh                     sh7710voipgw_defconfig    clang-14
sh                  sh7785lcr_32bit_defconfig    gcc-14.1.0
sh                            titan_defconfig    clang-14
sparc                            allmodconfig    gcc-14.1.0
sparc                       sparc64_defconfig    clang-14
sparc64                             defconfig    gcc-12
um                               allmodconfig    clang-20
um                                allnoconfig    clang-20
um                               allyesconfig    clang-20
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-18
x86_64                           allyesconfig    clang-18
x86_64      buildonly-randconfig-001-20241022    clang-18
x86_64      buildonly-randconfig-002-20241022    clang-18
x86_64      buildonly-randconfig-003-20241022    clang-18
x86_64      buildonly-randconfig-004-20241022    clang-18
x86_64      buildonly-randconfig-005-20241022    clang-18
x86_64      buildonly-randconfig-006-20241022    clang-18
x86_64                              defconfig    clang-18
x86_64                                  kexec    clang-18
x86_64                                  kexec    gcc-12
x86_64                randconfig-001-20241022    clang-18
x86_64                randconfig-002-20241022    clang-18
x86_64                randconfig-003-20241022    clang-18
x86_64                randconfig-004-20241022    clang-18
x86_64                randconfig-005-20241022    clang-18
x86_64                randconfig-006-20241022    clang-18
x86_64                randconfig-011-20241022    clang-18
x86_64                randconfig-012-20241022    clang-18
x86_64                randconfig-013-20241022    clang-18
x86_64                randconfig-014-20241022    clang-18
x86_64                randconfig-015-20241022    clang-18
x86_64                randconfig-016-20241022    clang-18
x86_64                randconfig-071-20241022    clang-18
x86_64                randconfig-072-20241022    clang-18
x86_64                randconfig-073-20241022    clang-18
x86_64                randconfig-074-20241022    clang-18
x86_64                randconfig-075-20241022    clang-18
x86_64                randconfig-076-20241022    clang-18
x86_64                               rhel-8.3    gcc-12
x86_64                           rhel-8.3-bpf    clang-18
x86_64                    rhel-8.3-kselftests    gcc-12
x86_64                         rhel-8.3-kunit    clang-18
x86_64                           rhel-8.3-ltp    clang-18
x86_64                          rhel-8.3-rust    clang-18
xtensa                            allnoconfig    gcc-14.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
