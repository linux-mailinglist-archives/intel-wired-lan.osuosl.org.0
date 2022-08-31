Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BA0BB5A75DF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Aug 2022 07:44:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9E6946104F;
	Wed, 31 Aug 2022 05:44:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9E6946104F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661924650;
	bh=l8uuQooFDpEpW0exOKnTq/+2HoH410N04nQfqDioZV8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=93nt7GxFYHx+xNuWGt+RbgxCoQDVN0JQT0FdpC9d/EtAMVbj2QnSYcfCyd6KDjdtj
	 I5njAt8bDSABkZLdiUPj7a+jLRqCL0gXLdoZXnaZMUDXT0vGZ4iuh+bo7JDx8zANIZ
	 IGZJAAdDojf0e9uZUcjxpIPAQnCBkAc/n/J/zkH5HOlgL1aqlDcGMWqbKbexN0DFsK
	 CA4ekZy3wr0ynkS35kmMvhBYzvxcRzSgEy/Q08BiuJKrU/Sm4LEq2yeX31iXpW1wB4
	 7IpOD/kbfh+tkWvrFUfX1apGQtA9sJHovbQxHXrRKJI/bo6o2cZIlJXcJarjPp0mXm
	 ryD0lM/BPQvJw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KrH8dUTYPngM; Wed, 31 Aug 2022 05:44:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4F1C660B0B;
	Wed, 31 Aug 2022 05:44:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4F1C660B0B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2C23A1BF947
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Aug 2022 05:44:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 05ED560B0B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Aug 2022 05:44:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 05ED560B0B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YN4hDDMQ9W2d for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Aug 2022 05:44:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A572360AE0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A572360AE0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Aug 2022 05:44:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10455"; a="282350450"
X-IronPort-AV: E=Sophos;i="5.93,277,1654585200"; d="scan'208";a="282350450"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2022 22:43:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,277,1654585200"; d="scan'208";a="940321629"
Received: from lkp-server02.sh.intel.com (HELO 77b6d4e16fc5) ([10.239.97.151])
 by fmsmga005.fm.intel.com with ESMTP; 30 Aug 2022 22:43:57 -0700
Received: from kbuild by 77b6d4e16fc5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oTGW4-00012p-1A;
 Wed, 31 Aug 2022 05:43:56 +0000
Date: Wed, 31 Aug 2022 13:43:30 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <630ef502.RU300JdGKnXxpCxk%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661924643; x=1693460643;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=nt1zmPh20g8kKPVcqrKd1aNv633Agj2kz5I7y4KYeyE=;
 b=LFdre9QzVVSIyVZca3MQhhht37UgUuGGpDYWXpE+R4/ViGLlU7+d7sLY
 Y87s/6L/d5MpMZ48Wd4JmX7FLzesiphItIYg7TW2LCqMvch7s13+KVTWd
 8HL+jjfptGMlvgXOxf/znmgCDaUrXxKbCBjUUfmlKFvF2uIPYmFImZZ5D
 7Ts6E15Lg0JxfQ4yFZTOapPnG10ObYrkJkjScq+OXskJees3kVO2TbiZU
 6Hjz6hTaET4W1CShMgchTbtZycqZkAtDCfaVepYx2ywohl98M8ZsWcGQz
 GliqMUY8Lva7ZRSjebBzEnb6VeTzMEGrKJso4S1iQgGucAiGYPW9YQsgV
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LFdre9Qz
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 f612466ebecb12a00d9152344ddda6f6345f04dc
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
branch HEAD: f612466ebecb12a00d9152344ddda6f6345f04dc  net/sched: fix netdevice reference leaks in attach_default_qdiscs()

elapsed time: 952m

configs tested: 119
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                  randconfig-r043-20220830
um                           x86_64_defconfig
um                             i386_defconfig
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
i386                             allyesconfig
i386                                defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
i386                          randconfig-a005
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
sparc                             allnoconfig
sh                           se7721_defconfig
sh                        edosk7760_defconfig
m68k                            mac_defconfig
x86_64                           rhel-8.3-kvm
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                    rhel-8.3-kselftests
x86_64                         rhel-8.3-kunit
arm                     eseries_pxa_defconfig
powerpc                 mpc8540_ads_defconfig
xtensa                    smp_lx200_defconfig
arm                          lpd270_defconfig
openrisc                         alldefconfig
loongarch                           defconfig
loongarch                         allnoconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a015
arm                         nhk8815_defconfig
xtensa                  cadence_csp_defconfig
x86_64                           alldefconfig
arm                         nhk8815_defconfig
i386                          randconfig-a016
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-a012
i386                          randconfig-a014
arm                      integrator_defconfig
sh                          kfr2r09_defconfig
arm                         cm_x300_defconfig
nios2                            alldefconfig
openrisc                  or1klitex_defconfig
i386                          randconfig-c001
sparc                               defconfig
mips                      loongson3_defconfig
m68k                       m5475evb_defconfig
xtensa                  nommu_kc705_defconfig
mips                       bmips_be_defconfig
arc                        nsim_700_defconfig
microblaze                      mmu_defconfig
arm                        realview_defconfig
ia64                      gensparse_defconfig
x86_64                        randconfig-a011
x86_64                        randconfig-a013
ia64                             allmodconfig
sh                             sh03_defconfig
sh                              ul2_defconfig
xtensa                           alldefconfig
m68k                          sun3x_defconfig
sh                             espt_defconfig
arm                       imx_v6_v7_defconfig
mips                           jazz_defconfig
powerpc                     stx_gp3_defconfig
powerpc                     asp8347_defconfig
sh                           se7619_defconfig
sh                         apsh4a3a_defconfig
arm64                            alldefconfig
mips                        bcm47xx_defconfig
powerpc                       eiger_defconfig
arc                 nsimosci_hs_smp_defconfig
arc                        vdk_hs38_defconfig
arm                           u8500_defconfig
arm                           tegra_defconfig
arm                          badge4_defconfig
arm                         s3c6400_defconfig
powerpc                     sequoia_defconfig
sh                          rsk7203_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func

clang tested configs:
hexagon              randconfig-r045-20220830
hexagon              randconfig-r041-20220830
s390                 randconfig-r044-20220830
riscv                randconfig-r042-20220830
x86_64                        randconfig-k001
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
i386                          randconfig-a015
arm                         s5pv210_defconfig
powerpc                     tqm8560_defconfig
mips                     loongson2k_defconfig
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
arm                      tct_hammer_defconfig
powerpc                      ppc64e_defconfig
arm                             mxs_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
