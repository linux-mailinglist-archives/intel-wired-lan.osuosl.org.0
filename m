Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4E16753997
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Jul 2023 13:38:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2C5EF417EF;
	Fri, 14 Jul 2023 11:38:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2C5EF417EF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689334725;
	bh=E85hNQDcqXh9dKBYRABBE5WYYxSkmoWV7Jm7W+8F2RA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=oexadwUMaQ+IjpcJWwtaomvcR8V98sm9QBuRxb9jjIEv+Xfk4vnb31qLZwo7xirLK
	 Wn1y4pOzhpCTlMuwjDKc9TUASEKFO/Tp/mg4ShZeBCQVtZSQkl/uJlFE2uTjEIidZ6
	 7CA4Z0NVrpU/+kM1CuQUrKP8O6HlGLR9c3F9vhTq/1yVxLbkDZiRpOgzRJCiqEdHTD
	 hvWQ+qAxk8kVpEaINVugSHeQkmFpuIZk0hHQfT0pTST0YlVX3Xs0abuNpFjS3mOZqA
	 iEd3598FVDAeWqoztxJ/l4zdRHibg6tFbRW/w8lGRiCxP5FqXdLNytB9edKpNy7QN0
	 DGl6QMehL1E0w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kqpyzvDN8i_h; Fri, 14 Jul 2023 11:38:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AE92A402D7;
	Fri, 14 Jul 2023 11:38:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AE92A402D7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0AC0F1BF3F4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jul 2023 11:38:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D730361430
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jul 2023 11:38:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D730361430
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L3d_yEYeSHtP for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Jul 2023 11:38:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D61C960B06
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D61C960B06
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jul 2023 11:38:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="365492119"
X-IronPort-AV: E=Sophos;i="6.01,205,1684825200"; d="scan'208";a="365492119"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2023 04:38:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="787828058"
X-IronPort-AV: E=Sophos;i="6.01,205,1684825200"; d="scan'208";a="787828058"
Received: from lkp-server01.sh.intel.com (HELO c544d7fc5005) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 14 Jul 2023 04:38:31 -0700
Received: from kbuild by c544d7fc5005 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qKH82-0007PB-1p
 for intel-wired-lan@lists.osuosl.org; Fri, 14 Jul 2023 11:38:30 +0000
Date: Fri, 14 Jul 2023 19:37:36 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202307141934.aM2Je5ee-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689334717; x=1720870717;
 h=date:from:to:subject:message-id;
 bh=2S/c91eGHgQ9/k+chY5J8N4s2eR3tCiSutwKgWm9OQE=;
 b=ZMbX422Ptr61eoIS203xa8X5pfVdPyJAJae+DwrVfLS0j8blFhvC3fWN
 Q/S3wzQ7seJ+PIbnFvvAay8dRG/xWkKdCLvSQWxGZp16qGCyPzv0JE8tJ
 2Ms7tZZr9QQ7TaRrprkWN387Z6OHxnLsORCYrYQnUCZRNd1zLg9JoxvL8
 NSaRb+zQNU+AvIeHgX1PIbb5cF+CpX+inGCAGnmLJvlcGeTBvASoOfS1R
 tmi/LPiWvXf0+yU+RAYJ2ZyhK3Z5mdmKG/S4kxnt2s0nLNQaPI349oP5B
 XAcHEmcreJNclPhbx5cz/BFSFovASe0Egxorcq5btUxmsY3EprH8BORZB
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZMbX422P
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 264956015bbc6df23b487674fbc8d4f2b8316d94
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 264956015bbc6df23b487674fbc8d4f2b8316d94  ice: Fix memory management in ice_ethtool_fdir.c

elapsed time: 720m

configs tested: 118
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                        nsimosci_defconfig   gcc  
arc                  randconfig-r043-20230713   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                       aspeed_g5_defconfig   gcc  
arm                        clps711x_defconfig   gcc  
arm                                 defconfig   gcc  
arm                            mmp2_defconfig   clang
arm                  randconfig-r006-20230713   gcc  
arm                  randconfig-r013-20230713   clang
arm                  randconfig-r046-20230713   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r036-20230713   clang
csky                                defconfig   gcc  
csky                 randconfig-r016-20230713   gcc  
hexagon              randconfig-r041-20230713   clang
hexagon              randconfig-r045-20230713   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230713   clang
i386         buildonly-randconfig-r005-20230713   clang
i386         buildonly-randconfig-r006-20230713   clang
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230713   clang
i386                 randconfig-i002-20230713   clang
i386                 randconfig-i003-20230713   clang
i386                 randconfig-i004-20230713   clang
i386                 randconfig-i005-20230713   clang
i386                 randconfig-i006-20230713   clang
i386                 randconfig-i011-20230714   clang
i386                 randconfig-i012-20230714   clang
i386                 randconfig-i013-20230714   clang
i386                 randconfig-i014-20230714   clang
i386                 randconfig-i015-20230714   clang
i386                 randconfig-i016-20230714   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r001-20230713   gcc  
loongarch            randconfig-r023-20230713   gcc  
loongarch            randconfig-r026-20230713   gcc  
loongarch            randconfig-r033-20230713   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r002-20230713   gcc  
m68k                 randconfig-r003-20230713   gcc  
m68k                 randconfig-r004-20230713   gcc  
m68k                 randconfig-r015-20230713   gcc  
microblaze           randconfig-r031-20230713   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                malta_qemu_32r6_defconfig   clang
mips                          rm200_defconfig   clang
nios2                               defconfig   gcc  
nios2                randconfig-r025-20230713   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r022-20230713   gcc  
powerpc              randconfig-r032-20230713   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv             nommu_k210_sdcard_defconfig   gcc  
riscv                randconfig-r042-20230713   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r011-20230713   gcc  
s390                 randconfig-r035-20230713   clang
s390                 randconfig-r044-20230713   gcc  
sh                               allmodconfig   gcc  
sh                           se7343_defconfig   gcc  
sh                   sh7724_generic_defconfig   gcc  
sh                        sh7763rdp_defconfig   gcc  
sh                             shx3_defconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r024-20230713   clang
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230713   clang
x86_64       buildonly-randconfig-r002-20230713   clang
x86_64       buildonly-randconfig-r003-20230713   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-r005-20230713   clang
x86_64               randconfig-r012-20230713   gcc  
x86_64               randconfig-x001-20230713   gcc  
x86_64               randconfig-x002-20230713   gcc  
x86_64               randconfig-x003-20230713   gcc  
x86_64               randconfig-x004-20230713   gcc  
x86_64               randconfig-x005-20230713   gcc  
x86_64               randconfig-x006-20230713   gcc  
x86_64               randconfig-x011-20230713   clang
x86_64               randconfig-x012-20230713   clang
x86_64               randconfig-x013-20230713   clang
x86_64               randconfig-x014-20230713   clang
x86_64               randconfig-x015-20230713   clang
x86_64               randconfig-x016-20230713   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r034-20230713   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
