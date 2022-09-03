Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BB5C5ABEAF
	for <lists+intel-wired-lan@lfdr.de>; Sat,  3 Sep 2022 13:15:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0E7E08248F;
	Sat,  3 Sep 2022 11:15:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0E7E08248F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1662203733;
	bh=7Ngc1XmWHwv4tJ2+C93lwfxyoT/GMkamRrzj4WemNnA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=5Mh4DO58xguD9uAcQ455VGMZIsBi8JsIjoLupdnp59Y52d5pi48Nf27koX36BiXpE
	 6raoObV0mQCG5YPGIYvaeA3dV0ym4HWIsjUbv8Opv+fvzPj9WXOsoGKAqOCh+Mf460
	 wQVkceOglcZkYLSFIGTweO4Ty3q8wb54RbfbDXQikPckAAnJy6Sz1XLhAKTBdeyJ9i
	 gwMlideOJI0nkUZjwRxr4GSxwfORJgZJr9kUiG5wqfJjK/iw9ApuGYtc38t3z71KSA
	 gz1J3Iat5SOvlnpwvl5g2qDNdQaCgQ9EAkRIDXSavNTpYDwf84nYlj9X4hasvgKdkm
	 C5y43ZFus1P/g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 43lXgRaxCHad; Sat,  3 Sep 2022 11:15:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B0DBD82451;
	Sat,  3 Sep 2022 11:15:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B0DBD82451
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 149C11BF2A7
 for <intel-wired-lan@lists.osuosl.org>; Sat,  3 Sep 2022 11:15:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E2D2660A93
 for <intel-wired-lan@lists.osuosl.org>; Sat,  3 Sep 2022 11:15:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E2D2660A93
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iDiONLKS25qN for <intel-wired-lan@lists.osuosl.org>;
 Sat,  3 Sep 2022 11:15:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0A90660A6C
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0A90660A6C
 for <intel-wired-lan@lists.osuosl.org>; Sat,  3 Sep 2022 11:15:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10458"; a="294890535"
X-IronPort-AV: E=Sophos;i="5.93,287,1654585200"; d="scan'208";a="294890535"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2022 04:15:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,287,1654585200"; d="scan'208";a="702404461"
Received: from lkp-server02.sh.intel.com (HELO 95dfd251caa2) ([10.239.97.151])
 by FMSMGA003.fm.intel.com with ESMTP; 03 Sep 2022 04:15:24 -0700
Received: from kbuild by 95dfd251caa2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oUR7T-0001Xh-2j;
 Sat, 03 Sep 2022 11:15:23 +0000
Date: Sat, 03 Sep 2022 19:14:56 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63133730.gyk1uHtGtAaHGgb9%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662203726; x=1693739726;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=UtN3HKMRwp0vaGWqxw/BSI+SviRs0xqT81ceGvDScGQ=;
 b=TJ8JsStfkfIC1vS2ZYIMNFC6gkzOee2ZVxZKg5D4BSLkBRO8NY0rcEHq
 hMUJSF0IeHDlbLyqj0Xd0XYAD4GqjQdGs/cOsnERzgYMH4yBMTUxxkbLt
 J3RZvP1uMHJVp+uUgkwatgOryJT+/wJN3ZsSbyGazzxUSqctlhQdXl04F
 7WEfHd588EPYyEUcb8wQL8AIhjxas1FzdDhaESA3ZQG2ZcW6vkec3SIHy
 QYF964ECngn1sncxVx/bVSKUbV1H32vINWtLIElWnqwudLcG6jpPTEhiS
 miJP0YZd6o8hhh9J5CcTcLM5Saa96OiypzesZ84uGKR3fRWFUtQV/8HVi
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TJ8JsStf
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 0d5604136d834735be2723175a20d65ed3d42781
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
branch HEAD: 0d5604136d834735be2723175a20d65ed3d42781  ice: xsk: drop power of 2 ring size restriction for AF_XDP

elapsed time: 754m

configs tested: 92
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                           x86_64_defconfig
um                             i386_defconfig
powerpc                          allmodconfig
mips                             allyesconfig
powerpc                           allnoconfig
sh                               allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allmodconfig
m68k                             allyesconfig
x86_64                              defconfig
x86_64                    rhel-8.3-kselftests
m68k                       m5249evb_defconfig
x86_64                          rhel-8.3-func
sh                        dreamcast_defconfig
x86_64                         rhel-8.3-kunit
x86_64                        randconfig-a013
sh                                  defconfig
x86_64                           rhel-8.3-kvm
sh                        apsh4ad0a_defconfig
x86_64                               rhel-8.3
i386                                defconfig
x86_64                        randconfig-a011
x86_64                           rhel-8.3-syz
x86_64                        randconfig-a015
i386                          randconfig-a001
i386                          randconfig-a003
xtensa                              defconfig
i386                          randconfig-a005
arc                  randconfig-r043-20220901
arm                            pleb_defconfig
x86_64                           allyesconfig
arm                           h5000_defconfig
xtensa                  cadence_csp_defconfig
i386                             allyesconfig
arm                                 defconfig
arc                          axs101_defconfig
m68k                        m5407c3_defconfig
arc                  randconfig-r043-20220903
mips                           jazz_defconfig
arm                              allyesconfig
alpha                             allnoconfig
powerpc                     taishan_defconfig
arm64                            allyesconfig
um                               alldefconfig
sh                   rts7751r2dplus_defconfig
arm                           tegra_defconfig
riscv                             allnoconfig
mips                      loongson3_defconfig
csky                              allnoconfig
arc                               allnoconfig
i386                          randconfig-a014
i386                          randconfig-a012
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          randconfig-a016
arc                                 defconfig
alpha                               defconfig
s390                                defconfig
s390                             allmodconfig
i386                          randconfig-c001
s390                             allyesconfig
x86_64                        randconfig-a006
mips                 randconfig-c004-20220901
ia64                             allmodconfig

clang tested configs:
x86_64                        randconfig-a016
x86_64                        randconfig-a012
x86_64                        randconfig-a014
i386                          randconfig-a002
i386                          randconfig-a004
riscv                randconfig-r042-20220903
riscv                randconfig-r042-20220901
hexagon              randconfig-r045-20220901
i386                          randconfig-a006
hexagon              randconfig-r041-20220901
hexagon              randconfig-r045-20220903
arm                        magician_defconfig
s390                 randconfig-r044-20220901
mips                     cu1000-neo_defconfig
hexagon              randconfig-r041-20220903
arm                         s3c2410_defconfig
arm                    vt8500_v6_v7_defconfig
powerpc                 xes_mpc85xx_defconfig
arm                         bcm2835_defconfig
s390                 randconfig-r044-20220903
i386                          randconfig-a013
x86_64                        randconfig-a001
i386                          randconfig-a011
x86_64                        randconfig-k001
i386                          randconfig-a015
x86_64                        randconfig-a003
x86_64                        randconfig-a005

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
