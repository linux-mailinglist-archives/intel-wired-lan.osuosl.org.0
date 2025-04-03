Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 420C2A7A9BD
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Apr 2025 20:51:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6A969411C6;
	Thu,  3 Apr 2025 18:51:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ExCbdHUxZnBz; Thu,  3 Apr 2025 18:51:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8F28C40B88
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1743706314;
	bh=FKNPPm8fxLtS2UpVmL4gIyKOWztQd026YhzltOgsDUE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=prDwh5Yo8Jie+kioBwkl5QKkyU9ybKwckKXO1NnaXGtt7VEW+095ptddQpNdjfWxp
	 C0p7EwqHBpCqtziHWOHBacIL+j6S4iEGqQRW0xJLkfWrlqqWejG+j62YZp7bhzCnSL
	 80YEC/mlG58xjQ8waY0xziQdaTcs12PCdDP+hFee2a+Pq/yHwiUq/IEQI5dYDRRxgP
	 tMqIk+V/e7Y5gOZsyP0gzsYMM7qtKaRboJSP4m6T8IQ19cK0fxGRK/TtpGz0zUh75w
	 Xr3mloVwY5Uf7TMkgwTxnFmlyG1YlQf6I4RJ+PtwTSFbCKZ4T5FxZJdI8wWGRNe+aO
	 71ixyh90weIpw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8F28C40B88;
	Thu,  3 Apr 2025 18:51:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 27558119
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Apr 2025 18:51:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0DA7B81F4E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Apr 2025 18:51:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MhabyYiNVFwh for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Apr 2025 18:51:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1E4B081FD2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1E4B081FD2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1E4B081FD2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Apr 2025 18:51:50 +0000 (UTC)
X-CSE-ConnectionGUID: rn+KChB9R0aIXew2TaM5Ug==
X-CSE-MsgGUID: L/sB0RwKREeH2jvLDMs99g==
X-IronPort-AV: E=McAfee;i="6700,10204,11393"; a="55328707"
X-IronPort-AV: E=Sophos;i="6.15,186,1739865600"; d="scan'208";a="55328707"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2025 11:51:49 -0700
X-CSE-ConnectionGUID: sr0UeKt3R0GeHgwiYm7eVw==
X-CSE-MsgGUID: j359SayXSWOC5oeqF1LfOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,186,1739865600"; d="scan'208";a="127373951"
Received: from lkp-server01.sh.intel.com (HELO b207828170a5) ([10.239.97.150])
 by fmviesa008.fm.intel.com with ESMTP; 03 Apr 2025 11:51:48 -0700
Received: from kbuild by b207828170a5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1u0PfG-0000kf-0i
 for intel-wired-lan@lists.osuosl.org; Thu, 03 Apr 2025 18:51:46 +0000
Date: Fri, 04 Apr 2025 02:50:50 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202504040239.VEMxmnoD-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743706310; x=1775242310;
 h=date:from:to:subject:message-id;
 bh=rsT/Fa/cCy6aDEkuRhLr8rkqFXFmH5yJ29QVhA2kNw4=;
 b=epKDYxn+cIvGUj6QnX8pXneHDgfSAuBbm55MhkPiq2xfETvwdxDiMLF9
 k2/hg3Fg6T0LEhf+xvnsSsrhFtbwfv+tjn+Wcpjeg62OB9PHSRnw5RsEh
 RSxWIoT6mnEYLIrn13T5GIP7VNLrbizWhcjCXm1rWuCynyO6NuY14N6bz
 NvE97r0uG5tbsjpYqdyfRrLq5Rp+ZRj9UEFVNUg6DRhrcf9g44xpMMphE
 0E3n6f0EcpCpxCpisTdzms0VRu+94K0CVYu8/ftRZjD2778b8++XwqkTc
 lfSjNX9aObj7g8hVPggilPh67QClaI7roHYBqWPBc2Mwcl5gWU1aqAe95
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=epKDYxn+
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 e913ddd0773133e710cb9f772eafe54b9344b56b
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
branch HEAD: e913ddd0773133e710cb9f772eafe54b9344b56b  ice: Check VF VSI Pointer Value in ice_vc_add_fdir_fltr()

elapsed time: 1446m

configs tested: 119
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    gcc-14.2.0
arc                              allmodconfig    gcc-14.2.0
arc                               allnoconfig    gcc-14.2.0
arc                              allyesconfig    gcc-14.2.0
arc                   randconfig-001-20250403    gcc-14.2.0
arc                   randconfig-002-20250403    gcc-12.4.0
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    clang-21
arm                              allyesconfig    gcc-14.2.0
arm                       aspeed_g5_defconfig    gcc-14.2.0
arm                            dove_defconfig    gcc-14.2.0
arm                   randconfig-001-20250403    clang-21
arm                   randconfig-002-20250403    gcc-8.5.0
arm                   randconfig-003-20250403    clang-21
arm                   randconfig-004-20250403    gcc-8.5.0
arm64                            alldefconfig    gcc-14.2.0
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
mips                        bcm47xx_defconfig    clang-18
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
powerpc                 mpc832x_rdb_defconfig    gcc-14.2.0
powerpc               randconfig-001-20250403    clang-16
powerpc               randconfig-002-20250403    gcc-6.5.0
powerpc               randconfig-003-20250403    clang-21
powerpc                    sam440ep_defconfig    gcc-14.2.0
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
s390                                defconfig    clang-15
s390                  randconfig-001-20250403    gcc-9.3.0
s390                  randconfig-002-20250403    gcc-7.5.0
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                                  defconfig    gcc-14.2.0
sh                    randconfig-001-20250403    gcc-6.5.0
sh                    randconfig-002-20250403    gcc-14.2.0
sh                           se7722_defconfig    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250403    gcc-11.5.0
sparc                 randconfig-002-20250403    gcc-13.3.0
sparc64                             defconfig    gcc-14.2.0
sparc64               randconfig-001-20250403    gcc-7.5.0
sparc64               randconfig-002-20250403    gcc-13.3.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    gcc-12
um                                  defconfig    clang-21
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250403    clang-19
um                    randconfig-002-20250403    gcc-12
um                           x86_64_defconfig    clang-15
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
