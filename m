Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A4665B44E5
	for <lists+intel-wired-lan@lfdr.de>; Sat, 10 Sep 2022 09:33:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 70C408429D;
	Sat, 10 Sep 2022 07:33:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 70C408429D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1662795183;
	bh=chE1Ap2QDfIUjCaGqBaRaPvRhDx0Ed5silPQUiAocXo=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=d8d8T4KPQkbOgDhe7flzI1vjS2HAplrXv+qqvyXxpVF7f72Px+d6uKU/H1wfW7/e8
	 tf2U+rRu9qdCV5vT8vVD9IY9OvvhzLqT8myMdkuHJKDgQ2/pkh4+UhaPx0bOKMCEE6
	 0UPzjysgUm8hJt1asYKAc2MReFcju0Wy5CJFdSFWRCMHyoyxJR8MIlV7zkdYEwsAtF
	 ynP26fd7ddkhqWCx8G6kkeOAtLTXyRrxJ0lhWLOqVgyodbnIlSdtnozN8QUFX721Xz
	 OlId/XevRa23OzFreNoOvCl7X05C4himDyOpuqsZzbSKtH9dG1gGitsCD3wsD/8Np2
	 BLJ10f7LUFLyw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id daQqmT6AAUHu; Sat, 10 Sep 2022 07:33:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2633C84288;
	Sat, 10 Sep 2022 07:33:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2633C84288
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B4AAA1BF47A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Sep 2022 07:32:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 938DA41DD2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Sep 2022 07:32:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 938DA41DD2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mJkUTH9SvFrI for <intel-wired-lan@lists.osuosl.org>;
 Sat, 10 Sep 2022 07:32:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3BA4141DD1
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3BA4141DD1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Sep 2022 07:32:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10465"; a="359345502"
X-IronPort-AV: E=Sophos;i="5.93,305,1654585200"; d="scan'208";a="359345502"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2022 00:32:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,305,1654585200"; d="scan'208";a="944038788"
Received: from lkp-server02.sh.intel.com (HELO b2938d2e5c5a) ([10.239.97.151])
 by fmsmga005.fm.intel.com with ESMTP; 10 Sep 2022 00:32:45 -0700
Received: from kbuild by b2938d2e5c5a with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oWuyq-0002Gh-1K;
 Sat, 10 Sep 2022 07:32:44 +0000
Date: Sat, 10 Sep 2022 15:32:38 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <631c3d96.PqPgsXtyxqSvxDVv%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662795175; x=1694331175;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=Mt/B+bTMZabicAWUxHYq24iuxFRbka8ZNg9sKoEc6X8=;
 b=LwCQK/KUhi7Hg0I62RAErtDZZGEg6Ni3wVOmjFZ26U814hVrJckN1d0/
 v2buNQXDOliRkKu6CRW0vjwFtO43zqSC+UJeZHr6/bTQp0OdDWI+yCikf
 rvRGP2VdROtVa8maTTvhkmbZUACzNfhVcDj8RxlnwX/+GJTNeU1YSt+3M
 M/vRkkMxchHrzwaM6JsS6T1905xnZJshKhCFMtZ6QFxp+e+cHKSENkez2
 RI07ERUVbxTmj5fdwsbC/9lCyn6nZ3ooO2Xzr+3u3PXrEDlZHnM0fVl/0
 7n7tt6p6s5N6VK528kwWrU773U6/SgOt3/3Z3JkhX2jxc/P2i7lFzsUQi
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LwCQK/KU
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 5a1793d3ed4fb523b8c781b9c99d91f05432e715
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
branch HEAD: 5a1793d3ed4fb523b8c781b9c99d91f05432e715  i40e: Fix ethtool rx-flow-hash setting for X722

elapsed time: 902m

configs tested: 132
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allmodconfig
m68k                             allyesconfig
powerpc                           allnoconfig
sh                               allmodconfig
mips                             allyesconfig
powerpc                          allmodconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
arc                  randconfig-r043-20220908
riscv                randconfig-r042-20220908
arc                  randconfig-r043-20220907
s390                 randconfig-r044-20220908
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
i386                                defconfig
x86_64                           rhel-8.3-kvm
x86_64                          rhel-8.3-func
i386                             allyesconfig
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-syz
x86_64                        randconfig-a002
i386                          randconfig-a012
i386                          randconfig-a016
x86_64                        randconfig-a004
i386                          randconfig-a014
x86_64                        randconfig-a006
x86_64                        randconfig-a015
x86_64                        randconfig-a013
x86_64                        randconfig-a011
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
m68k                        m5407c3_defconfig
nios2                         3c120_defconfig
mips                      fuloong2e_defconfig
i386                          randconfig-c001
riscv                               defconfig
nios2                         10m50_defconfig
arm                            zeus_defconfig
powerpc                 mpc837x_rdb_defconfig
loongarch                           defconfig
arc                              alldefconfig
sh                              ul2_defconfig
arm                           sunxi_defconfig
arm                          exynos_defconfig
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
loongarch                         allnoconfig
sh                   secureedge5410_defconfig
arm                         lubbock_defconfig
sh                          rsk7264_defconfig
powerpc                      ppc40x_defconfig
arm                         axm55xx_defconfig
mips                         db1xxx_defconfig
parisc                              defconfig
sh                     sh7710voipgw_defconfig
arm                        keystone_defconfig
x86_64                           alldefconfig
xtensa                    xip_kc705_defconfig
mips                    maltaup_xpa_defconfig
arm                          badge4_defconfig
mips                      maltasmvp_defconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
mips                     decstation_defconfig
sh                         ecovec24_defconfig
sh                           se7712_defconfig
arm                        clps711x_defconfig
sh                             shx3_defconfig
riscv                            allmodconfig
sh                           se7750_defconfig
sh                          sdk7786_defconfig
arm                           h3600_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
sh                             espt_defconfig
riscv             nommu_k210_sdcard_defconfig
arm                            mps2_defconfig
sh                        sh7763rdp_defconfig
xtensa                           allyesconfig
powerpc                     tqm8541_defconfig
powerpc                       holly_defconfig
s390                       zfcpdump_defconfig
mips                        bcm47xx_defconfig
arm                            pleb_defconfig
mips                      loongson3_defconfig
powerpc                  iss476-smp_defconfig
powerpc                       eiger_defconfig
openrisc                  or1klitex_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220907
sparc                               defconfig
csky                                defconfig
sparc                            allyesconfig
x86_64                                  kexec
ia64                             allmodconfig

clang tested configs:
s390                 randconfig-r044-20220907
hexagon              randconfig-r041-20220907
hexagon              randconfig-r041-20220908
riscv                randconfig-r042-20220907
hexagon              randconfig-r045-20220908
hexagon              randconfig-r045-20220907
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
i386                          randconfig-a013
x86_64                        randconfig-a001
i386                          randconfig-a011
x86_64                        randconfig-a003
i386                          randconfig-a015
x86_64                        randconfig-a005
riscv                randconfig-r042-20220909
hexagon              randconfig-r041-20220909
hexagon              randconfig-r045-20220909
s390                 randconfig-r044-20220909
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-k001
x86_64                        randconfig-a016

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
