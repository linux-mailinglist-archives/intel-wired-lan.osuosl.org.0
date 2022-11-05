Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id ED0E161D8ED
	for <lists+intel-wired-lan@lfdr.de>; Sat,  5 Nov 2022 09:53:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AD21F41A52;
	Sat,  5 Nov 2022 08:53:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AD21F41A52
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667638411;
	bh=gfr8oVibr2zyHG41nLnvzVZ93t+cic9SAFsVYwHmtOM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=2rIaX/5puTmSoMiWAe3duXXgW+WKcXApVuGw/VPQ4CopOq+mzH88F/YW6zmKvyf7g
	 QBACZ3RfiskL1fu1smjOPUrbxrhoTgffuzxvYPsN4xLwvwiV2tbiHzdKNvp9EGZM92
	 HSEEy69Fevfp+Wg4iBvtKza231b6SVgPsKLNTrxAIFjaVm5qjPdLiAIp4wkygn8zY/
	 4htMBn8gOXubi0aZaWFES3ahJG2e7JTyuTePczziVc3qx5zKUV72MW6wuWFIQGdrw7
	 j+pcv6bhHcCV2H3pnkkPGVX6z8bcfhVxIoYzgmAa+HMLgivzA3SqBQTUVX5M8JZ1l7
	 0onGbVei2LxOw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O1tVG5zcj6TN; Sat,  5 Nov 2022 08:53:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6A6D441A40;
	Sat,  5 Nov 2022 08:53:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6A6D441A40
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 991A61BF40A
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Nov 2022 08:53:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 80A9482195
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Nov 2022 08:53:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 80A9482195
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aZPOKbRmZGV5 for <intel-wired-lan@lists.osuosl.org>;
 Sat,  5 Nov 2022 08:53:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6F0BE82194
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6F0BE82194
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Nov 2022 08:53:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10521"; a="290531320"
X-IronPort-AV: E=Sophos;i="5.96,140,1665471600"; d="scan'208";a="290531320"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2022 01:53:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10521"; a="724605382"
X-IronPort-AV: E=Sophos;i="5.96,140,1665471600"; d="scan'208";a="724605382"
Received: from lkp-server02.sh.intel.com (HELO b6d29c1a0365) ([10.239.97.151])
 by FMSMGA003.fm.intel.com with ESMTP; 05 Nov 2022 01:53:21 -0700
Received: from kbuild by b6d29c1a0365 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1orEvZ-000HpX-0E;
 Sat, 05 Nov 2022 08:53:21 +0000
Date: Sat, 05 Nov 2022 16:53:12 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63662478.Tz7819uWEbYoG6E7%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667638403; x=1699174403;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=urHbd04EhWTRG9v72ZgzGCSVgXgF2mCWZohpLnHM9hw=;
 b=dfJK62WsHk5cEhbdUyaysMJ2JhLDsmd8SQXHr279FmZL3eI76SxenrMe
 K8odlCG3B8XwJFz/D7N/xcezWKz+BDpww29ZN76LHSpGbBCjsB2e3hc3l
 SN1tqmjnPjFoewUi3TcsOjqigzKwXb6gK4gma9CaQHJ4JvRQ0UPw7GX1f
 4zPIv5p5l8v+YRs6sx/p4/4zgVxwxkozciXfEzIm7UimxV9NVja5M1rNn
 oDfgrjH4Oq5DL+L4gX/8w/PQ5ha4RMoalqDPMIZYiuFruobNMY2rXnvAA
 7NZ0vXbQ484MAFPtativiDxAYF4/vnn0lmGGTaJBKDloTjWqemRV/CNC6
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dfJK62Ws
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 e9d696cb44e31184ba3b4b95a4e87442f5198607
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 10GbE
branch HEAD: e9d696cb44e31184ba3b4b95a4e87442f5198607  igb: Proactively round up to kmalloc bucket size

elapsed time: 720m

configs tested: 73
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                           x86_64_defconfig
um                             i386_defconfig
arc                                 defconfig
i386                                defconfig
x86_64                           rhel-8.3-kvm
x86_64                               rhel-8.3
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
alpha                               defconfig
i386                          randconfig-a014
s390                                defconfig
s390                             allmodconfig
i386                          randconfig-a012
i386                          randconfig-a016
x86_64                        randconfig-a004
x86_64                        randconfig-a002
riscv                randconfig-r042-20221104
s390                             allyesconfig
x86_64                              defconfig
arc                  randconfig-r043-20221104
i386                          randconfig-a001
i386                          randconfig-a003
ia64                             allmodconfig
m68k                             allmodconfig
s390                 randconfig-r044-20221104
x86_64                        randconfig-a006
x86_64                          rhel-8.3-func
arc                              allyesconfig
x86_64                    rhel-8.3-kselftests
alpha                            allyesconfig
m68k                             allyesconfig
x86_64                        randconfig-a013
i386                          randconfig-a005
x86_64                        randconfig-a011
arm                                 defconfig
x86_64                           allyesconfig
i386                             allyesconfig
x86_64                        randconfig-a015
arm64                            allyesconfig
arm                              allyesconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
powerpc                     taishan_defconfig
powerpc                      ppc6xx_defconfig
mips                     loongson1b_defconfig
arm                           viper_defconfig
i386                          randconfig-c001
powerpc              randconfig-c003-20221104

clang tested configs:
i386                          randconfig-a013
i386                          randconfig-a015
i386                          randconfig-a011
x86_64                        randconfig-a005
hexagon              randconfig-r041-20221104
x86_64                        randconfig-a001
hexagon              randconfig-r045-20221104
i386                          randconfig-a002
x86_64                        randconfig-a003
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
i386                          randconfig-a006
x86_64                        randconfig-a016
mips                        bcm63xx_defconfig
powerpc                   bluestone_defconfig
mips                        omega2p_defconfig
powerpc                     akebono_defconfig
powerpc                     mpc512x_defconfig
x86_64                        randconfig-k001
arm                        spear3xx_defconfig
mips                           ip28_defconfig
powerpc                 xes_mpc85xx_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
