Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FE01991B3E
	for <lists+intel-wired-lan@lfdr.de>; Sun,  6 Oct 2024 00:32:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DA5196063E;
	Sat,  5 Oct 2024 22:32:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id faWWNCUJbgaU; Sat,  5 Oct 2024 22:32:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 99866606BE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728167554;
	bh=dw45at56KDGVj7HlwbKGYL12lp3MObsqSUlFEkHMi/4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=sS7FrRBNEgdDxWtsmQ3f6FjoqqVB/ilZ7J0VS/CvgX+T0BYB0EYPjIrsV2uH64MxU
	 pSmdCGhzRmMa7+DfhItkphPUQERZ0e9gXLShv8ZAA4V9gtMv77bfAeR/uNYgOOOLp2
	 ELwShbHxTZ00oqeAag47oLNzqv1Jzsy6greyaGkc1rEObyuMZnHF9gTd5PG70OkWLM
	 9bdn9tgr5vvK6CEUKfLk/nrLk3aJHKymKGz95NXzHhzuviPoNnSvTWUxKdstMdSv6d
	 0Y7EzsWzXWLVIe57MyOZFr30eKCe/BGccknI8/fG71RIED3w0djVHr2iI1mnLBYY+S
	 qUXZqK858h8aQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 99866606BE;
	Sat,  5 Oct 2024 22:32:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8C8201BF5A7
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Oct 2024 22:32:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7AF726062F
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Oct 2024 22:32:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IEHMZ7DIgLM0 for <intel-wired-lan@lists.osuosl.org>;
 Sat,  5 Oct 2024 22:32:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4D1F460617
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4D1F460617
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4D1F460617
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Oct 2024 22:32:30 +0000 (UTC)
X-CSE-ConnectionGUID: WKEHrjt5R9u/Y4CvOlOFUQ==
X-CSE-MsgGUID: 2FmdNW2aTliUYLrMe6bgZg==
X-IronPort-AV: E=McAfee;i="6700,10204,11216"; a="31061526"
X-IronPort-AV: E=Sophos;i="6.11,181,1725346800"; d="scan'208";a="31061526"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2024 15:32:31 -0700
X-CSE-ConnectionGUID: Ijv1vWFOTASw4EYVzHQJng==
X-CSE-MsgGUID: TNyAx7quTcm9fCQ5rTuyWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,181,1725346800"; d="scan'208";a="74886308"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
 by orviesa010.jf.intel.com with ESMTP; 05 Oct 2024 15:32:30 -0700
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sxDK7-0003Pm-0J
 for intel-wired-lan@lists.osuosl.org; Sat, 05 Oct 2024 22:32:27 +0000
Date: Sun, 06 Oct 2024 06:32:16 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202410060600.RaAmjx44-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728167552; x=1759703552;
 h=date:from:to:subject:message-id;
 bh=GxiYnEfSTs8D7mbSpgVEAW/1KXWwZuh1nuR1hWCZADA=;
 b=hHLiAJKYfFv/3R4km6kyD3VFe4TXEyw5tMA9navKpknoxyovo3rYxXGn
 EfPafFIpKF6DDflGcDbhAABDKVLvY8aTT9r74WIx/3PRNvdm8VdnxAHQf
 Ca0BGpYF/850SPb5NTS+3NphFZ9YQJY3ThYx3P64fVe5XkOwjJ1zRJEgF
 xu4XJSYgyWJYDnx2RFstMqeAZrNGhUvywAmfzM0VaNWx6qAeGvJsbvDPi
 hbel33WQFkH4RIEtlOySZB7u1d6yvYUoDdejPernkDiRt/haXNho6FFLE
 fCYCJ+OBPpNgqEABZRqSAFvV4PEXffQVkOJmDkUvPcJn3Fzq+b0f+YaTw
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hHLiAJKY
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 500257db81d067c1ad5a202501a085a8ffea10f1
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 200GbE
branch HEAD: 500257db81d067c1ad5a202501a085a8ffea10f1  Merge branch 'ibmvnic-fix-for-send-scrq-direct'

elapsed time: 1603m

configs tested: 138
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
arc                        vdk_hs38_defconfig    clang-15
arm                              allmodconfig    clang-20
arm                               allnoconfig    gcc-14.1.0
arm                              allyesconfig    clang-20
arm                                 defconfig    gcc-14.1.0
arm                       imx_v6_v7_defconfig    clang-15
arm                          pxa910_defconfig    clang-15
arm                         s5pv210_defconfig    clang-15
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
i386                             allmodconfig    gcc-12
i386                              allnoconfig    clang-18
i386                              allnoconfig    gcc-12
i386                             allyesconfig    clang-18
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20241005    clang-18
i386        buildonly-randconfig-002-20241005    clang-18
i386        buildonly-randconfig-003-20241005    clang-18
i386        buildonly-randconfig-004-20241005    clang-18
i386        buildonly-randconfig-005-20241005    gcc-12
i386        buildonly-randconfig-006-20241005    gcc-12
i386                                defconfig    clang-18
i386                  randconfig-001-20241005    gcc-11
i386                  randconfig-002-20241005    clang-18
i386                  randconfig-003-20241005    gcc-12
i386                  randconfig-004-20241005    clang-18
i386                  randconfig-005-20241005    clang-18
i386                  randconfig-006-20241005    clang-18
i386                  randconfig-011-20241005    gcc-12
i386                  randconfig-012-20241005    clang-18
i386                  randconfig-013-20241005    clang-18
i386                  randconfig-014-20241005    gcc-12
i386                  randconfig-015-20241005    gcc-12
i386                  randconfig-016-20241005    gcc-12
loongarch                        allmodconfig    gcc-14.1.0
loongarch                         allnoconfig    gcc-14.1.0
loongarch                           defconfig    gcc-14.1.0
m68k                             allmodconfig    gcc-14.1.0
m68k                              allnoconfig    gcc-14.1.0
m68k                             allyesconfig    gcc-14.1.0
m68k                                defconfig    gcc-14.1.0
microblaze                       allmodconfig    gcc-14.1.0
microblaze                        allnoconfig    gcc-14.1.0
microblaze                       allyesconfig    gcc-14.1.0
microblaze                          defconfig    gcc-14.1.0
mips                              allnoconfig    gcc-14.1.0
mips                            gpr_defconfig    clang-15
mips                           jazz_defconfig    clang-15
mips                        vocore2_defconfig    clang-15
nios2                             allnoconfig    gcc-14.1.0
nios2                               defconfig    gcc-14.1.0
openrisc                          allnoconfig    gcc-14.1.0
openrisc                         allyesconfig    gcc-14.1.0
openrisc                            defconfig    gcc-12
parisc                           allmodconfig    gcc-14.1.0
parisc                            allnoconfig    gcc-14.1.0
parisc                           allyesconfig    gcc-14.1.0
parisc                              defconfig    gcc-12
parisc64                            defconfig    gcc-14.1.0
powerpc                          allmodconfig    gcc-14.1.0
powerpc                           allnoconfig    gcc-14.1.0
powerpc                          allyesconfig    gcc-14.1.0
powerpc                      katmai_defconfig    clang-15
powerpc                     mpc512x_defconfig    clang-15
powerpc                  mpc866_ads_defconfig    clang-15
powerpc                    mvme5100_defconfig    clang-15
powerpc                    socrates_defconfig    clang-15
riscv                            alldefconfig    clang-15
riscv                            allmodconfig    gcc-14.1.0
riscv                             allnoconfig    gcc-14.1.0
riscv                            allyesconfig    gcc-14.1.0
riscv                               defconfig    gcc-12
s390                             allmodconfig    gcc-14.1.0
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.1.0
s390                                defconfig    gcc-12
sh                               allmodconfig    gcc-14.1.0
sh                                allnoconfig    gcc-14.1.0
sh                               allyesconfig    gcc-14.1.0
sh                                  defconfig    gcc-12
sh                         ecovec24_defconfig    clang-15
sh                          rsk7201_defconfig    clang-15
sh                           se7343_defconfig    clang-15
sparc                            allmodconfig    gcc-14.1.0
sparc64                             defconfig    gcc-12
um                               allmodconfig    clang-20
um                                allnoconfig    clang-17
um                               allyesconfig    clang-20
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-18
x86_64                           allyesconfig    clang-18
x86_64      buildonly-randconfig-001-20241006    gcc-12
x86_64      buildonly-randconfig-002-20241006    gcc-12
x86_64      buildonly-randconfig-003-20241006    gcc-12
x86_64      buildonly-randconfig-004-20241006    gcc-12
x86_64      buildonly-randconfig-005-20241006    gcc-12
x86_64      buildonly-randconfig-006-20241006    gcc-12
x86_64                              defconfig    clang-18
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-18
x86_64                randconfig-001-20241006    gcc-12
x86_64                randconfig-002-20241006    gcc-12
x86_64                randconfig-003-20241006    gcc-12
x86_64                randconfig-004-20241006    gcc-12
x86_64                randconfig-005-20241006    gcc-12
x86_64                randconfig-006-20241006    gcc-12
x86_64                randconfig-011-20241006    gcc-12
x86_64                randconfig-012-20241006    gcc-12
x86_64                randconfig-013-20241006    gcc-12
x86_64                randconfig-014-20241006    gcc-12
x86_64                randconfig-015-20241006    gcc-12
x86_64                randconfig-016-20241006    gcc-12
x86_64                randconfig-071-20241006    gcc-12
x86_64                randconfig-072-20241006    gcc-12
x86_64                randconfig-073-20241006    gcc-12
x86_64                randconfig-074-20241006    gcc-12
x86_64                randconfig-075-20241006    gcc-12
x86_64                randconfig-076-20241006    gcc-12
x86_64                               rhel-8.3    gcc-12
x86_64                          rhel-8.3-rust    clang-18
xtensa                            allnoconfig    gcc-14.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
