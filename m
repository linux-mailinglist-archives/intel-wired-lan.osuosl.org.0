Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D459616164
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Nov 2022 12:06:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0A48081B25;
	Wed,  2 Nov 2022 11:06:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0A48081B25
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667387163;
	bh=cfbGl3kXKZqp3QvGgYzNmJegL9xF4zmUv1pVudrRU/E=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=cUVwvLjq+M3bMShh0vGJj8tkZM8ytgQRD8AJ5nQKeO5yN7ms8YhwAVTZ+xMbRwFot
	 j0ruWPuPenyIRQhLsiScaEGxGB6gJtgniIiqmlYnA3rrBF9p3yAwak7/wBX9/jkxt2
	 Plymf1iHZU+4L/G2egQ6bdlZqRR/yPuplFwhGD250kHL+hznxaEJEmAzzddb1NugiP
	 ouAl/8xoSDEtg9MboQ3XV9FtZaUe8u66Uuivyo1/HYBtliELCz6eKkSsqr9UT6Ykmg
	 1BaFeFKn5s4i1hKVuzLwSFCrH/C7oP9Xzl3DKP1ULhbIJzzA5iqqGNanOI00BVxbH4
	 71dRF+QES8/aQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7rzGl1nsDVnL; Wed,  2 Nov 2022 11:06:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D7B5781815;
	Wed,  2 Nov 2022 11:06:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D7B5781815
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B00291BF2B5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Nov 2022 11:05:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 96F8060A6A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Nov 2022 11:05:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 96F8060A6A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ifb6KIYeVfVt for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Nov 2022 11:05:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 65BA960A68
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 65BA960A68
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Nov 2022 11:05:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="310485087"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="310485087"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 04:05:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="963487804"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="963487804"
Received: from lkp-server02.sh.intel.com (HELO b6d29c1a0365) ([10.239.97.151])
 by fmsmga005.fm.intel.com with ESMTP; 02 Nov 2022 04:05:53 -0700
Received: from kbuild by b6d29c1a0365 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oqBZA-000EhI-2g;
 Wed, 02 Nov 2022 11:05:52 +0000
Date: Wed, 02 Nov 2022 19:05:03 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63624edf.0v3nX5kLrGhS2918%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667387155; x=1698923155;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=KwsOKZ+YmZY1SeYXApafFnihId07QmvyQgHwdL7DEW4=;
 b=NB5NKZnos5VdLri8rOT1GtRb/W/ORm2WuzGokfo3+bO94Pu0DDP3nLPw
 jh6wli/plGoEj5p60nBuL+yRoO7W9rHuhGhZK38r6FUYn/ZpICw28rzZt
 60VkILODrcFVy/dYRhgdoNjKdR93PBr+uI9i6HKEt2w11MlveXETHPONY
 MKzB0mSGgVxyHTUiAnA2eCM3J1AOI70BzzEQXXnYhRuTbhMl9hLzxolDj
 scmjfXLOxe463p/LEjghiHaDLsK3Xp76ffcnBSOqNjbfc8ZN+wbKZWcIq
 QGdNxm0D5328bcyBbqYHEA5JTp7Mapyq81bMmqZqwLfoJJLnUgohTMAxN
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NB5NKZno
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 c70e8985365ba84d8d668a27a45c21d1fc26f818
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
branch HEAD: c70e8985365ba84d8d668a27a45c21d1fc26f818  i40e: Fix for VF MAC address 0

elapsed time: 721m

configs tested: 92
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                           x86_64_defconfig
um                             i386_defconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
s390                                defconfig
s390                             allyesconfig
arc                  randconfig-r043-20221101
x86_64                        randconfig-a004
i386                 randconfig-a011-20221031
powerpc                           allnoconfig
i386                 randconfig-a012-20221031
x86_64                        randconfig-a002
x86_64                           rhel-8.3-syz
mips                             allyesconfig
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
ia64                             allmodconfig
i386                                defconfig
i386                          randconfig-a001
i386                 randconfig-a013-20221031
x86_64                              defconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a013
i386                          randconfig-a003
i386                 randconfig-a015-20221031
i386                 randconfig-a014-20221031
i386                          randconfig-a005
i386                 randconfig-a016-20221031
x86_64                        randconfig-a011
x86_64                          rhel-8.3-func
powerpc                          allmodconfig
sh                               allmodconfig
x86_64                    rhel-8.3-kselftests
i386                             allyesconfig
x86_64                        randconfig-a015
x86_64                               rhel-8.3
x86_64                           allyesconfig
arm                                 defconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arm64                            allyesconfig
arm                              allyesconfig
x86_64               randconfig-k001-20221031
arm64                            alldefconfig
powerpc                 linkstation_defconfig
m68k                        stmark2_defconfig
arm                            mps2_defconfig
i386                          randconfig-c001
sparc                       sparc64_defconfig
sh                          lboxre2_defconfig
sparc                             allnoconfig
xtensa                    smp_lx200_defconfig
arm                          gemini_defconfig
sh                 kfr2r09-romimage_defconfig
xtensa                       common_defconfig
arm                        keystone_defconfig
powerpc                     stx_gp3_defconfig
arm                         cm_x300_defconfig
mips                           xway_defconfig
arm                      footbridge_defconfig
powerpc                     taishan_defconfig
sh                  sh7785lcr_32bit_defconfig
alpha                             allnoconfig
i386                 randconfig-c001-20221031
powerpc                      arches_defconfig
powerpc                    klondike_defconfig

clang tested configs:
hexagon              randconfig-r041-20221101
hexagon              randconfig-r045-20221101
s390                 randconfig-r044-20221101
riscv                randconfig-r042-20221101
x86_64                        randconfig-a005
x86_64                        randconfig-a014
x86_64                        randconfig-a001
i386                          randconfig-a002
i386                          randconfig-a006
x86_64                        randconfig-a003
i386                          randconfig-a004
x86_64                        randconfig-a016
x86_64                        randconfig-a012
arm                        vexpress_defconfig
powerpc                       ebony_defconfig
powerpc                      obs600_defconfig
hexagon              randconfig-r041-20221102
hexagon              randconfig-r045-20221102
arm                      pxa255-idp_defconfig
mips                      bmips_stb_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
