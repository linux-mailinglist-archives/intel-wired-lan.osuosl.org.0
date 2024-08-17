Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 48C469559CD
	for <lists+intel-wired-lan@lfdr.de>; Sat, 17 Aug 2024 23:13:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 00B9A605EF;
	Sat, 17 Aug 2024 21:13:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DK0fsVZ18XF8; Sat, 17 Aug 2024 21:13:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C5D89605F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723929235;
	bh=95eidA/AQJS9CYjpYYCNG6TmtXnnb8knkRZzkVqfvgk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Mne0Yvrf7/g6N8xC6acJvuNDRlcgwH+lQ4SSHDiBrsMBLrYqQsrhXNLMbu5MDZt49
	 OtylVV6Dz60I86AoOBxIONSxf0bAh4rPVlvwXJuMIdJ/w6xoQBURjAEZUAXsJiO6XD
	 NTtG3EyksAzM1JquOvtpowFZsEoj+WbSsROqCDYdQc1tuMHo0SBp+7DhTVWvjSIPA1
	 JHJ/7HxAexwOP//YFiAOQ78DF8Ku06UkmxXBASUS/HR7l4GhjdDhmG4l1ePW4YqPx7
	 T6jg6xesq31KmbHv3SgEPfuTGZD9yCn3B6WMi42zKUETFT/w+bDGQvEAsyOUmfNBRw
	 Arga6s8EPMcNA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C5D89605F5;
	Sat, 17 Aug 2024 21:13:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8AF8E1BF23C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Aug 2024 21:13:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7806A810A4
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Aug 2024 21:13:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L06gyAe3jmnc for <intel-wired-lan@lists.osuosl.org>;
 Sat, 17 Aug 2024 21:13:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 725CA810A3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 725CA810A3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 725CA810A3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Aug 2024 21:13:53 +0000 (UTC)
X-CSE-ConnectionGUID: 4kMz0CpNQoKSTPaWLNtzCQ==
X-CSE-MsgGUID: ukS5k5uTRjqGE/qWj7jc+A==
X-IronPort-AV: E=McAfee;i="6700,10204,11167"; a="22373561"
X-IronPort-AV: E=Sophos;i="6.10,155,1719903600"; d="scan'208";a="22373561"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2024 14:13:53 -0700
X-CSE-ConnectionGUID: tl63oEVTRqukX5lGepFAMQ==
X-CSE-MsgGUID: rvEXaVnLSdCuAPexon5jfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,155,1719903600"; d="scan'208";a="60030849"
Received: from lkp-server01.sh.intel.com (HELO 9a732dc145d3) ([10.239.97.150])
 by fmviesa009.fm.intel.com with ESMTP; 17 Aug 2024 14:13:52 -0700
Received: from kbuild by 9a732dc145d3 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sfQkA-0007oc-1I
 for intel-wired-lan@lists.osuosl.org; Sat, 17 Aug 2024 21:13:50 +0000
Date: Sun, 18 Aug 2024 05:13:47 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202408180545.dTV2Px66-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723929233; x=1755465233;
 h=date:from:to:subject:message-id;
 bh=5ACDijKk+/vUG/wCE/zBzNP7d2ypYY7fSrwxnOm4WeQ=;
 b=FTi9IJ/S7f/n3R5d1BysVQo1UbvphCpUx5gy3naT6E0NEKINmg9IkS3r
 RhscsIKxXvhOGxp2DBBhqKi78JwLDc/woV5Bi7l1wxQGkaFZDk4pgymcf
 lIwoWgvNmU5vogJGvqLvFrJUO1khNSHDQEJKl1RB1uSbxe1ngFHTpUnSl
 HOC/aPjqFCzrp+27b4tIOrUV65ZNQ2mvjES7tTOwncxnBxfAitLFxztHa
 Z/+CslH1kmejdCwEJEH/banUMj04IygyN0mtYxc/B1MaP7SZUjmIMt+JL
 ObbA/PNYIThazXWiGnstG19MVv/+JPncT7i321HcVeJ2VxhPO9MoWt91s
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FTi9IJ/S
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 e467f0790c8df97d570b794a8169585fb64c6fb8
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: e467f0790c8df97d570b794a8169585fb64c6fb8  e1000e: avoid failing the system during pm_suspend

elapsed time: 1455m

configs tested: 123
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.3.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                         haps_hs_defconfig   gcc-13.2.0
arc                   randconfig-001-20240817   gcc-13.2.0
arc                   randconfig-002-20240817   gcc-13.2.0
arc                    vdk_hs38_smp_defconfig   gcc-13.2.0
arm                              allmodconfig   gcc-14.1.0
arm                               allnoconfig   clang-20
arm                              allyesconfig   gcc-14.1.0
arm                            mps2_defconfig   clang-20
arm                        mvebu_v7_defconfig   clang-15
arm                   randconfig-001-20240817   gcc-14.1.0
arm                   randconfig-002-20240817   clang-20
arm                   randconfig-003-20240817   clang-20
arm                   randconfig-004-20240817   gcc-14.1.0
arm                           tegra_defconfig   gcc-14.1.0
arm                           u8500_defconfig   gcc-14.1.0
arm                         wpcm450_defconfig   gcc-14.1.0
arm64                            allmodconfig   clang-20
arm64                             allnoconfig   gcc-14.1.0
arm64                 randconfig-001-20240817   clang-20
arm64                 randconfig-002-20240817   gcc-14.1.0
arm64                 randconfig-003-20240817   gcc-14.1.0
arm64                 randconfig-004-20240817   gcc-14.1.0
csky                              allnoconfig   gcc-14.1.0
csky                  randconfig-001-20240817   gcc-14.1.0
csky                  randconfig-002-20240817   gcc-14.1.0
hexagon                           allnoconfig   clang-20
hexagon               randconfig-001-20240817   clang-20
hexagon               randconfig-002-20240817   clang-20
i386                              allnoconfig   gcc-12
i386                             allyesconfig   gcc-12
i386         buildonly-randconfig-001-20240817   gcc-12
i386         buildonly-randconfig-002-20240817   gcc-12
i386         buildonly-randconfig-003-20240817   clang-18
i386         buildonly-randconfig-004-20240817   gcc-12
i386         buildonly-randconfig-005-20240817   clang-18
i386         buildonly-randconfig-006-20240817   clang-18
i386                                defconfig   clang-18
i386                  randconfig-001-20240817   gcc-12
i386                  randconfig-002-20240817   gcc-12
i386                  randconfig-003-20240817   gcc-12
i386                  randconfig-004-20240817   clang-18
i386                  randconfig-005-20240817   gcc-12
i386                  randconfig-006-20240817   clang-18
i386                  randconfig-011-20240817   gcc-12
i386                  randconfig-012-20240817   clang-18
i386                  randconfig-013-20240817   gcc-12
i386                  randconfig-014-20240817   gcc-12
i386                  randconfig-015-20240817   gcc-12
i386                  randconfig-016-20240817   clang-18
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-14.1.0
loongarch             randconfig-001-20240817   gcc-14.1.0
loongarch             randconfig-002-20240817   gcc-14.1.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-14.1.0
m68k                             allyesconfig   gcc-14.1.0
m68k                       m5275evb_defconfig   gcc-14.1.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-14.1.0
microblaze                       allyesconfig   gcc-14.1.0
mips                              allnoconfig   gcc-14.1.0
mips                           ip28_defconfig   gcc-14.1.0
mips                           xway_defconfig   clang-20
nios2                             allnoconfig   gcc-14.1.0
nios2                 randconfig-001-20240817   gcc-14.1.0
nios2                 randconfig-002-20240817   gcc-14.1.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc                randconfig-001-20240817   gcc-14.1.0
parisc                randconfig-002-20240817   gcc-14.1.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                    ge_imp3a_defconfig   gcc-14.1.0
powerpc               randconfig-001-20240817   clang-14
powerpc               randconfig-002-20240817   gcc-14.1.0
powerpc64             randconfig-001-20240817   gcc-14.1.0
powerpc64             randconfig-002-20240817   clang-16
powerpc64             randconfig-003-20240817   clang-20
riscv                             allnoconfig   gcc-14.1.0
riscv                               defconfig   clang-20
riscv                 randconfig-001-20240817   gcc-14.1.0
riscv                 randconfig-002-20240817   clang-17
s390                             allmodconfig   clang-20
s390                              allnoconfig   clang-20
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   clang-20
s390                  randconfig-001-20240817   gcc-14.1.0
s390                  randconfig-002-20240817   clang-20
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sh                                  defconfig   gcc-14.1.0
sh                             espt_defconfig   gcc-14.1.0
sh                               j2_defconfig   gcc-14.1.0
sh                    randconfig-001-20240817   gcc-14.1.0
sh                    randconfig-002-20240817   gcc-14.1.0
sh                     sh7710voipgw_defconfig   gcc-14.1.0
sh                   sh7770_generic_defconfig   gcc-14.1.0
sparc                            allmodconfig   gcc-14.1.0
sparc64                             defconfig   gcc-14.1.0
um                                allnoconfig   clang-17
um                                  defconfig   clang-20
um                             i386_defconfig   gcc-12
um                           x86_64_defconfig   clang-15
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240817   gcc-12
x86_64       buildonly-randconfig-002-20240817   gcc-12
x86_64       buildonly-randconfig-003-20240817   gcc-11
x86_64       buildonly-randconfig-005-20240817   gcc-12
x86_64                              defconfig   gcc-11
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-14.1.0
xtensa                          iss_defconfig   gcc-14.1.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
