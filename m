Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D73563821F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Nov 2022 02:42:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BC2068222B;
	Fri, 25 Nov 2022 01:41:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BC2068222B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669340516;
	bh=QHyVS6AeH4Hc5SSQ2T/I1QCyV72RRUfXpjge3h4VxzM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Q2O4J/6BET1e5iyQpck4KKi3wgHvZiJScQatkL5PCAzT3hlkZsYMqOBDMUMyRzWXZ
	 bdWDGGPTFlOv1R/vi21hZtdXlmkR6dPk/dQzKbYroFu5/fUQsFhVVqOk4SQj82SB9c
	 12wg9FaKsNelDy85poPwr2omXBPbMroZFil3LIoXIsOsrl7Qr7wtU8nEeJfB+DF6yy
	 AxBTlRaQenc8jGMZctOW7pEg7DEjssFZtFe+y4kTELxQkBqsyDZEi0k0+e07MiQn87
	 8uPmUlUkMqiNuMPh1nS5UB8H8N43q1c2YrrewqZQlQTWZ6QTJ0smWpOxo4xfTbk/Tj
	 rwevhzqGpAEFw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XCw7CmiDtdfb; Fri, 25 Nov 2022 01:41:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B2B9A82153;
	Fri, 25 Nov 2022 01:41:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B2B9A82153
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EE4561BF288
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Nov 2022 01:41:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B082740120
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Nov 2022 01:41:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B082740120
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YsiP87sXL9xv for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Nov 2022 01:41:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AC3B4400A6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AC3B4400A6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Nov 2022 01:41:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10541"; a="301962249"
X-IronPort-AV: E=Sophos;i="5.96,191,1665471600"; d="scan'208";a="301962249"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2022 17:41:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10541"; a="817000071"
X-IronPort-AV: E=Sophos;i="5.96,191,1665471600"; d="scan'208";a="817000071"
Received: from lkp-server01.sh.intel.com (HELO 64a2d449c951) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 24 Nov 2022 17:41:48 -0800
Received: from kbuild by 64a2d449c951 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oyNit-0004WB-1A;
 Fri, 25 Nov 2022 01:41:47 +0000
Date: Fri, 25 Nov 2022 09:41:24 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63801d44.4fRRy3BNr9UnDhzW%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669340509; x=1700876509;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=ySPkobNhIjtf2hGIcIBJuCML73uyZM1utEnpYhjr7s4=;
 b=GyxWeLtcgQvlymayEcuQ8jQPNnC0ME6YNZFfoCWhUOX0/dGrhTBgg6Oy
 8Qv3D9noXlGh6YsoMc9CaOJGcIl4SLBL8mDM80ih78Gdt6kuRSAw4QCql
 EC9hZvmi7Sspess/cvI/FnbnjXQZCooKYwPDFuAyXfhwGWAYpwn6oKeXO
 aOEzNSIa7D9tqXMfhOkt4NA2iSa0Q6ELRlJc7yAWVD0ihRJvwhwfKshPV
 ckMQjjijN8RcVuuylF2s/PBtn8IqALg1TjcgiWYQuklRbtiFv7v8h9/0Q
 Ao9960QIAxtaLveSD61NO+rCC7Ovlvfz3xbRs7rbj6MuJwQY1ilr6RqDi
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GyxWeLtc
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 7dff4fe746d006c797aed3224835de168762d412
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
branch HEAD: 7dff4fe746d006c797aed3224835de168762d412  igc: Clean up and optimize watchdog task

elapsed time: 1927m

configs tested: 59
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
arc                                 defconfig
alpha                               defconfig
s390                             allmodconfig
s390                                defconfig
s390                             allyesconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allyesconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
i386                 randconfig-a013-20221121
i386                 randconfig-a012-20221121
i386                 randconfig-a014-20221121
i386                 randconfig-a011-20221121
i386                 randconfig-a016-20221121
i386                 randconfig-a015-20221121
x86_64                        randconfig-a013
x86_64                        randconfig-a011
ia64                             allmodconfig
x86_64                        randconfig-a015
x86_64                        randconfig-a002
x86_64                        randconfig-a004
x86_64                        randconfig-a006
arc                  randconfig-r043-20221124
x86_64                              defconfig
x86_64                               rhel-8.3
i386                          randconfig-a001
x86_64                           allyesconfig
i386                                defconfig
i386                          randconfig-a003
i386                          randconfig-a005
i386                             allyesconfig
arm                                 defconfig

clang tested configs:
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64                        randconfig-a001
x86_64                        randconfig-a003
riscv                randconfig-r042-20221124
x86_64                        randconfig-a005
s390                 randconfig-r044-20221124
hexagon              randconfig-r041-20221124
hexagon              randconfig-r045-20221124
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
