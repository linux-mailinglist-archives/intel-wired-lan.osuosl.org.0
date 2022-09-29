Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 006D55EF5A0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Sep 2022 14:40:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5F1FD40918;
	Thu, 29 Sep 2022 12:40:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5F1FD40918
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664455246;
	bh=4oAyKIJQtZPbX/BUCnca3C/BcecD5T2ThzAHWpy7Hug=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=DSMe/9z49UzViYpz2N7tH9pJTZZDdJdy1lnq1qIvSvBk7j648UaypnIU9pZKLhEbO
	 s09PMmuujnTtlGmxaY/zz1QrLk2hrSLLzffxrNkP6lzMYSEkBGBpxnuICMA1v2IJp6
	 rzWXnGsuaxF2ftyu6WET7bSXytY4dW1alDU4dxWKr8AV34DYviGCKiVlzvaFg9rE+K
	 xLXOsP2x3FrHBixr5cb0BwRFRQbtLwHAtkVDeFn8TvdV7LKnF9WwSy7JEjDqUf+aZD
	 G6FgQlpuwpF+UECQeei3urJuASWPJg5gxBr0GDjRdsTGfGmThyN8fb9MBhs6lshaih
	 l3FGLbjIqGrFA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WUfn_yObsf4N; Thu, 29 Sep 2022 12:40:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D63C741B37;
	Thu, 29 Sep 2022 12:40:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D63C741B37
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B717F1BF4DB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Sep 2022 12:40:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8D1C283ED7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Sep 2022 12:40:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8D1C283ED7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ziYrq5NXRkfQ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Sep 2022 12:40:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 55FF883ED2
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 55FF883ED2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Sep 2022 12:40:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10485"; a="365925581"
X-IronPort-AV: E=Sophos;i="5.93,355,1654585200"; d="scan'208";a="365925581"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2022 05:40:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10485"; a="573437753"
X-IronPort-AV: E=Sophos;i="5.93,355,1654585200"; d="scan'208";a="573437753"
Received: from lkp-server01.sh.intel.com (HELO 6126f2790925) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 29 Sep 2022 05:40:32 -0700
Received: from kbuild by 6126f2790925 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1odsq8-000188-0h;
 Thu, 29 Sep 2022 12:40:32 +0000
Date: Thu, 29 Sep 2022 20:39:37 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63359209.GWz+kt4JC2crtVkx%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664455238; x=1695991238;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=ojM2ip+L//JpfeN5O56YbjaPbwUISeNUBndecxmJsno=;
 b=mmnzq30TG/OloKa+3+MSCA5pvKiY4unFLYLSqp41Gzsbq0oyo6UwkLyp
 Pgx5EsynqSBFmVRnmz8CxVbEOjvQhgl4L2dQQfBqs9wLmjoRDUvn0hGtV
 cM42I3WsebE4ET+coOpDgAARXim2wQPH91O5H0Ht54hcZypVLE2U79OEX
 Sb/q1GSvwuQGxrMBUhDybj9V+Fe2fYfTnwSoCd+YonvW2K+hC2yYg5vkP
 4L4OTccN6Mb7FaztaUqh6yYuWS/QsPbtSKRBOtA11k43T4oJysoqDv0cI
 tdwwNFKeyr3VeUB/w5ewfjiG08yo5VIA4CWf6YRxcnYgBwa95n2VmpbBj
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mmnzq30T
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 28292f3d297ced09df05e65afb6ed9b40f54d016
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
branch HEAD: 28292f3d297ced09df05e65afb6ed9b40f54d016  i40e: Fix DMA mappings leak

elapsed time: 1138m

configs tested: 132
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
um                             i386_defconfig
um                           x86_64_defconfig
alpha                               defconfig
s390                             allmodconfig
x86_64                          rhel-8.3-func
s390                                defconfig
x86_64                    rhel-8.3-kselftests
powerpc                           allnoconfig
m68k                             allmodconfig
sh                               allmodconfig
arc                              allyesconfig
s390                             allyesconfig
alpha                            allyesconfig
mips                             allyesconfig
powerpc                          allmodconfig
i386                                defconfig
x86_64                              defconfig
m68k                             allyesconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                               rhel-8.3
x86_64                           allyesconfig
arm                                 defconfig
i386                             allyesconfig
i386                 randconfig-a001-20220926
x86_64                        randconfig-a002
i386                 randconfig-a004-20220926
arm64                            allyesconfig
i386                 randconfig-a002-20220926
x86_64                        randconfig-a004
arm                              allyesconfig
x86_64                        randconfig-a006
i386                 randconfig-a003-20220926
arc                  randconfig-r043-20220925
i386                 randconfig-a005-20220926
i386                 randconfig-a006-20220926
riscv                randconfig-r042-20220925
arc                  randconfig-r043-20220926
s390                 randconfig-r044-20220925
m68k                        m5407c3_defconfig
powerpc                      chrp32_defconfig
powerpc                 mpc8540_ads_defconfig
riscv                    nommu_k210_defconfig
i386                          randconfig-c001
x86_64               randconfig-a002-20220926
x86_64               randconfig-a001-20220926
x86_64               randconfig-a004-20220926
x86_64               randconfig-a006-20220926
x86_64               randconfig-a005-20220926
x86_64               randconfig-a003-20220926
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
xtensa                  audio_kc705_defconfig
sh                         ap325rxa_defconfig
xtensa                generic_kc705_defconfig
sh                          urquell_defconfig
arm                         nhk8815_defconfig
sh                          landisk_defconfig
sh                           sh2007_defconfig
sh                            hp6xx_defconfig
sh                      rts7751r2d1_defconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
x86_64                        randconfig-c001
arm                  randconfig-c002-20220925
m68k                         amcore_defconfig
mips                           xway_defconfig
sh                          lboxre2_defconfig
sh                  sh7785lcr_32bit_defconfig
powerpc                      ppc6xx_defconfig
arm                           tegra_defconfig
powerpc                      tqm8xx_defconfig
sparc                               defconfig
csky                                defconfig
x86_64                                  kexec
sparc                       sparc32_defconfig
arm                        mvebu_v7_defconfig
sh                     sh7710voipgw_defconfig
nios2                            allyesconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
ia64                             allmodconfig

clang tested configs:
x86_64               randconfig-a012-20220926
i386                 randconfig-a011-20220926
x86_64               randconfig-a013-20220926
i386                 randconfig-a014-20220926
x86_64               randconfig-a011-20220926
i386                 randconfig-a013-20220926
i386                 randconfig-a012-20220926
x86_64               randconfig-a016-20220926
x86_64               randconfig-a015-20220926
x86_64               randconfig-a014-20220926
i386                 randconfig-a016-20220926
i386                 randconfig-a015-20220926
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
hexagon              randconfig-r045-20220925
hexagon              randconfig-r041-20220926
hexagon              randconfig-r045-20220926
hexagon              randconfig-r041-20220925
riscv                randconfig-r042-20220926
s390                 randconfig-r044-20220926
x86_64                        randconfig-k001
hexagon                          alldefconfig
mips                      malta_kvm_defconfig
hexagon                             defconfig
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
arm                    vt8500_v6_v7_defconfig
mips                           ip22_defconfig
arm                        mvebu_v5_defconfig
hexagon              randconfig-r041-20220928
hexagon              randconfig-r045-20220928
riscv                randconfig-r042-20220928
s390                 randconfig-r044-20220928
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
powerpc                     akebono_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
