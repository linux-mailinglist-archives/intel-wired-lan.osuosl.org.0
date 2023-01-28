Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A4B567F8A9
	for <lists+intel-wired-lan@lfdr.de>; Sat, 28 Jan 2023 15:24:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C121A60C09;
	Sat, 28 Jan 2023 14:24:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C121A60C09
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674915889;
	bh=bBEDjMd+HP67JfTW3p/UI9Ccv4TGGfYihQA9iB4S2q4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=2hC+E8H6VpJKwMCzG4qx+cw4lYafg6YKbXHsWkeKBhLB/nStpu+CyEkmBDuyi41uo
	 HP3SGM197yhUiAUmNJ0EXBR3aNzhkatEtikLbPs/9qaLaZYqCrrI7peDIz2R/cbO3E
	 65PJ7QBxpyjGcQ74mMKU5WJXsvWoam498Hx8neObSlVpD1YC/H0dm/pmSZM7X4uES9
	 7tKASPw3cQBzY7GezrVfAhYAqKGRRiU8ksnjKDrlJuQVfSg+9OKGHT3I+XH2hkZcR6
	 2orjhmijD75zM9zAgsKpLv/2ZdZeMDdE13zB2PDelKjXq6NB+ZZ2ZKKG/jwG4z+70I
	 6K8Mbm2+OKgWw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UO_Y2fXN8p2E; Sat, 28 Jan 2023 14:24:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AB88960C04;
	Sat, 28 Jan 2023 14:24:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AB88960C04
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 765EC1BF232
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Jan 2023 14:24:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5B52160BF3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Jan 2023 14:24:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5B52160BF3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MNn73-hwy6h7 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 28 Jan 2023 14:24:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7B62860C04
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7B62860C04
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Jan 2023 14:24:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10604"; a="391848041"
X-IronPort-AV: E=Sophos;i="5.97,254,1669104000"; d="scan'208";a="391848041"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2023 06:24:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10604"; a="908982169"
X-IronPort-AV: E=Sophos;i="5.97,254,1669104000"; d="scan'208";a="908982169"
Received: from lkp-server01.sh.intel.com (HELO ffa7f14d1d0f) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 28 Jan 2023 06:24:34 -0800
Received: from kbuild by ffa7f14d1d0f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pLm89-0000mM-1j;
 Sat, 28 Jan 2023 14:24:33 +0000
Date: Sat, 28 Jan 2023 22:24:19 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63d53013.EzUtjtDHZR5mh1HH%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674915876; x=1706451876;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=bilS597m44d0RIr2LZHqwe2MIefZld/dGNGdES7FqT8=;
 b=mRoHewhFZHSpQuDVzsSRDj95FBNHdBsZjkrhG6w1+BUZD9iFennqMQnA
 d9b/83Co+N4R3O948hFK6Ss0P8oTczAtlOZ05buCwE6nMb+oWayGmLLNl
 aYOQz65vohr91f5yDKewLQWSVHLH1Dici49irKGDaYAbndKlmxAcp40h9
 laRb6yUef9NZVrqf3OU1EhKekvpJmF6Ww/odFI/ShYdwctCVa1qtF7BhO
 +0CQrhMTjItEXBikAu/OiHa0r87r47agZU43SX+w7SJEAshctkOAkQWAV
 mMfvkhT6YoIUCXKMjZkkOpt+RVN/pUgXQUQyoSPeWAK6uNXbNMZnOVuKL
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mRoHewhF
Subject: [Intel-wired-lan] [tnguy-net-queue:100GbE] BUILD SUCCESS
 53b9b77dcf48dad1c6111b0c0a7310b3f9364776
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 100GbE
branch HEAD: 53b9b77dcf48dad1c6111b0c0a7310b3f9364776  ice: Fix broken link in ice NAPI doc

elapsed time: 738m

configs tested: 83
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
i386                             allyesconfig
i386                                defconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64               randconfig-a002-20230123
x86_64               randconfig-a005-20230123
x86_64               randconfig-a001-20230123
x86_64               randconfig-a006-20230123
x86_64               randconfig-a003-20230123
x86_64               randconfig-a004-20230123
i386                 randconfig-a004-20230123
i386                 randconfig-a006-20230123
i386                 randconfig-a005-20230123
i386                 randconfig-a002-20230123
i386                 randconfig-a003-20230123
i386                 randconfig-a001-20230123
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
s390                                defconfig
s390                             allmodconfig
arc                                 defconfig
alpha                               defconfig
s390                             allyesconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                           rhel-8.3-bpf
x86_64                         rhel-8.3-kunit
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
um                             i386_defconfig
um                           x86_64_defconfig
ia64                             allmodconfig
i386                 randconfig-c001-20230123
i386                          randconfig-c001
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
m68k                         amcore_defconfig
powerpc                      makalu_defconfig
m68k                        mvme147_defconfig
m68k                          amiga_defconfig
mips                          rb532_defconfig

clang tested configs:
x86_64               randconfig-a013-20230123
x86_64               randconfig-a011-20230123
x86_64               randconfig-a016-20230123
x86_64               randconfig-a012-20230123
x86_64               randconfig-a015-20230123
x86_64               randconfig-a014-20230123
riscv                randconfig-r042-20230123
hexagon              randconfig-r041-20230123
hexagon              randconfig-r045-20230123
s390                 randconfig-r044-20230123
i386                 randconfig-a013-20230123
i386                 randconfig-a016-20230123
i386                 randconfig-a012-20230123
i386                 randconfig-a015-20230123
i386                 randconfig-a011-20230123
i386                 randconfig-a014-20230123
powerpc                 mpc832x_mds_defconfig
powerpc                      walnut_defconfig
arm                        mvebu_v5_defconfig
arm                           sama7_defconfig
x86_64                          rhel-8.3-rust
hexagon              randconfig-r041-20230124
hexagon              randconfig-r045-20230124
arm                  randconfig-r046-20230124

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
