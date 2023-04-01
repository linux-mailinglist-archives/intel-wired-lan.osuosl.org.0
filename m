Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A8EAD6D32B2
	for <lists+intel-wired-lan@lfdr.de>; Sat,  1 Apr 2023 18:57:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A540F418C7;
	Sat,  1 Apr 2023 16:57:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A540F418C7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680368267;
	bh=E+ttD5kFng62FJ6/xFedCNjmAM3U81KECnJwM+RoFoY=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=QE1hMmDioRd9cWCnif8R+t4hun969KgxFnMqpQK8muOIYmQipzBceXgrKiYFj1key
	 AXhDjTEHcnigXpAY3MeBwmhpLi0Vy1vzTEhdlG1sdwSusf2mtBqk3F6SDq4+b3PNaI
	 4fHVr0c7gQFXpaRuWy8HdEiCGNnElxUB5ldBW2yqD7Tnx69FdznATujmZLvqCnI62Y
	 HlVuEIDQcF368pl6a3P7sQtKVgAij6jOcXA5PZthIJhUJl0EzS3IO7HZm3w7iTyIn/
	 GDcT4cKxPItxqFlDpNA596j8NsbV9FaMqwjP3C+/mYfHiuUbpW7aUVX2ZPqK6NE+m6
	 TWFin19FxdmDw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4RpP89p_dsTO; Sat,  1 Apr 2023 16:57:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C2D4F418B7;
	Sat,  1 Apr 2023 16:57:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C2D4F418B7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 01FF61BF5AD
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Apr 2023 16:57:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D7F6360B29
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Apr 2023 16:57:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D7F6360B29
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Qqzf1kuY5qOr for <intel-wired-lan@lists.osuosl.org>;
 Sat,  1 Apr 2023 16:57:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9F2F760B24
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9F2F760B24
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Apr 2023 16:57:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10667"; a="322059670"
X-IronPort-AV: E=Sophos;i="5.98,311,1673942400"; d="scan'208";a="322059670"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2023 09:57:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10667"; a="635633159"
X-IronPort-AV: E=Sophos;i="5.98,311,1673942400"; d="scan'208";a="635633159"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 01 Apr 2023 09:57:34 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pieXm-000MvZ-0j;
 Sat, 01 Apr 2023 16:57:34 +0000
Date: Sun, 02 Apr 2023 00:57:32 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6428627c.DG/0EIwwuGgS0Kww%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680368258; x=1711904258;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=9g2l7uqwrcWPNqYyUfPbYHGPS7wC7dNVb9cwRGbmBu4=;
 b=hvJKjsEwPk9kZXnwloFE6LaoKEVfS/vR6KO3CjkmPAa4hgLGN0yeT4mM
 2+BKpHeCDm6j9SLo4J/u1W0nsB4kpiJuI2vCq4hl2Th11GLGuv/u2UQp5
 jUW/5AjFZ5Wxd8Q7YQ0QyminT8xHO8nkDs14A9i1eO3rBAsEl1dtsV4uG
 J5v+NCRcAGVOWdcvJMSz6Ef2KWNHvy499+qa9QwgBQQLOEethHWwYP5V5
 mvsFwhNQTrT3UQfikZWnIDvkAu4gzSTZcminUZV7TN/GrewWmFPaPfQns
 AEhXoBG89uD2vKYQzbQnFNDDh3+NHdH9DleOoSv9gGCyznNADgNADWiD/
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hvJKjsEw
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 4863fc6c4c285f8ed68ac3460ea95c8d28a67637
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 4863fc6c4c285f8ed68ac3460ea95c8d28a67637  ice: Reset FDIR counter in FDIR init stage

elapsed time: 1445m

configs tested: 227
configs skipped: 15

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r002-20230329   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r005-20230330   gcc  
alpha                randconfig-r012-20230329   gcc  
alpha                randconfig-r016-20230329   gcc  
alpha                randconfig-r024-20230329   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r001-20230329   gcc  
arc          buildonly-randconfig-r003-20230329   gcc  
arc          buildonly-randconfig-r006-20230329   gcc  
arc                                 defconfig   gcc  
arc                     haps_hs_smp_defconfig   gcc  
arc                        nsimosci_defconfig   gcc  
arc                  randconfig-r004-20230329   gcc  
arc                  randconfig-r005-20230329   gcc  
arc                  randconfig-r013-20230329   gcc  
arc                  randconfig-r016-20230329   gcc  
arc                  randconfig-r033-20230329   gcc  
arc                  randconfig-r043-20230329   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                        clps711x_defconfig   gcc  
arm                                 defconfig   gcc  
arm                       imx_v6_v7_defconfig   gcc  
arm                      integrator_defconfig   gcc  
arm                          pxa910_defconfig   gcc  
arm                  randconfig-r013-20230329   gcc  
arm                  randconfig-r025-20230329   gcc  
arm                  randconfig-r046-20230329   gcc  
arm                           sunxi_defconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r001-20230329   gcc  
arm64                randconfig-r003-20230329   gcc  
arm64                randconfig-r023-20230331   gcc  
arm64                randconfig-r036-20230329   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r003-20230329   gcc  
csky                 randconfig-r004-20230329   gcc  
csky                 randconfig-r011-20230329   gcc  
csky                 randconfig-r025-20230331   gcc  
csky                 randconfig-r026-20230329   gcc  
csky                 randconfig-r035-20230329   gcc  
hexagon              randconfig-r015-20230329   clang
hexagon              randconfig-r023-20230329   clang
hexagon              randconfig-r041-20230329   clang
hexagon              randconfig-r041-20230330   clang
hexagon              randconfig-r045-20230329   clang
hexagon              randconfig-r045-20230330   clang
i386                             allyesconfig   gcc  
i386                         debian-10.3-func   gcc  
i386                   debian-10.3-kselftests   gcc  
i386                        debian-10.3-kunit   gcc  
i386                          debian-10.3-kvm   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                          randconfig-a002   clang
i386                          randconfig-a004   clang
i386                          randconfig-a006   clang
i386                          randconfig-a012   gcc  
i386                          randconfig-a014   gcc  
i386                          randconfig-a016   gcc  
i386                          randconfig-c001   gcc  
ia64                             alldefconfig   gcc  
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r002-20230329   gcc  
ia64                 randconfig-r005-20230329   gcc  
ia64                 randconfig-r006-20230329   gcc  
ia64                 randconfig-r012-20230329   gcc  
ia64                 randconfig-r015-20230329   gcc  
ia64                 randconfig-r023-20230329   gcc  
ia64                 randconfig-r025-20230329   gcc  
ia64                 randconfig-r036-20230329   gcc  
loongarch                        alldefconfig   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r006-20230329   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r001-20230329   gcc  
loongarch            randconfig-r002-20230329   gcc  
loongarch            randconfig-r004-20230329   gcc  
loongarch            randconfig-r006-20230329   gcc  
loongarch            randconfig-r021-20230329   gcc  
loongarch            randconfig-r022-20230329   gcc  
loongarch            randconfig-r023-20230329   gcc  
loongarch            randconfig-r025-20230329   gcc  
loongarch            randconfig-r026-20230329   gcc  
m68k                             allmodconfig   gcc  
m68k                          amiga_defconfig   gcc  
m68k                       bvme6000_defconfig   gcc  
m68k                                defconfig   gcc  
m68k                            mac_defconfig   gcc  
m68k                 randconfig-r004-20230329   gcc  
m68k                 randconfig-r013-20230329   gcc  
m68k                 randconfig-r015-20230329   gcc  
m68k                 randconfig-r031-20230329   gcc  
m68k                 randconfig-r035-20230329   gcc  
microblaze           randconfig-r001-20230329   gcc  
microblaze           randconfig-r005-20230329   gcc  
microblaze           randconfig-r024-20230329   gcc  
microblaze           randconfig-r032-20230329   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r003-20230329   clang
mips                 randconfig-r026-20230329   gcc  
mips                          rb532_defconfig   gcc  
nios2        buildonly-randconfig-r004-20230329   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r006-20230329   gcc  
nios2                randconfig-r024-20230329   gcc  
nios2                randconfig-r033-20230329   gcc  
nios2                randconfig-r035-20230329   gcc  
openrisc     buildonly-randconfig-r002-20230329   gcc  
openrisc             randconfig-r006-20230329   gcc  
openrisc             randconfig-r011-20230329   gcc  
openrisc             randconfig-r021-20230329   gcc  
openrisc             randconfig-r034-20230329   gcc  
openrisc             randconfig-r036-20230329   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r003-20230330   gcc  
parisc               randconfig-r014-20230329   gcc  
parisc               randconfig-r015-20230329   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                   currituck_defconfig   gcc  
powerpc                       eiger_defconfig   gcc  
powerpc                      katmai_defconfig   clang
powerpc                mpc7448_hpc2_defconfig   gcc  
powerpc                 mpc8560_ads_defconfig   clang
powerpc                  mpc885_ads_defconfig   clang
powerpc                      ppc40x_defconfig   gcc  
powerpc              randconfig-r003-20230329   gcc  
powerpc              randconfig-r011-20230329   clang
powerpc              randconfig-r032-20230329   gcc  
powerpc              randconfig-r034-20230329   gcc  
powerpc                         wii_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r006-20230329   clang
riscv                               defconfig   gcc  
riscv                randconfig-r001-20230330   gcc  
riscv                randconfig-r002-20230330   gcc  
riscv                randconfig-r006-20230329   gcc  
riscv                randconfig-r013-20230329   clang
riscv                randconfig-r016-20230329   clang
riscv                randconfig-r021-20230331   gcc  
riscv                randconfig-r032-20230329   gcc  
riscv                randconfig-r035-20230329   gcc  
riscv                randconfig-r042-20230329   clang
riscv                randconfig-r042-20230330   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r002-20230329   clang
s390         buildonly-randconfig-r003-20230329   clang
s390                                defconfig   gcc  
s390                 randconfig-r002-20230329   gcc  
s390                 randconfig-r003-20230329   gcc  
s390                 randconfig-r014-20230329   clang
s390                 randconfig-r016-20230329   clang
s390                 randconfig-r031-20230329   gcc  
s390                 randconfig-r032-20230329   gcc  
s390                 randconfig-r035-20230329   gcc  
s390                 randconfig-r044-20230329   clang
s390                 randconfig-r044-20230330   clang
sh                               allmodconfig   gcc  
sh                         ap325rxa_defconfig   gcc  
sh                        edosk7705_defconfig   gcc  
sh                             espt_defconfig   gcc  
sh                          lboxre2_defconfig   gcc  
sh                     magicpanelr2_defconfig   gcc  
sh                          r7780mp_defconfig   gcc  
sh                   randconfig-r005-20230329   gcc  
sh                   randconfig-r006-20230329   gcc  
sh                   randconfig-r014-20230329   gcc  
sh                          rsk7203_defconfig   gcc  
sh                           se7206_defconfig   gcc  
sh                           se7721_defconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r005-20230329   gcc  
sparc                randconfig-r006-20230329   gcc  
sparc                randconfig-r006-20230330   gcc  
sparc                randconfig-r022-20230329   gcc  
sparc                randconfig-r024-20230331   gcc  
sparc64      buildonly-randconfig-r004-20230329   gcc  
sparc64              randconfig-r003-20230329   gcc  
sparc64              randconfig-r012-20230329   gcc  
sparc64              randconfig-r025-20230329   gcc  
sparc64              randconfig-r031-20230329   gcc  
sparc64              randconfig-r034-20230329   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           alldefconfig   gcc  
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
x86_64                        randconfig-k001   clang
x86_64                           rhel-8.3-bpf   gcc  
x86_64                          rhel-8.3-func   gcc  
x86_64                    rhel-8.3-kselftests   gcc  
x86_64                         rhel-8.3-kunit   gcc  
x86_64                           rhel-8.3-kvm   gcc  
x86_64                           rhel-8.3-ltp   gcc  
x86_64                           rhel-8.3-syz   gcc  
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r012-20230329   gcc  
xtensa               randconfig-r021-20230329   gcc  
xtensa               randconfig-r026-20230329   gcc  
xtensa               randconfig-r031-20230329   gcc  
xtensa               randconfig-r033-20230329   gcc  
xtensa                    xip_kc705_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
