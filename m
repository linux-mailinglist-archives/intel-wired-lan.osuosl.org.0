Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UAKOBhJ0kGn9ZwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Feb 2026 14:09:38 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 952C013C147
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Feb 2026 14:09:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5215040CC7;
	Sat, 14 Feb 2026 13:09:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l8TTfZMARMMQ; Sat, 14 Feb 2026 13:09:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 498F340CE2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771074573;
	bh=jflUmtzVE3/osvG07uJM+rz9lFiTl6OaBiKwtO3UaMs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=fq246ZEfiJ6Pe7tJ65hPhAWYcLmWojag/Zk2AQvHnE0ZQEmOnYL2PSicy0OHAzRHk
	 ejd2wsrxK3KX2Vx8Q99ZEgpQWqChcw5ZSNR7ShjIdx86aCGTboIThqfq+mMpFtdYWl
	 NYrIV9EULomHo5KUA0MtcGeBNyCMUSd/WRNVL6NqWtzOlhTjWHxsu7DyVbNggJfQ40
	 t+/Q4vs6uySuQ1UBosrSP8Tijj2rKRBO32OY9y4UmSMXkRM9kvrAP7Ae0Gs77fqwJU
	 kWNj2mr3bj3RizbyOvKLuNtPDwFVvHppdt2g1ls2iJ+SL+M5RT6UWL9q1j+VLCfTPY
	 +Ia0ML6BGLqyg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 498F340CE2;
	Sat, 14 Feb 2026 13:09:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id BD18969
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Feb 2026 13:09:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9ECDB40109
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Feb 2026 13:09:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xEM1pajT9Lrt for <intel-wired-lan@lists.osuosl.org>;
 Sat, 14 Feb 2026 13:09:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4F0DB4007B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4F0DB4007B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4F0DB4007B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Feb 2026 13:09:29 +0000 (UTC)
X-CSE-ConnectionGUID: fhRmwO9ATke5e/4CvD2cMQ==
X-CSE-MsgGUID: CBiSiBBbSpOBnP061hm4rg==
X-IronPort-AV: E=McAfee;i="6800,10657,11700"; a="71266597"
X-IronPort-AV: E=Sophos;i="6.21,290,1763452800"; d="scan'208";a="71266597"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2026 05:09:29 -0800
X-CSE-ConnectionGUID: CSowRjEZQP+9A01aMOQrQg==
X-CSE-MsgGUID: 5eK2KGqzQZmIrK34teu1mQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,290,1763452800"; d="scan'208";a="217268948"
Received: from lkp-server01.sh.intel.com (HELO 765f4a05e27f) ([10.239.97.150])
 by fmviesa004.fm.intel.com with ESMTP; 14 Feb 2026 05:09:28 -0800
Received: from kbuild by 765f4a05e27f with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vrFOo-00000000wZ1-1LwE;
 Sat, 14 Feb 2026 13:09:26 +0000
Date: Sat, 14 Feb 2026 21:08:55 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202602142148.kxQmJnvo-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771074570; x=1802610570;
 h=date:from:to:subject:message-id;
 bh=bZR5hX3tZRIahI66rN8VbiE581i1xkZnZDWc9Xl/eEY=;
 b=W8Yj9YYLoH8NPjPUtA2bI4Z731iwCLnG+2GIA3SK+MjRlAETuqOekMJu
 gxG2gExm4UKjS6ZiLGqaA50BjUDMzHnubvcqggh3QK8eydPRmxI3nKg7I
 1Ddt+iQeAqSXuLQXdzqv9VLced6c84ZGJYLFwM9vS7A14FUxXMHxevaoW
 Yxoed7wIsbNuOKkTFahzX4U8Y+bG1hOpyh+IweoRTUbxwcQb0kRnZK5ki
 6xFVzcItMdsgLkIweN3TahtNi0osaq8dE9EhWQsIzloWefbfFkbpe/0Ma
 RNB9Tiim7FV6D14Sr8v9X0DjttpL6KGATlGs9ZSEE6ExxsrlaFwHWSv2f
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=W8Yj9YYL
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 acd2abc52dea91c3bc3d1b6dd8a92b9631d48bbf
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 952C013C147
X-Rspamd-Action: no action

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: acd2abc52dea91c3bc3d1b6dd8a92b9631d48bbf  ice: use ice_update_eth_stats() for representor stats

elapsed time: 857m

configs tested: 214
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.2.0
alpha                            allyesconfig    gcc-15.2.0
alpha                               defconfig    gcc-15.2.0
arc                              allmodconfig    clang-16
arc                               allnoconfig    gcc-15.2.0
arc                              allyesconfig    clang-22
arc                              allyesconfig    gcc-15.2.0
arc                                 defconfig    gcc-15.2.0
arc                         haps_hs_defconfig    gcc-15.2.0
arc                   randconfig-001-20260214    clang-22
arc                   randconfig-002-20260214    clang-22
arc                        vdk_hs38_defconfig    gcc-15.2.0
arc                    vdk_hs38_smp_defconfig    gcc-15.2.0
arm                               allnoconfig    clang-22
arm                               allnoconfig    gcc-15.2.0
arm                              allyesconfig    clang-16
arm                          collie_defconfig    gcc-15.2.0
arm                                 defconfig    gcc-15.2.0
arm                            hisi_defconfig    clang-22
arm                         lpc32xx_defconfig    clang-22
arm                            mps2_defconfig    clang-22
arm                         mv78xx0_defconfig    gcc-15.2.0
arm                        neponset_defconfig    gcc-15.2.0
arm                         nhk8815_defconfig    clang-22
arm                           omap1_defconfig    gcc-15.2.0
arm                       omap2plus_defconfig    gcc-15.2.0
arm                   randconfig-001-20260214    clang-22
arm                   randconfig-002-20260214    clang-22
arm                   randconfig-003-20260214    clang-22
arm                   randconfig-004-20260214    clang-22
arm                         s5pv210_defconfig    clang-22
arm                           sama7_defconfig    clang-22
arm                        shmobile_defconfig    gcc-15.2.0
arm                           spitz_defconfig    gcc-15.2.0
arm64                            allmodconfig    clang-19
arm64                            allmodconfig    clang-22
arm64                             allnoconfig    gcc-15.2.0
arm64                               defconfig    gcc-15.2.0
arm64                 randconfig-001-20260214    gcc-8.5.0
arm64                 randconfig-002-20260214    gcc-8.5.0
arm64                 randconfig-003-20260214    gcc-8.5.0
arm64                 randconfig-004-20260214    gcc-8.5.0
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
csky                                defconfig    gcc-15.2.0
csky                  randconfig-001-20260214    gcc-8.5.0
csky                  randconfig-002-20260214    gcc-8.5.0
hexagon                          allmodconfig    gcc-15.2.0
hexagon                           allnoconfig    clang-22
hexagon                           allnoconfig    gcc-15.2.0
hexagon                             defconfig    gcc-15.2.0
hexagon               randconfig-001-20260214    clang-22
hexagon               randconfig-002-20260214    clang-22
i386                             allmodconfig    clang-20
i386                              allnoconfig    gcc-14
i386                              allnoconfig    gcc-15.2.0
i386                             allyesconfig    clang-20
i386        buildonly-randconfig-001-20260214    clang-20
i386        buildonly-randconfig-002-20260214    clang-20
i386        buildonly-randconfig-003-20260214    clang-20
i386        buildonly-randconfig-004-20260214    clang-20
i386        buildonly-randconfig-005-20260214    clang-20
i386        buildonly-randconfig-006-20260214    clang-20
i386                                defconfig    gcc-15.2.0
i386                  randconfig-001-20260214    clang-20
i386                  randconfig-002-20260214    clang-20
i386                  randconfig-003-20260214    clang-20
i386                  randconfig-004-20260214    clang-20
i386                  randconfig-005-20260214    clang-20
i386                  randconfig-006-20260214    clang-20
i386                  randconfig-007-20260214    clang-20
i386                  randconfig-011-20260214    gcc-14
i386                  randconfig-012-20260214    gcc-14
i386                  randconfig-013-20260214    gcc-14
i386                  randconfig-014-20260214    gcc-14
i386                  randconfig-015-20260214    gcc-14
i386                  randconfig-016-20260214    gcc-14
i386                  randconfig-017-20260214    gcc-14
loongarch                        allmodconfig    clang-19
loongarch                        allmodconfig    clang-22
loongarch                         allnoconfig    clang-22
loongarch                         allnoconfig    gcc-15.2.0
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20260214    clang-22
loongarch             randconfig-002-20260214    clang-22
m68k                             allmodconfig    gcc-15.2.0
m68k                              allnoconfig    gcc-15.2.0
m68k                             allyesconfig    clang-16
m68k                                defconfig    clang-19
microblaze                        allnoconfig    gcc-15.2.0
microblaze                       allyesconfig    gcc-15.2.0
microblaze                          defconfig    clang-19
mips                             allmodconfig    gcc-15.2.0
mips                              allnoconfig    gcc-15.2.0
mips                             allyesconfig    gcc-15.2.0
mips                          ath25_defconfig    gcc-15.2.0
mips                      fuloong2e_defconfig    gcc-15.2.0
mips                            gpr_defconfig    clang-22
mips                           ip27_defconfig    clang-22
mips                       lemote2f_defconfig    clang-22
mips                      malta_kvm_defconfig    clang-22
mips                malta_qemu_32r6_defconfig    gcc-15.2.0
mips                           xway_defconfig    clang-22
nios2                            allmodconfig    clang-22
nios2                             allnoconfig    clang-22
nios2                               defconfig    clang-19
nios2                 randconfig-001-20260214    clang-22
nios2                 randconfig-002-20260214    clang-22
openrisc                         allmodconfig    clang-22
openrisc                          allnoconfig    clang-22
openrisc                            defconfig    gcc-15.2.0
parisc                           allmodconfig    gcc-15.2.0
parisc                            allnoconfig    clang-22
parisc                           allyesconfig    clang-19
parisc                              defconfig    gcc-15.2.0
parisc                randconfig-001-20260214    clang-22
parisc                randconfig-002-20260214    clang-22
parisc64                            defconfig    clang-19
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    clang-22
powerpc                        cell_defconfig    gcc-15.2.0
powerpc                          g5_defconfig    gcc-15.2.0
powerpc                    ge_imp3a_defconfig    gcc-15.2.0
powerpc               mpc834x_itxgp_defconfig    clang-22
powerpc                     powernv_defconfig    gcc-15.2.0
powerpc               randconfig-001-20260214    clang-22
powerpc               randconfig-002-20260214    clang-22
powerpc                    socrates_defconfig    gcc-15.2.0
powerpc                     tqm8560_defconfig    gcc-15.2.0
powerpc64             randconfig-001-20260214    clang-22
powerpc64             randconfig-002-20260214    clang-22
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    clang-22
riscv                            allyesconfig    clang-16
riscv                               defconfig    gcc-15.2.0
riscv                 randconfig-001-20260214    clang-20
riscv                 randconfig-002-20260214    clang-20
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.2.0
s390                                defconfig    gcc-15.2.0
s390                  randconfig-001-20260214    clang-20
s390                  randconfig-002-20260214    clang-20
sh                               alldefconfig    clang-22
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    clang-22
sh                               allyesconfig    clang-19
sh                                  defconfig    gcc-14
sh                         ecovec24_defconfig    clang-22
sh                         ecovec24_defconfig    gcc-15.2.0
sh                          lboxre2_defconfig    clang-22
sh                          polaris_defconfig    gcc-15.2.0
sh                    randconfig-001-20260214    clang-20
sh                    randconfig-002-20260214    clang-20
sh                          rsk7203_defconfig    gcc-15.2.0
sh                           se7206_defconfig    clang-22
sparc                             allnoconfig    clang-22
sparc                               defconfig    gcc-15.2.0
sparc                 randconfig-001-20260214    gcc-14.3.0
sparc                 randconfig-002-20260214    gcc-14.3.0
sparc64                          allmodconfig    clang-22
sparc64                             defconfig    gcc-14
sparc64               randconfig-001-20260214    gcc-14.3.0
sparc64               randconfig-002-20260214    gcc-14.3.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-15.2.0
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260214    gcc-14.3.0
um                    randconfig-002-20260214    gcc-14.3.0
um                           x86_64_defconfig    gcc-14
x86_64                           alldefconfig    gcc-15.2.0
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-22
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20260214    clang-20
x86_64      buildonly-randconfig-002-20260214    clang-20
x86_64      buildonly-randconfig-003-20260214    clang-20
x86_64      buildonly-randconfig-004-20260214    clang-20
x86_64      buildonly-randconfig-005-20260214    clang-20
x86_64      buildonly-randconfig-006-20260214    clang-20
x86_64                              defconfig    gcc-14
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20260214    clang-20
x86_64                randconfig-002-20260214    clang-20
x86_64                randconfig-003-20260214    clang-20
x86_64                randconfig-004-20260214    clang-20
x86_64                randconfig-005-20260214    clang-20
x86_64                randconfig-006-20260214    clang-20
x86_64                randconfig-011-20260214    gcc-14
x86_64                randconfig-012-20260214    gcc-14
x86_64                randconfig-013-20260214    gcc-14
x86_64                randconfig-014-20260214    gcc-14
x86_64                randconfig-015-20260214    gcc-14
x86_64                randconfig-016-20260214    gcc-14
x86_64                randconfig-071-20260214    clang-20
x86_64                randconfig-072-20260214    clang-20
x86_64                randconfig-073-20260214    clang-20
x86_64                randconfig-074-20260214    clang-20
x86_64                randconfig-075-20260214    clang-20
x86_64                randconfig-076-20260214    clang-20
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-14
x86_64                          rhel-9.4-func    clang-20
x86_64                    rhel-9.4-kselftests    clang-20
x86_64                         rhel-9.4-kunit    gcc-14
x86_64                           rhel-9.4-ltp    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    clang-22
xtensa                           allyesconfig    clang-22
xtensa                randconfig-001-20260214    gcc-14.3.0
xtensa                randconfig-002-20260214    gcc-14.3.0
xtensa                    xip_kc705_defconfig    gcc-15.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
