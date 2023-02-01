Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 15953685EF8
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Feb 2023 06:33:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5B78340382;
	Wed,  1 Feb 2023 05:33:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5B78340382
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675229588;
	bh=zwe/xLF+WaLnl8PtUuRF56eB7xMsAIf+n/lOMwsQP84=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=iwHvxJqFW9VtPWCM38ENJMX0dWsMXybVoBWQEjsRUJ9bTzowJ7JMLPxzV6BdTdVts
	 CmbGjsHFoQMsp9DMmX3R0UKwY1pWPqOISfMXyIjvl2Rd01W7imijt8kQRcs/7tL9Nn
	 Ndb1tnJUIMLtyMlGX86ZJktAeYCNWTvbOSujmvoyHrE7E2jV74LQX+jK5i35DgNH6p
	 ORWKnag410/IaMBo16YY99mZ2gwaajt8juA6VnOnXWboInIwJs1jNCC+rJho4ESeeR
	 EYeIxdS5S8JGsVmMqyWYrUqeT5O0cYHAllmdtYsXXcVY97vyCyAMSz79HPxs4DZkDB
	 ghoHaqf1Gv2Lw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4J1eMXUKvn2n; Wed,  1 Feb 2023 05:33:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E86BA40355;
	Wed,  1 Feb 2023 05:33:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E86BA40355
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6C4D71BF2F0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 05:33:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 52363405BB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 05:33:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 52363405BB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pMqskpqU5YY4 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Feb 2023 05:33:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 581BD40586
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 581BD40586
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 05:33:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="392605262"
X-IronPort-AV: E=Sophos;i="5.97,263,1669104000"; d="scan'208";a="392605262"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 21:32:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="910184833"
X-IronPort-AV: E=Sophos;i="5.97,263,1669104000"; d="scan'208";a="910184833"
Received: from lkp-server01.sh.intel.com (HELO ffa7f14d1d0f) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 31 Jan 2023 21:32:05 -0800
Received: from kbuild by ffa7f14d1d0f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pN5j3-000577-15;
 Wed, 01 Feb 2023 05:32:05 +0000
Date: Wed, 01 Feb 2023 13:31:19 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63d9f927.Ed+yAcWTx4Z04NyU%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675229580; x=1706765580;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=b8CJu1IRCh3duYgz4Wy0SrHHoRs1xPYYymPvrpFa2rs=;
 b=FVgqO8NpvW3e4W5c4MtL3igj0nyPom6yNDZjFSyV9khBCCtGFVmooBTy
 OzBlPyUdv92rfFL7H8e4XX7nTNl/SdzukkbcW8tho/0TBjo/vfuxed5t5
 LH4qaJmG1TPn0AsGa/4YVGPqgUD5ind90oDOa81emTHSCQKL8mkIi3p7B
 Mpk8jnVj7J8t1Y/TxEkfeHJCkXw89LtPm2pHf7MroU0MQeHThQZQQlNbZ
 sR/e4tQp3/kHnfGuSr693WMqfi3WDepB0+667X8CC6Zw3APfFxsCPg7nK
 rvVZDN1oXxmW68UzE7fsB+LuSExgQdegL6kX+jyCuA5UcrVxtgq4bWtvN
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FVgqO8Np
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 de5ca4c3852f896cacac2bf259597aab5e17d9e3
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
branch HEAD: de5ca4c3852f896cacac2bf259597aab5e17d9e3  net: sched: sch: Bounds check priority

elapsed time: 1098m

configs tested: 110
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
s390                                defconfig
s390                             allmodconfig
arc                                 defconfig
alpha                               defconfig
s390                             allyesconfig
i386                 randconfig-a003-20230130
i386                 randconfig-a001-20230130
i386                 randconfig-a004-20230130
i386                 randconfig-a006-20230130
i386                 randconfig-a002-20230130
i386                 randconfig-a005-20230130
x86_64                    rhel-8.3-kselftests
arc                              allyesconfig
um                           x86_64_defconfig
i386                             allyesconfig
i386                                defconfig
um                             i386_defconfig
x86_64               randconfig-a006-20230130
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
i386                          randconfig-c001
alpha                            allyesconfig
ia64                             allmodconfig
m68k                             allmodconfig
m68k                             allyesconfig
arc                  randconfig-r043-20230129
arc                  randconfig-r043-20230130
arm                  randconfig-r046-20230129
arm                  randconfig-r046-20230130
x86_64               randconfig-a004-20230130
x86_64               randconfig-a005-20230130
x86_64               randconfig-a002-20230130
x86_64               randconfig-a001-20230130
x86_64               randconfig-a003-20230130
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                           rhel-8.3-bpf
x86_64                         rhel-8.3-kunit
powerpc                           allnoconfig
powerpc                          allmodconfig
sh                               allmodconfig
mips                             allyesconfig
x86_64                          rhel-8.3-func
arm                                 defconfig
arm                              allyesconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
arm                           h5000_defconfig
arm                         lpc18xx_defconfig
m68k                          multi_defconfig
sh                     magicpanelr2_defconfig
arc                            hsdk_defconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
arm64                            allyesconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
m68k                         amcore_defconfig
mips                        bcm47xx_defconfig
mips                           ci20_defconfig
sh                            titan_defconfig
x86_64               randconfig-c001-20230130
i386                 randconfig-c001-20230130
arm                  randconfig-c002-20230130
arm                       multi_v4t_defconfig
powerpc                       maple_defconfig
arm                            pleb_defconfig
mips                  maltasmvp_eva_defconfig
powerpc                       holly_defconfig
arm                            mps2_defconfig
arm                      jornada720_defconfig
parisc                generic-32bit_defconfig
m68k                          amiga_defconfig
loongarch                           defconfig
arm                  randconfig-c002-20230129

clang tested configs:
x86_64                        randconfig-k001
hexagon              randconfig-r045-20230130
s390                 randconfig-r044-20230130
riscv                randconfig-r042-20230129
hexagon              randconfig-r041-20230129
hexagon              randconfig-r045-20230129
hexagon              randconfig-r041-20230130
riscv                randconfig-r042-20230130
s390                 randconfig-r044-20230129
x86_64                          rhel-8.3-rust
x86_64               randconfig-a014-20230130
x86_64               randconfig-a015-20230130
x86_64               randconfig-a016-20230130
x86_64               randconfig-a013-20230130
x86_64               randconfig-a011-20230130
x86_64               randconfig-a012-20230130
i386                 randconfig-a014-20230130
i386                 randconfig-a013-20230130
i386                 randconfig-a015-20230130
i386                 randconfig-a016-20230130
i386                 randconfig-a012-20230130
i386                 randconfig-a011-20230130
hexagon                          alldefconfig
arm                          pxa168_defconfig
powerpc                          allyesconfig
mips                          malta_defconfig
powerpc                    ge_imp3a_defconfig

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
