Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 98718576447
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Jul 2022 17:18:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 880136F1F1;
	Fri, 15 Jul 2022 15:18:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 880136F1F1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657898283;
	bh=ejHJOLV8yzNEjo7O/ns+zRQra0zYGyHTL+TQO6cPCOA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=aPYyyDTjoBWRTAs569qKoeyoeS+H5fX61CFArcUIb/LP/kyY9DT9G2Hltf21t/yFG
	 sIF+fZbxGFz5XDMnWUOnwKK2JLmq6C0TIJFEGZEJPGhAdvEOg+T+jjZZUCMAHsffa8
	 hevjKIzEhAJ4xKWtLHzMDMl9Yh+Gml7WLuWsMe2WOXHRn1RFFyvpT7FQkZM6J9ItN6
	 d5KTePyE5H1hytFb+qIY/r3LZohs7r7vfcbo9gyOjrkQv8B0Rogh1h1vwLU1Ozg71Y
	 tU9Q37WPTKd/mf3QR1lhKvUhr7hteZ45wHw5JTfSEEgEM0zNhvKjP4rJ8mxxN3YybR
	 ZhDD5C6bVvpKg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y9aeVDz6yxoq; Fri, 15 Jul 2022 15:18:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5B1AE6175C;
	Fri, 15 Jul 2022 15:18:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5B1AE6175C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6881A1BF3E0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Jul 2022 15:17:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4F90F8505D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Jul 2022 15:17:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4F90F8505D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id olD5iK0TB1Sr for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Jul 2022 15:17:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 68DF884FDD
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 68DF884FDD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Jul 2022 15:17:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10408"; a="372133046"
X-IronPort-AV: E=Sophos;i="5.92,274,1650956400"; d="scan'208";a="372133046"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2022 08:17:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,274,1650956400"; d="scan'208";a="654366578"
Received: from lkp-server02.sh.intel.com (HELO ff137eb26ff1) ([10.239.97.151])
 by fmsmga008.fm.intel.com with ESMTP; 15 Jul 2022 08:17:54 -0700
Received: from kbuild by ff137eb26ff1 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1oCN4k-00003i-03;
 Fri, 15 Jul 2022 15:17:54 +0000
Date: Fri, 15 Jul 2022 18:37:06 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62d14352.95eI6+h7kDJQUfwC%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657898276; x=1689434276;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=FTEBVr/wrSG/PplBmqHRYLBp3ZeesaCwbE1fvkwl/LE=;
 b=noNypkcxoV9UZitF4iRgoAWqGzWnyUPWoff9Mxe7nNJCAyxYpHHAxQoA
 wcK20ZVqkEYzAcP9v6lKrUc6ASIKTqjeArOKmp2XP8QH4OA+H+vF9s9cn
 JMVAe8qJkeOcroEW1lZiYR27QHYSJFRl6Zfln7c45ewSQwT4xy8dcaqh5
 Ah8l5xjivGGmwZzm3eh3pGK25+oArUxTUUOhI8mZ5B7G7D3O45LRcPGQn
 2RhULj6KA1i1lJQgssnBgIpOjHA2d7Gfil7HT8ZsEM+JRpXIW3ycLUFGV
 TJha02fPQ/Ch7eZJXH2YDV/oayUSqgsvauWT6woDGL0LgRnJPGe1cT5dJ
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=noNypkcx
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 43c064d1dc6bee65497226c4662219411b8d21a4
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
branch HEAD: 43c064d1dc6bee65497226c4662219411b8d21a4  ice: Implement FCS/CRC and VLAN stripping co-existence policy

elapsed time: 1056m

configs tested: 76
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-c001
sparc                             allnoconfig
arm                           h3600_defconfig
mips                         cobalt_defconfig
sh                        sh7785lcr_defconfig
arm                        clps711x_defconfig
powerpc                      pcm030_defconfig
m68k                          atari_defconfig
arc                          axs103_defconfig
powerpc                     pq2fads_defconfig
arm                             ezx_defconfig
powerpc                 mpc8540_ads_defconfig
alpha                             allnoconfig
arm                           viper_defconfig
sh                        edosk7705_defconfig
x86_64                                  kexec
csky                              allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
i386                             allyesconfig
i386                                defconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                    rhel-8.3-kselftests
x86_64                         rhel-8.3-kunit
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3

clang tested configs:
powerpc                 mpc836x_rdk_defconfig
s390                             alldefconfig
powerpc                   lite5200b_defconfig
powerpc                     ppa8548_defconfig
riscv                            alldefconfig
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
hexagon              randconfig-r045-20220714
hexagon              randconfig-r041-20220714
hexagon              randconfig-r045-20220715
s390                 randconfig-r044-20220715
hexagon              randconfig-r041-20220715
riscv                randconfig-r042-20220715

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
