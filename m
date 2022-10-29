Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A1BEA6121F9
	for <lists+intel-wired-lan@lfdr.de>; Sat, 29 Oct 2022 11:45:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9322F409D0;
	Sat, 29 Oct 2022 09:45:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9322F409D0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667036740;
	bh=uVzrELW0DhWRYEUExQODeWMDGOP/aZiAFEogWFKH21g=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ty+U8t2PekEln89ubodR5s2rtLwI/PDGjaBbwEOoDOr8H5y6V5NwM1iH5rgdtila3
	 kwfXQap5PQO7d/dpmIWYNgtegtAFtIXW2/RsmUUxm5aAWHEvOk1uZB125FJ0BgwBjp
	 U+4ReL7soQJODy5/XNv1nYA11FMfp+yTkkbQRIzd82wfDArhatVbW8Rm23fQ9GAu08
	 IXRPzwRC4mJQfRxRJ2PsIGDR4vDmOANfzQ8JiqOrMtgr+zGpQ8RxARKEAczZxps0gT
	 o13WP53/U3LOiVCMj0yM2N+3ech1XHMLyA2f+HQJfZx23Yj/BOZwNZ1qdaZQrrUXzV
	 gdOU1wJg3H9ew==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wBgbzZfaghcw; Sat, 29 Oct 2022 09:45:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1431440984;
	Sat, 29 Oct 2022 09:45:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1431440984
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AC3711BF319
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 Oct 2022 09:45:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 82ED981462
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 Oct 2022 09:45:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 82ED981462
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FGOBbP3B1FZ4 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 29 Oct 2022 09:45:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0C42D81446
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0C42D81446
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 Oct 2022 09:45:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10514"; a="394969051"
X-IronPort-AV: E=Sophos;i="5.95,223,1661842800"; d="scan'208";a="394969051"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2022 02:45:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10514"; a="702011801"
X-IronPort-AV: E=Sophos;i="5.95,223,1661842800"; d="scan'208";a="702011801"
Received: from lkp-server02.sh.intel.com (HELO b6d29c1a0365) ([10.239.97.151])
 by fmsmga004.fm.intel.com with ESMTP; 29 Oct 2022 02:45:21 -0700
Received: from kbuild by b6d29c1a0365 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ooiP3-000At9-10;
 Sat, 29 Oct 2022 09:45:21 +0000
Date: Sat, 29 Oct 2022 17:45:14 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <635cf62a.3WYlZAoiJE6zB/KJ%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667036732; x=1698572732;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=v01UbI89HxycEXGKlPtWvTH3g0MMqffOdYb5HvEdKq0=;
 b=mq0v7e7QtsFnJ5ttaaPJ79kW2QS8KC0xMM7YWxoyx7mNT5EIHfhXklM6
 b5ovoWfIHca+azaRlkALwrpgRPxq/TsdtCwxVi7unVkA8owS72CfftT8H
 oeAVMsCwC2ID2e3F2Srt6fIVxaAHefV/QAJ5rixGpkbs7hxeT/0nlprSp
 MBAhKTKvXz/5UoHcCdUgJOjE7/GvssvICzeRKE82XtEeNUOn57/V4ALoq
 G3jiqbmezWvZrUru2Q3g+DmgnrxR5fNyq9XCNZnGRMyLXQ3JIhi9a/35y
 Tvyt1QBzce3zdKT1wokX6k+4HxBl39XJz0mNKOFbPmE34Pew1kiNN3+HN
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mq0v7e7Q
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 6eb29c682b368d9a0a4c8fec0667eb11b3293da4
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
branch HEAD: 6eb29c682b368d9a0a4c8fec0667eb11b3293da4  e1000e: Fix TX dispatch condition

elapsed time: 1115m

configs tested: 96
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
i386                                defconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
powerpc                           allnoconfig
m68k                             allyesconfig
powerpc                          allmodconfig
mips                             allyesconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
x86_64                           allyesconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
sh                               allmodconfig
x86_64                        randconfig-a004
x86_64                           rhel-8.3-kvm
x86_64                        randconfig-a002
arc                  randconfig-r043-20221029
ia64                             allmodconfig
i386                             allyesconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a013
i386                          randconfig-a014
x86_64                        randconfig-a011
i386                          randconfig-a012
x86_64                        randconfig-a015
i386                          randconfig-a016
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
arc                                 defconfig
alpha                               defconfig
s390                                defconfig
s390                             allmodconfig
s390                             allyesconfig
arc                  randconfig-r043-20221028
s390                 randconfig-r044-20221028
riscv                randconfig-r042-20221028
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-c001
arm                            hisi_defconfig
xtensa                  cadence_csp_defconfig
m68k                           virt_defconfig
powerpc                       holly_defconfig
powerpc                      ep88xc_defconfig
powerpc                       ppc64_defconfig
powerpc                      makalu_defconfig
arm                           u8500_defconfig
arm                         lpc18xx_defconfig
arm                      jornada720_defconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
x86_64                        randconfig-c001
arm                  randconfig-c002-20221029
sh                           se7722_defconfig
arm                        spear6xx_defconfig
xtensa                  nommu_kc705_defconfig
sparc64                          alldefconfig
sparc                            allyesconfig
powerpc                    sam440ep_defconfig
csky                             alldefconfig
m68k                        mvme16x_defconfig
powerpc                 canyonlands_defconfig
loongarch                           defconfig
loongarch                         allnoconfig
loongarch                        allmodconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3

clang tested configs:
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a003
hexagon              randconfig-r041-20221029
riscv                randconfig-r042-20221029
x86_64                        randconfig-a014
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r045-20221029
i386                          randconfig-a011
x86_64                        randconfig-a012
x86_64                        randconfig-a016
s390                 randconfig-r044-20221029
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-k001

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
