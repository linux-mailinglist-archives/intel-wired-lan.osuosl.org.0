Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BFCC5584C0E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Jul 2022 08:35:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D247C6104C;
	Fri, 29 Jul 2022 06:35:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D247C6104C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659076538;
	bh=uZFIwxcgBZ6/ehqT2dgKBPYACeNraxIgXGcu6Rn3nSs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=xsBZ074L5BJv3kninvxLSt4VSI0K8Nl69Sc2rYCt2h6ur4AvrWNCEE67wLlYDethY
	 rnAFQY1+PU4sdzlIxIeH2dnqxmfy2fnzOnNd3m7O1s5t0I0ehkAvWkIhpyG3vbCOVQ
	 Sw32x+MlJR6gBxOKhABPkzvIktq5Y+la/jiI3uigPApQVzKl49GJwWRFmlf/eqftKs
	 3yEnsdNSJ07k3/m4wqpcV7e9xB54WWQFX7CWHq/QDUdhJeh/oaCyaWZ6pVQWDA+zMa
	 OiVB5jm9ue8qadJQucbPFitRZfBY7Udj9O77hRtukEJL/mYOglYn97+POEaoAHL84O
	 lNWerlNBfg31g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HoCcLv2Zct7L; Fri, 29 Jul 2022 06:35:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CF63060C0C;
	Fri, 29 Jul 2022 06:35:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CF63060C0C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F03FF1BF3B9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jul 2022 06:35:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C938460C0C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jul 2022 06:35:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C938460C0C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LLV9RivcXReX for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Jul 2022 06:35:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CB07060AF0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CB07060AF0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jul 2022 06:35:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10422"; a="375006698"
X-IronPort-AV: E=Sophos;i="5.93,200,1654585200"; d="scan'208";a="375006698"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2022 23:35:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,200,1654585200"; d="scan'208";a="928632758"
Received: from lkp-server01.sh.intel.com (HELO e0eace57cfef) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 28 Jul 2022 23:35:29 -0700
Received: from kbuild by e0eace57cfef with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oHJar-000BEO-0O;
 Fri, 29 Jul 2022 06:35:29 +0000
Date: Fri, 29 Jul 2022 14:35:16 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62e37fa4.q7ND932EMiu7Zdjk%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659076531; x=1690612531;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=4t7HustAvPR2DKbMVq6UjfD/2YN7sWPqBL03Mi/8w9Q=;
 b=YZIOZDDtf58Efwq1xTEKh9vMVCBUfihqdGhrhR9JpGXywxfECW2RM1Ik
 1aslcwx5x5ufVBSIWmA2IPtTQWlhQp8lNsdfrT/AkSvsNIOU94cXmebWx
 LHUjS1tCCWJYHILc8OBD3ynE2IaTT6jiXTYlZ4tmLwvzU97JK3oQMq+CA
 5K1r06Rwh0SE5BT8SgPbG702FfZB7OGqeY5hb0w0xi9jj3bUxFKLpvEqq
 SpWLaOaCEnLHNp3DLgcMMJCzrXOSDqY9lye18Jr7sWN5P7kjnWYWz8Ijg
 6akWNtxXhF46+Zs92+P4tb2Ae+Wyfn21s3jC/NU8+NsDXnQkURJ6YnRyv
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YZIOZDDt
Subject: [Intel-wired-lan] [tnguy-next-queue:1GbE] BUILD SUCCESS
 d8fae2504efee73958cbbf9c7122f13f95495222
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 1GbE
branch HEAD: d8fae2504efee73958cbbf9c7122f13f95495222  igb: convert .adjfreq to .adjfine

elapsed time: 721m

configs tested: 88
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
i386                                defconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                             allyesconfig
i386                          randconfig-a005
x86_64                        randconfig-a015
x86_64                        randconfig-a013
x86_64                        randconfig-a011
powerpc                           allnoconfig
powerpc                          allmodconfig
mips                             allyesconfig
sh                               allmodconfig
arm                                 defconfig
x86_64                        randconfig-a002
arc                  randconfig-r043-20220728
riscv                randconfig-r042-20220728
x86_64                          rhel-8.3-func
s390                 randconfig-r044-20220728
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-syz
arm64                            allyesconfig
arm                              allyesconfig
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
nios2                               defconfig
sh                     sh7710voipgw_defconfig
m68k                            mac_defconfig
i386                          randconfig-c001
loongarch                           defconfig
loongarch                         allnoconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
s390                       zfcpdump_defconfig
openrisc                         alldefconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
ia64                          tiger_defconfig
microblaze                          defconfig
arm                         axm55xx_defconfig
nios2                         10m50_defconfig
alpha                               defconfig
m68k                        m5407c3_defconfig
powerpc                     taishan_defconfig
sh                         ap325rxa_defconfig
powerpc                      tqm8xx_defconfig
arm                          lpd270_defconfig

clang tested configs:
i386                          randconfig-a002
i386                          randconfig-a004
x86_64                        randconfig-a014
i386                          randconfig-a006
x86_64                        randconfig-a016
x86_64                        randconfig-a012
hexagon              randconfig-r045-20220728
hexagon              randconfig-r041-20220728
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a003
powerpc                      katmai_defconfig
mips                          rm200_defconfig
arm                  colibri_pxa270_defconfig
arm                      pxa255-idp_defconfig
powerpc                  mpc885_ads_defconfig
arm                         hackkit_defconfig
powerpc                      ppc44x_defconfig
powerpc                   microwatt_defconfig
powerpc                      ppc64e_defconfig
arm                  colibri_pxa300_defconfig
arm                        magician_defconfig
x86_64                        randconfig-k001

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
