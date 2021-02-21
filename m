Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16A0F32098B
	for <lists+intel-wired-lan@lfdr.de>; Sun, 21 Feb 2021 10:51:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BAA2A87080;
	Sun, 21 Feb 2021 09:51:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZFRpXeT0JjwY; Sun, 21 Feb 2021 09:51:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1558E87092;
	Sun, 21 Feb 2021 09:51:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CD2031BF28B
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Feb 2021 09:51:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BB818834C6
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Feb 2021 09:51:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 31T5N8d6gsGg for <intel-wired-lan@lists.osuosl.org>;
 Sun, 21 Feb 2021 09:51:30 +0000 (UTC)
Received: by smtp1.osuosl.org (Postfix, from userid 1001)
 id A8A3883689; Sun, 21 Feb 2021 09:51:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1DDFF834C6
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Feb 2021 09:51:27 +0000 (UTC)
IronPort-SDR: MLmP5Lqdyufpb3cO3HVXtQKor2BeCPJ+Lc0bFO2wqcE9xxjxpaBYhHmg5Ed5xSIHrf0ub+pu78
 z4Wyz0U3//Lg==
X-IronPort-AV: E=McAfee;i="6000,8403,9901"; a="180733365"
X-IronPort-AV: E=Sophos;i="5.81,194,1610438400"; d="scan'208";a="180733365"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2021 01:51:27 -0800
IronPort-SDR: C0ECKL40TpAF3Gu42oxuseMUP5cAqOXg8C/ZvUT1vbWvsSPBAyRpxpSmOXqVluF0pNLU//eNk1
 pgySMjRzyUqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,194,1610438400"; d="scan'208";a="514324625"
Received: from lkp-server01.sh.intel.com (HELO 48acba29b68a) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 21 Feb 2021 01:51:25 -0800
Received: from kbuild by 48acba29b68a with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lDlOf-00009y-5c; Sun, 21 Feb 2021 09:51:25 +0000
Date: Sun, 21 Feb 2021 17:50:33 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <60322ce9.xIpR/nlTUDcTs3h9%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:40GbE] BUILD SUCCESS
 b32cddd2247cf730731f93f1967d0147a40682c7
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 40GbE
branch HEAD: b32cddd2247cf730731f93f1967d0147a40682c7  i40e: Fix endianness conversions

elapsed time: 720m

configs tested: 105
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
powerpc                   motionpro_defconfig
mips                     decstation_defconfig
mips                      malta_kvm_defconfig
powerpc                  iss476-smp_defconfig
sh                           se7722_defconfig
arm                         at91_dt_defconfig
arm                       aspeed_g5_defconfig
sh                   sh7770_generic_defconfig
mips                       rbtx49xx_defconfig
m68k                       m5475evb_defconfig
mips                         bigsur_defconfig
arm                           stm32_defconfig
m68k                       m5275evb_defconfig
mips                      pistachio_defconfig
nios2                               defconfig
sh                               allmodconfig
ia64                          tiger_defconfig
mips                           rs90_defconfig
powerpc                     taishan_defconfig
powerpc                     tqm8541_defconfig
arm                            lart_defconfig
mips                           jazz_defconfig
arm                            xcep_defconfig
mips                        nlm_xlr_defconfig
mips                      maltaaprp_defconfig
powerpc                 mpc8272_ads_defconfig
arm                          prima2_defconfig
m68k                        stmark2_defconfig
arm                            u300_defconfig
um                            kunit_defconfig
arm                        oxnas_v6_defconfig
alpha                            allyesconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                               tinyconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a005-20210221
i386                 randconfig-a006-20210221
i386                 randconfig-a004-20210221
i386                 randconfig-a003-20210221
i386                 randconfig-a001-20210221
i386                 randconfig-a002-20210221
x86_64               randconfig-a015-20210221
x86_64               randconfig-a011-20210221
x86_64               randconfig-a012-20210221
x86_64               randconfig-a016-20210221
x86_64               randconfig-a014-20210221
x86_64               randconfig-a013-20210221
i386                 randconfig-a013-20210221
i386                 randconfig-a012-20210221
i386                 randconfig-a011-20210221
i386                 randconfig-a014-20210221
i386                 randconfig-a016-20210221
i386                 randconfig-a015-20210221
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a001-20210221
x86_64               randconfig-a002-20210221
x86_64               randconfig-a003-20210221
x86_64               randconfig-a005-20210221
x86_64               randconfig-a006-20210221
x86_64               randconfig-a004-20210221

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
