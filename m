Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0916C622904
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Nov 2022 11:51:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8A70960E91;
	Wed,  9 Nov 2022 10:51:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8A70960E91
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667991104;
	bh=7hTl4rvUDeT9fJbknEX0oH65pg6OHk0TWGRml/x+Z5I=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=omyJB15rxA65GMvM9oHgr47OUDmlCyfvOaXi7yIBNnl5QxD0NT+5OqfQozZIdH2xR
	 Fb7Oy+OaBE+uqwEsknuzlzF73M2Fhosbcg8Bjy8kO+CfhHv6WOPBnmpF4idR3pEERn
	 UP9a0vFji5aElDzpxDy3tfUezsX81bozXuFZLp2VHcV53Ad0J1h41DFVM3ePGkUAJv
	 4nJfxb4UXy5UQC2Qo5wSDZLlqi4/PdsnbhiKBlL4YNuYeDWfMTBQZpUkLiBnkT1oXJ
	 QETMdWUT673ZpSVh+ZZZNIzgcZtj6ZmGAyTlRPt1mNlOagnzFpBz+Fn75Ypp5hU02c
	 qSvqRg+13JUIA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AP8Xny7qvQvx; Wed,  9 Nov 2022 10:51:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 94E4260E97;
	Wed,  9 Nov 2022 10:51:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 94E4260E97
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 921381BF405
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Nov 2022 10:51:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6CA4781DE7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Nov 2022 10:51:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6CA4781DE7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gyPgt8pymXuC for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Nov 2022 10:51:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 606A081DE6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 606A081DE6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Nov 2022 10:51:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="375223670"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="375223670"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 02:51:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="881886935"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="881886935"
Received: from lkp-server01.sh.intel.com (HELO e783503266e8) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 09 Nov 2022 02:51:34 -0800
Received: from kbuild by e783503266e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1osig9-0001UC-0i;
 Wed, 09 Nov 2022 10:51:33 +0000
Date: Wed, 09 Nov 2022 18:50:33 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <636b85f9.1r/YhXfiSUZyYjd6%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667991097; x=1699527097;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=Lg+K7Q/FzrY3A9fZXcrVTJlHnf9Sk2UvDXTo/81GHFU=;
 b=eVAgeIcdtokt6LjWh52wk0fe/ritUPep3H1GC/E9HYBRWDxWHKUNviPY
 agPyAjEyYQEu1YlHuNDzArvlPZjWpMqsA+Fk2sboHqF7dX0bMCM2kTXMV
 3RG6JaXY/I/Tcr+ensdkvQh64cYxz+Th30BKAy+T3yHQ2sz8xP3rru8pg
 9aVEP0IgvcSERLfDmV1wxUMRQQ/IVqN2WLdrwYXrJyPjF32MWVznLEJs/
 sLJ7YK5wjOqCZN2I8WaH0pxsd9eUMhgP8P4c4oFyweBQMt1iA5CxqnJjg
 OUPpjFtNrG1xyPR0VYqH3aMPP2QcVb/kPlfh7Th2oS+ny2dJ5FpRVnU9R
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eVAgeIcd
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 6f1e2caa9a50a4e8da4d025522f52c41c63db956
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
branch HEAD: 6f1e2caa9a50a4e8da4d025522f52c41c63db956  ice: Fix configuring VIRTCHNL_OP_CONFIG_VSI_QUEUES with unbalanced queues

elapsed time: 901m

configs tested: 58
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                                 defconfig
alpha                               defconfig
s390                             allmodconfig
s390                                defconfig
arc                  randconfig-r043-20221108
riscv                randconfig-r042-20221108
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
s390                 randconfig-r044-20221108
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
s390                             allyesconfig
sh                               allmodconfig
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
ia64                             allmodconfig
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
i386                                defconfig
m68k                             allmodconfig
alpha                            allyesconfig
arc                              allyesconfig
x86_64                               rhel-8.3
x86_64                              defconfig
i386                          randconfig-a014
i386                          randconfig-a012
m68k                             allyesconfig
i386                          randconfig-a016
x86_64                           allyesconfig
i386                             allyesconfig
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig

clang tested configs:
hexagon              randconfig-r045-20221108
hexagon              randconfig-r041-20221108
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64                        randconfig-a012
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a003
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
