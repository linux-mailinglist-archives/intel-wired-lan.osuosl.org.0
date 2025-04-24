Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 765AEA9B29B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Apr 2025 17:40:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 329E14081A;
	Thu, 24 Apr 2025 15:40:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I5rYLy-G858K; Thu, 24 Apr 2025 15:40:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 10BD140767
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745509228;
	bh=1MhKMhPYqEg9gYNwyVI74rzj+DkcfHv6uI3gjPkAFFM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=cVaBkZTTPV8Y0VRXyP6Bp8ApZbHFthp+Q60N6hcsTqvPy7dEHBAPrB0xpTMuRrQKE
	 8G1ywY0gCvgxC7JLYhDX2NfpY9tEQ65uTD54r/HRPfj/g0wZQdz1+j6rigOo87puOD
	 nim1c2WfNDtY0adScIhz67Nj4WpuJfden+LOCk95OgFOKvytWziLW6k9OA2ZpbEJtZ
	 jIj77/baujfpukczp2+5nui3+AD800XvkpbR2Qi7DaZD84a9NtvA9EilDcA/nqnJZe
	 RduqXH7ky6JMvK/WZuAxgLa+uuZbHrGIlY8+gkcBmuwA9vhJ+GMvhKSrs/4dB781+A
	 3E50mPGeC/kZQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 10BD140767;
	Thu, 24 Apr 2025 15:40:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id C139A28C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Apr 2025 15:40:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BCEA383F79
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Apr 2025 15:40:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cXIBDqDBFQTQ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Apr 2025 15:40:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org AEB4C83F6E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AEB4C83F6E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AEB4C83F6E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Apr 2025 15:40:24 +0000 (UTC)
X-CSE-ConnectionGUID: ks9IgLmIQcuNCEVyXfQJMA==
X-CSE-MsgGUID: KCHIYZv0SLezlsjR03GbRg==
X-IronPort-AV: E=McAfee;i="6700,10204,11413"; a="50972621"
X-IronPort-AV: E=Sophos;i="6.15,236,1739865600"; d="scan'208";a="50972621"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2025 08:40:24 -0700
X-CSE-ConnectionGUID: CNX3oF3sRKOPQzDnRblvow==
X-CSE-MsgGUID: O/6mOhIAS9qRK9oeuNC56Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,236,1739865600"; d="scan'208";a="132959129"
Received: from lkp-server01.sh.intel.com (HELO 050dd05385d1) ([10.239.97.150])
 by fmviesa008.fm.intel.com with ESMTP; 24 Apr 2025 08:40:23 -0700
Received: from kbuild by 050dd05385d1 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1u7ygX-0004HM-0t
 for intel-wired-lan@lists.osuosl.org; Thu, 24 Apr 2025 15:40:21 +0000
Date: Thu, 24 Apr 2025 23:40:10 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202504242301.YvtqASS1-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745509225; x=1777045225;
 h=date:from:to:subject:message-id;
 bh=relB2OzLvSyT7Nf18pxpM4fs9HZhQmHQ8cCKndf7zhk=;
 b=SZxmWIWsLZIAmNyMd/ciOI88W5+obAzYg3YNBvo4TMpnq/ZC6wqP7iQD
 GiW40BbqjRb3JscdMUZlExzZloK9jk+iSnmxxknty/4Q2Neo52MQwSF8l
 d/Ivmda/TXWp+Qm09594gfDv0P1+JIK3hzaP91NXBqP38F7cddvGyyNyZ
 hS9N3NGQDbw2P1SxX8SBPJUvRt/Cm0FHbpB/MdGCNsBrOX8ISPR5c3IZC
 GPtj55NcrHO7r0pcvvcMJ8NWgtnIMz4JotzjN8qnytLTJjBl2R/7SFd9/
 65yjVTl8IjxKiipuFI9PX0tnG24UmTmLYk2p4HeomC2zMQg8NHTYOE4J5
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SZxmWIWs
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 491ef1117c56476f199b481f8c68820fe4c3a7c2
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
branch HEAD: 491ef1117c56476f199b481f8c68820fe4c3a7c2  net: ethernet: mtk_eth_soc: net: revise NETSYSv3 hardware configuration

elapsed time: 2189m

configs tested: 303
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    clang-19
alpha                            allyesconfig    gcc-14.2.0
alpha                               defconfig    gcc-14.2.0
arc                              allmodconfig    clang-19
arc                              allmodconfig    gcc-14.2.0
arc                               allnoconfig    gcc-14.2.0
arc                              allyesconfig    clang-19
arc                              allyesconfig    gcc-14.2.0
arc                                 defconfig    gcc-14.2.0
arc                   randconfig-001-20250424    gcc-14.2.0
arc                   randconfig-001-20250424    gcc-8.5.0
arc                   randconfig-002-20250424    gcc-14.2.0
arm                              allmodconfig    clang-19
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    clang-21
arm                               allnoconfig    gcc-14.2.0
arm                              allyesconfig    clang-19
arm                              allyesconfig    gcc-14.2.0
arm                     am200epdkit_defconfig    clang-21
arm                       aspeed_g4_defconfig    gcc-14.2.0
arm                                 defconfig    gcc-14.2.0
arm                       imx_v4_v5_defconfig    clang-21
arm                             pxa_defconfig    clang-21
arm                   randconfig-001-20250424    gcc-14.2.0
arm                   randconfig-001-20250424    gcc-7.5.0
arm                   randconfig-002-20250424    gcc-14.2.0
arm                   randconfig-002-20250424    gcc-7.5.0
arm                   randconfig-003-20250424    clang-21
arm                   randconfig-003-20250424    gcc-14.2.0
arm                   randconfig-004-20250424    clang-21
arm                   randconfig-004-20250424    gcc-14.2.0
arm                             rpc_defconfig    clang-18
arm                         socfpga_defconfig    gcc-14.2.0
arm                           sunxi_defconfig    gcc-14.2.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-14.2.0
arm64                            allyesconfig    gcc-14.2.0
arm64                               defconfig    gcc-14.2.0
arm64                 randconfig-001-20250424    clang-21
arm64                 randconfig-001-20250424    gcc-14.2.0
arm64                 randconfig-002-20250424    gcc-14.2.0
arm64                 randconfig-002-20250424    gcc-8.5.0
arm64                 randconfig-003-20250424    clang-21
arm64                 randconfig-003-20250424    gcc-14.2.0
arm64                 randconfig-004-20250424    gcc-14.2.0
arm64                 randconfig-004-20250424    gcc-8.5.0
csky                             alldefconfig    gcc-14.2.0
csky                             allmodconfig    gcc-14.2.0
csky                              allnoconfig    gcc-14.2.0
csky                             allyesconfig    gcc-14.2.0
csky                                defconfig    gcc-14.2.0
csky                  randconfig-001-20250423    gcc-13.3.0
csky                  randconfig-001-20250424    gcc-12.4.0
csky                  randconfig-001-20250424    gcc-9.3.0
csky                  randconfig-002-20250423    gcc-11.5.0
csky                  randconfig-002-20250424    gcc-14.2.0
csky                  randconfig-002-20250424    gcc-9.3.0
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    clang-19
hexagon                           allnoconfig    clang-21
hexagon                           allnoconfig    gcc-14.2.0
hexagon                          allyesconfig    clang-19
hexagon                          allyesconfig    clang-21
hexagon                             defconfig    gcc-14.2.0
hexagon               randconfig-001-20250423    clang-21
hexagon               randconfig-001-20250424    clang-21
hexagon               randconfig-001-20250424    gcc-9.3.0
hexagon               randconfig-002-20250423    clang-21
hexagon               randconfig-002-20250424    clang-21
hexagon               randconfig-002-20250424    gcc-9.3.0
i386                             allmodconfig    clang-20
i386                             allmodconfig    gcc-12
i386                              allnoconfig    clang-20
i386                              allnoconfig    gcc-12
i386                             allyesconfig    clang-20
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250424    gcc-12
i386        buildonly-randconfig-002-20250424    clang-20
i386        buildonly-randconfig-002-20250424    gcc-12
i386        buildonly-randconfig-003-20250424    clang-20
i386        buildonly-randconfig-003-20250424    gcc-12
i386        buildonly-randconfig-004-20250424    clang-20
i386        buildonly-randconfig-004-20250424    gcc-12
i386        buildonly-randconfig-005-20250424    gcc-12
i386        buildonly-randconfig-006-20250424    clang-20
i386        buildonly-randconfig-006-20250424    gcc-12
i386                                defconfig    clang-20
i386                  randconfig-001-20250424    clang-20
i386                  randconfig-002-20250424    clang-20
i386                  randconfig-003-20250424    clang-20
i386                  randconfig-004-20250424    clang-20
i386                  randconfig-005-20250424    clang-20
i386                  randconfig-006-20250424    clang-20
i386                  randconfig-007-20250424    clang-20
i386                  randconfig-011-20250424    gcc-12
i386                  randconfig-012-20250424    gcc-12
i386                  randconfig-013-20250424    gcc-12
i386                  randconfig-014-20250424    gcc-12
i386                  randconfig-015-20250424    gcc-12
i386                  randconfig-016-20250424    gcc-12
i386                  randconfig-017-20250424    gcc-12
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch                        allyesconfig    gcc-14.2.0
loongarch                           defconfig    gcc-14.2.0
loongarch             randconfig-001-20250423    gcc-14.2.0
loongarch             randconfig-001-20250424    gcc-14.2.0
loongarch             randconfig-001-20250424    gcc-9.3.0
loongarch             randconfig-002-20250423    gcc-14.2.0
loongarch             randconfig-002-20250424    gcc-12.4.0
loongarch             randconfig-002-20250424    gcc-9.3.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
m68k                                defconfig    gcc-14.2.0
m68k                            mac_defconfig    gcc-14.2.0
m68k                        stmark2_defconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
microblaze                          defconfig    gcc-14.2.0
mips                             allmodconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                             allyesconfig    gcc-14.2.0
mips                        bcm63xx_defconfig    gcc-14.2.0
mips                           ci20_defconfig    clang-21
mips                           ip32_defconfig    gcc-14.2.0
mips                     loongson1b_defconfig    clang-21
mips                   sb1250_swarm_defconfig    gcc-14.2.0
mips                           xway_defconfig    clang-21
nios2                            alldefconfig    gcc-14.2.0
nios2                            allmodconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-14.2.0
nios2                            allyesconfig    gcc-14.2.0
nios2                               defconfig    gcc-14.2.0
nios2                 randconfig-001-20250423    gcc-11.5.0
nios2                 randconfig-001-20250424    gcc-10.5.0
nios2                 randconfig-001-20250424    gcc-9.3.0
nios2                 randconfig-002-20250423    gcc-9.3.0
nios2                 randconfig-002-20250424    gcc-10.5.0
nios2                 randconfig-002-20250424    gcc-9.3.0
openrisc                         allmodconfig    gcc-14.2.0
openrisc                          allnoconfig    clang-21
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
openrisc                            defconfig    gcc-12
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    clang-21
parisc                            allnoconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                              defconfig    gcc-12
parisc                randconfig-001-20250423    gcc-12.4.0
parisc                randconfig-001-20250424    gcc-9.3.0
parisc                randconfig-002-20250423    gcc-12.4.0
parisc                randconfig-002-20250424    gcc-7.5.0
parisc                randconfig-002-20250424    gcc-9.3.0
parisc64                            defconfig    gcc-14.2.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    clang-21
powerpc                           allnoconfig    gcc-14.2.0
powerpc                          allyesconfig    clang-21
powerpc                          allyesconfig    gcc-14.2.0
powerpc                     asp8347_defconfig    clang-21
powerpc                      ep88xc_defconfig    gcc-14.2.0
powerpc                 mpc834x_itx_defconfig    gcc-14.2.0
powerpc                     mpc83xx_defconfig    clang-21
powerpc                  mpc866_ads_defconfig    clang-21
powerpc                      pcm030_defconfig    clang-21
powerpc                      pmac32_defconfig    clang-21
powerpc                      ppc44x_defconfig    gcc-14.2.0
powerpc                       ppc64_defconfig    clang-21
powerpc               randconfig-001-20250423    gcc-9.3.0
powerpc               randconfig-001-20250424    clang-21
powerpc               randconfig-001-20250424    gcc-9.3.0
powerpc               randconfig-002-20250423    clang-21
powerpc               randconfig-002-20250424    clang-17
powerpc               randconfig-002-20250424    gcc-9.3.0
powerpc               randconfig-003-20250423    gcc-9.3.0
powerpc               randconfig-003-20250424    clang-21
powerpc               randconfig-003-20250424    gcc-9.3.0
powerpc                     taishan_defconfig    clang-17
powerpc                     tqm8540_defconfig    clang-21
powerpc                        warp_defconfig    clang-21
powerpc                        warp_defconfig    gcc-14.2.0
powerpc64             randconfig-001-20250423    gcc-5.5.0
powerpc64             randconfig-001-20250424    clang-21
powerpc64             randconfig-001-20250424    gcc-9.3.0
powerpc64             randconfig-002-20250423    gcc-7.5.0
powerpc64             randconfig-002-20250424    clang-21
powerpc64             randconfig-002-20250424    gcc-9.3.0
powerpc64             randconfig-003-20250423    clang-18
powerpc64             randconfig-003-20250424    clang-21
powerpc64             randconfig-003-20250424    gcc-9.3.0
riscv                            allmodconfig    clang-21
riscv                            allmodconfig    gcc-14.2.0
riscv                             allnoconfig    clang-21
riscv                             allnoconfig    gcc-14.2.0
riscv                            allyesconfig    clang-16
riscv                            allyesconfig    gcc-14.2.0
riscv                               defconfig    gcc-12
riscv                 randconfig-001-20250424    clang-21
riscv                 randconfig-002-20250424    clang-21
s390                             allmodconfig    clang-18
s390                             allmodconfig    gcc-14.2.0
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-14.2.0
s390                                defconfig    gcc-12
s390                  randconfig-001-20250424    clang-21
s390                  randconfig-001-20250424    gcc-9.3.0
s390                  randconfig-002-20250424    clang-21
s390                  randconfig-002-20250424    gcc-9.3.0
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                         ap325rxa_defconfig    gcc-14.2.0
sh                                  defconfig    gcc-12
sh                        dreamcast_defconfig    clang-21
sh                         ecovec24_defconfig    gcc-14.2.0
sh                        edosk7760_defconfig    gcc-14.2.0
sh                            hp6xx_defconfig    gcc-14.2.0
sh                          kfr2r09_defconfig    gcc-14.2.0
sh                          polaris_defconfig    gcc-14.2.0
sh                          r7780mp_defconfig    gcc-14.2.0
sh                    randconfig-001-20250424    clang-21
sh                    randconfig-001-20250424    gcc-12.4.0
sh                    randconfig-002-20250424    clang-21
sh                    randconfig-002-20250424    gcc-6.5.0
sh                          sdk7780_defconfig    gcc-14.2.0
sh                           se7619_defconfig    gcc-14.2.0
sh                           se7712_defconfig    gcc-14.2.0
sh                           se7721_defconfig    gcc-14.2.0
sh                           se7722_defconfig    gcc-14.2.0
sh                           se7724_defconfig    clang-21
sh                             sh03_defconfig    gcc-14.2.0
sh                          urquell_defconfig    gcc-14.2.0
sparc                            alldefconfig    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                            allyesconfig    gcc-14.2.0
sparc                 randconfig-001-20250424    clang-21
sparc                 randconfig-001-20250424    gcc-10.3.0
sparc                 randconfig-002-20250424    clang-21
sparc                 randconfig-002-20250424    gcc-11.5.0
sparc64                          allmodconfig    gcc-14.2.0
sparc64                          allyesconfig    gcc-14.2.0
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20250424    clang-21
sparc64               randconfig-001-20250424    gcc-9.3.0
sparc64               randconfig-002-20250424    clang-21
sparc64               randconfig-002-20250424    gcc-7.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    clang-19
um                               allyesconfig    gcc-12
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250424    clang-21
um                    randconfig-002-20250424    clang-21
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250424    gcc-12
x86_64      buildonly-randconfig-002-20250424    clang-20
x86_64      buildonly-randconfig-002-20250424    gcc-12
x86_64      buildonly-randconfig-003-20250424    gcc-12
x86_64      buildonly-randconfig-004-20250424    clang-20
x86_64      buildonly-randconfig-004-20250424    gcc-12
x86_64      buildonly-randconfig-005-20250424    clang-20
x86_64      buildonly-randconfig-005-20250424    gcc-12
x86_64      buildonly-randconfig-006-20250424    gcc-12
x86_64                              defconfig    clang-20
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20250424    gcc-12
x86_64                randconfig-002-20250424    gcc-12
x86_64                randconfig-003-20250424    gcc-12
x86_64                randconfig-004-20250424    gcc-12
x86_64                randconfig-005-20250424    gcc-12
x86_64                randconfig-006-20250424    gcc-12
x86_64                randconfig-007-20250424    gcc-12
x86_64                randconfig-008-20250424    gcc-12
x86_64                randconfig-071-20250424    clang-20
x86_64                randconfig-072-20250424    clang-20
x86_64                randconfig-073-20250424    clang-20
x86_64                randconfig-074-20250424    clang-20
x86_64                randconfig-075-20250424    clang-20
x86_64                randconfig-076-20250424    clang-20
x86_64                randconfig-077-20250424    clang-20
x86_64                randconfig-078-20250424    clang-20
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    clang-18
x86_64                         rhel-9.4-kunit    clang-18
x86_64                           rhel-9.4-ltp    clang-18
x86_64                          rhel-9.4-rust    clang-18
xtensa                            allnoconfig    gcc-14.2.0
xtensa                           allyesconfig    gcc-14.2.0
xtensa                  cadence_csp_defconfig    gcc-14.2.0
xtensa                          iss_defconfig    gcc-14.2.0
xtensa                randconfig-001-20250424    clang-21
xtensa                randconfig-001-20250424    gcc-14.2.0
xtensa                randconfig-002-20250424    clang-21
xtensa                randconfig-002-20250424    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
