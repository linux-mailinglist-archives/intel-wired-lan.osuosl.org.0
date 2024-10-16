Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 351BC9A151B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Oct 2024 23:48:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9F911608F8;
	Wed, 16 Oct 2024 21:48:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1a3Onuo3NA0Z; Wed, 16 Oct 2024 21:48:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 609B7608FC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729115330;
	bh=lIwx5WhsDyiY2WYGOd/heYH90/uhR95gUsXZ15lWoQU=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=sOYKTbsp0DptClj1Q7r3vs982fiQ7/KiNxnyWR3/PtuFmGUCxj6aDI3ZnU3iAuz5R
	 r8dedgI950KqndtOwr76PPmHDDfNpKJ3cgk2Z2tCyVcmD25zONW1+tviMeYEFANLnK
	 Cp8IpOP6Kc6435TBrdYKNHPddKdO30/X5sv34TMEPsoo8JgKwQK29EQaESiExWbwts
	 gMK6CcbJ5w98GReEAiQK3fxTLNen99MiD2rV0u7gmm3P+n5CRntXMBYF3VRr871TW9
	 iUCtLO5Xx+ITQESj+B42sbQuCOjecpYhbUc+5DUkFC6xUxHhQjoQnHL4IzkGZKMylD
	 +dRnLKikrh5ow==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 609B7608FC;
	Wed, 16 Oct 2024 21:48:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id C3D6327E1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2024 21:48:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9F58381135
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2024 21:48:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LJpAjtrPv8Os for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Oct 2024 21:48:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3729F81066
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3729F81066
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3729F81066
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2024 21:48:46 +0000 (UTC)
X-CSE-ConnectionGUID: liWdoxF5QLeZCEEDWJrSfw==
X-CSE-MsgGUID: iBiZgKpLTyytaPEF9FAQQw==
X-IronPort-AV: E=McAfee;i="6700,10204,11226"; a="39952868"
X-IronPort-AV: E=Sophos;i="6.11,209,1725346800"; d="scan'208";a="39952868"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2024 14:48:46 -0700
X-CSE-ConnectionGUID: ror5m4GFS6ePr4e0xI8RQg==
X-CSE-MsgGUID: j4Y+wmTXQuet1TN1DZWIMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,209,1725346800"; d="scan'208";a="109115178"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
 by fmviesa001.fm.intel.com with ESMTP; 16 Oct 2024 14:48:45 -0700
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1t1Bso-000LSN-2o
 for intel-wired-lan@lists.osuosl.org; Wed, 16 Oct 2024 21:48:42 +0000
Date: Thu, 17 Oct 2024 05:47:48 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202410170536.M6Pu4zr0-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729115327; x=1760651327;
 h=date:from:to:subject:message-id;
 bh=/5oQaML25BDqt5chsftrSQecuJejCtzP4QwgNGMz7f4=;
 b=Mvwo24GUINEfFRrpD1bxigeIHKiFOVBHPLHjXKFzGDMUQCpcUAnNDySO
 iuBNG1m0szYPhQkap+1i1bnnrmMyi1v6tXHFw1MZxvEZ+kw+c49n11ke6
 N9PFgcSUWyDjt/lXZa54HSLIeAFHC/mj+V0Se/DaHTb1v0v/7Nn5l4vQe
 4r+caniXQV18U6z6ATdRRSS/3+0q9lvsi9dbo3Uh7n8GiG4UONsYdRnnJ
 ziKecDiHbkiTRSkWfXqitmuiTLxZvlaQSlPWswAGOD9UY+hV8DMS1EjtO
 /a2DkHcGFdCUWtZHpFXJxRXzWxxOpHhTVaYqOi32nnIOpOauwIKgwaHpL
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Mvwo24GU
Subject: [Intel-wired-lan] [tnguy-net-queue:main] BUILD SUCCESS
 c186b7a7f2387d9e09ad408420570be025b187c5
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
branch HEAD: c186b7a7f2387d9e09ad408420570be025b187c5  net: ethernet: rtsn: fix potential memory leak in rtsn_start_xmit()

elapsed time: 1597m

configs tested: 98
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.1.0
alpha                            allyesconfig    clang-20
alpha                               defconfig    gcc-14.1.0
arc                              allmodconfig    clang-20
arc                               allnoconfig    gcc-14.1.0
arc                              allyesconfig    clang-20
arc                                 defconfig    gcc-14.1.0
arm                              allmodconfig    clang-20
arm                               allnoconfig    gcc-14.1.0
arm                              allyesconfig    clang-20
arm                                 defconfig    gcc-14.1.0
arm64                            allmodconfig    clang-20
arm64                             allnoconfig    gcc-14.1.0
arm64                               defconfig    gcc-14.1.0
csky                              allnoconfig    gcc-14.1.0
csky                                defconfig    gcc-14.1.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    gcc-14.1.0
hexagon                          allyesconfig    clang-20
hexagon                             defconfig    gcc-14.1.0
i386                             allmodconfig    clang-18
i386                              allnoconfig    clang-18
i386                             allyesconfig    clang-18
i386        buildonly-randconfig-001-20241016    gcc-11
i386        buildonly-randconfig-002-20241016    gcc-11
i386        buildonly-randconfig-003-20241016    gcc-11
i386        buildonly-randconfig-004-20241016    gcc-11
i386        buildonly-randconfig-005-20241016    gcc-11
i386        buildonly-randconfig-006-20241016    gcc-11
i386                                defconfig    clang-18
i386                  randconfig-001-20241016    gcc-11
i386                  randconfig-002-20241016    gcc-11
i386                  randconfig-003-20241016    gcc-11
i386                  randconfig-004-20241016    gcc-11
i386                  randconfig-005-20241016    gcc-11
i386                  randconfig-006-20241016    gcc-11
i386                  randconfig-011-20241016    gcc-11
i386                  randconfig-012-20241016    gcc-11
i386                  randconfig-013-20241016    gcc-11
i386                  randconfig-014-20241016    gcc-11
i386                  randconfig-015-20241016    gcc-11
i386                  randconfig-016-20241016    gcc-11
loongarch                        allmodconfig    gcc-14.1.0
loongarch                         allnoconfig    gcc-14.1.0
loongarch                           defconfig    gcc-14.1.0
m68k                             allmodconfig    gcc-14.1.0
m68k                              allnoconfig    gcc-14.1.0
m68k                             allyesconfig    gcc-14.1.0
m68k                                defconfig    gcc-14.1.0
microblaze                       allmodconfig    gcc-14.1.0
microblaze                        allnoconfig    gcc-14.1.0
microblaze                       allyesconfig    gcc-14.1.0
microblaze                          defconfig    gcc-14.1.0
mips                              allnoconfig    gcc-14.1.0
nios2                             allnoconfig    gcc-14.1.0
nios2                               defconfig    gcc-14.1.0
openrisc                          allnoconfig    clang-20
openrisc                         allyesconfig    gcc-14.1.0
openrisc                            defconfig    gcc-12
parisc                           allmodconfig    gcc-14.1.0
parisc                            allnoconfig    clang-20
parisc                           allyesconfig    gcc-14.1.0
parisc                              defconfig    gcc-12
parisc64                            defconfig    gcc-14.1.0
powerpc                          allmodconfig    gcc-14.1.0
powerpc                           allnoconfig    clang-20
powerpc                          allyesconfig    gcc-14.1.0
riscv                            allmodconfig    gcc-14.1.0
riscv                             allnoconfig    clang-20
riscv                            allyesconfig    gcc-14.1.0
riscv                               defconfig    gcc-12
s390                             allmodconfig    gcc-14.1.0
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.1.0
s390                                defconfig    gcc-12
sh                               allmodconfig    gcc-14.1.0
sh                                allnoconfig    gcc-14.1.0
sh                               allyesconfig    gcc-14.1.0
sh                                  defconfig    gcc-12
sparc                            allmodconfig    gcc-14.1.0
sparc64                             defconfig    gcc-12
um                               allmodconfig    clang-20
um                                allnoconfig    clang-20
um                               allyesconfig    clang-20
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-18
x86_64                           allyesconfig    clang-18
x86_64                              defconfig    clang-18
x86_64                                  kexec    clang-18
x86_64                                  kexec    gcc-12
x86_64                               rhel-8.3    gcc-12
x86_64                           rhel-8.3-bpf    clang-18
x86_64                         rhel-8.3-kunit    clang-18
x86_64                           rhel-8.3-ltp    clang-18
x86_64                          rhel-8.3-rust    clang-18
xtensa                            allnoconfig    gcc-14.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
