Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E52A35BE433
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Sep 2022 13:14:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 45FC8405D7;
	Tue, 20 Sep 2022 11:14:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 45FC8405D7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663672495;
	bh=Ec4QgubPi0eyKlVVYwCVpbAemoD+QNjRWz8JelVDZPQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ZHHWjwbnOOJspDI140O26e8ICx+bp6p0VR4UvHKDZeY+fsngx0mdBNCTmnh1a+6e/
	 qfDISwm7WKBCwjSx0pWg9zevRhTqG6donY9edkCDgJ3IXVqeldx6N83Npkrym0a/MV
	 hSPqKiJa04Z0o/XhvIOTjwuEAeZWbJ1RoiJF+9T3DA8ud+uccSkIxuqM3NBF+zqiCs
	 hKv7jHmUJheAtE12wlGqvExaDkoaV3RjpkdoZ0DM8+S1Hg+EZ1BsOSLPqR2n4gM2PT
	 ZcFvcdl/Pu/PpBLl8aTLxp/JoxTeSwCMNGYAKZ+P28woPEAViW5MWuJr1NtG6tSlVp
	 F6EWrCn3lMAnQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HBJ0GcG47NhK; Tue, 20 Sep 2022 11:14:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2407840614;
	Tue, 20 Sep 2022 11:14:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2407840614
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C7B231BF865
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Sep 2022 11:14:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A201060E11
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Sep 2022 11:14:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A201060E11
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KcPrhXH2eaZR for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Sep 2022 11:14:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4331B606FF
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4331B606FF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Sep 2022 11:14:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10475"; a="299655095"
X-IronPort-AV: E=Sophos;i="5.93,330,1654585200"; d="scan'208";a="299655095"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2022 04:14:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,330,1654585200"; d="scan'208";a="649545621"
Received: from lkp-server01.sh.intel.com (HELO c0a60f19fe7e) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 20 Sep 2022 04:14:36 -0700
Received: from kbuild by c0a60f19fe7e with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oabD1-0002iP-39;
 Tue, 20 Sep 2022 11:14:35 +0000
Date: Tue, 20 Sep 2022 19:14:14 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6329a086.uu0LdMRUfSilKqHD%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663672488; x=1695208488;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=kOAHCxKRUGtvNpzjfX1UcZZn1TaMeD41XlSh+Sk9pSU=;
 b=hQ8+tJRVVmmigHgoXDbGTtepPo/+2N/WWmHRjb3xGBBMSJTYx79wznY3
 n0qk2W0Nd95SAnlBSkabn9KL9ZlqpsE/YrnwJLxhl0vjpJR85YQIm0q4j
 3/691o3eOOVFMk6ltyM2a1meFGFPDWMysXpRv1WaSy+4CY/gEl6BrBo61
 imN4ldecV8xx/e8dtxyBzPMsMGxUZwptIjt6LWvQ9e9aKp41Qb/qro8w7
 UMiazG8jv7xI/DqaNoTcKRxrNgDsA6FYFiyEgiVW2yeHzVKWasxtHKfJq
 hmWPxBUSeXEIXcuAeBlNxGiP5aUT1NE8iz+cMvAxgxx6djr0p5xX6R/dS
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hQ8+tJRV
Subject: [Intel-wired-lan] [tnguy-net-queue:40GbE] BUILD SUCCESS
 198eb7e1b81d8ba676d0f4f120c092032ae69a8e
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 40GbE
branch HEAD: 198eb7e1b81d8ba676d0f4f120c092032ae69a8e  i40e: Fix set max_tx_rate when it is lower than 1 Mbps

elapsed time: 726m

configs tested: 84
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                           x86_64_defconfig
um                             i386_defconfig
arc                                 defconfig
s390                             allmodconfig
x86_64                              defconfig
powerpc                           allnoconfig
i386                 randconfig-a013-20220919
powerpc                          allmodconfig
alpha                               defconfig
x86_64                           allyesconfig
i386                 randconfig-a012-20220919
s390                             allyesconfig
x86_64                               rhel-8.3
sh                               allmodconfig
arc                              allyesconfig
mips                             allyesconfig
s390                                defconfig
i386                 randconfig-a014-20220919
alpha                            allyesconfig
i386                                defconfig
i386                 randconfig-a011-20220919
riscv                randconfig-r042-20220919
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
i386                 randconfig-a016-20220919
m68k                             allyesconfig
arc                  randconfig-r043-20220919
m68k                             allmodconfig
i386                 randconfig-a015-20220919
x86_64                           rhel-8.3-kvm
s390                 randconfig-r044-20220919
arm                                 defconfig
x86_64               randconfig-a012-20220919
ia64                             allmodconfig
x86_64                    rhel-8.3-kselftests
x86_64               randconfig-a011-20220919
x86_64                           rhel-8.3-syz
x86_64               randconfig-a014-20220919
x86_64               randconfig-a015-20220919
x86_64               randconfig-a013-20220919
i386                             allyesconfig
x86_64               randconfig-a016-20220919
arm                              allyesconfig
arm64                            allyesconfig
i386                             alldefconfig
arm                         s3c6400_defconfig
arm                         lpc18xx_defconfig
sh                          r7785rp_defconfig
powerpc                      chrp32_defconfig
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
sh                             shx3_defconfig
powerpc                       holly_defconfig
x86_64               randconfig-k001-20220919
sh                          sdk7786_defconfig
powerpc                   motionpro_defconfig
i386                 randconfig-c001-20220919
loongarch                           defconfig
loongarch                         allnoconfig
loongarch                        allmodconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3

clang tested configs:
hexagon              randconfig-r045-20220919
i386                 randconfig-a001-20220919
i386                 randconfig-a002-20220919
x86_64               randconfig-a003-20220919
i386                 randconfig-a003-20220919
x86_64               randconfig-a001-20220919
x86_64               randconfig-a002-20220919
hexagon              randconfig-r041-20220919
x86_64               randconfig-a004-20220919
x86_64               randconfig-a006-20220919
i386                 randconfig-a004-20220919
x86_64               randconfig-a005-20220919
i386                 randconfig-a005-20220919
i386                 randconfig-a006-20220919
powerpc                          g5_defconfig
mips                        qi_lb60_defconfig
arm                         palmz72_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
