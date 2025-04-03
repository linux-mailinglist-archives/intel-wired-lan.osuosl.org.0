Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0690EA7A9B8
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Apr 2025 20:50:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 879D9417BA;
	Thu,  3 Apr 2025 18:50:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 58E1gAlO6qdb; Thu,  3 Apr 2025 18:50:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6A95A419BB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1743706252;
	bh=5SQZigpvpgfbZvXl+Sq+NFRFfdmCX+3VeO4JOwr6afw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=CUPj9DvF058hcqz3wDsQmtUIvxA1pRJZUZ0Dr+YRGm8Lo6/dz/05R9HGSUlKPBbs9
	 pVkHXYl0fDu8LkC+5qPWnkWhl/Cp6/1BHLGG9DdJVaKj8zwlq/u6RGofaEKPjsnTjz
	 XhJgVSu/Yk8y6+32pyDfSMwYPd1rVLI0IRLlQCBn+EiyaiUhnPNq27rKMxwH6/D9tc
	 DFWZ+hkd5oO/s4Q9D10xjQmGr8yWjhBZb4RVEFphbakxfCUlZYwLrkBjy/DiDBEgca
	 zvSoDBCch9dnJtknrpgxj+7imQ2HizWyqX4Y8LuMQHRWdWM1oT1ZjYb2Z4MiSOH1zJ
	 EcLfeDPr5xt0Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6A95A419BB;
	Thu,  3 Apr 2025 18:50:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 25B56119
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Apr 2025 18:50:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0FF4C40E57
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Apr 2025 18:50:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WfBqHGd-dt2T for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Apr 2025 18:50:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1AFC5417D5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1AFC5417D5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1AFC5417D5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Apr 2025 18:50:48 +0000 (UTC)
X-CSE-ConnectionGUID: IyEhcLETSYK3f6ll2VoF7g==
X-CSE-MsgGUID: u5e+VIu0T1OzRrCxL2m9Pw==
X-IronPort-AV: E=McAfee;i="6700,10204,11393"; a="32737271"
X-IronPort-AV: E=Sophos;i="6.15,186,1739865600"; d="scan'208";a="32737271"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2025 11:50:48 -0700
X-CSE-ConnectionGUID: le+9A3PNRAS7HpjtRm13nQ==
X-CSE-MsgGUID: Zu1HJSXISViVdiCTCnrEHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,186,1739865600"; d="scan'208";a="126894910"
Received: from lkp-server01.sh.intel.com (HELO b207828170a5) ([10.239.97.150])
 by fmviesa006.fm.intel.com with ESMTP; 03 Apr 2025 11:50:47 -0700
Received: from kbuild by b207828170a5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1u0PeH-0000kU-0o
 for intel-wired-lan@lists.osuosl.org; Thu, 03 Apr 2025 18:50:45 +0000
Date: Fri, 04 Apr 2025 02:50:27 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202504040217.nbCuG4GI-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743706249; x=1775242249;
 h=date:from:to:subject:message-id;
 bh=SX67fZ+xylJGuEHEW+FlwzMY92tPIB3NsIvcuPHPEqw=;
 b=jpobZl+8N6+UfHDe6MdAYiHOQmHX3YCp+1rb6s7ZbeHHZbukZTjcQecG
 6WLdH39k3US59l4VYv2yfHuSJt4hQviTiRfjZd0qChPCDIU+ignTY/jRi
 SCyBLvQ/UwIkESffSA4n9CaVHrWyGkeIPJYsmiPQebmITtAXIq4oU/yw5
 G35QoZUN3Y6oxmnLgPcrfJa0cLBGRuVqOUfq9AdOsCaFGw6xRmQmSBB6B
 M6yVpMhyoMH01yGMRrWPjNFulbRH0Pt2LfGTLvclOtexdE7IjjQ/p9A/4
 KOJ9/lP6GIePBvbV60vf8fwjfaJuHdiWfMV1zfFkvzU7/qhzW5svF/mw+
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jpobZl+8
Subject: [Intel-wired-lan] [tnguy-net-queue:1GbE] BUILD SUCCESS
 4c9106f4906a85f6b13542d862e423bcdc118cc3
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 1GbE
branch HEAD: 4c9106f4906a85f6b13542d862e423bcdc118cc3  idpf: fix adapter NULL pointer dereference on reboot

elapsed time: 1446m

configs tested: 121
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    gcc-14.2.0
arc                              allmodconfig    gcc-14.2.0
arc                               allnoconfig    gcc-14.2.0
arc                              allyesconfig    gcc-14.2.0
arc                          axs103_defconfig    gcc-14.2.0
arc                        nsimosci_defconfig    gcc-14.2.0
arc                   randconfig-001-20250403    gcc-14.2.0
arc                   randconfig-002-20250403    gcc-12.4.0
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    clang-21
arm                              allyesconfig    gcc-14.2.0
arm                   randconfig-001-20250403    clang-21
arm                   randconfig-002-20250403    gcc-8.5.0
arm                   randconfig-003-20250403    clang-21
arm                   randconfig-004-20250403    gcc-8.5.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-14.2.0
arm64                 randconfig-001-20250403    gcc-6.5.0
arm64                 randconfig-002-20250403    clang-16
arm64                 randconfig-003-20250403    clang-17
arm64                 randconfig-004-20250403    clang-20
csky                              allnoconfig    gcc-14.2.0
csky                  randconfig-001-20250403    gcc-14.2.0
csky                  randconfig-002-20250403    gcc-14.2.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-21
hexagon                          allyesconfig    clang-21
hexagon               randconfig-001-20250403    clang-21
hexagon               randconfig-002-20250403    clang-21
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250403    clang-20
i386        buildonly-randconfig-002-20250403    clang-20
i386        buildonly-randconfig-003-20250403    clang-20
i386        buildonly-randconfig-004-20250403    gcc-12
i386        buildonly-randconfig-005-20250403    gcc-12
i386        buildonly-randconfig-006-20250403    gcc-12
i386                                defconfig    clang-20
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch             randconfig-001-20250403    gcc-12.4.0
loongarch             randconfig-002-20250403    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                          ath25_defconfig    clang-21
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250403    gcc-10.5.0
nios2                 randconfig-002-20250403    gcc-14.2.0
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
openrisc                            defconfig    gcc-14.2.0
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                              defconfig    gcc-14.2.0
parisc                randconfig-001-20250403    gcc-13.3.0
parisc                randconfig-002-20250403    gcc-11.5.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    gcc-14.2.0
powerpc                          allyesconfig    clang-21
powerpc                      bamboo_defconfig    clang-21
powerpc                   motionpro_defconfig    clang-15
powerpc               randconfig-001-20250403    clang-16
powerpc               randconfig-002-20250403    gcc-6.5.0
powerpc               randconfig-003-20250403    clang-21
powerpc                     sequoia_defconfig    clang-17
powerpc                     tqm8541_defconfig    clang-21
powerpc64             randconfig-001-20250403    clang-19
powerpc64             randconfig-002-20250403    clang-17
powerpc64             randconfig-003-20250403    clang-21
riscv                            allmodconfig    clang-21
riscv                             allnoconfig    gcc-14.2.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    clang-21
riscv                 randconfig-001-20250403    clang-21
riscv                 randconfig-002-20250403    clang-21
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-15
s390                             allyesconfig    gcc-14.2.0
s390                  randconfig-001-20250403    gcc-9.3.0
s390                  randconfig-002-20250403    gcc-7.5.0
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                                  defconfig    gcc-14.2.0
sh                    randconfig-001-20250403    gcc-6.5.0
sh                    randconfig-002-20250403    gcc-14.2.0
sh                           se7705_defconfig    gcc-14.2.0
sh                           se7712_defconfig    gcc-14.2.0
sh                           sh2007_defconfig    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250403    gcc-11.5.0
sparc                 randconfig-002-20250403    gcc-13.3.0
sparc64               randconfig-001-20250403    gcc-7.5.0
sparc64               randconfig-002-20250403    gcc-13.3.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250403    clang-19
um                    randconfig-002-20250403    gcc-12
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250403    clang-20
x86_64      buildonly-randconfig-002-20250403    clang-20
x86_64      buildonly-randconfig-003-20250403    clang-20
x86_64      buildonly-randconfig-004-20250403    clang-20
x86_64      buildonly-randconfig-005-20250403    gcc-11
x86_64      buildonly-randconfig-006-20250403    clang-20
x86_64                              defconfig    gcc-11
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20250403    gcc-11.5.0
xtensa                randconfig-002-20250403    gcc-13.3.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
