Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AAF2997C1A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Oct 2024 07:04:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 243A240DED;
	Thu, 10 Oct 2024 05:04:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u_MXvS2Q8ffj; Thu, 10 Oct 2024 05:04:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A895240DE5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728536693;
	bh=K6dS70mwYVt7qty0L93XdDaidT19MKZDH2IVtGdq3gA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=8GKCwUK5S1Ks7eZWB5vn5Mv6vcKzoc4hu40JgjYI03w5+KpNi9wsJSgbE2ssbj2nB
	 zLyZwzCSXapMmshFsdnZfMPELfS0D/lo+dI01VQ7HFEOoxqg5xW1IMv83M4aD+Sggn
	 ZJGxcWLZ2v82bxxTpblKFInr3XSFxg9YFFFVaPAQDzhl0EsyM/vfLIW/EUsMVKC4Ph
	 b5+v33VRDg4FehJ23BUMFCpWKzi+iO9FU80Pw5bDInx7lBcoMKz3zjLoO5V5DExVd2
	 qBVqsdcT3XGG8NJxvOLUPo6zXMfyFOXGz7L0eksl8zsMAVv7yA/vC2B0YfY7hTerdL
	 2fn/QLPJ2lGBA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A895240DE5;
	Thu, 10 Oct 2024 05:04:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 05D991BF40D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Oct 2024 05:04:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E753B4087B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Oct 2024 05:04:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7Jy0WX9HQdIA for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Oct 2024 05:04:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 42CB840879
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 42CB840879
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 42CB840879
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Oct 2024 05:04:49 +0000 (UTC)
X-CSE-ConnectionGUID: QhiM3kzrTUqdF8/WB14h4Q==
X-CSE-MsgGUID: /IaFcY03TyKLM69QPnzQ+w==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="27684998"
X-IronPort-AV: E=Sophos;i="6.11,192,1725346800"; d="scan'208";a="27684998"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 22:04:49 -0700
X-CSE-ConnectionGUID: ZkwoDprRR1eQKJRftpC5Gg==
X-CSE-MsgGUID: pQb1HG4bTeayXGnqgDmUig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,192,1725346800"; d="scan'208";a="80999834"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
 by fmviesa005.fm.intel.com with ESMTP; 09 Oct 2024 22:04:48 -0700
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sylLx-000ACT-2T
 for intel-wired-lan@lists.osuosl.org; Thu, 10 Oct 2024 05:04:45 +0000
Date: Thu, 10 Oct 2024 13:04:00 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202410101356.g2CrMeOB-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728536691; x=1760072691;
 h=date:from:to:subject:message-id;
 bh=NDLMg9PzkXnZ9P+EbYsCnIxyH0PUhiPjSvE0y8tETgE=;
 b=IwYIQ6+TytAem+/hlimLOdnlQAgyOm9N5UXFaEItr15YPyM3khafCm5E
 8EZC8GMMrMJWltBdsTPXjc8rHZU00m/JubeoOUF3FingkC4HwmuP0GdgL
 71quExiudzBGCnuoqlQexKe7RS+4gnqzaL3B0Hzi1i247d6wUomq7ooze
 npNr5WM/m+QR4IQoAvO9YVuVxjHvfyOqhtJU44PNrb00z40bBVZUDttQ0
 9TWIKqsU7a/rRJu96D+ElTqMeDtCLuEbIuabmxoWyYoBp81J3hafPa4wK
 270jC+4FgAXHVliRo6LUVouXcGI3jWeXa7qsplpg0/4MB7T14xEXMLa+9
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IwYIQ6+T
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 8f7ff18a5ec7d8ce47ff84a9d1b024bfb6039dd8
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: 8f7ff18a5ec7d8ce47ff84a9d1b024bfb6039dd8  e1000: Link NAPI instances to queues and IRQs

elapsed time: 1769m

configs tested: 116
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-13.3.0
alpha                            allyesconfig    gcc-13.3.0
alpha                               defconfig    gcc-13.3.0
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-13.2.0
arc                              allyesconfig    gcc-13.2.0
arc                                 defconfig    gcc-13.2.0
arc                   randconfig-001-20241010    gcc-13.2.0
arc                   randconfig-002-20241010    gcc-13.2.0
arc                    vdk_hs38_smp_defconfig    gcc-13.2.0
arm                              allmodconfig    gcc-14.1.0
arm                               allnoconfig    clang-20
arm                              allyesconfig    gcc-14.1.0
arm                   milbeaut_m10v_defconfig    clang-16
arm                   randconfig-001-20241010    clang-20
arm                   randconfig-002-20241010    clang-20
arm                   randconfig-003-20241010    clang-20
arm                   randconfig-004-20241010    clang-20
arm64                            allmodconfig    clang-20
arm64                             allnoconfig    gcc-14.1.0
csky                              allnoconfig    gcc-14.1.0
csky                                defconfig    gcc-14.1.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    clang-20
hexagon                          allyesconfig    clang-20
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20241010    clang-18
i386        buildonly-randconfig-002-20241010    clang-18
i386        buildonly-randconfig-003-20241010    clang-18
i386        buildonly-randconfig-004-20241010    gcc-12
i386        buildonly-randconfig-005-20241010    clang-18
i386        buildonly-randconfig-006-20241010    clang-18
i386                                defconfig    clang-18
i386                  randconfig-001-20241010    clang-18
i386                  randconfig-002-20241010    clang-18
i386                  randconfig-003-20241010    gcc-12
i386                  randconfig-004-20241010    clang-18
i386                  randconfig-005-20241010    clang-18
i386                  randconfig-006-20241010    clang-18
i386                  randconfig-011-20241010    gcc-12
i386                  randconfig-012-20241010    clang-18
i386                  randconfig-013-20241010    gcc-12
i386                  randconfig-014-20241010    clang-18
i386                  randconfig-015-20241010    clang-18
i386                  randconfig-016-20241010    clang-18
loongarch                        allmodconfig    gcc-14.1.0
loongarch                         allnoconfig    gcc-14.1.0
m68k                             allmodconfig    gcc-14.1.0
m68k                              allnoconfig    gcc-14.1.0
m68k                             allyesconfig    gcc-14.1.0
microblaze                       allmodconfig    gcc-14.1.0
microblaze                        allnoconfig    gcc-14.1.0
microblaze                       allyesconfig    gcc-14.1.0
mips                              allnoconfig    gcc-14.1.0
mips                      bmips_stb_defconfig    clang-20
mips                           ci20_defconfig    clang-20
mips                          malta_defconfig    gcc-13.2.0
mips                          rb532_defconfig    clang-20
mips                        vocore2_defconfig    clang-15
nios2                             allnoconfig    gcc-14.1.0
openrisc                          allnoconfig    clang-20
openrisc                          allnoconfig    gcc-14.1.0
openrisc                         allyesconfig    gcc-14.1.0
openrisc                            defconfig    gcc-14.1.0
openrisc                 simple_smp_defconfig    gcc-14.1.0
parisc                           allmodconfig    gcc-14.1.0
parisc                            allnoconfig    clang-20
parisc                            allnoconfig    gcc-14.1.0
parisc                           allyesconfig    gcc-14.1.0
parisc                              defconfig    gcc-14.1.0
powerpc                          allmodconfig    gcc-14.1.0
powerpc                           allnoconfig    clang-20
powerpc                           allnoconfig    gcc-14.1.0
powerpc                          allyesconfig    clang-20
powerpc                       eiger_defconfig    clang-20
powerpc                     ppa8548_defconfig    gcc-14.1.0
riscv                            allmodconfig    clang-20
riscv                             allnoconfig    clang-20
riscv                             allnoconfig    gcc-14.1.0
riscv                            allyesconfig    clang-20
riscv                               defconfig    clang-20
s390                             allmodconfig    clang-20
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.1.0
s390                                defconfig    clang-20
sh                               allmodconfig    gcc-14.1.0
sh                                allnoconfig    gcc-14.1.0
sh                               allyesconfig    gcc-14.1.0
sh                                  defconfig    gcc-14.1.0
sh                ecovec24-romimage_defconfig    gcc-14.1.0
sh                        edosk7705_defconfig    gcc-14.1.0
sparc                            allmodconfig    gcc-14.1.0
sparc64                             defconfig    gcc-14.1.0
um                               allmodconfig    clang-20
um                                allnoconfig    clang-17
um                                allnoconfig    clang-20
um                               allyesconfig    gcc-12
um                                  defconfig    clang-20
um                             i386_defconfig    gcc-12
um                           x86_64_defconfig    clang-15
x86_64                            allnoconfig    clang-18
x86_64                           allyesconfig    clang-18
x86_64      buildonly-randconfig-001-20241010    gcc-12
x86_64      buildonly-randconfig-002-20241010    clang-18
x86_64      buildonly-randconfig-003-20241010    clang-18
x86_64      buildonly-randconfig-004-20241010    gcc-12
x86_64      buildonly-randconfig-005-20241010    clang-18
x86_64      buildonly-randconfig-006-20241010    clang-18
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-18
x86_64                randconfig-002-20241010    gcc-12
x86_64                               rhel-8.3    gcc-12
x86_64                          rhel-8.3-rust    clang-18
xtensa                            allnoconfig    gcc-14.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
