Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 17BE86E7200
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Apr 2023 05:58:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 38E1881E5A;
	Wed, 19 Apr 2023 03:58:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 38E1881E5A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681876723;
	bh=AiC2CG608a4Ax2GX3fElvx/Melsx3O2yxnWM649vQcQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=geuBBdktKGOradm9SgQDd2qGaMMHRMwvL0tWH8Tc5O2LcfeUqh/yMzeDUSJ2zE+Oh
	 kVhVfkF/m5/9rkqVUkrYKpysJTPUohdUx9vhecArGiMGfz1Kf89r8cFOHWf2HmqJFn
	 RELXijje7zetsKJcMAiCTtu7jsCTJtF3iQquX74IrNomUX8v3iCOjFv0G/qOsSTzTP
	 a8lcHRuzxPluCAhCsVHUvmqqGL4ARBBbxZV1O7go8eRTUCgsT865zJlxyc5Oj2bWMm
	 Y/fKPR8jOaSkZHybE2mXej5fQiuFQfQxjdC9dJAGrn4zfuKzRGV9vSTu56AKkm5u+m
	 Q4QUJThtIr2HA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y8pCD5ygkTOf; Wed, 19 Apr 2023 03:58:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0803181E28;
	Wed, 19 Apr 2023 03:58:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0803181E28
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 593061C429C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Apr 2023 03:58:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3036A60BBE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Apr 2023 03:58:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3036A60BBE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r5Onqvld08YP for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Apr 2023 03:58:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3BAAA60C34
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3BAAA60C34
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Apr 2023 03:58:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="325680480"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="325680480"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 20:58:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="691348087"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="691348087"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 18 Apr 2023 20:58:29 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1poyxg-000eSd-0R;
 Wed, 19 Apr 2023 03:58:28 +0000
Date: Wed, 19 Apr 2023 11:58:04 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <643f66cc.O1FfOvLsLUlHGvCE%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681876711; x=1713412711;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=2n7sY8A6Ey9dDCMrc1SqKSp86wAxisUdqDpwRF/EYP4=;
 b=LjchCX0q4eTHyo4uWzQguuq1RvtMbzzSs/+IhXmXn4mGA4a3YRns3kkB
 hHc6FrJ4fAgRPnY/ItIFORkk7gmbZBdi6GTiGpp/YOXamMMOlHtfcg2fb
 M9swwfNAKcZwMKcJmzyQwmLkpGYcXQ1n1tV98c/e25wcS0e0ajKufKjrA
 G4WfbxG/x8t/qX1PJz2cIEwLL+EQ0HYIRbWMr3e2ZYgLipg6tjZnLVm5f
 KeVglS0rcZqYQt1xSt/zXV3Bjmndq2j7+b36ZKk+AIXwUYRSI8+LwNPJs
 NZ82NXIZUWtylC+SGMuiXn4TIsNcVxLAc8hwOH/fXU7MuMI3vn6E/vg+0
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LjchCX0q
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 c0e73276f0fcbbd3d4736ba975d7dc7a48791b0c
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git master
branch HEAD: c0e73276f0fcbbd3d4736ba975d7dc7a48791b0c  mlxfw: fix null-ptr-deref in mlxfw_mfa2_tlv_next()

elapsed time: 726m

configs tested: 128
configs skipped: 10

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r002-20230417   gcc  
alpha        buildonly-randconfig-r005-20230417   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc                          axs103_defconfig   gcc  
arc          buildonly-randconfig-r004-20230416   gcc  
arc          buildonly-randconfig-r006-20230416   gcc  
arc                                 defconfig   gcc  
arc                         haps_hs_defconfig   gcc  
arc                        nsimosci_defconfig   gcc  
arc                           tb10x_defconfig   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                       multi_v4t_defconfig   gcc  
arm                  randconfig-r011-20230416   clang
arm                           stm32_defconfig   gcc  
arm                         vf610m4_defconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r031-20230417   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r003-20230417   gcc  
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
ia64                             alldefconfig   gcc  
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r002-20230417   gcc  
ia64         buildonly-randconfig-r005-20230416   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r005-20230416   gcc  
ia64                 randconfig-r033-20230416   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r006-20230418   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r001-20230416   gcc  
m68k         buildonly-randconfig-r005-20230418   gcc  
m68k                                defconfig   gcc  
m68k                        m5407c3_defconfig   gcc  
m68k                 randconfig-r006-20230417   gcc  
m68k                 randconfig-r032-20230417   gcc  
m68k                 randconfig-r035-20230416   gcc  
microblaze   buildonly-randconfig-r003-20230418   gcc  
microblaze   buildonly-randconfig-r004-20230418   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                       bmips_be_defconfig   gcc  
mips                         cobalt_defconfig   gcc  
nios2        buildonly-randconfig-r003-20230416   gcc  
nios2        buildonly-randconfig-r006-20230418   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r006-20230416   gcc  
nios2                randconfig-r031-20230416   gcc  
openrisc     buildonly-randconfig-r006-20230417   gcc  
parisc       buildonly-randconfig-r004-20230416   gcc  
parisc       buildonly-randconfig-r004-20230417   gcc  
parisc                              defconfig   gcc  
parisc                generic-32bit_defconfig   gcc  
parisc               randconfig-r001-20230416   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r001-20230418   gcc  
powerpc              randconfig-r034-20230417   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r033-20230417   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r005-20230418   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r005-20230417   gcc  
s390                 randconfig-r012-20230417   clang
s390                 randconfig-r015-20230417   clang
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r003-20230416   gcc  
sh                        edosk7705_defconfig   gcc  
sh                 kfr2r09-romimage_defconfig   gcc  
sh                           se7751_defconfig   gcc  
sparc        buildonly-randconfig-r001-20230416   gcc  
sparc        buildonly-randconfig-r002-20230418   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r002-20230417   gcc  
sparc                randconfig-r003-20230416   gcc  
sparc64      buildonly-randconfig-r002-20230416   gcc  
sparc64      buildonly-randconfig-r003-20230417   gcc  
sparc64              randconfig-r004-20230417   gcc  
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
x86_64                        randconfig-a012   clang
x86_64                        randconfig-a014   clang
x86_64                        randconfig-a016   clang
x86_64                           rhel-8.3-bpf   gcc  
x86_64                         rhel-8.3-kunit   gcc  
x86_64                           rhel-8.3-kvm   gcc  
x86_64                           rhel-8.3-syz   gcc  
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r001-20230418   gcc  
xtensa       buildonly-randconfig-r003-20230418   gcc  
xtensa                         virt_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
