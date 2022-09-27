Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 936B05EBD98
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Sep 2022 10:39:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A7876400AF;
	Tue, 27 Sep 2022 08:39:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A7876400AF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664267987;
	bh=PVG4avS4uUfRxcNy9BbERDF5ZBmqKaWFTEAqYe78/Zw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=2khdnn3W4251zNpUXDA+50qq2uSQMmA7hvFHT04FW8x+ReqBx+pK0YRzCnRQ9UmJq
	 G0WtVrlvN1OmMjITRnICtt6rM8E3k5yCdATHhohdLcK717AfchYxKEdC14NL0xSqxq
	 FHoxG01XLNkUvpR5Gavx4zXubAcMIsu1BpFS+fSAGZMNfODjL/UjwVOHqVSfeWQg8F
	 k5/V2u5LlC9yvo9zfBuXjtKIO6AoVzrgMSJaxdW/xNd0IRcBMMhlMFrqRmBtbnt0Gf
	 gkO0d5MigHa/AxE1KFVzAfSlbnjCLd8B+PemXRdorXFIXjYPi+UUOTW4qYfvJEV/yd
	 Llf0eADTLwU4A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3hIQkTqqbHl1; Tue, 27 Sep 2022 08:39:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 715264049D;
	Tue, 27 Sep 2022 08:39:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 715264049D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E8C4C1BF2EA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Sep 2022 08:39:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CE95861014
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Sep 2022 08:39:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CE95861014
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NjxGuxZmn2ik for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Sep 2022 08:39:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D285F6102F
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D285F6102F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Sep 2022 08:39:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="387547786"
X-IronPort-AV: E=Sophos;i="5.93,348,1654585200"; d="scan'208";a="387547786"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 01:39:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="623679898"
X-IronPort-AV: E=Sophos;i="5.93,348,1654585200"; d="scan'208";a="623679898"
Received: from lkp-server02.sh.intel.com (HELO dfa2c9fcd321) ([10.239.97.151])
 by fmsmga007.fm.intel.com with ESMTP; 27 Sep 2022 01:39:30 -0700
Received: from kbuild by dfa2c9fcd321 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1od67l-0000oY-1Z;
 Tue, 27 Sep 2022 08:39:29 +0000
Date: Tue, 27 Sep 2022 16:38:57 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6332b6a1.bcHANTHBwZoPNcOJ%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664267979; x=1695803979;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=TB85ELuekAkgmex4pL+aZoQsqu9C4QNQftthXgh2/Gk=;
 b=VBrmFiTZnGTA6FFU18iiKZZeQ86N/t5QwyPrV7msjNnVaZKJqMqt4AE8
 F+JaoU1hP71KzrB9sv5nLVjElx7Vuq0MacxaKI0z1WKgtkoR3BuCthuy0
 MQoy6y40LGV36+IvZ9t8744fcOPaL/FWtqRMfAn16UN52HtJJoxoskakn
 OCGZ3N0D8yU3sl+UIgfBWtWYpwIAp/Mt2AMIYJVKhh46+KeoTtTWNE4Hr
 ohkYM0zaD7vCEGgMkUybiHS4fprkW9l0DHGBc5ZI0ntKiAcVvPB+5oIMI
 AWfDKUhLfnDQN47naJXJLBlJNofYWW++2pnQ+KV3/Lzn/br1zE6GZRS1d
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VBrmFiTZ
Subject: [Intel-wired-lan] [tnguy-net-queue:40GbE] BUILD SUCCESS
 8034de160d88a855f9f6c7b258a7bb780c5adf89
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
branch HEAD: 8034de160d88a855f9f6c7b258a7bb780c5adf89  i40e: Fix DMA mappings leak

elapsed time: 721m

configs tested: 62
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                                 defconfig
alpha                               defconfig
arc                              allyesconfig
s390                                defconfig
alpha                            allyesconfig
s390                             allmodconfig
m68k                             allmodconfig
m68k                             allyesconfig
s390                             allyesconfig
powerpc                           allnoconfig
x86_64                          rhel-8.3-func
x86_64                              defconfig
x86_64                    rhel-8.3-kselftests
x86_64                               rhel-8.3
x86_64                           allyesconfig
x86_64                           rhel-8.3-syz
i386                                defconfig
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
i386                 randconfig-a001-20220926
arm                                 defconfig
i386                 randconfig-a004-20220926
i386                 randconfig-a005-20220926
i386                 randconfig-a006-20220926
i386                 randconfig-a002-20220926
i386                 randconfig-a003-20220926
x86_64               randconfig-a004-20220926
x86_64               randconfig-a001-20220926
x86_64               randconfig-a003-20220926
i386                             allyesconfig
sh                               allmodconfig
x86_64               randconfig-a002-20220926
x86_64               randconfig-a006-20220926
arm64                            allyesconfig
x86_64               randconfig-a005-20220926
arm                              allyesconfig
powerpc                          allmodconfig
mips                             allyesconfig
arc                  randconfig-r043-20220925
riscv                randconfig-r042-20220925
s390                 randconfig-r044-20220925
ia64                             allmodconfig

clang tested configs:
i386                 randconfig-a011-20220926
i386                 randconfig-a014-20220926
i386                 randconfig-a013-20220926
i386                 randconfig-a012-20220926
i386                 randconfig-a015-20220926
i386                 randconfig-a016-20220926
x86_64               randconfig-a012-20220926
x86_64               randconfig-a013-20220926
x86_64               randconfig-a011-20220926
x86_64               randconfig-a016-20220926
x86_64               randconfig-a015-20220926
x86_64               randconfig-a014-20220926
hexagon              randconfig-r045-20220925
hexagon              randconfig-r041-20220925
hexagon              randconfig-r041-20220926
hexagon              randconfig-r045-20220926
riscv                randconfig-r042-20220926
s390                 randconfig-r044-20220926

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
