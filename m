Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 96C1B509613
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Apr 2022 06:49:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0298881760;
	Thu, 21 Apr 2022 04:49:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m7KTcuc2mi6H; Thu, 21 Apr 2022 04:49:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EF9F081753;
	Thu, 21 Apr 2022 04:49:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D772D1BF95E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Apr 2022 04:49:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BD34A40524
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Apr 2022 04:49:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Gm8NWUSI1GIA for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Apr 2022 04:49:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AD67740129
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Apr 2022 04:49:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650516567; x=1682052567;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=zPbJHtLqbknnJBg7p8fhiSJlq7eWNfsKwBDlS6OenQw=;
 b=gbRA3XZaIxnmKcMIrSxIT8C9ssNkjgJa0SYAtF0BNKQV46k8z7pJmnI3
 Cc/5yJv5AMZpSUICPZcaRrrUmiQoqz0IRwKOxnKDVGfWSxHA2ZaGX3j05
 wUyhqFZzwTWipgVjv+ZX4G1nmfzRFFl2oBeGAT/fcRBo6PQKLx55Hr+tF
 7xpoqVO8ZjLipSr2MpicKiHI3011DfdBGrXiHBxg9lnwr8HtilFgZms8T
 CZlZF5Is7ZixbW1dkgFE5/X5kLFLrDb67DbquJgQnYlR47oz79UfaciGj
 dPk3urTfdO9QTt0gV11a2uHcPCyAoRiQFAKNpbLxju8pHBsbEKsicoZmK Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10323"; a="263091545"
X-IronPort-AV: E=Sophos;i="5.90,277,1643702400"; d="scan'208";a="263091545"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2022 21:49:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,277,1643702400"; d="scan'208";a="669870828"
Received: from lkp-server01.sh.intel.com (HELO 3abc53900bec) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 20 Apr 2022 21:49:25 -0700
Received: from kbuild by 3abc53900bec with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1nhOku-0007rt-Nv;
 Thu, 21 Apr 2022 04:49:24 +0000
Date: Thu, 21 Apr 2022 12:48:50 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6260e232.1mErx3P/OxINvuRn%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 a103297845aeb71949e72a9dba1f8cf06ed046ef
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
branch HEAD: a103297845aeb71949e72a9dba1f8cf06ed046ef  ice: Protect vf_state check by cfg_lock in ice_vc_process_vf_msg()

elapsed time: 2105m

configs tested: 126
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                               defconfig
arm64                            allyesconfig
arm                              allmodconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-c001
powerpc64                           defconfig
arm                       imx_v6_v7_defconfig
sh                  sh7785lcr_32bit_defconfig
powerpc                 mpc85xx_cds_defconfig
powerpc                      pcm030_defconfig
mips                     loongson1b_defconfig
arm                          lpd270_defconfig
arm                         lpc18xx_defconfig
powerpc                 canyonlands_defconfig
mips                       bmips_be_defconfig
arm                      jornada720_defconfig
powerpc                     tqm8541_defconfig
powerpc                        cell_defconfig
xtensa                         virt_defconfig
powerpc                      chrp32_defconfig
ia64                      gensparse_defconfig
sh                        apsh4ad0a_defconfig
mips                         cobalt_defconfig
arm                            qcom_defconfig
um                           x86_64_defconfig
mips                    maltaup_xpa_defconfig
powerpc                  iss476-smp_defconfig
m68k                                defconfig
s390                          debug_defconfig
arm                            xcep_defconfig
xtensa                           allyesconfig
powerpc                 mpc8540_ads_defconfig
powerpc                 mpc837x_rdb_defconfig
openrisc                 simple_smp_defconfig
powerpc                 mpc834x_itx_defconfig
xtensa                    xip_kc705_defconfig
m68k                       bvme6000_defconfig
powerpc                     stx_gp3_defconfig
sh                   secureedge5410_defconfig
powerpc                       ppc64_defconfig
arm64                            alldefconfig
sh                          polaris_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220420
ia64                             allmodconfig
ia64                             allyesconfig
ia64                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
nios2                               defconfig
arc                              allyesconfig
csky                                defconfig
nios2                            allyesconfig
alpha                               defconfig
alpha                            allyesconfig
h8300                            allyesconfig
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
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
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
x86_64                           allyesconfig
x86_64                         rhel-8.3-kunit
x86_64                               rhel-8.3
x86_64                              defconfig

clang tested configs:
riscv                randconfig-c006-20220420
mips                 randconfig-c004-20220420
x86_64                        randconfig-c007
i386                          randconfig-c001
arm                  randconfig-c002-20220420
powerpc              randconfig-c003-20220420
arm                       spear13xx_defconfig
mips                         tb0219_defconfig
powerpc                     skiroot_defconfig
powerpc                      ppc44x_defconfig
arm                          ep93xx_defconfig
powerpc                    gamecube_defconfig
arm                        neponset_defconfig
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r041-20220420
riscv                randconfig-r042-20220420
hexagon              randconfig-r045-20220420

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
