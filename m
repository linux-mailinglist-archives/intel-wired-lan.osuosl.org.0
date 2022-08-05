Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id F0CDB58A643
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Aug 2022 08:59:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C648B60BAB;
	Fri,  5 Aug 2022 06:59:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C648B60BAB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659682762;
	bh=KpRW7QI6yI7bvZewK1anVcgUmu7SwqbWWVBnvHe/8tE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=tG/fedKhXnsF/yKid58KtsO7BljqRxpYEaQI21FWm8MWnxSijq4/4YBh4V0tOgIlI
	 fLLyuLx/KJPBIgXA2qshfWjSg27u4vBMibh6zXnTZSegzwrd/AkLCtS6HBFq/FwgXs
	 3f6WN1MwSw/TnvnqBci5yeaA7/ATBfZ8kEIHqkaWv1/9Ounxx9JKYySsT1yoxt/4FJ
	 0yzqg4vnMZK02AvFaZOeFc6UfvEBULzxwrrjNpPASMffMl3vdy11+DJ0LQXPLXD/Us
	 rTOIz7Rqbot7vWJZKgtNo7KddbnbEevkn0uDa4fNY8HwjXHWmAjP94T1mRWxedIJAu
	 aYOtZYM2HNsDg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TeVkEhgT3BLv; Fri,  5 Aug 2022 06:59:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CA07260BB3;
	Fri,  5 Aug 2022 06:59:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CA07260BB3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 40F831BF232
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Aug 2022 06:59:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 12F41408CC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Aug 2022 06:59:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 12F41408CC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Fv7Ko18-uU9w for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Aug 2022 06:59:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F21B3408C6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F21B3408C6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Aug 2022 06:59:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10429"; a="291359586"
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="291359586"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2022 23:59:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="662878056"
Received: from lkp-server01.sh.intel.com (HELO e0eace57cfef) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 04 Aug 2022 23:59:12 -0700
Received: from kbuild by e0eace57cfef with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oJrId-000JBn-1i;
 Fri, 05 Aug 2022 06:59:11 +0000
Date: Fri, 05 Aug 2022 14:58:36 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62ecbf9c.KsHrHlUp4FbSNIKy%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659682753; x=1691218753;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=oGAliAdO+NqBowvtPH+19p820s81k0VJVq3eatl1KyA=;
 b=LLtQEY6pYH2xsvnGEmvAuLLwX/mJe7Tfv274dUoGxPYZaHLVsN5ixxsk
 1nl+UughixsEQGLmSm1ivYI5TqspPmoJdPsAzzimywpZx0EGAtHd3/40c
 TZrZyGxAt+B9BvJlC/xTDpm27Csjncad+B1U4z/VzoZoUX59qcCeqyH7D
 FNu10DKYHDAsdqkAaCE+rRB7yraJ5/S5RCD3xSrbMf+eqjnXw8wZ1JQyP
 CnhMbFJoYzV7xYATtww7j+b5rvjEBy+WRIMoa/0wVLP5djc7i5f2zbOic
 3u5Nt5gKFaPFmqDQ1MwCLy/wB3UHIeFJmCamrtBc9e0S1XiPRiT+aSlBk
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LLtQEY6p
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 78ef5b46d44cf2345fe4da0d334014aadf8dc719
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
branch HEAD: 78ef5b46d44cf2345fe4da0d334014aadf8dc719  ice: Add low latency Tx timestamp read

elapsed time: 773m

configs tested: 37
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                  randconfig-r043-20220804
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
i386                                defconfig
x86_64                           allyesconfig
i386                             allyesconfig
x86_64                        randconfig-a004
x86_64                    rhel-8.3-kselftests
x86_64                        randconfig-a002
x86_64                          rhel-8.3-func
i386                          randconfig-a001
i386                          randconfig-a003
x86_64                        randconfig-a006
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-syz
i386                          randconfig-a005
x86_64                           rhel-8.3-kvm
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig

clang tested configs:
hexagon              randconfig-r045-20220804
hexagon              randconfig-r041-20220804
riscv                randconfig-r042-20220804
s390                 randconfig-r044-20220804
x86_64                        randconfig-a001
i386                          randconfig-a002
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a004
i386                          randconfig-a006

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
