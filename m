Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 83F96588AB8
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Aug 2022 12:43:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8E93B81CA5;
	Wed,  3 Aug 2022 10:43:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8E93B81CA5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659523390;
	bh=BjHZ0ihoP7f/Kp18cXG86FRP0KO8kh8fDmTBGhU4NqM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=fTi/hpQW1M9VlgKFyR1/p70bUsCPE0eOsx/wB5RVJfAMcg014OBzkqryyCdTL4t2X
	 k2iX84aJN3XVk2BFG+TdK1jKjmk+8qfl1oYSy/dHe/yXuSIcCbbNtj1IWhQWOytszL
	 2dHlEYoinCILQIF+z+IGXxz6PNJeuIM+1qvvAxbTWi5f1/BpKY6dxYswh+/j/ODAUs
	 ZyvBJJ86gid77KTzJOrZGDk0EbJyFn6DUUifBCaNjPpja3Au3cuJ3KAWns0bnbg/oE
	 E1smtItG06t9lKym18cV/S6bHu2ZFGEbYXOQQlIR6IDS6Wn9zJ+51ox6Q7xlSjOsub
	 VDtz8ofdd7QWA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Au-WffrwGMDb; Wed,  3 Aug 2022 10:43:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7E21C81C21;
	Wed,  3 Aug 2022 10:43:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7E21C81C21
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 693D71BF2CA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Aug 2022 10:43:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3BE1081C67
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Aug 2022 10:43:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3BE1081C67
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZlRjEbkDOLGR for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Aug 2022 10:43:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 30B5981C21
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 30B5981C21
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Aug 2022 10:43:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10427"; a="315499666"
X-IronPort-AV: E=Sophos;i="5.93,214,1654585200"; d="scan'208";a="315499666"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2022 03:43:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,214,1654585200"; d="scan'208";a="670819150"
Received: from lkp-server01.sh.intel.com (HELO e0eace57cfef) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 03 Aug 2022 03:43:01 -0700
Received: from kbuild by e0eace57cfef with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oJBq9-000H9l-0B;
 Wed, 03 Aug 2022 10:43:01 +0000
Date: Wed, 03 Aug 2022 18:42:53 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62ea512d.uJ7QvnvDOW7dEacx%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659523383; x=1691059383;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=++j4LbsOdUK35Q5DJHzybQGXDrJ1mSfoqoqMkbJK9/M=;
 b=T8edDQF6h+srdv567djpchBgmN7nDOPXUcf51ficGSd4z+OUpvBfwLdX
 ElS1469DwyUuh5XKtXDSvZxIdT1Qvtz8xjkFxoA3JcoCu/70Y2mqZB8FI
 HsWuy7um503114mX/dZgIcDrrd+xvE7yK1A2CSqPBumkpSkXeMs00asFK
 RoUJgBqfhK9J6SjhiyioBStDE0z0gXuhWhzvfXrxrSgfreJ5i+giarTnT
 v4fK0LucJSK7ZImdnzpo0XQma2YglLEg6NfzidMZGeEfpE4ZBQrob/pEB
 7uddEs8f9dfVJTYdMCyzOwhruBbnqZxfcP4mCGctWdJ/Ba0M+nc1px7ze
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=T8edDQF6
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 945499ccdc293a8bb9ed736b48d6bf48cb9080dd
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
branch HEAD: 945499ccdc293a8bb9ed736b48d6bf48cb9080dd  i40e: Fix to stop tx_timeout recovery if GLOBR fails

elapsed time: 718m

configs tested: 90
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
i386                                defconfig
i386                             allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
i386                 randconfig-a012-20220801
i386                 randconfig-a013-20220801
arm                                 defconfig
i386                 randconfig-a011-20220801
i386                 randconfig-a015-20220801
arc                  randconfig-r043-20220801
i386                 randconfig-a014-20220801
ia64                             allmodconfig
arm64                            allyesconfig
i386                 randconfig-a016-20220801
arm                              allyesconfig
s390                 randconfig-r044-20220801
x86_64               randconfig-a014-20220801
riscv                randconfig-r042-20220801
x86_64               randconfig-a011-20220801
x86_64               randconfig-a012-20220801
x86_64               randconfig-a013-20220801
x86_64               randconfig-a016-20220801
x86_64               randconfig-a015-20220801
x86_64                    rhel-8.3-kselftests
powerpc                           allnoconfig
powerpc                          allmodconfig
mips                             allyesconfig
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allmodconfig
m68k                             allyesconfig
sh                               allmodconfig
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-kvm
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-syz
powerpc                   motionpro_defconfig
arm                         at91_dt_defconfig
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
arm                           h5000_defconfig
m68k                           sun3_defconfig
sh                             shx3_defconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
m68k                        m5407c3_defconfig
nios2                         3c120_defconfig
arc                         haps_hs_defconfig
m68k                       m5208evb_defconfig
um                                  defconfig
sh                             espt_defconfig
powerpc                     tqm8555_defconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
ia64                             alldefconfig
mips                            ar7_defconfig
arm                       multi_v4t_defconfig
xtensa                              defconfig

clang tested configs:
x86_64               randconfig-a005-20220801
x86_64               randconfig-a002-20220801
x86_64               randconfig-a001-20220801
x86_64               randconfig-a003-20220801
x86_64               randconfig-a004-20220801
x86_64               randconfig-a006-20220801
i386                 randconfig-a004-20220801
i386                 randconfig-a001-20220801
i386                 randconfig-a002-20220801
i386                 randconfig-a003-20220801
i386                 randconfig-a005-20220801
i386                 randconfig-a006-20220801
hexagon              randconfig-r045-20220801
hexagon              randconfig-r041-20220801
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
hexagon              randconfig-r045-20220803
hexagon              randconfig-r041-20220803
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
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
