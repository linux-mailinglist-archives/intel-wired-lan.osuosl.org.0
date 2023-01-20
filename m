Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2301674CAD
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Jan 2023 06:40:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E75204059B;
	Fri, 20 Jan 2023 05:40:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E75204059B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674193250;
	bh=9quEKdoyDksdLsDf4RxSta01a49lYdnTkaiozhcLGiI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=u8hn3VrdHV7/f/4IOKxJ+m+pPJ8Rfs8K/grjarHrzPqh7lfakX1wkGw3/PsMtTOXr
	 UpvpvNnjaNAuP0oIK2Ub1QedJDykjxl7VjL2PfqO5J1B82+uN1FXk5RaGZEC8Op9JX
	 83WFYs0kZel8vXNOVgR8hEGpx+1EhAOfT2pY69RA4/rIOeeEKhzf1XEPzkPOOSArpD
	 ibUzbQcEDAY4RpMAjP/Vc5DZ8l03vpVmpj7c9arYidQfWI6FxzYal6SMYab7pcLPVE
	 ZbioERbFCJ2lhVa8piLpk913MptJEORvjFMwzThvrhmWGY9D6Mil2AkYtxZ0ZuJCqV
	 E75LhdGXmR5Tw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pdV2BErT08-l; Fri, 20 Jan 2023 05:40:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C846E4048D;
	Fri, 20 Jan 2023 05:40:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C846E4048D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 12D5E1BF397
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jan 2023 05:40:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EDD50827A8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jan 2023 05:40:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EDD50827A8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X0WIUmFR-tBN for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Jan 2023 05:40:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E334782735
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E334782735
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jan 2023 05:40:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="309088116"
X-IronPort-AV: E=Sophos;i="5.97,231,1669104000"; d="scan'208";a="309088116"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2023 21:40:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="729011151"
X-IronPort-AV: E=Sophos;i="5.97,231,1669104000"; d="scan'208";a="729011151"
Received: from lkp-server01.sh.intel.com (HELO 5646d64e7320) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 19 Jan 2023 21:40:41 -0800
Received: from kbuild by 5646d64e7320 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pIk8n-0002E4-0o;
 Fri, 20 Jan 2023 05:40:41 +0000
Date: Fri, 20 Jan 2023 13:40:20 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63ca2944.4gG9ku1g0+wHrenz%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674193243; x=1705729243;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=oOhJAuUC9MDEuYKvNmTg7SDR1jlOYXqEfc9TWF7WN2Y=;
 b=jHtvbnywpYCYN2UorValMtNRJ0azrcmzsl50OyPdhCfg3KmMghekQm4W
 VmXNGCS2KCpYQtDvf1WLpK8k5Ue7b0G+N/hCh+6enQ78mKvtj7uK9cCjQ
 CPJQUGsj5y5kPM4tvGrAScDnyPlVqR77j07lXj3ActAHpFCY82mfHd/lM
 2aJ86txvmJQAjjF4pe2viHzdiPTpIgr9gDjuMKVrAmm/wEcofjirfSssd
 ZhNe39fuI9yuw6NENb8LlBKt5fwTHj8QGmxyg0y9ssd7XnCGCe1OCfz2D
 31A4gXhb6Yxjc9EYsC/LNBSkRSSgPVbXq4gDcEggJjf1X7UVaoqzgY2SP
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jHtvbnyw
Subject: [Intel-wired-lan] [tnguy-next-queue:master] BUILD SUCCESS
 3ef4a8c8963b29813170177899f84ffb93f1a8f1
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git master
branch HEAD: 3ef4a8c8963b29813170177899f84ffb93f1a8f1  Merge branch 'net-phy-remove-probe_capabilities'

elapsed time: 797m

configs tested: 60
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
i386                          randconfig-a016
arm                  randconfig-r046-20230119
arc                  randconfig-r043-20230119
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                           rhel-8.3-bpf
x86_64                         rhel-8.3-kunit
ia64                             allmodconfig
i386                             allyesconfig
i386                                defconfig
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
arc                                 defconfig
alpha                               defconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
s390                             allmodconfig
s390                                defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
s390                             allyesconfig
i386                          randconfig-a003
i386                          randconfig-a001
i386                          randconfig-a005
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
i386                          randconfig-c001
sh                          rsk7264_defconfig
m68k                          multi_defconfig
nios2                               defconfig
arm                           corgi_defconfig

clang tested configs:
hexagon              randconfig-r045-20230119
hexagon              randconfig-r041-20230119
riscv                randconfig-r042-20230119
s390                 randconfig-r044-20230119
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
x86_64                        randconfig-k001
x86_64                          rhel-8.3-rust
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
