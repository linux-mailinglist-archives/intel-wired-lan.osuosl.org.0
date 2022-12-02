Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A8772640210
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Dec 2022 09:28:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 27D5860E91;
	Fri,  2 Dec 2022 08:28:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 27D5860E91
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669969693;
	bh=pRaEEwPbXAiWvdzJ369g6KiSM3Abd/9iWST0omTeRrI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=j37KIwR+sklHEN5tcCcOuAtZJiWr+TakBoYiakOLMqzJFzjyyONn1g1dnmSoZcPGP
	 Mm62gHIxCxZaTex0RBz4f6GavFK8kVzrTajMCJYYxa+FYNWevZmepsgDWqbDHZsMjR
	 Cve3DRKgx6cEcYOoKPpFXyNEaekVo6MtIH9pluAkD9+iqHoHFCAWVFRnoA5Ne1cm/9
	 urGFqf6AE02jpYN1uHxhNkE/AA2ZhcjA7shr4SR+eH5GBikY7SWeio6a0pbj1t8jhA
	 BuwuhLyB+yTYwTDXrbu+H7JUdZJZGkAU00E3RRBRNKGygLqO2tOwVZCRzFhiXJ29os
	 SB6N0EXDVG1HA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RSX3YJfBAsmc; Fri,  2 Dec 2022 08:28:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 361C760A6B;
	Fri,  2 Dec 2022 08:28:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 361C760A6B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9836A1BF263
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Dec 2022 08:28:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7723082123
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Dec 2022 08:28:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7723082123
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id srlL9wlGjhR3 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 Dec 2022 08:28:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2D45D820F2
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2D45D820F2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Dec 2022 08:28:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="402184195"
X-IronPort-AV: E=Sophos;i="5.96,210,1665471600"; d="scan'208";a="402184195"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2022 00:28:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="819364078"
X-IronPort-AV: E=Sophos;i="5.96,210,1665471600"; d="scan'208";a="819364078"
Received: from lkp-server01.sh.intel.com (HELO 64a2d449c951) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 02 Dec 2022 00:28:04 -0800
Received: from kbuild by 64a2d449c951 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p11Ot-000DR5-1U;
 Fri, 02 Dec 2022 08:28:03 +0000
Date: Fri, 02 Dec 2022 16:28:00 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6389b710.bG2xl8LR92pnmMXC%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669969686; x=1701505686;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=JEImy4cOKdL8qF6sAVczqS5Nnt6IskDpHZgh2kqbZbU=;
 b=A67UTaeERAD/+q05gyJGh4/xJJHebYRLYIcjT8wAsErn7U3btCgHl3WO
 S1QHyOhF7n17vmy1wInY3dRLI7HxidK3x4s6FPxJdu/KK6yCnP8ZjftC2
 l+fgRYYgFj5Zzhp5zD+QJNIFzs8V7Zx00BdfH0Upi+eGm4Ew5ZukEWXYV
 6xSaqw1sRVNhuyNuSPreV1IhC4cbIMM2KzP+Y4eGorftWHTC8MBtXyx7G
 3voSYC+NptUfVwcBczR5hr+auWu4LBvBzLci3SV/jBpwHkp5YFB0il186
 MZ5xZz4wO9lQayjIET0gh3F5LiaeJgzzG71ez/1PUZLD3FzoHDInz+zVc
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=A67UTaeE
Subject: [Intel-wired-lan] [tnguy-next-queue:master] BUILD SUCCESS
 4b6c6065fca123d419afef005a696f51e6590470
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git master
branch HEAD: 4b6c6065fca123d419afef005a696f51e6590470  r8169: use tp_to_dev instead of open code

elapsed time: 1048m

configs tested: 49
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                  randconfig-r043-20221201
riscv                randconfig-r042-20221201
s390                 randconfig-r044-20221201
i386                          randconfig-a005
arc                                 defconfig
alpha                               defconfig
s390                                defconfig
s390                             allmodconfig
s390                             allyesconfig
powerpc                           allnoconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                        randconfig-a006
x86_64                              defconfig
sh                               allmodconfig
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
x86_64                               rhel-8.3
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
powerpc                          allmodconfig
mips                             allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
x86_64                           allyesconfig
arc                              allyesconfig
alpha                            allyesconfig
ia64                             allmodconfig
i386                                defconfig
i386                             allyesconfig
i386                          randconfig-a003
i386                          randconfig-a001
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
x86_64                            allnoconfig
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig

clang tested configs:
hexagon              randconfig-r045-20221201
hexagon              randconfig-r041-20221201
i386                          randconfig-a006
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
