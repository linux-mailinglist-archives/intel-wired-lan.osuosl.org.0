Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8DE65080C1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Apr 2022 07:55:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 365DE40253;
	Wed, 20 Apr 2022 05:55:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XhbcrNnthKVb; Wed, 20 Apr 2022 05:55:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B46644018E;
	Wed, 20 Apr 2022 05:55:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E53B71BF3E0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Apr 2022 05:55:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DF27B60FF7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Apr 2022 05:55:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8C9qRmNheIVc for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Apr 2022 05:55:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A6EBA60FED
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Apr 2022 05:55:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650434107; x=1681970107;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=zWwY3kQXaOFsVrZK7O2tToCEkxBulG3rRN8vG2P3aWk=;
 b=Q83FVShXaRo6xCdDYyCWEZtlIVUX1h3kVIptcucjz4zV+LcLcijSNNmC
 oEC3jaVNIowYRZzz/d1iFOatTakg3RpXPqgB7leR5P6QczlfB9efErFS5
 ApYKMbOT8dzEDj5JFd0ZYznZNfJVBlOTPDEHJ0w5sV97DmVlT3YwOPrS0
 8FqZ9GyFXOKoQgoEhZQZvCzA32nWFJenHt/9SAEgTikV51swK7DSj+IEp
 8RYL4Kr3iNYofnu4v5Rhfo6mffE39kEsxPxzlxAAkSxRLN5yHI0uM0taA
 IU1gq6spD7pGnLEh+UtrNG6sGc+0rzG2R0qKa1FbYXZaZGdtuCVrcjR9z Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10322"; a="262804245"
X-IronPort-AV: E=Sophos;i="5.90,274,1643702400"; d="scan'208";a="262804245"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2022 22:55:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,274,1643702400"; d="scan'208";a="702516283"
Received: from lkp-server01.sh.intel.com (HELO 3abc53900bec) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 19 Apr 2022 22:55:06 -0700
Received: from kbuild by 3abc53900bec with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1nh3Iv-0006d0-EY;
 Wed, 20 Apr 2022 05:55:05 +0000
Date: Wed, 20 Apr 2022 13:54:48 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <625fa028.ot4oJm6ECMOq3i+n%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:master] BUILD SUCCESS
 cc4bdef26ecd56de16a04bc6d99aa10ff9076498
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git master
branch HEAD: cc4bdef26ecd56de16a04bc6d99aa10ff9076498  Merge branch 'rtnetlink-improve-alt_ifname-config-and-fix-dangerous-group-usage'

elapsed time: 1053m

configs tested: 130
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                               defconfig
arm64                            allyesconfig
arm                              allmodconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-c001
m68k                         amcore_defconfig
sh                        edosk7760_defconfig
m68k                        mvme147_defconfig
arm                            pleb_defconfig
nios2                            alldefconfig
ia64                         bigsur_defconfig
arm                             rpc_defconfig
powerpc                       eiger_defconfig
nios2                         10m50_defconfig
arm                          pxa910_defconfig
sh                            hp6xx_defconfig
powerpc                 linkstation_defconfig
powerpc                 mpc834x_itx_defconfig
sh                           se7724_defconfig
ia64                        generic_defconfig
mips                       capcella_defconfig
powerpc                      pcm030_defconfig
ia64                             alldefconfig
powerpc                     redwood_defconfig
sh                           se7343_defconfig
mips                           jazz_defconfig
arc                           tb10x_defconfig
arm                          gemini_defconfig
mips                         cobalt_defconfig
mips                     decstation_defconfig
powerpc64                        alldefconfig
sh                           se7721_defconfig
m68k                        m5307c3_defconfig
um                           x86_64_defconfig
sh                            titan_defconfig
csky                                defconfig
sh                             shx3_defconfig
sh                        sh7757lcr_defconfig
arm                           u8500_defconfig
sh                           sh2007_defconfig
openrisc                            defconfig
arm                      footbridge_defconfig
sh                        apsh4ad0a_defconfig
sh                   rts7751r2dplus_defconfig
h8300                       h8s-sim_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220419
arm                  randconfig-c002-20220420
ia64                             allmodconfig
ia64                             allyesconfig
ia64                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
nios2                               defconfig
arc                              allyesconfig
nios2                            allyesconfig
alpha                               defconfig
alpha                            allyesconfig
h8300                            allyesconfig
xtensa                           allyesconfig
arc                                 defconfig
sh                               allmodconfig
s390                                defconfig
s390                             allmodconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
s390                             allyesconfig
sparc                               defconfig
i386                             allyesconfig
sparc                            allyesconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
riscv                randconfig-r042-20220419
arc                  randconfig-r043-20220419
s390                 randconfig-r044-20220419
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
riscv                            allmodconfig
riscv                            allyesconfig
x86_64                    rhel-8.3-kselftests
um                             i386_defconfig
x86_64                          rhel-8.3-func
x86_64                                  kexec
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                         rhel-8.3-kunit
x86_64                               rhel-8.3

clang tested configs:
x86_64                        randconfig-c007
powerpc              randconfig-c003-20220419
arm                  randconfig-c002-20220419
i386                          randconfig-c001
riscv                randconfig-c006-20220419
mips                 randconfig-c004-20220419
s390                 randconfig-c005-20220419
arm                       netwinder_defconfig
arm                     davinci_all_defconfig
mips                           ip28_defconfig
mips                       lemote2f_defconfig
powerpc                     tqm5200_defconfig
powerpc                     kilauea_defconfig
arm                           spitz_defconfig
powerpc                      ppc64e_defconfig
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
