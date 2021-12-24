Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E40CC47ECA8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Dec 2021 08:26:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C183681970;
	Fri, 24 Dec 2021 07:26:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ulDHduMqoijb; Fri, 24 Dec 2021 07:26:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 992E281871;
	Fri, 24 Dec 2021 07:26:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3F31D1BF3EA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Dec 2021 07:26:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2CDC5812DD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Dec 2021 07:26:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m8HJcqryj3gm for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Dec 2021 07:26:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E701581348
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Dec 2021 07:26:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640330806; x=1671866806;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=S7sUX7gtooFMnWfhX1GNLGdlJMU+Qg1OintZSc5utFQ=;
 b=fE+JcJ5imFewpec7rqYEc5S5V1ZPqCxKiJ9mAJjlRfhuDtLclGvxafKJ
 qfbgDcdrJKy3GCeTF+Cv++GDnrMawfove8XjDiATJdyq6WDuN3ltggp2n
 mLfL+S6DkNRKNVsNXlowyrYKplcLde3dM07fgZfZ8zFBHPixzznPc/ig2
 DMpMz4OB+a8EtMsmjj4WPZK2zdqOi0xXFJ6Y0vL2QshP1t0v190VKd23b
 DSOtET5cb5/ny+h/yeJHBLu4bp+M/OTI1iLS2x9khcXHI643Y+FKoCbXT
 Rblv7fNFdO2GBg8ymMWBAp2QbTOl4RA4ssSddRQYxUUjAhafXCAf9OaSV w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10207"; a="301705405"
X-IronPort-AV: E=Sophos;i="5.88,231,1635231600"; d="scan'208";a="301705405"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2021 23:26:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,231,1635231600"; d="scan'208";a="759483055"
Received: from lkp-server01.sh.intel.com (HELO e357b3ef1427) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 23 Dec 2021 23:26:44 -0800
Received: from kbuild by e357b3ef1427 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1n0eyR-0002n4-Du; Fri, 24 Dec 2021 07:26:43 +0000
Date: Fri, 24 Dec 2021 15:26:02 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <61c5760a.FfsTFQqOrwLECgYp%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:master] BUILD SUCCESS
 f2b551fad8d8f2ac5e1f810ad595298381e0b0c5
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
branch HEAD: f2b551fad8d8f2ac5e1f810ad595298381e0b0c5  Merge tag 'wireless-drivers-next-2021-12-23' of git://git.kernel.org/pub/scm/linux/kernel/git/kvalo/wireless-drivers-next

elapsed time: 797m

configs tested: 180
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20211223
xtensa                         virt_defconfig
m68k                        m5307c3_defconfig
csky                             alldefconfig
sh                              ul2_defconfig
sh                      rts7751r2d1_defconfig
arm                   milbeaut_m10v_defconfig
m68k                        mvme147_defconfig
arm                          iop32x_defconfig
arc                          axs103_defconfig
arm                            qcom_defconfig
powerpc                      mgcoge_defconfig
powerpc                    mvme5100_defconfig
m68k                         amcore_defconfig
um                           x86_64_defconfig
mips                           ip27_defconfig
arc                              alldefconfig
sh                            migor_defconfig
sh                            hp6xx_defconfig
arm                       spear13xx_defconfig
arm                          gemini_defconfig
arm                         bcm2835_defconfig
powerpc                     rainier_defconfig
sh                            shmin_defconfig
sh                           se7721_defconfig
m68k                            q40_defconfig
arc                      axs103_smp_defconfig
arm                            mmp2_defconfig
arm                           omap1_defconfig
mips                            e55_defconfig
alpha                            alldefconfig
sh                           se7343_defconfig
arm                      integrator_defconfig
mips                        vocore2_defconfig
arm                          simpad_defconfig
powerpc                      ep88xc_defconfig
mips                     decstation_defconfig
arc                            hsdk_defconfig
powerpc                      pmac32_defconfig
arm                        oxnas_v6_defconfig
powerpc                     ppa8548_defconfig
mips                         tb0219_defconfig
powerpc                      pcm030_defconfig
powerpc                    amigaone_defconfig
powerpc                      arches_defconfig
sh                        apsh4ad0a_defconfig
arm                           sunxi_defconfig
arm                           corgi_defconfig
powerpc                     redwood_defconfig
arm                         lubbock_defconfig
powerpc                 mpc836x_mds_defconfig
powerpc                 linkstation_defconfig
arm                           u8500_defconfig
arm                            xcep_defconfig
um                               alldefconfig
mips                 decstation_r4k_defconfig
mips                         tb0287_defconfig
powerpc                 mpc832x_mds_defconfig
arm                       cns3420vb_defconfig
mips                         cobalt_defconfig
mips                         rt305x_defconfig
powerpc                       maple_defconfig
powerpc                      obs600_defconfig
sh                          rsk7203_defconfig
powerpc                 mpc832x_rdb_defconfig
mips                       capcella_defconfig
mips                         tb0226_defconfig
xtensa                           alldefconfig
ia64                             allmodconfig
sh                           se7724_defconfig
mips                     loongson1b_defconfig
powerpc                 mpc8313_rdb_defconfig
arm                     eseries_pxa_defconfig
powerpc64                           defconfig
arm                        neponset_defconfig
arm                         lpc18xx_defconfig
sh                ecovec24-romimage_defconfig
m68k                            mac_defconfig
arm                          exynos_defconfig
sh                          lboxre2_defconfig
arm                         palmz72_defconfig
arm                  randconfig-c002-20211224
arm                  randconfig-c002-20211223
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
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
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
i386                 randconfig-a002-20211224
i386                 randconfig-a003-20211224
i386                 randconfig-a001-20211224
i386                 randconfig-a005-20211224
i386                 randconfig-a004-20211224
i386                 randconfig-a006-20211224
x86_64               randconfig-a013-20211223
x86_64               randconfig-a015-20211223
x86_64               randconfig-a014-20211223
x86_64               randconfig-a011-20211223
x86_64               randconfig-a012-20211223
x86_64               randconfig-a016-20211223
i386                 randconfig-a012-20211223
i386                 randconfig-a011-20211223
i386                 randconfig-a014-20211223
i386                 randconfig-a016-20211223
i386                 randconfig-a015-20211223
i386                 randconfig-a013-20211223
arc                  randconfig-r043-20211223
riscv                randconfig-r042-20211223
s390                 randconfig-r044-20211223
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a001-20211223
x86_64               randconfig-a003-20211223
x86_64               randconfig-a005-20211223
x86_64               randconfig-a006-20211223
x86_64               randconfig-a004-20211223
x86_64               randconfig-a002-20211223
i386                 randconfig-a006-20211223
i386                 randconfig-a004-20211223
i386                 randconfig-a002-20211223
i386                 randconfig-a003-20211223
i386                 randconfig-a005-20211223
i386                 randconfig-a001-20211223
x86_64               randconfig-a013-20211224
x86_64               randconfig-a014-20211224
x86_64               randconfig-a015-20211224
x86_64               randconfig-a012-20211224
x86_64               randconfig-a011-20211224
x86_64               randconfig-a016-20211224
i386                 randconfig-a012-20211224
i386                 randconfig-a011-20211224
i386                 randconfig-a014-20211224
i386                 randconfig-a016-20211224
i386                 randconfig-a015-20211224
i386                 randconfig-a013-20211224

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
