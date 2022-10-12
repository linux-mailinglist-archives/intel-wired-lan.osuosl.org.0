Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7A435FC112
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Oct 2022 09:08:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E6A9B4054B;
	Wed, 12 Oct 2022 07:08:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E6A9B4054B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665558503;
	bh=KRdUviwkJuk4fOKKF1HK/C6atZxucyHjW5aMl3ma0gE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=E/JPB/mgkummgQ+evveRK/Crq/ghKEGVyxN1OTN2V9fb/a4IN2stjgeFV+wcgrfZ0
	 rjc7PCc/aQ42HADRoRSXGb0wsGIgDrgnNmAwC9AOAfEPICEuDcZRx9gQ9AH4ky0cXH
	 xyhJstGkKKxKsJZ66BMQZd68hsJIXT1JnT5qNvs9KeB9gdEkaUDVHTd+Xjh8tJOxf3
	 H3TyrzZ+n+wVhFW/dB08COqXIbE1Yw2LJ4OrbiqepCSBXhkiZW8+6C62T4w1BLkFpR
	 hU/4zETyMpFsFQZeErE3n6GVnnQPSjgxWvd2WEwHEPgtk0yJdX5HDrNYR3uEb7HlpT
	 NX7lzJarhmUBg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pr6NWfMtwSTT; Wed, 12 Oct 2022 07:08:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AB0674051B;
	Wed, 12 Oct 2022 07:08:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AB0674051B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A27381BF8C7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Oct 2022 07:08:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 87436400AA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Oct 2022 07:08:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 87436400AA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yl_L9VxJbY-L for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Oct 2022 07:08:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E641C4003D
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E641C4003D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Oct 2022 07:08:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="292043858"
X-IronPort-AV: E=Sophos;i="5.95,178,1661842800"; d="scan'208";a="292043858"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 00:08:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="577732049"
X-IronPort-AV: E=Sophos;i="5.95,178,1661842800"; d="scan'208";a="577732049"
Received: from lkp-server01.sh.intel.com (HELO 2af0a69ca4e0) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 12 Oct 2022 00:08:14 -0700
Received: from kbuild by 2af0a69ca4e0 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oiVqf-0003ah-2D;
 Wed, 12 Oct 2022 07:08:13 +0000
Date: Wed, 12 Oct 2022 15:07:12 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <634667a0.Wf+hnDgVB+v8RsKs%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665558495; x=1697094495;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=oqo+0w4QX2Xxv1hidNq61LNWKJd8VEzfzfNWH3J7ZhQ=;
 b=LvmXtvQR6Jz5HjExNEQyCHHrwSHJ7g0qXccVV1952WpA0PCymxNdjsRF
 eYm8LY0XadRIS0GQiMtq0SyWtQ2NHZcqBA8wabvrB4+iDeqLyqw2tjrhY
 ldD1482D1n47cYo4ebapQBciCkjSZivmF+ntY0WsIBSf78jtIzcHSs6DV
 zmstcsDFxBhQ1Wb26MW+3rW0eF7lWfTSFDpy4yIb6jZrZQC9IX+xVSYXG
 Do4+J3RxoQl6AwBuoWComs219GxJhCxQUSNVSByh2Xg2wDERnJ98iv1bJ
 6nZmICbGZwU0Qp2H+tBi9aVMS3evB8YM4Nh3MSsE2DSkUNXOnNnFrDO1D
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LvmXtvQR
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 0cf3cae9697bddeeab3eb84b8cabae13c656fbb6
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
branch HEAD: 0cf3cae9697bddeeab3eb84b8cabae13c656fbb6  Merge tag 'linux-can-fixes-for-6.1-20221011' of git://git.kernel.org/pub/scm/linux/kernel/git/mkl/linux-can

elapsed time: 1018m

configs tested: 123
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
i386                             allyesconfig
i386                                defconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
s390                                defconfig
s390                             allmodconfig
arc                                 defconfig
alpha                               defconfig
s390                             allyesconfig
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
i386                 randconfig-a013-20221010
i386                 randconfig-a015-20221010
i386                 randconfig-a016-20221010
i386                 randconfig-a011-20221010
i386                 randconfig-a014-20221010
i386                 randconfig-a012-20221010
x86_64               randconfig-a014-20221010
x86_64               randconfig-a015-20221010
x86_64               randconfig-a012-20221010
x86_64               randconfig-a011-20221010
x86_64               randconfig-a013-20221010
x86_64               randconfig-a016-20221010
arc                  randconfig-r043-20221010
s390                 randconfig-r044-20221010
riscv                randconfig-r042-20221010
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
powerpc                     taishan_defconfig
arm                         lpc18xx_defconfig
parisc                generic-64bit_defconfig
arc                         haps_hs_defconfig
xtensa                           alldefconfig
arm                            zeus_defconfig
arm                           sama5_defconfig
openrisc                       virt_defconfig
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
i386                 randconfig-c001-20221010
ia64                        generic_defconfig
nios2                         3c120_defconfig
sh                           se7750_defconfig
arm                         axm55xx_defconfig
arm                        shmobile_defconfig
m68k                          amiga_defconfig
sh                           se7619_defconfig
s390                          debug_defconfig
arm                          gemini_defconfig
ia64                          tiger_defconfig
sparc64                             defconfig
sh                          sdk7786_defconfig
csky                             alldefconfig
xtensa                  audio_kc705_defconfig
arm                      integrator_defconfig
powerpc                     tqm8541_defconfig
arc                      axs103_smp_defconfig
x86_64                        randconfig-c001
i386                          randconfig-c001
arm                  randconfig-c002-20221012
arm                      footbridge_defconfig
ia64                      gensparse_defconfig
riscv                    nommu_k210_defconfig
sh                 kfr2r09-romimage_defconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
arc                  randconfig-r043-20221012
s390                 randconfig-r044-20221012
riscv                randconfig-r042-20221012
sh                         apsh4a3a_defconfig
m68k                          atari_defconfig
xtensa                              defconfig
arm                         cm_x300_defconfig
xtensa                       common_defconfig
ia64                             allmodconfig
loongarch                           defconfig
loongarch                         allnoconfig
loongarch                        allmodconfig

clang tested configs:
i386                 randconfig-a005-20221010
i386                 randconfig-a003-20221010
i386                 randconfig-a002-20221010
i386                 randconfig-a004-20221010
i386                 randconfig-a001-20221010
i386                 randconfig-a006-20221010
x86_64                        randconfig-k001
x86_64               randconfig-a004-20221010
x86_64               randconfig-a001-20221010
x86_64               randconfig-a002-20221010
x86_64               randconfig-a006-20221010
x86_64               randconfig-a003-20221010
x86_64               randconfig-a005-20221010
hexagon              randconfig-r045-20221010
hexagon              randconfig-r041-20221010
powerpc                     kmeter1_defconfig
arm                         s3c2410_defconfig
arm                          ep93xx_defconfig
riscv                             allnoconfig
arm                         hackkit_defconfig
arm                         bcm2835_defconfig
powerpc                     ksi8560_defconfig
mips                        omega2p_defconfig
powerpc                          allmodconfig
mips                           ip28_defconfig
arm                           spitz_defconfig
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
mips                          ath25_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
