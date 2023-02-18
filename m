Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A138569B85A
	for <lists+intel-wired-lan@lfdr.de>; Sat, 18 Feb 2023 07:43:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E1B6F41C4F;
	Sat, 18 Feb 2023 06:43:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E1B6F41C4F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676702580;
	bh=XoR80r7CZn+9oXc6UXfrFHo35fF+uOXKgXzQjjphlcE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=n/AHZRfvFa1dpLx0T3WnHl1d+Mb0QAMzSwl2DyiRJNGFSPX0fUajDf2Xz9HSsCiIe
	 yqKX5Z1WD5znvxN1livGGpGuBdfY055U7+af5KlMPC9wbkCK2J17IUl7UeCu7fruPB
	 /SCNKsZ5KMAtj3KmHhbfkqnbeKAFszD+LcOIy9IbmuLWJszRCa61E1ZMvuCqiHckXG
	 aCBoplchdLIVZCnDOrqhlboAfXNz5OCXQvIXvXsyUcBxaHI6siBeszXd5a1YGQLm7a
	 NFXo3RB0iMSYOaFCwVpAKQZ/1KzvcEmeUXg/CkYfLiLCi55Pmhz0eiwdAiM0WmzQXt
	 erq6hvstrt6pQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 16U4qdwt1upw; Sat, 18 Feb 2023 06:42:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5AFEF41B9E;
	Sat, 18 Feb 2023 06:42:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5AFEF41B9E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BF8921BF3D9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Feb 2023 06:42:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9E35760BA4
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Feb 2023 06:42:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9E35760BA4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id le5hUcNzsVIt for <intel-wired-lan@lists.osuosl.org>;
 Sat, 18 Feb 2023 06:42:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8809B60B8D
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8809B60B8D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Feb 2023 06:42:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10624"; a="418374670"
X-IronPort-AV: E=Sophos;i="5.97,306,1669104000"; d="scan'208";a="418374670"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2023 22:42:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10624"; a="739507654"
X-IronPort-AV: E=Sophos;i="5.97,306,1669104000"; d="scan'208";a="739507654"
Received: from lkp-server01.sh.intel.com (HELO 4455601a8d94) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 17 Feb 2023 22:42:50 -0800
Received: from kbuild by 4455601a8d94 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pTGvq-000CBt-0H;
 Sat, 18 Feb 2023 06:42:50 +0000
Date: Sat, 18 Feb 2023 14:42:08 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63f07340.XCOWxgNTBtaCmeFx%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676702572; x=1708238572;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=flCUSPPwglMeqBLUxa2m1o6x43OxUdm3c4xJVKoJbCo=;
 b=jrhk5B602GgSvyL8yjQDnl6va5GpTtGwoG9UT8lt7lycpE7O3+U46IOa
 FUC8+TPFXdM5J5CEdXaXj0ZbEf+H+Z/7RwivR1H4R5I31w2A3HkdY3kRc
 j0SiRKgvY7S4d82hot2ZId5N/hmlIHGl6n1vxwr3R2f57CaiRC/2rpWhe
 /1eL4gLULG2gGaa9aFyCn4cRVXR6lCKV+lpl9zjwHQy3qatMKXfNN7+yX
 0B4e/d17/a60KO7Ayogjq7AdOFXMuFptJDrW47dz+/YWPHOJVYnU/Rebz
 lhGXIjQIQ1SsblDniP7FakPeivMXwVQ1ao6Bf3GjKQDuweL0MNJtBrupT
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jrhk5B60
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 3a127e58112af46ebf9922a0cc2e52146bc931a4
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
branch HEAD: 3a127e58112af46ebf9922a0cc2e52146bc931a4  ice: Write all GNSS buffers instead of first one

elapsed time: 726m

configs tested: 73
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
alpha                            allyesconfig
alpha                               defconfig
arc                              allyesconfig
arc                                 defconfig
arc                  randconfig-r043-20230217
arm                              allmodconfig
arm                              allyesconfig
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
csky                                defconfig
i386                             allyesconfig
i386                              debian-10.3
i386                                defconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
ia64                             allmodconfig
ia64                                defconfig
loongarch                        allmodconfig
loongarch                         allnoconfig
loongarch                           defconfig
m68k                             allmodconfig
m68k                                defconfig
mips                             allmodconfig
mips                             allyesconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
riscv                            allmodconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                randconfig-r042-20230217
riscv                          rv32_defconfig
s390                             allmodconfig
s390                             allyesconfig
s390                                defconfig
s390                 randconfig-r044-20230217
sh                               allmodconfig
sparc                               defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                            allnoconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                                  kexec
x86_64                        randconfig-a002
x86_64                        randconfig-a004
x86_64                        randconfig-a006
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
x86_64                               rhel-8.3

clang tested configs:
arm                  randconfig-r046-20230217
hexagon              randconfig-r041-20230217
hexagon              randconfig-r045-20230217
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
