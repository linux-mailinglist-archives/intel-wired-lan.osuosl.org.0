Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7AFE4DB6F2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Mar 2022 18:11:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DC09C40A9C;
	Wed, 16 Mar 2022 17:11:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xiXhDEzSu6Zv; Wed, 16 Mar 2022 17:11:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5F29D40A88;
	Wed, 16 Mar 2022 17:11:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6A5F71BF33D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Mar 2022 17:11:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 569A8611E5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Mar 2022 17:11:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1chqHKWzSF2C for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Mar 2022 17:11:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7CCF960AD0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Mar 2022 17:11:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647450688; x=1678986688;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=blQeymdUqCqFdEkaS0kzRGAv6ERaDhDoAY9d/rZcFBI=;
 b=CCWBwzmjjNjGdlPmIq328TSE3p9Yh0EPMHXrfpkDD3f7gMwWC63qIKA6
 svHyJsXt1yNUkzSCjQ8O8spaKs+epgQNPGk+j75uPaH4PXZHIyEPzYwDc
 /vMNsx7jQ1aBI0yXvkxEp76qxYy7SrI1nYY1hT5zsw7GloBm6s9uhba9+
 0iuzh/0z/sxhwzIg0R6LgkRaasPzE8u5GRWuGeWw3sMshZ+Q4jf/wrop5
 4wkPfwgB7Kh2hCg1I3Upze/NvM1CkO8IJLIwd5iSWUnSHQZCdUgxHuW1Y
 GX5A9vGSDmp8HL4PMOVcBEXALopuhoEE5R9+ct+WStyqDBxYf1KuTKr4/ A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10288"; a="281451218"
X-IronPort-AV: E=Sophos;i="5.90,187,1643702400"; d="scan'208";a="281451218"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2022 10:11:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,187,1643702400"; d="scan'208";a="714700243"
Received: from lkp-server02.sh.intel.com (HELO 89b41b6ae01c) ([10.239.97.151])
 by orsmga005.jf.intel.com with ESMTP; 16 Mar 2022 10:11:26 -0700
Received: from kbuild by 89b41b6ae01c with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nUXBF-000CfN-KP; Wed, 16 Mar 2022 17:11:25 +0000
Date: Thu, 17 Mar 2022 01:11:21 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62321a39.AHT5ZjweP9uMrl1y%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 06cee9956f47a550f24e7a48db994c4685ad99c8
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
branch HEAD: 06cee9956f47a550f24e7a48db994c4685ad99c8  ice: destroy flow director filter mutex after releasing VSIs

elapsed time: 1090m

configs tested: 158
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm                              allmodconfig
arm                              allyesconfig
arm64                            allyesconfig
arm64                               defconfig
i386                          randconfig-c001
powerpc              randconfig-c003-20220313
powerpc                      tqm8xx_defconfig
m68k                         apollo_defconfig
sh                        edosk7760_defconfig
mips                  decstation_64_defconfig
powerpc64                           defconfig
sh                          landisk_defconfig
powerpc                    amigaone_defconfig
alpha                               defconfig
h8300                            alldefconfig
sh                          rsk7201_defconfig
s390                          debug_defconfig
arm                         lubbock_defconfig
powerpc                 canyonlands_defconfig
xtensa                  cadence_csp_defconfig
sh                 kfr2r09-romimage_defconfig
sh                          rsk7269_defconfig
arm                        realview_defconfig
mips                         mpc30x_defconfig
powerpc                     tqm8541_defconfig
m68k                        mvme16x_defconfig
mips                        bcm47xx_defconfig
powerpc                     tqm8548_defconfig
sh                          r7780mp_defconfig
powerpc                      pasemi_defconfig
s390                       zfcpdump_defconfig
um                               alldefconfig
arm                         axm55xx_defconfig
powerpc                      pcm030_defconfig
arm                        shmobile_defconfig
arm                          pxa910_defconfig
arm                         at91_dt_defconfig
powerpc                      arches_defconfig
powerpc                     mpc83xx_defconfig
m68k                           sun3_defconfig
m68k                        m5272c3_defconfig
m68k                        m5307c3_defconfig
mips                           ci20_defconfig
sh                     sh7710voipgw_defconfig
sh                        sh7763rdp_defconfig
powerpc                     pq2fads_defconfig
arm                  randconfig-c002-20220313
arm                  randconfig-c002-20220314
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nds32                             allnoconfig
nios2                               defconfig
arc                              allyesconfig
csky                                defconfig
nds32                               defconfig
nios2                            allyesconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
parisc64                            defconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
s390                             allyesconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a004-20220314
x86_64               randconfig-a005-20220314
x86_64               randconfig-a003-20220314
x86_64               randconfig-a002-20220314
x86_64               randconfig-a006-20220314
x86_64               randconfig-a001-20220314
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                 randconfig-a001-20220314
i386                 randconfig-a002-20220314
i386                 randconfig-a004-20220314
i386                 randconfig-a003-20220314
i386                 randconfig-a005-20220314
i386                 randconfig-a006-20220314
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
arc                  randconfig-r043-20220313
riscv                randconfig-r042-20220313
s390                 randconfig-r044-20220313
arc                  randconfig-r043-20220314
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                                  kexec

clang tested configs:
mips                      maltaaprp_defconfig
powerpc                      ppc44x_defconfig
powerpc                 mpc836x_mds_defconfig
powerpc                 mpc8560_ads_defconfig
hexagon                          alldefconfig
arm                        neponset_defconfig
riscv                          rv32_defconfig
powerpc                 mpc836x_rdk_defconfig
arm                      pxa255-idp_defconfig
powerpc                     ppa8548_defconfig
mips                        omega2p_defconfig
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64               randconfig-a014-20220314
x86_64               randconfig-a015-20220314
x86_64               randconfig-a016-20220314
x86_64               randconfig-a012-20220314
x86_64               randconfig-a013-20220314
x86_64               randconfig-a011-20220314
i386                 randconfig-a012-20220314
i386                 randconfig-a011-20220314
i386                 randconfig-a013-20220314
i386                 randconfig-a014-20220314
i386                 randconfig-a015-20220314
i386                 randconfig-a016-20220314
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
hexagon              randconfig-r045-20220313
hexagon              randconfig-r045-20220314
hexagon              randconfig-r041-20220313
hexagon              randconfig-r041-20220314
riscv                randconfig-r042-20220314
s390                 randconfig-r044-20220314

---
0-DAY CI Kernel Test Service
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
