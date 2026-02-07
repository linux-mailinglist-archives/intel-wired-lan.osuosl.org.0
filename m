Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0Pt+ABnUhmkPRQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 07 Feb 2026 06:56:41 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 71CDF105102
	for <lists+intel-wired-lan@lfdr.de>; Sat, 07 Feb 2026 06:56:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8DDFF40741;
	Sat,  7 Feb 2026 05:56:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OpYG5dYuwfC7; Sat,  7 Feb 2026 05:56:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9905640752
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770443796;
	bh=FB0m0QodSppxYIIK1FouE2WsjiVEdYF1tS60Kf8Zu7Q=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=2o5TIhDoEUU0BNNMNL3RyGbCaDK9rZ2mMlbx5qZIEIgTC/fMIMRSB8DK35txfma7Y
	 xiufKxClBVdwodJz1RapCeP45svvCe39vaeYsSlptu+2vmx2YX9wQQjdmSlBdyobdV
	 ksIBVyv192pfHnJOne5KVgN7mvhZ5H1V9VmYB3ro3e3FlJqKrqsvH3l8vr9RMO7TAm
	 8kF9V11paO2yF4NBXC9U8/dLiRSpJL3aMs2Md9oYxKXlTQNibtDj1a2tybUaDxKDy6
	 6lmSmsYPcebvVmHUTmFQYQx0R9JTsV4aF/zYWl58uiH4XEeb0LtjgNmE/P6PweHq8D
	 zfSj2VcmzKG6Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9905640752;
	Sat,  7 Feb 2026 05:56:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 64EF9219
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Feb 2026 05:56:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4A3BF83E26
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Feb 2026 05:56:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zHzkTrvtY7Zf for <intel-wired-lan@lists.osuosl.org>;
 Sat,  7 Feb 2026 05:56:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 28C9A83E18
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 28C9A83E18
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 28C9A83E18
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Feb 2026 05:56:33 +0000 (UTC)
X-CSE-ConnectionGUID: ipq1mHYTSlGOre5vVyTqBQ==
X-CSE-MsgGUID: YN/SHGSZTEG1lxM7huOBFA==
X-IronPort-AV: E=McAfee;i="6800,10657,11693"; a="71684080"
X-IronPort-AV: E=Sophos;i="6.21,277,1763452800"; d="scan'208";a="71684080"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2026 21:56:33 -0800
X-CSE-ConnectionGUID: xAlHCOk6So6NHn7lwmL2ig==
X-CSE-MsgGUID: bQeHYsTkScuDQcPx97CRdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,277,1763452800"; d="scan'208";a="216042670"
Received: from lkp-server01.sh.intel.com (HELO 765f4a05e27f) ([10.239.97.150])
 by orviesa005.jf.intel.com with ESMTP; 06 Feb 2026 21:56:32 -0800
Received: from kbuild by 765f4a05e27f with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vobIz-00000000lRc-1qFu;
 Sat, 07 Feb 2026 05:56:29 +0000
Date: Sat, 07 Feb 2026 13:56:00 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202602071352.y1HyMgs6-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770443794; x=1801979794;
 h=date:from:to:subject:message-id;
 bh=5E6wG5fAIV227cjHGlKdGqH32xHnWJdXWRt0OQ1G70w=;
 b=SO37gV4HoZE2umuccyM2MNZnLk1zsNJRnOOv17IaCdgeZSL3aXFZdUw8
 PgQEycOfDCok3MlgoyqGk5DM6fx9xBCTQ/TUJQv/NMdxoztEH429Yhlh9
 HBeMW2hiSBVKsYq5uE78w0D1pRakNRrOKFpAHbrIoDjWKd1RTtNZ5xAMK
 wwidgohV0spWloVr2yLdgkpKPUIX4uYKHpq0ulgMdVoDeHyL3ud/OAUgJ
 Jbu3B1UXQ1rXbQs+HySZhSHpcHq5H8RjkUMy+lcvq6QId446QxRdIy6Re
 UaY6TS67lHJgfs0CFbGllScU3UjdL8EsFb2judj6YqtksO7PONGEzRSXC
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SO37gV4H
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 70adca10d353e938ede897a029c797bf02ed51ce
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
	RECEIVED_HELO_LOCALHOST(0.00)[];
	NEURAL_HAM(-0.00)[-0.959];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TO_DN_ALL(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 71CDF105102
X-Rspamd-Action: no action

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: 70adca10d353e938ede897a029c797bf02ed51ce  ixgbe: refactor: use DECLARE_BITMAP for ring state field

elapsed time: 728m

configs tested: 190
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            alldefconfig    gcc-15.2.0
alpha                             allnoconfig    gcc-15.2.0
alpha                            allyesconfig    gcc-15.2.0
alpha                               defconfig    gcc-15.2.0
arc                              allmodconfig    clang-16
arc                               allnoconfig    gcc-15.2.0
arc                              allyesconfig    clang-22
arc                          axs101_defconfig    clang-22
arc                                 defconfig    gcc-15.2.0
arc                            hsdk_defconfig    clang-22
arc                   randconfig-001-20260207    gcc-8.5.0
arc                   randconfig-002-20260207    gcc-8.5.0
arm                               allnoconfig    gcc-15.2.0
arm                              allyesconfig    clang-16
arm                        clps711x_defconfig    clang-22
arm                                 defconfig    gcc-15.2.0
arm                          exynos_defconfig    gcc-15.2.0
arm                   randconfig-001-20260207    gcc-8.5.0
arm                   randconfig-002-20260207    gcc-8.5.0
arm                   randconfig-003-20260207    gcc-8.5.0
arm                   randconfig-004-20260207    gcc-8.5.0
arm64                            allmodconfig    clang-22
arm64                             allnoconfig    gcc-15.2.0
arm64                               defconfig    gcc-15.2.0
arm64                 randconfig-001-20260207    gcc-15.2.0
arm64                 randconfig-002-20260207    gcc-15.2.0
arm64                 randconfig-003-20260207    gcc-15.2.0
arm64                 randconfig-004-20260207    gcc-15.2.0
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
csky                                defconfig    gcc-15.2.0
csky                  randconfig-001-20260207    gcc-15.2.0
csky                  randconfig-002-20260207    gcc-15.2.0
hexagon                          allmodconfig    gcc-15.2.0
hexagon                           allnoconfig    gcc-15.2.0
hexagon                             defconfig    gcc-15.2.0
hexagon               randconfig-001-20260207    clang-22
hexagon               randconfig-002-20260207    clang-22
i386                             allmodconfig    clang-20
i386                              allnoconfig    gcc-15.2.0
i386                             allyesconfig    clang-20
i386        buildonly-randconfig-001-20260207    clang-20
i386        buildonly-randconfig-002-20260207    clang-20
i386        buildonly-randconfig-003-20260207    clang-20
i386        buildonly-randconfig-004-20260207    clang-20
i386        buildonly-randconfig-005-20260207    clang-20
i386        buildonly-randconfig-006-20260207    clang-20
i386                                defconfig    gcc-15.2.0
i386                  randconfig-001-20260207    clang-20
i386                  randconfig-002-20260207    clang-20
i386                  randconfig-003-20260207    clang-20
i386                  randconfig-004-20260207    clang-20
i386                  randconfig-005-20260207    clang-20
i386                  randconfig-006-20260207    clang-20
i386                  randconfig-007-20260207    clang-20
i386                  randconfig-011-20260207    clang-20
i386                  randconfig-012-20260207    clang-20
i386                  randconfig-013-20260207    clang-20
i386                  randconfig-014-20260207    clang-20
i386                  randconfig-015-20260207    clang-20
i386                  randconfig-016-20260207    clang-20
i386                  randconfig-017-20260207    clang-20
loongarch                        allmodconfig    clang-22
loongarch                         allnoconfig    gcc-15.2.0
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20260207    clang-22
loongarch             randconfig-002-20260207    clang-22
m68k                             allmodconfig    gcc-15.2.0
m68k                              allnoconfig    gcc-15.2.0
m68k                             allyesconfig    clang-16
m68k                         amcore_defconfig    clang-22
m68k                          amiga_defconfig    clang-22
m68k                                defconfig    clang-19
m68k                        m5407c3_defconfig    gcc-15.2.0
microblaze                        allnoconfig    gcc-15.2.0
microblaze                       allyesconfig    gcc-15.2.0
microblaze                          defconfig    clang-19
mips                             allmodconfig    gcc-15.2.0
mips                              allnoconfig    gcc-15.2.0
mips                             allyesconfig    gcc-15.2.0
mips                          ath25_defconfig    clang-22
mips                          eyeq6_defconfig    clang-22
mips                      maltasmvp_defconfig    gcc-15.2.0
mips                          rb532_defconfig    clang-22
nios2                            allmodconfig    clang-22
nios2                             allnoconfig    clang-22
nios2                               defconfig    clang-19
nios2                 randconfig-001-20260207    clang-22
nios2                 randconfig-002-20260207    clang-22
openrisc                         allmodconfig    clang-22
openrisc                          allnoconfig    clang-22
openrisc                            defconfig    gcc-15.2.0
parisc                           allmodconfig    gcc-15.2.0
parisc                            allnoconfig    clang-22
parisc                           allyesconfig    clang-19
parisc                              defconfig    gcc-15.2.0
parisc                randconfig-001-20260207    gcc-14.3.0
parisc                randconfig-002-20260207    gcc-14.3.0
parisc64                            defconfig    clang-19
powerpc                     akebono_defconfig    clang-22
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    clang-22
powerpc                      chrp32_defconfig    clang-22
powerpc                     ep8248e_defconfig    gcc-15.2.0
powerpc                    gamecube_defconfig    clang-22
powerpc                     mpc5200_defconfig    gcc-15.2.0
powerpc                 mpc836x_rdk_defconfig    clang-22
powerpc                      ppc44x_defconfig    clang-22
powerpc               randconfig-001-20260207    gcc-14.3.0
powerpc               randconfig-002-20260207    gcc-14.3.0
powerpc64             randconfig-001-20260207    gcc-14.3.0
powerpc64             randconfig-002-20260207    gcc-14.3.0
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    clang-22
riscv                            allyesconfig    clang-16
riscv                               defconfig    gcc-15.2.0
riscv                    nommu_virt_defconfig    gcc-15.2.0
riscv                 randconfig-001-20260207    clang-18
riscv                 randconfig-002-20260207    clang-18
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.2.0
s390                                defconfig    gcc-15.2.0
s390                  randconfig-001-20260207    clang-18
s390                  randconfig-002-20260207    clang-18
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    clang-22
sh                               allyesconfig    clang-19
sh                                  defconfig    gcc-14
sh                    randconfig-001-20260207    clang-18
sh                    randconfig-002-20260207    clang-18
sh                          rsk7203_defconfig    clang-22
sh                           se7712_defconfig    gcc-15.2.0
sparc                             allnoconfig    clang-22
sparc                               defconfig    gcc-15.2.0
sparc                 randconfig-001-20260207    gcc-15.2.0
sparc                 randconfig-002-20260207    gcc-15.2.0
sparc64                          allmodconfig    clang-22
sparc64                             defconfig    gcc-14
sparc64               randconfig-001-20260207    gcc-15.2.0
sparc64               randconfig-002-20260207    gcc-15.2.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-15.2.0
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260207    gcc-15.2.0
um                    randconfig-002-20260207    gcc-15.2.0
um                           x86_64_defconfig    gcc-14
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-22
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20260207    gcc-14
x86_64      buildonly-randconfig-002-20260207    gcc-14
x86_64      buildonly-randconfig-003-20260207    gcc-14
x86_64      buildonly-randconfig-004-20260207    gcc-14
x86_64      buildonly-randconfig-005-20260207    gcc-14
x86_64      buildonly-randconfig-006-20260207    gcc-14
x86_64                              defconfig    gcc-14
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20260207    clang-20
x86_64                randconfig-002-20260207    clang-20
x86_64                randconfig-003-20260207    clang-20
x86_64                randconfig-004-20260207    clang-20
x86_64                randconfig-005-20260207    clang-20
x86_64                randconfig-006-20260207    clang-20
x86_64                randconfig-011-20260207    gcc-14
x86_64                randconfig-012-20260207    gcc-14
x86_64                randconfig-013-20260207    gcc-14
x86_64                randconfig-014-20260207    gcc-14
x86_64                randconfig-015-20260207    gcc-14
x86_64                randconfig-016-20260207    gcc-14
x86_64                randconfig-071-20260207    gcc-14
x86_64                randconfig-072-20260207    gcc-14
x86_64                randconfig-073-20260207    gcc-14
x86_64                randconfig-074-20260207    gcc-14
x86_64                randconfig-075-20260207    gcc-14
x86_64                randconfig-076-20260207    gcc-14
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-14
x86_64                          rhel-9.4-func    clang-20
x86_64                    rhel-9.4-kselftests    clang-20
x86_64                         rhel-9.4-kunit    gcc-14
x86_64                           rhel-9.4-ltp    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    clang-22
xtensa                           allyesconfig    clang-22
xtensa                randconfig-001-20260207    gcc-15.2.0
xtensa                randconfig-002-20260207    gcc-15.2.0
xtensa                    smp_lx200_defconfig    clang-22

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
