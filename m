Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 712EC7252A0
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Jun 2023 05:58:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 46C3E404C4;
	Wed,  7 Jun 2023 03:58:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 46C3E404C4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686110324;
	bh=wppFo83mMP1kKVsCM55AdcwRC5WCRZsSQxabLJ2n3BE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=n87CJJdZDizACoUw1A0/JrnI4rWwmgJkTnxEFxMhuNV6halIdtvoEqjWUEzKE+Usl
	 mkEyNNuQoRbr94Doi2pGwy5i09h4CrGr+/BxKoz+fdQqTPymKYRebmlnBXUt5K1lGc
	 U8RKHJ3xsLpIIETWSBDgPUWdRFvy4aID3h9nkjjzZUAFmBUSye0bgpXKuLzJaxVjYI
	 E5irxM+rfAYD7dKtkSi4hEeK/zGiblJHb4GaItVjrAUHzwRNUDCGBSt/7a5rtErNZ3
	 loT46PXGdJppcW07xmqGps5Tn7NufgFOJ9CKs4SPQsdWA96KccxIRbEymldM5S+G1F
	 rkaL52QtN2rlg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wQAQyovO8kvG; Wed,  7 Jun 2023 03:58:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E916D40332;
	Wed,  7 Jun 2023 03:58:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E916D40332
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B2CC41BF3E9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 03:58:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 832D160B2F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 03:58:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 832D160B2F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id co4ExAGm3XBv for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Jun 2023 03:58:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 61B6760B29
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 61B6760B29
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 03:58:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="356881383"
X-IronPort-AV: E=Sophos;i="6.00,222,1681196400"; d="scan'208";a="356881383"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 20:58:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="659779456"
X-IronPort-AV: E=Sophos;i="6.00,222,1681196400"; d="scan'208";a="659779456"
Received: from lkp-server01.sh.intel.com (HELO 15ab08e44a81) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 06 Jun 2023 20:58:34 -0700
Received: from kbuild by 15ab08e44a81 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1q6kJd-00064d-19
 for intel-wired-lan@lists.osuosl.org; Wed, 07 Jun 2023 03:58:33 +0000
Date: Wed, 07 Jun 2023 11:57:42 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <20230607035742.gv1xD%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686110316; x=1717646316;
 h=date:from:to:subject:message-id;
 bh=UrVFxMIQG8+R2Mi34zypSoHerDkJslisKcXpfgkmRK4=;
 b=gEIo+s6xAdWXPCbMZWxt72TKGAT4s4kR7eETXxZPcJkCsFuNW7S5RRCE
 +nbce7fm57U2peboOHvIyiuqVd0jMGN40pWQnPZ9iyoNhfLJLPqbVBm5f
 ECQ5xfGTqgUHxSi1+J/QGXCg2UX08cC4WQT+qIZWDreLEwfVwbC61LbS2
 H9ubM/2DI/RFVBAbquW4qMZAV6jyrTIVS86wJDCXN0P++Ujge1KN85qs7
 faQ949AcdfF4V1LT7RAwPgUOC+b/dfOMmFQmcVu8DB2VGaxw9KcDfMoVO
 neLz+MrPMLU8yM7SmnxYZpP0RZX0bd9/lXOJ5llHYmkvJCEuTwFoQzsDX
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gEIo+s6x
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 ae91f7e436f8b631c47e244b892ecac62a4d9430
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
branch HEAD: ae91f7e436f8b631c47e244b892ecac62a4d9430  net/pppoe: fix a typo for the PPPOE_HASH_BITS_1 definition

elapsed time: 954m

configs tested: 141
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r001-20230606   gcc  
alpha                randconfig-r004-20230606   gcc  
alpha                randconfig-r026-20230606   gcc  
alpha                randconfig-r031-20230606   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r012-20230606   gcc  
arc                  randconfig-r043-20230606   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r001-20230606   gcc  
arm          buildonly-randconfig-r004-20230606   gcc  
arm          buildonly-randconfig-r006-20230606   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r013-20230606   gcc  
arm                  randconfig-r031-20230606   clang
arm                  randconfig-r034-20230606   clang
arm                  randconfig-r046-20230606   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r002-20230606   gcc  
arm64                randconfig-r005-20230606   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r004-20230606   gcc  
csky                 randconfig-r006-20230606   gcc  
csky                 randconfig-r014-20230606   gcc  
csky                 randconfig-r022-20230606   gcc  
csky                 randconfig-r035-20230606   gcc  
hexagon      buildonly-randconfig-r003-20230606   clang
hexagon              randconfig-r002-20230606   clang
hexagon              randconfig-r041-20230606   clang
hexagon              randconfig-r045-20230606   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r005-20230606   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230606   gcc  
i386                 randconfig-i002-20230606   gcc  
i386                 randconfig-i003-20230606   gcc  
i386                 randconfig-i004-20230606   gcc  
i386                 randconfig-i005-20230606   gcc  
i386                 randconfig-i006-20230606   gcc  
i386                 randconfig-i011-20230606   clang
i386                 randconfig-i012-20230606   clang
i386                 randconfig-i013-20230606   clang
i386                 randconfig-i014-20230606   clang
i386                 randconfig-i015-20230606   clang
i386                 randconfig-i016-20230606   clang
i386                 randconfig-i051-20230606   gcc  
i386                 randconfig-i052-20230606   gcc  
i386                 randconfig-i053-20230606   gcc  
i386                 randconfig-i054-20230606   gcc  
i386                 randconfig-i055-20230606   gcc  
i386                 randconfig-i056-20230606   gcc  
i386                 randconfig-i061-20230606   gcc  
i386                 randconfig-i062-20230606   gcc  
i386                 randconfig-i063-20230606   gcc  
i386                 randconfig-i064-20230606   gcc  
i386                 randconfig-i065-20230606   gcc  
i386                 randconfig-i066-20230606   gcc  
i386                 randconfig-r015-20230606   clang
i386                 randconfig-r033-20230606   gcc  
i386                 randconfig-r036-20230606   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r003-20230606   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r001-20230606   gcc  
m68k                 randconfig-r016-20230606   gcc  
m68k                 randconfig-r032-20230606   gcc  
microblaze           randconfig-r025-20230606   gcc  
microblaze           randconfig-r026-20230606   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r002-20230606   clang
nios2                               defconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r011-20230606   gcc  
parisc               randconfig-r012-20230606   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r032-20230606   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r001-20230606   clang
riscv                               defconfig   gcc  
riscv                randconfig-r013-20230606   clang
riscv                randconfig-r021-20230606   clang
riscv                randconfig-r042-20230606   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r035-20230606   gcc  
s390                 randconfig-r044-20230606   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r014-20230606   gcc  
sh                   randconfig-r033-20230606   gcc  
sh                   randconfig-r034-20230606   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r024-20230606   gcc  
sparc64      buildonly-randconfig-r002-20230606   gcc  
sparc64              randconfig-r023-20230606   gcc  
sparc64              randconfig-r024-20230606   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230606   gcc  
x86_64               randconfig-a002-20230606   gcc  
x86_64               randconfig-a003-20230606   gcc  
x86_64               randconfig-a004-20230606   gcc  
x86_64               randconfig-a005-20230606   gcc  
x86_64               randconfig-a006-20230606   gcc  
x86_64               randconfig-a011-20230606   clang
x86_64               randconfig-a012-20230606   clang
x86_64               randconfig-a013-20230606   clang
x86_64               randconfig-a014-20230606   clang
x86_64               randconfig-a015-20230606   clang
x86_64               randconfig-a016-20230606   clang
x86_64               randconfig-r005-20230606   gcc  
x86_64               randconfig-x051-20230606   clang
x86_64               randconfig-x052-20230606   clang
x86_64               randconfig-x053-20230606   clang
x86_64               randconfig-x054-20230606   clang
x86_64               randconfig-x055-20230606   clang
x86_64               randconfig-x056-20230606   clang
x86_64               randconfig-x061-20230606   clang
x86_64               randconfig-x062-20230606   clang
x86_64               randconfig-x063-20230606   clang
x86_64               randconfig-x064-20230606   clang
x86_64               randconfig-x065-20230606   clang
x86_64               randconfig-x066-20230606   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r025-20230606   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
