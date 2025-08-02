Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A96EBB18E51
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 Aug 2025 13:56:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id ECBE6607BE;
	Sat,  2 Aug 2025 11:56:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PjSQ2euBMwhb; Sat,  2 Aug 2025 11:56:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CDB89607C1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754135766;
	bh=4uGOo9lGbf2bi1/8+wdA7kFp0+bgPzJ6V75nel828I8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=3KoPbqGA3x8KpBWTztsVRp6Kctb4xQH1j1aJEC4rjZYaOM030ZpC6NKWd9ufmkRYP
	 gw6Pnz7UkekyN4MCliqi6oBw5OrJ/Kg1aMQxr8x9wm+4n7PYIxt2sPbyqvoe96R4Rk
	 GgZi2k4z7qopM6V057cp2r+aGxasWrQieIN42GfFheLi5eD8WK4LF7pyKPWVCV2Tbp
	 Y8ke2bJR5y/uX2RH+KLLc2vpoH3fFxDHbAQjsq6zKIo26/nQWJUXwoxyuay/CRbcjs
	 sgu5a9yCNM5ZuT3YKviVSws6UNIf/LR4qWRfs3bnW8AfMJ914eJQ2oivy2+USrwd9o
	 6KG4IipMi3W9g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CDB89607C1;
	Sat,  2 Aug 2025 11:56:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 53C51160
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Aug 2025 11:56:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4558F40233
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Aug 2025 11:56:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9AEhC0IVP2FA for <intel-wired-lan@lists.osuosl.org>;
 Sat,  2 Aug 2025 11:56:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A26EC40028
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A26EC40028
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A26EC40028
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Aug 2025 11:56:02 +0000 (UTC)
X-CSE-ConnectionGUID: iKoJ+CL3SGOo0Q4+HjrW5w==
X-CSE-MsgGUID: MFqCakU1Rv+q+ICyR+h3jQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11508"; a="56425161"
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="56425161"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2025 04:56:01 -0700
X-CSE-ConnectionGUID: qNH6yNT6SEWQhyTyNgAJyw==
X-CSE-MsgGUID: 7jIaFD/VQWiKZBxB4JRfQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="168039141"
Received: from lkp-server01.sh.intel.com (HELO 160750d4a34c) ([10.239.97.150])
 by fmviesa005.fm.intel.com with ESMTP; 02 Aug 2025 04:56:00 -0700
Received: from kbuild by 160750d4a34c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uiAqE-0005LE-2E
 for intel-wired-lan@lists.osuosl.org; Sat, 02 Aug 2025 11:55:58 +0000
Date: Sat, 02 Aug 2025 19:55:46 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202508021937.YKATpnYE-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754135762; x=1785671762;
 h=date:from:to:subject:message-id;
 bh=ZIbxGDe7HVxI5tmUPKkO/CbTw8zaCWvaCo4qrueXLlw=;
 b=VGo8CYa9UgJn9Ges3zfZLm/RtrfsC4QRHhB+rR25EWmBcl/k/v+tBBp6
 chpBsvHkt59Yi98TJAoS4xlRwcqCWZPG/xU37ebgnH6sQXAf/uI1rvR4+
 m4FZHxJaExWateXmRTQFqdHtBJCe6J/nE+6LZ2EGg45GiN68iS3yfVakP
 cCURDfwE1/A2CKMJgs2cVU1+CxNOOTPLyt+ctZGSvyW3YEkUYvhweNhce
 mx23sC0v/6LGFxwPqYPTaDJBvPziOGXhfnHHb6sl4q6vsqMPerEjwNPJT
 PxULpAgo9h1EPTaqDQkauUd+dgL1ONPJV0A6z9TbvXQf1nD2Dl/HhzMGZ
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VGo8CYa9
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 3e6a658d53f883a6e222080d047422bf677e8d6d
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 3e6a658d53f883a6e222080d047422bf677e8d6d  ice: use fixed adapter index for E825C embedded devices

elapsed time: 730m

configs tested: 106
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                   randconfig-001-20250802    gcc-11.5.0
arc                   randconfig-002-20250802    gcc-14.3.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    gcc-15.1.0
arm                   randconfig-001-20250802    gcc-10.5.0
arm                   randconfig-002-20250802    clang-22
arm                   randconfig-003-20250802    clang-18
arm                   randconfig-004-20250802    gcc-8.5.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250802    gcc-12.5.0
arm64                 randconfig-002-20250802    gcc-8.5.0
arm64                 randconfig-003-20250802    clang-22
arm64                 randconfig-004-20250802    gcc-8.5.0
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250802    gcc-15.1.0
csky                  randconfig-002-20250802    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-22
hexagon               randconfig-001-20250802    clang-22
hexagon               randconfig-002-20250802    clang-22
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250802    gcc-12
i386        buildonly-randconfig-002-20250802    gcc-12
i386        buildonly-randconfig-003-20250802    clang-20
i386        buildonly-randconfig-004-20250802    gcc-12
i386        buildonly-randconfig-005-20250802    clang-20
i386        buildonly-randconfig-006-20250802    clang-20
i386                                defconfig    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch             randconfig-001-20250802    clang-18
loongarch             randconfig-002-20250802    clang-22
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-11.5.0
nios2                 randconfig-001-20250802    gcc-9.5.0
nios2                 randconfig-002-20250802    gcc-8.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                randconfig-001-20250802    gcc-8.5.0
parisc                randconfig-002-20250802    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-22
powerpc               randconfig-001-20250802    gcc-8.5.0
powerpc               randconfig-002-20250802    clang-20
powerpc               randconfig-003-20250802    gcc-10.5.0
powerpc64             randconfig-001-20250802    clang-16
powerpc64             randconfig-002-20250802    gcc-8.5.0
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                 randconfig-001-20250802    gcc-10.5.0
riscv                 randconfig-002-20250802    gcc-9.5.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20250802    clang-22
s390                  randconfig-002-20250802    gcc-15.1.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                    randconfig-001-20250802    gcc-15.1.0
sh                    randconfig-002-20250802    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                 randconfig-001-20250802    gcc-8.5.0
sparc                 randconfig-002-20250802    gcc-8.5.0
sparc64               randconfig-001-20250802    gcc-8.5.0
sparc64               randconfig-002-20250802    clang-20
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-12
um                    randconfig-001-20250802    clang-22
um                    randconfig-002-20250802    clang-22
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250802    gcc-12
x86_64      buildonly-randconfig-002-20250802    clang-20
x86_64      buildonly-randconfig-003-20250802    clang-20
x86_64      buildonly-randconfig-004-20250802    clang-20
x86_64      buildonly-randconfig-005-20250802    clang-20
x86_64      buildonly-randconfig-006-20250802    clang-20
x86_64                              defconfig    gcc-11
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250802    gcc-13.4.0
xtensa                randconfig-002-20250802    gcc-9.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
