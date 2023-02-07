Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BF77D68D13F
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Feb 2023 09:06:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F2F2860E1A;
	Tue,  7 Feb 2023 08:06:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F2F2860E1A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675757161;
	bh=QFdTstGYv8k4NdD9xYTBYmFS1NDHgmZy2nLXujZWoF4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=9eApvznF7wtnXFbUL4f+0knV0Bt69nCe9MSFyTBVjrF2Opjudp2B4ojCWXHJiefLQ
	 vsrQJ78izek3EO+QFtH+su0v6ckgzMXltbZtaZ49hrUHPyEnVi+3NwUmiJWPgynW/G
	 50GD8hx5RU1qY0kKIT424mZG7BfKxxDicPbsLZqunKVcud8PCKmywAZb/qs51rN57/
	 FL2Ii8UBLPhVDE931nxd2BRSMtGGI+LWIQs/Q9yMz2HGIwhPk7igAVGe0FCOUCOxq7
	 Vm98tZinUJmgadwiBe03Kn1cxpHuzqNk1gejpFGPvbq3kWjpls12akOwuWkzyS/NJX
	 NeR2l1bmvekwA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OeoaUUZCQGEo; Tue,  7 Feb 2023 08:06:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E482060BFB;
	Tue,  7 Feb 2023 08:05:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E482060BFB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6F5831BF30B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Feb 2023 08:05:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 46F9B4174A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Feb 2023 08:05:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 46F9B4174A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kwLF9Cdx97jW for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Feb 2023 08:05:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A21CF409AF
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A21CF409AF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Feb 2023 08:05:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="391831513"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="391831513"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 00:05:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="616722983"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="616722983"
Received: from lkp-server01.sh.intel.com (HELO 4455601a8d94) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 07 Feb 2023 00:05:50 -0800
Received: from kbuild by 4455601a8d94 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pPIz7-0003KJ-1t;
 Tue, 07 Feb 2023 08:05:49 +0000
Date: Tue, 07 Feb 2023 16:05:30 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63e2064a.CQq8uQogsJawzpYs%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675757152; x=1707293152;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=y1hzBz7IGfBZxi520NZxVeNn+4VplSvLvHgdKy1/t90=;
 b=LlkcxZZ/esf3TcCdtAL3tP/lUu+TSBffTg+7cubrSjc5vT1VZ0tGJUMG
 XPjobL3STJsQky0CEprhB4tHo7y0g7edyRN5t86Xb9HqY0CymOjNuwtc9
 W6Unv1LrrAVYczSVjc69QFFYkYaxaRgt/CYNYie/DgCmeFZVVhagBdUma
 ty4E5rgsxlBv1fprFZ8nK7BMybdfOsAZdHT/kvwLwcfqlhWoj0aFUbYLc
 0pAXp4qNk1zEJDCeRc4v9JSbGOfu9ERW3+gUUNai2Lw1/KWLgQuGpQi7L
 IHSjQKgmzsNpHycSDLxNWaZmLMe82lNaPC8wW13SR9ZCeqP4I6BVD7UqK
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LlkcxZZ/
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 e0645311e1abc6120d2cf18e7611e1c272fdcc88
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: e0645311e1abc6120d2cf18e7611e1c272fdcc88  ice: remove unnecessary virtchnl_ether_addr struct use

elapsed time: 724m

configs tested: 78
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
x86_64                            allnoconfig
s390                             allmodconfig
alpha                               defconfig
s390                                defconfig
powerpc                           allnoconfig
um                             i386_defconfig
s390                             allyesconfig
um                           x86_64_defconfig
sh                               allmodconfig
mips                             allyesconfig
powerpc                          allmodconfig
m68k                             allyesconfig
alpha                            allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
x86_64                           rhel-8.3-bpf
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64               randconfig-a013-20230206
x86_64               randconfig-a011-20230206
x86_64               randconfig-a012-20230206
x86_64               randconfig-a014-20230206
x86_64               randconfig-a015-20230206
x86_64               randconfig-a016-20230206
arc                  randconfig-r043-20230205
arm                  randconfig-r046-20230205
arc                  randconfig-r043-20230206
i386                 randconfig-a011-20230206
i386                 randconfig-a014-20230206
i386                 randconfig-a012-20230206
riscv                randconfig-r042-20230206
i386                 randconfig-a013-20230206
s390                 randconfig-r044-20230206
i386                 randconfig-a016-20230206
i386                 randconfig-a015-20230206
ia64                             allmodconfig
arm                                 defconfig
arm                            pleb_defconfig
arm                           h5000_defconfig
arm                          badge4_defconfig
powerpc                  iss476-smp_defconfig
arm64                            allyesconfig
arm                              allyesconfig
i386                                defconfig
arm                     eseries_pxa_defconfig
xtensa                           alldefconfig
sh                          rsk7203_defconfig
m68k                          amiga_defconfig
i386                             allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests

clang tested configs:
x86_64               randconfig-a001-20230206
x86_64               randconfig-a002-20230206
x86_64               randconfig-a003-20230206
x86_64               randconfig-a005-20230206
x86_64               randconfig-a004-20230206
x86_64               randconfig-a006-20230206
hexagon              randconfig-r041-20230205
riscv                randconfig-r042-20230205
hexagon              randconfig-r045-20230206
hexagon              randconfig-r041-20230206
arm                  randconfig-r046-20230206
s390                 randconfig-r044-20230205
hexagon              randconfig-r045-20230205
i386                 randconfig-a001-20230206
i386                 randconfig-a004-20230206
i386                 randconfig-a005-20230206
powerpc                    mvme5100_defconfig
i386                 randconfig-a006-20230206
i386                 randconfig-a002-20230206
i386                 randconfig-a003-20230206
arm                         mv78xx0_defconfig
x86_64                          rhel-8.3-rust

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
