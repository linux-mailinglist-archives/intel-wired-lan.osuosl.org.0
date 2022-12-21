Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EE943653383
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Dec 2022 16:37:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 921AC820B8;
	Wed, 21 Dec 2022 15:37:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 921AC820B8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671637066;
	bh=U9yrWn6hg0g9EcEskwZZNwRemRQN24hULijKIw4Gp1Y=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=q67irg/D6xqUZKvTdEMhKzoayRCmXkmGAGkID+A/1AhPthHhm4Vjs5S326qyqneQ3
	 H/xGVbS8AcHV6sYN9iYO0gLgW77SF2zJ6opktPGuTT80ripRRjDmbjjGb4s7ABfBDY
	 Q9tGF6pgUZX0tskG02VBucgnor+XyCkwym0AAVhIMtMBElMfT/w/jhsWh61rgDN1HF
	 owsW2a3WZbvPzGsZq66/Hk8tq+sM1+5sZLBZ8qM0xsbxXIwbHQAygx88leYUVr6cGN
	 ++kZRI6c+udTp4HoxssDt6rBjJyJluQNxHuqRvM/yxPgArJMT9tvXGKwrQELpyrE09
	 LlzmkJ4TM7A8A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VM_bL5DtBe1D; Wed, 21 Dec 2022 15:37:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 85B44820B6;
	Wed, 21 Dec 2022 15:37:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 85B44820B6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 037F81BF8C7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 15:37:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E09B040BCF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 15:37:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E09B040BCF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u0WeMeBAtn2P for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Dec 2022 15:37:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B1AC040BB4
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B1AC040BB4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 15:37:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="319949241"
X-IronPort-AV: E=Sophos;i="5.96,262,1665471600"; d="scan'208";a="319949241"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2022 07:37:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="714850133"
X-IronPort-AV: E=Sophos;i="5.96,262,1665471600"; d="scan'208";a="714850133"
Received: from lkp-server01.sh.intel.com (HELO b5d47979f3ad) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 21 Dec 2022 07:37:33 -0800
Received: from kbuild by b5d47979f3ad with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p819x-000APs-09;
 Wed, 21 Dec 2022 15:37:33 +0000
Date: Wed, 21 Dec 2022 23:36:57 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63a32819.cDzKPl6ls/isV8Qp%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671637055; x=1703173055;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=GJErKEIAbzrEFWGHBNlyccGs5ds+ftgWxJUNsWcldTU=;
 b=iUWFvIlfb3RFUa6+BOyobQ86keYcPSU/xY7Sx0AySXy091T2U6XFtKEV
 yATtB5cneK4F7OtZaEe5isZzXUSx0L/KnaBXfGvhtnv5VtzFE4drAS1me
 eaWD4eriJXqSRiiMoFkRjcAGTc9fY3VfhqhfQmeLRwG9WiY0NE7v1kZ9L
 ukurlQbs57M+53VAcVDX7x64miYmBICVjObbLDCgHH2lKI53wBkyDhvy7
 UdCFsh20iQ6d2DsZDFL+arAzp0Rq/Xelt6UgDvHYGNVCvPfl0bYqJElqP
 qOVqH3+mz5PAEhBt5VVUiWVAtKNIRRm/ROT6K2Xbm/PCFOurC+8E2/yO0
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iUWFvIlf
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 4be84df38a6f49b81e5909ede78242ba1538c1e6
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git master
branch HEAD: 4be84df38a6f49b81e5909ede78242ba1538c1e6  Merge tag 'linux-can-fixes-for-6.2-20221219' of git://git.kernel.org/pub/scm/linux/kernel/git/mkl/linux-can

elapsed time: 2214m

configs tested: 65
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
powerpc                           allnoconfig
s390                                defconfig
um                             i386_defconfig
um                           x86_64_defconfig
s390                             allyesconfig
sh                               allmodconfig
powerpc                          allmodconfig
mips                             allyesconfig
m68k                             allmodconfig
alpha                            allyesconfig
m68k                             allyesconfig
arc                              allyesconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
ia64                             allmodconfig
x86_64                           allyesconfig
x86_64               randconfig-a006-20221219
x86_64               randconfig-a002-20221219
x86_64               randconfig-a003-20221219
x86_64               randconfig-a001-20221219
x86_64               randconfig-a004-20221219
x86_64               randconfig-a005-20221219
riscv                randconfig-r042-20221218
arc                  randconfig-r043-20221219
arm                  randconfig-r046-20221219
arc                  randconfig-r043-20221218
s390                 randconfig-r044-20221218
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                           rhel-8.3-bpf
x86_64                         rhel-8.3-kunit
i386                             allyesconfig
i386                                defconfig
arm                                 defconfig
arm                              allyesconfig
arm64                            allyesconfig
i386                          randconfig-c001

clang tested configs:
x86_64                          rhel-8.3-rust
arm                  randconfig-r046-20221218
hexagon              randconfig-r041-20221218
hexagon              randconfig-r045-20221219
hexagon              randconfig-r041-20221219
hexagon              randconfig-r045-20221218
riscv                randconfig-r042-20221219
s390                 randconfig-r044-20221219
x86_64               randconfig-a015-20221219
x86_64               randconfig-a013-20221219
x86_64               randconfig-a012-20221219
x86_64               randconfig-a016-20221219
x86_64               randconfig-a014-20221219
x86_64               randconfig-a011-20221219
i386                 randconfig-a013-20221219
i386                 randconfig-a014-20221219
i386                 randconfig-a015-20221219
i386                 randconfig-a011-20221219
i386                 randconfig-a016-20221219
i386                 randconfig-a012-20221219
arm                          sp7021_defconfig
mips                     cu1000-neo_defconfig
mips                      maltaaprp_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
