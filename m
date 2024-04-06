Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C701589AB66
	for <lists+intel-wired-lan@lfdr.de>; Sat,  6 Apr 2024 16:40:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 472A040298;
	Sat,  6 Apr 2024 14:40:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hxRuYzE00les; Sat,  6 Apr 2024 14:40:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 195ED40181
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712414444;
	bh=Jjfkb0KDOyxT12yZSBqm4P9YjImB6l1b0+A80TdSqxE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=5gi+POfOdlKu7ICf4OmBTDCFxbKHp8rBwPPapMHI5RcWsIF4LAl04+ql56ZbB9Unj
	 F+dejj+W8hcA3A0ziZKzpexK+EquD+Dus9DpNs1BiItAQBp3wEEhSfU990qoLMCV7P
	 FDOYZHMVX+bf8T3qtmFKDxD/rN3hgi/mWzsGl9JZ6hIHCB93DFHdeYeYoSwcg36YUu
	 hkX46c7vMQ15f4F5xMLIPyEFBBaOejWDUG9QGBxIJIAxopva+Z3aWCD9Y7ZlhZn+DZ
	 qHsYZlMaPo0OemBSkDc3LLpiZSo2hjs3bNWr063+HXom+BNcSkpgt5wVtW9Pe+m+xS
	 ajbNMpXTQZULg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 195ED40181;
	Sat,  6 Apr 2024 14:40:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 747191BF318
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Apr 2024 14:40:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6C6BF40275
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Apr 2024 14:40:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zCVEp875fAtu for <intel-wired-lan@lists.osuosl.org>;
 Sat,  6 Apr 2024 14:40:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3373040181
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3373040181
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3373040181
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Apr 2024 14:40:39 +0000 (UTC)
X-CSE-ConnectionGUID: IyxlLZq4R9m3YfvtsZTbvQ==
X-CSE-MsgGUID: MmrKgzMSSv6gad4BTM2IWw==
X-IronPort-AV: E=McAfee;i="6600,9927,11036"; a="7593989"
X-IronPort-AV: E=Sophos;i="6.07,183,1708416000"; 
   d="scan'208";a="7593989"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2024 07:40:39 -0700
X-CSE-ConnectionGUID: lnK0atUMSEmYF0kX+ThU0g==
X-CSE-MsgGUID: P4dzxe+CR56V8JKpBrCi5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,183,1708416000"; d="scan'208";a="19355799"
Received: from lkp-server01.sh.intel.com (HELO e61807b1d151) ([10.239.97.150])
 by fmviesa010.fm.intel.com with ESMTP; 06 Apr 2024 07:40:37 -0700
Received: from kbuild by e61807b1d151 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rt7De-0003a4-2e
 for intel-wired-lan@lists.osuosl.org; Sat, 06 Apr 2024 14:40:34 +0000
Date: Sat, 06 Apr 2024 22:39:48 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202404062246.9Oz5TY4b-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712414440; x=1743950440;
 h=date:from:to:subject:message-id;
 bh=xnZt9YAVvDPNj1VYTLwlQQkdtI9gO4aPRMuc6vjq7/8=;
 b=RRDfu7yjmpvsLsO3kyoKEAmADTP6ixEONmWLwTasZVyvoZayxH3cI5mV
 f5HE/FLozieBlvJIB/IhNEEZuqdK1tyaMUo5T4WaTLburo9laAMezkSWN
 HtOcHRa92Q38kI/gnwt9pLaqsWNO13g5b6fNM0I8OiV+Ff7Kh4Hr2h8G7
 FdfEKsTF38shm9CSpahN1+qMPqw7St+Ihz6JsP81rI/v3xK7YP2CgLjkI
 cggX8XXlnBDtXfXb/yhpn3bmo0a/+Pytfdf7Mzr1UbXuERpfy6feCK8+5
 vosUMgUm3wUGKSX0xtaVSw090V1L+UrzeM+1WuQcQyEDIdDm4YbruJwrk
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=RRDfu7yj
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 13a68b9b636e4c0cdd20485e47af33a61c0b4a05
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
branch HEAD: 13a68b9b636e4c0cdd20485e47af33a61c0b4a05  iavf: Fix TC config comparison with existing adapter TC config

elapsed time: 1445m

configs tested: 179
configs skipped: 8

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
arc                   randconfig-001-20240406   gcc  
arc                   randconfig-002-20240406   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                          gemini_defconfig   clang
arm                            mps2_defconfig   clang
arm                        multi_v5_defconfig   gcc  
arm                         nhk8815_defconfig   clang
arm                          pxa168_defconfig   clang
arm                   randconfig-001-20240406   clang
arm                   randconfig-002-20240406   clang
arm                   randconfig-003-20240406   gcc  
arm                   randconfig-004-20240406   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240406   clang
arm64                 randconfig-002-20240406   clang
arm64                 randconfig-003-20240406   clang
arm64                 randconfig-004-20240406   clang
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240406   gcc  
csky                  randconfig-002-20240406   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240406   clang
hexagon               randconfig-002-20240406   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240406   clang
i386         buildonly-randconfig-002-20240406   clang
i386         buildonly-randconfig-003-20240406   gcc  
i386         buildonly-randconfig-004-20240406   clang
i386         buildonly-randconfig-005-20240406   gcc  
i386         buildonly-randconfig-006-20240406   clang
i386                                defconfig   clang
i386                  randconfig-001-20240406   clang
i386                  randconfig-002-20240406   gcc  
i386                  randconfig-003-20240406   clang
i386                  randconfig-004-20240406   clang
i386                  randconfig-005-20240406   clang
i386                  randconfig-006-20240406   gcc  
i386                  randconfig-011-20240406   clang
i386                  randconfig-012-20240406   clang
i386                  randconfig-013-20240406   clang
i386                  randconfig-014-20240406   gcc  
i386                  randconfig-015-20240406   clang
i386                  randconfig-016-20240406   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240406   gcc  
loongarch             randconfig-002-20240406   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                        bcm47xx_defconfig   clang
mips                           ip27_defconfig   gcc  
mips                           mtx1_defconfig   clang
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240406   gcc  
nios2                 randconfig-002-20240406   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240406   gcc  
parisc                randconfig-002-20240406   gcc  
parisc64                            defconfig   gcc  
powerpc                      acadia_defconfig   clang
powerpc                    adder875_defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                   currituck_defconfig   clang
powerpc                       ebony_defconfig   clang
powerpc                      katmai_defconfig   clang
powerpc                      obs600_defconfig   clang
powerpc                      pcm030_defconfig   clang
powerpc               randconfig-001-20240406   clang
powerpc               randconfig-002-20240406   clang
powerpc               randconfig-003-20240406   gcc  
powerpc                      tqm8xx_defconfig   clang
powerpc64             randconfig-001-20240406   gcc  
powerpc64             randconfig-002-20240406   gcc  
powerpc64             randconfig-003-20240406   gcc  
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
riscv                    nommu_k210_defconfig   clang
riscv                 randconfig-001-20240406   gcc  
riscv                 randconfig-002-20240406   gcc  
s390                              allnoconfig   clang
s390                                defconfig   clang
s390                  randconfig-001-20240406   gcc  
s390                  randconfig-002-20240406   gcc  
sh                                allnoconfig   gcc  
sh                                  defconfig   gcc  
sh                               j2_defconfig   gcc  
sh                    randconfig-001-20240406   gcc  
sh                    randconfig-002-20240406   gcc  
sh                      rts7751r2d1_defconfig   gcc  
sh                           se7343_defconfig   gcc  
sh                             sh03_defconfig   gcc  
sh                            titan_defconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                               defconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240406   gcc  
sparc64               randconfig-002-20240406   gcc  
um                               alldefconfig   clang
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                    randconfig-001-20240406   clang
um                    randconfig-002-20240406   gcc  
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240406   clang
x86_64       buildonly-randconfig-002-20240406   gcc  
x86_64       buildonly-randconfig-003-20240406   clang
x86_64       buildonly-randconfig-004-20240406   gcc  
x86_64       buildonly-randconfig-005-20240406   gcc  
x86_64       buildonly-randconfig-006-20240406   clang
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20240406   gcc  
x86_64                randconfig-002-20240406   clang
x86_64                randconfig-003-20240406   gcc  
x86_64                randconfig-004-20240406   clang
x86_64                randconfig-005-20240406   clang
x86_64                randconfig-006-20240406   clang
x86_64                randconfig-011-20240406   gcc  
x86_64                randconfig-012-20240406   clang
x86_64                randconfig-013-20240406   clang
x86_64                randconfig-014-20240406   gcc  
x86_64                randconfig-015-20240406   gcc  
x86_64                randconfig-016-20240406   clang
x86_64                randconfig-071-20240406   clang
x86_64                randconfig-072-20240406   clang
x86_64                randconfig-073-20240406   clang
x86_64                randconfig-074-20240406   clang
x86_64                randconfig-075-20240406   clang
x86_64                randconfig-076-20240406   gcc  
x86_64                          rhel-8.3-rust   clang
xtensa                            allnoconfig   gcc  
xtensa                randconfig-001-20240406   gcc  
xtensa                randconfig-002-20240406   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
