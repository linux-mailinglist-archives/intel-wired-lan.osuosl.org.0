Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C00B658BFB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Dec 2022 11:52:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6D88C81980;
	Thu, 29 Dec 2022 10:52:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6D88C81980
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672311130;
	bh=StwKbYfOP80/92gvlmYdPscu88bMWxKhMbI/iuMVQNw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=9AmFyxHy/wSVSqgO+xwn8EF4HPbQ41pRqDcmOVUYAv2iijx0vYJ4+JtTxxRPuxBBu
	 nTYqLNoathTi/etUjQ0yKjV9Ex22FyqTDVLENVNIeGlkavBSgo/Aqzwq8OzVNFR1J7
	 fMNevK0IVB3N0zfD+mSSXW2ie/+Qd2cRQxIGIx1YO18LM/33cc49cRlRGP0OlOdoSJ
	 xbPODAgcENnVX7qt5wqK6s/Hv0S0Rfo/Br4SPJDjZIT8VtS4flxELtRChFs9p9B0ey
	 ksB9pg9/k2iBf62zc8yiKUPbBMtsToAl4FwagK6LzEV79UuGvyIQreCLDyEjqt7Y4/
	 IP8ECC8xdiJqg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g8QgBVmCS2m7; Thu, 29 Dec 2022 10:52:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 689AE81975;
	Thu, 29 Dec 2022 10:52:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 689AE81975
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D74601BF47F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Dec 2022 10:52:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BAB6C60D61
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Dec 2022 10:52:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BAB6C60D61
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Bv3oQ8LkAv13 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Dec 2022 10:52:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8014F600C4
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8014F600C4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Dec 2022 10:52:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10574"; a="304520738"
X-IronPort-AV: E=Sophos;i="5.96,283,1665471600"; d="scan'208";a="304520738"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2022 02:52:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10574"; a="777664693"
X-IronPort-AV: E=Sophos;i="5.96,283,1665471600"; d="scan'208";a="777664693"
Received: from lkp-server01.sh.intel.com (HELO b5d47979f3ad) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 29 Dec 2022 02:52:00 -0800
Received: from kbuild by b5d47979f3ad with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pAqVz-000GZN-2t;
 Thu, 29 Dec 2022 10:51:59 +0000
Date: Thu, 29 Dec 2022 18:51:51 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63ad7147.kDNTVlas+VWrzsJi%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672311122; x=1703847122;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=KJ8dSXAKf09LzckoELJYN1GJNfXIvVLVZ2tLd55szpo=;
 b=a2SC5Bb0Qu00VAsB5PmPw6ooVvWZ1hX/Phb5Qr3epmKEws74G6acdwvG
 GzwMcAhnZM+/tr194fZK4PxRJKm+rqz+W68byOL8SxNMy9JmuoOMeiIQY
 GkYCcTtQzzyHqdilyzU3TXQf6cTPB7Sn83vqIyv0z4O4G5QsWAcJE3mVV
 Zw7lKoZkbcpAsWHHgJMLea9iZPk6Gg6X6aODZxVfb/cusNIFRaVcUGxeR
 /cMcustbD1VPt3g2yE9TBMaG0Cuuxqpx7WC57cQiDEsuLtt0RzOlbcF/Y
 ITtQgiIkUdmVbqJAkL2QRXHgtwEflWW+UQpU1YjBL+nzjyPziIPM9dZgl
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=a2SC5Bb0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 519e8ac228af6b56bda8672dab652955623b7853
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
branch HEAD: 519e8ac228af6b56bda8672dab652955623b7853  ice: use debugfs to output FW log data

elapsed time: 726m

configs tested: 94
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
alpha                               defconfig
powerpc                           allnoconfig
um                           x86_64_defconfig
um                             i386_defconfig
sh                               allmodconfig
i386                                defconfig
mips                             allyesconfig
powerpc                          allmodconfig
m68k                             allmodconfig
alpha                            allyesconfig
m68k                             allyesconfig
i386                 randconfig-a012-20221226
arc                              allyesconfig
x86_64                              defconfig
i386                 randconfig-a011-20221226
s390                                defconfig
i386                 randconfig-a013-20221226
s390                             allmodconfig
i386                 randconfig-a014-20221226
x86_64                          rhel-8.3-func
i386                 randconfig-a016-20221226
x86_64                               rhel-8.3
x86_64                    rhel-8.3-kselftests
x86_64               randconfig-a012-20221226
i386                 randconfig-a015-20221226
ia64                             allmodconfig
x86_64               randconfig-a014-20221226
x86_64                           rhel-8.3-bpf
x86_64                           allyesconfig
arm                                 defconfig
x86_64               randconfig-a013-20221226
x86_64                           rhel-8.3-syz
x86_64               randconfig-a011-20221226
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64               randconfig-a015-20221226
x86_64               randconfig-a016-20221226
s390                             allyesconfig
i386                             allyesconfig
arm64                            allyesconfig
arm                              allyesconfig
arm                  randconfig-r046-20221225
arc                  randconfig-r043-20221225
arc                  randconfig-r043-20221227
arm                  randconfig-r046-20221227
arc                  randconfig-r043-20221226
x86_64                            allnoconfig
riscv                randconfig-r042-20221226
s390                 randconfig-r044-20221226
sh                             sh03_defconfig
m68k                          hp300_defconfig
arc                     haps_hs_smp_defconfig
arm                       multi_v4t_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
arm                             pxa_defconfig
m68k                        m5407c3_defconfig
sh                        dreamcast_defconfig
nios2                         3c120_defconfig
i386                          randconfig-c001
m68k                         apollo_defconfig
powerpc                     redwood_defconfig
arm                           h3600_defconfig
powerpc                     asp8347_defconfig

clang tested configs:
x86_64                          rhel-8.3-rust
x86_64               randconfig-a002-20221226
x86_64               randconfig-a003-20221226
i386                 randconfig-a004-20221226
x86_64               randconfig-a006-20221226
x86_64               randconfig-a001-20221226
i386                 randconfig-a001-20221226
x86_64               randconfig-a004-20221226
i386                 randconfig-a003-20221226
i386                 randconfig-a002-20221226
i386                 randconfig-a006-20221226
x86_64               randconfig-a005-20221226
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
x86_64                        randconfig-k001

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
