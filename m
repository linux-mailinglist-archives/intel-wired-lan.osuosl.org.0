Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B5C86E71FF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Apr 2023 05:58:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9E52B81E47;
	Wed, 19 Apr 2023 03:58:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9E52B81E47
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681876718;
	bh=GFkgE5L+meW2EWQ8kGQxvZLulhaorMSAe5CeIYwsBww=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Xnx4FZd3tSKyuTcskGeQZdLSoUaZ2tA6t9PLOLNE5SDtHtgRI6qZBuTRPHs5ygBXn
	 nLbEfMrYTRRg+TktvEsZno5tuii2hlrrmyirwP5WeAZd0+zH+efw57Jb+A1BbNjWIP
	 LarG8luEg7TsHzdrKtjAbUTu6AeoAcSMJJG3x89xP0q5tWFZj2oW8qREU8570WgChe
	 KnQTDd9IZsFxqLbCglbB3z7bwC0OQIf8bZElNv9+lVkC4tmfiG+40LMhMv6O0R7Ud/
	 vxmKI0F/Y+xZsGeC+lq+UIvh71HVF8UKwRpgymhVSQoRmJfYsKiP/x5dNXOigKFWIv
	 9sW8ndqCo5q+w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iHxjoVbteIls; Wed, 19 Apr 2023 03:58:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3975681DA0;
	Wed, 19 Apr 2023 03:58:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3975681DA0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3A8031C4317
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Apr 2023 03:58:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 152DE60E28
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Apr 2023 03:58:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 152DE60E28
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BaGbnGd5VJko for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Apr 2023 03:58:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DECBC60BBE
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DECBC60BBE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Apr 2023 03:58:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="325680478"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="325680478"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 20:58:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="815479715"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="815479715"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 18 Apr 2023 20:58:29 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1poyxg-000eSl-0s;
 Wed, 19 Apr 2023 03:58:28 +0000
Date: Wed, 19 Apr 2023 11:58:22 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <643f66de.NGeKLfWYsZ6QqG5J%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681876710; x=1713412710;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=7bxEEYfT3zCTll4oiMXy/i2598aWgnLrqYEx2QuaWaA=;
 b=PvR3VctV4RBoY7zqckq8h24ZiiPJ/MNTooV9j5h7wJKw0ujPFOApYYxn
 C8o0ay6CTZMgKc/pDlS95AG5F8xN5NJ60F/BrmhFWR35EcNv7TizT6kAM
 ffkH0UKERcxZ0vAeRJX9su8gRpsYYjTSKpUHrNgAMxU989JrhlOOe0rRB
 zmOQGwLvgbk7are5LI18dDAssNQf+HQsIY0N+ROzl20lCUUQPm3Y/RGfO
 3YbJpOTGVcgcMWdIQYZ7W7KCQ+Zd+onSQBUMRdXXF6qY9FJjqX9OQoiIj
 nSJjPrsne+e6NhyERSqWiG3OVLitY6pWPW3vxub2WlGhyvf3DR7/IcdXQ
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PvR3VctV
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 dce46f1b0cab9f31c6b57c40ea06236b001ae323
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git main
branch HEAD: dce46f1b0cab9f31c6b57c40ea06236b001ae323  Merge branch 'add-ethernet-driver-for-starfive-jh7110-soc'

elapsed time: 960m

configs tested: 144
configs skipped: 14

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r002-20230417   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc                          axs103_defconfig   gcc  
arc          buildonly-randconfig-r004-20230416   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r014-20230416   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r015-20230418   clang
arm                  randconfig-r031-20230418   gcc  
arm                  randconfig-r032-20230416   gcc  
arm                  randconfig-r046-20230416   clang
arm                           stm32_defconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r004-20230418   clang
arm64                randconfig-r006-20230417   gcc  
arm64                randconfig-r022-20230416   gcc  
arm64                randconfig-r035-20230417   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r024-20230416   gcc  
csky                 randconfig-r032-20230417   gcc  
hexagon              randconfig-r001-20230417   clang
hexagon              randconfig-r012-20230416   clang
hexagon              randconfig-r041-20230416   clang
hexagon              randconfig-r041-20230417   clang
hexagon              randconfig-r045-20230416   clang
hexagon              randconfig-r045-20230417   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230417   gcc  
i386                 randconfig-a002-20230417   gcc  
i386                 randconfig-a003-20230417   gcc  
i386                 randconfig-a004-20230417   gcc  
i386                 randconfig-a005-20230417   gcc  
i386                 randconfig-a006-20230417   gcc  
i386                 randconfig-a011-20230417   clang
i386                 randconfig-a012-20230417   clang
i386                 randconfig-a013-20230417   clang
i386                 randconfig-a014-20230417   clang
i386                 randconfig-a015-20230417   clang
i386                 randconfig-a016-20230417   clang
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r004-20230416   gcc  
ia64                 randconfig-r005-20230416   gcc  
ia64                 randconfig-r006-20230416   gcc  
ia64                 randconfig-r036-20230418   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r001-20230416   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r005-20230418   gcc  
m68k                 randconfig-r006-20230418   gcc  
m68k                 randconfig-r024-20230417   gcc  
m68k                 randconfig-r026-20230417   gcc  
m68k                 randconfig-r033-20230418   gcc  
microblaze   buildonly-randconfig-r004-20230418   gcc  
microblaze           randconfig-r003-20230416   gcc  
microblaze           randconfig-r034-20230418   gcc  
microblaze           randconfig-r036-20230416   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                      malta_kvm_defconfig   clang
mips                 randconfig-r002-20230418   gcc  
mips                 randconfig-r004-20230417   clang
mips                 randconfig-r025-20230417   gcc  
mips                 randconfig-r031-20230417   clang
mips                 randconfig-r033-20230416   gcc  
nios2        buildonly-randconfig-r003-20230416   gcc  
nios2        buildonly-randconfig-r006-20230418   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r005-20230417   gcc  
parisc       buildonly-randconfig-r004-20230417   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                      acadia_defconfig   clang
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r001-20230418   gcc  
powerpc                 mpc836x_rdk_defconfig   clang
powerpc              randconfig-r026-20230416   gcc  
powerpc              randconfig-r031-20230416   clang
powerpc              randconfig-r032-20230418   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r002-20230417   gcc  
riscv                randconfig-r042-20230417   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r005-20230418   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r034-20230417   gcc  
s390                 randconfig-r044-20230417   clang
sh                               allmodconfig   gcc  
sh                 kfr2r09-romimage_defconfig   gcc  
sh                   randconfig-r001-20230418   gcc  
sh                   randconfig-r003-20230417   gcc  
sh                   randconfig-r035-20230416   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r023-20230417   gcc  
sparc64      buildonly-randconfig-r003-20230417   gcc  
sparc64              randconfig-r013-20230416   gcc  
sparc64              randconfig-r016-20230416   gcc  
sparc64              randconfig-r021-20230416   gcc  
sparc64              randconfig-r033-20230417   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230417   gcc  
x86_64               randconfig-a002-20230417   gcc  
x86_64               randconfig-a003-20230417   gcc  
x86_64               randconfig-a004-20230417   gcc  
x86_64               randconfig-a005-20230417   gcc  
x86_64               randconfig-a006-20230417   gcc  
x86_64               randconfig-a011-20230417   clang
x86_64               randconfig-a012-20230417   clang
x86_64               randconfig-a013-20230417   clang
x86_64               randconfig-a014-20230417   clang
x86_64               randconfig-a015-20230417   clang
x86_64               randconfig-a016-20230417   clang
x86_64               randconfig-k001-20230417   clang
x86_64                           rhel-8.3-bpf   gcc  
x86_64                         rhel-8.3-kunit   gcc  
x86_64                           rhel-8.3-kvm   gcc  
x86_64                           rhel-8.3-syz   gcc  
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r003-20230418   gcc  
xtensa               randconfig-r001-20230416   gcc  
xtensa               randconfig-r034-20230416   gcc  
xtensa               randconfig-r035-20230418   gcc  
xtensa               randconfig-r036-20230417   gcc  
xtensa                         virt_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
