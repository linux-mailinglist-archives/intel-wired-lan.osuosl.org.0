Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B01C131DD47
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Feb 2021 17:26:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6D91585380;
	Wed, 17 Feb 2021 16:26:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iMK1qqTQHtEi; Wed, 17 Feb 2021 16:26:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BAB998515C;
	Wed, 17 Feb 2021 16:26:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EC7061BF429
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Feb 2021 16:26:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E3A7A6F53C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Feb 2021 16:26:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N0taAvqJSRXW for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Feb 2021 16:26:34 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id D201E6F569; Wed, 17 Feb 2021 16:26:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 193DA6F53C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Feb 2021 16:26:32 +0000 (UTC)
IronPort-SDR: 9qFhKZiq5jtLwh3qj9u9GfofUprIpm+YeuEvq4v/T6VuT/C+JpL+TFWYPIFYfnhNlXaznecJ2o
 f9uHd7pBYihQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9897"; a="162372301"
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; d="scan'208";a="162372301"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2021 08:26:32 -0800
IronPort-SDR: ifWv4mQnphzuTyw+onUtFoRZbtSxH2VzZJVC57DI3muD4PmakDuF6BCPadaMksrgj7KbF1g/lE
 KLu8fzM7lfbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; d="scan'208";a="580921277"
Received: from lkp-server02.sh.intel.com (HELO cd560a204411) ([10.239.97.151])
 by orsmga005.jf.intel.com with ESMTP; 17 Feb 2021 08:26:31 -0800
Received: from kbuild by cd560a204411 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lCPen-00096x-Vv; Wed, 17 Feb 2021 16:26:29 +0000
Date: Thu, 18 Feb 2021 00:25:51 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <602d438f.aIfRhlt3zXkNJSWH%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 acad41d948db537ceac9d50c132653d82222343c
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: acad41d948db537ceac9d50c132653d82222343c  igc: Remove unused MII_CR_LOOPBACK

elapsed time: 724m

configs tested: 111
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
powerpc                     ep8248e_defconfig
arm                           spitz_defconfig
mips                  decstation_64_defconfig
xtensa                              defconfig
sh                  sh7785lcr_32bit_defconfig
mips                           jazz_defconfig
powerpc                        fsp2_defconfig
csky                             alldefconfig
arc                           tb10x_defconfig
alpha                               defconfig
sh                           se7343_defconfig
arc                     haps_hs_smp_defconfig
powerpc                      walnut_defconfig
sh                        edosk7760_defconfig
arm                      footbridge_defconfig
m68k                        m5272c3_defconfig
sh                          rsk7264_defconfig
powerpc                   lite5200b_defconfig
powerpc                     mpc83xx_defconfig
arm                              alldefconfig
xtensa                           allyesconfig
mips                         tb0287_defconfig
arm                     eseries_pxa_defconfig
arm                             rpc_defconfig
powerpc                     sbc8548_defconfig
sh                        apsh4ad0a_defconfig
arm                       imx_v4_v5_defconfig
i386                             allyesconfig
m68k                                defconfig
arm                      jornada720_defconfig
ia64                          tiger_defconfig
sh                           sh2007_defconfig
sh                     sh7710voipgw_defconfig
m68k                          hp300_defconfig
ia64                                defconfig
powerpc                      ppc64e_defconfig
sh                            shmin_defconfig
mips                         cobalt_defconfig
xtensa                  cadence_csp_defconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                            allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
sparc                            allyesconfig
sparc                               defconfig
i386                               tinyconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a003-20210216
i386                 randconfig-a005-20210216
i386                 randconfig-a002-20210216
i386                 randconfig-a006-20210216
i386                 randconfig-a001-20210216
i386                 randconfig-a004-20210216
x86_64               randconfig-a013-20210217
x86_64               randconfig-a016-20210217
x86_64               randconfig-a012-20210217
x86_64               randconfig-a015-20210217
x86_64               randconfig-a014-20210217
x86_64               randconfig-a011-20210217
i386                 randconfig-a016-20210215
i386                 randconfig-a014-20210215
i386                 randconfig-a012-20210215
i386                 randconfig-a013-20210215
i386                 randconfig-a011-20210215
i386                 randconfig-a015-20210215
x86_64               randconfig-a003-20210216
x86_64               randconfig-a002-20210216
x86_64               randconfig-a004-20210216
x86_64               randconfig-a001-20210216
x86_64               randconfig-a005-20210216
x86_64               randconfig-a006-20210216
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
