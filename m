Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BDCBD57C982
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Jul 2022 13:05:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DA5CF60ED8;
	Thu, 21 Jul 2022 11:05:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DA5CF60ED8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658401534;
	bh=AdewJqZeKYd9aI3dfuZmRDSq3AcEnt+36zuOUXmAMAs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=GLGuDaaCoEyBejOtRD+vkGnpatefm8OXhBMVBGaGfb76k0Gk66Jsqgvbhb7TP/Szg
	 aggXYu0OoJl59v2MKO18WaF8XXWzp0z3Qp0IpcJEqVnXyVtXlpDHm3VMg2HbGQaZUn
	 JsAM88rVIOsT7x6o6RskQW8Zc8rRprB5/5Sj96d/OHBlJMXTxzQJFcL2APh4xDfQKH
	 5jDid2fkKmcopG0GyJDt10RIfx/mRcUhhVQDl77KRSBaJECu9qHMckp4DB4OrzBr2O
	 Eh+94jNqMc35+shJjU5uBuDqZuWBK9/ZP9PKh8ktBxZ82VbT+8bUL79z9fffoUap7I
	 Tv5mGffV0NPxg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 86sx371BYD7v; Thu, 21 Jul 2022 11:05:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AE3AD60B54;
	Thu, 21 Jul 2022 11:05:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AE3AD60B54
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1D4BE1BF3C0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 11:05:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0491C84763
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 11:05:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0491C84763
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P6RE7Sy5_GjE for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Jul 2022 11:05:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BCAAF8475D
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BCAAF8475D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 11:05:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10414"; a="267413483"
X-IronPort-AV: E=Sophos;i="5.92,289,1650956400"; d="scan'208";a="267413483"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2022 04:05:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,289,1650956400"; d="scan'208";a="626072203"
Received: from lkp-server01.sh.intel.com (HELO e0eace57cfef) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 21 Jul 2022 04:05:24 -0700
Received: from kbuild by e0eace57cfef with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oETzg-00002q-0g;
 Thu, 21 Jul 2022 11:05:24 +0000
Date: Thu, 21 Jul 2022 19:04:47 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62d932cf.RLOyVRZPINoLCMds%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658401526; x=1689937526;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=doTWegq6op6deX0ERErI9Yy/Mupz+C3JO19usE+eg9s=;
 b=GNRaN0X9ppGOX6tJ6ikiH/u1pFT/1AMHlUp3ZIGshvxiJDLq3bxXLySr
 18Y9XD/gUvRg5RZQaanRrqjM8LSvkaZowFiSjbWv6WqOnmf0JA1QilNGJ
 c7WHqVxgmI5jqJylNj99ad/LA6CJs2fUjjar35oSgjI0WP/EuKZddq9UH
 agGHWDHYdqyAxfUeL6WUPnMvHk8muFRpS6YEwnWUOuQnaO/mkj+kvr3Bo
 n9AwnWLjwqGKlWn8xx7dzt1NFxB6mozYakNooUwsFysvAABh/TWjElr4C
 q/0YPuNsZh8aqTifSe6QLfJZR15JHL4Re7k3i+csCR3pkBP1M+T7GF2bU
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GNRaN0X9
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 1cb63be1e37ffb000031c657122d80da97ec7690
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
branch HEAD: 1cb63be1e37ffb000031c657122d80da97ec7690  ping: support ipv6 ping socket flow labels

elapsed time: 730m

configs tested: 86
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
xtensa                  audio_kc705_defconfig
mips                           ci20_defconfig
arm                          lpd270_defconfig
sh                           se7206_defconfig
sh                             shx3_defconfig
sh                                  defconfig
powerpc                     rainier_defconfig
powerpc                        cell_defconfig
nios2                               defconfig
openrisc                 simple_smp_defconfig
arm                            hisi_defconfig
sh                           se7724_defconfig
arm                       aspeed_g5_defconfig
arm                            zeus_defconfig
powerpc                     tqm8548_defconfig
sparc                             allnoconfig
arm                        mini2440_defconfig
arc                        nsimosci_defconfig
mips                  maltasmvp_eva_defconfig
sh                   secureedge5410_defconfig
m68k                        mvme147_defconfig
nios2                         10m50_defconfig
xtensa                              defconfig
m68k                            mac_defconfig
arm                           viper_defconfig
powerpc                      ep88xc_defconfig
powerpc                      pcm030_defconfig
s390                                defconfig
s390                             allmodconfig
arc                                 defconfig
alpha                               defconfig
s390                             allyesconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
loongarch                           defconfig
loongarch                         allnoconfig
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
i386                                defconfig
i386                             allyesconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
x86_64               randconfig-a012-20220718
x86_64               randconfig-a011-20220718
i386                 randconfig-a013-20220718
s390                 randconfig-r044-20220718
riscv                randconfig-r042-20220718
arc                  randconfig-r043-20220718
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3

clang tested configs:
arm                      tct_hammer_defconfig
mips                           ip28_defconfig
x86_64                        randconfig-k001
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a004
i386                 randconfig-a001-20220718
i386                 randconfig-a006-20220718
i386                 randconfig-a002-20220718
i386                 randconfig-a003-20220718
i386                 randconfig-a004-20220718
i386                 randconfig-a005-20220718
x86_64               randconfig-a005-20220718
x86_64               randconfig-a003-20220718
x86_64               randconfig-a006-20220718
hexagon              randconfig-r041-20220718
hexagon              randconfig-r045-20220718

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
