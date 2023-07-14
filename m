Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A736753057
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Jul 2023 06:06:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9436C83EFE;
	Fri, 14 Jul 2023 04:06:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9436C83EFE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689307591;
	bh=Wyn5rul7kSOAAdonM1i2jclNACpiMQG86MPXDIh94jQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=qYhdKU/CWFxFpNc6KXdqaEUm9cQ5+6oFnpA+EtoEOm11mnN6p3VUbQuev5YilIaV9
	 io/HvGW0K5WHqbqznqP9nESg/N6qU5IPnk/tEpvK9inty25MzDuVeoBneXSpg0JJYD
	 ud5QM2qJMb7vlQ0SDkTqY+I7+OSL++im97Ebh3ci5jw2JcJy4yG42ByTcYDQCyC54B
	 CSI9fR2vtsLJk8dUBte7tLM6hCS6EQrLG7BybgdA1aLot+9/qM8JvBZuf5Q7jNgTVh
	 BkjuTIU7tN3KJUgTDoxe6ekmzmaXenv4chskakpLfxfMZEKmXkE3IZM7qF/2gXTfAt
	 qEtsriZ9NgxlA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SRZ-voWE-H0u; Fri, 14 Jul 2023 04:06:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 36BC683EF1;
	Fri, 14 Jul 2023 04:06:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 36BC683EF1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 35E6C1BF384
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jul 2023 04:06:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0C21E83EF1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jul 2023 04:06:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0C21E83EF1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YvvwkQxt8tVM for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Jul 2023 04:06:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AE41A83EF0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AE41A83EF0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jul 2023 04:06:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="396195058"
X-IronPort-AV: E=Sophos;i="6.01,204,1684825200"; d="scan'208";a="396195058"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2023 21:06:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="835883215"
X-IronPort-AV: E=Sophos;i="6.01,204,1684825200"; d="scan'208";a="835883215"
Received: from lkp-server01.sh.intel.com (HELO c544d7fc5005) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 13 Jul 2023 21:06:21 -0700
Received: from kbuild by c544d7fc5005 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qKA4T-0007AC-18
 for intel-wired-lan@lists.osuosl.org; Fri, 14 Jul 2023 04:06:21 +0000
Date: Fri, 14 Jul 2023 12:06:00 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202307141259.9eoPbKBY-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689307583; x=1720843583;
 h=date:from:to:subject:message-id;
 bh=tveO1qxyngXt6vxx7yMMhRKuXj0AMtE2X/M2UCIcHyA=;
 b=A97FCSGO6K8Szw0s8iBOyjeqjCuGuKsDMcXju+W/iWKudkmkAfmBMtYo
 aP3viv0vAmVTembYPnfwUUgsL+RTmzvnaozk3667zbfVrg7aCSzoJimxL
 e9jn9Z9UinSJTM+r5mFiTIjmCrq0lYUbZ4aairkHYSPQcpjDMy6VqRc51
 Zt9XeXgBrdomeDhI3iq9Kpi6VfutHgde9XMdEPCJGXCYmMp2apXyeqonG
 y+Q9tKmO8He/31ehmaqtxyoduhTPNs5rYEsXlKG3XCG1v9gN7FfTgQws5
 7nZEgR7XUyCINAfqYFUR8//hHG8nXG3sLh1m7602e/uP1aZO8RATgCArV
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=A97FCSGO
Subject: [Intel-wired-lan] [tnguy-net-queue:main] BUILD SUCCESS
 9d23aac8a85f69239e585c8656c6fdb21be65695
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
branch HEAD: 9d23aac8a85f69239e585c8656c6fdb21be65695  Merge branch 'net-sched-fixes-for-sch_qfq'

elapsed time: 1100m

configs tested: 173
configs skipped: 10

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r032-20230713   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r043-20230713   gcc  
arc                        vdk_hs38_defconfig   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                       aspeed_g5_defconfig   gcc  
arm                         axm55xx_defconfig   gcc  
arm                     davinci_all_defconfig   clang
arm                                 defconfig   gcc  
arm                           h3600_defconfig   gcc  
arm                            mmp2_defconfig   clang
arm                  randconfig-r003-20230713   gcc  
arm                  randconfig-r011-20230713   clang
arm                  randconfig-r012-20230713   clang
arm                  randconfig-r021-20230713   clang
arm                  randconfig-r046-20230713   clang
arm                          sp7021_defconfig   clang
arm                        spear6xx_defconfig   gcc  
arm                           tegra_defconfig   gcc  
arm                       versatile_defconfig   clang
arm                        vexpress_defconfig   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r011-20230713   gcc  
arm64                randconfig-r033-20230713   clang
csky                                defconfig   gcc  
csky                 randconfig-r006-20230713   gcc  
csky                 randconfig-r013-20230713   gcc  
csky                 randconfig-r025-20230713   gcc  
hexagon              randconfig-r004-20230713   clang
hexagon              randconfig-r023-20230713   clang
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
i386                 randconfig-i011-20230713   gcc  
i386                 randconfig-i012-20230713   gcc  
i386                 randconfig-i013-20230713   gcc  
i386                 randconfig-i014-20230713   gcc  
i386                 randconfig-i015-20230713   gcc  
i386                 randconfig-i016-20230713   gcc  
i386                 randconfig-r012-20230713   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r001-20230713   gcc  
loongarch            randconfig-r005-20230713   gcc  
loongarch            randconfig-r015-20230713   gcc  
loongarch            randconfig-r025-20230713   gcc  
loongarch            randconfig-r031-20230713   gcc  
loongarch            randconfig-r035-20230713   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r002-20230713   gcc  
m68k                 randconfig-r036-20230713   gcc  
microblaze           randconfig-r012-20230713   gcc  
microblaze           randconfig-r021-20230713   gcc  
microblaze           randconfig-r033-20230713   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                        bcm63xx_defconfig   clang
mips                     loongson1b_defconfig   gcc  
mips                      maltaaprp_defconfig   clang
mips                 randconfig-r005-20230713   gcc  
mips                 randconfig-r034-20230713   gcc  
mips                           rs90_defconfig   clang
nios2                               defconfig   gcc  
nios2                randconfig-r014-20230713   gcc  
nios2                randconfig-r035-20230713   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r001-20230713   gcc  
parisc               randconfig-r004-20230713   gcc  
parisc               randconfig-r015-20230713   gcc  
parisc               randconfig-r022-20230713   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          g5_defconfig   clang
powerpc                     mpc83xx_defconfig   gcc  
powerpc              randconfig-r013-20230713   gcc  
powerpc              randconfig-r016-20230713   gcc  
powerpc              randconfig-r022-20230713   gcc  
powerpc              randconfig-r026-20230713   gcc  
powerpc              randconfig-r036-20230713   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r001-20230713   clang
riscv                randconfig-r004-20230713   clang
riscv                randconfig-r011-20230713   gcc  
riscv                randconfig-r031-20230713   clang
riscv                randconfig-r042-20230713   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r003-20230713   clang
s390                 randconfig-r044-20230713   gcc  
sh                               allmodconfig   gcc  
sh                 kfr2r09-romimage_defconfig   gcc  
sh                   randconfig-r002-20230713   gcc  
sh                   randconfig-r006-20230713   gcc  
sh                   randconfig-r023-20230713   gcc  
sh                   randconfig-r026-20230713   gcc  
sh                   randconfig-r036-20230713   gcc  
sh                          rsk7269_defconfig   gcc  
sh                           se7705_defconfig   gcc  
sh                           se7712_defconfig   gcc  
sh                           sh2007_defconfig   gcc  
sh                        sh7785lcr_defconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r022-20230713   gcc  
sparc                randconfig-r023-20230713   gcc  
sparc                randconfig-r034-20230713   gcc  
sparc                       sparc64_defconfig   gcc  
sparc64              randconfig-r013-20230713   gcc  
sparc64              randconfig-r016-20230713   gcc  
sparc64              randconfig-r021-20230713   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r025-20230713   clang
um                   randconfig-r032-20230713   gcc  
um                   randconfig-r034-20230713   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230713   clang
x86_64       buildonly-randconfig-r002-20230713   clang
x86_64       buildonly-randconfig-r003-20230713   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-r015-20230713   gcc  
x86_64               randconfig-r024-20230713   gcc  
x86_64               randconfig-r031-20230713   clang
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
xtensa                generic_kc705_defconfig   gcc  
xtensa               randconfig-r006-20230713   gcc  
xtensa               randconfig-r014-20230713   gcc  
xtensa               randconfig-r016-20230713   gcc  
xtensa               randconfig-r024-20230713   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
