Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDA425A8E95
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Sep 2022 08:46:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7416D410C8;
	Thu,  1 Sep 2022 06:46:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7416D410C8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1662014767;
	bh=qDq00lTU+o5jn42L90xEkv58+WcVjVXQhjS1ccYIfWA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=28pXou14ISeB8LI54budajwIdzY5L9x6JWMl2DwakHQRAKceFeeoRVnLDfWEcUe8T
	 kaGxPHPN/IqTii/kQlAiNKSs+jV9Iwj9KirvIdzG0mJblf02M9V255P1242szObo72
	 6uuOBHEWjYrPoMWgSvJHuSeA1S6duzGknAB5CZiNW/Bb03Ea1NEMvgtqGaH8GXs2PV
	 CMP+Y8TQob+rFFVbJzIPW/UXj9EFDlDOcGFwoYFb2yC9q2Hds+8cq7NUt4vonE3l1F
	 VMxX1ohjxB0eNeEAM7UJojufPp8aq4rGnAU1PfmTtqYB9m8DGz6OhYaASq0k4dntgA
	 4+IDdG8rt2uTg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id so9pL0JeEuGF; Thu,  1 Sep 2022 06:46:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CB416400C8;
	Thu,  1 Sep 2022 06:46:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CB416400C8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 57DD21BF21A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Sep 2022 06:45:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 32E0F60AD6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Sep 2022 06:45:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 32E0F60AD6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dwu1uZ66mXC3 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Sep 2022 06:45:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2A7BF60A83
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2A7BF60A83
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Sep 2022 06:45:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10456"; a="278648962"
X-IronPort-AV: E=Sophos;i="5.93,280,1654585200"; d="scan'208";a="278648962"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 23:45:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,280,1654585200"; d="scan'208";a="608440457"
Received: from lkp-server02.sh.intel.com (HELO 811e2ceaf0e5) ([10.239.97.151])
 by orsmga007.jf.intel.com with ESMTP; 31 Aug 2022 23:45:52 -0700
Received: from kbuild by 811e2ceaf0e5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oTdxX-0001En-2u;
 Thu, 01 Sep 2022 06:45:51 +0000
Date: Thu, 01 Sep 2022 14:45:07 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <631054f3.v5cg3hLgT9K7/sgV%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662014755; x=1693550755;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=FTLyewJWduY2ZzVdsxqav2KgferTVBnTlFrNGHjDGlo=;
 b=KY+CZp452gD6fzz22H0ruX/yzEY9wEwqjpD5AuE58C+phjC1cBhubj1F
 lAOsAvrOU0V/dxyg/1DR9CbSsP7hvwOL+KC3SwrEdVk8My+8G1cTkg8S9
 LU2VlJoWy2py1x+upb/sOXToK7D/ZIr67fOm+n91ShGmNUyz184uPs6x5
 16bBs10ngfBxKCQ5XIQQBvFbjrH3CFaHJyGZlqpQcERMZ5YVjLeE+4laS
 eTdeJitVR/uDV9NlBZs6RwneEMHgUGD1dU0u5C4sqsrggGzvPD8fmqp0l
 fac1zMoWxBtbKSYLCHr8fwhs2RbRBVIFrv8lbUC51/x+Qcnejpjjb2xR2
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KY+CZp45
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 8e4ac8c00d5c89e7d8428a228c20a8ede97c60f4
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
branch HEAD: 8e4ac8c00d5c89e7d8428a228c20a8ede97c60f4  iavf: Detach device during reset task

elapsed time: 725m

configs tested: 53
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                          randconfig-a001
i386                          randconfig-a003
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests
i386                          randconfig-a005
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                        randconfig-a004
x86_64                        randconfig-a002
um                             i386_defconfig
um                           x86_64_defconfig
arc                  randconfig-r043-20220831
riscv                randconfig-r042-20220831
s390                 randconfig-r044-20220831
x86_64                              defconfig
x86_64                        randconfig-a006
x86_64                               rhel-8.3
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
x86_64                           allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
arm                                 defconfig
alpha                            allyesconfig
m68k                             allyesconfig
i386                                defconfig
arm                              allyesconfig
arm64                            allyesconfig
ia64                             allmodconfig
i386                             allyesconfig

clang tested configs:
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
x86_64                        randconfig-a012
x86_64                        randconfig-a016
x86_64                        randconfig-a014
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
hexagon              randconfig-r041-20220831
x86_64                        randconfig-a001
x86_64                        randconfig-a003
hexagon              randconfig-r045-20220831
x86_64                        randconfig-a005

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
