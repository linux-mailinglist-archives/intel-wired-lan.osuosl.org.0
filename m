Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AE85764F8E8
	for <lists+intel-wired-lan@lfdr.de>; Sat, 17 Dec 2022 13:07:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9992060C22;
	Sat, 17 Dec 2022 12:07:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9992060C22
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671278826;
	bh=F48nrpHE9vv53NQ+MjC+pnztUbXC10IrjfE2LpJsFj8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=oH+x0VugWhswO4YFzIGG3P2ETGpUOedVD3vfjPMf9xDH3OY34SUto9Qv3xR7goz0i
	 yK5mKw8h6yXPkRhRx5scAQwNMUAmT5OdToWJG3imZK5sDfs70YsNcsyiDbU2gOkJUr
	 kXHYsHMPq/t4ifGH4/HPNCBkTY4qnXWB2Ix3FxnfGUQkxyBVc6xmTL/YlRr5Eh4MYt
	 bY14wM7LYT77l8awUxEja7mJxwmGNfcXEVgxy8UjgGiAxnMjMePabX4OmyLbllWRh0
	 2eY//rltmRfaM+6LYaK4tsWj2cLSA6ZF6/XaasCNgCuDx+jTqYuR11O1S38iepDV+d
	 B4ZXghJWshDCA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1oH7CcvLxLhJ; Sat, 17 Dec 2022 12:07:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8C73560C28;
	Sat, 17 Dec 2022 12:07:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8C73560C28
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D84291BF28D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Dec 2022 12:07:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id ADE2741841
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Dec 2022 12:07:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ADE2741841
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gUpqafPe9YDR for <intel-wired-lan@lists.osuosl.org>;
 Sat, 17 Dec 2022 12:06:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7B7C14182E
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7B7C14182E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Dec 2022 12:06:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10563"; a="299456714"
X-IronPort-AV: E=Sophos;i="5.96,252,1665471600"; d="scan'208";a="299456714"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2022 04:06:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10563"; a="738827873"
X-IronPort-AV: E=Sophos;i="5.96,252,1665471600"; d="scan'208";a="738827873"
Received: from lkp-server01.sh.intel.com (HELO b5d47979f3ad) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 17 Dec 2022 04:06:56 -0800
Received: from kbuild by b5d47979f3ad with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p6Vxw-0007kI-0J;
 Sat, 17 Dec 2022 12:06:56 +0000
Date: Sat, 17 Dec 2022 20:06:47 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <639db0d7.0sAFonNoqHwTTULP%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671278818; x=1702814818;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=3mjSjLrKT/ypqRBYdZ5oeAYIHGF1tgL2o/MaL5eUkuU=;
 b=OhsOohB9lQcETJqvf4DLMsr0FlUZhxbleHD309B0AuVJ5PhkftvXC9m1
 NVCP4iX/pVktSbDVWaJ4oPIAQQTQVGLVIsf+ts6L3/xMza1RR2wl8XQ7e
 wjtM4Msp/amMwpH9B4pdfXRnDgjX/h74DyQdLDLyZdTnus6gFwMBY4CKR
 8wemHv7REFztCQYNnKTLGCkRbr5IsOl5guK7cXxpSaulX3xJx+v7VGY8q
 W0xFTKepoEVWOezBReNBscmKE+NS/NTLDiqDvv6EHM/PwL8RliTtLpvgb
 iE+aEdDNzDveH7oslaixCLGgd2pKJDM/iD0npXo2USvBMp7+Z76fSWH19
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OhsOohB9
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 252af9353fffa08af1d0995959a991cd91100387
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 252af9353fffa08af1d0995959a991cd91100387  igc: Add qbv_config_change_errors counter

elapsed time: 725m

configs tested: 62
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
i386                                defconfig
x86_64                               rhel-8.3
x86_64                        randconfig-a013
x86_64                        randconfig-a004
x86_64                        randconfig-a011
powerpc                           allnoconfig
m68k                             allmodconfig
x86_64                           allyesconfig
x86_64                        randconfig-a015
arc                              allyesconfig
i386                          randconfig-a001
ia64                             allmodconfig
alpha                            allyesconfig
x86_64                        randconfig-a002
m68k                             allyesconfig
i386                          randconfig-a003
x86_64                          rhel-8.3-func
arc                                 defconfig
x86_64                    rhel-8.3-kselftests
s390                             allmodconfig
alpha                               defconfig
sh                               allmodconfig
i386                          randconfig-a014
i386                          randconfig-a005
x86_64                        randconfig-a006
arm                                 defconfig
s390                                defconfig
s390                             allyesconfig
mips                             allyesconfig
riscv                randconfig-r042-20221216
powerpc                          allmodconfig
i386                          randconfig-a012
i386                          randconfig-a016
arc                  randconfig-r043-20221216
s390                 randconfig-r044-20221216
x86_64                           rhel-8.3-bpf
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
i386                             allyesconfig
arm                              allyesconfig
arm64                            allyesconfig
x86_64                            allnoconfig

clang tested configs:
x86_64                        randconfig-a014
x86_64                        randconfig-a012
x86_64                          rhel-8.3-rust
x86_64                        randconfig-a016
x86_64                        randconfig-a005
x86_64                        randconfig-a001
i386                          randconfig-a002
i386                          randconfig-a013
arm                  randconfig-r046-20221216
i386                          randconfig-a006
x86_64                        randconfig-a003
hexagon              randconfig-r041-20221216
i386                          randconfig-a004
i386                          randconfig-a011
hexagon              randconfig-r045-20221216
i386                          randconfig-a015

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
