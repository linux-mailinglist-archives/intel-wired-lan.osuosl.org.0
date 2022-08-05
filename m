Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 607BC58A5CB
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Aug 2022 08:06:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 64951408E0;
	Fri,  5 Aug 2022 06:06:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 64951408E0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659679579;
	bh=S6EUDxMo2f5UgsLdBAjNkCLZEsOnqCCzyX+73wHxAtQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=kCiTxvILUPpDd7hLV7oJA1Tr1GdAocEOWLy4dXOdwSezdF1bB77QYvKn3KBEY9B/M
	 NmrCmy/9rJ/ozwDWPOuLCuOH9XSmHT3CCiDKqEH9fbhguwTpRt+rIrHWPHtMjoeWeM
	 +0Ex8MzhhHOCeBhquz8fuv0lGqESvvz2NqOqdfoT7Wmkv2QiKM+lemRpZOy6Yivo6s
	 Rlv6HMCYEP74dx6W8QXMWEtH8wHvi/3gtYslAWK+70P3Eq7mzuWjNzElaY8IBUpsrv
	 YJ1Pyw2kgavIJG2D126OsVnEOxYAZYr66RYqJRyCJCnyr3a8+QyXQN8GwxM8fnaYul
	 vvysrWWewaX+g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ysu9bRLsa0UL; Fri,  5 Aug 2022 06:06:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5AFC540134;
	Fri,  5 Aug 2022 06:06:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5AFC540134
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E49FE1BF418
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Aug 2022 06:06:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BE6B06F932
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Aug 2022 06:06:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BE6B06F932
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NzOQBsNep5JT for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Aug 2022 06:06:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D8C576F92A
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D8C576F92A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Aug 2022 06:06:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10429"; a="351842590"
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="351842590"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2022 23:06:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="603495623"
Received: from lkp-server01.sh.intel.com (HELO e0eace57cfef) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 04 Aug 2022 23:06:11 -0700
Received: from kbuild by e0eace57cfef with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oJqTK-000JAN-2V;
 Fri, 05 Aug 2022 06:06:10 +0000
Date: Fri, 05 Aug 2022 14:05:29 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62ecb329.SbFfFOMfvNZHxXtG%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659679572; x=1691215572;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=RohUHnsm2PmOUNzV+LBe/2M243kO5aYBSSYMsgC6B48=;
 b=S29GRgFNASrhhKJRhD8RVhphAqqYyWl6sofGiSoAQlhYF6BguFpXYBLA
 LTB0JbI4msoVbtcK45lp81VovyiplKspwYjL8z6Br6ehcwUEnciLytxEL
 2q4/UhMbalEQkJZKrru9RZhNEcURQkPNnsOJLLJ+Sc5ioixIh3zBF1uJW
 pRzjbQ+qe/VlI/fLBn0YIfkhaD3Hv/XixLs8u2tIRcxQyidTvLi2K9ioU
 12rHU/GYd3FD+0jNYN227BcMEr3v35c/5KETVZPA0tjnDRVKJ8w5ZLFX7
 GEG1P5T4XQhQz7SjkEwpn/UuK6MJAY2xMbjSHJq9LXnpV5kXwCCmPNKM3
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=S29GRgFN
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 a63990f4edb49a08946422ba6725b86ecbba9482
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
branch HEAD: a63990f4edb49a08946422ba6725b86ecbba9482  i40e: Fix to stop tx_timeout recovery if GLOBR fails

elapsed time: 720m

configs tested: 66
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
i386                                defconfig
i386                             allyesconfig
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                           rhel-8.3-syz
x86_64                           rhel-8.3-kvm
powerpc                          allmodconfig
mips                             allyesconfig
powerpc                           allnoconfig
arc                  randconfig-r043-20220804
x86_64                               rhel-8.3
arm                                 defconfig
sh                               allmodconfig
i386                          randconfig-a001
m68k                             allmodconfig
x86_64                        randconfig-a002
x86_64                        randconfig-a015
x86_64                           allyesconfig
arc                              allyesconfig
i386                          randconfig-a003
alpha                            allyesconfig
x86_64                        randconfig-a006
i386                          randconfig-a005
x86_64                        randconfig-a013
i386                          randconfig-a014
x86_64                        randconfig-a011
i386                          randconfig-a012
i386                          randconfig-a016
m68k                             allyesconfig
x86_64                        randconfig-a004
arm                              allyesconfig
arm64                            allyesconfig
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
m68k                         amcore_defconfig
sh                             shx3_defconfig
parisc                generic-64bit_defconfig
i386                          randconfig-c001
loongarch                           defconfig
loongarch                         allnoconfig

clang tested configs:
hexagon              randconfig-r045-20220804
riscv                randconfig-r042-20220804
hexagon              randconfig-r041-20220804
s390                 randconfig-r044-20220804
x86_64                        randconfig-a014
x86_64                        randconfig-a005
x86_64                        randconfig-a001
i386                          randconfig-a002
x86_64                        randconfig-a003
i386                          randconfig-a004
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a006
x86_64                        randconfig-a012
i386                          randconfig-a013
i386                          randconfig-a015
x86_64                        randconfig-k001
arm                        mvebu_v5_defconfig
mips                        bcm63xx_defconfig
arm                              alldefconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
