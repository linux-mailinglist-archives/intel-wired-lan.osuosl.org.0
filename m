Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 250A8C763BE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Nov 2025 21:50:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C37D640EDA;
	Thu, 20 Nov 2025 20:50:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D4LRkJxlmdGG; Thu, 20 Nov 2025 20:50:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0415740FD4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763671822;
	bh=lqOzB+QPsmkJ9JwaxfWbUhg/CzPtuBhVB2krH8Q68go=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=nAgjuXrExUH/2uqHZ8A3nC+m0EQA/EtNwF6KGHYoqzfhw685Q8oMWIkeLFme6Qhi7
	 C26BWG0VLVb8ssj1LH7ZLWaHBweA0YAjQs4A1UIFrSRyCzH/Kw4OBtO/OvJVIzVgOD
	 xF4mUzQ5jTR/F0hLMVzg7vtSbvK2A+rYag7I3qNzpuOYplLf6BMjXonhG4z22uG6fT
	 fsc81WNm859xyOon72mNNEx/dyQrq6XqhubAnjd4yAPMJ0n3eK2/5vQaWe8CUwvW2b
	 0kvrCsvq/WnFrETLRYn1j633hHOUfsCcI7a/dN9ci7lJ7aCgbg5p4jiWY3C5Kl2XZN
	 mchGIlY2TAfgg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0415740FD4;
	Thu, 20 Nov 2025 20:50:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id DAF39122
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Nov 2025 20:50:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C1CC140E81
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Nov 2025 20:50:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id egx3ObFLZEY9 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Nov 2025 20:50:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 642AB40D91
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 642AB40D91
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 642AB40D91
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Nov 2025 20:50:18 +0000 (UTC)
X-CSE-ConnectionGUID: UE6XthVqSNSs2fHunLnw7Q==
X-CSE-MsgGUID: +x1SDC1OT/aDIcIovw7aig==
X-IronPort-AV: E=McAfee;i="6800,10657,11619"; a="76372055"
X-IronPort-AV: E=Sophos;i="6.20,213,1758610800"; d="scan'208";a="76372055"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 12:50:17 -0800
X-CSE-ConnectionGUID: iTaxnL6qStilqwk+UpiC/g==
X-CSE-MsgGUID: LNaTWR3lQ/KDFCLovaufXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,213,1758610800"; d="scan'208";a="195775260"
Received: from lkp-server01.sh.intel.com (HELO adf6d29aa8d9) ([10.239.97.150])
 by fmviesa005.fm.intel.com with ESMTP; 20 Nov 2025 12:50:17 -0800
Received: from kbuild by adf6d29aa8d9 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1vMBba-0004Yn-2M
 for intel-wired-lan@lists.osuosl.org; Thu, 20 Nov 2025 20:50:14 +0000
Date: Fri, 21 Nov 2025 04:49:46 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202511210441.4dQpRqtk-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763671818; x=1795207818;
 h=date:from:to:subject:message-id;
 bh=mvmeQXTIkV6Tli8u7nXENmTyMvgIcHTtfrQZCawg/jE=;
 b=cYY8Fw9L+ehoi/IVVssJjiaVav7zU+y/QBZSanmY+Ns2gBT49Kh8zKuU
 fTUK2Zn+v0kdxD3bok7ZU62xqtgB+gt20vBDtTO4aENv64TsJHPW78gu2
 1YOKljJHeT8rRZ1tEbbJgDuvY1Ok5E0/MqSRmJKnzjcoVyDUh/HKXpVAx
 azw1qj0dNDRLrLk+UUSEARqg2N3MjAI8H5DPCBXXvZTakX0EwFbKnEt+t
 Eyz+HQW+btNFt1ye71oChf5tC8KNx28IDPf1K9VfRE4BiX7ifp5DjTUKL
 GL4aLBbnt5LP6hzgpRAefGr8ibzSqKl6sCUp3+TrDJH2zwbNs0KsnFPzj
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cYY8Fw9L
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 2fcc88754f4c49e3d9aef226fdfaa1634aa24c66
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 2fcc88754f4c49e3d9aef226fdfaa1634aa24c66  ixgbe: Add 10G-BX support

elapsed time: 1579m

configs tested: 102
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                              allnoconfig    gcc-15.1.0
arc                                allnoconfig    gcc-15.1.0
arc                      haps_hs_smp_defconfig    gcc-15.1.0
arc                    randconfig-001-20251120    gcc-15.1.0
arc                    randconfig-002-20251120    gcc-8.5.0
arm                                allnoconfig    clang-22
arm                    randconfig-001-20251120    gcc-13.4.0
arm                    randconfig-002-20251120    gcc-14.3.0
arm                    randconfig-003-20251120    clang-17
arm                    randconfig-004-20251120    clang-19
arm                        spear13xx_defconfig    gcc-15.1.0
arm64                              allnoconfig    gcc-15.1.0
arm64                 randconfig-6001-20251120    gcc-12.5.0
arm64                 randconfig-6002-20251120    gcc-9.5.0
arm64                 randconfig-6003-20251120    clang-19
arm64                 randconfig-6004-20251120    gcc-13.4.0
csky                               allnoconfig    gcc-15.1.0
csky                  randconfig-6001-20251120    gcc-15.1.0
csky                  randconfig-6002-20251120    gcc-15.1.0
hexagon                            allnoconfig    clang-22
hexagon               randconfig-6001-20251120    clang-20
hexagon               randconfig-6002-20251120    clang-22
i386                               allnoconfig    gcc-14
i386                   randconfig-011-20251120    gcc-14
i386                   randconfig-012-20251120    gcc-14
i386                   randconfig-013-20251120    clang-20
i386                   randconfig-014-20251120    gcc-14
i386                   randconfig-015-20251120    gcc-14
i386                   randconfig-016-20251120    gcc-14
i386                   randconfig-017-20251120    gcc-14
loongarch                          allnoconfig    clang-22
loongarch                            defconfig    clang-19
loongarch             randconfig-6001-20251120    clang-20
loongarch             randconfig-6002-20251120    clang-18
m68k                               allnoconfig    gcc-15.1.0
m68k                                 defconfig    gcc-15.1.0
microblaze                         allnoconfig    gcc-15.1.0
microblaze                           defconfig    gcc-15.1.0
mips                               allnoconfig    gcc-15.1.0
nios2                              allnoconfig    gcc-11.5.0
nios2                                defconfig    gcc-11.5.0
nios2                 randconfig-6001-20251120    gcc-11.5.0
nios2                 randconfig-6002-20251120    gcc-11.5.0
openrisc                           allnoconfig    gcc-15.1.0
openrisc                             defconfig    gcc-15.1.0
openrisc                        virt_defconfig    gcc-15.1.0
parisc                             allnoconfig    gcc-15.1.0
parisc                               defconfig    gcc-15.1.0
parisc                randconfig-6001-20251120    gcc-9.5.0
parisc                randconfig-6002-20251120    gcc-13.4.0
parisc64                             defconfig    gcc-15.1.0
powerpc                            allnoconfig    gcc-15.1.0
powerpc                  mpc8315_rdb_defconfig    clang-22
powerpc               randconfig-6001-20251120    clang-19
powerpc               randconfig-6002-20251120    clang-22
powerpc64             randconfig-6001-20251120    gcc-11.5.0
powerpc64             randconfig-6002-20251120    clang-22
riscv                              allnoconfig    gcc-15.1.0
riscv                                defconfig    clang-22
riscv                  randconfig-001-20251120    gcc-8.5.0
riscv                  randconfig-002-20251120    clang-22
s390                               allnoconfig    clang-22
s390                                 defconfig    clang-22
s390                   randconfig-001-20251120    clang-22
s390                   randconfig-002-20251120    gcc-8.5.0
sh                                 allnoconfig    gcc-15.1.0
sh                                   defconfig    gcc-15.1.0
sh                     randconfig-001-20251120    gcc-12.5.0
sh                     randconfig-002-20251120    gcc-15.1.0
sh                             shmin_defconfig    gcc-15.1.0
sh                              shx3_defconfig    gcc-15.1.0
sparc                              allnoconfig    gcc-15.1.0
sparc                                defconfig    gcc-15.1.0
sparc                 randconfig-6001-20251120    gcc-13.4.0
sparc                 randconfig-6002-20251120    gcc-15.1.0
sparc64                           alldefconfig    gcc-15.1.0
sparc64                              defconfig    clang-20
sparc64               randconfig-6001-20251120    clang-20
sparc64               randconfig-6002-20251120    gcc-13.4.0
um                                 allnoconfig    clang-22
um                                   defconfig    clang-22
um                              i386_defconfig    gcc-14
um                    randconfig-6001-20251120    gcc-14
um                    randconfig-6002-20251120    gcc-14
um                            x86_64_defconfig    clang-22
x86_64                             allnoconfig    clang-20
x86_64      buildonly-randconfig-6001-20251120    gcc-14
x86_64      buildonly-randconfig-6002-20251120    clang-20
x86_64      buildonly-randconfig-6003-20251120    clang-20
x86_64      buildonly-randconfig-6004-20251120    clang-20
x86_64      buildonly-randconfig-6005-20251120    clang-20
x86_64      buildonly-randconfig-6006-20251120    clang-20
x86_64                               defconfig    gcc-14
x86_64                 randconfig-071-20251120    clang-20
x86_64                 randconfig-072-20251120    gcc-13
x86_64                 randconfig-073-20251120    clang-20
x86_64                 randconfig-074-20251120    clang-20
x86_64                 randconfig-075-20251120    clang-20
x86_64                 randconfig-076-20251120    gcc-13
xtensa                             allnoconfig    gcc-15.1.0
xtensa                randconfig-6001-20251120    gcc-11.5.0
xtensa                randconfig-6002-20251120    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
