Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5939B6223FF
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Nov 2022 07:36:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 84F528141B;
	Wed,  9 Nov 2022 06:36:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 84F528141B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667975795;
	bh=LblLNGKWz5+1Tjg4U3IVj3r//+Y+fFm0YpwWfXDqqoA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ytKbLXOn3mGMKVKi0hN/w07Ov13dWtkB5DtDEv/V5EjmjRArPOSnYcMsr7AmkYDla
	 JNOQC7lcfwTp3oY14HFP6H5xxAx4cgZr+Jqc+50DgOrn7AD58TGPEG+F7qQdBQSpbl
	 fvq3ipeuJEWZyZ9PlkdYYaDdhMuJ1UAWzkAn8vCtHctqk4kSqlKpwE7ZSPJ5RPA+kd
	 /Sd8a3b1qwLKTN3QMyWuXhDxm5uW5Ii/kbnURciwr2hySgo2QLblw/nK7kJ1vPY4hn
	 Xom2C7w9IxPi/Q7q7+ppLn+BeMhfJBb3bcv99/3rWWVdlID5lAsVTHDdluUsvpY7ue
	 6Oz+JcyThV60g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D_Y2ZaX3xN9K; Wed,  9 Nov 2022 06:36:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 473568141A;
	Wed,  9 Nov 2022 06:36:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 473568141A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3F65D1BF426
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Nov 2022 06:36:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1970C60E77
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Nov 2022 06:36:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1970C60E77
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gh_i2Y8SrZGr for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Nov 2022 06:36:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DF5F960E57
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DF5F960E57
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Nov 2022 06:36:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="291290810"
X-IronPort-AV: E=Sophos;i="5.96,149,1665471600"; d="scan'208";a="291290810"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 22:36:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="669841193"
X-IronPort-AV: E=Sophos;i="5.96,149,1665471600"; d="scan'208";a="669841193"
Received: from lkp-server01.sh.intel.com (HELO e783503266e8) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 08 Nov 2022 22:36:22 -0800
Received: from kbuild by e783503266e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1osehB-0001A1-2J;
 Wed, 09 Nov 2022 06:36:21 +0000
Date: Wed, 09 Nov 2022 14:35:54 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <636b4a4a.zqy9NN454prW77d3%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667975784; x=1699511784;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=eXDXvpiy7F1LErw4I9DVDqIT4RJrnyq2cQqfbO7yEkg=;
 b=lbva36upUtFyLPM5c+OvlbAW8Anv163VggiW9IBSgQRN7Cma6/VTLIWJ
 VagmR8sNjFXBvPFKw6bfxm5X9ejTj/1vBcHweONZh/0UQEj7Q9ZZoQrej
 GW8rXiF4Qe6ZEejUs6BGKLtugWyUE7j73cIa6maYGLk4+dyroUeV/S/R5
 9WprdBJofYdQ4tZoymtBqwvEeR9Xw1RTzoUtclEYH461S1iA9I4IctIAo
 5gF7Z1FSxBlpGl6Fo66mw4NT+mCpwNQK3CzQlMHHfpOemS7I+vcdZ/4nD
 q+2n9C/ah0s8dK2Ex8Qr7R38C9EccSx5Ldj2S5DlA3PwFo1JS04TRD6Cq
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lbva36up
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 ce9e57feeed81d17d5e80ed86f516ff0d39c3867
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git master
branch HEAD: ce9e57feeed81d17d5e80ed86f516ff0d39c3867  drivers: net: xgene: disable napi when register irq failed in xgene_enet_open()

elapsed time: 795m

configs tested: 109
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
sparc                       sparc32_defconfig
csky                             alldefconfig
sh                           se7712_defconfig
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
ia64                             allmodconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
s390                                defconfig
s390                             allmodconfig
arc                                 defconfig
alpha                               defconfig
s390                             allyesconfig
i386                             allyesconfig
i386                                defconfig
i386                          randconfig-c001
x86_64               randconfig-a006-20221107
x86_64               randconfig-a001-20221107
x86_64               randconfig-a004-20221107
x86_64               randconfig-a003-20221107
x86_64               randconfig-a005-20221107
x86_64               randconfig-a002-20221107
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
xtensa                           allyesconfig
powerpc                      makalu_defconfig
powerpc                       maple_defconfig
mips                      loongson3_defconfig
sh                  sh7785lcr_32bit_defconfig
powerpc                     sequoia_defconfig
arm                             ezx_defconfig
powerpc                     mpc83xx_defconfig
powerpc                       holly_defconfig
i386                 randconfig-a001-20221107
i386                 randconfig-a006-20221107
i386                 randconfig-a003-20221107
i386                 randconfig-a002-20221107
i386                 randconfig-a005-20221107
i386                 randconfig-a004-20221107
arm                        trizeps4_defconfig
arm                           sunxi_defconfig
arc                        vdk_hs38_defconfig
m68k                        m5272c3_defconfig
sh                          rsk7269_defconfig
arc                              alldefconfig
arm                          exynos_defconfig
mips                          rb532_defconfig
arm                             rpc_defconfig
arm                      integrator_defconfig
powerpc                        cell_defconfig
powerpc                     rainier_defconfig
sh                           se7751_defconfig
powerpc                 linkstation_defconfig
powerpc                        warp_defconfig
sh                           se7722_defconfig
mips                            ar7_defconfig
parisc                generic-64bit_defconfig
arm                        clps711x_defconfig
arm                      footbridge_defconfig
m68k                       m5275evb_defconfig
nios2                            alldefconfig
powerpc                    klondike_defconfig
mips                        bcm47xx_defconfig
riscv                               defconfig
openrisc                 simple_smp_defconfig

clang tested configs:
hexagon              randconfig-r041-20221108
hexagon              randconfig-r045-20221108
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
arm                       imx_v4_v5_defconfig
arm                          moxart_defconfig
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
mips                     cu1000-neo_defconfig
mips                          ath25_defconfig
mips                        qi_lb60_defconfig
arm                         mv78xx0_defconfig
powerpc                 mpc836x_rdk_defconfig
x86_64                        randconfig-k001
i386                              allnoconfig
arm                       aspeed_g4_defconfig
arm64                            allyesconfig
powerpc                     skiroot_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
