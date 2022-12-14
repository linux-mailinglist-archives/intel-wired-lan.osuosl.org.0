Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F45464C512
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Dec 2022 09:29:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1781E40242;
	Wed, 14 Dec 2022 08:29:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1781E40242
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671006540;
	bh=38KSMcaPcwqxKgnEYdacHzTyTaRmxelVnNmohfUnSXA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ObLqjcZ9+bBG/OII7WS/Dz2R9hbfK804cIYCbExWBuQaVE2hb6fjkaiCw33BN/vfF
	 LEWj2RQofhsdithORaEPhBUZgKXp4xbIj+3iBscW1Z3Qh0iAOwRt9dkKVvTCx+sLEG
	 jmvrv/w+6T3Bg/qL2JeFsA5wDQ0llWqFOQiB1ZZrjHNdUm7q6dDUfFyLB049rayDm5
	 sfIkZa7sjebvFaL1Nd4Qq5QgOJqsjGGCOZGJo/oEk+mDVfuwqqOKkbqOeNulVOlx6O
	 3ZiR2THVzBkdNMJOkrl2QRi1pWYhLNDcSqTTVl6Kx7YuVZLg3oPsOSeCY2YnVAbQ6h
	 5EEo+cDTLacAQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NnI9J8LV3BAD; Wed, 14 Dec 2022 08:28:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F261140204;
	Wed, 14 Dec 2022 08:28:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F261140204
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1551C1BF31F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Dec 2022 08:28:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E367D60BAD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Dec 2022 08:28:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E367D60BAD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RWQNJDip4Lbj for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Dec 2022 08:28:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A5B7360B97
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A5B7360B97
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Dec 2022 08:28:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="380549811"
X-IronPort-AV: E=Sophos;i="5.96,243,1665471600"; d="scan'208";a="380549811"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2022 00:28:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="823190305"
X-IronPort-AV: E=Sophos;i="5.96,243,1665471600"; d="scan'208";a="823190305"
Received: from lkp-server01.sh.intel.com (HELO b5d47979f3ad) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 14 Dec 2022 00:28:49 -0800
Received: from kbuild by b5d47979f3ad with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p5N8C-0005KD-1F;
 Wed, 14 Dec 2022 08:28:48 +0000
Date: Wed, 14 Dec 2022 16:28:26 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6399892a.GSx2P5Pb9r/4HPnF%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671006531; x=1702542531;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=aSVqdKUBojzz5ZY7kfoNTRy/1FXmvvYqkmBK0+mYNT0=;
 b=An5vRCmgjTAF1X73wyZ/5L8sENH4kV/3EDl1ho1JsMd61z4KM8lDRJik
 qQX6L0yUnmi2rASSLXMyXOAOnobzlstqEYmhcZrK/T0f+koEJeG7hX6Ff
 DNm1WnnEw8y/Q74qy4vEwj8UJiQ7l0Z6fnpXTjHbpP2TDVz3DMszTErni
 JOoEpOQPnoxWisxNXVwWEc+xY5O6QjsSb6IUEhNYpy88mb5Q1bFtjYkWv
 7iQ9VD89qXxVKicz4N2/2RQCTtHbDLRsLI8zkGs6SOQITZ9aPoq/Iv7G1
 QNfUAa7Q3U5HY+VM4fcQbRE50oukal0LEC3xL0gV1kc9PjCgctHmLuJPo
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=An5vRCmg
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 e095493091e850d5292ad01d8fbf5cde1d89ac53
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
branch HEAD: e095493091e850d5292ad01d8fbf5cde1d89ac53  net: dsa: tag_8021q: avoid leaking ctx on dsa_tag_8021q_register() error path

elapsed time: 1968m

configs tested: 93
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                           rhel-8.3-bpf
x86_64                         rhel-8.3-kunit
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-rust
ia64                             allmodconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
i386                             allyesconfig
i386                                defconfig
i386                 randconfig-a013-20221212
i386                 randconfig-a015-20221212
i386                 randconfig-a014-20221212
i386                 randconfig-a011-20221212
i386                 randconfig-a016-20221212
i386                 randconfig-a012-20221212
x86_64               randconfig-a013-20221212
x86_64               randconfig-a015-20221212
x86_64               randconfig-a012-20221212
x86_64               randconfig-a016-20221212
x86_64               randconfig-a014-20221212
x86_64               randconfig-a011-20221212
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
s390                                defconfig
s390                             allmodconfig
arc                                 defconfig
alpha                               defconfig
s390                             allyesconfig
s390                 randconfig-r044-20221212
arm                  randconfig-r046-20221211
arc                  randconfig-r043-20221212
arc                  randconfig-r043-20221211
riscv                randconfig-r042-20221212
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arm                  randconfig-r046-20221213
arc                  randconfig-r043-20221213
x86_64                            allnoconfig
powerpc                         ps3_defconfig
m68k                          atari_defconfig
microblaze                          defconfig
sh                                  defconfig
mips                         rt305x_defconfig
m68k                       m5475evb_defconfig
riscv             nommu_k210_sdcard_defconfig
nios2                            alldefconfig
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func

clang tested configs:
i386                 randconfig-a005-20221212
i386                 randconfig-a002-20221212
i386                 randconfig-a003-20221212
i386                 randconfig-a006-20221212
i386                 randconfig-a001-20221212
i386                 randconfig-a004-20221212
x86_64               randconfig-a006-20221212
x86_64               randconfig-a002-20221212
x86_64               randconfig-a005-20221212
x86_64               randconfig-a003-20221212
x86_64               randconfig-a001-20221212
x86_64               randconfig-a004-20221212
hexagon              randconfig-r045-20221213
s390                 randconfig-r044-20221213
hexagon              randconfig-r041-20221213
riscv                randconfig-r042-20221213
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
