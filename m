Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3086A94B135
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Aug 2024 22:24:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D1D2980A4A;
	Wed,  7 Aug 2024 20:24:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Y_lbHmbnxu4w; Wed,  7 Aug 2024 20:24:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0547F804FE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723062270;
	bh=VQtoitAgxUX+V55NaMpilIG3VFlna7XV8dMTxDaeAHc=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=bHUY2tGmg6JYSbPPptHWziCfizkaEwYWZd0Ghg4tfw4u1o4RB23EwbOIICmwrFwJk
	 81WrA62MjHipbd201d26JASdghqN8e9TiasprspoH6CE0yTDhHj0UMC7IIyp/PklfZ
	 NZdZ+RopsEWiar7Je4VWsllPu0AoTggTCkMny+BGqUm5Yt5YHAgRkdcSrB5SEQoO/Y
	 MCpD5uYmEE9AyVi5cRTDwyBZ0z6IvBAe48ufka2246DvQCn8vy6JWDZTc1vMYkvF35
	 Yk1DpWuSTB3V6mk4VoDoQzrygVZW2w4OAR3hy6ENC37DjgDBKRYfzvsl0ffDdS6B3i
	 KC0HUWSnQIN6g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0547F804FE;
	Wed,  7 Aug 2024 20:24:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 420F01BF308
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 20:24:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2E1AD400FB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 20:24:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s_DvMsszaJjA for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Aug 2024 20:24:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8F5D240026
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8F5D240026
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8F5D240026
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 20:24:26 +0000 (UTC)
X-CSE-ConnectionGUID: bJXL0F0dRsuqJzfrR78OYg==
X-CSE-MsgGUID: akNbe+SkTe+T3z934dCvOQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11157"; a="12907876"
X-IronPort-AV: E=Sophos;i="6.09,270,1716274800"; d="scan'208";a="12907876"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2024 13:24:26 -0700
X-CSE-ConnectionGUID: CA/8+UzYTWCR6XZPyfQqnQ==
X-CSE-MsgGUID: 3I3fPWuySJqmYZ4n+Hw5MA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,270,1716274800"; d="scan'208";a="57539025"
Received: from unknown (HELO b6bf6c95bbab) ([10.239.97.151])
 by orviesa007.jf.intel.com with ESMTP; 07 Aug 2024 13:24:24 -0700
Received: from kbuild by b6bf6c95bbab with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sbnCn-0005h2-2o
 for intel-wired-lan@lists.osuosl.org; Wed, 07 Aug 2024 20:24:21 +0000
Date: Thu, 08 Aug 2024 04:23:48 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202408080446.tH5Vhcu4-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723062266; x=1754598266;
 h=date:from:to:subject:message-id;
 bh=3wjcA4hJMjMR0bxWOOCiaIHAf+8mEdFXclkc4XEoccU=;
 b=G/e54o9ug3YFofZGRgPt6rlbnwh2wUAIvYL6cFrHjrYKe6NwE0A+77eo
 aaFF0UIaNLqC1ifHc7zMG6E+dCD1LGNeXxCbwDDWsQ5Qw6Hjo+hp4kvgU
 04qp7kzHRVCxlJqLAou99n9ToHg9J3Oo29rSIM+l8pNFOmNCZdaW4UD0X
 /ECgyrYVr/A5fvjAy5ZTzeLmO6fujq09ulk5TxIebntNOEX31b7ywAcSV
 VxrKFCJ65WcnaoDk8t91n2XCbK+vEMO1eWPPqMjwq9qR3reCkmV8Br3D5
 zHqge98PDhsmQrQ/JJDM14cdiG5g+uD5twSWtgjDURgeq+XbsGuBy/W3a
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=G/e54o9u
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 92f718357de83a718a3f63d19eebc442594340a9
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
branch HEAD: 92f718357de83a718a3f63d19eebc442594340a9  idpf: fix UAFs when destroying the queues

elapsed time: 1279m

configs tested: 254
configs skipped: 12

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.2.0
alpha                             allnoconfig   gcc-13.3.0
alpha                            allyesconfig   gcc-13.3.0
alpha                               defconfig   gcc-13.2.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                                 defconfig   gcc-13.2.0
arc                         haps_hs_defconfig   gcc-13.2.0
arc                        nsim_700_defconfig   gcc-13.2.0
arc                   randconfig-001-20240807   gcc-13.2.0
arc                   randconfig-002-20240807   gcc-13.2.0
arm                              allmodconfig   gcc-13.2.0
arm                              allmodconfig   gcc-14.1.0
arm                               allnoconfig   clang-20
arm                               allnoconfig   gcc-13.2.0
arm                              allyesconfig   gcc-13.2.0
arm                              allyesconfig   gcc-14.1.0
arm                                 defconfig   gcc-13.2.0
arm                           h3600_defconfig   gcc-13.2.0
arm                         lpc18xx_defconfig   gcc-13.2.0
arm                            mmp2_defconfig   gcc-14.1.0
arm                       netwinder_defconfig   gcc-14.1.0
arm                          pxa910_defconfig   gcc-13.2.0
arm                   randconfig-001-20240807   clang-20
arm                   randconfig-001-20240807   gcc-13.2.0
arm                   randconfig-002-20240807   gcc-13.2.0
arm                   randconfig-002-20240807   gcc-14.1.0
arm                   randconfig-003-20240807   gcc-13.2.0
arm                   randconfig-003-20240807   gcc-14.1.0
arm                   randconfig-004-20240807   gcc-13.2.0
arm                   randconfig-004-20240807   gcc-14.1.0
arm                           sama7_defconfig   gcc-13.2.0
arm                           spitz_defconfig   gcc-14.1.0
arm                           sunxi_defconfig   gcc-13.2.0
arm64                            allmodconfig   clang-20
arm64                            allmodconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-14.1.0
arm64                               defconfig   gcc-13.2.0
arm64                 randconfig-001-20240807   gcc-13.2.0
arm64                 randconfig-001-20240807   gcc-14.1.0
arm64                 randconfig-002-20240807   gcc-13.2.0
arm64                 randconfig-003-20240807   clang-15
arm64                 randconfig-003-20240807   gcc-13.2.0
arm64                 randconfig-004-20240807   clang-20
arm64                 randconfig-004-20240807   gcc-13.2.0
csky                              allnoconfig   gcc-13.2.0
csky                              allnoconfig   gcc-14.1.0
csky                                defconfig   gcc-13.2.0
csky                  randconfig-001-20240807   gcc-13.2.0
csky                  randconfig-001-20240807   gcc-14.1.0
csky                  randconfig-002-20240807   gcc-13.2.0
csky                  randconfig-002-20240807   gcc-14.1.0
hexagon                          allmodconfig   clang-20
hexagon                           allnoconfig   clang-20
hexagon                          allyesconfig   clang-20
i386                             allmodconfig   clang-18
i386                             allmodconfig   gcc-12
i386                              allnoconfig   clang-18
i386                              allnoconfig   gcc-12
i386                             allyesconfig   clang-18
i386                             allyesconfig   gcc-12
i386         buildonly-randconfig-001-20240807   clang-18
i386         buildonly-randconfig-002-20240807   clang-18
i386         buildonly-randconfig-003-20240807   clang-18
i386         buildonly-randconfig-003-20240807   gcc-12
i386         buildonly-randconfig-004-20240807   clang-18
i386         buildonly-randconfig-005-20240807   clang-18
i386         buildonly-randconfig-006-20240807   clang-18
i386         buildonly-randconfig-006-20240807   gcc-12
i386                                defconfig   clang-18
i386                  randconfig-001-20240807   clang-18
i386                  randconfig-001-20240807   gcc-12
i386                  randconfig-002-20240807   clang-18
i386                  randconfig-003-20240807   clang-18
i386                  randconfig-004-20240807   clang-18
i386                  randconfig-004-20240807   gcc-12
i386                  randconfig-005-20240807   clang-18
i386                  randconfig-005-20240807   gcc-12
i386                  randconfig-006-20240807   clang-18
i386                  randconfig-011-20240807   clang-18
i386                  randconfig-012-20240807   clang-18
i386                  randconfig-012-20240807   gcc-11
i386                  randconfig-013-20240807   clang-18
i386                  randconfig-014-20240807   clang-18
i386                  randconfig-015-20240807   clang-18
i386                  randconfig-016-20240807   clang-18
i386                  randconfig-016-20240807   gcc-12
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-13.2.0
loongarch                         allnoconfig   gcc-14.1.0
loongarch                           defconfig   gcc-13.2.0
loongarch             randconfig-001-20240807   gcc-13.2.0
loongarch             randconfig-001-20240807   gcc-14.1.0
loongarch             randconfig-002-20240807   gcc-13.2.0
loongarch             randconfig-002-20240807   gcc-14.1.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-13.2.0
m68k                              allnoconfig   gcc-14.1.0
m68k                             allyesconfig   gcc-14.1.0
m68k                          amiga_defconfig   gcc-13.2.0
m68k                                defconfig   gcc-13.2.0
m68k                       m5275evb_defconfig   gcc-14.1.0
m68k                        m5307c3_defconfig   gcc-13.2.0
m68k                       m5475evb_defconfig   gcc-14.1.0
m68k                            mac_defconfig   gcc-13.2.0
m68k                        mvme16x_defconfig   gcc-14.1.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-13.2.0
microblaze                        allnoconfig   gcc-14.1.0
microblaze                       allyesconfig   gcc-14.1.0
microblaze                          defconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.2.0
mips                              allnoconfig   gcc-14.1.0
mips                           ip30_defconfig   gcc-14.1.0
nios2                             allnoconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-14.1.0
nios2                               defconfig   gcc-13.2.0
nios2                 randconfig-001-20240807   gcc-13.2.0
nios2                 randconfig-001-20240807   gcc-14.1.0
nios2                 randconfig-002-20240807   gcc-13.2.0
nios2                 randconfig-002-20240807   gcc-14.1.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
openrisc                       virt_defconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc                randconfig-001-20240807   gcc-13.2.0
parisc                randconfig-001-20240807   gcc-14.1.0
parisc                randconfig-002-20240807   gcc-13.2.0
parisc                randconfig-002-20240807   gcc-14.1.0
parisc64                            defconfig   gcc-13.2.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   clang-20
powerpc                          allyesconfig   gcc-14.1.0
powerpc                      arches_defconfig   gcc-14.1.0
powerpc                   currituck_defconfig   gcc-13.2.0
powerpc                 mpc8313_rdb_defconfig   gcc-14.1.0
powerpc                         ps3_defconfig   gcc-13.2.0
powerpc               randconfig-001-20240807   gcc-13.2.0
powerpc               randconfig-003-20240807   gcc-13.2.0
powerpc               randconfig-003-20240807   gcc-14.1.0
powerpc                     redwood_defconfig   gcc-14.1.0
powerpc                     sequoia_defconfig   gcc-14.1.0
powerpc64             randconfig-001-20240807   clang-15
powerpc64             randconfig-001-20240807   gcc-13.2.0
powerpc64             randconfig-002-20240807   gcc-13.2.0
powerpc64             randconfig-002-20240807   gcc-14.1.0
powerpc64             randconfig-003-20240807   gcc-13.2.0
powerpc64             randconfig-003-20240807   gcc-14.1.0
riscv                            allmodconfig   clang-20
riscv                            allmodconfig   gcc-14.1.0
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   clang-20
riscv                            allyesconfig   gcc-14.1.0
riscv                               defconfig   gcc-14.1.0
riscv                 randconfig-001-20240807   clang-20
riscv                 randconfig-001-20240807   gcc-13.2.0
riscv                 randconfig-002-20240807   clang-20
riscv                 randconfig-002-20240807   gcc-13.2.0
s390                             allmodconfig   clang-20
s390                              allnoconfig   clang-20
s390                              allnoconfig   gcc-14.1.0
s390                             allyesconfig   clang-20
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   gcc-14.1.0
s390                  randconfig-001-20240807   gcc-13.2.0
s390                  randconfig-001-20240807   gcc-14.1.0
s390                  randconfig-002-20240807   gcc-13.2.0
s390                  randconfig-002-20240807   gcc-14.1.0
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-13.2.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sh                                  defconfig   gcc-14.1.0
sh                    randconfig-001-20240807   gcc-13.2.0
sh                    randconfig-001-20240807   gcc-14.1.0
sh                    randconfig-002-20240807   gcc-13.2.0
sh                    randconfig-002-20240807   gcc-14.1.0
sh                           se7750_defconfig   gcc-13.2.0
sh                        sh7763rdp_defconfig   gcc-14.1.0
sh                          urquell_defconfig   gcc-13.2.0
sparc                            alldefconfig   gcc-14.1.0
sparc                            allmodconfig   gcc-14.1.0
sparc64                             defconfig   gcc-14.1.0
sparc64               randconfig-001-20240807   gcc-13.2.0
sparc64               randconfig-001-20240807   gcc-14.1.0
sparc64               randconfig-002-20240807   gcc-13.2.0
sparc64               randconfig-002-20240807   gcc-14.1.0
um                               allmodconfig   clang-20
um                               allmodconfig   gcc-13.3.0
um                                allnoconfig   clang-17
um                                allnoconfig   gcc-14.1.0
um                               allyesconfig   gcc-12
um                               allyesconfig   gcc-13.3.0
um                                  defconfig   gcc-14.1.0
um                             i386_defconfig   gcc-13.2.0
um                             i386_defconfig   gcc-14.1.0
um                    randconfig-001-20240807   gcc-12
um                    randconfig-001-20240807   gcc-13.2.0
um                    randconfig-002-20240807   clang-20
um                    randconfig-002-20240807   gcc-13.2.0
um                           x86_64_defconfig   gcc-14.1.0
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240807   clang-18
x86_64       buildonly-randconfig-002-20240807   clang-18
x86_64       buildonly-randconfig-003-20240807   clang-18
x86_64       buildonly-randconfig-004-20240807   clang-18
x86_64       buildonly-randconfig-005-20240807   clang-18
x86_64       buildonly-randconfig-006-20240807   clang-18
x86_64                              defconfig   clang-18
x86_64                              defconfig   gcc-11
x86_64                randconfig-001-20240807   clang-18
x86_64                randconfig-002-20240807   clang-18
x86_64                randconfig-002-20240807   gcc-12
x86_64                randconfig-003-20240807   clang-18
x86_64                randconfig-004-20240807   clang-18
x86_64                randconfig-004-20240807   gcc-12
x86_64                randconfig-005-20240807   clang-18
x86_64                randconfig-005-20240807   gcc-12
x86_64                randconfig-006-20240807   clang-18
x86_64                randconfig-006-20240807   gcc-12
x86_64                randconfig-011-20240807   clang-18
x86_64                randconfig-012-20240807   clang-18
x86_64                randconfig-012-20240807   gcc-12
x86_64                randconfig-013-20240807   clang-18
x86_64                randconfig-013-20240807   gcc-12
x86_64                randconfig-014-20240807   clang-18
x86_64                randconfig-014-20240807   gcc-12
x86_64                randconfig-015-20240807   clang-18
x86_64                randconfig-016-20240807   clang-18
x86_64                randconfig-071-20240807   clang-18
x86_64                randconfig-072-20240807   clang-18
x86_64                randconfig-073-20240807   clang-18
x86_64                randconfig-073-20240807   gcc-12
x86_64                randconfig-074-20240807   clang-18
x86_64                randconfig-075-20240807   clang-18
x86_64                randconfig-075-20240807   gcc-12
x86_64                randconfig-076-20240807   clang-18
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-13.2.0
xtensa                            allnoconfig   gcc-14.1.0
xtensa                       common_defconfig   gcc-14.1.0
xtensa                randconfig-001-20240807   gcc-13.2.0
xtensa                randconfig-001-20240807   gcc-14.1.0
xtensa                randconfig-002-20240807   gcc-13.2.0
xtensa                randconfig-002-20240807   gcc-14.1.0
xtensa                    xip_kc705_defconfig   gcc-14.1.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
