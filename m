Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A48956179CE
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Nov 2022 10:25:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3047741697;
	Thu,  3 Nov 2022 09:25:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3047741697
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667467548;
	bh=8zJaOBWif2ewMDycGQ0IQIqPeJVLv17R4HI9I/IyYjg=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=1AIS8/yy97bkxoxUVtdDFLPCSFLgVYvhrPWmnmc8A+mBBaRxuebT34AdBperdghjw
	 G9UB7ct2i1VxS+hRSh+gZ5R/fCYW/h1Tl9632QReMrLQ6hoTa6lEa5rCH5B6WksFs4
	 RUgxTNV9M4qUiCAjzUpgUJtTciSksq5xgUp6fwEhdpZi2c+fdei3uSk6oqb8GVk+XM
	 697YhdIbLfp+p4BKa1FvlHA2ieJjdBUxBhJtFW7rXyZ6ragYdTkgxifPpbm9yjaHNj
	 /NoEASokkyOzCm/UA8nol/Vsrs9dXIzxi1WZImAGxB8LYPvpQVtxEgxwz1JVzEj4Lx
	 2Ts2PRUNsXMNQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PKQf3PDcVD70; Thu,  3 Nov 2022 09:25:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E147D41553;
	Thu,  3 Nov 2022 09:25:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E147D41553
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 59E8B1BF83C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 09:25:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 403FA41553
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 09:25:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 403FA41553
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MFYRbEZtgCzY for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Nov 2022 09:25:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3652140457
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3652140457
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 09:25:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="290022416"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="290022416"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 02:25:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="665898165"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="665898165"
Received: from lkp-server02.sh.intel.com (HELO b6d29c1a0365) ([10.239.97.151])
 by orsmga008.jf.intel.com with ESMTP; 03 Nov 2022 02:25:18 -0700
Received: from kbuild by b6d29c1a0365 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oqWTN-000Fld-3B;
 Thu, 03 Nov 2022 09:25:17 +0000
Date: Thu, 03 Nov 2022 17:24:17 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <636388c1./2qvUMpuaei9QGQG%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667467541; x=1699003541;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=tXftLhEyPvLomof4zJMxQRlS51ETONSFM7/sF2m5Uks=;
 b=hMWbbrEgbbsTQ6xAxEz3pBwguct1ZY4DSolDyXbaWYX/axfW8D2j5sJm
 hRJSRQGBa6RTD0zekN5aU5EmEKmd+1TcNsLaS93fxin/mgCN5dsH2nJ/+
 3J4FahxT7Y/n1sKZCQJt4/UwMGK37dH/Nhx7qt151agOlcJsbjOESekDa
 XcE1JvkNxOobjb/9TR9c0eQ9v0JnPke5KkyDtJ9BUTSkUyCRQQCSLU4Mt
 cu9egpKBon5sJGZ1vkeS6ECR3Z0zRgIeRrOezdTTiHjO6MAG2Ghi8ABDz
 rm5UwUdhm5HUtYovEUt3gtu2BTS6yvRMdPL9oJC4lGpx30dA3mIb7Powi
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hMWbbrEg
Subject: [Intel-wired-lan] [tnguy-next-queue:40GbE] BUILD SUCCESS
 69b957440a6379b4ae4bc6eef07bbf5efdeb4233
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 40GbE
branch HEAD: 69b957440a6379b4ae4bc6eef07bbf5efdeb4233  iavf: Change information about device removal in dmesg

elapsed time: 723m

configs tested: 58
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
i386                                defconfig
um                             i386_defconfig
um                           x86_64_defconfig
ia64                             allmodconfig
arc                                 defconfig
x86_64                           rhel-8.3-syz
x86_64                        randconfig-a013
x86_64                        randconfig-a011
alpha                               defconfig
x86_64                        randconfig-a015
x86_64                               rhel-8.3
s390                             allmodconfig
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                              defconfig
s390                                defconfig
i386                          randconfig-a012
x86_64                        randconfig-a004
s390                             allyesconfig
x86_64                        randconfig-a002
powerpc                           allnoconfig
i386                          randconfig-a016
arc                              allyesconfig
powerpc                          allmodconfig
i386                          randconfig-a014
alpha                            allyesconfig
x86_64                           allyesconfig
m68k                             allyesconfig
i386                          randconfig-a001
mips                             allyesconfig
x86_64                        randconfig-a006
m68k                             allmodconfig
i386                             allyesconfig
arm                                 defconfig
arc                  randconfig-r043-20221102
i386                          randconfig-a003
riscv                randconfig-r042-20221102
s390                 randconfig-r044-20221102
i386                          randconfig-a005
sh                               allmodconfig
arm64                            allyesconfig
arm                              allyesconfig

clang tested configs:
x86_64                        randconfig-a012
i386                          randconfig-a011
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64                        randconfig-a005
i386                          randconfig-a013
i386                          randconfig-a015
x86_64                        randconfig-a001
hexagon              randconfig-r041-20221102
x86_64                        randconfig-a003
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
hexagon              randconfig-r045-20221102

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
