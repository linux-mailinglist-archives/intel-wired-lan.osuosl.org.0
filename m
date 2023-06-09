Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8584572A2A9
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Jun 2023 20:55:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B3B3442589;
	Fri,  9 Jun 2023 18:55:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B3B3442589
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686336950;
	bh=b4E6gUNzHEbvrj9P5E/UpF9+05c8rBrKfV00tY+B88E=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=lw8t3GSOTiA/NoKElu4VZH6gxB4Ln5y26POlC5xSrsiHAYGRuJxKcY6ywaT28e10r
	 lhdgzxAk9Q1BIxMW5XX8zsAzkm+ySGz4wJ7DwlZuNs8ZBMTAaXLH9m/CvkVTdXdLzY
	 OflAbceNzTPI1f7oMuPi9G/mZq5ltPPeAt/3OzgMx9yvSwLi9lTrTxMW6XTFm6UVbL
	 k+iBKHv/uFHM87OY29mDyV+iGAzRslVHwJ0XRqCM5tvQ4Sy5HLuZo2W6OFGjC8z4n2
	 rqArNL6E4ZSt9CyJZX0odFHfzHtkmathWphFt/PWbrBf+QPubvBIOZheOTB9CXD6+Z
	 owZlzvwxE/ymA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BvtMqLOFKEvz; Fri,  9 Jun 2023 18:55:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 03EB44254C;
	Fri,  9 Jun 2023 18:55:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 03EB44254C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 30BB61BF3D0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 18:55:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 04DD860BD3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 18:55:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 04DD860BD3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EyGS9V8FBHo6 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Jun 2023 18:55:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E2E1C60BC0
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E2E1C60BC0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 18:55:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="421258193"
X-IronPort-AV: E=Sophos;i="6.00,230,1681196400"; d="scan'208";a="421258193"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 11:55:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="800314774"
X-IronPort-AV: E=Sophos;i="6.00,230,1681196400"; d="scan'208";a="800314774"
Received: from lkp-server01.sh.intel.com (HELO 15ab08e44a81) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 09 Jun 2023 11:55:41 -0700
Received: from kbuild by 15ab08e44a81 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1q7hGu-0009JX-1K
 for intel-wired-lan@lists.osuosl.org; Fri, 09 Jun 2023 18:55:40 +0000
Date: Sat, 10 Jun 2023 02:55:17 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202306100215.kcCqH7Yw-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686336942; x=1717872942;
 h=date:from:to:subject:message-id;
 bh=CSRKtM1cEBlSqtWlVpbJSk8ruG/yW+reqtiQpQxmP8g=;
 b=FClqYC+/6PaZ/YfG+81bLdx4bw2BXqo+bQ8AnczgOjf1DecvP2KEf82p
 ghNk80w6au7CuORAIMJksotYMNhUKfNk6x5faRFIh3aianJMQci34pIs5
 t/DNYtvNusqIy1zakC2PXYWmkLZeagYAZTdV/q2kQr8IS52m15jK5QTrt
 MLA/rg66pW4qC2eKQ9qISrlg7zTbUGcrjw+hdZs1S2SGSTwwp4bY6GuVV
 sVBlkgkWFq86TjkETrmrWV6Awswdq/zGzVG4xZMRJ7QjvkosKMtdMxX27
 FbrAj/POTm5jbLNy3FsoLzDVck4v9nf8vzwEKNrmOHdXpwJhiKpNpbWoz
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FClqYC+/
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 0ec38df36ea1cc4f21bf7cd61a89942b034883c5
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
branch HEAD: 0ec38df36ea1cc4f21bf7cd61a89942b034883c5  ice: do not re-enable miscellaneous interrupt until thread_fn completes

elapsed time: 1324m

configs tested: 137
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r005-20230608   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r004-20230608   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r004-20230608   gcc  
arc                  randconfig-r012-20230608   gcc  
arc                  randconfig-r015-20230608   gcc  
arc                  randconfig-r033-20230608   gcc  
arc                  randconfig-r043-20230608   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                      footbridge_defconfig   gcc  
arm                  randconfig-r006-20230608   clang
arm                  randconfig-r046-20230608   gcc  
arm                        spear6xx_defconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r004-20230608   gcc  
csky         buildonly-randconfig-r001-20230608   gcc  
csky         buildonly-randconfig-r003-20230608   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r011-20230608   gcc  
hexagon              randconfig-r005-20230608   clang
hexagon              randconfig-r016-20230608   clang
hexagon              randconfig-r021-20230608   clang
hexagon              randconfig-r024-20230608   clang
hexagon              randconfig-r041-20230608   clang
hexagon              randconfig-r045-20230608   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230608   gcc  
i386                 randconfig-i002-20230608   gcc  
i386                 randconfig-i003-20230608   gcc  
i386                 randconfig-i004-20230608   gcc  
i386                 randconfig-i005-20230608   gcc  
i386                 randconfig-i006-20230608   gcc  
i386                 randconfig-i011-20230608   clang
i386                 randconfig-i012-20230608   clang
i386                 randconfig-i013-20230608   clang
i386                 randconfig-i014-20230608   clang
i386                 randconfig-i015-20230608   clang
i386                 randconfig-i016-20230608   clang
i386                 randconfig-i051-20230608   gcc  
i386                 randconfig-i052-20230608   gcc  
i386                 randconfig-i053-20230608   gcc  
i386                 randconfig-i054-20230608   gcc  
i386                 randconfig-i055-20230608   gcc  
i386                 randconfig-i056-20230608   gcc  
i386                 randconfig-i061-20230608   gcc  
i386                 randconfig-i062-20230608   gcc  
i386                 randconfig-i063-20230608   gcc  
i386                 randconfig-i064-20230608   gcc  
i386                 randconfig-i065-20230608   gcc  
i386                 randconfig-i066-20230608   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r003-20230608   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k         buildonly-randconfig-r002-20230608   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r013-20230608   gcc  
microblaze           randconfig-r002-20230608   gcc  
microblaze           randconfig-r034-20230608   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                           rs90_defconfig   clang
nios2                               defconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r025-20230608   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                    gamecube_defconfig   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r005-20230608   gcc  
riscv                randconfig-r032-20230608   gcc  
riscv                randconfig-r036-20230608   gcc  
riscv                randconfig-r042-20230608   clang
riscv                          rv32_defconfig   gcc  
s390                             alldefconfig   clang
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r044-20230608   clang
sh                               allmodconfig   gcc  
sh                          kfr2r09_defconfig   gcc  
sh                   randconfig-r026-20230608   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r014-20230608   gcc  
sparc                randconfig-r031-20230608   gcc  
sparc                randconfig-r035-20230608   gcc  
sparc64      buildonly-randconfig-r006-20230608   gcc  
sparc64              randconfig-r001-20230608   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   clang
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230608   gcc  
x86_64               randconfig-a002-20230608   gcc  
x86_64               randconfig-a003-20230608   gcc  
x86_64               randconfig-a004-20230608   gcc  
x86_64               randconfig-a005-20230608   gcc  
x86_64               randconfig-a006-20230608   gcc  
x86_64               randconfig-a011-20230608   clang
x86_64               randconfig-a012-20230608   clang
x86_64               randconfig-a013-20230608   clang
x86_64               randconfig-a014-20230608   clang
x86_64               randconfig-a015-20230608   clang
x86_64               randconfig-a016-20230608   clang
x86_64               randconfig-r002-20230608   gcc  
x86_64               randconfig-r006-20230608   gcc  
x86_64               randconfig-x051-20230608   clang
x86_64               randconfig-x052-20230608   clang
x86_64               randconfig-x053-20230608   clang
x86_64               randconfig-x054-20230608   clang
x86_64               randconfig-x055-20230608   clang
x86_64               randconfig-x056-20230608   clang
x86_64               randconfig-x061-20230608   clang
x86_64               randconfig-x062-20230608   clang
x86_64               randconfig-x063-20230608   clang
x86_64               randconfig-x064-20230608   clang
x86_64               randconfig-x065-20230608   clang
x86_64               randconfig-x066-20230608   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
