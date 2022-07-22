Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D16FC57E076
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Jul 2022 13:05:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D3BD1605B3;
	Fri, 22 Jul 2022 11:05:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D3BD1605B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658487904;
	bh=CoxV1Cwj/WRsw/NSHvXO+bAS0QQKmsN9x716IaSlZ1o=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Xs5I1E2tftBuNV1KrgTGf+/Jps1UM4GlWmtwseVeHsvAICWNxyQlMrCyJCepDrPWj
	 jMAe134LbeoL3umlswxthzTTT37o/20vZUeP+wsEGSdGqZcb9nDohFsE0FECrVaFtN
	 un3nrRb2g7owGze11TvqMsm9NRzJHsb9obcsyPzwSx0IG7uKnDSfY5YHksT2uWA35T
	 OYG+hmiCVFE2Qy9nzMbY9CdM21gIrXCq/tWTC/XL9ZmmCHhJ4a6uwOZIYpaBT9hicZ
	 g9tXYoyMKOSDoOxDmR9IYxwhxS5any36HunD21gPzyS9IfV4FJSj9IuuUv+BhpQ/U8
	 1HUefty0/UOWg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eY6RL6BdPdF2; Fri, 22 Jul 2022 11:05:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AA881610D6;
	Fri, 22 Jul 2022 11:05:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AA881610D6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 674D61BF312
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Jul 2022 11:04:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 41989848DD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Jul 2022 11:04:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 41989848DD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HwLCSmUU3AKA for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Jul 2022 11:04:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D938F82422
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D938F82422
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Jul 2022 11:04:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10415"; a="287295405"
X-IronPort-AV: E=Sophos;i="5.93,185,1654585200"; d="scan'208";a="287295405"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2022 04:04:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,185,1654585200"; d="scan'208";a="574133477"
Received: from lkp-server01.sh.intel.com (HELO e0eace57cfef) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 22 Jul 2022 04:04:40 -0700
Received: from kbuild by e0eace57cfef with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oEqSW-0001N4-0Y;
 Fri, 22 Jul 2022 11:04:40 +0000
Date: Fri, 22 Jul 2022 19:03:39 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62da840b.cI0qR2gRnFXRnOYI%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658487894; x=1690023894;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=m45bfCpkKSPwryCtmycebXijXYv9tqMxUD/wPchrgbc=;
 b=XkoqLZhb/62f5htqPwOijHkAQeSBPOnkzGEr5u0D94grzFcVId1sgr/7
 EQk3ofYkuWEx9Ev1YRgdLb7zZ4itqes3AStC/XU7PUPm1iN24ccAzVIbp
 uTozVZxSl20HyVQE0cXoemrMm1YSZkXVfvjqLtSlQ0VBVy3tL5NuSKPyO
 SvDy6nX493a9yFLB9yF4zBIxtOf23V0JtLjFKh2efrO/C98MlPtu8rMJG
 T+arWvHMXd+0X35gcKbZD4N055xEIoiP/2u/qyF0fEANUcjuy5tQyhHO5
 k2X2BJGX51dIk5uUFr+8a09jhpcxBvr/U5SVub+3MTV0QOCGZ3kBKYQe/
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XkoqLZhb
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 32069d7417de88a30d17906c219c7cde762ce8b8
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
branch HEAD: 32069d7417de88a30d17906c219c7cde762ce8b8  ixgbe: Manual AN-37 for troublesome link partners for X550 SFI

elapsed time: 729m

configs tested: 124
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-c001
powerpc              randconfig-c003-20220722
sh                   sh7724_generic_defconfig
csky                                defconfig
powerpc                 mpc85xx_cds_defconfig
mips                     loongson1b_defconfig
sh                               j2_defconfig
arc                          axs101_defconfig
alpha                               defconfig
mips                         cobalt_defconfig
arm                      jornada720_defconfig
microblaze                          defconfig
arc                 nsimosci_hs_smp_defconfig
powerpc                 mpc834x_mds_defconfig
sh                              ul2_defconfig
powerpc                        cell_defconfig
riscv             nommu_k210_sdcard_defconfig
mips                           xway_defconfig
mips                          rb532_defconfig
mips                         db1xxx_defconfig
powerpc                     sequoia_defconfig
powerpc                    sam440ep_defconfig
nios2                               defconfig
powerpc                     tqm8548_defconfig
xtensa                           allyesconfig
arc                        vdk_hs38_defconfig
powerpc                       maple_defconfig
powerpc                      makalu_defconfig
m68k                          atari_defconfig
parisc                              defconfig
arc                      axs103_smp_defconfig
m68k                        mvme147_defconfig
arm                         at91_dt_defconfig
sh                        apsh4ad0a_defconfig
csky                             alldefconfig
mips                           ip32_defconfig
arm                            xcep_defconfig
arm                           h5000_defconfig
mips                            ar7_defconfig
loongarch                           defconfig
m68k                            mac_defconfig
nios2                         10m50_defconfig
sh                               alldefconfig
powerpc                     tqm8555_defconfig
powerpc                    amigaone_defconfig
arm                     eseries_pxa_defconfig
sh                        edosk7760_defconfig
sh                          rsk7203_defconfig
powerpc                   currituck_defconfig
mips                      maltasmvp_defconfig
nios2                            allyesconfig
parisc64                            defconfig
parisc                           allyesconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
loongarch                         allnoconfig
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
i386                             allyesconfig
i386                                defconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit

clang tested configs:
hexagon                             defconfig
arm                          collie_defconfig
arm                         s3c2410_defconfig
arm                          ixp4xx_defconfig
powerpc                  mpc866_ads_defconfig
powerpc                          allyesconfig
powerpc                     akebono_defconfig
powerpc                    mvme5100_defconfig
mips                      malta_kvm_defconfig
arm                                 defconfig
arm                           spitz_defconfig
arm                      tct_hammer_defconfig
mips                        qi_lb60_defconfig
mips                           mtx1_defconfig
x86_64                           allyesconfig
mips                            e55_defconfig
x86_64                        randconfig-k001
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
hexagon              randconfig-r041-20220721
s390                 randconfig-r044-20220721
hexagon              randconfig-r045-20220721
riscv                randconfig-r042-20220721
hexagon              randconfig-r041-20220722
hexagon              randconfig-r045-20220722

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
