Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CD2F62990A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Nov 2022 13:39:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BBAB160C0B;
	Tue, 15 Nov 2022 12:39:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BBAB160C0B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668515975;
	bh=SJMCM6shah9/Db4MzZPpq74dqPaGZRCnbu1C8hRSgjk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=wbqGAvY34VE921mll/RhlVNs00N7/VedD2CwvvI/b6/YKE/B5WBTjctxaAUq3EkBi
	 ShIKmT/7kZq5/1oafPG+7GiI8EW6+XNbzLmuh709Y/Zc05P6TEh+Zvl1negQxCfz8g
	 +UQqKyOKTADWSbRvyPvCseV7+c6JephkEY8lr32wDabwLQg2xt7cJeO8tJM6uoz56z
	 QKCOvb9W59RNEbw8uHAl+Cj6h2R3XJw+mkmTscQqcfpRn5hVejYmYkniSbX+7hbKdf
	 82WyUBI6T7s82+F/CdROWAg/wfOMO8AcImbqDndj+FELrg+OZhxRxifmaBmnzkcTCv
	 EIxEqDMEIJHcQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lyFdCsSkOimS; Tue, 15 Nov 2022 12:39:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A9CE060C14;
	Tue, 15 Nov 2022 12:39:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A9CE060C14
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B75BA1BF348
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 12:39:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8858C60DDF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 12:39:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8858C60DDF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pgBirj87wO20 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Nov 2022 12:39:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7C49960C0B
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7C49960C0B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 12:39:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="299765709"
X-IronPort-AV: E=Sophos;i="5.96,165,1665471600"; d="scan'208";a="299765709"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2022 04:39:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="638929928"
X-IronPort-AV: E=Sophos;i="5.96,165,1665471600"; d="scan'208";a="638929928"
Received: from lkp-server01.sh.intel.com (HELO ebd99836cbe0) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 15 Nov 2022 04:39:06 -0800
Received: from kbuild by ebd99836cbe0 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ouvDV-0001MN-2L;
 Tue, 15 Nov 2022 12:39:05 +0000
Date: Tue, 15 Nov 2022 20:38:15 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63738837.2v54SLGkS4xNGKl6%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668515967; x=1700051967;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=MJW7Cg9hVsHoEd41phc3iGUFgMuEH7sLTmZQRiHm7h0=;
 b=L97Jds5qqMie62dYQNp0HDuapbzeWtFH27u0ezwfgsvHIkYtGGcjTgBH
 ltxLa5TAzzla5lsBE6LK7iCk6vnPw4FbSsMycjGqdKQIS8g4NKO0R9glc
 pXYYOU6T3hXB5qSKGJO5w3VbhwI6AXoxq1jtyx7XVzKrlpBd+W2Dv/O2k
 nWvOjhDi6J/7UVQe9P7DLnZbYjb/vPga5071u0tZAKD3tXMp972XgJZkN
 TdT/GfqkhVVP+/k+dtQq7/+HssFcZA1bgf1PlWY2YtlCU0L93Vp1wRwwb
 YN6+iYp6OD5PkaPQ22Jp4tBsAQOa5kZVxCn9sjCgYgYeUkMEBdZeOKZa3
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=L97Jds5q
Subject: [Intel-wired-lan] [tnguy-net-queue:40GbE] BUILD SUCCESS
 de69f75a7714fb3656ce814fa42583a1916cb98e
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
branch HEAD: de69f75a7714fb3656ce814fa42583a1916cb98e  i40e: fix xdp_redirect logs error message when testing with MTU=1500

elapsed time: 720m

configs tested: 104
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
alpha                               defconfig
um                             i386_defconfig
um                           x86_64_defconfig
s390                             allmodconfig
s390                                defconfig
s390                             allyesconfig
mips                             allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64                            allnoconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
sh                               allmodconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
m68k                             allmodconfig
alpha                            allyesconfig
arc                              allyesconfig
m68k                             allyesconfig
x86_64                           rhel-8.3-kvm
i386                             allyesconfig
i386                                defconfig
ia64                             allmodconfig
parisc                generic-32bit_defconfig
sh                     magicpanelr2_defconfig
mips                           gcw0_defconfig
xtensa                         virt_defconfig
sh                            shmin_defconfig
xtensa                              defconfig
mips                        vocore2_defconfig
i386                 randconfig-a002-20221114
i386                 randconfig-a004-20221114
i386                 randconfig-a003-20221114
i386                 randconfig-a005-20221114
i386                 randconfig-a006-20221114
i386                 randconfig-a001-20221114
arm                           sunxi_defconfig
arm                               allnoconfig
loongarch                 loongson3_defconfig
arc                         haps_hs_defconfig
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
mips                  decstation_64_defconfig
powerpc                    sam440ep_defconfig
sh                            hp6xx_defconfig
sparc64                          alldefconfig
powerpc                     stx_gp3_defconfig
sh                           sh2007_defconfig
loongarch                        allmodconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
sh                               j2_defconfig
arm                           stm32_defconfig
parisc                           alldefconfig
arm                         assabet_defconfig
arc                               allnoconfig
x86_64               randconfig-a003-20221114
x86_64               randconfig-a005-20221114
x86_64               randconfig-a004-20221114
x86_64               randconfig-a002-20221114
x86_64               randconfig-a001-20221114
x86_64               randconfig-a006-20221114
i386                 randconfig-c001-20221114
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
m68k                       m5249evb_defconfig
sh                            titan_defconfig
sparc                       sparc64_defconfig
riscv                            allmodconfig
loongarch                           defconfig
loongarch                         allnoconfig
x86_64                        randconfig-c001
i386                          randconfig-c001
arm                  randconfig-c002-20221115
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002

clang tested configs:
s390                 randconfig-r044-20221114
riscv                randconfig-r042-20221114
hexagon              randconfig-r041-20221114
hexagon              randconfig-r045-20221114
x86_64               randconfig-a012-20221114
x86_64               randconfig-a013-20221114
x86_64               randconfig-a016-20221114
x86_64               randconfig-a014-20221114
x86_64               randconfig-a015-20221114
x86_64               randconfig-a011-20221114
arm                        multi_v5_defconfig
arm                       aspeed_g4_defconfig
powerpc                     kmeter1_defconfig
i386                 randconfig-a015-20221114
i386                 randconfig-a013-20221114
i386                 randconfig-a011-20221114
i386                 randconfig-a016-20221114
i386                 randconfig-a012-20221114
i386                 randconfig-a014-20221114
hexagon              randconfig-r041-20221115
hexagon              randconfig-r045-20221115
x86_64               randconfig-k001-20221114
arm                        magician_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
