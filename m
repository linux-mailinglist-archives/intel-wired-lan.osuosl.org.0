Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2282DBC77C9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Oct 2025 08:05:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D916481544;
	Thu,  9 Oct 2025 06:04:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aCvfUGmn-FuK; Thu,  9 Oct 2025 06:04:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E68AC8142A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759989897;
	bh=ZMRwia0XuK8UXoFVjdOuDpPjOGHkP2OjviDESXta/cA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=USrTzN+R2kluZ3zOXCrzhmtrP/NiyYdhCs+nANgt5jLUNwYJwzGrXfqka5SJOLo7K
	 D7qSW8NI+toJeSKEPlPsf2ZtH5vPag9EOlJYWT6rrBGvfxSa5FHr0e1vd5KbEDNFfH
	 dP+xAP7Ljn0ek1/JHO8fS4l4eCkLLsSCb2CBWaHtiKdqSf9pGuqHpEQC1S7Jw7aitX
	 i797pIMZaccOv8mh0y0q3xYue2jh6jOJgfv90JBzVFWicwqHDk/RTkw8fZitaz50KS
	 1FpJx2a2mNQQD+2gnxtZaHn1pfik/L5AJt2eYvYYgP23otYF7so2IdSTCHxEyyixmM
	 nveB8CACMqaGg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E68AC8142A;
	Thu,  9 Oct 2025 06:04:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id CDCAC226
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Oct 2025 06:04:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AC35240ACB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Oct 2025 06:04:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uRVfcr2QpCoj for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Oct 2025 06:04:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8675740A49
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8675740A49
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8675740A49
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Oct 2025 06:04:53 +0000 (UTC)
X-CSE-ConnectionGUID: OO3i0IcVTHWtS7BuX83boQ==
X-CSE-MsgGUID: M685NHLfSSOsr+0ztI4CKg==
X-IronPort-AV: E=McAfee;i="6800,10657,11576"; a="79633861"
X-IronPort-AV: E=Sophos;i="6.19,215,1754982000"; d="scan'208";a="79633861"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 23:04:53 -0700
X-CSE-ConnectionGUID: HhhlItmoQ4C4W2Ayz0uS3Q==
X-CSE-MsgGUID: RRipMDwOQDCxRHDY4wYVZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,215,1754982000"; d="scan'208";a="180217350"
Received: from lkp-server01.sh.intel.com (HELO 6a630e8620ab) ([10.239.97.150])
 by orviesa009.jf.intel.com with ESMTP; 08 Oct 2025 23:04:52 -0700
Received: from kbuild by 6a630e8620ab with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1v6jlh-00004i-16
 for intel-wired-lan@lists.osuosl.org; Thu, 09 Oct 2025 06:04:49 +0000
Date: Thu, 09 Oct 2025 14:04:29 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202510091424.Rvr8vmAN-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759989894; x=1791525894;
 h=date:from:to:subject:message-id;
 bh=c5J4HyupHNXv4fY/GoBFDUHt4T7wh8/QZbVdrlvOuag=;
 b=T/T4KMP/Ch4LODKjMMu7WavO0x6Dt8brv/mmgjHGOdn9i75s/+Zjxg1/
 BbvxIbklQwYcPZz8ZWpwzVQ6zmKy8GaCfIJZ9t9276f++i8lMVln4poNX
 rjC7C5MpPgaGW0uAfSP6K/1kNKqqg4wEv4t6dj9UT5yg3ggFhJGrVsDfO
 D0tZLPjnoFUwPMdz3oQB58ACTidautQUJ7eeAUvkUGyKzr+DVuisWjxYV
 BiYyTTajXZu1t3csr+jx8KthC1WEkIkF+ItG1QVe2Bwim2/06F8nrIs1Y
 pN9OsisGQC6GULIT/YfBWXwMhkvLH9uVUMiyK0Y6UUHKUqyxfDgL3vpAx
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=T/T4KMP/
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 aacc48c9de6afe5fa99ff168d6954f10c254010c
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
branch HEAD: aacc48c9de6afe5fa99ff168d6954f10c254010c  ice: switch to Page Pool

elapsed time: 7511m

configs tested: 124
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                   randconfig-001-20251004    gcc-8.5.0
arc                   randconfig-002-20251004    gcc-10.5.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    gcc-15.1.0
arm                         at91_dt_defconfig    clang-22
arm                   randconfig-001-20251004    gcc-8.5.0
arm                   randconfig-002-20251004    gcc-15.1.0
arm                   randconfig-003-20251004    gcc-12.5.0
arm                   randconfig-004-20251004    gcc-11.5.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20251004    clang-20
arm64                 randconfig-002-20251004    gcc-8.5.0
arm64                 randconfig-003-20251004    clang-22
arm64                 randconfig-004-20251004    gcc-15.1.0
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20251004    gcc-15.1.0
csky                  randconfig-002-20251004    gcc-10.5.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-22
hexagon               randconfig-001-20251004    clang-22
hexagon               randconfig-002-20251004    clang-20
i386                             alldefconfig    gcc-14
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20251004    gcc-13
i386        buildonly-randconfig-002-20251004    clang-20
i386        buildonly-randconfig-003-20251004    clang-20
i386        buildonly-randconfig-004-20251004    clang-20
i386        buildonly-randconfig-005-20251004    clang-20
i386        buildonly-randconfig-006-20251004    clang-20
i386                                defconfig    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch             randconfig-001-20251004    gcc-15.1.0
loongarch             randconfig-002-20251004    clang-22
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                        bcm47xx_defconfig    clang-18
mips                        maltaup_defconfig    clang-22
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20251004    gcc-10.5.0
nios2                 randconfig-002-20251004    gcc-11.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
openrisc                            defconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20251004    gcc-8.5.0
parisc                randconfig-002-20251004    gcc-13.4.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                      arches_defconfig    gcc-15.1.0
powerpc                 mpc8313_rdb_defconfig    gcc-15.1.0
powerpc               randconfig-001-20251004    clang-22
powerpc               randconfig-002-20251004    gcc-8.5.0
powerpc               randconfig-003-20251004    clang-22
powerpc64             randconfig-001-20251004    gcc-14.3.0
powerpc64             randconfig-002-20251004    clang-22
powerpc64             randconfig-003-20251004    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                               defconfig    clang-22
riscv                 randconfig-001-20251004    clang-22
riscv                 randconfig-002-20251004    clang-22
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    clang-22
s390                  randconfig-001-20251004    gcc-8.5.0
s390                  randconfig-002-20251004    clang-22
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-15.1.0
sh                          landisk_defconfig    gcc-15.1.0
sh                    randconfig-001-20251004    gcc-15.1.0
sh                    randconfig-002-20251004    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20251004    gcc-8.5.0
sparc                 randconfig-002-20251004    gcc-15.1.0
sparc64                             defconfig    clang-20
sparc64               randconfig-001-20251004    gcc-14.3.0
sparc64               randconfig-002-20251004    clang-22
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-14
um                                  defconfig    clang-22
um                             i386_defconfig    gcc-14
um                    randconfig-001-20251004    clang-18
um                    randconfig-002-20251004    clang-22
um                           x86_64_defconfig    clang-22
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20251004    gcc-14
x86_64      buildonly-randconfig-002-20251004    clang-20
x86_64      buildonly-randconfig-003-20251004    clang-20
x86_64      buildonly-randconfig-004-20251004    clang-20
x86_64      buildonly-randconfig-005-20251004    gcc-14
x86_64      buildonly-randconfig-006-20251004    gcc-14
x86_64                              defconfig    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20251004    gcc-13.4.0
xtensa                randconfig-002-20251004    gcc-10.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
