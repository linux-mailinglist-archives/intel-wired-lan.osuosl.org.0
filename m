Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C8C40991C2C
	for <lists+intel-wired-lan@lfdr.de>; Sun,  6 Oct 2024 04:36:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 78D66606D9;
	Sun,  6 Oct 2024 02:36:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qiNZwFGpY8ZD; Sun,  6 Oct 2024 02:36:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 38251606E0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728182202;
	bh=KCeToJaUidROB87aLX+DFIXMq0wF0sXUxf2gXwKD6MQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=m1aW1yrAr1BFK+ZDgv2n/5TH5bk3T7GDqy3uDqUMRD7QLMV2XiyCiw08ntmMFDE2K
	 L4y0v7444IpsjGpKetz1c5KVyX7IKC9gRyWpIQOMJi4ka7vEd908461CD6TOzFUHuQ
	 QNwfaGkp/fZeoOfqd30o6iYT2pmOJPQaffz2S+sZYUEnBmd9wvqxBLRpiA4yDcgGRP
	 sj5ORYAKrHVQFta+65ujNhlKXul9dT59guaEEnPSDAumsD/eRvq+9KcQl7mr/Q5ca+
	 PSffECE445I0lTO6vBD/BqGgXUnDEU8ilH97QeAOEhuU0VoEzpaXUX+7duECxieIum
	 NdUy2TwB9eWpg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 38251606E0;
	Sun,  6 Oct 2024 02:36:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EAF631BF42D
 for <intel-wired-lan@lists.osuosl.org>; Sun,  6 Oct 2024 02:36:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D9021401D2
 for <intel-wired-lan@lists.osuosl.org>; Sun,  6 Oct 2024 02:36:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dmueTJDyrcCK for <intel-wired-lan@lists.osuosl.org>;
 Sun,  6 Oct 2024 02:36:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 25B1F400EA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 25B1F400EA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 25B1F400EA
 for <intel-wired-lan@lists.osuosl.org>; Sun,  6 Oct 2024 02:36:37 +0000 (UTC)
X-CSE-ConnectionGUID: 0bPFTzcnQEi65HRzX1npoQ==
X-CSE-MsgGUID: 1BpNjF4uRRO2h8yuoqjRBQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11216"; a="38753001"
X-IronPort-AV: E=Sophos;i="6.11,181,1725346800"; d="scan'208";a="38753001"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2024 19:36:37 -0700
X-CSE-ConnectionGUID: PIB1dXKvSKq58McnlwhVcQ==
X-CSE-MsgGUID: vwXaua24TwWDrHx5Oyw6ww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,181,1725346800"; d="scan'208";a="75435683"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
 by fmviesa010.fm.intel.com with ESMTP; 05 Oct 2024 19:36:36 -0700
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sxH8M-0003YK-0e
 for intel-wired-lan@lists.osuosl.org; Sun, 06 Oct 2024 02:36:34 +0000
Date: Sun, 06 Oct 2024 10:36:29 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202410061022.Ak8cXPbT-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728182199; x=1759718199;
 h=date:from:to:subject:message-id;
 bh=0JCGDTIJ/mMdtVs9kxwhopDOzZwi5ibFDYjpmoGHEvA=;
 b=azf6YnacN6tcaILo7uUJPrK0ACz3/7OhkPmI+/PRpYEL1NKRv2/KjNyf
 j1EBW5FcH2gbcnMbZCKyl5LUikQINPk2CSy/5Dgrgpsnn/AvNdQql4ByU
 Wpe8ZwG9CqSG6gq8xwZH/cPuvWib8E7/Z3PofO+qQ33DhA/c0HpniwErG
 L9xD/YaFPWpfQgXHpX3w7HNeQhZGHgcm5ksz12mfzbL+s/p+bnxfav2+X
 bC6F6wGTXJ6H4aPq6NryWWyz6hN2g/kUIV04Iw3tjWF6QyGvGMNSiJopu
 KdI8A2YYS0BAePq9aeX6KQmbj+0yELsHLHxrDRox9Rz+VKikUp9bdt8P+
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=azf6Ynac
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 3f35121ab5f6624fb7ec54451994934c568afca3
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
branch HEAD: 3f35121ab5f6624fb7ec54451994934c568afca3  igc: remove autoneg parameter from igc_mac_info

elapsed time: 1628m

configs tested: 117
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-13.3.0
alpha                            allyesconfig    gcc-13.3.0
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-13.2.0
arc                              allyesconfig    gcc-13.2.0
arc                   randconfig-001-20241006    gcc-13.2.0
arc                   randconfig-002-20241006    gcc-13.2.0
arc                           tb10x_defconfig    gcc-13.2.0
arm                               allnoconfig    clang-20
arm                              allyesconfig    gcc-14.1.0
arm                        neponset_defconfig    gcc-14.1.0
arm                   randconfig-001-20241006    gcc-14.1.0
arm                   randconfig-002-20241006    clang-14
arm                   randconfig-003-20241006    gcc-14.1.0
arm                   randconfig-004-20241006    gcc-14.1.0
arm                             rpc_defconfig    clang-20
arm                        spear3xx_defconfig    clang-16
arm64                             allnoconfig    gcc-14.1.0
arm64                 randconfig-001-20241006    gcc-14.1.0
arm64                 randconfig-002-20241006    gcc-14.1.0
arm64                 randconfig-003-20241006    gcc-14.1.0
arm64                 randconfig-004-20241006    gcc-14.1.0
csky                              allnoconfig    gcc-14.1.0
csky                  randconfig-001-20241006    gcc-14.1.0
csky                  randconfig-002-20241006    gcc-14.1.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    clang-20
hexagon                          allyesconfig    clang-20
hexagon               randconfig-001-20241006    clang-20
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
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
m68k                             allmodconfig    gcc-14.1.0
m68k                              allnoconfig    gcc-14.1.0
m68k                             allyesconfig    gcc-14.1.0
microblaze                       allmodconfig    gcc-14.1.0
microblaze                        allnoconfig    gcc-14.1.0
mips                              allnoconfig    gcc-14.1.0
mips                       bmips_be_defconfig    gcc-14.1.0
mips                           jazz_defconfig    clang-20
mips                     loongson2k_defconfig    gcc-13.2.0
mips                        maltaup_defconfig    clang-20
mips                          rb532_defconfig    clang-20
nios2                         10m50_defconfig    gcc-14.1.0
nios2                             allnoconfig    gcc-14.1.0
openrisc                          allnoconfig    gcc-14.1.0
openrisc                         allyesconfig    gcc-14.1.0
openrisc                            defconfig    gcc-14.1.0
parisc                           allmodconfig    gcc-14.1.0
parisc                            allnoconfig    gcc-14.1.0
parisc                           allyesconfig    gcc-14.1.0
parisc                              defconfig    gcc-14.1.0
powerpc                           allnoconfig    gcc-14.1.0
powerpc                     ep8248e_defconfig    gcc-14.1.0
powerpc                   microwatt_defconfig    gcc-13.2.0
powerpc                 mpc837x_rdb_defconfig    gcc-14.1.0
powerpc                      ppc64e_defconfig    gcc-14.1.0
riscv                             allnoconfig    gcc-14.1.0
riscv                               defconfig    clang-20
s390                             allmodconfig    clang-20
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.1.0
s390                                defconfig    clang-20
sh                               allmodconfig    gcc-14.1.0
sh                                allnoconfig    gcc-14.1.0
sh                               allyesconfig    gcc-14.1.0
sh                                  defconfig    gcc-14.1.0
sh                   rts7751r2dplus_defconfig    gcc-14.1.0
sparc                            allmodconfig    gcc-14.1.0
sparc64                             defconfig    gcc-14.1.0
um                                allnoconfig    clang-17
um                                  defconfig    clang-20
um                             i386_defconfig    gcc-12
um                           x86_64_defconfig    clang-15
x86_64                            allnoconfig    clang-18
x86_64                           allyesconfig    clang-18
x86_64      buildonly-randconfig-001-20241006    clang-18
x86_64      buildonly-randconfig-002-20241006    gcc-12
x86_64      buildonly-randconfig-003-20241006    gcc-12
x86_64      buildonly-randconfig-004-20241006    clang-18
x86_64      buildonly-randconfig-005-20241006    gcc-12
x86_64      buildonly-randconfig-006-20241006    gcc-12
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-18
x86_64                randconfig-001-20241006    clang-18
x86_64                randconfig-002-20241006    gcc-12
x86_64                randconfig-003-20241006    gcc-12
x86_64                randconfig-004-20241006    clang-18
x86_64                randconfig-005-20241006    clang-18
x86_64                randconfig-006-20241006    gcc-12
x86_64                randconfig-011-20241006    gcc-12
x86_64                randconfig-012-20241006    gcc-12
x86_64                randconfig-013-20241006    clang-18
x86_64                               rhel-8.3    gcc-12
x86_64                          rhel-8.3-rust    clang-18
xtensa                            allnoconfig    gcc-14.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
