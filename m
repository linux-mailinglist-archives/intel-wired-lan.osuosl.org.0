Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EA450660CA3
	for <lists+intel-wired-lan@lfdr.de>; Sat,  7 Jan 2023 07:18:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6BAD540305;
	Sat,  7 Jan 2023 06:18:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6BAD540305
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673072309;
	bh=w3RW/gOivrCYVVLCMoesY8EjHyIsTgmOvnPrYx0GVIE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=J4rJLrYZbyqgN6gTHhv5lKGVgVQR6koKwQUiVyc+dnH2sr9H6e98VzXtyP5yOJQFA
	 V+H5nuaLcCwtMEk13pa0pFnb9AXxZWOTDs75M6yUdGBFrdz9O73r4XM4G4pBEY77Kx
	 QxHEnru6c1NnmGkH8VaTxeF8snaVBwZcGFel+soO+miLWZ72TjAGLLs8q0x20ggsUz
	 V0xfeHUwoS8GPzqepAvf9OGi9ThH5g9lY65EPxAZt6fBpATSJKFd7yTcWE1PfYjQOT
	 WUx5Z/5/gnznPp2PZo3q695o0S+asCD1onb5kot278efTUeGT2PP95vcbx7MA4qtyc
	 eYG6/TSYzFA5A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8Nlup4lAkPWy; Sat,  7 Jan 2023 06:18:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1369F4027C;
	Sat,  7 Jan 2023 06:18:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1369F4027C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 523EF1BF421
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Jan 2023 06:18:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 39684401AD
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Jan 2023 06:18:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 39684401AD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S0pGyEOUHHnf for <intel-wired-lan@lists.osuosl.org>;
 Sat,  7 Jan 2023 06:18:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0424D400CF
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0424D400CF
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Jan 2023 06:18:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10582"; a="324628596"
X-IronPort-AV: E=Sophos;i="5.96,307,1665471600"; d="scan'208";a="324628596"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2023 22:18:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10582"; a="901506287"
X-IronPort-AV: E=Sophos;i="5.96,307,1665471600"; d="scan'208";a="901506287"
Received: from lkp-server02.sh.intel.com (HELO f1920e93ebb5) ([10.239.97.151])
 by fmsmga006.fm.intel.com with ESMTP; 06 Jan 2023 22:18:18 -0800
Received: from kbuild by f1920e93ebb5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pE2X3-0004LQ-20;
 Sat, 07 Jan 2023 06:18:17 +0000
Date: Sat, 07 Jan 2023 14:18:10 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63b90ea2.dsTO8UVgIzLqt+CF%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673072302; x=1704608302;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=Pg4iAUKvJk0L0K4wW8riF0ROSs2QeWfi/mHMhK40RDM=;
 b=Yj44aP08FBdJRMyFNa62Zm0C+f59O5i5WzcXhH6mHD1A5pkbsGlJP04O
 jxIFcN9LurVZgDTvgPQPNTULvSBy39k4T/90Y1ugbme/ysvZk1G7IsWo4
 f4JulgIxnhnIgX9xtXOtdZ9/JrSoTI05xIJSr8pPZFoyt/iMm4RYnNpt1
 HYaVIAEQNHTAVWUgXSiNzFNGLBX3FyAE+FWbjQCE3t9xXNvCBLWgTnvhO
 7xMBdCu0Oce7xE0d7XGkrHqk0LZhHCukVHl6ePrMNAlV9OmvJ2rCy/ssX
 G14w16mjVh8cvASVxSpDPoTlDn+FyQ1+rks1j2qsG1IUsmeVB2E9nixze
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Yj44aP08
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 1504740fc0229fa18e23c48232af1b8ef66608b2
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
branch HEAD: 1504740fc0229fa18e23c48232af1b8ef66608b2  ice: fix out-of-bounds KASAN warning in virtchnl

elapsed time: 722m

configs tested: 91
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
powerpc                           allnoconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
i386                                defconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
x86_64                        randconfig-a004
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64                        randconfig-a002
i386                          randconfig-a001
arc                  randconfig-r043-20230106
i386                          randconfig-a003
x86_64                        randconfig-a006
arm                  randconfig-r046-20230106
i386                          randconfig-a014
s390                                defconfig
i386                          randconfig-a005
i386                          randconfig-a012
x86_64                           rhel-8.3-bpf
arm                                 defconfig
s390                             allyesconfig
x86_64                           rhel-8.3-syz
i386                          randconfig-a016
x86_64                        randconfig-a013
x86_64                         rhel-8.3-kunit
x86_64                        randconfig-a011
ia64                             allmodconfig
x86_64                           rhel-8.3-kvm
sh                               allmodconfig
m68k                             allmodconfig
x86_64                        randconfig-a015
arc                              allyesconfig
arm64                            allyesconfig
alpha                            allyesconfig
m68k                             allyesconfig
mips                             allyesconfig
arm                              allyesconfig
x86_64                    rhel-8.3-kselftests
powerpc                          allmodconfig
x86_64                          rhel-8.3-func
i386                             allyesconfig
sparc64                             defconfig
powerpc                       ppc64_defconfig
sh                            titan_defconfig
ia64                             alldefconfig
powerpc                     mpc83xx_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
powerpc                 linkstation_defconfig
i386                          randconfig-c001
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
powerpc                      ppc40x_defconfig
arc                              alldefconfig
mips                           ci20_defconfig
arm                        cerfcube_defconfig
m68k                        mvme147_defconfig

clang tested configs:
x86_64                        randconfig-a001
x86_64                        randconfig-a003
i386                          randconfig-a002
hexagon              randconfig-r041-20230106
x86_64                        randconfig-a005
hexagon              randconfig-r045-20230106
i386                          randconfig-a013
i386                          randconfig-a004
riscv                randconfig-r042-20230106
i386                          randconfig-a011
i386                          randconfig-a006
s390                 randconfig-r044-20230106
x86_64                        randconfig-a012
i386                          randconfig-a015
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64                          rhel-8.3-rust
powerpc                 xes_mpc85xx_defconfig
powerpc                          g5_defconfig
arm                          ixp4xx_defconfig
arm                          moxart_defconfig
arm                        neponset_defconfig
x86_64                        randconfig-k001
arm                       aspeed_g4_defconfig
powerpc                     mpc5200_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
