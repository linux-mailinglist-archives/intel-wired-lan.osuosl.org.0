Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E65D8010F1
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Dec 2023 18:16:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C45904371C;
	Fri,  1 Dec 2023 17:16:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C45904371C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701451012;
	bh=jizSeXTU1xqONXv78j55HWeg1WNr6rdMoZ7/RcXMOgw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=1HbMGj6NpzeqPBWy7s2RELkqSkvYnN9aPlEg4GS+d1CVPa5wCPFIY38tRLDZ5k5d7
	 sJSgSP0kp/rTDMEcseidsD41Zu2hzWRAeVbNo4LdgusutiEGqLIGTfeCMLrIph8118
	 EI8r6725LdIaroIkeBuy6S8/BePIhVtZujh32pcKiEHztzCYwWxELFUcy+MfMiYQ23
	 1KD/cTNpdEjAgGIL2fMSeQge0CbArsz/vpcXzCD43U8Fp9UAinxlnDNUQDiIWcr30a
	 4kKeqGzlEk8N5YJFUqdMHsE/i+2cI/vLcepgZ4fm+y3NYmwPVx/lgShtkqPTu/eK8D
	 7o99ScIS6YGDQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yISqOAfzh5Cz; Fri,  1 Dec 2023 17:16:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EC15740487;
	Fri,  1 Dec 2023 17:16:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EC15740487
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A2DED1BF401
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Dec 2023 17:16:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 735C840487
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Dec 2023 17:16:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 735C840487
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id obHjjvjOH6DW for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Dec 2023 17:16:44 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EBD1840439
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Dec 2023 17:16:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EBD1840439
X-IronPort-AV: E=McAfee;i="6600,9927,10911"; a="406391"
X-IronPort-AV: E=Sophos;i="6.04,242,1695711600"; 
   d="scan'208";a="406391"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2023 09:08:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10911"; a="1017093099"
X-IronPort-AV: E=Sophos;i="6.04,242,1695711600"; d="scan'208";a="1017093099"
Received: from lkp-server02.sh.intel.com (HELO b07ab15da5fe) ([10.239.97.151])
 by fmsmga006.fm.intel.com with ESMTP; 01 Dec 2023 09:08:10 -0800
Received: from kbuild by b07ab15da5fe with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1r96zo-00040Q-1u
 for intel-wired-lan@lists.osuosl.org; Fri, 01 Dec 2023 17:08:08 +0000
Date: Sat, 02 Dec 2023 01:07:20 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202312020118.MCv0vhTj-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701451005; x=1732987005;
 h=date:from:to:subject:message-id;
 bh=es+AM/pldmV4dSiJDuY1Z5uzeFhJziqYzDZiX0Pqljo=;
 b=jpBJlj68Q37e9qb2I4hXNT+/dcwnKKofTwT+mhKajx1nmA14PygWkdb3
 KaanxZb+0+IKJrQ1V0IOpzxPToUn1QtqQ8FWHkCmI1mSyXXjMRkK8LV5e
 KAe+f5GLvmbjvt+Y5P5L8fiUhZi1m3A+9syQjYMTzhemP9wuBzw0+xmGz
 IICTTYJqFZVf8Brn68iwhdP0fSNckpnKPKq2KBiSdblaEm/QbRaJwaBkV
 nuKU1yboub7Goz7N/SRK1H+3d5fA+OsqBIl3dSXwCZe2z6taQa2o2LXpU
 WRr/a3j0+abfA17Czs3wln0U/XXb5auBa9U4Z63ULZB2kCk/xC2UdBZQg
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jpBJlj68
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 7e0222686316f5506e51182f02c1d83ecc34c471
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git main
branch HEAD: 7e0222686316f5506e51182f02c1d83ecc34c471  Merge branch 'net-ethernet-convert-to-platform-remove-callback-returning-void'

elapsed time: 1686m

configs tested: 201
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                               defconfig   gcc  
arc                               allnoconfig   gcc  
arc                                 defconfig   gcc  
arc                            hsdk_defconfig   gcc  
arc                   randconfig-001-20231201   gcc  
arc                   randconfig-002-20231201   gcc  
arc                           tb10x_defconfig   gcc  
arc                        vdk_hs38_defconfig   gcc  
arm                               allnoconfig   gcc  
arm                                 defconfig   clang
arm                         mv78xx0_defconfig   clang
arm                        neponset_defconfig   clang
arm                   randconfig-001-20231201   gcc  
arm                   randconfig-002-20231201   gcc  
arm                   randconfig-003-20231201   gcc  
arm                   randconfig-004-20231201   gcc  
arm                        spear6xx_defconfig   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20231201   gcc  
arm64                 randconfig-002-20231201   gcc  
arm64                 randconfig-003-20231201   gcc  
arm64                 randconfig-004-20231201   gcc  
csky                              allnoconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20231201   gcc  
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
i386                  randconfig-011-20231201   clang
i386                  randconfig-012-20231201   clang
i386                  randconfig-013-20231201   clang
i386                  randconfig-014-20231201   clang
i386                  randconfig-015-20231201   clang
i386                  randconfig-016-20231201   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch                 loongson3_defconfig   gcc  
loongarch             randconfig-001-20231201   gcc  
loongarch             randconfig-002-20231201   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                          hp300_defconfig   gcc  
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
nios2                 randconfig-001-20231201   gcc  
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
parisc                randconfig-001-20231201   gcc  
parisc                randconfig-002-20231201   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   clang
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                      bamboo_defconfig   gcc  
powerpc                      chrp32_defconfig   gcc  
powerpc                       eiger_defconfig   gcc  
powerpc                     rainier_defconfig   gcc  
powerpc               randconfig-001-20231201   gcc  
powerpc               randconfig-002-20231201   gcc  
powerpc               randconfig-003-20231201   gcc  
powerpc                    sam440ep_defconfig   gcc  
powerpc                     taishan_defconfig   gcc  
powerpc                     tqm8541_defconfig   gcc  
powerpc64                        alldefconfig   gcc  
powerpc64             randconfig-001-20231201   gcc  
powerpc64             randconfig-002-20231201   gcc  
powerpc64             randconfig-003-20231201   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   clang
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20231201   gcc  
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
sh                                  defconfig   gcc  
sh                            hp6xx_defconfig   gcc  
sh                 kfr2r09-romimage_defconfig   gcc  
sh                          r7780mp_defconfig   gcc  
sh                          r7785rp_defconfig   gcc  
sh                    randconfig-001-20231201   gcc  
sh                    randconfig-002-20231201   gcc  
sh                          rsk7201_defconfig   gcc  
sh                      rts7751r2d1_defconfig   gcc  
sh                          sdk7780_defconfig   gcc  
sh                          sdk7786_defconfig   gcc  
sh                           se7619_defconfig   gcc  
sh                             sh03_defconfig   gcc  
sh                   sh7724_generic_defconfig   gcc  
sh                        sh7763rdp_defconfig   gcc  
sh                   sh7770_generic_defconfig   gcc  
sh                  sh7785lcr_32bit_defconfig   gcc  
sh                            shmin_defconfig   gcc  
sh                          urquell_defconfig   gcc  
sparc                            alldefconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                       sparc32_defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20231201   gcc  
sparc64               randconfig-002-20231201   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                    randconfig-001-20231201   gcc  
um                    randconfig-002-20231201   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20231201   gcc  
x86_64       buildonly-randconfig-002-20231201   gcc  
x86_64       buildonly-randconfig-003-20231201   gcc  
x86_64       buildonly-randconfig-004-20231201   gcc  
x86_64       buildonly-randconfig-005-20231201   gcc  
x86_64       buildonly-randconfig-006-20231201   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                randconfig-011-20231201   gcc  
x86_64                randconfig-012-20231201   gcc  
x86_64                randconfig-013-20231201   gcc  
x86_64                randconfig-014-20231201   gcc  
x86_64                randconfig-015-20231201   gcc  
x86_64                randconfig-016-20231201   gcc  
x86_64                randconfig-071-20231201   gcc  
x86_64                randconfig-072-20231201   gcc  
x86_64                randconfig-073-20231201   gcc  
x86_64                randconfig-074-20231201   gcc  
x86_64                randconfig-075-20231201   gcc  
x86_64                randconfig-076-20231201   gcc  
x86_64                          rhel-8.3-func   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                           alldefconfig   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa                randconfig-001-20231201   gcc  
xtensa                randconfig-002-20231201   gcc  
xtensa                         virt_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
