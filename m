Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0882CB3AAE8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Aug 2025 21:33:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A83D2610CF;
	Thu, 28 Aug 2025 19:33:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GYgVIpG-kBxq; Thu, 28 Aug 2025 19:33:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C5BA8610C5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756409607;
	bh=tcxQvW2/eiwbpa6MBiPqvXLpjyOFmtUsYoxEVNQmcDE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=iU2iZ88vEPMzU7cw+a0e+RKeA8v1UvfhtIt5JLfLwC8ShEOUduUpb+ajTkj0V/6sI
	 uN5GO1fjCjJoyD9GnlYCophxzZNVFqCSPTboi/BPbx8WmdFK0CKz2IAg/kmkOxm1MF
	 0+HEopi+s+da5J8NJ/XBTaijZnNbUkeT6fqogfbARRAMLb+MuFIjJ2qaSjU+Qeolz3
	 0IYY9NiOimZuPzO2dxvlV6fr+vNDzIEHPFMS9H1cpAHjNtUdmWs0dAh8K05jxQfPuy
	 CYW7xkz/o9hGtmF85ngHbMWagR+Ikhs8uj5QXippKfg5nEx2qe7zimWA2p4Q2L5PKc
	 ewuxwWMpoVKag==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C5BA8610C5;
	Thu, 28 Aug 2025 19:33:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id C10B66C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 19:33:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AEE3440D7B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 19:33:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TS4BPWv4bRsu for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Aug 2025 19:33:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org AAFBB40CB3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AAFBB40CB3
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AAFBB40CB3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 19:33:25 +0000 (UTC)
X-CSE-ConnectionGUID: GlB1fzJbTEW5rSesC5Y8PA==
X-CSE-MsgGUID: be8iRC+VSdem3JaI8j0HEg==
X-IronPort-AV: E=McAfee;i="6800,10657,11536"; a="58838199"
X-IronPort-AV: E=Sophos;i="6.18,221,1751266800"; d="scan'208";a="58838199"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 12:33:25 -0700
X-CSE-ConnectionGUID: yqD8qpyxSRazwbjRb4dEDA==
X-CSE-MsgGUID: nWUJNM61TCCyWZi3LTkqhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,221,1751266800"; d="scan'208";a="193859645"
Received: from lkp-server02.sh.intel.com (HELO 4ea60e6ab079) ([10.239.97.151])
 by fmviesa002.fm.intel.com with ESMTP; 28 Aug 2025 12:33:24 -0700
Received: from kbuild by 4ea60e6ab079 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uriN7-000U0R-2V
 for intel-wired-lan@lists.osuosl.org; Thu, 28 Aug 2025 19:33:21 +0000
Date: Fri, 29 Aug 2025 03:33:10 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202508290300.CWDsSjyM-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756409606; x=1787945606;
 h=date:from:to:subject:message-id;
 bh=C8b+fs6vOYggfHF14ZFGVf7WoTElDaJXp9JyMgsKjuY=;
 b=cwuKQx0iH7nsVJhgJOqIIU6dXHM1vtEdjaA/1NjZ4pj9vjEpDfD2P6sr
 MceEPBKWje24aq6YKR6bLGtiGbYcLDl3dznShc4B/sEltJQxXWdGgVVKw
 qdeWPdIshP7Uk+75f85JjlcCXSvm0b80g7KT0ZY3opYfTt/rK/iu+EnNK
 KTumQlNLrNDIj9tb0Q5HzYggBAYq1hrtEKLGij+CqGug447rE+VaFbRSv
 IV47/X2Mbx5csU02MJ6atOF3NCuGE+8E7fTNJPGbiQyWbAOcCVVPWuqDB
 BTkVTAImZ2Rk9oh1LsmUcTWl1KKivhO+xCeW385tGx5lcz5St665GkJNd
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cwuKQx0i
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 e0d2795ab48f6863cdf98e3a0db184b312514f1f
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: e0d2795ab48f6863cdf98e3a0db184b312514f1f  ice: finish virtchnl.c split into rss.c

elapsed time: 1356m

configs tested: 121
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            alldefconfig    gcc-15.1.0
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                      axs103_smp_defconfig    gcc-15.1.0
arc                   randconfig-001-20250828    gcc-8.5.0
arc                   randconfig-002-20250828    gcc-14.3.0
arc                        vdk_hs38_defconfig    gcc-15.1.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    gcc-15.1.0
arm                         axm55xx_defconfig    clang-22
arm                          pxa168_defconfig    clang-19
arm                   randconfig-001-20250828    gcc-14.3.0
arm                   randconfig-002-20250828    gcc-10.5.0
arm                   randconfig-003-20250828    clang-22
arm                   randconfig-004-20250828    gcc-8.5.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250828    clang-22
arm64                 randconfig-002-20250828    clang-22
arm64                 randconfig-003-20250828    gcc-15.1.0
arm64                 randconfig-004-20250828    gcc-15.1.0
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250828    gcc-15.1.0
csky                  randconfig-002-20250828    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-22
hexagon               randconfig-001-20250828    clang-22
hexagon               randconfig-002-20250828    clang-22
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250828    gcc-12
i386        buildonly-randconfig-002-20250828    gcc-12
i386        buildonly-randconfig-003-20250828    gcc-12
i386        buildonly-randconfig-004-20250828    gcc-12
i386        buildonly-randconfig-005-20250828    gcc-12
i386        buildonly-randconfig-006-20250828    clang-20
i386                                defconfig    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch             randconfig-001-20250828    clang-22
loongarch             randconfig-002-20250828    gcc-15.1.0
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                           ci20_defconfig    clang-22
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20250828    gcc-8.5.0
nios2                 randconfig-002-20250828    gcc-8.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
openrisc                            defconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250828    gcc-13.4.0
parisc                randconfig-002-20250828    gcc-13.4.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-22
powerpc                     mpc83xx_defconfig    clang-22
powerpc               randconfig-001-20250828    clang-22
powerpc               randconfig-002-20250828    gcc-8.5.0
powerpc               randconfig-003-20250828    gcc-8.5.0
powerpc64             randconfig-001-20250828    gcc-10.5.0
powerpc64             randconfig-003-20250828    gcc-15.1.0
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                 randconfig-001-20250828    clang-22
riscv                 randconfig-002-20250828    gcc-8.5.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20250828    clang-18
s390                  randconfig-002-20250828    clang-19
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-15.1.0
sh                    randconfig-001-20250828    gcc-12.5.0
sh                    randconfig-002-20250828    gcc-14.3.0
sh                             shx3_defconfig    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250828    gcc-8.5.0
sparc                 randconfig-002-20250828    gcc-12.5.0
sparc64               randconfig-001-20250828    gcc-8.5.0
sparc64               randconfig-002-20250828    clang-20
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-12
um                    randconfig-001-20250828    clang-19
um                    randconfig-002-20250828    gcc-12
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250828    gcc-12
x86_64      buildonly-randconfig-002-20250828    gcc-12
x86_64      buildonly-randconfig-003-20250828    clang-20
x86_64      buildonly-randconfig-004-20250828    gcc-12
x86_64      buildonly-randconfig-005-20250828    gcc-12
x86_64      buildonly-randconfig-006-20250828    gcc-12
x86_64                              defconfig    gcc-11
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250828    gcc-8.5.0
xtensa                randconfig-002-20250828    gcc-14.3.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
