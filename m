Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 52DF772540A
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Jun 2023 08:23:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DBC3B41872;
	Wed,  7 Jun 2023 06:23:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DBC3B41872
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686119035;
	bh=hnvMp7OF5ZfKsgJIm/rbvOtVjxvz22GluMr8dqG6O8Y=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=n3cHv9+D+M7QNSY601nGLAlNJ3buzGR5/elF0NsnNShPib+N7u6dP2YoAtmFtvuzN
	 oKiVo1XqE3cxdWUhNKYu1JYumvtNCNU92K9kbRxmnSckgf74PtRgQXkR7E9ZAys1O/
	 7R71jJbhob1JSrO4rhS2un1VIdWGwYVp9KoWlpYGN6rt42qrwPZYtynzBV44EXXOu6
	 u0DdbkErDoDZry0Xoqf6Je/gzuXHTXo8ekLWS0buNvaFIzAiDrIXeKdfICrGLlKuq4
	 +JcAkiGzeeRMXZhgQqM0hjbnOVOm0xxfSTvrs0gajDBbun7b5PJ7jJYpKZccwi5iPF
	 vcFsfVDiE9fGw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GFMpzbDNSjEL; Wed,  7 Jun 2023 06:23:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7E7AF408B9;
	Wed,  7 Jun 2023 06:23:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7E7AF408B9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EABC11BF3E5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 06:23:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CF792403A2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 06:23:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CF792403A2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IH9ThiLwuJAt for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Jun 2023 06:23:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D11B740332
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D11B740332
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 06:23:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="422741859"
X-IronPort-AV: E=Sophos;i="6.00,223,1681196400"; d="scan'208";a="422741859"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 23:23:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="821971891"
X-IronPort-AV: E=Sophos;i="6.00,223,1681196400"; d="scan'208";a="821971891"
Received: from lkp-server01.sh.intel.com (HELO 15ab08e44a81) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 06 Jun 2023 23:23:43 -0700
Received: from kbuild by 15ab08e44a81 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1q6ma6-0006FK-2O
 for intel-wired-lan@lists.osuosl.org; Wed, 07 Jun 2023 06:23:42 +0000
Date: Wed, 07 Jun 2023 14:23:32 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <20230607062332.v40lj%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686119024; x=1717655024;
 h=date:from:to:subject:message-id;
 bh=E5wH1IG/fcwZA5yHRBGsCigti+fnbv3f5B1ilrJ4Zy8=;
 b=cS0Jz6Gsj+EFTdz2iBlGtkC5zL2q57cPK/v3juHMH8BxGXpAgUkiJ29I
 3qlofjcSPfUYxmLPaKHqFVPjWF23vLItFMGlc7luGP+t7u2yfKm2tIMTA
 COIxWVJtgWuXbA/d/Oc/DF9QhNAgCXf6FNSvPZBo09yIWSP5dL1jFpCvD
 g5hjvj/UAJ4JJDc/U40+x69EYSSu5eNWx/pp/whNndzE7yGs9P1KBm7w1
 9YibemQG5y1MGdgjVSAdrQACFm1Mtg94xkK6H9FXPNi1bQuapeEtsXlCT
 hP1Bs0nGGDeLzH9Im63cU3e1cfUWxoZc1iBzZyFy7zY2hHcFRNQzFQQHg
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cS0Jz6Gs
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 3aaf4fdd19005b77ed4272bd062dc1cf0a332ca0
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 3aaf4fdd19005b77ed4272bd062dc1cf0a332ca0  igc: set TP bit in 'supported' and 'advertising' fields of ethtool_link_ksettings

elapsed time: 723m

configs tested: 97
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r013-20230606   gcc  
arc                  randconfig-r043-20230606   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r001-20230606   gcc  
arm          buildonly-randconfig-r004-20230606   gcc  
arm          buildonly-randconfig-r006-20230606   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r003-20230606   clang
arm                  randconfig-r016-20230606   gcc  
arm                  randconfig-r046-20230606   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r035-20230606   gcc  
hexagon              randconfig-r004-20230606   clang
hexagon              randconfig-r041-20230606   clang
hexagon              randconfig-r045-20230606   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r005-20230606   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
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
i386                 randconfig-r005-20230606   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r034-20230606   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r015-20230606   gcc  
m68k                 randconfig-r022-20230606   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r021-20230606   gcc  
nios2                               defconfig   gcc  
openrisc             randconfig-r011-20230606   gcc  
openrisc             randconfig-r024-20230606   gcc  
openrisc             randconfig-r026-20230606   gcc  
openrisc             randconfig-r031-20230606   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r006-20230606   gcc  
parisc               randconfig-r014-20230606   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r002-20230606   gcc  
powerpc              randconfig-r032-20230606   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230606   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r044-20230606   clang
sh                               allmodconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r036-20230606   gcc  
sparc64      buildonly-randconfig-r002-20230606   gcc  
sparc64              randconfig-r033-20230606   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
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
xtensa               randconfig-r012-20230606   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
