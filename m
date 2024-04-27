Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 445BE8B4752
	for <lists+intel-wired-lan@lfdr.de>; Sat, 27 Apr 2024 19:51:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 639E060674;
	Sat, 27 Apr 2024 17:51:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1M3k-YCI-MMx; Sat, 27 Apr 2024 17:51:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2B5CB60635
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714240313;
	bh=ms9ITr5WnzTs3yc63qLYBPsR+efiZaFPFlaIbGnLP2k=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=P1FboPWCdGNxzJKX1+P3wRSY2Xb/anghff8cRcU2KX4wEyLvDAjVlwyjDIZbSOSNv
	 COcvIvbKxYPyIoG//MMpgG8g92j335OkwdvdibhSx0kZLv3av8fUI3uLy8XLrWobmp
	 0PnYauHbCPajVsdtwPsMJx6yQdDjfHDz+MZxtPNGfhEwE4UvUysGGWJP49aH/zMnLj
	 xhZHo9ZfrnytEpZd2tn7Hxc2bcbALkk+fKIxMCh6XGkn5ouYOk4/SasKG9fEdsJUlh
	 i3hfId+Sj640tFGEONL5hGLNIGX8DVndjIg7yGiJP+gNCcNj9mc4a2JFmWzQ6tYgjI
	 IT2gU80TcxNHw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2B5CB60635;
	Sat, 27 Apr 2024 17:51:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8FAEB1BF5AA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Apr 2024 17:51:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7BC666060F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Apr 2024 17:51:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6q9B5U4CN9Ie for <intel-wired-lan@lists.osuosl.org>;
 Sat, 27 Apr 2024 17:51:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 29EC06060D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 29EC06060D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 29EC06060D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Apr 2024 17:51:48 +0000 (UTC)
X-CSE-ConnectionGUID: dCS4QmkGRv2eugqaXSSDbQ==
X-CSE-MsgGUID: umYbXQ7ESzO4q4/HfU1/bw==
X-IronPort-AV: E=McAfee;i="6600,9927,11057"; a="13744152"
X-IronPort-AV: E=Sophos;i="6.07,235,1708416000"; d="scan'208";a="13744152"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2024 10:51:48 -0700
X-CSE-ConnectionGUID: Lik7zoUeTQOUkVs+0Qo1Rw==
X-CSE-MsgGUID: p0EdPjTUQ9qAAwUp4zmWew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,235,1708416000"; d="scan'208";a="56903185"
Received: from lkp-server01.sh.intel.com (HELO e434dd42e5a1) ([10.239.97.150])
 by fmviesa001.fm.intel.com with ESMTP; 27 Apr 2024 10:51:47 -0700
Received: from kbuild by e434dd42e5a1 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1s0mDB-0005M8-18
 for intel-wired-lan@lists.osuosl.org; Sat, 27 Apr 2024 17:51:45 +0000
Date: Sun, 28 Apr 2024 01:50:46 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202404280143.qq5s23Iv-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714240309; x=1745776309;
 h=date:from:to:subject:message-id;
 bh=EFyebmS3Dc5y9A0YMeFiXkyYWfx1LzhARt6X0/TeG3E=;
 b=htL4PN53AZEfFHbF9sbaA+n7SHxYB5keE5lCfWi/t7zWNBLxtCl8apgX
 7/G/S/IGOcHJGrDSwzHAUStlUVRgjSzCn+9F0MNXs3lFCwNgQdgPuKJ/5
 B+w2dsnegppvlC6ZHIF6TMHJh2B6UFMMTmreSYm23+xA+DrpXroQ9BahH
 kSonAVsVfkMkvVS6EbwbQZdkBojTgqnL588M0Z3/0nZPAfAWABAIa6E3G
 R1FjOTXVUOMVWIfS9ZkT+mDYMigkAn90wqEY/3JK8btQmFscQqHGPaK+9
 fIiv0BNRFASLJUc0CW1xqAHhnHGkpPGh1sCcC51Ntu9PCcA2Viivh9Xxw
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=htL4PN53
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 6a30653b604aaad1bf0f2e74b068ceb8b6fc7aea
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
branch HEAD: 6a30653b604aaad1bf0f2e74b068ceb8b6fc7aea  Fix a potential infinite loop in extract_user_to_sg()

elapsed time: 1307m

configs tested: 162
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
arc                   randconfig-001-20240427   gcc  
arc                   randconfig-002-20240427   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                            mmp2_defconfig   gcc  
arm                   randconfig-001-20240427   clang
arm                   randconfig-002-20240427   clang
arm                   randconfig-003-20240427   gcc  
arm                   randconfig-004-20240427   clang
arm                         s5pv210_defconfig   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240427   clang
arm64                 randconfig-002-20240427   clang
arm64                 randconfig-003-20240427   gcc  
arm64                 randconfig-004-20240427   clang
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240427   gcc  
csky                  randconfig-002-20240427   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240427   clang
hexagon               randconfig-002-20240427   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240427   clang
i386         buildonly-randconfig-002-20240427   gcc  
i386         buildonly-randconfig-003-20240427   clang
i386         buildonly-randconfig-004-20240427   clang
i386         buildonly-randconfig-005-20240427   clang
i386         buildonly-randconfig-006-20240427   gcc  
i386                                defconfig   clang
i386                  randconfig-001-20240427   clang
i386                  randconfig-002-20240427   gcc  
i386                  randconfig-003-20240427   clang
i386                  randconfig-004-20240427   gcc  
i386                  randconfig-005-20240427   gcc  
i386                  randconfig-006-20240427   clang
i386                  randconfig-011-20240427   gcc  
i386                  randconfig-012-20240427   gcc  
i386                  randconfig-013-20240427   clang
i386                  randconfig-014-20240427   clang
i386                  randconfig-015-20240427   gcc  
i386                  randconfig-016-20240427   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240427   gcc  
loongarch             randconfig-002-20240427   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
microblaze                      mmu_defconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240427   gcc  
nios2                 randconfig-002-20240427   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240427   gcc  
parisc                randconfig-002-20240427   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc               randconfig-001-20240427   clang
powerpc               randconfig-002-20240427   clang
powerpc               randconfig-003-20240427   clang
powerpc                     tqm8540_defconfig   gcc  
powerpc                 xes_mpc85xx_defconfig   gcc  
powerpc64             randconfig-001-20240427   gcc  
powerpc64             randconfig-002-20240427   gcc  
powerpc64             randconfig-003-20240427   gcc  
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
riscv                 randconfig-001-20240427   clang
riscv                 randconfig-002-20240427   gcc  
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240427   gcc  
s390                  randconfig-002-20240427   gcc  
sh                               alldefconfig   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                         ecovec24_defconfig   gcc  
sh                          landisk_defconfig   gcc  
sh                          lboxre2_defconfig   gcc  
sh                            migor_defconfig   gcc  
sh                    randconfig-001-20240427   gcc  
sh                    randconfig-002-20240427   gcc  
sh                          rsk7269_defconfig   gcc  
sh                           se7343_defconfig   gcc  
sh                        sh7763rdp_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240427   gcc  
sparc64               randconfig-002-20240427   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                    randconfig-001-20240427   clang
um                    randconfig-002-20240427   gcc  
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-003-20240427   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-003-20240427   gcc  
x86_64                randconfig-005-20240427   gcc  
x86_64                randconfig-006-20240427   gcc  
x86_64                randconfig-011-20240427   gcc  
x86_64                randconfig-015-20240427   gcc  
x86_64                randconfig-016-20240427   gcc  
x86_64                randconfig-071-20240427   gcc  
x86_64                randconfig-076-20240427   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                randconfig-001-20240427   gcc  
xtensa                randconfig-002-20240427   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
