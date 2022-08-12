Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BC90D590B26
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Aug 2022 06:27:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 27D9F6108A;
	Fri, 12 Aug 2022 04:27:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 27D9F6108A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660278462;
	bh=B3b0EIPYfip3BYJddk78mncRhSKNpG+k947l7pIK7/s=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ZSbfYGryvuPdbGFeyC8yEYaMbdOwrLj0YaVH9yZ7Z+SGOuiWcDdfZjhDvBZ5SUPzs
	 VJojnf+IfkdX/Nn00lt0OxcCFi/oabcOp10oKlQDF5mu9wcQtUe/r1wr0WE1NsBncZ
	 3Mj/i0nofyqcGlBKZWilaleT0CjbibFEHx1f/CUWy4Im+q8D/fWNoEC4hvVB95T2T5
	 1zxO8H9i2HdjqZKmXOZMqNdx7ARq9h/K9q3PvqYEWzud18D57B7Ba85znTKxvY/Sil
	 iFxQ2Uu2iuOcuLHy++4f8/lipZnAtYZ3zMw/lVNbLK/I6hdsELEl/FU36Gd2khxNZV
	 wXnS/4EmhOsZw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QSycIV-hF-qN; Fri, 12 Aug 2022 04:27:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1E50260F5E;
	Fri, 12 Aug 2022 04:27:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1E50260F5E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B25551BF8A8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Aug 2022 04:27:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9308F60F5E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Aug 2022 04:27:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9308F60F5E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eyO79MizmUoR for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Aug 2022 04:27:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 882BF605B1
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 882BF605B1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Aug 2022 04:27:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="377810695"
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="377810695"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 21:27:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="638768649"
Received: from lkp-server02.sh.intel.com (HELO 8745164cafc7) ([10.239.97.151])
 by orsmga001.jf.intel.com with ESMTP; 11 Aug 2022 21:27:31 -0700
Received: from kbuild by 8745164cafc7 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oMMGh-00008b-0J;
 Fri, 12 Aug 2022 04:27:31 +0000
Date: Fri, 12 Aug 2022 12:26:31 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62f5d677.2lxW9KCUTwjqdsT8%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660278453; x=1691814453;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=hfByUhxkpJhuUMtSrUmsRS5/w5RPaiBDkAD6lIGYJHE=;
 b=LNMVtkfRJx4g0SB1aKYaY1WaGpzqzvrMTYCJQ8LmlSfUT/xKdcyHoG6+
 X7xa4AVQBhCltzBxHg6YQSSdSpZesL/MJFv77AJxR9SsLvf5MLxk8JSf+
 Z9geyuZGUCH+hyWB7NFJiBAjpYpXW5HXEfSFAaKqCAm89VqUFO9C+XDiT
 GZpLcxRGyGvn4+c357l8uSfFkLDtk2B9aJP3DHXc/rDjX7w32YHaADAYQ
 yNWwErn/w5T143kK4lL6dXqOFLxzHMsIjsFr0PbO0zNrFmM6iUczi8Ztb
 W/uPhU0w3hdqL1Jp338qtSLzXkazKK0f8GpEX1pR1vgVEyfh+sTOMqmRW
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LNMVtkfR
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 3ab1edcec22b7a61cb7d52c29629e519bc0e7d9a
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
branch HEAD: 3ab1edcec22b7a61cb7d52c29629e519bc0e7d9a  ice: Don't double unplug aux on peer initiated reset

elapsed time: 716m

configs tested: 74
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                           x86_64_defconfig
um                             i386_defconfig
i386                                defconfig
arc                  randconfig-r043-20220811
x86_64                              defconfig
x86_64                               rhel-8.3
m68k                             allmodconfig
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                           allyesconfig
arm                                 defconfig
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allyesconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a015
x86_64                        randconfig-a002
x86_64                    rhel-8.3-kselftests
x86_64                        randconfig-a006
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
i386                          randconfig-a001
i386                          randconfig-a003
i386                             allyesconfig
i386                          randconfig-a005
ia64                             allmodconfig
arm                              allyesconfig
powerpc                           allnoconfig
i386                          randconfig-a014
arm64                            allyesconfig
sh                               allmodconfig
i386                          randconfig-a012
i386                          randconfig-a016
mips                             allyesconfig
powerpc                          allmodconfig
xtensa                  cadence_csp_defconfig
arm64                            alldefconfig
ia64                            zx1_defconfig
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
loongarch                           defconfig
loongarch                         allnoconfig
sh                   secureedge5410_defconfig
sh                          rsk7264_defconfig
m68k                       m5475evb_defconfig
sh                        sh7757lcr_defconfig
arc                           tb10x_defconfig
sh                            titan_defconfig
arm                           tegra_defconfig
i386                          randconfig-c001

clang tested configs:
riscv                randconfig-r042-20220811
hexagon              randconfig-r041-20220811
hexagon              randconfig-r045-20220811
s390                 randconfig-r044-20220811
x86_64                        randconfig-a016
x86_64                        randconfig-a012
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a014
x86_64                        randconfig-a003
i386                          randconfig-a002
i386                          randconfig-a013
i386                          randconfig-a004
i386                          randconfig-a006
i386                          randconfig-a011
i386                          randconfig-a015
x86_64                        randconfig-k001
powerpc                 xes_mpc85xx_defconfig
arm                   milbeaut_m10v_defconfig
powerpc                     kmeter1_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
