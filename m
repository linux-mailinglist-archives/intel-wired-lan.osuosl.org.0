Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BD4B6C4539
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Mar 2023 09:44:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7925561164;
	Wed, 22 Mar 2023 08:44:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7925561164
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679474687;
	bh=7sfm1R61q2bsGKG3C2H20iWIZLKWBBCq9QOtykd8gnM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ZlWeINAtoJudFDetyHcxRYv5g+pRaFmPNexx2XRaUrb+bbim+DML5F7D8iOY8/aLK
	 n27C3/wTDCKuF5TmBD8lKm3GiOdYji1K7nw8BtKWfx3owYhcMAzTJUflGswrxVbDN0
	 OC4ABKnca5tjawnlt9JOWEKkKQMJp1i9oeGWSHA880GD1s6aARp9teN0ZShi1pid8S
	 qGnNKefII7oIbqsZ59YK+EwS+TehetsxY2Dp09dd7cUHvU6vL41EeOVzSVnFVSGhAT
	 j73bKGzl0ocjVG0wRb3wWc8zqPA/hbkz77ABadKbGO6FywGyTKqTkbQtYyhUmcDP8t
	 jGfN6y9fQd9Eg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nL-zEurH2ncu; Wed, 22 Mar 2023 08:44:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6033A6068F;
	Wed, 22 Mar 2023 08:44:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6033A6068F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 23C201BF3A0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 08:44:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0924283F03
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 08:44:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0924283F03
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wqCj3Clkv_IB for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Mar 2023 08:44:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F2AD283F00
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F2AD283F00
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 08:44:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="336664371"
X-IronPort-AV: E=Sophos;i="5.98,281,1673942400"; d="scan'208";a="336664371"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 01:44:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="856032951"
X-IronPort-AV: E=Sophos;i="5.98,281,1673942400"; d="scan'208";a="856032951"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 22 Mar 2023 01:44:29 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1peu56-000D66-0v;
 Wed, 22 Mar 2023 08:44:28 +0000
Date: Wed, 22 Mar 2023 16:43:41 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <641abfbd.K9vRodLi0zl2QeHP%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679474679; x=1711010679;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=AEc20DXI/2e3chQdDMB5NVephl2vYtucp+7jWTK1OUE=;
 b=lTWLiruifABITg7gOI0JVUVmsC9s44y8gNMG6F++prk8QaPg+dlwgGub
 E2kgwjCiyiZM35ZSosePcqDceLCfBY/yCdDp7gTO0GxrJgdvjs3LfBYyq
 Y1pxEUyhgGxZqpqJbOp6R+74NV+yiqvqTJHpDHrvqX5J1wHP5pZKBwPO6
 q1blO6Khve1V7Q8CbQwnP3Uap+wGfSsFkZ1RtXhAcT0fehAuw1DuY3XjL
 Qdoj+7YMzLABJbqY9B8cuRmKSMGiqdlGTIJ3dECR8WkLiW/wi3p1sy+H9
 +mqbc1RwXcqiVriGD2lR6YCk0aECX3CHHcsyiriqgOuSQLkbndFagGdZF
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lTWLirui
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 9b4073870948b5975123ee404896f4fcf0091314
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 9b4073870948b5975123ee404896f4fcf0091314  i40e: Add support for VF to specify its primary MAC address

elapsed time: 730m

configs tested: 131
configs skipped: 11

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r035-20230319   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r013-20230320   gcc  
arc                  randconfig-r025-20230319   gcc  
arc                  randconfig-r034-20230319   gcc  
arc                  randconfig-r043-20230319   gcc  
arc                  randconfig-r043-20230321   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r005-20230319   clang
arm                  randconfig-r046-20230319   gcc  
arm                  randconfig-r046-20230321   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r012-20230319   clang
arm64                randconfig-r014-20230319   clang
arm64                randconfig-r034-20230320   clang
csky                                defconfig   gcc  
csky                 randconfig-r003-20230319   gcc  
hexagon      buildonly-randconfig-r001-20230319   clang
hexagon      buildonly-randconfig-r003-20230319   clang
hexagon              randconfig-r003-20230319   clang
hexagon              randconfig-r006-20230319   clang
hexagon              randconfig-r012-20230320   clang
hexagon              randconfig-r022-20230319   clang
hexagon              randconfig-r041-20230319   clang
hexagon              randconfig-r045-20230319   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230320   clang
i386                 randconfig-a002-20230320   clang
i386                          randconfig-a002   clang
i386                 randconfig-a003-20230320   clang
i386                 randconfig-a004-20230320   clang
i386                          randconfig-a004   clang
i386                 randconfig-a005-20230320   clang
i386                 randconfig-a006-20230320   clang
i386                          randconfig-a006   clang
i386                 randconfig-a011-20230320   gcc  
i386                 randconfig-a012-20230320   gcc  
i386                          randconfig-a012   gcc  
i386                 randconfig-a013-20230320   gcc  
i386                 randconfig-a014-20230320   gcc  
i386                          randconfig-a014   gcc  
i386                 randconfig-a015-20230320   gcc  
i386                 randconfig-a016-20230320   gcc  
i386                          randconfig-a016   gcc  
i386                 randconfig-r035-20230320   clang
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r026-20230319   gcc  
ia64                 randconfig-r032-20230319   gcc  
ia64                 randconfig-r036-20230320   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r024-20230319   gcc  
loongarch            randconfig-r031-20230319   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r036-20230319   gcc  
microblaze           randconfig-r011-20230319   gcc  
microblaze           randconfig-r031-20230319   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r002-20230319   clang
nios2                               defconfig   gcc  
nios2                randconfig-r002-20230319   gcc  
nios2                randconfig-r016-20230320   gcc  
nios2                randconfig-r032-20230320   gcc  
openrisc             randconfig-r011-20230319   gcc  
openrisc             randconfig-r033-20230319   gcc  
openrisc             randconfig-r034-20230319   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r014-20230320   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r002-20230319   clang
powerpc              randconfig-r021-20230319   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r014-20230320   gcc  
riscv                randconfig-r015-20230320   gcc  
riscv                randconfig-r016-20230320   gcc  
riscv                randconfig-r036-20230319   gcc  
riscv                randconfig-r042-20230319   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r023-20230319   clang
s390                 randconfig-r044-20230319   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r011-20230320   gcc  
sh                   randconfig-r016-20230319   gcc  
sh                   randconfig-r032-20230319   gcc  
sh                   randconfig-r033-20230320   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r001-20230319   gcc  
sparc64              randconfig-r033-20230319   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                        randconfig-a001   clang
x86_64                        randconfig-a002   gcc  
x86_64                        randconfig-a003   clang
x86_64                        randconfig-a004   gcc  
x86_64                        randconfig-a005   clang
x86_64                        randconfig-a006   gcc  
x86_64                        randconfig-a011   gcc  
x86_64                        randconfig-a012   clang
x86_64                        randconfig-a013   gcc  
x86_64                        randconfig-a014   clang
x86_64                        randconfig-a015   gcc  
x86_64                        randconfig-a016   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r004-20230319   gcc  
xtensa               randconfig-r013-20230319   gcc  
xtensa               randconfig-r013-20230320   gcc  
xtensa               randconfig-r015-20230319   gcc  
xtensa               randconfig-r035-20230319   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
