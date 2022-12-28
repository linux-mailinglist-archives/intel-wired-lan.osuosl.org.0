Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CEFC6573AE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Dec 2022 08:33:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 809EA81446;
	Wed, 28 Dec 2022 07:33:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 809EA81446
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672212790;
	bh=x4IqvVqVmgu8Vv1Qr22/woGY0lczQFZHtpWxxK3P6Ao=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=dnLlS5gbTPOo+HrJmcfWNo4dOhSgP9IyynZbdxlbMdFd9NWjHsiD5J+0Lts7NhSLV
	 HkH5Pl4MK67+HjUjt9xGpFYD7Zm6qZkOOqQ1lyndjCk6ZCgTSx0jZuMDshBCtpm3aD
	 kXVdS3ibRWvpgSRWJZyPNmwTJb9TNdy01yTZFqmp+3OQMkhp/ke8iKpg1I7DyYzcjr
	 77u4RuElzAyZfqDrR6Q0LwYOTUJURm0RnnGPljP9y+piaeQw2N0STPOLAT//3/BMcR
	 wYAP8132g+OXRgyCMmO065a27DE6pxJayDQr9Csrg8w8/ig4rtYXVyyIUbWDilSx4U
	 Qla7/o/sIe/CA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E4bDx71waWsl; Wed, 28 Dec 2022 07:33:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 52AEB81428;
	Wed, 28 Dec 2022 07:33:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 52AEB81428
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 382A11BF909
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Dec 2022 07:33:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1126360C23
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Dec 2022 07:33:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1126360C23
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oS-JltRJ0547 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Dec 2022 07:33:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 24A4660BFE
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 24A4660BFE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Dec 2022 07:33:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10573"; a="300519312"
X-IronPort-AV: E=Sophos;i="5.96,280,1665471600"; d="scan'208";a="300519312"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Dec 2022 23:33:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10573"; a="603257489"
X-IronPort-AV: E=Sophos;i="5.96,280,1665471600"; d="scan'208";a="603257489"
Received: from lkp-server01.sh.intel.com (HELO b5d47979f3ad) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 27 Dec 2022 23:33:01 -0800
Received: from kbuild by b5d47979f3ad with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pAQvs-000FWD-0h;
 Wed, 28 Dec 2022 07:33:00 +0000
Date: Wed, 28 Dec 2022 15:32:46 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63abf11e.PM94LToGVCMC+AtK%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672212783; x=1703748783;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=mEv0vnf9Gc/Ii32HO5JnUBOffIl/2T4mrmrK+pzHjvc=;
 b=I5tFlexUAviTAhOIOxumpvzNl8VwVochV2+llqvDp6HAT+v/FiGDS19D
 RNDVqzhNg0gRzez/1vW0oLRtvcEdsS8XY2clWsFlV5RO0BnJtpftd85ID
 Om7qzzeyhuVFwWPK+MoMxlRVoxupWTGARDJ2cXHmYpnu/eoRje4rOQQH2
 ga2SPA4S9SbKZxRMyKFFpKRVxumG/9KmHPjnj4IkIEtHq/fWhf21eWX8e
 jruuc4/KCJBPxEjdAaKOPIDminDIObtq6zBW+CX2JEkQYWehT3P2VxoRs
 XrVc54HEgzaX1RxWv55XoY+2S1eX90fwgl+qHtRxhEtZC1iFWSMj78HGn
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=I5tFlexU
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 c342bc11f5a438cf39e2280bafda39ec2c6953f1
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
branch HEAD: c342bc11f5a438cf39e2280bafda39ec2c6953f1  iavf/iavf_main: actually log ->src mask when talking about it

elapsed time: 727m

configs tested: 74
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
s390                                defconfig
s390                             allyesconfig
powerpc                           allnoconfig
m68k                             allmodconfig
m68k                             allyesconfig
ia64                             allmodconfig
alpha                            allyesconfig
arc                              allyesconfig
sh                               allmodconfig
mips                             allyesconfig
powerpc                          allmodconfig
x86_64                              defconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-syz
x86_64                           rhel-8.3-bpf
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
i386                                defconfig
arm                                 defconfig
x86_64                               rhel-8.3
i386                 randconfig-a012-20221226
i386                 randconfig-a011-20221226
i386                 randconfig-a013-20221226
i386                 randconfig-a014-20221226
i386                 randconfig-a016-20221226
x86_64                           allyesconfig
i386                 randconfig-a015-20221226
arm64                            allyesconfig
arm                              allyesconfig
i386                             allyesconfig
arm                  randconfig-r046-20221225
arc                  randconfig-r043-20221225
arc                  randconfig-r043-20221227
arm                  randconfig-r046-20221227
arc                  randconfig-r043-20221226
riscv                randconfig-r042-20221226
s390                 randconfig-r044-20221226
x86_64               randconfig-a014-20221226
x86_64               randconfig-a013-20221226
x86_64               randconfig-a011-20221226
x86_64               randconfig-a012-20221226
x86_64               randconfig-a016-20221226
x86_64               randconfig-a015-20221226
x86_64                            allnoconfig

clang tested configs:
x86_64                          rhel-8.3-rust
x86_64               randconfig-a002-20221226
x86_64               randconfig-a003-20221226
x86_64               randconfig-a001-20221226
x86_64               randconfig-a004-20221226
x86_64               randconfig-a006-20221226
x86_64               randconfig-a005-20221226
i386                 randconfig-a004-20221226
i386                 randconfig-a001-20221226
i386                 randconfig-a003-20221226
i386                 randconfig-a002-20221226
i386                 randconfig-a006-20221226
i386                 randconfig-a005-20221226
hexagon              randconfig-r045-20221225
riscv                randconfig-r042-20221227
hexagon              randconfig-r041-20221225
s390                 randconfig-r044-20221227
hexagon              randconfig-r041-20221227
hexagon              randconfig-r041-20221226
arm                  randconfig-r046-20221226
s390                 randconfig-r044-20221225
hexagon              randconfig-r045-20221226
riscv                randconfig-r042-20221225
hexagon              randconfig-r045-20221227

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
