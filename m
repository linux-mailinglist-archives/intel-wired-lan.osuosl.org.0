Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 44A756162A9
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Nov 2022 13:26:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A13B34136B;
	Wed,  2 Nov 2022 12:26:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A13B34136B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667391976;
	bh=9/0SpEK0MvhQQfIc66P/GXWYcYbdQZGi+2Ft/HEC/48=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=WeKpFpciqM0msTQasLzLCw37gPwBreP2QitmwMy4zK1hFmg4BKIsQqojJxnrIgq8u
	 xf/EjL4gyun+pCHnjnpOmMQDfE0UEIc1ggmJHgGH6l2yJ2KDCTvB6pnIx9NJYucJ4o
	 IG7HfRTQ0jW9DYNtZ9e+nlp02iPV6aMUJzLDZ8ZfMRJTatsOXmxniVb/b45LMnPMTj
	 Rj93NVQZBBqb+GmgYPd+fLFU4uZmpvZuXqyDa5Xf4WQsRWyWTxeIiVbhaQdsVEdkFO
	 1humD8pHJf4uIO6ejwHu3lF4bE2n1Ykwaplkbot/at7+e24EQp79q96TqRbIWfehzj
	 cevnAJabaNdJA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tZBQ3f2GOmAe; Wed,  2 Nov 2022 12:26:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1652F410B0;
	Wed,  2 Nov 2022 12:26:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1652F410B0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 12C981BF366
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Nov 2022 12:26:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id ED6D260E64
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Nov 2022 12:26:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ED6D260E64
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5_f7bTqHd8R3 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Nov 2022 12:26:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6629660E5E
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6629660E5E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Nov 2022 12:26:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="309388728"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="309388728"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 05:25:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="612224253"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="612224253"
Received: from lkp-server02.sh.intel.com (HELO b6d29c1a0365) ([10.239.97.151])
 by orsmga006.jf.intel.com with ESMTP; 02 Nov 2022 05:25:55 -0700
Received: from kbuild by b6d29c1a0365 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oqCod-000Ejp-0T;
 Wed, 02 Nov 2022 12:25:55 +0000
Date: Wed, 02 Nov 2022 20:25:35 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <636261bf.+ecAXJKluLxxCdAk%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667391965; x=1698927965;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=GCBUCCmMWrw+qc6aP6gsdwc4SscArrqWfbrN85HD0M8=;
 b=MRJD3KuoPl3j8ZGtvHfyCF3Qv13+HUpFJgPxoqJhtuLiDbmf9mIdhew8
 o8ftcTnaJHmGs9DJc0ms9G+6jUrVkhPH/p6xvhsDXGcM+QelFXLMhj9dN
 ut+ZGb+7sjlnAVHpA6o32wSe/QG4PXpn5nvH3gyFd0LYO6qqUraP4WXSk
 6uG44iIlHH78feHgWPbahJzL2UNMVjlMj6uLYeu8W7JdMYvM7Iw/3Lkgd
 CJq5xTRg3ll7P2akgWkKFqK9p9Y2/S/pjyUQHRIXYMveCYCGSqZ5DGT/S
 e2yZNYYQD18zZ68SX0pOodk7tlvcFVon2sGzsJ5XgzrcT4asFhxiKy7M7
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MRJD3Kuo
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 40a071cf7985cd785bd51488662e26203e5b83c0
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
branch HEAD: 40a071cf7985cd785bd51488662e26203e5b83c0  i40e (gcc13): synchronize allocate/free functions return type & values

elapsed time: 726m

configs tested: 90
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
alpha                               defconfig
s390                                defconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
s390                             allmodconfig
um                             i386_defconfig
um                           x86_64_defconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                              defconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
s390                             allyesconfig
arc                  randconfig-r043-20221101
x86_64                               rhel-8.3
m68k                             allmodconfig
arm                                 defconfig
i386                 randconfig-a011-20221031
i386                 randconfig-a012-20221031
i386                 randconfig-a013-20221031
i386                 randconfig-a016-20221031
i386                 randconfig-a014-20221031
i386                                defconfig
arc                              allyesconfig
ia64                             allmodconfig
alpha                            allyesconfig
i386                 randconfig-a015-20221031
x86_64                           allyesconfig
m68k                             allyesconfig
x86_64                        randconfig-a013
x86_64                        randconfig-a011
arm                              allyesconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
x86_64                        randconfig-a015
arm64                            allyesconfig
sh                               allmodconfig
mips                             allyesconfig
i386                             allyesconfig
x86_64               randconfig-k001-20221031
sparc                             allnoconfig
xtensa                    smp_lx200_defconfig
arm                          gemini_defconfig
sh                 kfr2r09-romimage_defconfig
xtensa                       common_defconfig
arm64                            alldefconfig
powerpc                 linkstation_defconfig
m68k                        stmark2_defconfig
arm                            mps2_defconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arm                        keystone_defconfig
powerpc                     stx_gp3_defconfig
arm                         cm_x300_defconfig
mips                           xway_defconfig
arm                      footbridge_defconfig
powerpc                     taishan_defconfig
sh                  sh7785lcr_32bit_defconfig
alpha                             allnoconfig
i386                          randconfig-c001
i386                 randconfig-c001-20221031
powerpc                      arches_defconfig
powerpc                    klondike_defconfig

clang tested configs:
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a003
hexagon              randconfig-r041-20221101
hexagon              randconfig-r045-20221101
s390                 randconfig-r044-20221101
riscv                randconfig-r042-20221101
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
arm                        vexpress_defconfig
powerpc                       ebony_defconfig
powerpc                      obs600_defconfig
hexagon              randconfig-r041-20221102
hexagon              randconfig-r045-20221102
arm                      pxa255-idp_defconfig
mips                      bmips_stb_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
