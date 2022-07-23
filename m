Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 447CD57EC3E
	for <lists+intel-wired-lan@lfdr.de>; Sat, 23 Jul 2022 08:07:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 92F616179F;
	Sat, 23 Jul 2022 06:07:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 92F616179F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658556437;
	bh=fu2walIbFShwReJsVtEHg/CNf9cvooIobDSe5ULU2+E=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=XJde6sF3zFnX3tHNWfXQa59hAIDa42mlt8kn45L9Z9bDOfTv2OlqxFPPIT0Yni8OA
	 evVec/3H9SSBtoUREJHFsSksG9cwV9nY/4kNtaC4wjkAMkEwotn9Mw1/JfKJpDJmQR
	 DvJbYOh61Lbi7gnqgh+fhTkSldyTK0u/gulB5DnHn4Qm1PFu4OKdGcpvMDLAHwCbPK
	 eddyFchL4CRRQjB5rKf5JExM8b2vlEI6Mp//UdR1b+4xbP11PV2GuqFRh4ztnrg2Lj
	 +ZW69jNImMy/Aw4Y7+s72WxHhByxxPbM6GVp1u4RHvf2xwChK2QIlPIL+4KJsi8YA1
	 coKtX1QYVtrGw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8PlqugQ44tHR; Sat, 23 Jul 2022 06:07:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7481660EDA;
	Sat, 23 Jul 2022 06:07:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7481660EDA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D3ED01BF5EA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Jul 2022 06:07:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AE68A4181D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Jul 2022 06:07:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AE68A4181D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gnGbdmo-m4ah for <intel-wired-lan@lists.osuosl.org>;
 Sat, 23 Jul 2022 06:07:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 98440417A8
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 98440417A8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Jul 2022 06:07:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10416"; a="287460946"
X-IronPort-AV: E=Sophos;i="5.93,187,1654585200"; d="scan'208";a="287460946"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2022 23:07:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,187,1654585200"; d="scan'208";a="549400166"
Received: from lkp-server01.sh.intel.com (HELO e0eace57cfef) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 22 Jul 2022 23:07:06 -0700
Received: from kbuild by e0eace57cfef with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oF8I5-0002JV-1a;
 Sat, 23 Jul 2022 06:07:05 +0000
Date: Sat, 23 Jul 2022 14:06:45 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62db8ff5.FmQx0sb78MrmY8Cg%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658556428; x=1690092428;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=BeMyE1DTj3lmZ6zFRxYAqJnVA4I112ghuMg4LmMKcJU=;
 b=IoXPr+xG5Q66Wa6ygqv5Ke7ukRBYXmMHhy/vYdRjf+vWrEaxZYc9qbTz
 khw3oc/8KF/AmEEMI4dKaKF0bjONsiGG2VYXos79Nzrpbg+NPOqVNuHo9
 aczoG/GmRrIyKhfE4KUzeFzBh0Ynu+C5v3hLOC8ee3ddL+63Kf2iCaVw+
 Tx8KFGtieiSOCaUStKxcir42e+u3p4PfGexjyK8QqTVzUoxDHTIowUapl
 5KtkI5ryS59hheCDQvs0MwDfsOZdGoZ8YTAuGkgAOWM3bPr+BjfKUunfk
 R2Jy9Iid5r0LYj8ZF9iS+ywynDBE0ju4CQyhGDOMXaMs492TRMV5RXjRJ
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IoXPr+xG
Subject: [Intel-wired-lan] [tnguy-next-queue:40GbE] BUILD SUCCESS
 40e589ba133cd8194ce4857ca5f1dac73628f466
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
branch HEAD: 40e589ba133cd8194ce4857ca5f1dac73628f466  iavf: Check for duplicate TC flower filter before parsing

elapsed time: 724m

configs tested: 111
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
arm                           corgi_defconfig
arc                    vdk_hs38_smp_defconfig
arm                         at91_dt_defconfig
powerpc                       ppc64_defconfig
csky                                defconfig
arm                          gemini_defconfig
powerpc                      mgcoge_defconfig
sh                           se7751_defconfig
alpha                               defconfig
parisc64                         alldefconfig
sh                           se7724_defconfig
sparc64                             defconfig
mips                           ci20_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
loongarch                           defconfig
loongarch                         allnoconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220721
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
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
arc                  randconfig-r043-20220721
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit

clang tested configs:
arm                      pxa255-idp_defconfig
mips                      maltaaprp_defconfig
mips                        maltaup_defconfig
powerpc                      obs600_defconfig
arm                            dove_defconfig
arm                       spear13xx_defconfig
mips                     loongson1c_defconfig
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
i386                          randconfig-a011
i386                          randconfig-a013
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
