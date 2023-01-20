Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FA416753E7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Jan 2023 12:55:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 997F082572;
	Fri, 20 Jan 2023 11:55:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 997F082572
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674215730;
	bh=6/YD1eSSnKJmagP5yITDqSAJrDN6+n28cIPUPEpheOw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=SF7rZxaI4ATvBocuQiZDS4cEfHVb9GT+sNJOrcNA5yvyecjHraMi3wTodAnnULfzn
	 TOBWiEZv2YJrKJPLSFIFykn6ovkgACCSo339rJxfxq9jxiDMVqMvqgK0podJ0ukSFX
	 ZrcFeMKhK2gynKHau+ZdNUiD6ARL7/4glkUd70xgU1ievC/kevyd84pIyR8mE37vnF
	 pQotfLs2Fy0yxe3d0j8POzGJu5up8kvwLgIKTcwwOW7sCWqK8LjOkjZKw5BXh1MWqA
	 cmu8MIPtYliCN/bSNrMpBqoPbI5ikSqNmqTbEtf5cUGnsX4hPStzVcJUDJOyA03zQn
	 p/XYxYdqvdSyQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id txRr2ca63JXu; Fri, 20 Jan 2023 11:55:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 89F7E823FB;
	Fri, 20 Jan 2023 11:55:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 89F7E823FB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1C8341BF338
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jan 2023 11:55:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 05574404D4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jan 2023 11:55:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 05574404D4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T_FuZE_jLz0L for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Jan 2023 11:55:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 25E9F401A1
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 25E9F401A1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jan 2023 11:55:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="411795465"
X-IronPort-AV: E=Sophos;i="5.97,232,1669104000"; d="scan'208";a="411795465"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2023 03:55:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="729092425"
X-IronPort-AV: E=Sophos;i="5.97,232,1669104000"; d="scan'208";a="729092425"
Received: from lkp-server01.sh.intel.com (HELO 5646d64e7320) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 20 Jan 2023 03:54:58 -0800
Received: from kbuild by 5646d64e7320 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pIpz0-0002Wu-0c;
 Fri, 20 Jan 2023 11:54:58 +0000
Date: Fri, 20 Jan 2023 19:54:26 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63ca80f2.YvSfJT+Lvw2duTG1%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674215721; x=1705751721;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=Nq5JycXIql/huCLCmUbThOLLlkC6DzjdRc+zLvZSeG4=;
 b=mCqk/peoCZue2ojoZKMVeLCMk+sSg0YH9trXfsf055hGtf10LFUxblIk
 WM3ugM9r2e9k4xkusQCwkAkQs5gXoLtS4SAzVWvIrTdVla7iZwTvJ3PET
 KlGvlwTur6yhdMIA6Np/S2CQe5a7OBS9Zhm3SnzWdvUTvHjide4+W95hf
 0I1RLAxAx1yGGz2YZ4kwvDq0yi2jG/wwjzeXjocCi2MwpFqvw79NUd4Ad
 RxDK2cr2YQs/55gOVghJ4XQjRcaCSo2uZtKLnHSezI2ykRvWoJxsx14rx
 XXwMs9w1iZ1cy8ovmhCh6OvwS+P9UNIJTNDmogfungnYEXcxtEBE7EbtS
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mCqk/peo
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 6c977c5c2e4c5d8ad1b604724cc344e38f96fe9b
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git master
branch HEAD: 6c977c5c2e4c5d8ad1b604724cc344e38f96fe9b  net: dsa: microchip: ksz9477: port map correction in ALU table entry register

elapsed time: 1055m

configs tested: 63
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
s390                                defconfig
s390                             allyesconfig
um                           x86_64_defconfig
um                             i386_defconfig
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
arm                  randconfig-r046-20230119
arc                  randconfig-r043-20230119
i386                             allyesconfig
i386                                defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
x86_64                           rhel-8.3-syz
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-kvm
powerpc                           allnoconfig
mips                             allyesconfig
sh                               allmodconfig
powerpc                          allmodconfig
ia64                             allmodconfig
sh                           se7722_defconfig
powerpc                  storcenter_defconfig
x86_64                           rhel-8.3-bpf
sh                          rsk7269_defconfig
powerpc                       maple_defconfig
ia64                                defconfig
sh                        sh7757lcr_defconfig
openrisc                  or1klitex_defconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
riscv                               defconfig
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015

clang tested configs:
x86_64                          rhel-8.3-rust
hexagon              randconfig-r041-20230119
hexagon              randconfig-r045-20230119
riscv                randconfig-r042-20230119
s390                 randconfig-r044-20230119
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
x86_64                        randconfig-k001
arm                           omap1_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
