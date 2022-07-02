Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0723F563EAB
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 Jul 2022 07:29:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8B28B60FAF;
	Sat,  2 Jul 2022 05:29:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8B28B60FAF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656739741;
	bh=fMHHVmOA6E/hLeB5IrrUtZVT3oYL+EVVkvGwadc4Hxc=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=vHqiTgx59SEYaQlA+MgQqKjkPYRJwFl6JZvt24EiKQ67K0Q2+05fVhzOd1hucselW
	 H4AO7tmYxIoHtgY99bSm1eAkswXCjcI1a84DAv56R6xb5a34gHLTnq9QZdrfxovRh2
	 5K4h2YPdqnuSAIr4nOpbKVuDaYd0TN9qsuKF9BZmyV1wZlnhWZDCH5eSPoPOEFGGw3
	 BJNNJWljMj56dQWbmWPD7Oc3fLESI4F2qcXL67TV1CqGw+KHQnpAf4qWd7YrpV+/px
	 Fe3MekX+XIRqp7M46IZx+xjHN3as41d5Ir69T8FWVqI/zgdDriXSEYvqdiyHUHFpk0
	 qifm9vzNkBucQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ni5MCvmqMYvm; Sat,  2 Jul 2022 05:29:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7826060F29;
	Sat,  2 Jul 2022 05:29:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7826060F29
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3AB2C1BF8C7
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Jul 2022 05:28:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0CC154152A
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Jul 2022 05:28:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0CC154152A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t0eOBn4QQ1dE for <intel-wired-lan@lists.osuosl.org>;
 Sat,  2 Jul 2022 05:28:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E9FEF410D2
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E9FEF410D2
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Jul 2022 05:28:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10395"; a="280349096"
X-IronPort-AV: E=Sophos;i="5.92,239,1650956400"; d="scan'208";a="280349096"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2022 22:28:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,239,1650956400"; d="scan'208";a="566557849"
Received: from lkp-server01.sh.intel.com (HELO 68b931ab7ac1) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 01 Jul 2022 22:28:36 -0700
Received: from kbuild by 68b931ab7ac1 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1o7VgJ-000ErM-Kk;
 Sat, 02 Jul 2022 05:28:35 +0000
Date: Sat, 02 Jul 2022 13:27:59 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62bfd75f.si0xCkBqI/i0qAHM%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656739733; x=1688275733;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=oFFfsXe8TU9dCU90ZFynLwQeWQJuJ+G3EU8RI2/6eHM=;
 b=k0FPV2UOJnZMU4djt3nKOixRaPWswaaUWRZOkIxLeKY75ylUTLxHsw47
 M2bFuPlFhk91QYlinrt4O4ICNLxtrLe32hotWloEx+DHVCb3ueCIBIlGF
 57VRkN/Fn5KxN6GD3vwdHct7TPBdQUixD29IPhmNFEDiz8rvDvNXxSpE0
 vsxX0jimw6gmDW2nPlyttezKJrhWxCbZZ3kD2tQvXu9bs50OwXeva37qX
 XMVElgRVlgjTI8EG/RdiXnoN/OwJU5g4v4hOqtgUPGhSV7BcZ1EqQS3FD
 K+PR7k0yGYtG0DAVsu59xmEoT1/akyAlVlqJN5e4CgMr3b7YqHMiugdob
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=k0FPV2UO
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 2d8b9acd663167dbd22a2ccb2acd6a35b5d0ceb2
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
branch HEAD: 2d8b9acd663167dbd22a2ccb2acd6a35b5d0ceb2  ice: Remove pci_aer_clear_nonfatal_status() call

elapsed time: 725m

configs tested: 52
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm                              allyesconfig
arm64                            allyesconfig
ia64                             allmodconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
i386                             allyesconfig
i386                                defconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arc                  randconfig-r043-20220629
s390                 randconfig-r044-20220629
riscv                randconfig-r042-20220629
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-syz
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig

clang tested configs:
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a003
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64                        randconfig-a012
i386                          randconfig-a013
i386                          randconfig-a015
i386                          randconfig-a011
hexagon              randconfig-r045-20220629
hexagon              randconfig-r041-20220629

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
