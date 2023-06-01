Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 278A67191F7
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Jun 2023 06:46:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D374483B88;
	Thu,  1 Jun 2023 04:46:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D374483B88
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685594773;
	bh=5Ng3waIxfwivu2MTTkiYqZqQRSA4wfI4tbf2cl+Jhjs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=yzNwsDLAW1mfvlbfYlV7h87i3xedFQTBBccGRm4m87CqX8AlsTAfd3ChBbIbWijTy
	 +8JdUGZ5imTKsdl3sYiSdWOGMjAWU1/Rmh066kCzHFrqtYatmwqQGHxDMoqRG/Cz4Y
	 /6XoDAQD5keGVJvHrNreSSeSHCgSSOa27DKtv/Fqy4ZxSMsjR+sdVE8gDsXvS7i767
	 7nPMtvuzVsyn6hIDpQpkLjvLiIe+E0M1nebCxw4NNLKhlD4rao6IhBUKBVW0irPF38
	 Wx54b/Y+/ulm4hpUCto7427xZK4cogwETdbdzki38yjV1KNanN0fBsazLLAnL0t16M
	 NheO5VWGFWsrg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SUoDaN8HL2Us; Thu,  1 Jun 2023 04:46:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9465E83B72;
	Thu,  1 Jun 2023 04:46:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9465E83B72
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4B9631BF59F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jun 2023 04:46:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1E5DB614EC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jun 2023 04:46:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1E5DB614EC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5KJToVpgwI4x for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Jun 2023 04:46:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BFD82614E4
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BFD82614E4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jun 2023 04:46:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="441809351"
X-IronPort-AV: E=Sophos;i="6.00,209,1681196400"; d="scan'208";a="441809351"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2023 21:46:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="777009917"
X-IronPort-AV: E=Sophos;i="6.00,209,1681196400"; d="scan'208";a="777009917"
Received: from lkp-server01.sh.intel.com (HELO fb1ced2c09fb) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 31 May 2023 21:46:01 -0700
Received: from kbuild by fb1ced2c09fb with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1q4aCG-0001ut-22
 for intel-wired-lan@lists.osuosl.org; Thu, 01 Jun 2023 04:46:00 +0000
Date: Thu, 01 Jun 2023 12:45:24 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <20230601044524.PgBkW%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685594762; x=1717130762;
 h=date:from:to:subject:message-id;
 bh=HovV/OmFozHfBspeDBuKMUuYBLcXXxAQRXT8l2cMEgw=;
 b=dYDmn9DCrDo4l+Tq8H29HoZs4uukLt/7YZ1hpO9wBMU5jBfk9Uc73pTJ
 6E6mhzNZxureuOn2PGCEWnJKKjPz/RaetfYUfnS1/OrkQe651da7K7EQd
 LVToJYwsHwUYCORHhkpnb27cRbo1kjJuHAJ1H6UlJDHq6TvGMDLxRLylE
 Od+Zkp9Ro3zmSvYPC2SVkHvfOwtfO39YpLSn+18+UtjTibvR/xhqnM9/9
 wZlEJWLxIJ9mszu8YvM3zZQduBLEAKwBoua4wdbnNYbOzx+1ARFC8t61W
 j6jihESR0btISjS2GpVYssemHuHRKP0k03eUSR1ODxDKifBVI7SjzRvOC
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dYDmn9DC
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 e1dea1f7e9bce01737c06c955c2dc7d06ddbe56f
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
branch HEAD: e1dea1f7e9bce01737c06c955c2dc7d06ddbe56f  ice: Don't dereference NULL in ice_gns_read error path

elapsed time: 723m

configs tested: 122
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r014-20230531   gcc  
alpha                randconfig-r036-20230531   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r022-20230531   gcc  
arc                  randconfig-r043-20230531   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r046-20230531   gcc  
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r002-20230531   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r024-20230531   clang
arm64                randconfig-r025-20230531   clang
arm64                randconfig-r026-20230531   clang
csky         buildonly-randconfig-r003-20230531   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r006-20230531   gcc  
csky                 randconfig-r031-20230531   gcc  
hexagon              randconfig-r001-20230531   clang
hexagon              randconfig-r041-20230531   clang
hexagon              randconfig-r045-20230531   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230531   gcc  
i386                 randconfig-i002-20230531   gcc  
i386                 randconfig-i003-20230531   gcc  
i386                 randconfig-i004-20230531   gcc  
i386                 randconfig-i005-20230531   gcc  
i386                 randconfig-i006-20230531   gcc  
i386                 randconfig-i011-20230531   clang
i386                 randconfig-i012-20230531   clang
i386                 randconfig-i013-20230531   clang
i386                 randconfig-i014-20230531   clang
i386                 randconfig-i015-20230531   clang
i386                 randconfig-i016-20230531   clang
i386                 randconfig-i051-20230531   gcc  
i386                 randconfig-i052-20230531   gcc  
i386                 randconfig-i053-20230531   gcc  
i386                 randconfig-i054-20230531   gcc  
i386                 randconfig-i055-20230531   gcc  
i386                 randconfig-i056-20230531   gcc  
i386                 randconfig-i061-20230531   gcc  
i386                 randconfig-i062-20230531   gcc  
i386                 randconfig-i063-20230531   gcc  
i386                 randconfig-i064-20230531   gcc  
i386                 randconfig-i065-20230531   gcc  
i386                 randconfig-i066-20230531   gcc  
i386                 randconfig-r034-20230531   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r003-20230531   gcc  
m68k                 randconfig-r016-20230531   gcc  
m68k                 randconfig-r021-20230531   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r004-20230531   clang
nios2                               defconfig   gcc  
nios2                randconfig-r002-20230531   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r023-20230531   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r035-20230531   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r005-20230531   gcc  
riscv                randconfig-r032-20230531   gcc  
riscv                randconfig-r042-20230531   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r015-20230531   clang
s390                 randconfig-r044-20230531   clang
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r001-20230531   gcc  
sh           buildonly-randconfig-r004-20230531   gcc  
sparc        buildonly-randconfig-r005-20230531   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r011-20230531   gcc  
sparc                randconfig-r012-20230531   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r006-20230531   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230531   gcc  
x86_64               randconfig-a002-20230531   gcc  
x86_64               randconfig-a003-20230531   gcc  
x86_64               randconfig-a004-20230531   gcc  
x86_64               randconfig-a005-20230531   gcc  
x86_64               randconfig-a006-20230531   gcc  
x86_64               randconfig-a011-20230531   clang
x86_64               randconfig-a012-20230531   clang
x86_64               randconfig-a013-20230531   clang
x86_64               randconfig-a014-20230531   clang
x86_64               randconfig-a015-20230531   clang
x86_64               randconfig-a016-20230531   clang
x86_64               randconfig-x051-20230531   clang
x86_64               randconfig-x052-20230531   clang
x86_64               randconfig-x053-20230531   clang
x86_64               randconfig-x054-20230531   clang
x86_64               randconfig-x055-20230531   clang
x86_64               randconfig-x056-20230531   clang
x86_64               randconfig-x061-20230531   clang
x86_64               randconfig-x062-20230531   clang
x86_64               randconfig-x063-20230531   clang
x86_64               randconfig-x064-20230531   clang
x86_64               randconfig-x065-20230531   clang
x86_64               randconfig-x066-20230531   clang
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
