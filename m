Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CFC254BB2D6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Feb 2022 08:03:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 74FE46076C;
	Fri, 18 Feb 2022 07:03:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2wlHYLqq2sJO; Fri, 18 Feb 2022 07:03:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6E340605AD;
	Fri, 18 Feb 2022 07:03:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3F5451BF5DD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Feb 2022 07:03:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 098A484BE0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Feb 2022 07:03:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sRgZPbD2DmUl for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Feb 2022 07:03:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4A60584BE1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Feb 2022 07:03:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645167798; x=1676703798;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=kqRasoGSaYzTsX71nte9n3q8QP+Wt4wryiNe7eXv94c=;
 b=KWmqnHO2qkuqzSAnuZ7H3E3UXg1Xzk/SWDYEh1feSP8dYUBeLWgYPcZ/
 fD7IsEgnPS43iRBv8csdCAvkx1WTql1rPHra+a2FkrvRdjRG7CimWlQS1
 1uwAYZI5MoPNQq4QIGM9uppcoehga6I/IHUloxo7Y6rCEPnCGks2qidVM
 B9gUnm35x7sp6ilwo2u6YC1SCqeLAEli1I2rFGgdrgHe3nZvzDoIJ1jlo
 J3xiVY24P4Ebj8Le39spBHEDmUAlODTHUbGHMzCsg2AE7SZMMLHv4/DzN
 2Q8JuCwi5WXKp+pDpOUmTMYopKptsyPvShB31N+zNqa5Ljsw/SJ9by7yA A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10261"; a="231051318"
X-IronPort-AV: E=Sophos;i="5.88,378,1635231600"; d="scan'208";a="231051318"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 23:03:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,378,1635231600"; d="scan'208";a="546149086"
Received: from lkp-server01.sh.intel.com (HELO 6f05bf9e3301) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 17 Feb 2022 23:03:16 -0800
Received: from kbuild by 6f05bf9e3301 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nKxIR-00013R-UE; Fri, 18 Feb 2022 07:03:15 +0000
Date: Fri, 18 Feb 2022 15:02:58 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <620f44a2.7Ko0rq62hH6oGcuM%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:master] BUILD SUCCESS
 be6b41c15dc09c067492bd23668763f551747e4e
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
branch HEAD: be6b41c15dc09c067492bd23668763f551747e4e  ipv6/addrconf: ensure addrconf_verify_rtnl() has completed

elapsed time: 856m

configs tested: 114
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                          randconfig-c001
powerpc                       maple_defconfig
sh                         microdev_defconfig
mips                  decstation_64_defconfig
arc                                 defconfig
parisc                generic-32bit_defconfig
m68k                            mac_defconfig
ia64                         bigsur_defconfig
powerpc                        cell_defconfig
riscv                            allyesconfig
xtensa                  nommu_kc705_defconfig
xtensa                    xip_kc705_defconfig
arc                          axs101_defconfig
arc                        vdk_hs38_defconfig
arc                    vdk_hs38_smp_defconfig
xtensa                generic_kc705_defconfig
powerpc                 mpc834x_itx_defconfig
powerpc                       eiger_defconfig
h8300                               defconfig
microblaze                      mmu_defconfig
m68k                       m5475evb_defconfig
arm                        spear6xx_defconfig
arm                            lart_defconfig
sh                            titan_defconfig
h8300                            alldefconfig
powerpc                      pasemi_defconfig
x86_64                           alldefconfig
powerpc                 mpc8540_ads_defconfig
sh                     sh7710voipgw_defconfig
arm                           h5000_defconfig
arm                          pxa3xx_defconfig
ia64                          tiger_defconfig
m68k                           sun3_defconfig
powerpc                      makalu_defconfig
arm                  randconfig-c002-20220217
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc64                            defconfig
parisc                           allyesconfig
s390                                defconfig
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
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
arm                     davinci_all_defconfig
arm                      tct_hammer_defconfig
riscv                            alldefconfig
powerpc                     tqm5200_defconfig
arm                        magician_defconfig
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
hexagon              randconfig-r045-20220217
hexagon              randconfig-r041-20220217
riscv                randconfig-r042-20220217

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
