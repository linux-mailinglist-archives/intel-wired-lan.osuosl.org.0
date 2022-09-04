Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 34D0F5AC36E
	for <lists+intel-wired-lan@lfdr.de>; Sun,  4 Sep 2022 10:27:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 34CD260C03;
	Sun,  4 Sep 2022 08:27:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 34CD260C03
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1662280022;
	bh=mf+RBdjV6bEZ6veWUNNPI8E4Gee1VSpt7/EXKXUACjU=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=pWJphcHeqcI1iarChJFID/qAtVqQj4Mo/SkXsPMm0LNPfOalJ1EvdPVlpplcems5Z
	 XcmQENttfOU6qh86SN2zJz4KOhZ3EuAqqMWdX4EshNxN/+Q/MOwDuAVopt9j1kYv+T
	 OE++tm1EmpeIzlIk93rraARSWoFb8Y0kkUU0sF5JoJhaQmQbJNKMSZ6Eqvjds8+XS+
	 WtLQ5SHQnotn9CaoK/TN/L5txCTpgDJQ4XncASqnLcw05Tr6Ns6OtzLPx+isQ1c7TY
	 cDoRS5TElszlDSAz2PSxxGUT6A8rqaZbd75pRBMmzicPSEjKDFi9/dIWRwBM0xhNnr
	 OhQ6Ld0OWUFZw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JP2Ms8g5H55C; Sun,  4 Sep 2022 08:27:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EF0ED60C00;
	Sun,  4 Sep 2022 08:27:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EF0ED60C00
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A970A1BF2C2
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Sep 2022 08:26:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7F928408B2
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Sep 2022 08:26:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7F928408B2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Hfi1neB4sDEY for <intel-wired-lan@lists.osuosl.org>;
 Sun,  4 Sep 2022 08:26:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7C998408B4
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7C998408B4
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Sep 2022 08:26:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10459"; a="322387516"
X-IronPort-AV: E=Sophos;i="5.93,288,1654585200"; d="scan'208";a="322387516"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2022 01:26:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,288,1654585200"; d="scan'208";a="858654102"
Received: from lkp-server02.sh.intel.com (HELO 95dfd251caa2) ([10.239.97.151])
 by fmsmga006.fm.intel.com with ESMTP; 04 Sep 2022 01:26:40 -0700
Received: from kbuild by 95dfd251caa2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oUkxj-0002ol-1u;
 Sun, 04 Sep 2022 08:26:39 +0000
Date: Sun, 04 Sep 2022 16:26:27 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63146133.dSz8iMdJyZyCfyLq%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662280013; x=1693816013;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=+VPVLe/AesD7rkTZttITCebb+xZWDyQuV5Gij0ppxZU=;
 b=AUmIc5rl0o2R6XDGLGu+5orXz9sn14iJK7YDORnR/RTYh9vPoLSa8OGr
 KHuwvhe9XP6/KBErXyOP//+GmbTQxA9oxHsJ5k9ZuDzlUFHnsfhGrqutQ
 RZlmJdI93rHPytVH+zsOzAKIxCD5T5YLV+yMABwIVd8ICDt6Jfcno7JfE
 +xSdwM9DEjlsL7hI5dobb9gk5B7/UBEgsXeOtg0aquQpGpleaBELdd7At
 xa9DzDM0WDTQibxEyXyjjVF0tRF4uFqSas0RDYrEnP2rXu7KxjmLRZA3M
 gM1Kki2K4kx0HJH+7ZMXBR8MdXEkt65qIcSEFzIfSnvDxAAvQ9bMnmBze
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AUmIc5rl
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 74b1fd500bada6e045a756e67e2a3402c1e7ce1e
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
branch HEAD: 74b1fd500bada6e045a756e67e2a3402c1e7ce1e  ice: xsk: drop power of 2 ring size restriction for AF_XDP

elapsed time: 724m

configs tested: 73
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
i386                          randconfig-a001
i386                          randconfig-a003
arc                  randconfig-r043-20220904
i386                          randconfig-a005
csky                              allnoconfig
arc                               allnoconfig
x86_64                        randconfig-a013
alpha                             allnoconfig
riscv                             allnoconfig
i386                          randconfig-a014
x86_64                        randconfig-a011
x86_64                        randconfig-a002
x86_64                    rhel-8.3-kselftests
x86_64                           allyesconfig
x86_64                           rhel-8.3-syz
riscv                randconfig-r042-20220904
arm                                 defconfig
x86_64                          rhel-8.3-func
i386                          randconfig-a012
x86_64                         rhel-8.3-kunit
i386                          randconfig-a016
s390                 randconfig-r044-20220904
x86_64                           rhel-8.3-kvm
x86_64                        randconfig-a015
x86_64                        randconfig-a006
x86_64                        randconfig-a004
sh                        edosk7705_defconfig
sh                           se7619_defconfig
ia64                             allmodconfig
m68k                             allmodconfig
ia64                                defconfig
alpha                            allyesconfig
m68k                             allyesconfig
powerpc                          allmodconfig
i386                                defconfig
mips                             allyesconfig
powerpc                           allnoconfig
sh                               allmodconfig
sh                   rts7751r2dplus_defconfig
mips                  maltasmvp_eva_defconfig
sh                           se7721_defconfig
arm                              allyesconfig
arm64                            allyesconfig
i386                             allyesconfig
arc                              allyesconfig
arm                         vf610m4_defconfig
loongarch                 loongson3_defconfig
i386                          randconfig-c001
powerpc              randconfig-c003-20220904

clang tested configs:
i386                          randconfig-a002
i386                          randconfig-a004
arm                          collie_defconfig
i386                          randconfig-a006
hexagon              randconfig-r045-20220904
hexagon              randconfig-r041-20220904
i386                          randconfig-a011
x86_64                        randconfig-a005
x86_64                        randconfig-a016
x86_64                        randconfig-a001
x86_64                        randconfig-a012
i386                          randconfig-a013
x86_64                        randconfig-a014
i386                          randconfig-a015
x86_64                        randconfig-a003
powerpc                     ppa8548_defconfig
arm                            mmp2_defconfig
mips                      bmips_stb_defconfig
powerpc                 mpc836x_rdk_defconfig
mips                     loongson2k_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
