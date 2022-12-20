Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 50CC665215E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Dec 2022 14:20:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3E37660E60;
	Tue, 20 Dec 2022 13:20:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3E37660E60
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671542449;
	bh=CRQFekqZwC0gVJuGc3fZ9cQsDp/v8+rLCOgfqzvV4Uw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=1poenuAkxsQtE/wol4i2Z3b0qFYUkB456XAPRTwjGs2p4dP36dq87GfqSxofdBVpp
	 XzPeMkel0wwnKCCVHCG8RTfk0vQmSFpH9KowRjyyx4ezojgZ3q5b9ci3YY4CHlJfQE
	 T4teB+qhfRbcooKSWf9DTKdi53OMPl3hLOIRv/UpipZInC+JmPS7Y7ggBnqhW13/eB
	 8tEGhDTZ0gHAMo0q1USQ/mmOBNZ/s7N7qEYdV35OmNlfW4qIkr8tqk376o7A/WuqgP
	 CjhfL1iedkB/Dmmkq18A9bw0lqS6hLjHZ9r9D+UQkPF7j+xi0bYuMBXVIKDoIPWh7L
	 Yho3a/8FlhrSA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IPzwrhEF0Qmx; Tue, 20 Dec 2022 13:20:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 291EC60BC3;
	Tue, 20 Dec 2022 13:20:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 291EC60BC3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 122761BF3AE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Dec 2022 13:20:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DFD13408EB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Dec 2022 13:20:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DFD13408EB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dP7tHeP4KTux for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Dec 2022 13:20:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E0584408E0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E0584408E0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Dec 2022 13:20:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="321512773"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="321512773"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 05:20:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="644421336"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="644421336"
Received: from lkp-server01.sh.intel.com (HELO b5d47979f3ad) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 20 Dec 2022 05:20:22 -0800
Received: from kbuild by b5d47979f3ad with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p7cXZ-0009W8-09;
 Tue, 20 Dec 2022 13:20:17 +0000
Date: Tue, 20 Dec 2022 21:19:44 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63a1b670.CxAhOAZjWsteBNaL%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671542442; x=1703078442;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=PEoYJwwyJ7b704nEp9whLvEBXmRBbKklT1nfLYBXaec=;
 b=azfHMPFeMqsaV3i4vksT+2RfqdqxrWXfV6X95Tp+wUzfH7coE69klDFL
 IodxkN9W7irBGwo3fQYr2yK8AcMvq+oDHo6QuJfJvYxwUOviJ3vV2j2ca
 kOpM4aT9OsR12aMtqVeBoBN2a/UwohAtlFZ75aS7R3EhjL9sRhkeaYZLT
 b4DGE/ymr9R1BIjN8d9EO9dzUsdnzX4DUwRkio7g9ge6kKze1OBHV5jZn
 1l6vrUlumz4+u1tn/Zn5qvn5h6bDJGEDdv7kAGrJfEpPtD7OYEWHSj7yO
 rNJObMXe7p/6Anaxa+/Ljic1GLY9QEYPcKK1oi0z3NMSHwWRK3IdDClJr
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=azfHMPFe
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 41e742d8b2332808442e0795b9b36a398e4d511a
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
branch HEAD: 41e742d8b2332808442e0795b9b36a398e4d511a  ice: Prevent set_channel from changing queues while RDMA active

elapsed time: 726m

configs tested: 68
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
powerpc                           allnoconfig
um                             i386_defconfig
um                           x86_64_defconfig
sh                               allmodconfig
arc                                 defconfig
m68k                             allmodconfig
s390                             allmodconfig
mips                             allyesconfig
alpha                               defconfig
powerpc                          allmodconfig
s390                                defconfig
x86_64                          rhel-8.3-func
arc                              allyesconfig
alpha                            allyesconfig
x86_64                    rhel-8.3-kselftests
s390                             allyesconfig
m68k                             allyesconfig
ia64                             allmodconfig
x86_64                              defconfig
i386                                defconfig
arm                                 defconfig
x86_64                               rhel-8.3
x86_64               randconfig-a002-20221219
x86_64               randconfig-a003-20221219
x86_64               randconfig-a001-20221219
x86_64               randconfig-a004-20221219
x86_64                           rhel-8.3-bpf
x86_64               randconfig-a005-20221219
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                           allyesconfig
x86_64               randconfig-a006-20221219
i386                          randconfig-a001
i386                          randconfig-a003
arm                              allyesconfig
arm64                            allyesconfig
i386                             allyesconfig
i386                          randconfig-a005
riscv                randconfig-r042-20221218
arc                  randconfig-r043-20221219
arm                  randconfig-r046-20221219
arc                  randconfig-r043-20221218
s390                 randconfig-r044-20221218
x86_64                            allnoconfig

clang tested configs:
x86_64                          rhel-8.3-rust
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64               randconfig-a015-20221219
x86_64               randconfig-a011-20221219
x86_64               randconfig-a012-20221219
x86_64               randconfig-a014-20221219
i386                 randconfig-a012-20221219
x86_64               randconfig-a016-20221219
i386                 randconfig-a013-20221219
x86_64               randconfig-a013-20221219
i386                 randconfig-a015-20221219
arm                  randconfig-r046-20221218
hexagon              randconfig-r041-20221218
hexagon              randconfig-r045-20221219
i386                 randconfig-a011-20221219
hexagon              randconfig-r041-20221219
i386                 randconfig-a014-20221219
hexagon              randconfig-r045-20221218
i386                 randconfig-a016-20221219
riscv                randconfig-r042-20221219
s390                 randconfig-r044-20221219

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
