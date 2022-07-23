Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B1FF57ED5B
	for <lists+intel-wired-lan@lfdr.de>; Sat, 23 Jul 2022 11:55:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B027E607F5;
	Sat, 23 Jul 2022 09:55:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B027E607F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658570128;
	bh=Lu1kNibCtS28w8IT/rTgU7QP8SgGGvFshat2TytGSXs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=XPKxs+hXmTL+6gXSA+LSRzq/tqxaUxMjry26ixgLYE/5bquLra6/pj5Ftd1Vk3L3Y
	 B3NWdiq9HIGDq0TUtjJERQJ3pF/02fx28QjunYUM+79Rfe161jLmONflDEd5ts4Y8C
	 kFOTFt4PevyusCRcy+Uq5fVSMXRKqLF48ImkrERyLLMcpZ+Ymbd0bjyNL18PsECrlc
	 P5KKD6l3GskYNkXeZMuJjEoojsu/Dmf20B9tsSpZLVkB+aX/ScA2f6zUFhfkYXloGn
	 Wi8Ka0RvPcKq7pzo4fCktYt8zopBMxQgXnof6+cnr9kbGoUfpks14nvtYvMAqRFeBT
	 c9pxhdfEqr+Cw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AJJzykqTE6nh; Sat, 23 Jul 2022 09:55:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 954AD60A69;
	Sat, 23 Jul 2022 09:55:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 954AD60A69
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EC1631BF38A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Jul 2022 09:55:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C59158498B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Jul 2022 09:55:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C59158498B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jrumdWPEKXBg for <intel-wired-lan@lists.osuosl.org>;
 Sat, 23 Jul 2022 09:55:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EF412848B4
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EF412848B4
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Jul 2022 09:55:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10416"; a="274315472"
X-IronPort-AV: E=Sophos;i="5.93,188,1654585200"; d="scan'208";a="274315472"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2022 02:55:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,188,1654585200"; d="scan'208";a="602895787"
Received: from lkp-server01.sh.intel.com (HELO e0eace57cfef) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 23 Jul 2022 02:55:16 -0700
Received: from kbuild by e0eace57cfef with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oFBqt-0002Ul-23;
 Sat, 23 Jul 2022 09:55:15 +0000
Date: Sat, 23 Jul 2022 17:54:25 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62dbc551.G6fburcAm7agPSIE%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658570118; x=1690106118;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=Gedm/Y8KV5jIsmdQF/ilMcoC+DEKdztKB6+3435g4zs=;
 b=VkIxTBYNDaOlqst9tvdTa9sQNvOHxyMJ/UeJHsk3I2/3MlkWppR0n5Si
 dfFVQe+27zb3ejIxlyI4BCghM+NgQ/1mIrI6G8/9ZIrmpojEqxe9ESdGx
 EL+wGY6SdIOvFOPL2lPzYPYxDOayA+W5vXgb8u25ay99UQjwd1/S0+D3y
 g2JIYNbc1xl8lbQnelWEiZPCDIa8nIUjUL5hujryYgYx7xvxI4GBdxd2k
 i8pyPtntC7EujY6KGFsewlxF+wG0A+H1DgIsu5/pZQ4R6psx+71NAgH8L
 51N9YMk3JTsiFdrhCBomiAS5A1lbHUXk66dlDgrPkSm2ObAVcT81LfaaE
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VkIxTBYN
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 b946b2e400e3b0aff1d1eb43178b56f08943c243
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
branch HEAD: b946b2e400e3b0aff1d1eb43178b56f08943c243  ice: Document txbalancing parameter

elapsed time: 727m

configs tested: 129
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-c001
powerpc              randconfig-c003-20220722
arc                        nsim_700_defconfig
sparc                       sparc64_defconfig
s390                             allmodconfig
m68k                       bvme6000_defconfig
m68k                          atari_defconfig
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
powerpc                     sequoia_defconfig
arm                       omap2plus_defconfig
xtensa                              defconfig
powerpc                 mpc837x_rdb_defconfig
powerpc                     asp8347_defconfig
arm                           corgi_defconfig
arc                    vdk_hs38_smp_defconfig
arm                         at91_dt_defconfig
powerpc                       ppc64_defconfig
csky                                defconfig
arm                          gemini_defconfig
arm                        mini2440_defconfig
arm                            hisi_defconfig
sh                             espt_defconfig
alpha                               defconfig
powerpc                      mgcoge_defconfig
sh                           se7751_defconfig
parisc64                         alldefconfig
sh                           se7724_defconfig
sparc64                             defconfig
mips                           ci20_defconfig
loongarch                         allnoconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
loongarch                           defconfig
ia64                             allmodconfig
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
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arc                  randconfig-r043-20220721
x86_64                    rhel-8.3-kselftests
x86_64                           allyesconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                           rhel-8.3-kvm
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit

clang tested configs:
powerpc                     akebono_defconfig
arm                  colibri_pxa300_defconfig
hexagon                             defconfig
arm                      pxa255-idp_defconfig
mips                      maltaaprp_defconfig
mips                          ath79_defconfig
arm                       mainstone_defconfig
mips                        bcm63xx_defconfig
powerpc                     ksi8560_defconfig
mips                        maltaup_defconfig
powerpc                      obs600_defconfig
arm                            dove_defconfig
arm                       spear13xx_defconfig
mips                     loongson1c_defconfig
mips                         tb0287_defconfig
arm                         hackkit_defconfig
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
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
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
