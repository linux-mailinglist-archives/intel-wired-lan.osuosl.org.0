Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CA4AA249B7
	for <lists+intel-wired-lan@lfdr.de>; Sat,  1 Feb 2025 16:19:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id ECCC482422;
	Sat,  1 Feb 2025 15:19:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Bj-OeMknZ_9A; Sat,  1 Feb 2025 15:19:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 84D3683FFD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738423187;
	bh=YnE5Zjw7LB8cajyJtBM5mSvf6h6t2pKQyQ/eJbKDUmI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ybNOAGOslUPKsmmq0lVQ3uhwqfvEp1L+tUkSqVfGttqn6eHmeHfYbfZHSfpB8sHYo
	 ny1+/S8x7Zghud3gLPIqQHGDlUaXgBnRDUQixHBMUhBQRlUNkL/K5TAGjCwN91QeLt
	 m3iXMSFp4xVpSr+1PIZeqOYau+UViXoYHi6Y9MsoIoO8A6SwtvgOQP5pKiPD64tXPX
	 luWTOtvofA4VCmbNY0gGvrgm6tAVfjwn/SW2D1wpmBshFsC/ueW9I6UtdjPhweDdUW
	 HPu1iSeK4bkxupU2WOyBlwiuP+DOfX+uroYW7+TLd7Luy55gIJv4y4WC7vfj5u+inL
	 spCEJ0pdkszGg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 84D3683FFD;
	Sat,  1 Feb 2025 15:19:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9730016E
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Feb 2025 15:19:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 862B0426B8
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Feb 2025 15:19:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mxSUlGv_RQRJ for <intel-wired-lan@lists.osuosl.org>;
 Sat,  1 Feb 2025 15:19:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 04F2242532
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 04F2242532
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 04F2242532
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Feb 2025 15:19:43 +0000 (UTC)
X-CSE-ConnectionGUID: wYwUIw5IRviGlthsDc2zDw==
X-CSE-MsgGUID: 4GRHCwwJR0yBT9Z8JHIZog==
X-IronPort-AV: E=McAfee;i="6700,10204,11333"; a="39234903"
X-IronPort-AV: E=Sophos;i="6.13,252,1732608000"; d="scan'208";a="39234903"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2025 07:19:26 -0800
X-CSE-ConnectionGUID: yd3ayb+hS0mo2R+a2O2Lrw==
X-CSE-MsgGUID: a9TMZAavT62/K5wA+jTSrg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,252,1732608000"; d="scan'208";a="110467360"
Received: from lkp-server01.sh.intel.com (HELO d63d4d77d921) ([10.239.97.150])
 by fmviesa010.fm.intel.com with ESMTP; 01 Feb 2025 07:19:24 -0800
Received: from kbuild by d63d4d77d921 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1teFHG-000oI7-0z
 for intel-wired-lan@lists.osuosl.org; Sat, 01 Feb 2025 15:19:22 +0000
Date: Sat, 01 Feb 2025 23:18:57 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202502012351.DVvn3eap-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738423184; x=1769959184;
 h=date:from:to:subject:message-id;
 bh=xNSA4aVpABJEl+s+IYv9r5IOk8nVIJCxiwNzbNnZF6w=;
 b=NEPP4q0lortIPsdeOyGgHQXVp5JmAmufLfVDHhZOkht71wITvcHcEFPu
 0ZTxTz8Gk6t8XdYcqVQ2g6VNHv7U39JtBfvWXSyLSDtUqSMJWIB3WNT1n
 dKh7V+jFPrc3sl3x1/Hq3fvZRHg/4RJ3GXTe8areHZyQFnAGh751poTec
 OKNDvIOGhrBQryx09wTB/Z978JBwvC+78Xtg+0O44en3AteRMqbKNpL27
 3G9/vQ567lnPjsNV7QzEMFiy2mX13E37HgR+QEByY8UyZPEU3lbJCh9e5
 0O7k2HbeMnxhR7OvQ+9kfxs9z8BKKyXwgA/YwQQKesDtxFO67JI8Scd3e
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=NEPP4q0l
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 d487853aa91104ff76e1a2b542638d17dbb6798a
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: d487853aa91104ff76e1a2b542638d17dbb6798a  ice: init flow director before RDMA

elapsed time: 1051m

configs tested: 198
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    clang-21
alpha                            allyesconfig    gcc-14.2.0
alpha                               defconfig    gcc-14.2.0
arc                              allmodconfig    clang-18
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-13.2.0
arc                               allnoconfig    gcc-14.2.0
arc                              allyesconfig    clang-18
arc                              allyesconfig    gcc-13.2.0
arc                      axs103_smp_defconfig    clang-21
arc                                 defconfig    gcc-14.2.0
arc                   randconfig-001-20250201    gcc-13.2.0
arc                   randconfig-002-20250201    gcc-13.2.0
arm                              allmodconfig    clang-18
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    clang-17
arm                               allnoconfig    gcc-14.2.0
arm                              allyesconfig    clang-18
arm                              allyesconfig    gcc-14.2.0
arm                         axm55xx_defconfig    clang-21
arm                                 defconfig    gcc-14.2.0
arm                        neponset_defconfig    gcc-14.2.0
arm                   randconfig-001-20250201    gcc-14.2.0
arm                   randconfig-002-20250201    clang-18
arm                   randconfig-003-20250201    gcc-14.2.0
arm                   randconfig-004-20250201    gcc-14.2.0
arm                           sama7_defconfig    gcc-14.2.0
arm64                            allmodconfig    clang-18
arm64                             allnoconfig    gcc-14.2.0
arm64                               defconfig    gcc-14.2.0
arm64                 randconfig-001-20250201    gcc-14.2.0
arm64                 randconfig-002-20250201    clang-16
arm64                 randconfig-003-20250201    gcc-14.2.0
arm64                 randconfig-004-20250201    gcc-14.2.0
csky                              allnoconfig    gcc-14.2.0
csky                                defconfig    gcc-14.2.0
csky                  randconfig-001-20250201    gcc-14.2.0
csky                  randconfig-002-20250201    gcc-14.2.0
hexagon                          allmodconfig    clang-21
hexagon                           allnoconfig    clang-21
hexagon                           allnoconfig    gcc-14.2.0
hexagon                          allyesconfig    clang-18
hexagon                          allyesconfig    clang-21
hexagon                             defconfig    gcc-14.2.0
hexagon               randconfig-001-20250201    clang-21
hexagon               randconfig-001-20250201    gcc-14.2.0
hexagon               randconfig-002-20250201    clang-21
hexagon               randconfig-002-20250201    gcc-14.2.0
i386                             allmodconfig    clang-19
i386                             allmodconfig    gcc-12
i386                              allnoconfig    clang-19
i386                              allnoconfig    gcc-12
i386                             allyesconfig    clang-19
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250201    clang-19
i386        buildonly-randconfig-002-20250201    gcc-12
i386        buildonly-randconfig-003-20250201    gcc-12
i386        buildonly-randconfig-004-20250201    gcc-12
i386        buildonly-randconfig-005-20250201    gcc-12
i386        buildonly-randconfig-006-20250201    clang-19
i386                                defconfig    clang-19
i386                  randconfig-001-20250201    clang-19
i386                  randconfig-002-20250201    clang-19
i386                  randconfig-003-20250201    clang-19
i386                  randconfig-004-20250201    clang-19
i386                  randconfig-005-20250201    clang-19
i386                  randconfig-006-20250201    clang-19
i386                  randconfig-007-20250201    clang-19
i386                  randconfig-011-20250201    clang-19
i386                  randconfig-012-20250201    clang-19
i386                  randconfig-013-20250201    clang-19
i386                  randconfig-014-20250201    clang-19
i386                  randconfig-015-20250201    clang-19
i386                  randconfig-016-20250201    clang-19
i386                  randconfig-017-20250201    clang-19
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch                           defconfig    gcc-14.2.0
loongarch             randconfig-001-20250201    gcc-14.2.0
loongarch             randconfig-002-20250201    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
m68k                                defconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
microblaze                          defconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-14.2.0
nios2                               defconfig    gcc-14.2.0
nios2                 randconfig-001-20250201    gcc-14.2.0
nios2                 randconfig-002-20250201    gcc-14.2.0
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
openrisc                            defconfig    gcc-12
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                              defconfig    gcc-12
parisc                randconfig-001-20250201    gcc-14.2.0
parisc                randconfig-002-20250201    gcc-14.2.0
parisc64                            defconfig    gcc-14.2.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    gcc-14.2.0
powerpc                          allyesconfig    clang-16
powerpc                      bamboo_defconfig    clang-21
powerpc                   currituck_defconfig    clang-21
powerpc                       holly_defconfig    clang-21
powerpc               randconfig-001-20250201    clang-21
powerpc               randconfig-001-20250201    gcc-14.2.0
powerpc               randconfig-002-20250201    clang-18
powerpc               randconfig-002-20250201    gcc-14.2.0
powerpc               randconfig-003-20250201    gcc-14.2.0
powerpc                     sequoia_defconfig    gcc-14.2.0
powerpc64             randconfig-001-20250201    gcc-14.2.0
powerpc64             randconfig-002-20250201    gcc-14.2.0
powerpc64             randconfig-003-20250201    gcc-14.2.0
riscv                            allmodconfig    clang-21
riscv                             allnoconfig    gcc-14.2.0
riscv                            allyesconfig    clang-21
riscv                               defconfig    gcc-12
riscv                 randconfig-001-20250201    clang-21
riscv                 randconfig-001-20250201    gcc-14.2.0
riscv                 randconfig-002-20250201    gcc-14.2.0
s390                             allmodconfig    clang-19
s390                             allmodconfig    gcc-14.2.0
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-14.2.0
s390                                defconfig    gcc-12
s390                  randconfig-001-20250201    gcc-14.2.0
s390                  randconfig-002-20250201    clang-21
s390                  randconfig-002-20250201    gcc-14.2.0
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                         apsh4a3a_defconfig    gcc-14.2.0
sh                                  defconfig    gcc-12
sh                ecovec24-romimage_defconfig    gcc-14.2.0
sh                            migor_defconfig    gcc-14.2.0
sh                    randconfig-001-20250201    gcc-14.2.0
sh                    randconfig-002-20250201    gcc-14.2.0
sh                             sh03_defconfig    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250201    gcc-14.2.0
sparc                 randconfig-002-20250201    gcc-14.2.0
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20250201    gcc-14.2.0
sparc64               randconfig-002-20250201    gcc-14.2.0
um                               alldefconfig    clang-21
um                               allmodconfig    clang-21
um                                allnoconfig    clang-18
um                               allyesconfig    clang-21
um                               allyesconfig    gcc-12
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250201    clang-18
um                    randconfig-001-20250201    gcc-14.2.0
um                    randconfig-002-20250201    clang-21
um                    randconfig-002-20250201    gcc-14.2.0
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64      buildonly-randconfig-001-20250201    clang-19
x86_64      buildonly-randconfig-002-20250201    gcc-12
x86_64      buildonly-randconfig-003-20250201    gcc-12
x86_64      buildonly-randconfig-004-20250201    gcc-12
x86_64      buildonly-randconfig-005-20250201    clang-19
x86_64      buildonly-randconfig-006-20250201    gcc-12
x86_64                              defconfig    clang-19
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-19
x86_64                randconfig-001-20250201    clang-19
x86_64                randconfig-002-20250201    clang-19
x86_64                randconfig-003-20250201    clang-19
x86_64                randconfig-004-20250201    clang-19
x86_64                randconfig-005-20250201    clang-19
x86_64                randconfig-006-20250201    clang-19
x86_64                randconfig-007-20250201    clang-19
x86_64                randconfig-008-20250201    clang-19
x86_64                randconfig-071-20250201    clang-19
x86_64                randconfig-072-20250201    clang-19
x86_64                randconfig-073-20250201    clang-19
x86_64                randconfig-074-20250201    clang-19
x86_64                randconfig-075-20250201    clang-19
x86_64                randconfig-076-20250201    clang-19
x86_64                randconfig-077-20250201    clang-19
x86_64                randconfig-078-20250201    clang-19
x86_64                               rhel-9.4    clang-19
x86_64                           rhel-9.4-bpf    clang-19
x86_64                         rhel-9.4-kunit    clang-19
x86_64                           rhel-9.4-ltp    clang-19
x86_64                          rhel-9.4-rust    clang-19
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20250201    gcc-14.2.0
xtensa                randconfig-002-20250201    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
