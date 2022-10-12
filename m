Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A1C5FC50B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Oct 2022 14:09:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 93E7C81440;
	Wed, 12 Oct 2022 12:09:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 93E7C81440
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665576570;
	bh=HxFPJGrQIWOw2nWUAAGtw7zIyWHEOOPnG7ClnTFNBRw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=QLD4ieFzYGwv1+jgIo6gU3/1U4ldOVxerOznIPejXNmS4Ggx224Izg1qEbDiZJpCR
	 9CreQ1+8ZyTZHHeu92ayAyYFyyPJql+elNBxOtn4/K/wxRAa4wZxfaMGS0+zQ4m5Ql
	 pov4ewpL4bM1lkBVIwD/gXbqg7kNEQH4OVnPLZB/tHav1PYdjfxFl28AXyc95VhA6U
	 5dCzZRDqkRzIw7ZQHyGYpEUTdMw+YHzJHmGQzs2RabMpx1Tnt3O7N4TyNua3tttJMx
	 8JAdV6rq9FMU9Q7g4jZS0mezJVjKWOXqQLM9+cGiSgWMK+Bbu6+PgZ9b4cLEMqNnX8
	 9CocBjZR2Nvrg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nlXoGKSIWte3; Wed, 12 Oct 2022 12:09:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6364481468;
	Wed, 12 Oct 2022 12:09:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6364481468
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 886721BF5DF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Oct 2022 12:09:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6A36E4035A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Oct 2022 12:09:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6A36E4035A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iEnhHjPew4_x for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Oct 2022 12:09:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 523704032E
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 523704032E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Oct 2022 12:09:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="292100119"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="292100119"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 05:09:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="955731905"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="955731905"
Received: from lkp-server01.sh.intel.com (HELO 2af0a69ca4e0) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 12 Oct 2022 05:09:21 -0700
Received: from kbuild by 2af0a69ca4e0 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oiaY4-0003m1-34;
 Wed, 12 Oct 2022 12:09:20 +0000
Date: Wed, 12 Oct 2022 20:08:56 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6346ae58.XljuTGt5vGXU5vSv%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665576563; x=1697112563;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=GR6vb/UPrI1Dz3JduzsG1BKWAc1Tmgq+3pmhmRpFN5o=;
 b=OLIvWu4DQA/6nF2fgr7o9RvnZjK2groRXhHv4FT3g6xe/cmU/p17PebE
 Xzq3FZ/wPQt5kz6opOkXQxIkcBmObafGsv1O/+eatOqaDYIkB/3+7fuEV
 TS4t47y02ue9/ppvRIbKUMKMKjvp39M4ttJtcSJcF/qUvExDOgbuyXpGS
 VdpThYfT3n0K31kSGtRJ4YkbrEUBcKbYtxzmuNZGAAvgy/B1QpS2WXQhk
 FUKbMj/cEG7J/xj85up+ptqDrAbAe+zhE6Se6QrN+V2vMCl9a3dRMaYdW
 8GcKR4H0zxouXb83ZADymKdtq0aWxlgBGhgFE32xRYcwDZlBJzgVqzsnO
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OLIvWu4D
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 7571a540af1e9970d87cc193bc9bb20494339a05
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
branch HEAD: 7571a540af1e9970d87cc193bc9bb20494339a05  ice: Accumulate ring statistics over reset

elapsed time: 723m

configs tested: 68
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
riscv                randconfig-r042-20221012
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
i386                                defconfig
x86_64                           allyesconfig
arc                  randconfig-r043-20221012
x86_64                    rhel-8.3-kselftests
s390                 randconfig-r044-20221012
ia64                             allmodconfig
arm                                 defconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                             allyesconfig
i386                          randconfig-a014
i386                          randconfig-a005
m68k                             allmodconfig
i386                          randconfig-a012
arc                              allyesconfig
i386                          randconfig-a016
alpha                            allyesconfig
arm64                            allyesconfig
arm                              allyesconfig
m68k                             allyesconfig
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
sparc64                             defconfig
powerpc                     stx_gp3_defconfig
arc                            hsdk_defconfig
ia64                            zx1_defconfig
m68k                       m5208evb_defconfig
powerpc                     taishan_defconfig
powerpc                     sequoia_defconfig
sh                   rts7751r2dplus_defconfig
arc                                 defconfig
alpha                               defconfig
s390                             allmodconfig
s390                                defconfig
s390                             allyesconfig
arm                        keystone_defconfig
powerpc                     tqm8548_defconfig
powerpc                 mpc834x_mds_defconfig
mips                       bmips_be_defconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
arc                              alldefconfig
sh                            shmin_defconfig
sh                         apsh4a3a_defconfig
openrisc                            defconfig

clang tested configs:
hexagon              randconfig-r041-20221012
hexagon              randconfig-r045-20221012
i386                          randconfig-a002
i386                          randconfig-a013
i386                          randconfig-a004
i386                          randconfig-a011
i386                          randconfig-a015
i386                          randconfig-a006
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
