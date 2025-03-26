Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 86D73A71D16
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Mar 2025 18:25:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 76D0861410;
	Wed, 26 Mar 2025 17:25:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id se9UlpO1CFcL; Wed, 26 Mar 2025 17:25:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 516846156F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1743009953;
	bh=6hd69zcm5cvH77evGNMKlBOqOcqkswVo8bIMNeC5qwg=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=0IyvKB+s+kai9mfmguJFsFdD4/lhO7/Kn7o1jcb768ULBUAIkqp0tCkiMx2l9h222
	 16QSRHE5rB6W5Of5yJQUynQ/KHHg+r9yQNYhtl1mXmIiToey58sd3ECL3uYNWSTOSR
	 K5KnDUVl1/e/inbm6Jtoujeko5u79L7UCZ9HpovicHWcwZzKz/VwrdveH+wP39744g
	 R4VKz49OBu2Di+eiui3H/ROrTkHy34+crTAbYT2oS+ckXxvRmJiWNCc7fDJ4BsQpn6
	 rH/k2HRXxEmciPlKM/7PehRiYhvx3vHiH3v+zgKnmySMDKDeBI80F9BrjaYUZsjB4/
	 KxxIqUG56ELBg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 516846156F;
	Wed, 26 Mar 2025 17:25:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id C4226E4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Mar 2025 17:25:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A3A8E61410
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Mar 2025 17:25:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id g23FlYb0-2Bd for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Mar 2025 17:25:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org ADAA9611D8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ADAA9611D8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id ADAA9611D8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Mar 2025 17:25:50 +0000 (UTC)
X-CSE-ConnectionGUID: x2v0V3nvT6G/Dwi6IvywEQ==
X-CSE-MsgGUID: 1Eq2F2IJTsOUbn+tUdl3xQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="54963023"
X-IronPort-AV: E=Sophos;i="6.14,278,1736841600"; d="scan'208";a="54963023"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2025 10:25:49 -0700
X-CSE-ConnectionGUID: dD4NiNHHTIiT2K2pDljRrA==
X-CSE-MsgGUID: YJWncvqbR7ex9VDcFi4qcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,278,1736841600"; d="scan'208";a="125303358"
Received: from lkp-server02.sh.intel.com (HELO e98e3655d6d2) ([10.239.97.151])
 by fmviesa010.fm.intel.com with ESMTP; 26 Mar 2025 10:25:49 -0700
Received: from kbuild by e98e3655d6d2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1txUVf-0005w4-0a
 for intel-wired-lan@lists.osuosl.org; Wed, 26 Mar 2025 17:25:47 +0000
Date: Thu, 27 Mar 2025 01:25:46 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202503270140.dxBBo5hN-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743009950; x=1774545950;
 h=date:from:to:subject:message-id;
 bh=a5n5YryOo1yADwv01RmmhtMQVcdAfLQU3xBirtXCDBI=;
 b=dw1PYN70KB7D+qEgHKp61Z5cR6v4bBQT4C8ni6fl8basIiD8TZBt3b0u
 8LpzJKE5RxDdPVGP96/9IvPhn7cat2sX+BTYFIXD30VCrsae/s7P++V8z
 N04s1Ljq5Tzapz77gE7NpKVaX+WQFdMPyUownmz/56aZKKXE1VK5U4rlW
 uXPunzjSoSSqaVSHJ0V4cM5zMUPd7hqpNqtfq3+rHhc7FReswglGhhaIT
 KHb6XsdHoax9y9njIW9dibk4B0qWOcix0MY/3tmX6eJzwmJIYoppmyzhU
 LfIAKRHkJyo21+xU7cB0mBqpmyOmUg1i8m4xknKjLEt9Y3znLXrV8vtQJ
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dw1PYN70
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 00a25cca0d7be87285c5d0acf7ed2a04910559f1
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 10GbE
branch HEAD: 00a25cca0d7be87285c5d0acf7ed2a04910559f1  Merge tag 'nf-next-25-03-23' of git://git.kernel.org/pub/scm/linux/kernel/git/netfilter/nf-next

elapsed time: 1548m

configs tested: 144
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    gcc-14.2.0
arc                              alldefconfig    gcc-14.2.0
arc                              allmodconfig    gcc-14.2.0
arc                               allnoconfig    gcc-14.2.0
arc                              allyesconfig    gcc-14.2.0
arc                            hsdk_defconfig    gcc-14.2.0
arc                   randconfig-001-20250326    gcc-14.2.0
arc                   randconfig-002-20250326    gcc-8.5.0
arc                        vdk_hs38_defconfig    gcc-14.2.0
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    clang-21
arm                              allyesconfig    gcc-14.2.0
arm                         axm55xx_defconfig    clang-15
arm                       imx_v4_v5_defconfig    clang-15
arm                          ixp4xx_defconfig    gcc-14.2.0
arm                         mv78xx0_defconfig    clang-19
arm                   randconfig-001-20250326    gcc-7.5.0
arm                   randconfig-002-20250326    clang-21
arm                   randconfig-003-20250326    gcc-8.5.0
arm                   randconfig-004-20250326    clang-21
arm64                            alldefconfig    gcc-14.2.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-14.2.0
arm64                 randconfig-001-20250326    clang-21
arm64                 randconfig-002-20250326    clang-21
arm64                 randconfig-003-20250326    gcc-8.5.0
arm64                 randconfig-004-20250326    gcc-6.5.0
csky                              allnoconfig    gcc-14.2.0
csky                  randconfig-001-20250326    gcc-14.2.0
csky                  randconfig-002-20250326    gcc-14.2.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-21
hexagon                          allyesconfig    clang-21
hexagon               randconfig-001-20250326    clang-21
hexagon               randconfig-002-20250326    clang-21
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250326    gcc-12
i386        buildonly-randconfig-002-20250326    clang-20
i386        buildonly-randconfig-003-20250326    clang-20
i386        buildonly-randconfig-004-20250326    clang-20
i386        buildonly-randconfig-005-20250326    gcc-12
i386        buildonly-randconfig-006-20250326    clang-20
i386                                defconfig    clang-20
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch             randconfig-001-20250326    gcc-14.2.0
loongarch             randconfig-002-20250326    gcc-12.4.0
m68k                             alldefconfig    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
m68k                            q40_defconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                        bcm63xx_defconfig    clang-21
mips                           ip27_defconfig    gcc-14.2.0
mips                       rbtx49xx_defconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250326    gcc-12.4.0
nios2                 randconfig-002-20250326    gcc-10.5.0
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
openrisc                            defconfig    gcc-14.2.0
openrisc                       virt_defconfig    gcc-14.2.0
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                              defconfig    gcc-14.2.0
parisc                randconfig-001-20250326    gcc-13.3.0
parisc                randconfig-002-20250326    gcc-7.5.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    gcc-14.2.0
powerpc                          allyesconfig    clang-21
powerpc                      katmai_defconfig    clang-21
powerpc                      mgcoge_defconfig    clang-21
powerpc               randconfig-001-20250326    clang-21
powerpc               randconfig-002-20250326    gcc-6.5.0
powerpc               randconfig-003-20250326    clang-19
powerpc                     taishan_defconfig    clang-17
powerpc                     tqm8540_defconfig    gcc-14.2.0
powerpc                     tqm8548_defconfig    clang-21
powerpc64             randconfig-001-20250326    clang-21
powerpc64             randconfig-002-20250326    gcc-8.5.0
powerpc64             randconfig-003-20250326    clang-21
riscv                            allmodconfig    clang-21
riscv                             allnoconfig    gcc-14.2.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    clang-21
riscv                 randconfig-001-20250326    clang-21
riscv                 randconfig-002-20250326    gcc-8.5.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-15
s390                             allyesconfig    gcc-14.2.0
s390                                defconfig    clang-15
s390                  randconfig-001-20250326    clang-15
s390                  randconfig-002-20250326    clang-15
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                         ap325rxa_defconfig    gcc-14.2.0
sh                         apsh4a3a_defconfig    gcc-14.2.0
sh                        apsh4ad0a_defconfig    gcc-14.2.0
sh                                  defconfig    gcc-14.2.0
sh                        dreamcast_defconfig    gcc-14.2.0
sh                            migor_defconfig    gcc-14.2.0
sh                          r7785rp_defconfig    gcc-14.2.0
sh                    randconfig-001-20250326    gcc-6.5.0
sh                    randconfig-002-20250326    gcc-6.5.0
sh                           se7705_defconfig    gcc-14.2.0
sh                            shmin_defconfig    gcc-14.2.0
sh                              ul2_defconfig    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250326    gcc-11.5.0
sparc                 randconfig-002-20250326    gcc-5.5.0
sparc64                             defconfig    gcc-14.2.0
sparc64               randconfig-001-20250326    gcc-5.5.0
sparc64               randconfig-002-20250326    gcc-11.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    gcc-12
um                                  defconfig    clang-21
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250326    clang-15
um                    randconfig-002-20250326    gcc-11
um                           x86_64_defconfig    clang-15
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250326    clang-20
x86_64      buildonly-randconfig-002-20250326    gcc-11
x86_64      buildonly-randconfig-003-20250326    clang-20
x86_64      buildonly-randconfig-004-20250326    clang-20
x86_64      buildonly-randconfig-005-20250326    clang-20
x86_64      buildonly-randconfig-006-20250326    clang-20
x86_64                              defconfig    gcc-11
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20250326    gcc-7.5.0
xtensa                randconfig-002-20250326    gcc-13.3.0
xtensa                         virt_defconfig    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
