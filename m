Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1077566387F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Jan 2023 06:11:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CD4234086C;
	Tue, 10 Jan 2023 05:11:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CD4234086C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673327475;
	bh=L5OYNMabfH6KggqPKXoVsKchbUnGo2T0fg+bZ+mWwSE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=2YH4lwT0FG9UT8Lr225eh/hWVAb6Qnk3EIXQ/gapWfIhgxInbBpxwwRiv6Hoqep81
	 /Eve0Fr5q3isqMpygoRVaIWknAPwvj/B7iyC6DSkFztZCOaCh6Sgf+G5hRpR1tbseq
	 TqiMwxff05HAaM6mbP2zjHCqVVhS0Qonq3A6UEVIh0YwMbP/YVVZD49UXf71orMvpB
	 Z82MNRlld/mOskwB801roCW2Xrya9oy58KRwzziWU/t4/CIJX1o67mth5etQeLGDac
	 cKTTpeSv1wQZB4zMQEHekoIMPF+fbb9b+ZL3qemoRPIGA2FE52A6nFBfkJwzy+HUWV
	 gz6eSF42fUBYw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EnwBAurMHk0s; Tue, 10 Jan 2023 05:11:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 783EE40868;
	Tue, 10 Jan 2023 05:11:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 783EE40868
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 12BBB1BF2BA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jan 2023 05:11:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DF3E040868
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jan 2023 05:11:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DF3E040868
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3n5UiLXhLWuy for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Jan 2023 05:11:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E566340865
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E566340865
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jan 2023 05:11:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10585"; a="303424748"
X-IronPort-AV: E=Sophos;i="5.96,314,1665471600"; d="scan'208";a="303424748"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2023 21:11:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10585"; a="902248405"
X-IronPort-AV: E=Sophos;i="5.96,314,1665471600"; d="scan'208";a="902248405"
Received: from lkp-server02.sh.intel.com (HELO f1920e93ebb5) ([10.239.97.151])
 by fmsmga006.fm.intel.com with ESMTP; 09 Jan 2023 21:10:45 -0800
Received: from kbuild by f1920e93ebb5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pF6uK-0007bD-2r;
 Tue, 10 Jan 2023 05:10:44 +0000
Date: Tue, 10 Jan 2023 13:10:09 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63bcf331.kDz0I6QwE35Zcf1P%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673327464; x=1704863464;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=wuNAy3o4cZDy/sDQiqJG88YIeJjr+259RI6SpBfjOmA=;
 b=DZG5nQ5AKT+lVg1ncFZjMERSvBfAjsmK3GzPapjoPwXaRB6DaWaoAdgs
 YqhDeRAuffyavg+CCvb7ye0HP98Qbg2N1B59hlDFqywAcDDW9VXf7g6xJ
 gUpb2i4oZ9hkUbgZLhGJVeJfkrheItXa5S19AktlP+4TOCsb7aTaSNayP
 ycIsdGp7MmL9oaurBJdM6r4aprVwfM9NjFw8K+kUMBm8qFIpddrm/qYsd
 d8o9toeMgqKoaSCbV/iWNsvXSFmVdcJ3xp8iicKBmsU4wqUXTKGN5E+IR
 /81s6Jf1pM+xSJkZrY+I7UJ5nKbMrcygW9YO2x51NghoE6lAiD5tMjUcO
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DZG5nQ5A
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 4cb425d20a6ddbf9fd40989c31f5c6f8f304dc35
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
branch HEAD: 4cb425d20a6ddbf9fd40989c31f5c6f8f304dc35  ice: fix out-of-bounds KASAN warning in virtchnl

elapsed time: 723m

configs tested: 84
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
arc                                 defconfig
alpha                               defconfig
powerpc                           allnoconfig
um                             i386_defconfig
um                           x86_64_defconfig
alpha                            allyesconfig
s390                             allmodconfig
m68k                             allmodconfig
arc                              allyesconfig
s390                                defconfig
m68k                             allyesconfig
x86_64                              defconfig
s390                             allyesconfig
i386                                defconfig
arm                                 defconfig
i386                             allyesconfig
x86_64               randconfig-a011-20230109
x86_64               randconfig-a013-20230109
i386                 randconfig-a011-20230109
x86_64               randconfig-a012-20230109
sh                               allmodconfig
i386                 randconfig-a013-20230109
x86_64                           rhel-8.3-bpf
x86_64                               rhel-8.3
x86_64               randconfig-a014-20230109
x86_64               randconfig-a016-20230109
x86_64               randconfig-a015-20230109
ia64                             allmodconfig
x86_64                           allyesconfig
i386                 randconfig-a012-20230109
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                          rhel-8.3-func
i386                 randconfig-a014-20230109
x86_64                           rhel-8.3-kvm
i386                 randconfig-a016-20230109
i386                 randconfig-a015-20230109
mips                             allyesconfig
powerpc                          allmodconfig
arm64                            allyesconfig
arm                              allyesconfig
riscv                randconfig-r042-20230109
s390                 randconfig-r044-20230109
arm                  randconfig-r046-20230108
arc                  randconfig-r043-20230108
arc                  randconfig-r043-20230109
i386                          randconfig-c001
arm                        trizeps4_defconfig
arm                         s3c6400_defconfig
sh                               alldefconfig
ia64                                defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
m68k                           sun3_defconfig
parisc                generic-32bit_defconfig
sh                     sh7710voipgw_defconfig
mips                            gpr_defconfig

clang tested configs:
i386                 randconfig-a004-20230109
x86_64               randconfig-a003-20230109
x86_64               randconfig-a002-20230109
x86_64                          rhel-8.3-rust
x86_64               randconfig-a004-20230109
hexagon              randconfig-r045-20230109
i386                 randconfig-a002-20230109
x86_64               randconfig-a005-20230109
i386                 randconfig-a003-20230109
x86_64               randconfig-a001-20230109
arm                  randconfig-r046-20230109
riscv                randconfig-r042-20230108
x86_64               randconfig-a006-20230109
hexagon              randconfig-r041-20230108
i386                 randconfig-a006-20230109
i386                 randconfig-a001-20230109
hexagon              randconfig-r041-20230109
i386                 randconfig-a005-20230109
hexagon              randconfig-r045-20230108
s390                 randconfig-r044-20230108
x86_64                        randconfig-k001

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
