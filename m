Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C34ECD3DA8
	for <lists+intel-wired-lan@lfdr.de>; Sun, 21 Dec 2025 10:27:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 68BB160E3E;
	Sun, 21 Dec 2025 09:27:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id khDJea45X8T1; Sun, 21 Dec 2025 09:27:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C0C2C60E3D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766309228;
	bh=VQpZJvvJwVxhh0nd4uHlm/6Gb2Orl16MN/e/0Em6RqI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=C1NX6ySEhyjbE/zFOfT+BYkifQgRSHGLTERg+hKTcmjhorWoCGbkfjoB5DTO+H0sY
	 +I7hLtxrujsy1RrWhu/qAxskvC7nbY9p2jGFrIbOP2IFdgHkqV8jzKrT1D/aPfj0vv
	 K7WRdfhrVYDC8sG0BswCvpyiCxNDOyUzyosZmeaRjjaFZ+lUCt4bbf7of2mweRPneP
	 49Zm0zgZEkmLFnOBrZI5bLzLekdvqAc08hXdOqa5pG6LaWIkZhgi0gvWsu6v7wDwP6
	 FUNAZmfpVHUAlEXrN5MGSBgt9Fr8ezWUrr2DgsaniUvvKoNzCcvKAk43XN9GYqicqe
	 dq4+HdVivAzSA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C0C2C60E3D;
	Sun, 21 Dec 2025 09:27:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 7B2CC1A6
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Dec 2025 09:27:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6172D81D16
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Dec 2025 09:27:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8JJVBrkQZpqP for <intel-wired-lan@lists.osuosl.org>;
 Sun, 21 Dec 2025 09:27:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 57D1E81D11
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 57D1E81D11
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 57D1E81D11
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Dec 2025 09:27:06 +0000 (UTC)
X-CSE-ConnectionGUID: s6iE9FWkSgi1K6nVR1NolA==
X-CSE-MsgGUID: M2PegCdzSUGYI+BLaRzXWg==
X-IronPort-AV: E=McAfee;i="6800,10657,11648"; a="78917827"
X-IronPort-AV: E=Sophos;i="6.21,164,1763452800"; d="scan'208";a="78917827"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2025 01:27:05 -0800
X-CSE-ConnectionGUID: GRERte2/Qmyph77DWfoeUw==
X-CSE-MsgGUID: 8e/RvcziTlyqK8/JxQZ0QQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,164,1763452800"; d="scan'208";a="203798964"
Received: from lkp-server01.sh.intel.com (HELO 0d09efa1b85f) ([10.239.97.150])
 by orviesa004.jf.intel.com with ESMTP; 21 Dec 2025 01:27:04 -0800
Received: from kbuild by 0d09efa1b85f with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vXFiP-000000005UX-3urI;
 Sun, 21 Dec 2025 09:27:01 +0000
Date: Sun, 21 Dec 2025 17:26:18 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202512211710.qgj54Vv5-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766309226; x=1797845226;
 h=date:from:to:subject:message-id;
 bh=fQTAJjMxSoX6gt8Hwd7xJ+jAdEnEdLkdQJKa2y8zySU=;
 b=GsJfffli9XHmUY8JeBSawvk66iJ0+15fewvazBpb0cW3S5UbmpnAL72F
 i6v5Med5Q9jGO4dXaNLXCtXRGTcBiB7fWbkVp3fjNaQOYvWiorNvJ9kAk
 ldq4o+7etfAhzrgXMr0p6t+IvmfyE7CmDnp9PyfNLozUV0TgVmu4ay7lr
 lB4NwvUv68jLGHp2xMJf6WdexU5ehAUXo7XebUAgQ9SuNWY90Qt9PCtNo
 NAHqIA3yQd5QObq3tVQu9k7r6pauuTGeND4hye+cmPGSZu1wV6FMlJc5T
 zYUE7L8eH6Id5oIMP2uNjnMxbtJ1fiaEOxuIuM+wWee1CI7cOpmx40kjS
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GsJfffli
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 bce2071524093d71cdc5e54c4faab18f9d54e763
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
branch HEAD: bce2071524093d71cdc5e54c4faab18f9d54e763  ixgbe: don't initialize aci lock in ixgbe_recovery_probe()

elapsed time: 2399m

configs tested: 80
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
alpha                               defconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    clang-22
arc                                 defconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                               allnoconfig    gcc-15.1.0
arm                                 defconfig    gcc-15.1.0
arm64                            allmodconfig    clang-22
arm64                             allnoconfig    gcc-15.1.0
arm64                               defconfig    gcc-15.1.0
csky                             allmodconfig    gcc-15.1.0
csky                              allnoconfig    gcc-15.1.0
csky                                defconfig    gcc-15.1.0
hexagon                          allmodconfig    gcc-15.1.0
hexagon                           allnoconfig    clang-22
hexagon                           allnoconfig    gcc-15.1.0
hexagon                             defconfig    gcc-15.1.0
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                              allnoconfig    gcc-15.1.0
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20251221    clang-20
i386        buildonly-randconfig-001-20251221    gcc-14
i386        buildonly-randconfig-002-20251221    clang-20
i386        buildonly-randconfig-003-20251221    clang-20
i386        buildonly-randconfig-003-20251221    gcc-14
i386        buildonly-randconfig-004-20251221    clang-20
i386        buildonly-randconfig-004-20251221    gcc-14
i386        buildonly-randconfig-005-20251221    clang-20
i386        buildonly-randconfig-006-20251221    clang-20
i386        buildonly-randconfig-006-20251221    gcc-14
i386                                defconfig    gcc-15.1.0
loongarch                        allmodconfig    clang-22
loongarch                         allnoconfig    clang-22
loongarch                         allnoconfig    gcc-15.1.0
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                             allyesconfig    gcc-15.1.0
nios2                            allmodconfig    clang-22
nios2                             allnoconfig    clang-22
nios2                             allnoconfig    gcc-11.5.0
openrisc                         allmodconfig    clang-22
openrisc                          allnoconfig    clang-22
openrisc                          allnoconfig    gcc-15.1.0
parisc                            allnoconfig    clang-22
parisc                            allnoconfig    gcc-15.1.0
powerpc                           allnoconfig    clang-22
powerpc                           allnoconfig    gcc-15.1.0
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    clang-22
riscv                             allnoconfig    gcc-15.1.0
s390                              allnoconfig    clang-22
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    clang-22
sh                                allnoconfig    gcc-15.1.0
sparc                             allnoconfig    clang-22
sparc                             allnoconfig    gcc-15.1.0
sparc64                          allmodconfig    clang-22
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-15.1.0
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-20
x86_64                            allnoconfig    clang-22
x86_64                           allyesconfig    clang-20
x86_64                                  kexec    clang-20
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-14
x86_64                          rhel-9.4-func    clang-20
x86_64                    rhel-9.4-kselftests    clang-20
x86_64                         rhel-9.4-kunit    gcc-14
x86_64                           rhel-9.4-ltp    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    clang-22
xtensa                            allnoconfig    gcc-15.1.0
xtensa                           allyesconfig    clang-22

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
