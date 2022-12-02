Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F81C640769
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Dec 2022 14:04:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2E09C60BAA;
	Fri,  2 Dec 2022 13:04:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2E09C60BAA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669986263;
	bh=CCIQoNZh28AJUVk+roy0dmBAAdIQxvPjXn0VFkTatv8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=I7RpgPQzPX85qxd1zItgr66CnrDYhVfo/JCxPwLk+jal9czuwGtgIedsF4DeNpCW3
	 XmxddJm/80L+sI6RVnBHUxazeRkWNFBYQbOfydq5mYdHsiJywoceePRFJsnoPyO3+Q
	 Ud+bgZpRz1RI2b2WR2Rw90gtXTBMYyxBPqblhGsv5EBJMJ3jFmYCOQp3GKdcz8jDoQ
	 4hWgmQkrqyA9jflwP92zwquo8unxUB4G1c1qHekKliapoIE8TmOdCMKB6jmoY6gyqH
	 KOfx2pHGqah74InUE0tAHHFV2xJjiqcXY45wsdye4OQTqijKvPxjke62I8FcfMpfct
	 90Fj7/OroyM4A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lNpqKdnKRnHs; Fri,  2 Dec 2022 13:04:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 35FF660A72;
	Fri,  2 Dec 2022 13:04:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 35FF660A72
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6FDC81BF295
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Dec 2022 13:04:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 52A4841602
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Dec 2022 13:04:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 52A4841602
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YC3b1fcGH5Nm for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 Dec 2022 13:04:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 543C640133
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 543C640133
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Dec 2022 13:04:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="378101518"
X-IronPort-AV: E=Sophos;i="5.96,212,1665471600"; d="scan'208";a="378101518"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2022 05:04:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="645022666"
X-IronPort-AV: E=Sophos;i="5.96,212,1665471600"; d="scan'208";a="645022666"
Received: from lkp-server01.sh.intel.com (HELO 64a2d449c951) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 02 Dec 2022 05:04:14 -0800
Received: from kbuild by 64a2d449c951 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p15i9-000Dg3-2J;
 Fri, 02 Dec 2022 13:04:13 +0000
Date: Fri, 02 Dec 2022 21:03:44 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6389f7b0.6ERvxMoBWfYi4qv0%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669986256; x=1701522256;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=llEwJfGtsfnCpiqNoLR199ztDLrB93/ickHr6h/jhzQ=;
 b=c5aKwXXy6PXwPFDQEtwoRPADGP6sGJqeDj676hxKZX4+dZJXndi8Jr0l
 eymK323PFuTf4jHlT9hxJKyUb1jPbz+tbwDt4qNgrfjtg0x9ArRJEEiqb
 XId2I4VmA1rlA01nG/6srCTmngPDwu4oOiWSg8q6pE+u3QOP7CSU86wa7
 IiOrag2yWK3hAlxKwuF8N6vmMyaTblVsbZFdtpibu4GEiGI+mmkG8nIVG
 TwUYPKziWyADVPNC8E9VAq2uv9/zlmibursJ1iCnG9A4cas7mUEDLPQTf
 7GEcYAuBBPFg7ymWHe/3qB2UmuNPnGaYRx7UJ31x3zO2dPklo2eINQmGu
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=c5aKwXXy
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 18966f3a88442879182f690a13a249957efd6d3d
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
branch HEAD: 18966f3a88442879182f690a13a249957efd6d3d  ice: xsk: do not use xdp_return_frame() on tx_buf->raw_buf

elapsed time: 1226m

configs tested: 58
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
alpha                            allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
s390                                defconfig
s390                             allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
ia64                             allmodconfig
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                              defconfig
x86_64                        randconfig-a015
powerpc                           allnoconfig
sh                               allmodconfig
mips                             allyesconfig
powerpc                          allmodconfig
arc                  randconfig-r043-20221201
riscv                randconfig-r042-20221201
s390                 randconfig-r044-20221201
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
i386                          randconfig-a001
x86_64                               rhel-8.3
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                           allyesconfig
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
i386                                defconfig
i386                             allyesconfig
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig

clang tested configs:
x86_64                        randconfig-a014
x86_64                        randconfig-a012
x86_64                        randconfig-a016
hexagon              randconfig-r045-20221201
hexagon              randconfig-r041-20221201
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a003

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
