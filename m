Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F15D66224F2
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Nov 2022 08:54:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 233F641757;
	Wed,  9 Nov 2022 07:54:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 233F641757
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667980480;
	bh=CT1AWw+5q2PCXp8I2WMnlkuDlye5GywLdNQZVpQMs/w=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=yXKPV44pEt3xZjxZ8OE7jKTqTGBPQ5Ha/FPa1dLsby/bp/A1+RYrPIVvtONDiHO5c
	 qRn7Sbu/EWFxj74sUwYL0u/QrJOb9Fmscn0rbqEkvqdYTRZHG+w4AO3J3np6ul3QgG
	 vdneey5OaXQbvafNKbk2ddPIlTNnUjRvJC6HJe9+gY5jyVSs9yAFTdyJpyRkVmXZpw
	 Q7HmPBrzmAz+yXBPzUZqSmrzIs33ujjaeGZ8mjksOkuW46choak4xtbhtm68S0iTSR
	 RjW3lg+cCHlhskeCaqP68uFdUzGgQ3X5QqwW3q44zRMj00q8BkcsH+dxEaaFmk5kce
	 m45sZp43qRX6A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h27-1cpITRIO; Wed,  9 Nov 2022 07:54:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AF3E3416CA;
	Wed,  9 Nov 2022 07:54:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AF3E3416CA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 49FF81BF2B9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Nov 2022 07:54:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2FEE360E7E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Nov 2022 07:54:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2FEE360E7E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8O2lfW5pPIen for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Nov 2022 07:54:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DC82260E0D
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DC82260E0D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Nov 2022 07:54:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="290633298"
X-IronPort-AV: E=Sophos;i="5.96,149,1665471600"; d="scan'208";a="290633298"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 23:54:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="636646310"
X-IronPort-AV: E=Sophos;i="5.96,149,1665471600"; d="scan'208";a="636646310"
Received: from lkp-server01.sh.intel.com (HELO e783503266e8) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 08 Nov 2022 23:54:24 -0800
Received: from kbuild by e783503266e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1osfui-0001F2-0t;
 Wed, 09 Nov 2022 07:54:24 +0000
Date: Wed, 09 Nov 2022 15:53:59 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <636b5c97.KaA3FdwKzXKVPTb4%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667980471; x=1699516471;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=CVLcvOWuWewUcdE/GQEeUxv7aXmXaSt4vYwCb+eY4fo=;
 b=dPMBAJHq9s6iQ9kVOzXNeafi8LVyxFrKB8AWwdJW+cJ6W8P4k714KTOi
 TfUX2lczf43XyzgujXkKJPxAMhEKp6Jd+9Cy1A6WTorGnzFg5b6w9cbWO
 r+QCT7sl461NhemBAe2IC+u/y1JhI9wOs3ED0uzl/e4Gq2rQ4PI3KynH4
 siddVpqM0qzT20kV5q39SZ1XwB2JlPzv/Xtxu97vn3NSlkpLmoBKtIC0b
 JBFuTfV4U8lguf3LLiB7GPZAUwPwqibbdotPMQFvCPP/g/odK7AJeIAKm
 uKUUMksRfvNi09SpU5gLgIDGyHqEnvH90Vvg5YGw12lqxjWYM3xiv1/my
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dPMBAJHq
Subject: [Intel-wired-lan] [tnguy-next-queue:master] BUILD SUCCESS
 ee1bfbcc71cfac3b570365558cf38cb70f6ca971
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
branch HEAD: ee1bfbcc71cfac3b570365558cf38cb70f6ca971  Merge branch 'bnxt_en-updates'

elapsed time: 1174m

configs tested: 72
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                           x86_64_defconfig
um                             i386_defconfig
i386                             allyesconfig
i386                                defconfig
ia64                             allmodconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
s390                                defconfig
s390                             allmodconfig
arc                                 defconfig
alpha                               defconfig
s390                             allyesconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
sh                             sh03_defconfig
powerpc                     rainier_defconfig
arm                           sama5_defconfig
sh                     sh7710voipgw_defconfig
riscv                randconfig-r042-20221108
arc                  randconfig-r043-20221108
s390                 randconfig-r044-20221108
x86_64               randconfig-a006-20221107
x86_64               randconfig-a001-20221107
x86_64               randconfig-a004-20221107
x86_64               randconfig-a003-20221107
x86_64               randconfig-a005-20221107
x86_64               randconfig-a002-20221107
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
i386                 randconfig-a002-20221107
i386                 randconfig-a003-20221107
i386                 randconfig-a001-20221107
i386                 randconfig-a006-20221107
i386                 randconfig-a004-20221107
i386                 randconfig-a005-20221107

clang tested configs:
hexagon              randconfig-r041-20221108
hexagon              randconfig-r045-20221108
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
riscv                randconfig-r042-20221107
hexagon              randconfig-r041-20221107
hexagon              randconfig-r045-20221107
s390                 randconfig-r044-20221107
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
