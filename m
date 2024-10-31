Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BA9C9B72A4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 31 Oct 2024 03:48:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0D05980E2E;
	Thu, 31 Oct 2024 02:48:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rA1QMwISV92r; Thu, 31 Oct 2024 02:48:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B70B280E33
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730342933;
	bh=wkh4UKkudfim2mgVqdGAQkGeqg1Ot9XXhISUQlsUC3c=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=fVxFPuWKBNg1fOPz36NfKCOOOl0BpvUgxZ/rEYS2QU6ET5VSQU1C+tqeq0x7VVcXu
	 50CJdktlS9aP8LMQXvwoWMQs95DZad9PwO+ZHNx35RiEdIg6KFPc5UM59GrsckdiZN
	 W2b2f8+joaKnE80pG9pI/MPY9jas+QrRVJsLh/Ar7mcd/rkmWBXEpKeJb/6NWIOtrq
	 td5SDhZyG7s104SIjAKqw5n5+s2ABSTgqgMxUIfyXL2Iosl4GFIslAEXcUh2UM9Wqx
	 lclMT0hzXPnbEOPBUD1/WgV5Net9Y4PFdcRw3IjbynqAtQW3H2DdqTtF+aE2FzeprI
	 GMfzRDKlb82mA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B70B280E33;
	Thu, 31 Oct 2024 02:48:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 96F5B5E4F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2024 02:48:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 63C58402A6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2024 02:48:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GFEJGNT8fq6i for <intel-wired-lan@lists.osuosl.org>;
 Thu, 31 Oct 2024 02:48:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B6628402A3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B6628402A3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B6628402A3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2024 02:48:49 +0000 (UTC)
X-CSE-ConnectionGUID: v2T1NhHASM+bPHFKOWOQqg==
X-CSE-MsgGUID: REeC5s7fRC28l2s5CmQueQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11241"; a="33995311"
X-IronPort-AV: E=Sophos;i="6.11,246,1725346800"; d="scan'208";a="33995311"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 19:48:49 -0700
X-CSE-ConnectionGUID: alLl8nM2RSalSlUA/HGBoQ==
X-CSE-MsgGUID: pgy9w8nmS66Lj3djm95yjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,246,1725346800"; d="scan'208";a="82661240"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
 by orviesa006.jf.intel.com with ESMTP; 30 Oct 2024 19:48:48 -0700
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1t6LEr-000fZw-2R
 for intel-wired-lan@lists.osuosl.org; Thu, 31 Oct 2024 02:48:45 +0000
Date: Thu, 31 Oct 2024 10:47:49 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202410311043.OsZQ1QBI-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730342930; x=1761878930;
 h=date:from:to:subject:message-id;
 bh=uR7FwIDPT/9mD8LywA7+Itlf2Do2wm4r5ORoJv1ilp0=;
 b=OulNTeFJ4SzQ/6rHjSqgN2AtxBJEAXP/sM4V9mecRtBySZBdgrOC5sDG
 xH0Q+VrgLF59Hh4TARsAzvfLoZU3O8EE7KNRibZpA/xnfgUYUVGTeUbXn
 +5vYbwv3H1QcaahkaY6/Eo41uqW/g2EMjjNaNLC5BPLu5Ea2wPYqshmoE
 cbrshEJHzpVjjagBHxHkmPW34Fp8xeo3CRbDXsQ5j6ObEngNZ5jzWPSPn
 hNS8ALuZXTrRJCWzUF20lLpBelZbqD9AKzyRkLCt1rGanz2/hsUNSy+Hj
 ZUcrTfadxScjXpKVHRYU6uHDYu1cSneazS90fIwLCL/irx1nn6lXPIEIR
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OulNTeFJ
Subject: [Intel-wired-lan] [tnguy-net-queue:main] BUILD SUCCESS
 6b3f18a76be6bbd237c7594cf0bf2912b68084fe
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git main
branch HEAD: 6b3f18a76be6bbd237c7594cf0bf2912b68084fe  net: usb: qmi_wwan: add Quectel RG650V

elapsed time: 1848m

configs tested: 111
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-13.3.0
alpha                            allyesconfig    gcc-13.3.0
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-13.2.0
arc                              allyesconfig    gcc-13.2.0
arc                   randconfig-001-20241031    gcc-13.2.0
arc                   randconfig-002-20241031    gcc-13.2.0
arm                              allmodconfig    gcc-14.1.0
arm                               allnoconfig    clang-20
arm                              allyesconfig    gcc-14.1.0
arm                   randconfig-001-20241031    clang-17
arm                   randconfig-002-20241031    clang-20
arm                   randconfig-003-20241031    gcc-14.1.0
arm                   randconfig-004-20241031    gcc-14.1.0
arm64                             allnoconfig    gcc-14.1.0
arm64                 randconfig-001-20241031    clang-20
arm64                 randconfig-002-20241031    clang-20
arm64                 randconfig-003-20241031    clang-15
arm64                 randconfig-004-20241031    clang-17
csky                              allnoconfig    gcc-14.1.0
csky                  randconfig-001-20241031    gcc-14.1.0
csky                  randconfig-002-20241031    gcc-14.1.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    clang-20
hexagon                          allyesconfig    clang-20
hexagon               randconfig-001-20241031    clang-14
hexagon               randconfig-002-20241031    clang-20
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20241031    gcc-12
i386        buildonly-randconfig-002-20241031    clang-19
i386        buildonly-randconfig-003-20241031    gcc-12
i386        buildonly-randconfig-004-20241031    gcc-12
i386        buildonly-randconfig-005-20241031    clang-19
i386        buildonly-randconfig-006-20241031    gcc-11
i386                                defconfig    clang-19
i386                  randconfig-001-20241031    gcc-12
i386                  randconfig-002-20241031    clang-19
i386                  randconfig-003-20241031    gcc-11
i386                  randconfig-004-20241031    clang-19
i386                  randconfig-005-20241031    gcc-12
i386                  randconfig-006-20241031    clang-19
i386                  randconfig-011-20241031    clang-19
i386                  randconfig-012-20241031    clang-19
i386                  randconfig-013-20241031    clang-19
i386                  randconfig-014-20241031    gcc-11
i386                  randconfig-015-20241031    clang-19
i386                  randconfig-016-20241031    clang-19
loongarch                        allmodconfig    gcc-14.1.0
loongarch                         allnoconfig    gcc-14.1.0
loongarch             randconfig-001-20241031    gcc-14.1.0
loongarch             randconfig-002-20241031    gcc-14.1.0
m68k                             allmodconfig    gcc-14.1.0
m68k                              allnoconfig    gcc-14.1.0
m68k                             allyesconfig    gcc-14.1.0
microblaze                       allmodconfig    gcc-14.1.0
microblaze                        allnoconfig    gcc-14.1.0
microblaze                       allyesconfig    gcc-14.1.0
mips                              allnoconfig    gcc-14.1.0
nios2                             allnoconfig    gcc-14.1.0
nios2                 randconfig-001-20241031    gcc-14.1.0
nios2                 randconfig-002-20241031    gcc-14.1.0
openrisc                          allnoconfig    gcc-14.1.0
parisc                            allnoconfig    gcc-14.1.0
parisc                randconfig-001-20241031    gcc-14.1.0
parisc                randconfig-002-20241031    gcc-14.1.0
powerpc                           allnoconfig    gcc-14.1.0
powerpc               randconfig-001-20241031    gcc-14.1.0
powerpc               randconfig-002-20241031    gcc-14.1.0
powerpc               randconfig-003-20241031    clang-20
powerpc64             randconfig-001-20241031    clang-15
powerpc64             randconfig-002-20241031    gcc-14.1.0
powerpc64             randconfig-003-20241031    clang-20
riscv                             allnoconfig    gcc-14.1.0
riscv                 randconfig-001-20241031    clang-20
riscv                 randconfig-002-20241031    clang-20
s390                             allmodconfig    clang-20
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.1.0
s390                  randconfig-001-20241031    gcc-14.1.0
s390                  randconfig-002-20241031    gcc-14.1.0
sh                               allmodconfig    gcc-14.1.0
sh                                allnoconfig    gcc-14.1.0
sh                               allyesconfig    gcc-14.1.0
sh                    randconfig-001-20241031    gcc-14.1.0
sparc                            allmodconfig    gcc-14.1.0
um                               allmodconfig    clang-20
um                                allnoconfig    clang-17
um                               allyesconfig    gcc-12
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64      buildonly-randconfig-001-20241031    clang-19
x86_64      buildonly-randconfig-002-20241031    clang-19
x86_64      buildonly-randconfig-003-20241031    clang-19
x86_64      buildonly-randconfig-004-20241031    gcc-12
x86_64      buildonly-randconfig-005-20241031    gcc-12
x86_64      buildonly-randconfig-006-20241031    clang-19
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-19
x86_64                randconfig-001-20241031    gcc-12
x86_64                randconfig-002-20241031    gcc-12
x86_64                randconfig-003-20241031    clang-19
x86_64                randconfig-004-20241031    clang-19
x86_64                randconfig-005-20241031    clang-19
x86_64                randconfig-006-20241031    clang-19
x86_64                randconfig-011-20241031    clang-19
x86_64                randconfig-013-20241031    clang-19
x86_64                randconfig-014-20241031    gcc-12
x86_64                               rhel-8.3    gcc-12
xtensa                            allnoconfig    gcc-14.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
