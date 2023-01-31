Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B75A682AD2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Jan 2023 11:50:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EA486410AB;
	Tue, 31 Jan 2023 10:49:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EA486410AB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675162200;
	bh=45/Vo4Q3cVoeF+dnOKfam/I5aBUK5APpiwUL9hjAS1I=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=6W+pxVSlHcSxwJ6y0zV8G1/xL2uB3RoHJ8xtsCXfobVycwSypfwtQP2Iv1MaVKDZD
	 Aa0ZeC/Tv5cw3x/VGSEzzJZDgDpVz1R6Lh5mc25hczNQ77LnqwsIgpfsYoJPMXqMkC
	 tqFliWygV0gQ6as9w2eWL8+Or2MxE8hx9fXpCX7dqq1rQHPZc6xZw++iUcXV9/y0Ak
	 NzFuEHBsfIOKkcxk0WP2ATYRlilqeUqdwfV1Z4GFFZI612QG5BRnh9U6pG5iLDtCf3
	 Gw13tcOgpVLnKgzQNvunIDX3iSTFgcyuu+BwbQcVHFrwwJw3tHuOCGqTzQzsIcdDKm
	 pi5vJIPRwKvag==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9773Z2sq2DNt; Tue, 31 Jan 2023 10:49:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A0638409FA;
	Tue, 31 Jan 2023 10:49:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A0638409FA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 29BF51BF2E4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 10:49:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EC0A8606E7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 10:49:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EC0A8606E7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hsYO5RVJuPif for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Jan 2023 10:49:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CB398605B7
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CB398605B7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 10:49:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="307464931"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="307464931"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 02:49:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="838344092"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="838344092"
Received: from lkp-server01.sh.intel.com (HELO ffa7f14d1d0f) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 31 Jan 2023 02:49:49 -0800
Received: from kbuild by ffa7f14d1d0f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pMoCy-0004NS-3C;
 Tue, 31 Jan 2023 10:49:49 +0000
Date: Tue, 31 Jan 2023 18:49:09 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63d8f225.vuUPZzim1tleadmw%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675162191; x=1706698191;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=XWV+W7sksgSuNJ1Vi8aM9GEai76/w4HMt7gbj3nvUtE=;
 b=O9Z+4L/9RfF3k7MOOB5Xw2oDUtmbMYpOqkOyEMowmqiKYTUYRnmwwVpO
 lNCc+wgyWnfq8xDECMUXc/xkoon5fRPFZaTVK62RGJ/Xw5ZaHLchWuAh8
 NR9SvP0ExmfQFYORV6QPi/a4RCJKoz3Ma0juAbBH0YjqyqT3K25ueUSk3
 UUdI4WVm3ujpy/U1H5iL3Qe6yvBslT27DMi8DRFHbQKj4IGDnoXbKcBms
 s6iT3N2NN+GVskaLUaBd4FNQv/a6IlUf6WLd7VrCRwWJ5vkWjfApnkGr/
 j99FGBu9eyn94Lf5abo6vuw3ZvEhf+HQiB5jsHoYAwVrKRIbCxfZHU65k
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=O9Z+4L/9
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 91592777a9c49f43f59844aedef6afc41b29fd98
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
branch HEAD: 91592777a9c49f43f59844aedef6afc41b29fd98  ice: Fix check for weight and priority of a scheduling node

elapsed time: 725m

configs tested: 75
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
um                             i386_defconfig
um                           x86_64_defconfig
alpha                            allyesconfig
arc                              allyesconfig
m68k                             allmodconfig
m68k                             allyesconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
s390                                defconfig
powerpc                           allnoconfig
mips                             allyesconfig
s390                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
x86_64                              defconfig
x86_64                               rhel-8.3
ia64                             allmodconfig
x86_64                           allyesconfig
x86_64               randconfig-a001-20230130
x86_64               randconfig-a003-20230130
x86_64               randconfig-a004-20230130
x86_64               randconfig-a002-20230130
x86_64               randconfig-a006-20230130
x86_64               randconfig-a005-20230130
i386                 randconfig-a002-20230130
i386                 randconfig-a001-20230130
i386                 randconfig-a004-20230130
i386                 randconfig-a003-20230130
i386                 randconfig-a005-20230130
i386                 randconfig-a006-20230130
arc                  randconfig-r043-20230129
arm                  randconfig-r046-20230129
arm                  randconfig-r046-20230130
arc                  randconfig-r043-20230130
i386                                defconfig
arm                                 defconfig
arm64                            allyesconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
arm                              allyesconfig
x86_64                           rhel-8.3-bpf
i386                             allyesconfig
i386                          randconfig-c001

clang tested configs:
x86_64                          rhel-8.3-rust
hexagon              randconfig-r041-20230129
hexagon              randconfig-r045-20230130
hexagon              randconfig-r041-20230130
hexagon              randconfig-r045-20230129
s390                 randconfig-r044-20230129
riscv                randconfig-r042-20230129
riscv                randconfig-r042-20230130
s390                 randconfig-r044-20230130
x86_64               randconfig-a014-20230130
i386                 randconfig-a013-20230130
x86_64               randconfig-a013-20230130
i386                 randconfig-a012-20230130
x86_64               randconfig-a011-20230130
i386                 randconfig-a014-20230130
x86_64               randconfig-a012-20230130
x86_64               randconfig-a015-20230130
i386                 randconfig-a011-20230130
x86_64               randconfig-a016-20230130
i386                 randconfig-a015-20230130
i386                 randconfig-a016-20230130
x86_64                        randconfig-k001
powerpc                 mpc8560_ads_defconfig
arm                          ixp4xx_defconfig
arm                         s5pv210_defconfig
powerpc                     skiroot_defconfig
powerpc                    gamecube_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
