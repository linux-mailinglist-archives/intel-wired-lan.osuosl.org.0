Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 079EA5545BE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Jun 2022 13:35:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0C971409F0;
	Wed, 22 Jun 2022 11:35:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0C971409F0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1655897700;
	bh=HhZJvNfbEwtMOqcdc+e3n9M88ekGqEWlNuEPwNs19nE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=71HeyjonflUX6Wrs+6l552IrpXuWHC4w+FqKrX9eK9wSbq4E92mRR7UMnrP2G+mP8
	 2sgE3RkiDeGMz9us/Pwg3CKhE865/yboKdQ/r0L/RFvQNX5rmM9SVaD2X4D3AMQi4e
	 SaDeZ11fsLizrd+oUXn3xfC3JgAFHOv8rpiwwqrMa+oitzZUhVjhlHmouKjwkLpsCN
	 y0ULCtzDzVRm/BBB3T/zISkP3AyFQfyxEw4NJu0iPwmw9HOkYMxRr6vzhMUSFIULpB
	 R7kec8UVtfnN4LusIQzCAhJ2ITwQTh0tHZaK+vr1O7/INtvBpBJdbwoiRKNbegsTgb
	 EHbQzBMyadU6w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xCsloRyLLqTl; Wed, 22 Jun 2022 11:34:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9414B408E1;
	Wed, 22 Jun 2022 11:34:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9414B408E1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8C7911BF20F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jun 2022 11:34:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6467660B3D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jun 2022 11:34:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6467660B3D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YRobhkdYXuj9 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Jun 2022 11:34:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8850A60B50
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8850A60B50
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jun 2022 11:34:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10385"; a="279160387"
X-IronPort-AV: E=Sophos;i="5.92,212,1650956400"; d="scan'208";a="279160387"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2022 04:34:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,212,1650956400"; d="scan'208";a="764858162"
Received: from lkp-server02.sh.intel.com (HELO a67cc04a5eeb) ([10.239.97.151])
 by orsmga005.jf.intel.com with ESMTP; 22 Jun 2022 04:34:45 -0700
Received: from kbuild by a67cc04a5eeb with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1o3ydA-0001DD-NR;
 Wed, 22 Jun 2022 11:34:44 +0000
Date: Wed, 22 Jun 2022 19:33:51 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62b2fe1f.g5URc/jja4oaP/Q3%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655897687; x=1687433687;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=FJ3aLjUXIFhN8CgOWE9qpiCZmI9hKIxzEqj0magOHXM=;
 b=DMKjaVS/ZY3siJq4LuxkiBgGlQts0JMcwOOz3sORmjG2OLPRbtANFq53
 tR9A+Vwhe7L5cGriJFt5f5MYwzADqEmbgHi6F90sa+4ib1ZozHpFE+gAW
 ztbFVmHXgyvPCqzPAFVXK8hFaggxN7oSTxvXXmpxs0GQVjojOoMfJT8Nw
 c0aYjBufR5cuJ9UavUBY2I2sha8y1J0pulReMa9jzHt7WD3hqC5+cMDs7
 Ktsbx6adtG4jfe+sX08QrqNlBLGeV/6vzKgcH+7z/sRBygZ2QoediZcg2
 3KeC3gMpHN548SaZqPetloO+9p2wfv16UfDAhZwYDvsX8WzCAAhKpUGbo
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DMKjaVS/
Subject: [Intel-wired-lan] [tnguy-next-queue:40GbE] BUILD SUCCESS
 56878d49cc26c6587b35515fe621087e26e75e64
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 40GbE
branch HEAD: 56878d49cc26c6587b35515fe621087e26e75e64  intel/i40e: delete if NULL check before dev_kfree_skb

elapsed time: 724m

configs tested: 89
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-c001
sh                           se7780_defconfig
powerpc                 mpc8540_ads_defconfig
powerpc                     mpc83xx_defconfig
sh                          urquell_defconfig
sparc                       sparc64_defconfig
m68k                          multi_defconfig
alpha                            alldefconfig
mips                       bmips_be_defconfig
m68k                       m5249evb_defconfig
ia64                         bigsur_defconfig
openrisc                 simple_smp_defconfig
powerpc                      mgcoge_defconfig
arm                        shmobile_defconfig
arc                          axs103_defconfig
arm                           stm32_defconfig
ia64                             alldefconfig
sh                                  defconfig
ia64                      gensparse_defconfig
powerpc                      ppc6xx_defconfig
mips                            ar7_defconfig
riscv                               defconfig
arm                      integrator_defconfig
xtensa                  nommu_kc705_defconfig
um                             i386_defconfig
arm                         vf610m4_defconfig
powerpc                      pasemi_defconfig
arm                     eseries_pxa_defconfig
powerpc                     tqm8541_defconfig
arm                             rpc_defconfig
openrisc                            defconfig
ia64                             allmodconfig
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
i386                   debian-10.3-kselftests
i386                              debian-10.3
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a015
x86_64                        randconfig-a013
x86_64                        randconfig-a011
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arc                  randconfig-r043-20220622
riscv                             allnoconfig
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                    rhel-8.3-kselftests
x86_64                         rhel-8.3-kunit

clang tested configs:
mips                      maltaaprp_defconfig
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
hexagon              randconfig-r041-20220622
s390                 randconfig-r044-20220622
hexagon              randconfig-r045-20220622
riscv                randconfig-r042-20220622

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
