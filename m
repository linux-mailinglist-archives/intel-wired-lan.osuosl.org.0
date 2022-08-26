Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 891945A2407
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Aug 2022 11:18:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 15282419AE;
	Fri, 26 Aug 2022 09:18:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 15282419AE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661505517;
	bh=ht6H6EDBzP7J5BMNaZXmcjAwBQteBRrBQ7/zAFOPgxE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=DMDTonlLl4m7A9qIySpzhUbUmkI1c6WIIr8JhTkdjbleZPrRv90paYSyL8zWLSuiV
	 OwbyeCMZHJxOUKH9LgPaux3GpqbBfFUh6SJ50o1IuxEUR9q5l1AGgeRs/cA+bFHkEz
	 PezxTJ1cT4B8fcTrz2BuoLKvUWM5qdxnmNDMN6E0k5euUVgK0Yj8R2wOLalOk2ITI9
	 0ilbIImX/61eU1Ll1ZDzP+LSBjr2CszV9Zfwpk22ebfvnP5YDVtb+JyryTf6nEQgZ+
	 JJXDVTTGJ6LU6AJQ6mBCbPoCzPpzMG2lvZvPpVbptbzT+9gnH8sGdCx7TDMpxr02km
	 ly+rkVKTMHFZw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kPKMUyCH4JwX; Fri, 26 Aug 2022 09:18:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 79D5A417E1;
	Fri, 26 Aug 2022 09:18:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 79D5A417E1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BD5EB1BF2C4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Aug 2022 09:18:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A599883EE5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Aug 2022 09:18:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A599883EE5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PCRKg8HjeT2k for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Aug 2022 09:18:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C519083ED1
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C519083ED1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Aug 2022 09:18:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10450"; a="274860083"
X-IronPort-AV: E=Sophos;i="5.93,264,1654585200"; d="scan'208";a="274860083"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2022 02:18:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,264,1654585200"; d="scan'208";a="561378368"
Received: from lkp-server02.sh.intel.com (HELO 34e741d32628) ([10.239.97.151])
 by orsmga003.jf.intel.com with ESMTP; 26 Aug 2022 02:18:18 -0700
Received: from kbuild by 34e741d32628 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oRVTl-0003pC-2J;
 Fri, 26 Aug 2022 09:18:17 +0000
Date: Fri, 26 Aug 2022 17:17:25 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63088fa5.KB1lrxVhNlBiV95g%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661505500; x=1693041500;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=A5b/4hwfbAJzSNNsetHTxchNpsLPrvl+7a0vM1t64AM=;
 b=W2VVPBwtBleawUcZ2ECHsRIZWgAE+X1S35cTMRTguaKB51P1tbkd6Iim
 NzQCgbCgxtcZXw257Ca/Pl7bPyk2foCchPU5banj6DeoKtkPo/w8xY9iJ
 6EmQ9mOecByHElEMaxZPxZhVwyjyus0ENJVqVgfIXWPfaM/bXzIRsjIDe
 qhEYFtQhj6N2yUL4fJB3wTvXDCnBNuBpWPC/SHG437errELnExnbE+gMj
 7WWejFJ4a4Z5OjGZvGKYkOjbmYkpreBKh6zw1MCja9Xscz54W5nBPZ/OK
 s/Cla8kfpfIK6TjwOcAuz9pyX4tFNkYvi1I7WXc9w4f3j4DTECejSW2ay
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=W2VVPBwt
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 a6a1aa94d873867993f31b35b27ced8b9fbf69ff
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: a6a1aa94d873867993f31b35b27ced8b9fbf69ff  ice: add helper function to check FW API version

elapsed time: 724m

configs tested: 65
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
loongarch                         allnoconfig
loongarch                           defconfig
um                             i386_defconfig
um                           x86_64_defconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
mips                             allyesconfig
x86_64                              defconfig
x86_64                           allyesconfig
sh                               allmodconfig
x86_64                               rhel-8.3
x86_64                        randconfig-a004
x86_64                        randconfig-a002
arc                  randconfig-r043-20220824
riscv                randconfig-r042-20220824
x86_64                        randconfig-a006
s390                 randconfig-r044-20220824
m68k                             allmodconfig
alpha                            allyesconfig
arc                  randconfig-r043-20220825
arc                                 defconfig
arc                              allyesconfig
s390                             allmodconfig
alpha                               defconfig
m68k                             allyesconfig
i386                          randconfig-a001
i386                          randconfig-a003
s390                                defconfig
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
s390                             allyesconfig
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests
i386                                defconfig
x86_64                           rhel-8.3-syz
x86_64                           rhel-8.3-kvm
x86_64                        randconfig-a015
x86_64                        randconfig-a013
x86_64                        randconfig-a011
i386                          randconfig-a005
i386                             allyesconfig
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
ia64                             allmodconfig

clang tested configs:
hexagon              randconfig-r041-20220825
x86_64                        randconfig-a005
x86_64                        randconfig-a001
hexagon              randconfig-r045-20220825
x86_64                        randconfig-a003
hexagon              randconfig-r041-20220824
hexagon              randconfig-r045-20220824
riscv                randconfig-r042-20220825
s390                 randconfig-r044-20220825
i386                          randconfig-a013
i386                          randconfig-a002
i386                          randconfig-a011
i386                          randconfig-a015
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a006

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
