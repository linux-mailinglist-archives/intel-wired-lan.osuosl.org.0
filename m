Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8449C73F04D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Jun 2023 03:21:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 25D8E418B2;
	Tue, 27 Jun 2023 01:21:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 25D8E418B2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687828912;
	bh=HnlPuR7m8KwxwWU1el0r5RjWqOXQL8R9qEWIHhtLfd4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=xRdhpnK/xSYIiYStlky7C0XMUVNo9qVRbOEHfaLu+YjOzUABpx4wQvOdxatstOBHN
	 LSSU3RbqZiOAycmAMiDFd5OzPatOfiMTyoWpdU/p4dRqh5z1FO8J8Mp6kO68qU1pGs
	 Fr3X6t4lSqdlZOuFw1CtNndtS6rSt62yiHCFx48keupBTqR6Aht19fyTvVNLYaICZ6
	 lowzYmqahu3K5nbDFQXatFq9XzydRS7DKahqLqpK3kbGbW2CLGppaqsERXsPwxIKVR
	 km8cJbvRVU68cTJzHD38lb4A6sNDE4yry9oB4mQcLDj83FTuwen3HPJ7k2LbeZbbar
	 QcoZext0Fi3LA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7_FqKevHLC_A; Tue, 27 Jun 2023 01:21:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8EC9741873;
	Tue, 27 Jun 2023 01:21:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8EC9741873
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 05D8B1BF955
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jun 2023 01:21:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D19D160EC6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jun 2023 01:21:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D19D160EC6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qNmu_uFz7SOr for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Jun 2023 01:21:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B671160E86
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B671160E86
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jun 2023 01:21:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="360302808"
X-IronPort-AV: E=Sophos;i="6.01,161,1684825200"; d="scan'208";a="360302808"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2023 18:21:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="746028159"
X-IronPort-AV: E=Sophos;i="6.01,161,1684825200"; d="scan'208";a="746028159"
Received: from lkp-server01.sh.intel.com (HELO 783282924a45) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 26 Jun 2023 18:21:41 -0700
Received: from kbuild by 783282924a45 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qDxOn-000BOX-08
 for intel-wired-lan@lists.osuosl.org; Tue, 27 Jun 2023 01:21:41 +0000
Date: Tue, 27 Jun 2023 09:21:10 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202306270909.jKsGVw2y-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687828903; x=1719364903;
 h=date:from:to:subject:message-id;
 bh=6uHYrA44OxBS4vhGmWFdLnx4ot77KAi2tHkhBX6tT38=;
 b=RvTc5wqlhtqVFirn+FEDZ6qhXwh5Tf3ZKGtLuV6aF51EnO3Iy71LHNmL
 ZnnWjPh1ESO23m+uJjFI1HzzPX2+iQGxfhCedpEOD2uwu2zMvmj0sl1by
 fcsTOj/h2b8PaK2f15KnUvS/1wTmRPCg1W7GS2ui9a+NjyW9mMHj8Gtid
 sHW3LAApDSpqvu8bfZ/VUYrE+j5y1IAVKrgLpgLJ06rwlox2kLK4OIr3P
 dWdddbP3wvYgS10RuGqDh4GTDRIqvO0RwurhmRZXcBWH6SU7JVE14YI6b
 EymE0kdwp0s8/4xKHA2I89PUax32f2R5RjOE4l8NZqseOIMvDSmMr15u9
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RvTc5wql
Subject: [Intel-wired-lan] [tnguy-net-queue:1GbE] BUILD SUCCESS
 c789ad7cbebcac5d5f417296c140a1252c689524
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 1GbE
branch HEAD: c789ad7cbebcac5d5f417296c140a1252c689524  igc: Work around HW bug causing missing timestamps

elapsed time: 6316m

configs tested: 226
configs skipped: 11

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            alldefconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r031-20230622   gcc  
alpha                randconfig-r031-20230626   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                     haps_hs_smp_defconfig   gcc  
arc                        nsimosci_defconfig   gcc  
arc                  randconfig-r002-20230622   gcc  
arc                  randconfig-r035-20230622   gcc  
arc                  randconfig-r036-20230622   gcc  
arc                  randconfig-r043-20230622   gcc  
arc                  randconfig-r043-20230626   gcc  
arc                           tb10x_defconfig   gcc  
arc                    vdk_hs38_smp_defconfig   gcc  
arm                              alldefconfig   clang
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                       aspeed_g5_defconfig   gcc  
arm                         at91_dt_defconfig   gcc  
arm                        clps711x_defconfig   gcc  
arm                     davinci_all_defconfig   clang
arm                                 defconfig   gcc  
arm                          ep93xx_defconfig   clang
arm                          gemini_defconfig   gcc  
arm                       imx_v4_v5_defconfig   clang
arm                        keystone_defconfig   gcc  
arm                        multi_v5_defconfig   clang
arm                       netwinder_defconfig   clang
arm                          pxa910_defconfig   gcc  
arm                             pxa_defconfig   gcc  
arm                  randconfig-r026-20230622   clang
arm                  randconfig-r046-20230622   clang
arm                         s5pv210_defconfig   clang
arm                        shmobile_defconfig   gcc  
arm                         socfpga_defconfig   clang
arm                       spear13xx_defconfig   clang
arm                        spear3xx_defconfig   clang
arm                        spear6xx_defconfig   gcc  
arm                           stm32_defconfig   gcc  
arm                           tegra_defconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r011-20230626   gcc  
arm64                randconfig-r022-20230622   gcc  
csky                             alldefconfig   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r013-20230626   gcc  
csky                 randconfig-r014-20230626   gcc  
csky                 randconfig-r016-20230626   gcc  
csky                 randconfig-r021-20230622   gcc  
csky                 randconfig-r025-20230626   gcc  
csky                 randconfig-r026-20230626   gcc  
hexagon              randconfig-r003-20230622   clang
hexagon              randconfig-r041-20230622   clang
hexagon              randconfig-r045-20230622   clang
i386                             alldefconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230622   clang
i386         buildonly-randconfig-r004-20230626   clang
i386         buildonly-randconfig-r005-20230622   clang
i386         buildonly-randconfig-r005-20230626   clang
i386         buildonly-randconfig-r006-20230622   clang
i386         buildonly-randconfig-r006-20230626   clang
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230622   clang
i386                 randconfig-i001-20230626   clang
i386                 randconfig-i002-20230622   clang
i386                 randconfig-i002-20230626   clang
i386                 randconfig-i003-20230622   clang
i386                 randconfig-i003-20230626   clang
i386                 randconfig-i004-20230622   clang
i386                 randconfig-i004-20230626   clang
i386                 randconfig-i005-20230622   clang
i386                 randconfig-i005-20230626   clang
i386                 randconfig-i006-20230622   clang
i386                 randconfig-i006-20230626   clang
i386                 randconfig-i011-20230622   gcc  
i386                 randconfig-i011-20230626   gcc  
i386                 randconfig-i012-20230622   gcc  
i386                 randconfig-i012-20230626   gcc  
i386                 randconfig-i013-20230622   gcc  
i386                 randconfig-i013-20230626   gcc  
i386                 randconfig-i014-20230622   gcc  
i386                 randconfig-i014-20230626   gcc  
i386                 randconfig-i015-20230622   gcc  
i386                 randconfig-i015-20230626   gcc  
i386                 randconfig-i016-20230622   gcc  
i386                 randconfig-i016-20230626   gcc  
i386                 randconfig-r012-20230622   gcc  
i386                 randconfig-r023-20230626   gcc  
i386                 randconfig-r024-20230626   gcc  
i386                 randconfig-r033-20230622   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                          amiga_defconfig   gcc  
m68k                                defconfig   gcc  
m68k                          hp300_defconfig   gcc  
m68k                       m5249evb_defconfig   gcc  
m68k                        m5272c3_defconfig   gcc  
m68k                          multi_defconfig   gcc  
m68k                        mvme147_defconfig   gcc  
m68k                 randconfig-r015-20230622   gcc  
m68k                 randconfig-r033-20230626   gcc  
microblaze                          defconfig   gcc  
microblaze           randconfig-r016-20230622   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                          ath79_defconfig   clang
mips                        bcm47xx_defconfig   gcc  
mips                           gcw0_defconfig   gcc  
mips                     loongson1b_defconfig   gcc  
mips                     loongson2k_defconfig   clang
mips                      maltaaprp_defconfig   clang
mips                        omega2p_defconfig   clang
mips                 randconfig-r006-20230622   gcc  
nios2                         10m50_defconfig   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r015-20230626   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                generic-64bit_defconfig   gcc  
parisc               randconfig-r035-20230626   gcc  
parisc64                         alldefconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                    adder875_defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                    amigaone_defconfig   gcc  
powerpc                 canyonlands_defconfig   gcc  
powerpc                       eiger_defconfig   gcc  
powerpc                      ep88xc_defconfig   gcc  
powerpc                          g5_defconfig   clang
powerpc                    ge_imp3a_defconfig   clang
powerpc                       holly_defconfig   gcc  
powerpc                      katmai_defconfig   clang
powerpc                   microwatt_defconfig   clang
powerpc                     mpc512x_defconfig   clang
powerpc                 mpc837x_rdb_defconfig   gcc  
powerpc                     mpc83xx_defconfig   gcc  
powerpc                      obs600_defconfig   clang
powerpc                      pcm030_defconfig   gcc  
powerpc                       ppc64_defconfig   gcc  
powerpc                     rainier_defconfig   gcc  
powerpc              randconfig-r012-20230626   gcc  
powerpc                    sam440ep_defconfig   gcc  
powerpc                     sequoia_defconfig   gcc  
powerpc                         wii_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                    nommu_k210_defconfig   gcc  
riscv                randconfig-r042-20230622   gcc  
riscv                randconfig-r042-20230626   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r001-20230622   clang
s390                 randconfig-r034-20230622   clang
s390                 randconfig-r044-20230622   gcc  
s390                 randconfig-r044-20230626   gcc  
s390                       zfcpdump_defconfig   gcc  
sh                               allmodconfig   gcc  
sh                                  defconfig   gcc  
sh                        dreamcast_defconfig   gcc  
sh                ecovec24-romimage_defconfig   gcc  
sh                         ecovec24_defconfig   gcc  
sh                 kfr2r09-romimage_defconfig   gcc  
sh                          kfr2r09_defconfig   gcc  
sh                            migor_defconfig   gcc  
sh                          polaris_defconfig   gcc  
sh                          r7780mp_defconfig   gcc  
sh                          r7785rp_defconfig   gcc  
sh                          rsk7201_defconfig   gcc  
sh                          rsk7264_defconfig   gcc  
sh                           se7206_defconfig   gcc  
sh                           se7619_defconfig   gcc  
sh                           se7780_defconfig   gcc  
sh                             sh03_defconfig   gcc  
sh                   sh7770_generic_defconfig   gcc  
sh                            titan_defconfig   gcc  
sh                              ul2_defconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r025-20230622   gcc  
sparc                randconfig-r032-20230622   gcc  
sparc                randconfig-r032-20230626   gcc  
sparc64              randconfig-r005-20230622   gcc  
sparc64              randconfig-r021-20230626   gcc  
sparc64              randconfig-r023-20230622   gcc  
sparc64              randconfig-r036-20230626   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230622   clang
x86_64       buildonly-randconfig-r001-20230626   clang
x86_64       buildonly-randconfig-r002-20230622   clang
x86_64       buildonly-randconfig-r002-20230626   clang
x86_64       buildonly-randconfig-r003-20230622   clang
x86_64       buildonly-randconfig-r003-20230626   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                           rhel-8.3-bpf   gcc  
x86_64                          rhel-8.3-func   gcc  
x86_64                    rhel-8.3-kselftests   gcc  
x86_64                         rhel-8.3-kunit   gcc  
x86_64                           rhel-8.3-kvm   gcc  
x86_64                           rhel-8.3-ltp   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                           alldefconfig   gcc  
xtensa                generic_kc705_defconfig   gcc  
xtensa               randconfig-r011-20230622   gcc  
xtensa                         virt_defconfig   gcc  
xtensa                    xip_kc705_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
