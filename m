Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AF20867FA6E
	for <lists+intel-wired-lan@lfdr.de>; Sat, 28 Jan 2023 20:28:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 28F3181EDC;
	Sat, 28 Jan 2023 19:28:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 28F3181EDC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674934138;
	bh=LTfnO/6yjIHnkykMKm1jafEhqjsEDAXE7h9m4UqTvK0=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ILJYTESqSGrsL8QjXsaRpDYH4PhYNDdwNXM2tRCkvAshnjFSAWXgMHBeZYOppWcoL
	 gbjUxgnLXV36Jhko5h2yrjv+KLCYxFXFZTJRE8JtK0ZMOOeGnIIGB2VOB0affbBmu6
	 TgNaG3XzZqmReeHFoxdZkxbQLP1ByKMcv8MlzWaOnBj9847h5wfvpqDddDYDoYzAsG
	 D2d+k+z60ActyrD1DIF+SozwIZvxIX7VS46/SK07Z0NrhUN9tzY+BuYJSjloD1eyGu
	 UH2ItrqFby/em4YqBRQb0HoaYs7j9R+d6BL6jBntC0dWCD24GAWdop1QT/pLtxaMPY
	 pYvjrq1xj8ygg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ro2Vf7vQFi8V; Sat, 28 Jan 2023 19:28:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1542481E92;
	Sat, 28 Jan 2023 19:28:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1542481E92
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9DE721BF48B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Jan 2023 19:28:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 75F2160E14
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Jan 2023 19:28:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 75F2160E14
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y43_R_ru7xiY for <intel-wired-lan@lists.osuosl.org>;
 Sat, 28 Jan 2023 19:28:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CF22D60C24
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CF22D60C24
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Jan 2023 19:28:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10604"; a="389706035"
X-IronPort-AV: E=Sophos;i="5.97,254,1669104000"; d="scan'208";a="389706035"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2023 11:28:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10604"; a="694079911"
X-IronPort-AV: E=Sophos;i="5.97,254,1669104000"; d="scan'208";a="694079911"
Received: from lkp-server01.sh.intel.com (HELO ffa7f14d1d0f) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 28 Jan 2023 11:28:48 -0800
Received: from kbuild by ffa7f14d1d0f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pLqsa-00011g-0M;
 Sat, 28 Jan 2023 19:28:48 +0000
Date: Sun, 29 Jan 2023 03:28:26 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63d5775a.gxMvTmqoL4TURv5U%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674934130; x=1706470130;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=uv3H0Zomz20RwsqGRQuwMMHhXw2wKqhAS0y9DEIvaeI=;
 b=YYfXp7YrcAgblF+1n8D8JCf4mLPzCP2oGXmrU6f4d0ImwPklxV3S6vob
 ODSWedSSxN6ewZPu/OaVSrK3XLGnJUlxLzhK0noRJ9/fULrEjpuK7znDJ
 E7TrH77vgtGSlulRnm11NbL3XfocgkeSUd1HzErrfQRFrm86R6yRi2eW6
 cwWrpfyoMzcf0TYMFtrUY1UUHClRzybse+8dQ5Ul36Dfe5uipnlH+Ml3q
 Eunn01rrOFsd9rV7N+SUt0dSahoylZBQWym4Xtmi50dijhE2X93dETJRr
 CZuvJEOYonOqW+v+8fFINpuq2xW6qq08nKZyc5v9+6t8/Xvn8l4kWfxx3
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YYfXp7Yr
Subject: [Intel-wired-lan] [tnguy-next-queue:40GbE] BUILD SUCCESS
 2723f3b5d4ff5853503aae368c6b165b57fac651
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 40GbE
branch HEAD: 2723f3b5d4ff5853503aae368c6b165b57fac651  virtchnl: i40e/iavf: rename iwarp to rdma

elapsed time: 1042m

configs tested: 64
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
alpha                               defconfig
s390                             allmodconfig
s390                                defconfig
s390                             allyesconfig
powerpc                           allnoconfig
um                           x86_64_defconfig
um                             i386_defconfig
m68k                             allmodconfig
m68k                             allyesconfig
alpha                            allyesconfig
arc                              allyesconfig
sh                               allmodconfig
mips                             allyesconfig
powerpc                          allmodconfig
ia64                             allmodconfig
x86_64                            allnoconfig
i386                          randconfig-c001
i386                 randconfig-a004-20230123
i386                 randconfig-a006-20230123
i386                 randconfig-a005-20230123
i386                 randconfig-a002-20230123
i386                 randconfig-a003-20230123
i386                 randconfig-a001-20230123
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-bpf
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64               randconfig-a002-20230123
x86_64               randconfig-a005-20230123
x86_64               randconfig-a001-20230123
x86_64               randconfig-a006-20230123
x86_64               randconfig-a003-20230123
x86_64               randconfig-a004-20230123
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
i386                                defconfig
i386                             allyesconfig

clang tested configs:
x86_64                          rhel-8.3-rust
x86_64               randconfig-a013-20230123
x86_64               randconfig-a011-20230123
x86_64               randconfig-a016-20230123
x86_64               randconfig-a012-20230123
x86_64               randconfig-a015-20230123
x86_64               randconfig-a014-20230123
i386                 randconfig-a013-20230123
i386                 randconfig-a016-20230123
i386                 randconfig-a012-20230123
i386                 randconfig-a015-20230123
i386                 randconfig-a011-20230123
i386                 randconfig-a014-20230123
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
riscv                randconfig-r042-20230123
hexagon              randconfig-r041-20230123
hexagon              randconfig-r045-20230123
s390                 randconfig-r044-20230123

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
