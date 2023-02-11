Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D9666933F5
	for <lists+intel-wired-lan@lfdr.de>; Sat, 11 Feb 2023 22:14:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B34EC415F0;
	Sat, 11 Feb 2023 21:14:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B34EC415F0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676150077;
	bh=0OpmSleKKH0F+NgXl734uGDeZ7xYcVUTIgw6pMh+Vdc=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=FXUyeI6x/gVAOIppotMoTpRRvXpLWY6AAPj9fqpknbVOMzVNDnFOtynD8bWETg1/a
	 VvwlXL0Ln4gCbRMdvqRM4lhiLpBRg6M4OfvUS2E/mbhqiqJeErZojLxwGUpTwlZWF2
	 qp6S0SiSmm0CGQBl8xWU2IyZZyryJwoptprbascEDbB2XUit6L1W2fEejmpcFfws0o
	 Huo1VxfwrHuSFnpH2jzf5aPtYDqTSydD8dV4JRKyUYUTgudgisQr8qGT5rnzVjbRmk
	 jTwmSw+cDM3jPa2doxJq/HoxYjkvRjsra4Qd8Vy8NSADxnoJX7SLKc9iWuztiupKSQ
	 JECsYu+bVQhaw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IjexA_1dagb1; Sat, 11 Feb 2023 21:14:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 49C64403C7;
	Sat, 11 Feb 2023 21:14:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 49C64403C7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EB4E91BF592
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Feb 2023 21:14:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D0ADB60B05
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Feb 2023 21:14:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D0ADB60B05
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id owy2uhQf82-Z for <intel-wired-lan@lists.osuosl.org>;
 Sat, 11 Feb 2023 21:14:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6C54D606AA
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6C54D606AA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Feb 2023 21:14:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10618"; a="395266264"
X-IronPort-AV: E=Sophos;i="5.97,290,1669104000"; d="scan'208";a="395266264"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2023 13:14:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10618"; a="661748073"
X-IronPort-AV: E=Sophos;i="5.97,290,1669104000"; d="scan'208";a="661748073"
Received: from lkp-server01.sh.intel.com (HELO 4455601a8d94) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 11 Feb 2023 13:14:25 -0800
Received: from kbuild by 4455601a8d94 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pQxCS-0006nt-1V;
 Sat, 11 Feb 2023 21:14:24 +0000
Date: Sun, 12 Feb 2023 05:13:28 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63e804f8.mzayQkH58PaihHr+%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676150067; x=1707686067;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=vlnBwRDkY4TgOKI+L9n2fMFf690isHwLEcCpEDlHArk=;
 b=eblTVJUGsjPFv54D7gC618+UMBzIK1FVgssJrCdUlUFvH4+WmoReidaC
 g5RYhrVUYcgRewX9AgNXoHc9LwRR7qBZdDg9EIE9eXbKKb7O0uJLQ4YCO
 /dwMyHZdsxOiCD5wL5m8Am8bjrT9CLQY9T9NcH9QSaBdNcYJoyARRwdnu
 N6bgXgI2Q2g3b88eHAMR/q5dqMcGuoPcKwYnHXJ9OQVr5QWdGQgNEnMEW
 8GpD8tbpkJjwkFQz1volrTVsnm6em4VYnuSEBr/2LOPX3BadEs1T4NGwR
 7NDUEdA6HNJwcBV0xgAqTSsgp9NyG3jlKjtllsNmtIqD+TwA4EwGSUNwX
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eblTVJUG
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 ccca88ea478fd547e96228cf9f85bb981711202e
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
branch HEAD: ccca88ea478fd547e96228cf9f85bb981711202e  ixgbe: add double of VLAN header when computing the max MTU

elapsed time: 1369m

configs tested: 114
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
alpha                            allyesconfig
alpha                               defconfig
arc                              allyesconfig
arc                                 defconfig
arc                 nsimosci_hs_smp_defconfig
arc                  randconfig-r043-20230211
arm                              allmodconfig
arm                              allyesconfig
arm                                 defconfig
arm                            hisi_defconfig
arm                          lpd270_defconfig
arm64                            allyesconfig
arm64                               defconfig
csky                                defconfig
i386                             allyesconfig
i386                              debian-10.3
i386                         debian-10.3-func
i386                   debian-10.3-kselftests
i386                        debian-10.3-kunit
i386                          debian-10.3-kvm
i386                                defconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
i386                          randconfig-c001
ia64                             allmodconfig
ia64                                defconfig
loongarch                        allmodconfig
loongarch                         allnoconfig
loongarch                           defconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                          multi_defconfig
m68k                        stmark2_defconfig
mips                             allmodconfig
mips                             allyesconfig
mips                       bmips_be_defconfig
nios2                               defconfig
parisc                              defconfig
parisc                generic-64bit_defconfig
parisc64                            defconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
powerpc                   currituck_defconfig
powerpc                 linkstation_defconfig
powerpc                mpc7448_hpc2_defconfig
powerpc                 mpc837x_rdb_defconfig
powerpc                  storcenter_defconfig
powerpc                     tqm8555_defconfig
riscv                            allmodconfig
riscv                             allnoconfig
riscv                               defconfig
riscv             nommu_k210_sdcard_defconfig
riscv                randconfig-r042-20230211
riscv                          rv32_defconfig
s390                             allmodconfig
s390                             allyesconfig
s390                                defconfig
s390                 randconfig-r044-20230211
s390                       zfcpdump_defconfig
sh                               allmodconfig
sparc                               defconfig
um                               alldefconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                            allnoconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                                  kexec
x86_64                        randconfig-a002
x86_64                        randconfig-a004
x86_64                        randconfig-a006
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
x86_64                               rhel-8.3
xtensa                         virt_defconfig

clang tested configs:
arm                         bcm2835_defconfig
arm                         orion5x_defconfig
arm                  randconfig-r046-20230211
arm                        spear3xx_defconfig
hexagon              randconfig-r041-20230210
hexagon              randconfig-r041-20230211
hexagon              randconfig-r041-20230212
hexagon              randconfig-r045-20230210
hexagon              randconfig-r045-20230211
hexagon              randconfig-r045-20230212
i386                             allyesconfig
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
mips                          ath79_defconfig
mips                           ip27_defconfig
mips                           mtx1_defconfig
mips                       rbtx49xx_defconfig
powerpc                 mpc832x_rdb_defconfig
powerpc                 mpc836x_rdk_defconfig
powerpc                      ppc64e_defconfig
riscv                randconfig-r042-20230210
riscv                randconfig-r042-20230212
s390                 randconfig-r044-20230210
s390                 randconfig-r044-20230212
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64                        randconfig-k001

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
