Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 69BD7831E82
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jan 2024 18:36:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E968A83F7E;
	Thu, 18 Jan 2024 17:36:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E968A83F7E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1705599395;
	bh=JhQhal7p4oEK8V4qwO/Er9UpYvgpkw2lYgaVTqfbKV0=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=nGujrdxi6YstAqyyHMwIwBI/i/OAjkis0M/UWmB2wQ3xrort+uuX/Y1ZRrimYhZXp
	 k/Xg6gqP9mWul7Rfn9Z/3U8M+71gRBq+8hK4W574+yEruT3t4mAkzJIfGrFoLrOE17
	 U8gmogwU4/A5o0d4KQaY+eGvEnzCUPoDCHKYZvMRjIbCGSO5kNwGblVAH328d0v1fZ
	 buiKxTGv1OVX9PVt4/s5sAifRutpCjNRXDmAYKI9eb3FMt/ZkS83uBBuH02O3AJhqL
	 ajWzZAgfhphPBtFMOiSCkltru45CMSXK4VCXbPOEq5My8eyIbLR3vBnBPaBqbm8daT
	 nKIyhnu/Fh8jQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hMz8xfLTGWcr; Thu, 18 Jan 2024 17:36:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 97A0583F7C;
	Thu, 18 Jan 2024 17:36:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 97A0583F7C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4DA681BF376
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jan 2024 17:36:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2331140558
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jan 2024 17:36:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2331140558
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u7saZuAb7oZY for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Jan 2024 17:36:26 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B0CAB40391
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jan 2024 17:36:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B0CAB40391
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="400176006"
X-IronPort-AV: E=Sophos;i="6.05,203,1701158400"; d="scan'208";a="400176006"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2024 09:36:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="875127217"
X-IronPort-AV: E=Sophos;i="6.05,203,1701158400"; d="scan'208";a="875127217"
Received: from lkp-server01.sh.intel.com (HELO 961aaaa5b03c) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 18 Jan 2024 09:36:24 -0800
Received: from kbuild by 961aaaa5b03c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rQWJS-0003BW-1P
 for intel-wired-lan@lists.osuosl.org; Thu, 18 Jan 2024 17:36:22 +0000
Date: Fri, 19 Jan 2024 01:35:41 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202401190139.i1m7si5T-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705599386; x=1737135386;
 h=date:from:to:subject:message-id;
 bh=bqqL+IfzzEF14qHXASb0hw+gj9hKQUw85bbqkRibeI0=;
 b=oKygdXaMmYSl4G4NM9rGlX5C2d/ze39+wYQxYbu+eN6/ZBZ+SForm8I4
 XEV8onWpDlpjC6tnHTZdd2aiODhwHLScNZ4pjJ497HK/I346lq6D9ob0l
 +mY94PqL5lvelPaTSdN81l1prjhLv9YiZ3x9R39WSvNhFCgAQviVi7Z08
 Tdelntok4x6qFheWbt+FrBBtAsAOuaz1zalhbCDwRrlqGdyd2oaOWTCY/
 JbOy8OOaoUjm8pv/XcNInFD62Vk+EwJ6jl3oA5XSJhytgXRNKG2ktSA5v
 QyVJgFQF3kxrHjP+F11b0PnrARPcKjeK2i15pfba9H5fmQ9y5/6DTEE8E
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=oKygdXaM
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 5aa465fd0bab9dc492c41cf3d2e6dae4a0cf2ea7
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
branch HEAD: 5aa465fd0bab9dc492c41cf3d2e6dae4a0cf2ea7  i40e: Include types.h to some headers

elapsed time: 1462m

configs tested: 155
configs skipped: 2

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
arc                     haps_hs_smp_defconfig   gcc  
arc                   randconfig-001-20240118   gcc  
arc                   randconfig-002-20240118   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                      footbridge_defconfig   gcc  
arm                       multi_v4t_defconfig   gcc  
arm                   randconfig-001-20240118   clang
arm                   randconfig-002-20240118   clang
arm                   randconfig-003-20240118   clang
arm                   randconfig-004-20240118   clang
arm                        shmobile_defconfig   gcc  
arm                           tegra_defconfig   gcc  
arm                    vt8500_v6_v7_defconfig   clang
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240118   clang
arm64                 randconfig-002-20240118   clang
arm64                 randconfig-003-20240118   clang
arm64                 randconfig-004-20240118   clang
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240118   gcc  
csky                  randconfig-002-20240118   gcc  
hexagon                           allnoconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240118   clang
hexagon               randconfig-002-20240118   clang
i386                             alldefconfig   gcc  
i386                             allmodconfig   clang
i386                              allnoconfig   clang
i386                             allyesconfig   clang
i386         buildonly-randconfig-001-20240118   clang
i386         buildonly-randconfig-002-20240118   clang
i386         buildonly-randconfig-003-20240118   clang
i386         buildonly-randconfig-004-20240118   clang
i386         buildonly-randconfig-005-20240118   clang
i386         buildonly-randconfig-006-20240118   clang
i386                                defconfig   gcc  
i386                  randconfig-001-20240118   clang
i386                  randconfig-002-20240118   clang
i386                  randconfig-003-20240118   clang
i386                  randconfig-004-20240118   clang
i386                  randconfig-005-20240118   clang
i386                  randconfig-006-20240118   clang
i386                  randconfig-011-20240118   gcc  
i386                  randconfig-012-20240118   gcc  
i386                  randconfig-013-20240118   gcc  
i386                  randconfig-014-20240118   gcc  
i386                  randconfig-015-20240118   gcc  
i386                  randconfig-016-20240118   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240118   gcc  
loongarch             randconfig-002-20240118   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                       bvme6000_defconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                              allnoconfig   clang
mips                             allyesconfig   gcc  
mips                          ath79_defconfig   clang
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240118   gcc  
nios2                 randconfig-002-20240118   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
openrisc                 simple_smp_defconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240118   gcc  
parisc                randconfig-002-20240118   gcc  
parisc64                            defconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                    amigaone_defconfig   gcc  
powerpc                        fsp2_defconfig   clang
powerpc                   microwatt_defconfig   clang
powerpc                    mvme5100_defconfig   clang
powerpc               randconfig-001-20240118   clang
powerpc               randconfig-002-20240118   clang
powerpc               randconfig-003-20240118   clang
powerpc64             randconfig-001-20240118   clang
powerpc64             randconfig-002-20240118   clang
powerpc64             randconfig-003-20240118   clang
riscv                             allnoconfig   clang
riscv                 randconfig-001-20240118   clang
riscv                 randconfig-002-20240118   clang
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                  randconfig-001-20240118   gcc  
s390                  randconfig-002-20240118   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                          polaris_defconfig   gcc  
sh                    randconfig-001-20240118   gcc  
sh                    randconfig-002-20240118   gcc  
sparc                            allmodconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64               randconfig-001-20240118   gcc  
sparc64               randconfig-002-20240118   gcc  
um                               allmodconfig   clang
um                               allyesconfig   clang
um                    randconfig-001-20240118   clang
um                    randconfig-002-20240118   clang
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240118   clang
x86_64       buildonly-randconfig-002-20240118   clang
x86_64       buildonly-randconfig-003-20240118   clang
x86_64       buildonly-randconfig-004-20240118   clang
x86_64       buildonly-randconfig-005-20240118   clang
x86_64       buildonly-randconfig-006-20240118   clang
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20240118   gcc  
x86_64                randconfig-002-20240118   gcc  
x86_64                randconfig-003-20240118   gcc  
x86_64                randconfig-004-20240118   gcc  
x86_64                randconfig-005-20240118   gcc  
x86_64                randconfig-006-20240118   gcc  
x86_64                randconfig-011-20240118   clang
x86_64                randconfig-012-20240118   clang
x86_64                randconfig-013-20240118   clang
x86_64                randconfig-014-20240118   clang
x86_64                randconfig-015-20240118   clang
x86_64                randconfig-016-20240118   clang
x86_64                randconfig-071-20240118   clang
x86_64                randconfig-072-20240118   clang
x86_64                randconfig-073-20240118   clang
x86_64                          rhel-8.3-rust   clang
xtensa                randconfig-001-20240118   gcc  
xtensa                randconfig-002-20240118   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
