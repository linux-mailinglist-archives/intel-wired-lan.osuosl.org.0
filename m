Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E490584291
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Jul 2022 17:09:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 97325417AA;
	Thu, 28 Jul 2022 15:09:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 97325417AA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659020973;
	bh=pcIT6bH8QZJlZBavzlDbVGMpvbR+b6yezRsR6pwrmJU=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=RH0eZKrWatX4t/qJxewR7lOhFqD1K1uI+sHNReBILa/eCqLDGHqhQiR0H3MWZGCRM
	 /IyFoODzYY4GsaWXDgK6sCk3qDpFb4BYCH/cxcQpDLZM4UcDBpgcByA/8FE7JudtiP
	 h9DuraMkHUClt5OlV6OpyOqpD3h0yhyZ1CYTOFOladU12utOSzM1iBrDq9n4buQw4+
	 mrtFg0VTSLBW5PTC3ajj6IukXRs6ntKh1Keai1HrmY3K6YNnEjV7oaZiCzlSplkWoQ
	 e1adqhTObvLOhcrHoMBFtftxU7/q9GDwG/bOVhgLVf6tWqhWaknSPLREIXs5lCLJaE
	 ZPgS5WfrR8EEQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zRNPmqIaubmX; Thu, 28 Jul 2022 15:09:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 16D1B41781;
	Thu, 28 Jul 2022 15:09:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 16D1B41781
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 57DAB1BF3ED
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Jul 2022 15:09:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3A0B360F60
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Jul 2022 15:09:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3A0B360F60
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6BAQRBGj7VaN for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Jul 2022 15:09:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3183060F51
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3183060F51
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Jul 2022 15:09:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10422"; a="268916541"
X-IronPort-AV: E=Sophos;i="5.93,198,1654585200"; d="scan'208";a="268916541"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2022 08:09:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,198,1654585200"; d="scan'208";a="600902736"
Received: from lkp-server01.sh.intel.com (HELO e0eace57cfef) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 28 Jul 2022 08:09:23 -0700
Received: from kbuild by e0eace57cfef with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oH58c-000AEa-1c;
 Thu, 28 Jul 2022 15:09:22 +0000
Date: Thu, 28 Jul 2022 23:08:50 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62e2a682.kC4Wt46J7Iq1QcT6%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659020965; x=1690556965;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=j5FYtgwgyRDJIZszhGKr8wsP1THPm5MaE9vDOaU9bOs=;
 b=aogxllzeH9vWgooiOJg3TFrWa+1qTkyQeCQePLtLcOjOb/Oh5km/Wh5N
 kToCqO09Hr739sVfKLae88GdIKbE4tg0cgdoAEML9Ks+7lD0UqOTufIRo
 f38MS4BoC2ReegN+YCK02sq+ayq1zM/qFBrbgwAw+J752COXhpsd1zQgH
 X+9F9CEaKifWMxfl5RSQKydW9abcNgr57REoGlj2l4bRcV/E+5mCgRIu0
 Mla3UoAI72f64ocV9s5TdYxNro9NGoQrPdVqoSKwQf2H4DsuTvZMeiCLo
 JLzjiFd9AO5WOTzcQtXNpjdSLjl1JnDT0Xf4oiII4UbpvMm6y2r5jK2A/
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aogxllze
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 e62d2e110356093c034998e093675df83057e511
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
branch HEAD: e62d2e110356093c034998e093675df83057e511  tcp: md5: fix IPv4-mapped support

elapsed time: 1281m

configs tested: 136
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                        randconfig-a002
x86_64                        randconfig-a004
x86_64                        randconfig-a006
um                           x86_64_defconfig
um                             i386_defconfig
arc                  randconfig-r043-20220727
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                        randconfig-a013
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
i386                             allyesconfig
i386                                defconfig
x86_64                        randconfig-a015
x86_64                        randconfig-a011
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
arc                        vdk_hs38_defconfig
mips                            ar7_defconfig
m68k                        stmark2_defconfig
sh                          lboxre2_defconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
mips                     decstation_defconfig
xtensa                  cadence_csp_defconfig
arc                                 defconfig
powerpc                      pasemi_defconfig
m68k                         amcore_defconfig
arm                            lart_defconfig
sh                           se7712_defconfig
powerpc                 mpc837x_rdb_defconfig
powerpc                         ps3_defconfig
arm                        mvebu_v7_defconfig
arm                         vf610m4_defconfig
xtensa                       common_defconfig
i386                          randconfig-c001
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
sparc                       sparc64_defconfig
arm                           sama5_defconfig
arm                            qcom_defconfig
arm                            hisi_defconfig
m68k                        m5272c3_defconfig
sh                          rsk7264_defconfig
mips                  decstation_64_defconfig
arm                         assabet_defconfig
sh                         ecovec24_defconfig
powerpc                 mpc8540_ads_defconfig
sh                   sh7770_generic_defconfig
m68k                          amiga_defconfig
arm                         cm_x300_defconfig
ia64                                defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
xtensa                    smp_lx200_defconfig
parisc64                            defconfig
csky                             alldefconfig
arm                           viper_defconfig
mips                 randconfig-c004-20220728
powerpc              randconfig-c003-20220728
loongarch                           defconfig
loongarch                         allnoconfig
xtensa                           allyesconfig
arm                           u8500_defconfig
powerpc                 linkstation_defconfig
s390                 randconfig-r044-20220728
riscv                randconfig-r042-20220728
arc                  randconfig-r043-20220728
s390                                defconfig
s390                             allmodconfig
alpha                               defconfig
s390                             allyesconfig
nios2                            allyesconfig
nios2                               defconfig
parisc                              defconfig
parisc                           allyesconfig
powerpc                    amigaone_defconfig
sh                          landisk_defconfig
ia64                        generic_defconfig
arc                            hsdk_defconfig

clang tested configs:
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
hexagon              randconfig-r045-20220727
hexagon              randconfig-r041-20220727
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
riscv                randconfig-r042-20220727
s390                 randconfig-r044-20220727
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
arm                        neponset_defconfig
hexagon              randconfig-r041-20220728
hexagon              randconfig-r045-20220728
powerpc                    mvme5100_defconfig
powerpc                      pmac32_defconfig
arm                        spear3xx_defconfig
x86_64                        randconfig-k001
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
powerpc                 mpc8315_rdb_defconfig
mips                      pic32mzda_defconfig
hexagon                             defconfig
arm                          ixp4xx_defconfig
mips                 randconfig-c004-20220728
x86_64                        randconfig-c007
s390                 randconfig-c005-20220728
powerpc              randconfig-c003-20220728
i386                          randconfig-c001
riscv                randconfig-c006-20220728
arm                  randconfig-c002-20220728
mips                malta_qemu_32r6_defconfig
powerpc                    gamecube_defconfig
arm                          collie_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
