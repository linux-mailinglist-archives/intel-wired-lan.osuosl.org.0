Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 064BE705FDA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 May 2023 08:22:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 60449840A4;
	Wed, 17 May 2023 06:22:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 60449840A4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684304536;
	bh=XhuAwSg6wxTJwZ6LzLPZb647GynD+0BqDdgxRf/xH0w=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=rN4F6Cx565X9AWYXJFVJ3My+6yhEo0fa2tJt4hh/ZJ76wtn6h2Vq2dj6glvvCvlxk
	 O/Gn7G7EXFx+lthQGwAitkjRDV8Hyfe2JV3t+a7e3Y+0RPOcmuFblpyWHgNuUkXoaZ
	 UDWPQvEhJ2zDt3eVLq2Vq7AH6tLGiGv6msekQQnef44kRS3fr/UhBbAzgUtP77m4rR
	 GKXqgTyylTe0yt+z6iyJ78H8xNiJTEscVg9/qAjMaY+1JjSKTL3K3d23H/Re3VaGmf
	 FcdkJUPENm6HgrhNkQdNdd/Aabr1ekNs+6FkqUKFZRTe0ne7cJY18niyHQrKQNn7p6
	 mhfNEoMK6FWiw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FKTekiv5XF7Q; Wed, 17 May 2023 06:22:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B5BA884098;
	Wed, 17 May 2023 06:22:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B5BA884098
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CF1D41BF4E4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 06:22:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A50FF41DC4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 06:22:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A50FF41DC4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tHs0t6HBi_4i for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 May 2023 06:22:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C874241D9F
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C874241D9F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 06:22:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="336230609"
X-IronPort-AV: E=Sophos;i="5.99,281,1677571200"; d="scan'208";a="336230609"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2023 23:20:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="732271459"
X-IronPort-AV: E=Sophos;i="5.99,281,1677571200"; d="scan'208";a="732271459"
Received: from lkp-server01.sh.intel.com (HELO dea6d5a4f140) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 16 May 2023 23:20:03 -0700
Received: from kbuild by dea6d5a4f140 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pzAW3-0008UB-0K
 for intel-wired-lan@lists.osuosl.org; Wed, 17 May 2023 06:20:03 +0000
Date: Wed, 17 May 2023 14:19:41 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <20230517061941.mWgET%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684304527; x=1715840527;
 h=date:from:to:subject:message-id;
 bh=VY/30G/NFiBPhlqVqw5uYv/O/j6Ezh84K2/yJwGCiWc=;
 b=IZfqRj3Yhqdjk4y99wBEp+87U9Dm/qr7auKvpiowoh/yG3+jAL/WjeOO
 tTqkPy8P16RtFEn5jhWBwsojDJ2Jv2QZlatU6c5gHNng/k9oVoeJuMvwY
 +WLlt3bIBehVC0D8ugGdTcpspizEewgdJV+qW03sXB90UZduEzVF+fin7
 X2LCrJVyL4ApZj+q4a6wPGylCHYXVvOtbxjFOprziOI6w28mZ2pmXRQR/
 MjJJGSeTy9JIE46n2NglTffxOgkYUKNJ1lnvF76fzAbK5RKJempOYEjsb
 VeKMPcMwy2vSAOZx/3Ii5/s04cyum0pHTl2YXU3GyskWpRshs+4j1tUiA
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IZfqRj3Y
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 011670cc340cbc1131677fe233b1a52acee969ee
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

tree/branch: INFO setup_repo_specs: /db/releases/20230517121050/lkp-src/repo/*/tnguy-next-queue
https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: 011670cc340cbc1131677fe233b1a52acee969ee  ice: add dynamic interrupt allocation

elapsed time: 730m

configs tested: 288
configs skipped: 17

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r002-20230515   gcc  
alpha                randconfig-r004-20230515   gcc  
alpha                randconfig-r011-20230515   gcc  
alpha                randconfig-r013-20230515   gcc  
alpha                randconfig-r013-20230517   gcc  
alpha                randconfig-r014-20230517   gcc  
alpha                randconfig-r025-20230515   gcc  
alpha                randconfig-r033-20230516   gcc  
arc                              allyesconfig   gcc  
arc                          axs103_defconfig   gcc  
arc          buildonly-randconfig-r003-20230517   gcc  
arc                                 defconfig   gcc  
arc                        nsimosci_defconfig   gcc  
arc                  randconfig-r001-20230515   gcc  
arc                  randconfig-r015-20230516   gcc  
arc                  randconfig-r022-20230516   gcc  
arc                  randconfig-r043-20230515   gcc  
arc                  randconfig-r043-20230516   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                         axm55xx_defconfig   gcc  
arm                        clps711x_defconfig   gcc  
arm                                 defconfig   gcc  
arm                          pxa3xx_defconfig   gcc  
arm                  randconfig-r046-20230516   gcc  
arm                  randconfig-r046-20230517   clang
arm                        shmobile_defconfig   gcc  
arm                       versatile_defconfig   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r006-20230515   clang
arm64                randconfig-r006-20230517   clang
arm64                randconfig-r024-20230516   clang
csky         buildonly-randconfig-r005-20230517   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r011-20230515   gcc  
csky                 randconfig-r012-20230516   gcc  
csky                 randconfig-r015-20230517   gcc  
hexagon              randconfig-r006-20230515   clang
hexagon              randconfig-r025-20230516   clang
hexagon              randconfig-r026-20230516   clang
hexagon              randconfig-r034-20230516   clang
hexagon              randconfig-r041-20230516   clang
hexagon              randconfig-r041-20230517   clang
hexagon              randconfig-r045-20230516   clang
hexagon              randconfig-r045-20230517   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230515   clang
i386                 randconfig-a002-20230515   clang
i386                 randconfig-a003-20230515   clang
i386                 randconfig-a004-20230515   clang
i386                 randconfig-a005-20230515   clang
i386                 randconfig-a006-20230515   clang
i386                 randconfig-a011-20230515   gcc  
i386                 randconfig-a012-20230515   gcc  
i386                          randconfig-a012   gcc  
i386                 randconfig-a013-20230515   gcc  
i386                 randconfig-a014-20230515   gcc  
i386                          randconfig-a014   gcc  
i386                 randconfig-a015-20230515   gcc  
i386                 randconfig-a016-20230515   gcc  
i386                          randconfig-a016   gcc  
i386                 randconfig-i051-20230515   clang
i386                 randconfig-i052-20230515   clang
i386                 randconfig-i053-20230515   clang
i386                 randconfig-i054-20230515   clang
i386                 randconfig-i055-20230515   clang
i386                 randconfig-i056-20230515   clang
i386                 randconfig-i061-20230515   clang
i386                 randconfig-i062-20230515   clang
i386                          randconfig-i062   clang
i386                 randconfig-i063-20230515   clang
i386                 randconfig-i064-20230515   clang
i386                          randconfig-i064   clang
i386                 randconfig-i065-20230515   clang
i386                 randconfig-i066-20230515   clang
i386                          randconfig-i066   clang
i386                 randconfig-i071-20230515   gcc  
i386                 randconfig-i072-20230515   gcc  
i386                 randconfig-i073-20230515   gcc  
i386                 randconfig-i074-20230515   gcc  
i386                 randconfig-i075-20230515   gcc  
i386                 randconfig-i076-20230515   gcc  
i386                 randconfig-i081-20230515   gcc  
i386                 randconfig-i082-20230515   gcc  
i386                          randconfig-i082   clang
i386                 randconfig-i083-20230515   gcc  
i386                 randconfig-i084-20230515   gcc  
i386                          randconfig-i084   clang
i386                 randconfig-i085-20230515   gcc  
i386                 randconfig-i086-20230515   gcc  
i386                          randconfig-i086   clang
i386                 randconfig-i091-20230515   clang
i386                 randconfig-i092-20230515   clang
i386                 randconfig-i093-20230515   clang
i386                 randconfig-i094-20230515   clang
i386                 randconfig-i095-20230515   clang
i386                 randconfig-i096-20230515   clang
i386                 randconfig-r014-20230515   gcc  
i386                 randconfig-r016-20230515   gcc  
ia64                             allmodconfig   gcc  
ia64                         bigsur_defconfig   gcc  
ia64         buildonly-randconfig-r004-20230517   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r005-20230515   gcc  
ia64                 randconfig-r024-20230516   gcc  
ia64                 randconfig-r036-20230517   gcc  
ia64                          tiger_defconfig   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r002-20230517   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r023-20230516   gcc  
loongarch            randconfig-r035-20230516   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r002-20230515   gcc  
m68k         buildonly-randconfig-r005-20230517   gcc  
m68k                                defconfig   gcc  
m68k                            q40_defconfig   gcc  
m68k                 randconfig-r003-20230515   gcc  
m68k                 randconfig-r022-20230515   gcc  
m68k                 randconfig-r032-20230516   gcc  
m68k                 randconfig-r034-20230517   gcc  
m68k                        stmark2_defconfig   gcc  
microblaze           randconfig-r012-20230515   gcc  
microblaze           randconfig-r021-20230515   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                          ath79_defconfig   clang
mips                        bcm47xx_defconfig   gcc  
mips                      bmips_stb_defconfig   clang
mips                      maltaaprp_defconfig   clang
mips                           mtx1_defconfig   clang
nios2                               defconfig   gcc  
nios2                randconfig-r015-20230517   gcc  
nios2                randconfig-r023-20230515   gcc  
openrisc     buildonly-randconfig-r003-20230515   gcc  
openrisc             randconfig-r012-20230517   gcc  
parisc                           alldefconfig   gcc  
parisc       buildonly-randconfig-r001-20230515   gcc  
parisc       buildonly-randconfig-r004-20230515   gcc  
parisc       buildonly-randconfig-r006-20230515   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r003-20230515   gcc  
parisc               randconfig-r015-20230515   gcc  
parisc               randconfig-r026-20230515   gcc  
parisc               randconfig-r026-20230516   gcc  
parisc               randconfig-r031-20230516   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                      arches_defconfig   gcc  
powerpc                   bluestone_defconfig   clang
powerpc                        icon_defconfig   clang
powerpc                   motionpro_defconfig   gcc  
powerpc                 mpc834x_itx_defconfig   gcc  
powerpc                  mpc885_ads_defconfig   clang
powerpc              randconfig-r001-20230515   clang
powerpc                    socrates_defconfig   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r001-20230517   clang
riscv                randconfig-r002-20230517   clang
riscv                randconfig-r004-20230515   clang
riscv                randconfig-r005-20230517   clang
riscv                randconfig-r036-20230516   gcc  
riscv                randconfig-r042-20230515   gcc  
riscv                randconfig-r042-20230516   clang
riscv                          rv32_defconfig   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r001-20230517   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r004-20230515   clang
s390                 randconfig-r005-20230515   clang
s390                 randconfig-r012-20230517   gcc  
s390                 randconfig-r014-20230517   gcc  
s390                 randconfig-r032-20230515   clang
s390                 randconfig-r033-20230515   clang
s390                 randconfig-r034-20230516   gcc  
s390                 randconfig-r044-20230515   gcc  
s390                 randconfig-r044-20230516   clang
sh                               allmodconfig   gcc  
sh                         ap325rxa_defconfig   gcc  
sh           buildonly-randconfig-r004-20230517   gcc  
sh           buildonly-randconfig-r005-20230515   gcc  
sh                        dreamcast_defconfig   gcc  
sh                             espt_defconfig   gcc  
sh                          landisk_defconfig   gcc  
sh                            migor_defconfig   gcc  
sh                   randconfig-r011-20230516   gcc  
sh                   randconfig-r011-20230517   gcc  
sh                   randconfig-r013-20230516   gcc  
sh                   randconfig-r015-20230515   gcc  
sh                   randconfig-r024-20230515   gcc  
sh                   randconfig-r032-20230516   gcc  
sh                   randconfig-r036-20230516   gcc  
sh                          sdk7786_defconfig   gcc  
sh                     sh7710voipgw_defconfig   gcc  
sh                            shmin_defconfig   gcc  
sparc                            alldefconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r013-20230517   gcc  
sparc                randconfig-r016-20230517   gcc  
sparc                randconfig-r033-20230516   gcc  
sparc                randconfig-r033-20230517   gcc  
sparc                randconfig-r035-20230516   gcc  
sparc64      buildonly-randconfig-r006-20230515   gcc  
sparc64              randconfig-r012-20230515   gcc  
sparc64              randconfig-r016-20230517   gcc  
sparc64              randconfig-r033-20230516   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230515   clang
x86_64                        randconfig-a001   clang
x86_64               randconfig-a002-20230515   clang
x86_64               randconfig-a003-20230515   clang
x86_64                        randconfig-a003   clang
x86_64               randconfig-a004-20230515   clang
x86_64               randconfig-a005-20230515   clang
x86_64                        randconfig-a005   clang
x86_64               randconfig-a006-20230515   clang
x86_64               randconfig-a011-20230515   gcc  
x86_64               randconfig-a012-20230515   gcc  
x86_64                        randconfig-a012   clang
x86_64               randconfig-a013-20230515   gcc  
x86_64               randconfig-a014-20230515   gcc  
x86_64                        randconfig-a014   clang
x86_64               randconfig-a015-20230515   gcc  
x86_64               randconfig-a016-20230515   gcc  
x86_64                        randconfig-a016   clang
x86_64                        randconfig-k001   clang
x86_64               randconfig-x051-20230515   gcc  
x86_64               randconfig-x052-20230515   gcc  
x86_64                        randconfig-x052   clang
x86_64               randconfig-x053-20230515   gcc  
x86_64               randconfig-x054-20230515   gcc  
x86_64                        randconfig-x054   clang
x86_64               randconfig-x055-20230515   gcc  
x86_64               randconfig-x056-20230515   gcc  
x86_64                        randconfig-x056   clang
x86_64               randconfig-x061-20230515   gcc  
x86_64                        randconfig-x061   gcc  
x86_64               randconfig-x062-20230515   gcc  
x86_64               randconfig-x063-20230515   gcc  
x86_64                        randconfig-x063   gcc  
x86_64               randconfig-x064-20230515   gcc  
x86_64               randconfig-x065-20230515   gcc  
x86_64                        randconfig-x065   gcc  
x86_64               randconfig-x066-20230515   gcc  
x86_64               randconfig-x071-20230515   clang
x86_64                        randconfig-x071   clang
x86_64               randconfig-x072-20230515   clang
x86_64               randconfig-x073-20230515   clang
x86_64                        randconfig-x073   clang
x86_64               randconfig-x074-20230515   clang
x86_64               randconfig-x075-20230515   clang
x86_64                        randconfig-x075   clang
x86_64               randconfig-x076-20230515   clang
x86_64               randconfig-x081-20230515   clang
x86_64               randconfig-x082-20230515   clang
x86_64                        randconfig-x082   clang
x86_64               randconfig-x083-20230515   clang
x86_64               randconfig-x084-20230515   clang
x86_64                        randconfig-x084   clang
x86_64               randconfig-x085-20230515   clang
x86_64               randconfig-x086-20230515   clang
x86_64                        randconfig-x086   clang
x86_64               randconfig-x091-20230515   gcc  
x86_64               randconfig-x092-20230515   gcc  
x86_64               randconfig-x093-20230515   gcc  
x86_64               randconfig-x094-20230515   gcc  
x86_64               randconfig-x095-20230515   gcc  
x86_64               randconfig-x096-20230515   gcc  
x86_64                           rhel-8.3-kvm   gcc  
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r002-20230517   gcc  
xtensa       buildonly-randconfig-r004-20230515   gcc  
xtensa                       common_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
