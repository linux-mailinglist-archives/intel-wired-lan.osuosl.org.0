Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26C6068643C
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Feb 2023 11:27:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AA8C0408F2;
	Wed,  1 Feb 2023 10:27:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AA8C0408F2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675247250;
	bh=rCEMrszDZ0s7WEP5yqFL0WStAuWXUANNPQvRj5DcSO0=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=TqURURG6UctqoAUGtdR7WFVeUzrqAXIc1+RRWRD5ywp589wMchpg+ano8SCJS9MMg
	 nq3ipp3gZZRl2MPn1swMMzPxZhDCWZ6/6rAxU4WhlTopZ0gZ0PXiqNXvsmBc1dczjr
	 fuTFnGkdX6Xdwroewvccoa6UBMFzpStyye4keStoq1oDol0yH05Bd3Lvg865qgXlgd
	 0vt0dT8GrJIBF1Y7u+h+Gwth8MBM6/NAl9jvt9/LTKg2mXaNvh5g+fQao3uQz6javu
	 otio02SKwuyGFjLstqmVdRcdDCK3y5lGes84mHd2eXVTvt5iEryyw0FG/mXebdYE9Z
	 5Jg2DiU3A7Qhw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vTXaqskV5H18; Wed,  1 Feb 2023 10:27:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7DC8C408D8;
	Wed,  1 Feb 2023 10:27:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7DC8C408D8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E6B841BF59C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 10:27:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B9CF781D3A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 10:27:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B9CF781D3A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SmZ7wvBFa18q for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Feb 2023 10:27:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 80B708148B
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 80B708148B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 10:27:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="414315539"
X-IronPort-AV: E=Sophos;i="5.97,263,1669104000"; d="scan'208";a="414315539"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2023 02:27:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="658277299"
X-IronPort-AV: E=Sophos;i="5.97,263,1669104000"; d="scan'208";a="658277299"
Received: from lkp-server01.sh.intel.com (HELO ffa7f14d1d0f) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 01 Feb 2023 02:27:20 -0800
Received: from kbuild by ffa7f14d1d0f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pNAKm-0005LT-0q;
 Wed, 01 Feb 2023 10:27:20 +0000
Date: Wed, 01 Feb 2023 18:26:57 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63da3e71.qg7OGh2eCnf9Lin4%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675247242; x=1706783242;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=sk3oJFtJkX0mxEEjfDrryWPZHQHGkQjOoCNAZSnUEG4=;
 b=MSVMAwl5i0/0E3WkRuG6BjtTM/CaMP/4SpaPsW/2LzJzipnT9aPiuAJs
 ZmNJTTCf581QeFUY3l/VPWTrJdbxfQtkruSjV3/PhpQPm5dUcAFoCVp+y
 qUODl9cpbyL/ymJ8Q0H6EoH8Rszk/cbGYX6yHQMa/nhr0P8obReJxmrgw
 /U3iysrvuKpjZkumofqheH44Bj5iJnR5v5+DRERoxFz0CB7biItGyit2W
 f+q69yLJ5IxDMrnEhIH3lOtFXi4eS2h1yZ25r3vL7arjMvCxJbcigs6qW
 fWRXTy9a5EBGSDtxxXX959b1HRaTFEFdMLLXBPRlLPTARkFoNhdtbcs8z
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MSVMAwl5
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 416fbc944738c5670fc9a4fe27b027ff412215a3
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
branch HEAD: 416fbc944738c5670fc9a4fe27b027ff412215a3  ice: Fix DSCP PFC TLV creation

elapsed time: 724m

configs tested: 78
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
m68k                             allmodconfig
m68k                             allyesconfig
um                           x86_64_defconfig
arc                              allyesconfig
um                             i386_defconfig
alpha                            allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
x86_64               randconfig-a001-20230130
x86_64               randconfig-a003-20230130
x86_64               randconfig-a004-20230130
x86_64                              defconfig
x86_64               randconfig-a002-20230130
ia64                             allmodconfig
x86_64               randconfig-a006-20230130
x86_64               randconfig-a005-20230130
x86_64                               rhel-8.3
powerpc                           allnoconfig
x86_64                           allyesconfig
sh                               allmodconfig
mips                             allyesconfig
powerpc                          allmodconfig
i386                 randconfig-a001-20230130
i386                 randconfig-a004-20230130
i386                 randconfig-a003-20230130
i386                 randconfig-a002-20230130
i386                 randconfig-a005-20230130
i386                 randconfig-a006-20230130
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-bpf
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
arc                  randconfig-r043-20230129
arm                  randconfig-r046-20230129
arm                  randconfig-r046-20230130
arc                  randconfig-r043-20230130
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
i386                                defconfig
i386                             allyesconfig
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
i386                          randconfig-c001
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3

clang tested configs:
x86_64                          rhel-8.3-rust
hexagon              randconfig-r041-20230129
hexagon              randconfig-r045-20230130
hexagon              randconfig-r041-20230130
hexagon              randconfig-r045-20230129
riscv                randconfig-r042-20230129
riscv                randconfig-r042-20230130
s390                 randconfig-r044-20230129
s390                 randconfig-r044-20230130
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
x86_64               randconfig-a014-20230130
x86_64               randconfig-a012-20230130
x86_64               randconfig-a013-20230130
x86_64               randconfig-a011-20230130
x86_64               randconfig-a015-20230130
x86_64               randconfig-a016-20230130
x86_64                        randconfig-k001
arm                       spear13xx_defconfig
powerpc                     kilauea_defconfig

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
