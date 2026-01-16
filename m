Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C0F5CD30B58
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Jan 2026 12:54:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7A81D6FA0A;
	Fri, 16 Jan 2026 11:54:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 20pDfgPj7ebb; Fri, 16 Jan 2026 11:54:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 975486F93C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768564442;
	bh=g/EpxL/wCGxzRDE7OcUMMbIhjiuJQZY0MbrGmX6Vcb0=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=DLIrSOhcEsoJdGXbBBhTIpW6uiFZLAlIFAD855PT7U8Y4bw6mn+QlWk8GvkWPrB8x
	 UF83KUM4ppNLe3D16pO47XWKtw884V+6Sk+xF3BWTSNAHNzLJ61Xj8bRKbH1Ezl+Oe
	 oec19eURY9oqTbdkwC7yhCXckPEJVaf4nwrsbv0eztAWCGqiwbShE0lalViRc1l4ZB
	 laBR5fIWKI8lf1knGLQ3NbPSn9rF7DriY25QipOFyOQasdU9vHFJk2QLNGR98Fp0a2
	 NSIJY2Tm6z0nNWa4W9Wl0IpxSE/LUUHLlTXEmAY8XTQJyfQxtgk39P37x7MVfkuAuT
	 dWA/Cn67L4A4g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 975486F93C;
	Fri, 16 Jan 2026 11:54:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 9E741223
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jan 2026 11:54:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8F1B24007A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jan 2026 11:54:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bOsbqA-JMuP7 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Jan 2026 11:53:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 72F5040068
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 72F5040068
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 72F5040068
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jan 2026 11:53:59 +0000 (UTC)
X-CSE-ConnectionGUID: a4dBgEbmQjSA4NLyCUxx3w==
X-CSE-MsgGUID: kzNSYSGSQ46JkrIsqxIEzQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11672"; a="92541516"
X-IronPort-AV: E=Sophos;i="6.21,230,1763452800"; d="scan'208";a="92541516"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2026 03:53:58 -0800
X-CSE-ConnectionGUID: H4cYJ/cETzONqh/gBXmrCw==
X-CSE-MsgGUID: Zhsz9WCLQGGiiEj5fqN2eg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,230,1763452800"; d="scan'208";a="205643806"
Received: from lkp-server01.sh.intel.com (HELO 765f4a05e27f) ([10.239.97.150])
 by fmviesa009.fm.intel.com with ESMTP; 16 Jan 2026 03:53:56 -0800
Received: from kbuild by 765f4a05e27f with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vgiOo-00000000KnZ-2ynU;
 Fri, 16 Jan 2026 11:53:54 +0000
Date: Fri, 16 Jan 2026 19:52:57 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202601161950.0kArU3Rk-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768564439; x=1800100439;
 h=date:from:to:subject:message-id;
 bh=Y+zBfHuO9ZBhJ724uwGXA2nG1gOfDyFz3hLKj6pwvpc=;
 b=XUCDt53Yu7ugbsJushiMOC949mScfB92eEyKIxsX68LSUxmzqbQDaGgU
 bYAx5EtjLX7FnWIXUFh67z1gXUnPDX1jgwmChsuQYg0a5w8bFjHHiZJxC
 eETnXW4tnpgCmEJDcXj2wichs1Pf3ZkFlb+e2+VC/rg4JDmebx8vWEOgp
 wg1I+6ODkbdqX2Sr8CmDTfsfapPG6zl3yJ/4KGzXZloTgmyyRI4M3UdoB
 2eDLJhcj8Bw1/kNwtG0KSUs0H4Pl9mxMCLoA8b6mimTKDGtKBvNsXbul4
 Htp8vIfBCVkbAQrubPu8ZiCoNqz7tP6h5fJOBojLLiUT8xRPjanXkzbw+
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XUCDt53Y
Subject: [Intel-wired-lan] [tnguy-next-queue:200GbE] BUILD SUCCESS
 97239ae824d1e16271e18e2a5e337c91d467202b
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 200GbE
branch HEAD: 97239ae824d1e16271e18e2a5e337c91d467202b  idpf: generalize mailbox API

elapsed time: 726m

configs tested: 210
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.2.0
alpha                            allyesconfig    gcc-15.2.0
alpha                               defconfig    gcc-15.2.0
arc                              allmodconfig    clang-16
arc                               allnoconfig    gcc-15.2.0
arc                              allyesconfig    clang-22
arc                                 defconfig    gcc-15.2.0
arc                   randconfig-001-20260116    gcc-8.5.0
arc                   randconfig-002-20260116    gcc-8.5.0
arc                        vdk_hs38_defconfig    gcc-15.2.0
arm                               allnoconfig    gcc-15.2.0
arm                              allyesconfig    clang-16
arm                     am200epdkit_defconfig    clang-22
arm                     am200epdkit_defconfig    gcc-15.2.0
arm                                 defconfig    gcc-15.2.0
arm                            dove_defconfig    gcc-15.2.0
arm                       imx_v4_v5_defconfig    clang-22
arm                       imx_v6_v7_defconfig    gcc-15.2.0
arm                             mxs_defconfig    clang-22
arm                             mxs_defconfig    gcc-15.2.0
arm                         nhk8815_defconfig    clang-22
arm                   randconfig-001-20260116    gcc-8.5.0
arm                   randconfig-002-20260116    gcc-8.5.0
arm                   randconfig-003-20260116    gcc-8.5.0
arm                   randconfig-004-20260116    gcc-8.5.0
arm                        realview_defconfig    clang-22
arm                       spear13xx_defconfig    clang-22
arm                           stm32_defconfig    gcc-15.2.0
arm                    vt8500_v6_v7_defconfig    gcc-15.2.0
arm                         wpcm450_defconfig    gcc-15.2.0
arm64                            allmodconfig    clang-22
arm64                             allnoconfig    gcc-15.2.0
arm64                               defconfig    gcc-15.2.0
arm64                 randconfig-001-20260116    clang-22
arm64                 randconfig-002-20260116    clang-22
arm64                 randconfig-003-20260116    clang-22
arm64                 randconfig-004-20260116    clang-22
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
csky                                defconfig    gcc-15.2.0
csky                  randconfig-001-20260116    clang-22
csky                  randconfig-002-20260116    clang-22
hexagon                          allmodconfig    gcc-15.2.0
hexagon                           allnoconfig    gcc-15.2.0
hexagon                             defconfig    gcc-15.2.0
hexagon               randconfig-001-20260116    clang-20
hexagon               randconfig-002-20260116    clang-20
i386                             allmodconfig    clang-20
i386                              allnoconfig    gcc-15.2.0
i386                             allyesconfig    clang-20
i386        buildonly-randconfig-001-20260116    gcc-12
i386        buildonly-randconfig-002-20260116    gcc-12
i386        buildonly-randconfig-003-20260116    gcc-12
i386        buildonly-randconfig-004-20260116    gcc-12
i386        buildonly-randconfig-005-20260116    gcc-12
i386        buildonly-randconfig-006-20260116    gcc-12
i386                                defconfig    gcc-15.2.0
i386                  randconfig-001-20260116    clang-20
i386                  randconfig-002-20260116    clang-20
i386                  randconfig-003-20260116    clang-20
i386                  randconfig-004-20260116    clang-20
i386                  randconfig-005-20260116    clang-20
i386                  randconfig-006-20260116    clang-20
i386                  randconfig-007-20260116    clang-20
i386                  randconfig-011-20260116    clang-20
i386                  randconfig-012-20260116    clang-20
i386                  randconfig-013-20260116    clang-20
i386                  randconfig-014-20260116    clang-20
i386                  randconfig-015-20260116    clang-20
i386                  randconfig-016-20260116    clang-20
i386                  randconfig-017-20260116    clang-20
loongarch                        allmodconfig    clang-22
loongarch                         allnoconfig    gcc-15.2.0
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20260116    clang-20
loongarch             randconfig-002-20260116    clang-20
m68k                             allmodconfig    gcc-15.2.0
m68k                              allnoconfig    gcc-15.2.0
m68k                             allyesconfig    clang-16
m68k                                defconfig    clang-19
m68k                          sun3x_defconfig    gcc-15.2.0
microblaze                       alldefconfig    gcc-15.2.0
microblaze                        allnoconfig    gcc-15.2.0
microblaze                       allyesconfig    gcc-15.2.0
microblaze                          defconfig    clang-19
mips                             allmodconfig    gcc-15.2.0
mips                              allnoconfig    gcc-15.2.0
mips                             allyesconfig    gcc-15.2.0
mips                          eyeq5_defconfig    clang-22
mips                           ip27_defconfig    gcc-15.2.0
mips                           ip28_defconfig    clang-22
mips                      malta_kvm_defconfig    gcc-15.2.0
nios2                            allmodconfig    clang-22
nios2                             allnoconfig    clang-22
nios2                               defconfig    clang-19
nios2                 randconfig-001-20260116    clang-20
nios2                 randconfig-002-20260116    clang-20
openrisc                         alldefconfig    clang-22
openrisc                         allmodconfig    clang-22
openrisc                          allnoconfig    clang-22
openrisc                            defconfig    gcc-15.2.0
openrisc                       virt_defconfig    gcc-15.2.0
parisc                           allmodconfig    gcc-15.2.0
parisc                            allnoconfig    clang-22
parisc                           allyesconfig    clang-19
parisc                              defconfig    gcc-15.2.0
parisc                randconfig-001-20260116    clang-22
parisc                randconfig-002-20260116    clang-22
parisc64                            defconfig    clang-19
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    clang-22
powerpc                      cm5200_defconfig    clang-22
powerpc                      cm5200_defconfig    gcc-15.2.0
powerpc                  iss476-smp_defconfig    gcc-15.2.0
powerpc                     kmeter1_defconfig    gcc-15.2.0
powerpc                   lite5200b_defconfig    clang-22
powerpc                 mpc837x_rdb_defconfig    clang-22
powerpc                  mpc866_ads_defconfig    gcc-15.2.0
powerpc                      pcm030_defconfig    clang-22
powerpc                     powernv_defconfig    clang-22
powerpc                      ppc44x_defconfig    clang-22
powerpc                      ppc44x_defconfig    gcc-15.2.0
powerpc                         ps3_defconfig    clang-22
powerpc               randconfig-001-20260116    clang-22
powerpc               randconfig-002-20260116    clang-22
powerpc                         wii_defconfig    clang-22
powerpc                 xes_mpc85xx_defconfig    clang-22
powerpc64             randconfig-001-20260116    clang-22
powerpc64             randconfig-002-20260116    clang-22
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    clang-22
riscv                            allyesconfig    clang-16
riscv                               defconfig    gcc-15.2.0
riscv                 randconfig-001-20260116    gcc-15.2.0
riscv                 randconfig-002-20260116    gcc-15.2.0
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.2.0
s390                                defconfig    gcc-15.2.0
s390                  randconfig-001-20260116    gcc-15.2.0
s390                  randconfig-002-20260116    gcc-15.2.0
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    clang-22
sh                               allyesconfig    clang-19
sh                        apsh4ad0a_defconfig    clang-22
sh                                  defconfig    gcc-14
sh                        edosk7705_defconfig    gcc-15.2.0
sh                    randconfig-001-20260116    gcc-15.2.0
sh                    randconfig-002-20260116    gcc-15.2.0
sh                          rsk7269_defconfig    clang-22
sh                           se7722_defconfig    gcc-15.2.0
sh                           se7750_defconfig    clang-22
sparc                            alldefconfig    gcc-15.2.0
sparc                             allnoconfig    clang-22
sparc                               defconfig    gcc-15.2.0
sparc                 randconfig-001-20260116    gcc-10.5.0
sparc                 randconfig-002-20260116    gcc-10.5.0
sparc64                          allmodconfig    clang-22
sparc64                             defconfig    gcc-14
sparc64               randconfig-001-20260116    gcc-10.5.0
sparc64               randconfig-002-20260116    gcc-10.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-15.2.0
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260116    gcc-10.5.0
um                    randconfig-002-20260116    gcc-10.5.0
um                           x86_64_defconfig    gcc-14
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-22
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20260116    gcc-14
x86_64      buildonly-randconfig-002-20260116    gcc-14
x86_64      buildonly-randconfig-003-20260116    gcc-14
x86_64      buildonly-randconfig-004-20260116    gcc-14
x86_64      buildonly-randconfig-005-20260116    gcc-14
x86_64      buildonly-randconfig-006-20260116    gcc-14
x86_64                              defconfig    gcc-14
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20260116    clang-20
x86_64                randconfig-002-20260116    clang-20
x86_64                randconfig-003-20260116    clang-20
x86_64                randconfig-004-20260116    clang-20
x86_64                randconfig-005-20260116    clang-20
x86_64                randconfig-006-20260116    clang-20
x86_64                randconfig-011-20260116    clang-20
x86_64                randconfig-012-20260116    clang-20
x86_64                randconfig-013-20260116    clang-20
x86_64                randconfig-014-20260116    clang-20
x86_64                randconfig-015-20260116    clang-20
x86_64                randconfig-016-20260116    clang-20
x86_64                randconfig-071-20260116    clang-20
x86_64                randconfig-072-20260116    clang-20
x86_64                randconfig-073-20260116    clang-20
x86_64                randconfig-074-20260116    clang-20
x86_64                randconfig-075-20260116    clang-20
x86_64                randconfig-076-20260116    clang-20
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-14
x86_64                          rhel-9.4-func    clang-20
x86_64                    rhel-9.4-kselftests    clang-20
x86_64                         rhel-9.4-kunit    gcc-14
x86_64                           rhel-9.4-ltp    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                           alldefconfig    clang-22
xtensa                            allnoconfig    clang-22
xtensa                           allyesconfig    clang-22
xtensa                randconfig-001-20260116    gcc-10.5.0
xtensa                randconfig-002-20260116    gcc-10.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
