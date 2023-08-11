Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1175C7794A6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Aug 2023 18:31:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3E6C941DA2;
	Fri, 11 Aug 2023 16:31:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3E6C941DA2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691771505;
	bh=wmRwvPnXQXlWyWcDhbmLEXGRUnLOtHfQQHhchiv1Gnw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=gNYRZi08BUCBGmhoNxbu17BoAIMxBpIibYs7JqtudKpALJ43astU6kp6lvP0vNEpu
	 QG8NWWW5j8GLZCyM1WPumS0QB8Z+F/Jusdh/huC2gepwjp83Dwg+nq8WvaxStDVI33
	 gguIbZST7K2aT3Pplfc9n401S3j4MzGGdKFmiiEuOe6N49GfxXeTydvFfNJ9RzSPLC
	 XQgwVS3IdI7LZ9qEI3o1xgpevAWMQ/HC3Y51o3mvcjyZkU4iWYsswb8teSNYOJhp0V
	 Cj646KUpBQ+yUeDeM743MBrIrGLbb4clTXcNrgIItglsa5CdbIRGp/volxKQqCiDz2
	 DBntGWiFCHuZw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9Ka-08zSlr-a; Fri, 11 Aug 2023 16:31:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D6A5A4193A;
	Fri, 11 Aug 2023 16:31:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D6A5A4193A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8D65F1BF25B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 16:31:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 648A760B71
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 16:31:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 648A760B71
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QLtOn5wV-Jal for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Aug 2023 16:31:37 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 418D660A7D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 16:31:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 418D660A7D
X-IronPort-AV: E=McAfee;i="6600,9927,10799"; a="369179669"
X-IronPort-AV: E=Sophos;i="6.01,166,1684825200"; d="scan'208";a="369179669"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2023 09:29:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="876228595"
Received: from lkp-server01.sh.intel.com (HELO d1ccc7e87e8f) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 11 Aug 2023 09:29:49 -0700
Received: from kbuild by d1ccc7e87e8f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qUV1E-0007sk-3B
 for intel-wired-lan@lists.osuosl.org; Fri, 11 Aug 2023 16:29:44 +0000
Date: Sat, 12 Aug 2023 00:29:37 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202308120034.gznG4ySs-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691771497; x=1723307497;
 h=date:from:to:subject:message-id;
 bh=qi130aeuW2vmTHOu9d7pdBuLELAQm+C7wSLc34taJdk=;
 b=nWvNtyn9K/aZlGeJpVJYrgfpiPyTwu3Y3X9Up2S1PuCbKyFw/s5eF+XF
 st0xnhUHHZ94QE2vhd6uui5Rr0u/vOqrrbime/A6/DBcDlIXc9KWYF2NR
 XLUKGJML5S3p9WAUL6P1GukOO3RXsB5MrDnvErPovJTtc3UcqGeR4tGgv
 33k4tHLmsmMxIWKqVlk+R47o27mLsE89ngKkEPNEuNKjTRlWj+w5CmX3N
 QzpWZ4LcjxId3DvyfDlyUEnyNT3TRowni1eE/LH1lvRynWjc0P/ZWjeMt
 QzgiVvbGRN8Pr++mAJoVW2KihbX41+uk2Dh2UNh502DaA9HYZjrsABUf1
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nWvNtyn9
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 97f5373fb1168b694f704f75bf1d5b064bc12203
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: 97f5373fb1168b694f704f75bf1d5b064bc12203  ice: add documentation for FW logging

elapsed time: 1441m

configs tested: 99
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r002-20230811   gcc  
arc                  randconfig-r043-20230811   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r046-20230811   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r024-20230811   gcc  
csky                                defconfig   gcc  
hexagon              randconfig-r025-20230811   clang
hexagon              randconfig-r041-20230811   clang
hexagon              randconfig-r045-20230811   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230811   clang
i386         buildonly-randconfig-r005-20230811   clang
i386         buildonly-randconfig-r006-20230811   clang
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230811   clang
i386                 randconfig-i002-20230811   clang
i386                 randconfig-i003-20230811   clang
i386                 randconfig-i004-20230811   clang
i386                 randconfig-i005-20230811   clang
i386                 randconfig-i006-20230811   clang
i386                 randconfig-i011-20230811   gcc  
i386                 randconfig-i012-20230811   gcc  
i386                 randconfig-i013-20230811   gcc  
i386                 randconfig-i014-20230811   gcc  
i386                 randconfig-i015-20230811   gcc  
i386                 randconfig-i016-20230811   gcc  
i386                 randconfig-r005-20230811   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze           randconfig-r022-20230811   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r011-20230811   clang
mips                 randconfig-r035-20230811   gcc  
mips                 randconfig-r036-20230811   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r023-20230811   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r026-20230811   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r003-20230811   clang
riscv                randconfig-r042-20230811   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r014-20230811   gcc  
s390                 randconfig-r015-20230811   gcc  
s390                 randconfig-r034-20230811   clang
s390                 randconfig-r044-20230811   gcc  
sh                               allmodconfig   gcc  
sh                   randconfig-r013-20230811   gcc  
sh                   randconfig-r032-20230811   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r021-20230811   gcc  
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230811   clang
x86_64       buildonly-randconfig-r002-20230811   clang
x86_64       buildonly-randconfig-r003-20230811   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-r001-20230811   clang
x86_64               randconfig-r031-20230811   clang
x86_64               randconfig-r033-20230811   clang
x86_64               randconfig-x001-20230811   gcc  
x86_64               randconfig-x002-20230811   gcc  
x86_64               randconfig-x003-20230811   gcc  
x86_64               randconfig-x004-20230811   gcc  
x86_64               randconfig-x005-20230811   gcc  
x86_64               randconfig-x006-20230811   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r004-20230811   gcc  
xtensa               randconfig-r012-20230811   gcc  
xtensa               randconfig-r016-20230811   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
