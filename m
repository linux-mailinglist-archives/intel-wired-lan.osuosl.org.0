Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4897781FAF4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Dec 2023 20:56:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5A7D941729;
	Thu, 28 Dec 2023 19:56:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5A7D941729
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703793398;
	bh=TywWsUOC/43gab5e+BY6bqY7wtRlnD7/2HRSs+HRzWQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=e1/Ox06WiS95//2HCCfJh6WrL4cO7/1G2L+ituPck1tA67e1SWUwGDH0MYR30fGbR
	 v1NXljRmGTbvwuFhPOA1nW8I51/ad03XiOCpOvKmvriBk3B1s9ZvEsMhQajqmQc4Yq
	 28KEWcLtcZ24rutEugQUJHmzZ30ST/Mi+vfgD6vJQ9NHMeR7zypZN2R5dB7dQCs00M
	 hAhO+EwKDEASeeTL0FOHS6TMmNlyYy7WzzQJWlNGDF/ZGClsn2zC3wYgEl3S29fjEy
	 oqzxIYhYdTnCkl1U1iVIH65qms4E1otSi2jGlIOp9T8NSMPwDdcOtyZRiNTA3TLBsi
	 /WYhzD+Kl1kzQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O1AQlCvld29C; Thu, 28 Dec 2023 19:56:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D7032416C6;
	Thu, 28 Dec 2023 19:56:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D7032416C6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A3DE41BF2FA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Dec 2023 19:56:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 78DFC4058E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Dec 2023 19:56:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 78DFC4058E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rkVS_Ay84n3u for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Dec 2023 19:56:30 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 05A3A4044C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Dec 2023 19:56:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 05A3A4044C
X-IronPort-AV: E=McAfee;i="6600,9927,10937"; a="3427694"
X-IronPort-AV: E=Sophos;i="6.04,312,1695711600"; 
   d="scan'208";a="3427694"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Dec 2023 11:56:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10937"; a="844514140"
X-IronPort-AV: E=Sophos;i="6.04,312,1695711600"; d="scan'208";a="844514140"
Received: from lkp-server02.sh.intel.com (HELO b07ab15da5fe) ([10.239.97.151])
 by fmsmga008.fm.intel.com with ESMTP; 28 Dec 2023 11:56:11 -0800
Received: from kbuild by b07ab15da5fe with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rIwUD-000Gm5-1X
 for intel-wired-lan@lists.osuosl.org; Thu, 28 Dec 2023 19:56:09 +0000
Date: Fri, 29 Dec 2023 03:55:19 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202312290315.stkuRmsf-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703793390; x=1735329390;
 h=date:from:to:subject:message-id;
 bh=K8h26PrG7wOOnC2hVefByW+qCjMU2+DDbBfPrFYLYQg=;
 b=Ev0FyfBCvah9oB8WrBADT+K7vfJgjCleeLN+qfZYyfXSNT6oAU5sNLoc
 6V+aVsVw3iSs6Z5JQqPRkykvPf2Ud1V89Ajno3evxZ9ijqYcVqiTnHpDF
 LVMY0ZBdESaNvukRO+9DkjsRG9DqIJ/RFGPfZiMrreQWNhGfDAwz6wnOl
 ZQPK0WhRdpv4Mc8uPP94nxRsjytXqgspAm66HmovdsWlsfrriGDIVUTpP
 9y8rDWP6d3jgbGYtw2Z7QtjU95RmqifJmVXS9t64Nwpl9r1AK/FmLe+mA
 XvGUBqtwMgyybPkn+QfOzIJYpZXnzawFm5xRXcwcyJ4drmsPeiVEuMsTT
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ev0FyfBC
Subject: [Intel-wired-lan] [tnguy-net-queue:1GbE] BUILD SUCCESS
 7afd49a38e73afd57ff62c8d1cf5af760c4d49c0
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 1GbE
branch HEAD: 7afd49a38e73afd57ff62c8d1cf5af760c4d49c0  igc: Check VLAN EtherType mask

elapsed time: 1446m

configs tested: 213
configs skipped: 12

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                          axs101_defconfig   gcc  
arc                      axs103_smp_defconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20231228   gcc  
arc                   randconfig-002-20231228   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                         axm55xx_defconfig   gcc  
arm                                 defconfig   clang
arm                       imx_v6_v7_defconfig   gcc  
arm                        mvebu_v7_defconfig   gcc  
arm                   randconfig-001-20231228   gcc  
arm                   randconfig-002-20231228   gcc  
arm                   randconfig-003-20231228   gcc  
arm                   randconfig-004-20231228   gcc  
arm                           sama5_defconfig   gcc  
arm                         vf610m4_defconfig   gcc  
arm                         wpcm450_defconfig   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20231228   gcc  
arm64                 randconfig-002-20231228   gcc  
arm64                 randconfig-003-20231228   gcc  
arm64                 randconfig-004-20231228   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20231228   gcc  
csky                  randconfig-002-20231228   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20231228   clang
hexagon               randconfig-002-20231228   clang
i386                             allmodconfig   clang
i386                              allnoconfig   clang
i386                             allyesconfig   clang
i386         buildonly-randconfig-001-20231228   gcc  
i386         buildonly-randconfig-002-20231228   gcc  
i386         buildonly-randconfig-003-20231228   gcc  
i386         buildonly-randconfig-004-20231228   gcc  
i386         buildonly-randconfig-005-20231228   gcc  
i386         buildonly-randconfig-006-20231228   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20231228   gcc  
i386                  randconfig-002-20231228   gcc  
i386                  randconfig-003-20231228   gcc  
i386                  randconfig-004-20231228   gcc  
i386                  randconfig-005-20231228   gcc  
i386                  randconfig-006-20231228   gcc  
i386                  randconfig-011-20231228   clang
i386                  randconfig-011-20231229   gcc  
i386                  randconfig-012-20231228   clang
i386                  randconfig-012-20231229   gcc  
i386                  randconfig-013-20231228   clang
i386                  randconfig-013-20231229   gcc  
i386                  randconfig-014-20231228   clang
i386                  randconfig-014-20231229   gcc  
i386                  randconfig-015-20231228   clang
i386                  randconfig-015-20231229   gcc  
i386                  randconfig-016-20231228   clang
i386                  randconfig-016-20231229   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20231228   gcc  
loongarch             randconfig-002-20231228   gcc  
m68k                             alldefconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                         apollo_defconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   clang
mips                             allyesconfig   gcc  
mips                 decstation_r4k_defconfig   gcc  
mips                           ip27_defconfig   gcc  
mips                     loongson1b_defconfig   gcc  
mips                      maltasmvp_defconfig   gcc  
mips                   sb1250_swarm_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20231228   gcc  
nios2                 randconfig-002-20231228   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20231228   gcc  
parisc                randconfig-002-20231228   gcc  
parisc64                            defconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                      ep88xc_defconfig   gcc  
powerpc                    klondike_defconfig   gcc  
powerpc                 linkstation_defconfig   gcc  
powerpc                   motionpro_defconfig   gcc  
powerpc                 mpc8313_rdb_defconfig   clang
powerpc                 mpc837x_rdb_defconfig   gcc  
powerpc                  mpc885_ads_defconfig   clang
powerpc                      pasemi_defconfig   gcc  
powerpc                     ppa8548_defconfig   gcc  
powerpc                      ppc6xx_defconfig   gcc  
powerpc               randconfig-001-20231228   gcc  
powerpc               randconfig-002-20231228   gcc  
powerpc               randconfig-003-20231228   gcc  
powerpc                     redwood_defconfig   gcc  
powerpc                     sequoia_defconfig   gcc  
powerpc                     taishan_defconfig   gcc  
powerpc64             randconfig-001-20231228   gcc  
powerpc64             randconfig-002-20231228   gcc  
powerpc64             randconfig-003-20231228   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   clang
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20231228   gcc  
riscv                 randconfig-002-20231228   gcc  
riscv                          rv32_defconfig   clang
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20231228   clang
s390                  randconfig-002-20231228   clang
s390                       zfcpdump_defconfig   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                               j2_defconfig   gcc  
sh                          r7785rp_defconfig   gcc  
sh                    randconfig-001-20231228   gcc  
sh                    randconfig-002-20231228   gcc  
sh                          rsk7269_defconfig   gcc  
sh                           se7780_defconfig   gcc  
sh                     sh7710voipgw_defconfig   gcc  
sh                        sh7785lcr_defconfig   gcc  
sh                            shmin_defconfig   gcc  
sparc                            alldefconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                            allyesconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20231228   gcc  
sparc64               randconfig-002-20231228   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                    randconfig-001-20231228   gcc  
um                    randconfig-002-20231228   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20231228   gcc  
x86_64       buildonly-randconfig-002-20231228   gcc  
x86_64       buildonly-randconfig-003-20231228   gcc  
x86_64       buildonly-randconfig-004-20231228   gcc  
x86_64       buildonly-randconfig-005-20231228   gcc  
x86_64       buildonly-randconfig-006-20231228   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                randconfig-001-20231228   clang
x86_64                randconfig-002-20231228   clang
x86_64                randconfig-003-20231228   clang
x86_64                randconfig-004-20231228   clang
x86_64                randconfig-005-20231228   clang
x86_64                randconfig-006-20231228   clang
x86_64                randconfig-011-20231228   gcc  
x86_64                randconfig-012-20231228   gcc  
x86_64                randconfig-013-20231228   gcc  
x86_64                randconfig-014-20231228   gcc  
x86_64                randconfig-015-20231228   gcc  
x86_64                randconfig-016-20231228   gcc  
x86_64                randconfig-071-20231228   gcc  
x86_64                randconfig-072-20231228   gcc  
x86_64                randconfig-073-20231228   gcc  
x86_64                randconfig-074-20231228   gcc  
x86_64                randconfig-075-20231228   gcc  
x86_64                randconfig-076-20231228   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa                  audio_kc705_defconfig   gcc  
xtensa                generic_kc705_defconfig   gcc  
xtensa                randconfig-001-20231228   gcc  
xtensa                randconfig-002-20231228   gcc  
xtensa                         virt_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
