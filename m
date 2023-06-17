Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 34C2A734000
	for <lists+intel-wired-lan@lfdr.de>; Sat, 17 Jun 2023 11:57:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4C27260B2F;
	Sat, 17 Jun 2023 09:57:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4C27260B2F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686995862;
	bh=LkZyEyxvbW92W53EUOVe+y4DRACt0Tba/K4sVxXd7Ko=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=1rPBpdqTGsTVCLMoIPgwXe4w/i5oeYhMh4XHOp5UM949zrq9+CHczWFMm6EGYmQiu
	 Tm8LvXqqWZQ6EBLJuWs3nq20yUH+NywndVauQJGMmUNR6XpvxQV35CwuvDFPR3jAwd
	 7qUX0RNU7ASovb900HQiiTTGfGK9RqF+nMMmcu9czalgZYVdqeNqMYCcsk42JXbs67
	 /cKPHRkJGOi7cX0zVSm6ZBF2gEBKb25CxKTUhLaQlDDffRuoH5FUylvPcU7ACmMpMb
	 uWdllDtdwezjWiRVObsVXVyhDzVUrCi2VLzwtsut7RWkjeIUiYA9IO4ih8iOWVhf1n
	 0jvb5lM2IkvaA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V9w5Ux_O7CNh; Sat, 17 Jun 2023 09:57:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C6F1960B29;
	Sat, 17 Jun 2023 09:57:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C6F1960B29
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0F0151BF299
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Jun 2023 09:57:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DA1BE60B29
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Jun 2023 09:57:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DA1BE60B29
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZitgwmVwhfWF for <intel-wired-lan@lists.osuosl.org>;
 Sat, 17 Jun 2023 09:57:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BDBCF60AED
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BDBCF60AED
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Jun 2023 09:57:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10743"; a="356866448"
X-IronPort-AV: E=Sophos;i="6.00,250,1681196400"; d="scan'208";a="356866448"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2023 02:57:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10743"; a="663461941"
X-IronPort-AV: E=Sophos;i="6.00,250,1681196400"; d="scan'208";a="663461941"
Received: from lkp-server01.sh.intel.com (HELO 783282924a45) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 17 Jun 2023 02:57:27 -0700
Received: from kbuild by 783282924a45 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qASgR-0002c0-0H
 for intel-wired-lan@lists.osuosl.org; Sat, 17 Jun 2023 09:57:27 +0000
Date: Sat, 17 Jun 2023 17:56:57 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202306171755.TzB6fjpZ-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686995854; x=1718531854;
 h=date:from:to:subject:message-id;
 bh=hypkDC/3V4KKHfcHKGm4WQOiK8P/nVWFO/bdrmI1T2w=;
 b=dv0AZ9p/c47qnxOsBWJbivP72aXDg0I49Cf4mop5TMEolSl+HhosB0MR
 ys3GAcWGDGE7XwF+Rt/P272b7Pp+DIjcL6DYrpM7ZlsdZDmJoCeXDM2kX
 aYexF+McoH3p1i1WHLWlyCDu99NDzl0QTg9/FPu1an4gPn0D8iQVQHVob
 pQ/B3uOeImNT1W5aLBjZltSC5zyChAFepTQO0NHo6AZx5xsA8KtaaWsfo
 6xE5G0Qf98BvGSunvqArJmwxiCqn8HjfqH5AelD3wKlCWgE4gOVEFKRcF
 Y9HJCu7PAqoQnS6pIXYbKkPTLGAf/qI4NSystMPEhaDXVBlC39PHIEui7
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dv0AZ9p/
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 5a6f6873606e03a0a95afe40ba5e84bb6e28a26f
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git main
branch HEAD: 5a6f6873606e03a0a95afe40ba5e84bb6e28a26f  ip, ip6: Fix splice to raw and ping sockets

elapsed time: 880m

configs tested: 168
configs skipped: 20

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r001-20230616   gcc  
alpha                randconfig-r004-20230616   gcc  
alpha                randconfig-r022-20230616   gcc  
alpha                randconfig-r033-20230616   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r004-20230617   gcc  
arc                  randconfig-r035-20230616   gcc  
arc                  randconfig-r043-20230616   gcc  
arc                  randconfig-r043-20230617   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                     am200epdkit_defconfig   clang
arm                     davinci_all_defconfig   clang
arm                                 defconfig   gcc  
arm                          gemini_defconfig   gcc  
arm                       imx_v6_v7_defconfig   gcc  
arm                        keystone_defconfig   gcc  
arm                   milbeaut_m10v_defconfig   clang
arm                          pxa910_defconfig   gcc  
arm                  randconfig-r006-20230617   clang
arm                  randconfig-r033-20230616   gcc  
arm                  randconfig-r034-20230616   gcc  
arm                  randconfig-r046-20230616   clang
arm                  randconfig-r046-20230617   gcc  
arm                         s5pv210_defconfig   clang
arm                       versatile_defconfig   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r002-20230616   clang
arm64                randconfig-r012-20230616   gcc  
arm64                randconfig-r014-20230616   gcc  
arm64                randconfig-r024-20230616   gcc  
arm64                randconfig-r035-20230616   clang
arm64                randconfig-r036-20230616   clang
csky                                defconfig   gcc  
csky                 randconfig-r002-20230616   gcc  
csky                 randconfig-r011-20230616   gcc  
csky                 randconfig-r034-20230616   gcc  
csky                 randconfig-r035-20230616   gcc  
hexagon              randconfig-r011-20230616   clang
hexagon              randconfig-r041-20230616   clang
hexagon              randconfig-r041-20230617   clang
hexagon              randconfig-r045-20230616   clang
hexagon              randconfig-r045-20230617   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i016-20230616   gcc  
i386                 randconfig-r016-20230616   gcc  
i386                 randconfig-r021-20230616   gcc  
i386                 randconfig-r026-20230616   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r006-20230616   gcc  
loongarch            randconfig-r012-20230616   gcc  
loongarch            randconfig-r014-20230616   gcc  
loongarch            randconfig-r015-20230616   gcc  
loongarch            randconfig-r021-20230616   gcc  
loongarch            randconfig-r031-20230616   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                       m5249evb_defconfig   gcc  
m68k                        m5272c3_defconfig   gcc  
m68k                       m5275evb_defconfig   gcc  
m68k                        m5307c3_defconfig   gcc  
m68k                 randconfig-r003-20230616   gcc  
m68k                 randconfig-r025-20230616   gcc  
microblaze           randconfig-r002-20230617   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                      loongson3_defconfig   gcc  
mips                          malta_defconfig   clang
mips                 randconfig-r006-20230616   gcc  
mips                 randconfig-r023-20230616   clang
nios2                               defconfig   gcc  
nios2                randconfig-r032-20230616   gcc  
nios2                randconfig-r034-20230616   gcc  
openrisc                            defconfig   gcc  
openrisc             randconfig-r003-20230616   gcc  
openrisc             randconfig-r031-20230616   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r001-20230616   gcc  
parisc               randconfig-r011-20230616   gcc  
parisc               randconfig-r015-20230616   gcc  
parisc               randconfig-r016-20230616   gcc  
parisc64                            defconfig   gcc  
powerpc                      acadia_defconfig   clang
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                    amigaone_defconfig   gcc  
powerpc                      arches_defconfig   gcc  
powerpc                      cm5200_defconfig   gcc  
powerpc                       ebony_defconfig   clang
powerpc                     ep8248e_defconfig   gcc  
powerpc                      ep88xc_defconfig   gcc  
powerpc                        fsp2_defconfig   clang
powerpc                       maple_defconfig   gcc  
powerpc               mpc834x_itxgp_defconfig   clang
powerpc                  mpc866_ads_defconfig   clang
powerpc                     powernv_defconfig   clang
powerpc              randconfig-r003-20230617   gcc  
powerpc              randconfig-r022-20230616   gcc  
powerpc                 xes_mpc85xx_defconfig   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r001-20230617   gcc  
riscv                randconfig-r013-20230616   gcc  
riscv                randconfig-r021-20230617   clang
riscv                randconfig-r035-20230616   clang
riscv                randconfig-r042-20230616   gcc  
riscv                randconfig-r042-20230617   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r012-20230616   gcc  
s390                 randconfig-r013-20230616   gcc  
s390                 randconfig-r024-20230617   clang
s390                 randconfig-r031-20230616   clang
s390                 randconfig-r032-20230616   clang
s390                 randconfig-r044-20230616   gcc  
s390                 randconfig-r044-20230617   clang
sh                               alldefconfig   gcc  
sh                               allmodconfig   gcc  
sh                 kfr2r09-romimage_defconfig   gcc  
sh                   randconfig-r005-20230616   gcc  
sh                   randconfig-r032-20230616   gcc  
sh                   randconfig-r033-20230616   gcc  
sh                           se7705_defconfig   gcc  
sh                           se7722_defconfig   gcc  
sh                           se7780_defconfig   gcc  
sh                     sh7710voipgw_defconfig   gcc  
sh                            shmin_defconfig   gcc  
sh                              ul2_defconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r025-20230617   gcc  
sparc                randconfig-r036-20230616   gcc  
sparc64              randconfig-r003-20230616   gcc  
sparc64              randconfig-r016-20230616   gcc  
sparc64              randconfig-r024-20230616   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r013-20230616   clang
um                   randconfig-r025-20230616   clang
um                   randconfig-r031-20230616   gcc  
um                   randconfig-r036-20230616   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a011-20230616   gcc  
x86_64               randconfig-a012-20230616   gcc  
x86_64               randconfig-a013-20230616   gcc  
x86_64               randconfig-a014-20230616   gcc  
x86_64               randconfig-r014-20230616   gcc  
x86_64               randconfig-r025-20230616   gcc  
x86_64               randconfig-r033-20230616   clang
x86_64                          rhel-8.3-rust   clang
xtensa               randconfig-r002-20230616   gcc  
xtensa               randconfig-r005-20230616   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
