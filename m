Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A1C785517A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Feb 2024 19:06:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2C23F41826;
	Wed, 14 Feb 2024 18:06:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0ft5ZezSHnr3; Wed, 14 Feb 2024 18:06:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5C92741839
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707933999;
	bh=8f3FgOrXyx1ng9W68f8VtZFYOyp1eh2q/ODGL931J1Y=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=NqucN3/UXJ3a1SUFQGqGk6RaFzgsM24TE2EmAvNDCwsD5aATPcngE7StNiO7d1ItI
	 ttvyvIBNaDvdQayZDR7sho2elrYuLUe7U6MTOwS1zpLZTiya0sF76q34lTQmWUKtm0
	 HlXJDSPkOvMbmJQcvFAbXgoHUT5SjGVJgPH5YhCTZ2/Hkp5GceTWaJv5OYq6mykdFI
	 HG9qCTzFEV9ljErbiMxGmQoxiWVEJdJ2Ru7EBGkE06gw97z1Pbxuhi4iHbun6wm9bC
	 7PbyJSDo3OSz9pZlqLUdXDqXhS1qyl2ZJMgDn6YgaQRzTbZ0jk5QmK/Fmnnj9gKlvd
	 Q98B1AwpKISaw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5C92741839;
	Wed, 14 Feb 2024 18:06:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B11CD1BF57C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 18:06:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9B19C607B5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 18:06:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3e0vzK4gAI80 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Feb 2024 18:06:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 27EB0607B4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 27EB0607B4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 27EB0607B4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 18:06:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10984"; a="27444990"
X-IronPort-AV: E=Sophos;i="6.06,160,1705392000"; d="scan'208";a="27444990"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2024 10:06:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,160,1705392000"; 
   d="scan'208";a="3436946"
Received: from lkp-server01.sh.intel.com (HELO 323e10984596) ([10.239.97.150])
 by fmviesa008.fm.intel.com with ESMTP; 14 Feb 2024 10:06:32 -0800
Received: from kbuild by 323e10984596 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1raJeP-00007j-2q
 for intel-wired-lan@lists.osuosl.org; Wed, 14 Feb 2024 18:06:29 +0000
Date: Thu, 15 Feb 2024 02:06:08 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202402150207.tRjR3UP5-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707933995; x=1739469995;
 h=date:from:to:subject:message-id;
 bh=RAe21LD7Q7g5XWVuqVS8tPoaqfw6kvlPa/on9RNKwSk=;
 b=OaSt2hUn9QU4Fu9vbPwu0merChftixw3mpuPzZx9Kn/m88qm5IBeDYAL
 avuFWrhpMMH6fNhc7KMJrRpE4IXE3y26reZjV/X0HJzy2bAQfuBDNjNhn
 Cfna4z4C1Ufo/qcoJNqoVLXv9fSzp2n+Be/cY9Hc6PLM9+ZZczt9NW42j
 iEGn42g9By1cV4SIL/haeowFMbeQN22VsKSfT4Sss+Q8cgJhlAHlE7CEE
 ssoc4yBRnq7ow9MX0Lz1FJlqKcf+/zPrg5uyRmM+etf0HeXq5qhmD3xJJ
 UxuFUvXeTpAkSEkERZDtWsEcWK5pWIWzO9sIAHg2yOqrCncsv76eNvvVS
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OaSt2hUn
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 bed90b06b6812d9c8c848414b090ddf38f0e6cc1
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 10GbE
branch HEAD: bed90b06b6812d9c8c848414b090ddf38f0e6cc1  net: phy: aquantia: clear PMD Global Transmit Disable bit during init

elapsed time: 1594m

configs tested: 184
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                     nsimosci_hs_defconfig   gcc  
arc                   randconfig-001-20240214   gcc  
arc                   randconfig-002-20240214   gcc  
arc                    vdk_hs38_smp_defconfig   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                     am200epdkit_defconfig   gcc  
arm                                 defconfig   clang
arm                        keystone_defconfig   gcc  
arm                   randconfig-001-20240214   clang
arm                   randconfig-002-20240214   gcc  
arm                   randconfig-003-20240214   clang
arm                   randconfig-004-20240214   clang
arm                           sunxi_defconfig   gcc  
arm                    vt8500_v6_v7_defconfig   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240214   clang
arm64                 randconfig-002-20240214   clang
arm64                 randconfig-003-20240214   gcc  
arm64                 randconfig-004-20240214   clang
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240214   gcc  
csky                  randconfig-002-20240214   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240214   clang
hexagon               randconfig-002-20240214   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240214   clang
i386         buildonly-randconfig-002-20240214   clang
i386         buildonly-randconfig-003-20240214   clang
i386         buildonly-randconfig-004-20240214   gcc  
i386         buildonly-randconfig-005-20240214   gcc  
i386         buildonly-randconfig-006-20240214   clang
i386                                defconfig   clang
i386                  randconfig-001-20240214   clang
i386                  randconfig-002-20240214   clang
i386                  randconfig-003-20240214   clang
i386                  randconfig-004-20240214   gcc  
i386                  randconfig-005-20240214   clang
i386                  randconfig-006-20240214   gcc  
i386                  randconfig-011-20240214   clang
i386                  randconfig-012-20240214   gcc  
i386                  randconfig-013-20240214   gcc  
i386                  randconfig-014-20240214   gcc  
i386                  randconfig-015-20240214   clang
i386                  randconfig-016-20240214   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240214   gcc  
loongarch             randconfig-002-20240214   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                        m5272c3_defconfig   gcc  
m68k                       m5275evb_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                         bigsur_defconfig   gcc  
mips                  decstation_64_defconfig   gcc  
mips                 decstation_r4k_defconfig   gcc  
mips                      pic32mzda_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240214   gcc  
nios2                 randconfig-002-20240214   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240214   gcc  
parisc                randconfig-002-20240214   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                        icon_defconfig   gcc  
powerpc                 mpc8313_rdb_defconfig   gcc  
powerpc               randconfig-001-20240214   clang
powerpc               randconfig-002-20240214   clang
powerpc               randconfig-003-20240214   clang
powerpc                      walnut_defconfig   gcc  
powerpc                        warp_defconfig   gcc  
powerpc                         wii_defconfig   gcc  
powerpc64             randconfig-001-20240214   clang
powerpc64             randconfig-002-20240214   clang
powerpc64             randconfig-003-20240214   clang
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
riscv                 randconfig-001-20240214   clang
riscv                 randconfig-002-20240214   clang
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240214   clang
s390                  randconfig-002-20240214   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                        dreamcast_defconfig   gcc  
sh                ecovec24-romimage_defconfig   gcc  
sh                         ecovec24_defconfig   gcc  
sh                          landisk_defconfig   gcc  
sh                    randconfig-001-20240214   gcc  
sh                    randconfig-002-20240214   gcc  
sh                          rsk7203_defconfig   gcc  
sh                          sdk7780_defconfig   gcc  
sh                           se7705_defconfig   gcc  
sh                           se7722_defconfig   gcc  
sh                           se7724_defconfig   gcc  
sh                     sh7710voipgw_defconfig   gcc  
sh                            shmin_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240214   gcc  
sparc64               randconfig-002-20240214   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                    randconfig-001-20240214   clang
um                    randconfig-002-20240214   gcc  
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240214   gcc  
x86_64       buildonly-randconfig-003-20240214   gcc  
x86_64       buildonly-randconfig-004-20240214   gcc  
x86_64       buildonly-randconfig-005-20240214   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-002-20240214   gcc  
x86_64                randconfig-004-20240214   gcc  
x86_64                randconfig-013-20240214   gcc  
x86_64                randconfig-014-20240214   gcc  
x86_64                randconfig-071-20240214   gcc  
x86_64                randconfig-073-20240214   gcc  
x86_64                randconfig-076-20240214   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa                randconfig-001-20240214   gcc  
xtensa                randconfig-002-20240214   gcc  
xtensa                         virt_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
