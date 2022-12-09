Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BA11648226
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Dec 2022 13:07:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7F95141B32;
	Fri,  9 Dec 2022 12:07:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7F95141B32
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670587645;
	bh=MNSk/MVkUtKEQgLHpQyJhRj3ulD1CuOFs3vpE3rS1aA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=D+OlId8KBppjZtMoQUQzTC9JMLViv2i44fPmMnh2ZB5IT507G+690puSQ/AAsJytX
	 1/TiEM0b5tPIavSQYrBbhe6bdwKRImY5gDBQsSUkE4HyKUtUVfzY+iFBVM0DirC5aN
	 bUnjXy61CxFdSrVu6akPGznGZVTT97rXotxarJgM4rk63RgOQg+DiAM5v+hIoKNDBV
	 cDqfkm9DKyENgEX0zLJzlaphPPahpFa1fXxtvhRt/Yyr/vtQ7F5YZfIxxEmz25+aIj
	 j1jFLPLFUKIpe76lq6d+GeMXS+401Zwe2se1Hm9eCQLIFytnB/7YxcAVRR3J0QYyFA
	 jbxaaihxEAilw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R8GKr4b41rav; Fri,  9 Dec 2022 12:07:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1042241B2E;
	Fri,  9 Dec 2022 12:07:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1042241B2E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E49B81BF333
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Dec 2022 12:07:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BFBCB60E56
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Dec 2022 12:07:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BFBCB60E56
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xLP9MnfMYDNn for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Dec 2022 12:07:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D48E660B5C
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D48E660B5C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Dec 2022 12:07:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="379658825"
X-IronPort-AV: E=Sophos;i="5.96,230,1665471600"; d="scan'208";a="379658825"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2022 04:07:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="649536178"
X-IronPort-AV: E=Sophos;i="5.96,230,1665471600"; d="scan'208";a="649536178"
Received: from lkp-server01.sh.intel.com (HELO b5d47979f3ad) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 09 Dec 2022 04:07:11 -0800
Received: from kbuild by b5d47979f3ad with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p3c9n-0001pG-0g;
 Fri, 09 Dec 2022 12:07:11 +0000
Date: Fri, 09 Dec 2022 20:06:39 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <639324cf.IAd3XGu0tuBMjud2%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670587633; x=1702123633;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=XkLavU6enddTuncS2UpuTbdkJB18N1635Fd86js97w8=;
 b=RwGWYGRmObbGSm7K60ezvNLDmff0RvzCX89jyaix4a0U3Z+soPp+7s89
 u2N93bi6goByvBuRbvC9d+C3Cj1krXXO7lqbhxvawjRXPE87FQCkv03EZ
 dGrOsO6hNEUI0riYJu00ntibwtLksjiHjKZyxAcwVqkLOSUiEy0ZbTfGM
 8/oG/aI4gLGGp0i6aspwj3nf5VMR3M8UVGV6OaB19R+iwlv5QOf7kzaRf
 JASYoGqnz3KJC6p/i/bf2E+TC9xq2sCJztO6zpka6vy1L2PTYcrTRR71i
 KQGSFI8wjBflzmwZP3VSYKWo05mQy2cj0ANyGGmdscIiTqXHsVJvnyuIP
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RwGWYGRm
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 1a50cd90a9d4dddabd9eaa706f44613b473ef526
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 1a50cd90a9d4dddabd9eaa706f44613b473ef526  ice: Add check for kzalloc

elapsed time: 721m

configs tested: 72
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
powerpc                           allnoconfig
i386                                defconfig
um                             i386_defconfig
um                           x86_64_defconfig
sh                               allmodconfig
arc                                 defconfig
mips                             allyesconfig
s390                             allmodconfig
powerpc                          allmodconfig
alpha                               defconfig
x86_64                          rhel-8.3-rust
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                          rhel-8.3-func
i386                             allyesconfig
i386                          randconfig-a001
s390                                defconfig
i386                          randconfig-a003
ia64                             allmodconfig
i386                          randconfig-a005
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arc                  randconfig-r043-20221207
m68k                             allyesconfig
x86_64                               rhel-8.3
arc                              allyesconfig
s390                             allyesconfig
riscv                randconfig-r042-20221207
alpha                            allyesconfig
s390                 randconfig-r044-20221207
x86_64                           allyesconfig
arm                                 defconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a015
x86_64                        randconfig-a006
x86_64                        randconfig-a013
x86_64                        randconfig-a011
arm64                            allyesconfig
arm                              allyesconfig
x86_64                            allnoconfig
mips                     decstation_defconfig
arm                           imxrt_defconfig
sh                           se7751_defconfig
arm                           h3600_defconfig
ia64                      gensparse_defconfig
m68k                          hp300_defconfig
m68k                          atari_defconfig
m68k                        mvme147_defconfig
ia64                        generic_defconfig
sh                         ap325rxa_defconfig
powerpc                 canyonlands_defconfig
m68k                             allmodconfig

clang tested configs:
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a013
i386                          randconfig-a011
arm                  randconfig-r046-20221207
i386                          randconfig-a006
i386                          randconfig-a015
hexagon              randconfig-r041-20221207
hexagon              randconfig-r045-20221207
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
