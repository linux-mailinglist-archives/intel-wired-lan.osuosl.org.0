Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8719F6975E3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Feb 2023 06:35:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1F33C40B90;
	Wed, 15 Feb 2023 05:35:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1F33C40B90
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676439345;
	bh=q0Gbd6KO10+FXrYYkb4DzwL7LFlbRdAyqH123xx8qcQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ldUNiyOrgpagKX1Rqcvje/Zc90nya+WuoFKAlPHVCAPcOCiBxy4zllAwjvsOlrujs
	 sdFgrrj7L4GIDsD4qlXfp+7M27rxtFMaP0oqFiIHfNj9EJgBmlLrK9Ysq+Eguvofxr
	 GasJxQRAoNEkSunGIlA0n46gOTz8Ur0E3BxpgCOirt6lCFTiS4GuTHvHZIjXpV+g0N
	 +oV0DxkXazs6nQoxyTmA2x0BazaeG2aaEs82OxuuJu6TfDjkasqmVe86gQImey/lTF
	 WFMASMI+IICxGbJ/J5Vpo5vOkFfTJWo/Y1HIVgGP0rtSQfTScRKEI/s4tQO9epxn7L
	 f0/ozANI6uCyA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SdWZlPl9EsA1; Wed, 15 Feb 2023 05:35:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 059F040904;
	Wed, 15 Feb 2023 05:35:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 059F040904
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6D8661BF836
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Feb 2023 05:35:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5409240904
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Feb 2023 05:35:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5409240904
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y6RGTsuVWpIa for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Feb 2023 05:35:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3665040017
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3665040017
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Feb 2023 05:35:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="311716899"
X-IronPort-AV: E=Sophos;i="5.97,298,1669104000"; d="scan'208";a="311716899"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 21:35:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="915017904"
X-IronPort-AV: E=Sophos;i="5.97,298,1669104000"; d="scan'208";a="915017904"
Received: from lkp-server01.sh.intel.com (HELO 4455601a8d94) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 14 Feb 2023 21:35:33 -0800
Received: from kbuild by 4455601a8d94 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pSAS5-000957-0U;
 Wed, 15 Feb 2023 05:35:33 +0000
Date: Wed, 15 Feb 2023 13:34:41 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63ec6ef1.a88bTyVR7A/XVJ+S%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676439335; x=1707975335;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=o7bScSmg2tYCme5EHFotKvxYt5UReeBhokuc/IlaBlY=;
 b=g0sorWVLLROo6MRxR+fpG1lEyBH7AhPUQfpiuNBGF4IU4be9YT+Vgjgu
 bHGWPPFQluCoX+1CiuLAcd+4RaVKsUK49gh2Gu5gns0RS6hmyyrsBcXYi
 ckkgY0HR4bQp3Js0+K1VaAtUjHpII12Be0EL/Up53LrYIh4YOLPE7nhKC
 vb3kadSAWXNzIVYj9IyBtMaXPKs24oEUppWLOi4ZK2sfHIG7Rul/5dVr4
 XViKSc9+cQdy0ZPc0kcvlZNaCBdOjfbajKm3abDpvwPvA5fsGmCDCW12M
 x6K5M/m/ETArH0DkiuAoJOLuiBTHeGJ5QOUBwalphGQNNOqkmqNe3iaKI
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=g0sorWVL
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 05d7623a892a9da62da0e714428e38f09e4a64d8
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
branch HEAD: 05d7623a892a9da62da0e714428e38f09e4a64d8  net: stmmac: Restrict warning on disabling DMA store and fwd mode

elapsed time: 1259m

configs tested: 78
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
alpha                            allyesconfig
alpha                               defconfig
arc                              allyesconfig
arc                                 defconfig
arm                              allmodconfig
arm                              allyesconfig
arm                                 defconfig
arm                           sama5_defconfig
arm64                            allyesconfig
arm64                               defconfig
csky                                defconfig
i386                             allyesconfig
i386                              debian-10.3
i386                                defconfig
i386                 randconfig-a011-20230213
i386                 randconfig-a012-20230213
i386                 randconfig-a013-20230213
i386                 randconfig-a014-20230213
i386                 randconfig-a015-20230213
i386                 randconfig-a016-20230213
i386                          randconfig-c001
ia64                             allmodconfig
ia64                                defconfig
loongarch                        allmodconfig
loongarch                         allnoconfig
loongarch                           defconfig
m68k                             allmodconfig
m68k                                defconfig
mips                             allmodconfig
mips                             allyesconfig
mips                         db1xxx_defconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
riscv                            allmodconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
s390                             allmodconfig
s390                             allyesconfig
s390                          debug_defconfig
s390                                defconfig
sh                               allmodconfig
sparc                               defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                            allnoconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                                  kexec
x86_64                        randconfig-a011
x86_64               randconfig-a011-20230213
x86_64               randconfig-a012-20230213
x86_64                        randconfig-a013
x86_64               randconfig-a013-20230213
x86_64               randconfig-a014-20230213
x86_64                        randconfig-a015
x86_64               randconfig-a015-20230213
x86_64               randconfig-a016-20230213
x86_64                               rhel-8.3

clang tested configs:
i386                 randconfig-a001-20230213
i386                 randconfig-a002-20230213
i386                 randconfig-a003-20230213
i386                 randconfig-a004-20230213
i386                 randconfig-a005-20230213
i386                 randconfig-a006-20230213
powerpc                 xes_mpc85xx_defconfig
x86_64               randconfig-a001-20230213
x86_64               randconfig-a002-20230213
x86_64               randconfig-a003-20230213
x86_64               randconfig-a004-20230213
x86_64               randconfig-a005-20230213
x86_64               randconfig-a006-20230213
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
