Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD8D1676429
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Jan 2023 07:27:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E2D9140A17;
	Sat, 21 Jan 2023 06:27:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E2D9140A17
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674282431;
	bh=BfBmeqE6flbbN7RFDO2FLpgAcSmsDY78R+XjchCcM14=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=4cGdL6oa+KSA/E2mLloC3IY/Gzc6aiW9HycE1LI02kkUj7Wz9nm+UtAgy4fHll+k5
	 TXHSxcbH+kwoOrUjgn1fppBZ5DVNj4PdE7BfgYPcj3fBCMzph1F9D19U6q0HpYMcER
	 Logm0hmzXSrXW///2X1YF0f2Kgr2r5AGBe/SMnY0wy6gIy4VzX3HiAgxVB9w25Fv07
	 PaguUctGwT4B3+09DLEWJXNM0Yl7u5RvDWR8gdUydeHZej54l/haJGAeaUGAIKBmt+
	 zrYHf5pBuaj+BGkuG1NXyM86YPB3iprVj10oxvoL0Hk0SU5RZUjH00X3PM6/VVnzmi
	 /5bST7KoaEz7w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IODVhrRtY8gV; Sat, 21 Jan 2023 06:27:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BEF9D41707;
	Sat, 21 Jan 2023 06:27:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BEF9D41707
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B69921BF616
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Jan 2023 06:27:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 95DCA60E05
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Jan 2023 06:27:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 95DCA60E05
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id djPg_JpyGRw8 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Jan 2023 06:27:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CF1D760DF0
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CF1D760DF0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Jan 2023 06:27:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10596"; a="388123415"
X-IronPort-AV: E=Sophos;i="5.97,234,1669104000"; d="scan'208";a="388123415"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2023 22:27:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10596"; a="660847251"
X-IronPort-AV: E=Sophos;i="5.97,234,1669104000"; d="scan'208";a="660847251"
Received: from lkp-server01.sh.intel.com (HELO 5646d64e7320) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 20 Jan 2023 22:27:00 -0800
Received: from kbuild by 5646d64e7320 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pJ7LA-0003fK-0R;
 Sat, 21 Jan 2023 06:27:00 +0000
Date: Sat, 21 Jan 2023 14:26:54 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63cb85ae.53BWsfW/eNznqXDD%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674282422; x=1705818422;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=VevMgB1OUo3Xws/UkQlbuw52N+KAL2NOu37vGKmGxQM=;
 b=MbOBhHlagES74ylBcyG71aCfavr8+5kGDJ3soGVfmjv9VTaUVnTxTNRr
 V3a3KTRJBjks9sGuBU2zFRJs4z6ZSqLpEwopcWq5/peS6giHO1M1LmTNX
 SXAMCr1hv2LxthOCsRFqgK0MRw7r5h68zuPpqpWAC8wUv24oW0vwJEcV5
 KL+7o90O4I5T7L3FXCBU3t9cm8SG72yErFhTajS4RgQvt6qqLiH1Mu6A1
 cNG4UEimSzCkqrExH/Ya3ARL1GTlKu3KEqqgh4Q6ByVpwsyFJH6pyRblG
 Un5DWipU4fSFEjLV6VEU0W0qBu69I3uneKC8vwlBeuiV0p4SNC70uKiVI
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MbOBhHla
Subject: [Intel-wired-lan] [tnguy-net-queue:40GbE] BUILD SUCCESS
 e2b53ea5a7c1fb484277ad12cd075f502cf03b04
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 40GbE
branch HEAD: e2b53ea5a7c1fb484277ad12cd075f502cf03b04  iavf: schedule watchdog immediately when changing primary MAC

elapsed time: 722m

configs tested: 66
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
x86_64                            allnoconfig
s390                                defconfig
s390                             allyesconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-bpf
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
i386                          randconfig-c001
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
um                           x86_64_defconfig
um                             i386_defconfig
ia64                             allmodconfig
i386                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
x86_64                          rhel-8.3-func
alpha                            allyesconfig
arc                              allyesconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
x86_64                    rhel-8.3-kselftests
powerpc                           allnoconfig
powerpc                          allmodconfig
mips                             allyesconfig
i386                             allyesconfig
sh                               allmodconfig
arm                            hisi_defconfig
arm                      footbridge_defconfig
mips                           ci20_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3

clang tested configs:
x86_64                          rhel-8.3-rust
riscv                randconfig-r042-20230119
s390                 randconfig-r044-20230119
hexagon              randconfig-r041-20230119
hexagon              randconfig-r045-20230119
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
mips                       lemote2f_defconfig
powerpc                 mpc832x_mds_defconfig
powerpc                     ksi8560_defconfig
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
powerpc                     tqm8540_defconfig
powerpc                    ge_imp3a_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
