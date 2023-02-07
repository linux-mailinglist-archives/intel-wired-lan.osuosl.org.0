Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3991D68D761
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Feb 2023 13:59:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BA6594061D;
	Tue,  7 Feb 2023 12:59:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BA6594061D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675774752;
	bh=aJ03o70r1BLtDPydDNfu5hfvPX2/ghBYOiM3CFTEDoM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ko58YlBCJ7Zs5DCZDhhSIs9UjiKdIG4s6cwkAbQfkq1mt+6ThBStDzbG+V9brqugJ
	 HMl488+e+bbH02dNXJ2qFT6+CI174DWLkI2bIEP8jyzQC2mjm6SqYpwHVER8WKOKxp
	 ENF7UqeNX3lWKgzmoOQQt5iKaIUnnv4CGVwAh8cOFSFqP4UbFa+BI8PX5NdD9djus3
	 4PbUvKiRkMkCppVljsVzPiIvwJsdZxkEzAFsu62yNdHCNsffunENyta80AgfVcLAe9
	 Vqwz8swUO9pUVbzKf1WXEoCz1WEQWpHk/E+VXgv35BkYP9sjEO4rG6dLnNiUl6a4VA
	 csHmNvIAKhI/g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7atpo6f-qRKe; Tue,  7 Feb 2023 12:59:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 91EE440232;
	Tue,  7 Feb 2023 12:59:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 91EE440232
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8BAAD1BF27A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Feb 2023 12:59:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 640F760AC2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Feb 2023 12:59:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 640F760AC2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gPcxVdgoCQ8k for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Feb 2023 12:59:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3DB9460586
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3DB9460586
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Feb 2023 12:59:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="317515071"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="317515071"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 04:59:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="616801396"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="616801396"
Received: from lkp-server01.sh.intel.com (HELO 4455601a8d94) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 07 Feb 2023 04:59:02 -0800
Received: from kbuild by 4455601a8d94 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pPNYr-0003Ye-27;
 Tue, 07 Feb 2023 12:59:01 +0000
Date: Tue, 07 Feb 2023 20:58:04 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63e24adc.CrYgz1oorOA3TV12%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675774744; x=1707310744;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=vvluOacV1ZbDS6vSwV35O8AxPNe+1aKWlc7P99JE4OY=;
 b=VRtjJh6hHDAD4aoGAzUl3iP08fuwOUi/dvIb0uMAMzzdsfNm8wmb53nm
 4AJdz0/uQJQ8XOnGk+VP5BOW2pWr/Ot/qO5YX38IwwlIeT3ilECNWJlBn
 ShKZZTfH6EJ5Fv9jtnrzy37YRlZeNopjF+hIO0zk95iCArXSwC8trCa5y
 muqLzgwcXc0IiU9BGuGhRC6ayTrfXxDmO0xGYSXky+jhgfMkfFOgkZbcv
 tufpDdSqhE0XnVOx/8jKyQ8Y/PajUuMYLYZ1jK8zK8u1sesIq9IO0uSzo
 RYmLeQ0/qqiImRSVXkoxR+dzFTszuVdPa925AyB9d+fFFK9k4AerZOKW6
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VRtjJh6h
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 f0bf8bc5b200eafc5c911fcdd98058ad3bf53416
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
branch HEAD: f0bf8bc5b200eafc5c911fcdd98058ad3bf53416  ice: fix lost multicast packets in promisc mode

elapsed time: 720m

configs tested: 99
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
powerpc                           allnoconfig
sh                               allmodconfig
x86_64                              defconfig
mips                             allyesconfig
powerpc                          allmodconfig
arc                  randconfig-r043-20230205
arm                  randconfig-r046-20230205
x86_64                               rhel-8.3
arc                  randconfig-r043-20230206
arm                                 defconfig
ia64                             allmodconfig
riscv                randconfig-r042-20230206
s390                 randconfig-r044-20230206
i386                          randconfig-a014
i386                          randconfig-a012
x86_64                           allyesconfig
i386                          randconfig-a016
arm64                            allyesconfig
x86_64               randconfig-a014-20230206
x86_64                           rhel-8.3-bpf
arm                              allyesconfig
x86_64               randconfig-a013-20230206
x86_64               randconfig-a011-20230206
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64               randconfig-a012-20230206
x86_64                           rhel-8.3-kvm
x86_64               randconfig-a015-20230206
x86_64               randconfig-a016-20230206
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                                defconfig
i386                             allyesconfig
arc                                 defconfig
s390                             allmodconfig
um                             i386_defconfig
alpha                               defconfig
um                           x86_64_defconfig
s390                                defconfig
s390                             allyesconfig
alpha                            allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
powerpc                     rainier_defconfig
powerpc                       maple_defconfig
sh                          urquell_defconfig
sh                        sh7785lcr_defconfig
i386                          randconfig-c001
powerpc              randconfig-c003-20230205
sh                ecovec24-romimage_defconfig
powerpc                     tqm8555_defconfig
i386                 randconfig-a015-20230206
i386                 randconfig-a011-20230206
i386                 randconfig-a014-20230206
i386                 randconfig-a013-20230206
i386                 randconfig-a016-20230206
i386                 randconfig-a012-20230206

clang tested configs:
hexagon              randconfig-r041-20230205
riscv                randconfig-r042-20230205
hexagon              randconfig-r045-20230206
hexagon              randconfig-r041-20230206
i386                 randconfig-a002-20230206
i386                 randconfig-a004-20230206
arm                  randconfig-r046-20230206
s390                 randconfig-r044-20230205
i386                 randconfig-a003-20230206
hexagon              randconfig-r045-20230205
i386                 randconfig-a001-20230206
i386                          randconfig-a013
i386                 randconfig-a006-20230206
i386                          randconfig-a011
i386                 randconfig-a005-20230206
i386                          randconfig-a015
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                          rhel-8.3-rust
x86_64               randconfig-a001-20230206
x86_64               randconfig-a006-20230206
x86_64               randconfig-a003-20230206
x86_64               randconfig-a004-20230206
x86_64               randconfig-a002-20230206
x86_64               randconfig-a005-20230206
arm                      pxa255-idp_defconfig
powerpc                 mpc8272_ads_defconfig
arm                         lpc32xx_defconfig
arm                         orion5x_defconfig
powerpc                 mpc8315_rdb_defconfig
riscv                randconfig-r042-20230207
s390                 randconfig-r044-20230207
hexagon              randconfig-r045-20230207
hexagon              randconfig-r041-20230207

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
