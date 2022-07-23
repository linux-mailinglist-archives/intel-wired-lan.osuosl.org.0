Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 83DC257EC23
	for <lists+intel-wired-lan@lfdr.de>; Sat, 23 Jul 2022 06:51:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8855660EDA;
	Sat, 23 Jul 2022 04:51:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8855660EDA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658551874;
	bh=7hcbYDWnPsyvjDsJh+hpA0b0+NDEGhnfyj8wa4Kyk2E=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Yyk/eoHQzUYcfdHdmnPRGmEqbmudQhclSyWIASATDLkdR0Utq2HYVGOKj6WTZvp7s
	 TmJ246cfRVNnKAs6py9od4gq9S5E3kkoNHau9o4ZhdHtXNHaE8uSKmbVfQ4nL2jrsU
	 OMOnuQNreqUbU2glgc6AFULky7HnsAUHCm7xzxC43d+7nvwov1Fp7DbCmMpziOkcWr
	 pns5Hr9BC0QaRMVS+sihhW6wsYCo0BVULBe5o19XUaZRW7MoeYQfTaDuB3n4mTaIS8
	 XwkE+xWaB3qO+sZUgo1WRzqvVvS90KrKK3qRaP8bHG5O7PJqh59J1uFtVGNT99Zmnh
	 6bSttCz4n0emw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t6qE0vWYjRtK; Sat, 23 Jul 2022 04:51:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6679A60B6B;
	Sat, 23 Jul 2022 04:51:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6679A60B6B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 093741BF27E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Jul 2022 04:51:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D645B404D0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Jul 2022 04:51:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D645B404D0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5i-b8Tury3ZI for <intel-wired-lan@lists.osuosl.org>;
 Sat, 23 Jul 2022 04:51:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C587A40012
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C587A40012
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Jul 2022 04:51:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10416"; a="284992601"
X-IronPort-AV: E=Sophos;i="5.93,187,1654585200"; d="scan'208";a="284992601"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2022 21:51:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,187,1654585200"; d="scan'208";a="574403560"
Received: from lkp-server01.sh.intel.com (HELO e0eace57cfef) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 22 Jul 2022 21:51:03 -0700
Received: from kbuild by e0eace57cfef with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oF76U-0002Gf-1i;
 Sat, 23 Jul 2022 04:51:02 +0000
Date: Sat, 23 Jul 2022 12:50:34 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62db7e1a.Fl7+kGWPAoAtImLg%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658551865; x=1690087865;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=GBopuwMUNHW3j09jtAAv8m80wMgJC0Ct/xlR2LGumWI=;
 b=kabWXlZAD9cyw3C6yRDTyWdaXe+PckVrkIryXzFrXRXO959igw7Abmnj
 olNe7n1iRMpKSsvpgcYxqdJ3j+Awhh/uxxHXZPCbAdNbjUoqu0fWfYPK4
 tKRO0p8OPCUaulGFj3sjBzhbar8VgaJj7W1tUwxol6Le0D7QLVhYaMMeY
 pU5H4h2ODpPzJshUK8+uRCTWAOamuooJXSJOuAL7Vr9zM2/RvnrzTG6NI
 N89JCfldIgcS/nrjncwITRUL1qX1nrY37LLUzpTAbn1w4VDLHzeZ8vNyh
 UHst0rPhwuQcHO054fRyc0QgTMKLQe5io1s7NSgjCXCIbRMrJG090yd/k
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kabWXlZA
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 74bbc616b38042e159ecbb1f06b401725a258d49
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
branch HEAD: 74bbc616b38042e159ecbb1f06b401725a258d49  ice: Fix VSIs unable to share unicast MAC

elapsed time: 721m

configs tested: 115
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-c001
powerpc              randconfig-c003-20220722
m68k                          atari_defconfig
sparc                       sparc64_defconfig
sh                          r7785rp_defconfig
m68k                                defconfig
powerpc                 mpc834x_itx_defconfig
arm                           u8500_defconfig
sh                             shx3_defconfig
arm                          simpad_defconfig
sparc                       sparc32_defconfig
sh                  sh7785lcr_32bit_defconfig
parisc                generic-64bit_defconfig
m68k                        m5407c3_defconfig
mips                           jazz_defconfig
powerpc                 mpc8540_ads_defconfig
openrisc                 simple_smp_defconfig
nios2                         3c120_defconfig
sh                        apsh4ad0a_defconfig
powerpc                     pq2fads_defconfig
alpha                            alldefconfig
openrisc                            defconfig
sh                             sh03_defconfig
xtensa                           alldefconfig
arm                       omap2plus_defconfig
xtensa                              defconfig
powerpc                 mpc837x_rdb_defconfig
powerpc                     asp8347_defconfig
powerpc                       ppc64_defconfig
csky                                defconfig
arm                          gemini_defconfig
arm                        mini2440_defconfig
arm                            hisi_defconfig
sh                             espt_defconfig
alpha                               defconfig
powerpc                      mgcoge_defconfig
sh                           se7751_defconfig
arc                    vdk_hs38_smp_defconfig
parisc64                         alldefconfig
sh                           se7724_defconfig
sparc64                             defconfig
mips                           ci20_defconfig
nios2                            allyesconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
loongarch                           defconfig
loongarch                         allnoconfig
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
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
x86_64                           rhel-8.3-kvm

clang tested configs:
arm                      pxa255-idp_defconfig
mips                      maltaaprp_defconfig
mips                          ath79_defconfig
arm                       mainstone_defconfig
mips                        bcm63xx_defconfig
powerpc                     ksi8560_defconfig
mips                        maltaup_defconfig
powerpc                      obs600_defconfig
arm                            dove_defconfig
arm                       versatile_defconfig
powerpc                      ppc44x_defconfig
arm                       spear13xx_defconfig
mips                     loongson1c_defconfig
mips                         tb0287_defconfig
arm                         hackkit_defconfig
arm                  colibri_pxa300_defconfig
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

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
