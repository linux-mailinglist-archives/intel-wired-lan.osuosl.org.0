Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACFC2676648
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Jan 2023 13:52:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CDA644058E;
	Sat, 21 Jan 2023 12:52:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CDA644058E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674305550;
	bh=d9IIfG4XjMilDahBItx6KM8P5xc1n0MMVfADlbotLGo=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=5ATXdP+T8d124I92MvYZU2iBGiXntHjhI1ypmPLTimDyvmAQL7loji44CUNJ9rfKc
	 bIS3Jd9w6NyTC+KQF1QA31P42YFkYF2teGdEzLxpv1RzF6HLVGECOMEfMdaHa3tvlM
	 oZg6k1R7h4QTEuLQU1ZJZGinwKah0cZWfFLwXk5Bgvwexph6kFb0opa3whBAGyEZA/
	 O1C9+nGBdGTVVSxbyf5rExXnDVNmVGtFpWc5QbLrV4zvLpYrV0vcLJRcvA5CC/RZPY
	 PDAD4iXWqOG3VzqpBjcfnI2O29KyP5Cxl9Ic0PF/KaPH7i6snLHqAGnHEfulcdH2tR
	 DwF7i7Y0TKviQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uR1IsMfsLt8N; Sat, 21 Jan 2023 12:52:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B675B40320;
	Sat, 21 Jan 2023 12:52:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B675B40320
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4D1D11BF5F6
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Jan 2023 12:52:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3103660BB4
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Jan 2023 12:52:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3103660BB4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VWaQt1hR-ZM9 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Jan 2023 12:52:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 290BE60B9C
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 290BE60B9C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Jan 2023 12:52:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10596"; a="305450273"
X-IronPort-AV: E=Sophos;i="5.97,235,1669104000"; d="scan'208";a="305450273"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2023 04:52:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10596"; a="691362948"
X-IronPort-AV: E=Sophos;i="5.97,235,1669104000"; d="scan'208";a="691362948"
Received: from lkp-server01.sh.intel.com (HELO 5646d64e7320) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 21 Jan 2023 04:52:21 -0800
Received: from kbuild by 5646d64e7320 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pJDM4-00044M-1T;
 Sat, 21 Jan 2023 12:52:20 +0000
Date: Sat, 21 Jan 2023 20:51:57 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63cbdfed.oFyzB3LCfC9iEFKb%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674305543; x=1705841543;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=9v7ge0oMFBN5PV3OZl2YYKEwXV1BfOsFDcPw3IWH+Io=;
 b=CSiTqXFZCTfWIkrl/S0E6JIsozLZC9gxAu+3cLm0XsaIYOzBPpyYT+G1
 vNeO062BmeWHLVDD3AtD2Rs7XhwXAYCmt46eCnpV0QSQ8/dctSM6FyM2x
 0ITo4qJt0mCMS5cSw+iTRG8wu0BNlZYGzbuiG8SbHGGt14Bzv5Lb787ux
 Uzr4L1Sa4Ix6Zt6Bd3uBJcTLuy38nFbZCquMnLTQV2sr3Zw6/TtOu0gSm
 xJUVtIf8OiSuuDfzIBmWXtPmH/ZPdMZvMhkjNFK1Ax0SEKCu+GkXGB9Hh
 YOTWeQC0wlgXB+LkCfpqnlU79p9A97HzO86owakaoBFEKwJyYS0N6dbac
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CSiTqXFZ
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 65cdfcc3e172e7aa64ed4f881b053b4f6232d064
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
branch HEAD: 65cdfcc3e172e7aa64ed4f881b053b4f6232d064  ixgbe: Remove redundant pci_enable_pcie_error_reporting()

elapsed time: 811m

configs tested: 89
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
um                           x86_64_defconfig
um                             i386_defconfig
arm                  randconfig-r046-20230119
arc                  randconfig-r043-20230119
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                           rhel-8.3-bpf
x86_64                         rhel-8.3-kunit
s390                                defconfig
s390                             allmodconfig
arc                                 defconfig
alpha                               defconfig
s390                             allyesconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
ia64                             allmodconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
i386                             allyesconfig
i386                                defconfig
i386                          randconfig-c001
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
arm                            hisi_defconfig
arm                      footbridge_defconfig
mips                           ci20_defconfig
sh                         apsh4a3a_defconfig
mips                           ip32_defconfig
mips                      maltasmvp_defconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
s390                       zfcpdump_defconfig
sh                           se7751_defconfig
sh                          rsk7269_defconfig
mips                        vocore2_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
arm                            lart_defconfig
sh                        edosk7760_defconfig
mips                         rt305x_defconfig
m68k                       bvme6000_defconfig
sh                           se7780_defconfig
sh                   sh7770_generic_defconfig
loongarch                         allnoconfig
sparc                       sparc32_defconfig
sh                          kfr2r09_defconfig
xtensa                       common_defconfig
m68k                        m5307c3_defconfig
arm                            mps2_defconfig

clang tested configs:
riscv                randconfig-r042-20230119
hexagon              randconfig-r041-20230119
s390                 randconfig-r044-20230119
hexagon              randconfig-r045-20230119
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
x86_64                          rhel-8.3-rust
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64                        randconfig-k001

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
