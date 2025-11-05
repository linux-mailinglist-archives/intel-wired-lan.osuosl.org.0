Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A9738C37707
	for <lists+intel-wired-lan@lfdr.de>; Wed, 05 Nov 2025 20:13:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1172F613BB;
	Wed,  5 Nov 2025 19:13:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9Vfmm6XGV3IL; Wed,  5 Nov 2025 19:13:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 45A31613BE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762370019;
	bh=AGjKx9THFmiFSc39xKUc/BKT507gzRMUUagiiQ5Olmk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=bJFDxjuDMtm54yq8QePY7ZQNfSEZ849RnXjq6PlO9B+qtTFoFMMs7e3GkK7RZWTok
	 aEWT81vyQipk0ThAgwUeXyI0rUtWKOIki+O+9RocaLcbjgSu3+MVzaRSOqouI4hpMb
	 vUCvwGwki7gN9bvvFP4v5REtYV2nXIoomW/kS4BXJqr80NUv+6y3pnO46HmcIvM7aC
	 jpdmUP6v0/sERA929RSMdGFGlahR10l/tUbiPYea9+Tdu066TiXkvqHXX5KTxFhXec
	 87BVGuvpAzxU0Pjm89aRv82VvSxZxC3pwnVwN6Dxct6OZYnmN6kjFynsa+F9YZ/32n
	 HppYawJgU17TQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 45A31613BE;
	Wed,  5 Nov 2025 19:13:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id DFE28B00
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 19:13:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C2AA740434
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 19:13:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Px_AOY0UZLea for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Nov 2025 19:13:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 91E1540243
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 91E1540243
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 91E1540243
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 19:13:36 +0000 (UTC)
X-CSE-ConnectionGUID: wpTgR0nkR/+N/ACxBmwMIg==
X-CSE-MsgGUID: nGrPLJEARcK8phh02Bu7Ag==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="82125353"
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="82125353"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 11:13:36 -0800
X-CSE-ConnectionGUID: ae4k+R1JRBuZVvPyl3QrOg==
X-CSE-MsgGUID: CabOvUHYT/mNNU8MOETHtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="187204921"
Received: from lkp-server02.sh.intel.com (HELO 66d7546c76b2) ([10.239.97.151])
 by fmviesa007.fm.intel.com with ESMTP; 05 Nov 2025 11:13:35 -0800
Received: from kbuild by 66d7546c76b2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1vGiwm-000T1S-2I
 for intel-wired-lan@lists.osuosl.org; Wed, 05 Nov 2025 19:13:32 +0000
Date: Thu, 06 Nov 2025 03:12:08 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202511060302.5O76PNIq-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762370017; x=1793906017;
 h=date:from:to:subject:message-id;
 bh=77gvbRK5JMdCetKMntd20kQe1lyPBBOecMZAPVy/Jjg=;
 b=ECz5AzqzAdGdlYUWzHfzXrYtdjQlhY38yofqAdjLm2UEP/ZZFjHm5me+
 TjqOvO216t1Afesuf/JzZDgIh2hBMd759EOcU5+Nbxid37fjeQEqOYEax
 MS0DWamhfkQypQfnfG8BZQi6byMN5TS331gXFPmKagnaYHe0e+XbNoC1N
 Xhwv0WCRMegDI5dVM7LJZd85ZOfA4CdnntDJMgvPxjcDzsD54wjPC9g69
 VqIgbd0eIuy4WwcsVN92UebpHO43zNgsu/kn1uAJL48b2V9GGpXtNBhet
 WEprW/ZykCZosH3cNhMmNMU83P6/cqXvcNAEuuWwTUWmC3YcT1LYmkM1S
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ECz5Azqz
Subject: [Intel-wired-lan] [tnguy-net-queue:10GbE] BUILD SUCCESS
 023706bf0514e288fc7d26fdf5a13801c8bb499a
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 10GbE
branch HEAD: 023706bf0514e288fc7d26fdf5a13801c8bb499a  libie: depend on DEBUG_FS when building LIBIE_FWLOG

elapsed time: 1543m

configs tested: 102
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                   allnoconfig    gcc-15.1.0
alpha                  allyesconfig    clang-19
arc                    allmodconfig    clang-19
arc                     allnoconfig    gcc-15.1.0
arc                    allyesconfig    clang-19
arc         randconfig-001-20251105    gcc-8.5.0
arc         randconfig-002-20251105    gcc-13.4.0
arm                    allmodconfig    clang-19
arm                     allnoconfig    clang-22
arm                    allyesconfig    clang-19
arm         randconfig-001-20251105    clang-22
arm         randconfig-002-20251105    clang-22
arm         randconfig-003-20251105    clang-22
arm         randconfig-004-20251105    gcc-12.5.0
arm64                  allmodconfig    clang-19
arm64                   allnoconfig    gcc-15.1.0
arm64                  allyesconfig    clang-22
csky                   allmodconfig    gcc-15.1.0
csky                    allnoconfig    gcc-15.1.0
csky                   allyesconfig    gcc-15.1.0
hexagon                allmodconfig    clang-19
hexagon                 allnoconfig    clang-22
hexagon                allyesconfig    clang-19
hexagon     randconfig-001-20251105    clang-22
hexagon     randconfig-002-20251105    clang-20
i386                   allmodconfig    clang-20
i386                    allnoconfig    gcc-14
i386                   allyesconfig    clang-20
loongarch              allmodconfig    clang-19
loongarch               allnoconfig    clang-22
loongarch              allyesconfig    clang-22
loongarch   randconfig-001-20251105    clang-18
loongarch   randconfig-002-20251105    clang-20
m68k                   allmodconfig    gcc-15.1.0
m68k                    allnoconfig    gcc-15.1.0
m68k                   allyesconfig    gcc-15.1.0
microblaze             allmodconfig    gcc-15.1.0
microblaze              allnoconfig    gcc-15.1.0
microblaze             allyesconfig    gcc-15.1.0
mips                   allmodconfig    gcc-15.1.0
mips                    allnoconfig    gcc-15.1.0
mips                   allyesconfig    gcc-15.1.0
nios2                  allmodconfig    gcc-11.5.0
nios2                   allnoconfig    gcc-11.5.0
nios2                  allyesconfig    gcc-11.5.0
nios2       randconfig-001-20251105    gcc-9.5.0
nios2       randconfig-002-20251105    gcc-8.5.0
openrisc                allnoconfig    gcc-15.1.0
openrisc               allyesconfig    gcc-15.1.0
parisc                 allmodconfig    gcc-15.1.0
parisc                  allnoconfig    gcc-15.1.0
parisc                 allyesconfig    gcc-15.1.0
parisc      randconfig-001-20251105    gcc-12.5.0
parisc      randconfig-002-20251105    gcc-10.5.0
powerpc                allmodconfig    gcc-15.1.0
powerpc                 allnoconfig    gcc-15.1.0
powerpc                allyesconfig    gcc-15.1.0
powerpc     randconfig-001-20251105    gcc-14.3.0
powerpc     randconfig-002-20251105    gcc-12.5.0
powerpc64   randconfig-001-20251105    clang-22
powerpc64   randconfig-002-20251105    clang-22
riscv                  allmodconfig    gcc-15.1.0
riscv                   allnoconfig    gcc-15.1.0
riscv                  allyesconfig    gcc-15.1.0
riscv       randconfig-001-20251105    gcc-8.5.0
riscv       randconfig-002-20251105    clang-18
s390                   allmodconfig    clang-18
s390                   allmodconfig    gcc-15.1.0
s390                    allnoconfig    clang-22
s390                   allyesconfig    gcc-15.1.0
s390        randconfig-001-20251105    gcc-8.5.0
s390        randconfig-002-20251105    gcc-14.3.0
sh                     allmodconfig    gcc-15.1.0
sh                      allnoconfig    gcc-15.1.0
sh                     allyesconfig    gcc-15.1.0
sh          randconfig-001-20251105    gcc-10.5.0
sh          randconfig-002-20251105    gcc-11.5.0
sparc                  allmodconfig    gcc-15.1.0
sparc                   allnoconfig    gcc-15.1.0
sparc       randconfig-001-20251105    gcc-12.5.0
sparc       randconfig-002-20251105    gcc-15.1.0
sparc64     randconfig-001-20251105    clang-22
sparc64     randconfig-002-20251105    gcc-10.5.0
um                     allmodconfig    clang-19
um                      allnoconfig    clang-22
um                     allyesconfig    clang-19
um          randconfig-001-20251105    clang-22
um          randconfig-002-20251105    gcc-14
x86_64                 allmodconfig    clang-20
x86_64                  allnoconfig    clang-20
x86_64                 allyesconfig    clang-20
x86_64                        kexec    clang-20
x86_64                     rhel-9.4    clang-20
x86_64                 rhel-9.4-bpf    gcc-14
x86_64                rhel-9.4-func    clang-20
x86_64          rhel-9.4-kselftests    clang-20
x86_64               rhel-9.4-kunit    gcc-14
x86_64                 rhel-9.4-ltp    gcc-14
x86_64                rhel-9.4-rust    clang-20
xtensa                  allnoconfig    gcc-15.1.0
xtensa      randconfig-001-20251105    gcc-11.5.0
xtensa      randconfig-002-20251105    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
