Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B9E8010EA
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Dec 2023 18:15:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1C0A743730;
	Fri,  1 Dec 2023 17:15:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1C0A743730
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701450926;
	bh=X7TjGqspWyYPHXS06aTo/Y5pQPzX+FR7S0tCjaYoDBs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=wemvzbuf3X0taUcHYY/bzsmYvJIevLw1nz4vX89HIYZ0/5M72R2ex+G1TcIgPz5DW
	 4xeuGDpyaQp87ck9GWwbjvFzaNyCa21ck8NX+XhXs9XY/KF7FtH+uOzjiJe15jRFRS
	 RRB2RrBosDhPuwFb75zayYyBmarpC/R64J0f6Hhnzg9mT4Zbz9J9JpJ8Z+osq8H8To
	 L5UhOzKjQrwVp2IHCYZKLGAwP7NtKoVx/lJ/bf+SFIoO73OckIs3HmvZ/PctILIies
	 UJHZpeWgx90bPmt4nFEedcpgGrcKLsbgtahUtt3D/WQu4GO1Xlqwg0PD2yGUThMfHP
	 os3OpqzmBR5Ag==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WGKuwrXxczhN; Fri,  1 Dec 2023 17:15:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2016040487;
	Fri,  1 Dec 2023 17:15:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2016040487
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 67BD01BF401
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Dec 2023 17:15:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3EE6660ABF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Dec 2023 17:15:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3EE6660ABF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nfvCd84Q37s7 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Dec 2023 17:15:17 +0000 (UTC)
X-Greylist: delayed 429 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 01 Dec 2023 17:15:16 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D089F60806
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D089F60806
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Dec 2023 17:15:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10911"; a="532882"
X-IronPort-AV: E=Sophos;i="6.04,242,1695711600"; 
   d="scan'208";a="532882"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2023 09:07:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10911"; a="860614328"
X-IronPort-AV: E=Sophos;i="6.04,242,1695711600"; d="scan'208";a="860614328"
Received: from lkp-server02.sh.intel.com (HELO b07ab15da5fe) ([10.239.97.151])
 by FMSMGA003.fm.intel.com with ESMTP; 01 Dec 2023 09:07:10 -0800
Received: from kbuild by b07ab15da5fe with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1r96yq-00040G-1c
 for intel-wired-lan@lists.osuosl.org; Fri, 01 Dec 2023 17:07:08 +0000
Date: Sat, 02 Dec 2023 01:06:56 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202312020154.6Ur85F6I-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701450917; x=1732986917;
 h=date:from:to:subject:message-id;
 bh=jlHVRTb5LZtRjhunTVe0r3GbyGK4hT0C8BnK9Yx98wc=;
 b=Y02YgiXQGLS8CW6JX2ouToodAUnTJWyIUkz3Xw2RWvcq9KX/mIIi3oMg
 9CuHcL/v/mp9Nfuq2091GVmWqRJA6s+lrbaQkVTiltfMAR5Vixw/PNYN+
 ETJjyslbH6lSlrljSkHpvCS0/XZ9mqldB2Ld4hYMNQrTFYTpgVO0tKSiB
 0aZYMLkoHuiAocgFXSF7ZRlY93HYxFR+UAUCFxdIzupUn7eKgLiWn2JNc
 houLuFSQttmA6/p4o1oIzgZXg3tv3AO9iEXTkjFODn611z94Fne7RR1oc
 6P9lnClUoBCKYtVYzN59xKVrOu1Mprj2AsBf49khPYfm/PUWhDWqKIDMi
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Y02YgiXQ
Subject: [Intel-wired-lan] [tnguy-net-queue:main] BUILD SUCCESS
 777f245eec8152926b411e3d4f4545310f52cbed
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git main
branch HEAD: 777f245eec8152926b411e3d4f4545310f52cbed  Merge branch 'net-ravb-fixes-for-the-ravb-driver'

elapsed time: 1830m

configs tested: 285
configs skipped: 2

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
arc                            hsdk_defconfig   gcc  
arc                   randconfig-001-20231130   gcc  
arc                   randconfig-001-20231201   gcc  
arc                   randconfig-002-20231130   gcc  
arc                   randconfig-002-20231201   gcc  
arc                           tb10x_defconfig   gcc  
arc                        vdk_hs38_defconfig   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                          exynos_defconfig   gcc  
arm                         lpc32xx_defconfig   clang
arm                        multi_v5_defconfig   clang
arm                   randconfig-001-20231130   gcc  
arm                   randconfig-001-20231201   gcc  
arm                   randconfig-002-20231130   gcc  
arm                   randconfig-002-20231201   gcc  
arm                   randconfig-003-20231130   gcc  
arm                   randconfig-003-20231201   gcc  
arm                   randconfig-004-20231130   gcc  
arm                   randconfig-004-20231201   gcc  
arm                        spear6xx_defconfig   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20231130   gcc  
arm64                 randconfig-001-20231201   gcc  
arm64                 randconfig-002-20231130   gcc  
arm64                 randconfig-002-20231201   gcc  
arm64                 randconfig-003-20231130   gcc  
arm64                 randconfig-003-20231201   gcc  
arm64                 randconfig-004-20231130   gcc  
arm64                 randconfig-004-20231201   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20231130   gcc  
csky                  randconfig-001-20231201   gcc  
csky                  randconfig-002-20231130   gcc  
csky                  randconfig-002-20231201   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20231201   clang
hexagon               randconfig-002-20231201   clang
i386                             allmodconfig   clang
i386                              allnoconfig   clang
i386                             allyesconfig   clang
i386         buildonly-randconfig-001-20231201   gcc  
i386         buildonly-randconfig-002-20231201   gcc  
i386         buildonly-randconfig-003-20231201   gcc  
i386         buildonly-randconfig-004-20231201   gcc  
i386         buildonly-randconfig-005-20231201   gcc  
i386         buildonly-randconfig-006-20231201   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20231201   gcc  
i386                  randconfig-002-20231201   gcc  
i386                  randconfig-003-20231201   gcc  
i386                  randconfig-004-20231201   gcc  
i386                  randconfig-005-20231201   gcc  
i386                  randconfig-006-20231201   gcc  
i386                  randconfig-011-20231130   clang
i386                  randconfig-011-20231201   clang
i386                  randconfig-012-20231130   clang
i386                  randconfig-012-20231201   clang
i386                  randconfig-013-20231130   clang
i386                  randconfig-013-20231201   clang
i386                  randconfig-014-20231130   clang
i386                  randconfig-014-20231201   clang
i386                  randconfig-015-20231130   clang
i386                  randconfig-015-20231201   clang
i386                  randconfig-016-20231130   clang
i386                  randconfig-016-20231201   clang
loongarch                        alldefconfig   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch                 loongson3_defconfig   gcc  
loongarch             randconfig-001-20231130   gcc  
loongarch             randconfig-001-20231201   gcc  
loongarch             randconfig-002-20231130   gcc  
loongarch             randconfig-002-20231201   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                          hp300_defconfig   gcc  
m68k                       m5249evb_defconfig   gcc  
m68k                        m5272c3_defconfig   gcc  
m68k                           virt_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   clang
mips                             allyesconfig   gcc  
mips                         db1xxx_defconfig   gcc  
mips                      fuloong2e_defconfig   gcc  
mips                            gpr_defconfig   gcc  
mips                     loongson1b_defconfig   gcc  
mips                          rb532_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20231130   gcc  
nios2                 randconfig-001-20231201   gcc  
nios2                 randconfig-002-20231130   gcc  
nios2                 randconfig-002-20231201   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                generic-64bit_defconfig   gcc  
parisc                randconfig-001-20231130   gcc  
parisc                randconfig-001-20231201   gcc  
parisc                randconfig-002-20231130   gcc  
parisc                randconfig-002-20231201   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   clang
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                      bamboo_defconfig   gcc  
powerpc                      chrp32_defconfig   gcc  
powerpc                       eiger_defconfig   gcc  
powerpc                     ep8248e_defconfig   gcc  
powerpc                       maple_defconfig   gcc  
powerpc                     mpc512x_defconfig   clang
powerpc                     rainier_defconfig   gcc  
powerpc               randconfig-001-20231130   gcc  
powerpc               randconfig-001-20231201   gcc  
powerpc               randconfig-002-20231130   gcc  
powerpc               randconfig-002-20231201   gcc  
powerpc               randconfig-003-20231130   gcc  
powerpc               randconfig-003-20231201   gcc  
powerpc                    sam440ep_defconfig   gcc  
powerpc                     taishan_defconfig   gcc  
powerpc                     tqm8541_defconfig   gcc  
powerpc64                        alldefconfig   gcc  
powerpc64             randconfig-001-20231130   gcc  
powerpc64             randconfig-001-20231201   gcc  
powerpc64             randconfig-002-20231130   gcc  
powerpc64             randconfig-002-20231201   gcc  
powerpc64             randconfig-003-20231130   gcc  
powerpc64             randconfig-003-20231201   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   clang
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20231130   gcc  
riscv                 randconfig-001-20231201   gcc  
riscv                 randconfig-002-20231130   gcc  
riscv                 randconfig-002-20231201   gcc  
riscv                          rv32_defconfig   clang
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                          debug_defconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20231201   clang
s390                  randconfig-002-20231201   clang
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                        apsh4ad0a_defconfig   gcc  
sh                                  defconfig   gcc  
sh                            hp6xx_defconfig   gcc  
sh                 kfr2r09-romimage_defconfig   gcc  
sh                          polaris_defconfig   gcc  
sh                          r7780mp_defconfig   gcc  
sh                          r7785rp_defconfig   gcc  
sh                    randconfig-001-20231130   gcc  
sh                    randconfig-001-20231201   gcc  
sh                    randconfig-002-20231130   gcc  
sh                    randconfig-002-20231201   gcc  
sh                          rsk7201_defconfig   gcc  
sh                          rsk7269_defconfig   gcc  
sh                      rts7751r2d1_defconfig   gcc  
sh                          sdk7780_defconfig   gcc  
sh                          sdk7786_defconfig   gcc  
sh                           se7619_defconfig   gcc  
sh                           se7751_defconfig   gcc  
sh                             sh03_defconfig   gcc  
sh                   sh7724_generic_defconfig   gcc  
sh                        sh7763rdp_defconfig   gcc  
sh                   sh7770_generic_defconfig   gcc  
sh                  sh7785lcr_32bit_defconfig   gcc  
sh                            shmin_defconfig   gcc  
sh                              ul2_defconfig   gcc  
sh                          urquell_defconfig   gcc  
sparc                            alldefconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                       sparc32_defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20231130   gcc  
sparc64               randconfig-001-20231201   gcc  
sparc64               randconfig-002-20231130   gcc  
sparc64               randconfig-002-20231201   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                    randconfig-001-20231130   gcc  
um                    randconfig-001-20231201   gcc  
um                    randconfig-002-20231130   gcc  
um                    randconfig-002-20231201   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20231130   gcc  
x86_64       buildonly-randconfig-001-20231201   gcc  
x86_64       buildonly-randconfig-002-20231130   gcc  
x86_64       buildonly-randconfig-002-20231201   gcc  
x86_64       buildonly-randconfig-003-20231130   gcc  
x86_64       buildonly-randconfig-003-20231201   gcc  
x86_64       buildonly-randconfig-004-20231130   gcc  
x86_64       buildonly-randconfig-004-20231201   gcc  
x86_64       buildonly-randconfig-005-20231130   gcc  
x86_64       buildonly-randconfig-005-20231201   gcc  
x86_64       buildonly-randconfig-006-20231130   gcc  
x86_64       buildonly-randconfig-006-20231201   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                randconfig-001-20231201   clang
x86_64                randconfig-002-20231201   clang
x86_64                randconfig-003-20231201   clang
x86_64                randconfig-004-20231201   clang
x86_64                randconfig-005-20231201   clang
x86_64                randconfig-006-20231201   clang
x86_64                randconfig-011-20231130   gcc  
x86_64                randconfig-011-20231201   gcc  
x86_64                randconfig-012-20231130   gcc  
x86_64                randconfig-012-20231201   gcc  
x86_64                randconfig-013-20231130   gcc  
x86_64                randconfig-013-20231201   gcc  
x86_64                randconfig-014-20231130   gcc  
x86_64                randconfig-014-20231201   gcc  
x86_64                randconfig-015-20231130   gcc  
x86_64                randconfig-015-20231201   gcc  
x86_64                randconfig-016-20231130   gcc  
x86_64                randconfig-016-20231201   gcc  
x86_64                randconfig-071-20231130   gcc  
x86_64                randconfig-071-20231201   gcc  
x86_64                randconfig-072-20231130   gcc  
x86_64                randconfig-072-20231201   gcc  
x86_64                randconfig-073-20231130   gcc  
x86_64                randconfig-073-20231201   gcc  
x86_64                randconfig-074-20231130   gcc  
x86_64                randconfig-074-20231201   gcc  
x86_64                randconfig-075-20231130   gcc  
x86_64                randconfig-075-20231201   gcc  
x86_64                randconfig-076-20231130   gcc  
x86_64                randconfig-076-20231201   gcc  
x86_64                           rhel-8.3-bpf   gcc  
x86_64                          rhel-8.3-func   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                           alldefconfig   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa                randconfig-001-20231130   gcc  
xtensa                randconfig-001-20231201   gcc  
xtensa                randconfig-002-20231130   gcc  
xtensa                randconfig-002-20231201   gcc  
xtensa                         virt_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
