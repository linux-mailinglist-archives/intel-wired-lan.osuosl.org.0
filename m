Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C3FDBE50B8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Oct 2025 20:24:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 37A544054B;
	Thu, 16 Oct 2025 18:24:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BwvwbV42-bUi; Thu, 16 Oct 2025 18:24:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 411B540542
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1760639058;
	bh=MaaG6og2395o2nIxfB1+XttFag2LbTqG1BedToudvoQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=tO5Qh1DpFS0Ion3ZlSMM9dzYPesKvq7m4am/byyKF6BQcFAFwGVBJBJPpz0wEcpy9
	 zXDmN7N0wC9D3UIAQ4ShMMVc+DwkK2Wie4SEwa+od2leeKPk5JxtZzFd+/JczKicFI
	 m05nTTar1npG2SyfcajgYI8dHKvv9zEhAXAnltZdN3oL15OODc+hSoKaMMOA3EkeYm
	 19nYbtrCqT8ny9jIMksB1acDdyO5V/tqFxEDrx+L/ulvVSUMdWIcMgNqdq+PjKQd1u
	 FUEOlstflCdKWUDCaJn3/cD0san/NdPE+dLtjivVSp6gSTZu2rXnglS6eiSEVPR9c/
	 Iq69n1i0BSkkQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 411B540542;
	Thu, 16 Oct 2025 18:24:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 5025DD8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Oct 2025 18:24:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 36CD140512
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Oct 2025 18:24:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TVNhL-OAXrth for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Oct 2025 18:24:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 169DD40464
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 169DD40464
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 169DD40464
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Oct 2025 18:24:14 +0000 (UTC)
X-CSE-ConnectionGUID: u4LBW+ySRj+Nh9bpesE5pQ==
X-CSE-MsgGUID: p20BkDocQPCCP7V4mBPA2A==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="85464145"
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="85464145"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 11:24:14 -0700
X-CSE-ConnectionGUID: z1emEtCFSRShs4BS0Nup+A==
X-CSE-MsgGUID: efu6RY+fRn2M2UKPl5j7SQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="213111725"
Received: from lkp-server02.sh.intel.com (HELO 66d7546c76b2) ([10.239.97.151])
 by orviesa002.jf.intel.com with ESMTP; 16 Oct 2025 11:24:14 -0700
Received: from kbuild by 66d7546c76b2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1v9Se2-00058H-2n
 for intel-wired-lan@lists.osuosl.org; Thu, 16 Oct 2025 18:24:10 +0000
Date: Fri, 17 Oct 2025 02:23:47 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202510170241.xrVcVCnS-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760639055; x=1792175055;
 h=date:from:to:subject:message-id;
 bh=6hxpsK+BmjWgIYPqV+RnyI0RNjZQM6zbSzqX0DVTESw=;
 b=PpWFoOzACOFwd/o0u6oVoJw3c7K3yPFh1YAJkjWNRtPgzAgby0yiKF74
 DVdsh8aXVo05NkrLq4cfonlcuz003EpRtpzQ0O/z0AeVV0N8YNWv9MlR2
 /sbdTKYLENJT/L/mxTsvY10ltwk4ECQQ+dk4NsbKb5/pF1dxug7/C7cKF
 aZR9kiBw5bJt/TpUVOOGzt9i7KHMjWMfQI+FiueEyofgOEGwHIfkLFbA0
 9D1RlGNAkXoA6mQ3Bghj/7DhO2idll9Bsyu8o/Wv8WQpb/4aKDI5GN5re
 8AV1J5h8Q5KrDiBPvjmji7ftOi2DPvlZK2jpnTJcJmaxuB9axAAXSUr/u
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PpWFoOzA
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 1c51450f1afff1e7419797720df3fbd9ccbf610c
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 10GbE
branch HEAD: 1c51450f1afff1e7419797720df3fbd9ccbf610c  tcp: better handle TCP_TX_DELAY on established flows

elapsed time: 1519m

configs tested: 255
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    clang-22
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
alpha                               defconfig    clang-19
arc                              allmodconfig    clang-19
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    clang-22
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    clang-19
arc                              allyesconfig    gcc-15.1.0
arc                                 defconfig    clang-19
arc                        nsim_700_defconfig    gcc-15.1.0
arc                        nsimosci_defconfig    gcc-15.1.0
arc                   randconfig-001-20251016    gcc-13.4.0
arc                   randconfig-001-20251017    clang-22
arc                   randconfig-002-20251016    gcc-8.5.0
arc                   randconfig-002-20251017    clang-22
arm                              allmodconfig    clang-19
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    clang-19
arm                              allyesconfig    gcc-15.1.0
arm                                 defconfig    clang-19
arm                          pxa3xx_defconfig    gcc-15.1.0
arm                   randconfig-001-20251016    clang-22
arm                   randconfig-001-20251017    clang-22
arm                   randconfig-002-20251016    gcc-10.5.0
arm                   randconfig-002-20251017    clang-22
arm                   randconfig-003-20251016    clang-22
arm                   randconfig-003-20251017    clang-22
arm                   randconfig-004-20251016    gcc-14.3.0
arm                   randconfig-004-20251017    clang-22
arm                       spear13xx_defconfig    gcc-15.1.0
arm                           sunxi_defconfig    gcc-15.1.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    clang-22
arm64                             allnoconfig    gcc-15.1.0
arm64                               defconfig    clang-19
arm64                 randconfig-001-20251016    clang-22
arm64                 randconfig-001-20251017    clang-22
arm64                 randconfig-002-20251016    gcc-13.4.0
arm64                 randconfig-002-20251017    clang-22
arm64                 randconfig-003-20251016    gcc-10.5.0
arm64                 randconfig-003-20251017    clang-22
arm64                 randconfig-004-20251016    clang-22
arm64                 randconfig-004-20251017    clang-22
csky                              allnoconfig    clang-22
csky                              allnoconfig    gcc-15.1.0
csky                                defconfig    clang-19
csky                  randconfig-001-20251016    clang-22
csky                  randconfig-001-20251016    gcc-11.5.0
csky                  randconfig-002-20251016    clang-22
csky                  randconfig-002-20251016    gcc-11.5.0
hexagon                          alldefconfig    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-22
hexagon                             defconfig    clang-19
hexagon               randconfig-001-20251016    clang-22
hexagon               randconfig-002-20251016    clang-22
i386                             allmodconfig    clang-20
i386                              allnoconfig    clang-20
i386                             allyesconfig    clang-20
i386        buildonly-randconfig-001-20251016    clang-20
i386        buildonly-randconfig-001-20251017    clang-20
i386        buildonly-randconfig-002-20251016    clang-20
i386        buildonly-randconfig-002-20251016    gcc-14
i386        buildonly-randconfig-002-20251017    clang-20
i386        buildonly-randconfig-003-20251016    clang-20
i386        buildonly-randconfig-003-20251017    clang-20
i386        buildonly-randconfig-004-20251016    clang-20
i386        buildonly-randconfig-004-20251017    clang-20
i386        buildonly-randconfig-005-20251016    clang-20
i386        buildonly-randconfig-005-20251017    clang-20
i386        buildonly-randconfig-006-20251016    clang-20
i386        buildonly-randconfig-006-20251016    gcc-14
i386        buildonly-randconfig-006-20251017    clang-20
i386                                defconfig    clang-20
i386                  randconfig-001-20251016    clang-20
i386                  randconfig-002-20251016    clang-20
i386                  randconfig-003-20251016    clang-20
i386                  randconfig-004-20251016    clang-20
i386                  randconfig-005-20251016    clang-20
i386                  randconfig-006-20251016    clang-20
i386                  randconfig-007-20251016    clang-20
i386                  randconfig-011-20251016    gcc-14
i386                  randconfig-011-20251017    gcc-12
i386                  randconfig-012-20251016    gcc-14
i386                  randconfig-012-20251017    gcc-12
i386                  randconfig-013-20251016    gcc-14
i386                  randconfig-013-20251017    gcc-12
i386                  randconfig-014-20251016    gcc-14
i386                  randconfig-014-20251017    gcc-12
i386                  randconfig-015-20251016    gcc-14
i386                  randconfig-015-20251017    gcc-12
i386                  randconfig-016-20251016    gcc-14
i386                  randconfig-016-20251017    gcc-12
i386                  randconfig-017-20251016    gcc-14
i386                  randconfig-017-20251017    gcc-12
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20251016    clang-22
loongarch             randconfig-001-20251016    gcc-15.1.0
loongarch             randconfig-002-20251016    clang-22
loongarch             randconfig-002-20251016    gcc-13.4.0
m68k                             allmodconfig    clang-19
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    clang-19
m68k                             allyesconfig    gcc-15.1.0
m68k                                defconfig    clang-19
m68k                          sun3x_defconfig    gcc-15.1.0
m68k                           virt_defconfig    gcc-15.1.0
microblaze                       allmodconfig    clang-19
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    clang-19
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-11.5.0
nios2                             allnoconfig    gcc-15.1.0
nios2                               defconfig    gcc-11.5.0
nios2                               defconfig    gcc-15.1.0
nios2                 randconfig-001-20251016    clang-22
nios2                 randconfig-001-20251016    gcc-8.5.0
nios2                 randconfig-002-20251016    clang-22
nios2                 randconfig-002-20251016    gcc-8.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
openrisc                            defconfig    gcc-14
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20251016    clang-22
parisc                randconfig-001-20251016    gcc-9.5.0
parisc                randconfig-002-20251016    clang-22
parisc                randconfig-002-20251016    gcc-8.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-22
powerpc                          allyesconfig    gcc-15.1.0
powerpc                   bluestone_defconfig    gcc-15.1.0
powerpc                        cell_defconfig    gcc-15.1.0
powerpc                      ep88xc_defconfig    gcc-15.1.0
powerpc                 linkstation_defconfig    gcc-15.1.0
powerpc               randconfig-001-20251016    clang-16
powerpc               randconfig-001-20251016    clang-22
powerpc               randconfig-002-20251016    clang-22
powerpc               randconfig-002-20251016    gcc-8.5.0
powerpc               randconfig-003-20251016    clang-22
powerpc                    sam440ep_defconfig    gcc-15.1.0
powerpc                     tqm8560_defconfig    gcc-15.1.0
powerpc64             randconfig-001-20251016    gcc-15.1.0
powerpc64             randconfig-002-20251016    clang-22
powerpc64             randconfig-003-20251016    clang-22
powerpc64             randconfig-003-20251016    gcc-13.4.0
riscv                            allmodconfig    clang-22
riscv                            allmodconfig    gcc-15.1.0
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                            allyesconfig    gcc-15.1.0
riscv                               defconfig    gcc-14
riscv                 randconfig-001-20251016    gcc-10.5.0
riscv                 randconfig-001-20251016    gcc-9.5.0
riscv                 randconfig-002-20251016    gcc-10.5.0
s390                             allmodconfig    clang-18
s390                             allmodconfig    gcc-15.1.0
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    gcc-14
s390                  randconfig-001-20251016    clang-18
s390                  randconfig-001-20251016    gcc-10.5.0
s390                  randconfig-002-20251016    gcc-10.5.0
s390                  randconfig-002-20251016    gcc-13.4.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-14
sh                            migor_defconfig    gcc-15.1.0
sh                    randconfig-001-20251016    gcc-10.5.0
sh                    randconfig-001-20251016    gcc-14.3.0
sh                    randconfig-002-20251016    gcc-10.5.0
sh                    randconfig-002-20251016    gcc-14.3.0
sh                          rsk7269_defconfig    gcc-15.1.0
sh                             sh03_defconfig    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20251016    gcc-10.5.0
sparc                 randconfig-001-20251016    gcc-15.1.0
sparc                 randconfig-002-20251016    gcc-10.5.0
sparc                 randconfig-002-20251016    gcc-8.5.0
sparc64                             defconfig    gcc-14
sparc64               randconfig-001-20251016    gcc-10.5.0
sparc64               randconfig-001-20251016    gcc-13.4.0
sparc64               randconfig-002-20251016    gcc-10.5.0
sparc64               randconfig-002-20251016    gcc-8.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-14
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                    randconfig-001-20251016    gcc-10.5.0
um                    randconfig-001-20251016    gcc-12
um                    randconfig-002-20251016    clang-22
um                    randconfig-002-20251016    gcc-10.5.0
um                           x86_64_defconfig    gcc-14
um                           x86_64_defconfig    gcc-15.1.0
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20251016    clang-20
x86_64      buildonly-randconfig-001-20251016    gcc-12
x86_64      buildonly-randconfig-002-20251016    gcc-12
x86_64      buildonly-randconfig-002-20251016    gcc-14
x86_64      buildonly-randconfig-003-20251016    gcc-12
x86_64      buildonly-randconfig-003-20251016    gcc-14
x86_64      buildonly-randconfig-004-20251016    gcc-12
x86_64      buildonly-randconfig-005-20251016    gcc-12
x86_64      buildonly-randconfig-005-20251016    gcc-14
x86_64      buildonly-randconfig-006-20251016    gcc-12
x86_64                              defconfig    clang-20
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20251016    clang-20
x86_64                randconfig-002-20251016    clang-20
x86_64                randconfig-003-20251016    clang-20
x86_64                randconfig-004-20251016    clang-20
x86_64                randconfig-005-20251016    clang-20
x86_64                randconfig-006-20251016    clang-20
x86_64                randconfig-007-20251016    clang-20
x86_64                randconfig-008-20251016    clang-20
x86_64                randconfig-071-20251016    gcc-14
x86_64                randconfig-072-20251016    gcc-14
x86_64                randconfig-073-20251016    gcc-14
x86_64                randconfig-074-20251016    gcc-14
x86_64                randconfig-075-20251016    gcc-14
x86_64                randconfig-076-20251016    gcc-14
x86_64                randconfig-077-20251016    gcc-14
x86_64                randconfig-078-20251016    gcc-14
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-14
x86_64                          rhel-9.4-func    clang-20
x86_64                    rhel-9.4-kselftests    clang-20
x86_64                         rhel-9.4-kunit    gcc-14
x86_64                           rhel-9.4-ltp    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                  audio_kc705_defconfig    gcc-15.1.0
xtensa                randconfig-001-20251016    gcc-10.5.0
xtensa                randconfig-002-20251016    gcc-10.5.0
xtensa                randconfig-002-20251016    gcc-9.5.0
xtensa                    xip_kc705_defconfig    gcc-15.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
