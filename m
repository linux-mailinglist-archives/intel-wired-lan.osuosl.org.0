Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CA39799713
	for <lists+intel-wired-lan@lfdr.de>; Sat,  9 Sep 2023 11:29:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A96714092A;
	Sat,  9 Sep 2023 09:29:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A96714092A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694251758;
	bh=TcwE93ukLamaq/KI1xNepGMaqyrSQfwAczo2VEJxrFM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=aC4ik7mSz/ISzvtnv89ah3d30IWlSnHIkyrVf5XLIeOghPNFFVHtPa2MquUxsltfU
	 u2oaL/71Du2wZ7+kXK0K1KSbxBVombAz6zHv85Ql9cBO3E9GRqgTIdl+mDPf+WWPXj
	 qjesdld3LvJdHWL45Uff0BlE4izt++/wtrPot5rpJC9tPeEGiBAjU7FXQMig9NSRdS
	 Ie3gtCOQyxgt+MSxrkYx11LR6+RaZe3RLxrb+HOH/tCHBqElPxNd4lgor1I4G9OW/t
	 4RRx4e7HihW29tAxhWVlyIz8pJXdN/sZ3BpM9uSsRbO5wuY3TtM14ErTdASG+b8mnx
	 agOEpzLHCBnqg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YKjuUyqBHtZn; Sat,  9 Sep 2023 09:29:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 56C2A40543;
	Sat,  9 Sep 2023 09:29:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 56C2A40543
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 28B521BF84C
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Sep 2023 09:29:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F1C8B400B9
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Sep 2023 09:29:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F1C8B400B9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U-tXCUxWW8pO for <intel-wired-lan@lists.osuosl.org>;
 Sat,  9 Sep 2023 09:29:05 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 773064064A
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Sep 2023 09:29:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 773064064A
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="357273720"
X-IronPort-AV: E=Sophos;i="6.02,239,1688454000"; d="scan'208";a="357273720"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2023 02:29:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="866377625"
X-IronPort-AV: E=Sophos;i="6.02,239,1688454000"; d="scan'208";a="866377625"
Received: from lkp-server01.sh.intel.com (HELO 59b3c6e06877) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 09 Sep 2023 02:29:02 -0700
Received: from kbuild by 59b3c6e06877 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qeuGy-0003ET-0r
 for intel-wired-lan@lists.osuosl.org; Sat, 09 Sep 2023 09:29:00 +0000
Date: Sat, 09 Sep 2023 17:28:45 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202309091744.mlPs6d7I-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694251745; x=1725787745;
 h=date:from:to:subject:message-id;
 bh=crA1YL7K2xq+Ksa1mVCArqRTouKUqms28Lu32HifMZM=;
 b=fzTctUyWW4nOnWe2HztIQ+PtMfwsjj68UeqmUD0Bn5o88eJnJ0O0KoEQ
 2eUS6oKcwTPk4y1NhChg1IJtccZ6qPF1qyNPdQPtFdu1R86zaHMkx+ZMP
 emrR9aQte1sEqtptwsVXu6w+mkurHaUToocafdkMwZka8NeRh5wB/fY+a
 rvQJT0ajuMcZZcPGJjcOkRCqmEiZEKxrtNf6/1OZCqH9gfXNFyyDjRN18
 Dmx7iWk3N1CeYnhxL7+sK6E13oNo/HiBLA9HZjDwjHFskaB+xu0xeNiPA
 K8NtD+CjGQvM+lfPW0UpsJu1RqZJ8IW/5zX6TF0/CV2MR+eU1vl9003MV
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fzTctUyW
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 065531fc6b06e3a6f579a7eb41fe1cb9c9816107
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 065531fc6b06e3a6f579a7eb41fe1cb9c9816107  iavf: Add ability to turn off CRC stripping for VF

elapsed time: 725m

configs tested: 172
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r013-20230909   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20230909   gcc  
arc                  randconfig-r011-20230909   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                   milbeaut_m10v_defconfig   clang
arm                           omap1_defconfig   clang
arm                   randconfig-001-20230909   clang
arm                           spitz_defconfig   clang
arm64                            allmodconfig   gcc  
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r031-20230909   gcc  
csky                 randconfig-r033-20230909   gcc  
hexagon               randconfig-001-20230909   clang
hexagon               randconfig-002-20230909   clang
hexagon              randconfig-r014-20230909   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20230909   clang
i386         buildonly-randconfig-002-20230909   clang
i386         buildonly-randconfig-003-20230909   clang
i386         buildonly-randconfig-004-20230909   clang
i386         buildonly-randconfig-005-20230909   clang
i386         buildonly-randconfig-006-20230909   clang
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20230909   clang
i386                  randconfig-002-20230909   clang
i386                  randconfig-003-20230909   clang
i386                  randconfig-004-20230909   clang
i386                  randconfig-005-20230909   clang
i386                  randconfig-006-20230909   clang
i386                  randconfig-011-20230909   gcc  
i386                  randconfig-012-20230909   gcc  
i386                  randconfig-013-20230909   gcc  
i386                  randconfig-014-20230909   gcc  
i386                  randconfig-015-20230909   gcc  
i386                  randconfig-016-20230909   gcc  
i386                 randconfig-r012-20230909   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20230909   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                          amiga_defconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r035-20230909   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r003-20230909   gcc  
mips                 randconfig-r015-20230909   clang
mips                 randconfig-r025-20230909   clang
mips                 randconfig-r026-20230909   clang
mips                 randconfig-r034-20230909   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r001-20230909   gcc  
nios2                randconfig-r022-20230909   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r016-20230909   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   gcc  
powerpc                     kilauea_defconfig   clang
powerpc                    mvme5100_defconfig   clang
powerpc                      ppc44x_defconfig   clang
powerpc              randconfig-r024-20230909   gcc  
powerpc64                           defconfig   gcc  
powerpc64            randconfig-r036-20230909   clang
riscv                            alldefconfig   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20230909   clang
riscv                randconfig-r004-20230909   clang
riscv                          rv32_defconfig   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20230909   gcc  
s390                 randconfig-r032-20230909   clang
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                         ap325rxa_defconfig   gcc  
sh                                  defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                       sparc32_defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64              randconfig-r002-20230909   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r006-20230909   gcc  
um                   randconfig-r021-20230909   clang
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-001-20230909   clang
x86_64       buildonly-randconfig-002-20230909   clang
x86_64       buildonly-randconfig-003-20230909   clang
x86_64       buildonly-randconfig-004-20230909   clang
x86_64       buildonly-randconfig-005-20230909   clang
x86_64       buildonly-randconfig-006-20230909   clang
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20230909   gcc  
x86_64                randconfig-002-20230909   gcc  
x86_64                randconfig-003-20230909   gcc  
x86_64                randconfig-004-20230909   gcc  
x86_64                randconfig-005-20230909   gcc  
x86_64                randconfig-006-20230909   gcc  
x86_64                randconfig-011-20230909   clang
x86_64                randconfig-012-20230909   clang
x86_64                randconfig-013-20230909   clang
x86_64                randconfig-014-20230909   clang
x86_64                randconfig-015-20230909   clang
x86_64                randconfig-016-20230909   clang
x86_64                randconfig-071-20230909   clang
x86_64                randconfig-072-20230909   clang
x86_64                randconfig-073-20230909   clang
x86_64                randconfig-074-20230909   clang
x86_64                randconfig-075-20230909   clang
x86_64                randconfig-076-20230909   clang
x86_64               randconfig-r005-20230909   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa               randconfig-r023-20230909   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
