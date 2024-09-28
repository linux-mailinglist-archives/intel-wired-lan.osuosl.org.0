Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9F2898900D
	for <lists+intel-wired-lan@lfdr.de>; Sat, 28 Sep 2024 17:24:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D263D4025F;
	Sat, 28 Sep 2024 15:24:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nycUyPYVQXnm; Sat, 28 Sep 2024 15:24:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 153C44024E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727537064;
	bh=XnPq03wka6mh0He6RoDoEc7liRdYRgYS/V8Zj9NrfeA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=HyH7TO1dTfKA5CCqOqL5NIpQ/3NkFXCKb+qiWbFHMlF3R72VvgGWdE8cQe3cdHLBm
	 7DRR7g0fVF2K3rduvkUdPPuKUogSfH+n5tIxj02fdlbXXcvjkX+B8THWwewOWTQLSn
	 b9QZqgaL1uw1I83kYAR6rclApHq2VtdXDEC1KNeqCUOmG3zGud5m7THA/wBLj50SLR
	 zhnpSA4rxhS9NZD/pM+m4bk6jaCd1jjZJ12WEtHlGCS/Df/PVitcQeCRsFCZ7guVyL
	 Gg88pCvGc9oIB9u18y16UUW5R/sCCg7LLXK673wXIvQKRWXfp1lN2zZMDq5dfsWOy1
	 Ib/9OJ/iaaYQg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 153C44024E;
	Sat, 28 Sep 2024 15:24:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A9A4C1BF329
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Sep 2024 15:24:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 974FD4024E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Sep 2024 15:24:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6x3Ub37ucVXD for <intel-wired-lan@lists.osuosl.org>;
 Sat, 28 Sep 2024 15:24:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org DEA57400F8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DEA57400F8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DEA57400F8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Sep 2024 15:24:19 +0000 (UTC)
X-CSE-ConnectionGUID: ZDmwre3nRqqwwjLJhWDEYw==
X-CSE-MsgGUID: DcGFv0nwQlOzyuNGmE+v+w==
X-IronPort-AV: E=McAfee;i="6700,10204,11209"; a="26180445"
X-IronPort-AV: E=Sophos;i="6.11,160,1725346800"; d="scan'208";a="26180445"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2024 08:24:19 -0700
X-CSE-ConnectionGUID: Idom+0xUTlGlEk8n1N9kNQ==
X-CSE-MsgGUID: T4KLBTkESTCUioCcd+uulw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,160,1725346800"; d="scan'208";a="72505252"
Received: from lkp-server01.sh.intel.com (HELO 53e96f405c61) ([10.239.97.150])
 by fmviesa007.fm.intel.com with ESMTP; 28 Sep 2024 08:24:18 -0700
Received: from kbuild by 53e96f405c61 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1suZIu-000NMq-1A
 for intel-wired-lan@lists.osuosl.org; Sat, 28 Sep 2024 15:24:16 +0000
Date: Sat, 28 Sep 2024 23:24:15 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202409282310.9rcHEWBb-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727537060; x=1759073060;
 h=date:from:to:subject:message-id;
 bh=DXYeFzDhb/i/5SBl/ijiLU+mwj0UmfkrxqjE/HZ7YCg=;
 b=XVUppquQT4JvsHGskj34thzFK4p/FFlOqWe7CAS5dHWgX3HZB9zp8wi4
 DaH/wOiXuZ2sNtFPfh4EjEQSfFEEKqIftzUe5Jmd7iREXXEkwe/6+Evz6
 gd0Jo3GUdyjmD0CfTYrS4Y0byLJ4j+oxNP5OIApfu6E1V2KPOs1Ul25gb
 fCoZLW/WNSJU3mqQifGQvCmMWBCDjMEsksojxb/apAq/gQTZMeUW0JUDz
 xIf+Qbog9fNBU2F2pcKJLbC/jUYOyhczMktrBTKuGAff3XJpvebTsMoZc
 hqjidcLl4E+4csghJdvJu6l1JybewN5i+qBYZOFrIY0pf1JbZF0YainVX
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XVUppquQ
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 b93cdc8f443a8d1641f6cbd72349f7f877db314e
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: b93cdc8f443a8d1641f6cbd72349f7f877db314e  igb: Do not bring the device up after non-fatal error

elapsed time: 986m

configs tested: 197
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.1.0
alpha                            allyesconfig    clang-20
alpha                            allyesconfig    gcc-13.3.0
alpha                               defconfig    gcc-14.1.0
arc                              allmodconfig    clang-20
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-14.1.0
arc                              allyesconfig    clang-20
arc                              allyesconfig    gcc-13.2.0
arc                          axs103_defconfig    clang-20
arc                                 defconfig    gcc-14.1.0
arc                            hsdk_defconfig    clang-20
arc                 nsimosci_hs_smp_defconfig    clang-20
arc                   randconfig-001-20240928    gcc-14.1.0
arc                   randconfig-002-20240928    gcc-14.1.0
arm                              allmodconfig    clang-20
arm                              allmodconfig    gcc-14.1.0
arm                               allnoconfig    gcc-14.1.0
arm                              allyesconfig    clang-20
arm                              allyesconfig    gcc-14.1.0
arm                       aspeed_g5_defconfig    clang-20
arm                                 defconfig    gcc-14.1.0
arm                            hisi_defconfig    clang-20
arm                          moxart_defconfig    clang-20
arm                       multi_v4t_defconfig    clang-20
arm                          pxa168_defconfig    clang-20
arm                   randconfig-001-20240928    gcc-14.1.0
arm                   randconfig-002-20240928    gcc-14.1.0
arm                   randconfig-003-20240928    gcc-14.1.0
arm                   randconfig-004-20240928    gcc-14.1.0
arm                           sama5_defconfig    clang-20
arm                           sama7_defconfig    clang-20
arm                         vf610m4_defconfig    clang-20
arm64                            allmodconfig    clang-20
arm64                             allnoconfig    gcc-14.1.0
arm64                               defconfig    gcc-14.1.0
arm64                 randconfig-001-20240928    gcc-14.1.0
arm64                 randconfig-002-20240928    gcc-14.1.0
arm64                 randconfig-003-20240928    gcc-14.1.0
arm64                 randconfig-004-20240928    gcc-14.1.0
csky                              allnoconfig    gcc-14.1.0
csky                                defconfig    gcc-14.1.0
csky                  randconfig-001-20240928    gcc-14.1.0
csky                  randconfig-002-20240928    gcc-14.1.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    gcc-14.1.0
hexagon                          allyesconfig    clang-20
hexagon                             defconfig    gcc-14.1.0
hexagon               randconfig-001-20240928    gcc-14.1.0
hexagon               randconfig-002-20240928    gcc-14.1.0
i386                             allmodconfig    clang-18
i386                              allnoconfig    clang-18
i386                             allyesconfig    clang-18
i386        buildonly-randconfig-001-20240928    clang-18
i386        buildonly-randconfig-002-20240928    clang-18
i386        buildonly-randconfig-003-20240928    clang-18
i386        buildonly-randconfig-004-20240928    clang-18
i386        buildonly-randconfig-005-20240928    clang-18
i386        buildonly-randconfig-006-20240928    clang-18
i386                                defconfig    clang-18
i386                  randconfig-001-20240928    clang-18
i386                  randconfig-002-20240928    clang-18
i386                  randconfig-003-20240928    clang-18
i386                  randconfig-004-20240928    clang-18
i386                  randconfig-005-20240928    clang-18
i386                  randconfig-006-20240928    clang-18
i386                  randconfig-011-20240928    clang-18
i386                  randconfig-012-20240928    clang-18
i386                  randconfig-013-20240928    clang-18
i386                  randconfig-014-20240928    clang-18
i386                  randconfig-015-20240928    clang-18
i386                  randconfig-016-20240928    clang-18
loongarch                        allmodconfig    gcc-14.1.0
loongarch                         allnoconfig    gcc-14.1.0
loongarch                           defconfig    gcc-14.1.0
loongarch             randconfig-001-20240928    gcc-14.1.0
loongarch             randconfig-002-20240928    gcc-14.1.0
m68k                             allmodconfig    gcc-14.1.0
m68k                              allnoconfig    gcc-14.1.0
m68k                             allyesconfig    gcc-14.1.0
m68k                                defconfig    gcc-14.1.0
m68k                           sun3_defconfig    clang-20
microblaze                       allmodconfig    gcc-14.1.0
microblaze                        allnoconfig    gcc-14.1.0
microblaze                       allyesconfig    gcc-14.1.0
microblaze                          defconfig    gcc-14.1.0
mips                              allnoconfig    gcc-14.1.0
mips                          ath79_defconfig    clang-20
mips                        bcm47xx_defconfig    clang-20
mips                           ip27_defconfig    clang-20
mips                           ip28_defconfig    clang-20
mips                        maltaup_defconfig    clang-20
mips                        qi_lb60_defconfig    clang-20
mips                          rb532_defconfig    clang-20
nios2                             allnoconfig    gcc-14.1.0
nios2                               defconfig    gcc-14.1.0
nios2                 randconfig-001-20240928    gcc-14.1.0
nios2                 randconfig-002-20240928    gcc-14.1.0
openrisc                         alldefconfig    clang-20
openrisc                          allnoconfig    clang-20
openrisc                          allnoconfig    gcc-14.1.0
openrisc                         allyesconfig    gcc-14.1.0
openrisc                            defconfig    gcc-12
parisc                           allmodconfig    gcc-14.1.0
parisc                            allnoconfig    clang-20
parisc                            allnoconfig    gcc-14.1.0
parisc                           allyesconfig    gcc-14.1.0
parisc                              defconfig    gcc-12
parisc                randconfig-001-20240928    gcc-14.1.0
parisc                randconfig-002-20240928    gcc-14.1.0
parisc64                            defconfig    gcc-14.1.0
powerpc                          allmodconfig    gcc-14.1.0
powerpc                           allnoconfig    clang-20
powerpc                           allnoconfig    gcc-14.1.0
powerpc                          allyesconfig    gcc-14.1.0
powerpc                      cm5200_defconfig    clang-20
powerpc                        fsp2_defconfig    clang-20
powerpc                      ppc6xx_defconfig    clang-20
powerpc               randconfig-001-20240928    gcc-14.1.0
powerpc               randconfig-002-20240928    gcc-14.1.0
powerpc               randconfig-003-20240928    gcc-14.1.0
powerpc64             randconfig-001-20240928    gcc-14.1.0
powerpc64             randconfig-002-20240928    gcc-14.1.0
powerpc64             randconfig-003-20240928    gcc-14.1.0
riscv                            allmodconfig    gcc-14.1.0
riscv                             allnoconfig    clang-20
riscv                             allnoconfig    gcc-14.1.0
riscv                            allyesconfig    gcc-14.1.0
riscv                               defconfig    gcc-12
riscv                 randconfig-001-20240928    gcc-14.1.0
riscv                 randconfig-002-20240928    gcc-14.1.0
s390                             allmodconfig    gcc-14.1.0
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.1.0
s390                                defconfig    gcc-12
s390                  randconfig-001-20240928    gcc-14.1.0
s390                  randconfig-002-20240928    gcc-14.1.0
s390                       zfcpdump_defconfig    clang-20
sh                               alldefconfig    clang-20
sh                               allmodconfig    gcc-14.1.0
sh                                allnoconfig    gcc-14.1.0
sh                               allyesconfig    gcc-14.1.0
sh                                  defconfig    gcc-12
sh                ecovec24-romimage_defconfig    clang-20
sh                    randconfig-001-20240928    gcc-14.1.0
sh                    randconfig-002-20240928    gcc-14.1.0
sh                          rsk7201_defconfig    clang-20
sh                           se7343_defconfig    clang-20
sparc                            allmodconfig    gcc-14.1.0
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20240928    gcc-14.1.0
sparc64               randconfig-002-20240928    gcc-14.1.0
um                               allmodconfig    clang-20
um                                allnoconfig    clang-17
um                                allnoconfig    clang-20
um                               allyesconfig    clang-20
um                               allyesconfig    gcc-12
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20240928    gcc-14.1.0
um                    randconfig-002-20240928    gcc-14.1.0
um                           x86_64_defconfig    clang-20
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-18
x86_64                           allyesconfig    clang-18
x86_64      buildonly-randconfig-001-20240928    clang-18
x86_64      buildonly-randconfig-002-20240928    clang-18
x86_64      buildonly-randconfig-003-20240928    clang-18
x86_64      buildonly-randconfig-004-20240928    clang-18
x86_64      buildonly-randconfig-005-20240928    clang-18
x86_64      buildonly-randconfig-006-20240928    clang-18
x86_64                              defconfig    clang-18
x86_64                                  kexec    clang-18
x86_64                                  kexec    gcc-12
x86_64                randconfig-001-20240928    clang-18
x86_64                randconfig-002-20240928    clang-18
x86_64                randconfig-003-20240928    clang-18
x86_64                randconfig-004-20240928    clang-18
x86_64                randconfig-005-20240928    clang-18
x86_64                randconfig-006-20240928    clang-18
x86_64                randconfig-011-20240928    clang-18
x86_64                randconfig-012-20240928    clang-18
x86_64                randconfig-013-20240928    clang-18
x86_64                randconfig-014-20240928    clang-18
x86_64                randconfig-015-20240928    clang-18
x86_64                randconfig-016-20240928    clang-18
x86_64                randconfig-071-20240928    clang-18
x86_64                randconfig-072-20240928    clang-18
x86_64                randconfig-073-20240928    clang-18
x86_64                randconfig-074-20240928    clang-18
x86_64                randconfig-075-20240928    clang-18
x86_64                randconfig-076-20240928    clang-18
x86_64                               rhel-8.3    gcc-12
x86_64                          rhel-8.3-rust    clang-18
xtensa                            allnoconfig    gcc-14.1.0
xtensa                randconfig-001-20240928    gcc-14.1.0
xtensa                randconfig-002-20240928    gcc-14.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
