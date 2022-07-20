Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 22FC857B55E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Jul 2022 13:27:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 12E0F60E39;
	Wed, 20 Jul 2022 11:27:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 12E0F60E39
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658316466;
	bh=+qzSRb6zyyP15hnMAJTTKP+oAavMnZJXzAnkG3J9iNI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=eBfxeZb49+b4D1xWEPdN3HIatWdHhRNh8pIsvcScYyGPFnJZudpJAAyTe2DEvQqwz
	 rtoUCMgMNLgvynJzI2UIH9yH7BGS8UULmGATDlw2OHeKH+Bmto37TfHDbnbmfhbHku
	 AQJzw99ed5E++7CmOZc+rP2nhQXAGrZHphQ1FczckIEouzc7FG88VpVdHaWwTGxfOn
	 PU1eQxmGiKncAvcUXZfkCrsCJyFXA574oZaj9H8iO8GkkaFyTLUsnTD+28zpF/hnag
	 Li9ZEBMwQKi5oN6qi145V7EJ/WG5oVMPtUxP3JawnNd9liddlGwAaR5bVtilXv6YwS
	 YqVkAu8+qxutA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PNZakqTD_-1n; Wed, 20 Jul 2022 11:27:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 064526060A;
	Wed, 20 Jul 2022 11:27:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 064526060A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6DBCF1BF85D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jul 2022 11:27:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 539AB824CE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jul 2022 11:27:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 539AB824CE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HF5G0Z9jf6oG for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Jul 2022 11:27:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 71183824A4
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 71183824A4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jul 2022 11:27:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10413"; a="266529568"
X-IronPort-AV: E=Sophos;i="5.92,286,1650956400"; d="scan'208";a="266529568"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2022 04:27:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,286,1650956400"; d="scan'208";a="925196569"
Received: from lkp-server01.sh.intel.com (HELO 7dfbdc7c7900) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 20 Jul 2022 04:27:35 -0700
Received: from kbuild by 7dfbdc7c7900 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1oE7ra-0000S1-Vd;
 Wed, 20 Jul 2022 11:27:34 +0000
Date: Wed, 20 Jul 2022 19:26:42 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62d7e672.pgjiY+j70ZLGkJ4m%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658316458; x=1689852458;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=J/R8LDfMpuYUT8vVEjmhVryosAHrC9RbuL9taEF8BvU=;
 b=iukudv6kb3BTx5PrgJpl2sIxz2asSkJsG4Is46+7+SiMOspMe1EsvB10
 uNTXZPrXV/oOe0vY0VauwicNe4wVoO+kQmDrPsf5DtxC2k8JEccvyiIKl
 m632/cvd9NQi76bk/QRs/Toflqy7rmU5RchlEDiZOtd0Fyr4cWd3p3ZO/
 NVOm3zPuBYZR0u2h1xBiRCBxh2oG58tJNB/mbAplf/mcSlFPVGpM6VJzF
 AnI9gLZeEVeQNJgUoGnFgqX5EDInf1uhYsM10QysSlB4S4Ent2wFY8MjB
 U713WtKz+VROuoVrERrAVOO9iZwH3jRDEfwNkWZ76t5F4fUoHymHiz4q/
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iukudv6k
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 717eef757c4e973b8d5e16f1d38b3f29f61d4fc9
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
branch HEAD: 717eef757c4e973b8d5e16f1d38b3f29f61d4fc9  iavf: Fix reset error handling

elapsed time: 729m

configs tested: 82
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
i386                          randconfig-c001
arm                        realview_defconfig
arm                             rpc_defconfig
powerpc                     sequoia_defconfig
powerpc                 mpc837x_rdb_defconfig
powerpc                    sam440ep_defconfig
xtensa                    smp_lx200_defconfig
powerpc                      ep88xc_defconfig
arm                      footbridge_defconfig
x86_64                              defconfig
sh                        sh7757lcr_defconfig
loongarch                           defconfig
loongarch                         allnoconfig
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
i386                             allyesconfig
i386                                defconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
x86_64               randconfig-a014-20220718
x86_64               randconfig-a016-20220718
x86_64               randconfig-a012-20220718
x86_64               randconfig-a013-20220718
x86_64               randconfig-a015-20220718
x86_64               randconfig-a011-20220718
i386                 randconfig-a015-20220718
i386                 randconfig-a011-20220718
i386                 randconfig-a012-20220718
i386                 randconfig-a014-20220718
i386                 randconfig-a016-20220718
i386                 randconfig-a013-20220718
s390                 randconfig-r044-20220718
riscv                randconfig-r042-20220718
arc                  randconfig-r043-20220718
x86_64                    rhel-8.3-kselftests
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                          rhel-8.3-func

clang tested configs:
arm                     am200epdkit_defconfig
riscv                            alldefconfig
arm                        magician_defconfig
hexagon                          alldefconfig
mips                          ath25_defconfig
x86_64                        randconfig-k001
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a003
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
i386                 randconfig-a004-20220718
i386                 randconfig-a001-20220718
i386                 randconfig-a005-20220718
i386                 randconfig-a006-20220718
i386                 randconfig-a002-20220718
i386                 randconfig-a003-20220718
x86_64               randconfig-a001-20220718
x86_64               randconfig-a005-20220718
x86_64               randconfig-a003-20220718
x86_64               randconfig-a002-20220718
x86_64               randconfig-a006-20220718
x86_64               randconfig-a004-20220718
hexagon              randconfig-r041-20220718
hexagon              randconfig-r045-20220718

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
