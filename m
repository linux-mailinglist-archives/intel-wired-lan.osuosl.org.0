Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8D916765FD
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Jan 2023 12:24:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0E1DB40150;
	Sat, 21 Jan 2023 11:24:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0E1DB40150
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674300267;
	bh=pGAgvImBsNbKL8hjZN4vw5SI2fATTcnf3S1rjKdHHPA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=aIKDY191hKBH1x15HY0B78Kz4j9qtqMXQbT2HJyTqCbVYo0y/G+rFNBg1zngIazT6
	 ITUz8YnUy7e9L+jXsPpHOMeYxXn0c3S8Wz3QXzL1/L3fpvYaFQTqwo2VEZ5JLSXZNl
	 IkcArqHKSwIxBfqBF5Q8x4NvkKb54Tn3CdP0nz0k+qmgPMrv1KIRMPLe44lvDQcx7t
	 1ZC4x7hlcJ8/4sGg9KoSC+FOjiuOO9lRYuLqaD7jO+sjzUeQUtIbmqhOfsn3Sba3pB
	 qrE9Uv4mD1VO001m/bT3XzAfgpUzAghIwGnGqAKV4MH5H0UKDf5g9z2j//ktM23rTr
	 sq478qE26zAXg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LpmFEhub-tR8; Sat, 21 Jan 2023 11:24:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EBD2B40105;
	Sat, 21 Jan 2023 11:24:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EBD2B40105
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 274311BF5F8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Jan 2023 11:24:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0190F60E31
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Jan 2023 11:24:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0190F60E31
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZzGjqha4lVcB for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Jan 2023 11:24:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 00FA360E17
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 00FA360E17
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Jan 2023 11:24:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10596"; a="309352322"
X-IronPort-AV: E=Sophos;i="5.97,235,1669104000"; d="scan'208";a="309352322"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2023 03:24:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10596"; a="610764269"
X-IronPort-AV: E=Sophos;i="5.97,235,1669104000"; d="scan'208";a="610764269"
Received: from lkp-server01.sh.intel.com (HELO 5646d64e7320) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 21 Jan 2023 03:24:17 -0800
Received: from kbuild by 5646d64e7320 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pJByq-000404-17;
 Sat, 21 Jan 2023 11:24:16 +0000
Date: Sat, 21 Jan 2023 19:23:29 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63cbcb31.8yM6E7NRh1PuUJYy%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674300258; x=1705836258;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=5SNLKD4wDTwDw5uYEtLJd4+hSfQIXHszQxwM5O1LDHY=;
 b=InrtK3R5VKVHSV9TQ4Xv4q0korpOP3XnNPDyoGzFj4LqOQbWaaGGxWBD
 svFYAJkEr0gDddOdTlIFq5ICbnhfdAdEH3lEM2TP0Ki0tQisk76wifxo0
 NvHz3NbP24VbUdlYf4LbTeJ4/LY/fhhD5pqgrwxOaNt9v83VKai81ykm/
 iw9htdpWLOXzchFoKITGaHUxRxKwlFNVI96LWGs3ZIK4z+eOFoUs5eGWA
 EOwBco/wPW4yitRjoeYZ42W2jRh7qtRLBlJOkcU9JoYxgka7r+Ot75YjT
 WvyHTt+aAyVjg2CK+5k7irrk7zjleXgpNJep9S65+tsnASWUi8z50Fqkg
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=InrtK3R5
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 d4fd5e6a1b53582852e4c43c7f398ab983fffc48
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
branch HEAD: d4fd5e6a1b53582852e4c43c7f398ab983fffc48  ice: Do not use WQ_MEM_RECLAIM flag for workqueue

elapsed time: 722m

configs tested: 62
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
arm                  randconfig-r046-20230119
x86_64                           rhel-8.3-syz
arc                  randconfig-r043-20230119
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
arc                                 defconfig
x86_64                           rhel-8.3-bpf
s390                             allmodconfig
alpha                               defconfig
um                           x86_64_defconfig
um                             i386_defconfig
s390                                defconfig
x86_64                              defconfig
x86_64                    rhel-8.3-kselftests
s390                             allyesconfig
x86_64                          rhel-8.3-func
powerpc                           allnoconfig
m68k                             allmodconfig
alpha                            allyesconfig
sh                               allmodconfig
arc                              allyesconfig
x86_64                               rhel-8.3
x86_64                        randconfig-a013
arm                                 defconfig
x86_64                        randconfig-a011
x86_64                        randconfig-a015
m68k                             allyesconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                           allyesconfig
i386                                defconfig
mips                             allyesconfig
x86_64                        randconfig-a006
powerpc                          allmodconfig
i386                          randconfig-a001
i386                          randconfig-a003
arm64                            allyesconfig
i386                          randconfig-a005
arm                              allyesconfig
i386                             allyesconfig
ia64                             allmodconfig
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016

clang tested configs:
riscv                randconfig-r042-20230119
hexagon              randconfig-r041-20230119
hexagon              randconfig-r045-20230119
s390                 randconfig-r044-20230119
x86_64                          rhel-8.3-rust
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
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
