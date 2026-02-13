Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6B35N2Waj2lQRwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Feb 2026 22:40:53 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D6E86139A6F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Feb 2026 22:40:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EE73341EF5;
	Fri, 13 Feb 2026 21:40:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZIWLknSd_8uW; Fri, 13 Feb 2026 21:40:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 14C8641EE5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771018850;
	bh=SDiNeai/QUroOB12IkatTC7ixEHVhPCK373TwykbQFg=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=i10GPvRjivlOq4i9loiOChrFXsH4JJ9qDmtUxxYveFBYCTY2aV4b1Ux6VVKy2tyU/
	 zvksZlNINHGhqfegsm3y6MngnoQpEFDaQNnQyzUZy4oZFsIbOjta02PNFsWuY6lG3L
	 aE9+rq2wlT3apbONNOQX0Rm2JGc4SQCiRM316c3qfy9vdyeyN3EzzDh2Xpj6ntuo2l
	 Ilzb+lM2rJ5Q5ZSMfhR8f4uugFL+Ps33uJZ8zCywks21l9zHgGaltk0ad38qRHZDfz
	 MlwDqMDToVJoW86wQKMOlSMUcofDTQXWDitDUnlA0yVAC9yLHCJqBatie/QHVcDj5J
	 ZUtd9whfv7F5w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 14C8641EE5;
	Fri, 13 Feb 2026 21:40:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id C2A48EC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Feb 2026 21:40:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A46A56139F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Feb 2026 21:40:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XkkjwJ0dRvIU for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Feb 2026 21:40:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B0F41613CB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B0F41613CB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B0F41613CB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Feb 2026 21:40:47 +0000 (UTC)
X-CSE-ConnectionGUID: 0s47c1StTG64SSl1CH7zNQ==
X-CSE-MsgGUID: VRZELVJeSsGaUwguFeeCQQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11700"; a="71405142"
X-IronPort-AV: E=Sophos;i="6.21,289,1763452800"; d="scan'208";a="71405142"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2026 13:40:47 -0800
X-CSE-ConnectionGUID: B0QLQcYNSruMz0OZsUTPfA==
X-CSE-MsgGUID: xdRCkVCcRHqbhHg5enAH5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,289,1763452800"; d="scan'208";a="212139749"
Received: from lkp-server01.sh.intel.com (HELO 765f4a05e27f) ([10.239.97.150])
 by fmviesa010.fm.intel.com with ESMTP; 13 Feb 2026 13:40:46 -0800
Received: from kbuild by 765f4a05e27f with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vr0u4-00000000vqC-0drO;
 Fri, 13 Feb 2026 21:40:44 +0000
Date: Sat, 14 Feb 2026 05:39:54 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202602140546.hpIATERK-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771018847; x=1802554847;
 h=date:from:to:subject:message-id;
 bh=+pO6zI9dLN0exT8iyCFMfFEiaTVIxM5F0jckhZmhWVE=;
 b=ORtYF/dtx7hUG1PKnWE8M/yWqzzMlcidOYvLl4YR8aU5ZCw0lxI+46Wp
 k5YBFU1c4ZkCd7AHdmzYNQDYYV6sihppa+lJWkaqqeKqd32VmakE2Ra8c
 kfWikVEMeno0cPniSKHT59Hu79ab+DywmmJK1/VugndNPYbVpXwib31g5
 7981GlefKS9jZUvhmnhj/YK8cKYKhpL85oNOy0VyFIsl+MWv1yfay1Uhs
 SApgLqBLEAncdyRWy4Qs3Q5uZn3b+7sRcFUJWLnHTLKsR+jOO2wL3HOxv
 Bo+RtZ9VkAJ71S0OBYCJvAUQHK0LvwPKjY1Z/OuaYVT4sHol1FKsrrg95
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ORtYF/dt
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 639970869287c7c5cb50e39e499c699b50c95444
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: D6E86139A6F
X-Rspamd-Action: no action

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 639970869287c7c5cb50e39e499c699b50c95444  ice: fix race condition in TX timestamp ring cleanup

elapsed time: 1441m

configs tested: 197
configs skipped: 19

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.2.0
alpha                            allyesconfig    gcc-15.2.0
alpha                               defconfig    gcc-15.2.0
arc                              allmodconfig    clang-16
arc                               allnoconfig    gcc-15.2.0
arc                              allyesconfig    clang-22
arc                                 defconfig    gcc-15.2.0
arc                   randconfig-001-20260213    clang-22
arc                   randconfig-002-20260213    clang-22
arm                               allnoconfig    clang-22
arm                               allnoconfig    gcc-15.2.0
arm                              allyesconfig    clang-16
arm                     am200epdkit_defconfig    clang-22
arm                     davinci_all_defconfig    clang-22
arm                                 defconfig    gcc-15.2.0
arm                      integrator_defconfig    clang-22
arm                         orion5x_defconfig    clang-22
arm                   randconfig-001-20260213    clang-22
arm                   randconfig-002-20260213    clang-22
arm                   randconfig-003-20260213    clang-22
arm                   randconfig-004-20260213    clang-22
arm                         s3c6400_defconfig    clang-22
arm64                            allmodconfig    clang-22
arm64                             allnoconfig    gcc-15.2.0
arm64                               defconfig    gcc-15.2.0
arm64                 randconfig-001-20260213    clang-20
arm64                 randconfig-002-20260213    clang-20
arm64                 randconfig-003-20260213    clang-20
arm64                 randconfig-004-20260213    clang-20
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
csky                                defconfig    gcc-15.2.0
csky                  randconfig-001-20260213    clang-20
csky                  randconfig-002-20260213    clang-20
hexagon                          allmodconfig    gcc-15.2.0
hexagon                           allnoconfig    clang-22
hexagon                           allnoconfig    gcc-15.2.0
hexagon                             defconfig    gcc-15.2.0
hexagon               randconfig-001-20260213    clang-22
hexagon               randconfig-002-20260213    clang-22
i386                             allmodconfig    clang-20
i386                              allnoconfig    gcc-14
i386                              allnoconfig    gcc-15.2.0
i386                             allyesconfig    clang-20
i386        buildonly-randconfig-001-20260213    clang-20
i386        buildonly-randconfig-002-20260213    clang-20
i386        buildonly-randconfig-003-20260213    clang-20
i386        buildonly-randconfig-004-20260213    clang-20
i386        buildonly-randconfig-005-20260213    clang-20
i386        buildonly-randconfig-006-20260213    clang-20
i386                                defconfig    gcc-15.2.0
i386                  randconfig-001-20260213    gcc-14
i386                  randconfig-002-20260213    gcc-14
i386                  randconfig-003-20260213    gcc-14
i386                  randconfig-004-20260213    gcc-14
i386                  randconfig-005-20260213    gcc-14
i386                  randconfig-006-20260213    gcc-14
i386                  randconfig-007-20260213    gcc-14
i386                  randconfig-011-20260213    gcc-14
i386                  randconfig-012-20260213    gcc-14
i386                  randconfig-013-20260213    gcc-14
i386                  randconfig-014-20260213    gcc-14
i386                  randconfig-015-20260213    gcc-14
i386                  randconfig-016-20260213    gcc-14
i386                  randconfig-017-20260213    gcc-14
loongarch                        allmodconfig    clang-22
loongarch                         allnoconfig    clang-22
loongarch                         allnoconfig    gcc-15.2.0
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20260213    clang-22
loongarch             randconfig-002-20260213    clang-22
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
mips                           ip30_defconfig    clang-22
mips                           mtx1_defconfig    clang-22
nios2                            allmodconfig    clang-22
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    clang-22
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    clang-19
nios2                 randconfig-001-20260213    clang-22
nios2                 randconfig-002-20260213    clang-22
openrisc                         allmodconfig    clang-22
openrisc                         allmodconfig    gcc-15.2.0
openrisc                          allnoconfig    clang-22
openrisc                          allnoconfig    gcc-15.2.0
openrisc                            defconfig    gcc-15.2.0
parisc                           allmodconfig    gcc-15.2.0
parisc                            allnoconfig    clang-22
parisc                            allnoconfig    gcc-15.2.0
parisc                           allyesconfig    clang-19
parisc                              defconfig    gcc-15.2.0
parisc                randconfig-001-20260213    clang-20
parisc                randconfig-002-20260213    clang-20
parisc64                            defconfig    clang-19
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    clang-22
powerpc                           allnoconfig    gcc-15.2.0
powerpc                      chrp32_defconfig    clang-22
powerpc                       ebony_defconfig    clang-22
powerpc                     mpc512x_defconfig    clang-22
powerpc                     mpc5200_defconfig    clang-22
powerpc               randconfig-001-20260213    clang-20
powerpc               randconfig-002-20260213    clang-20
powerpc                     taishan_defconfig    clang-22
powerpc64             randconfig-001-20260213    clang-20
powerpc64             randconfig-002-20260213    clang-20
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    clang-22
riscv                             allnoconfig    gcc-15.2.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    gcc-15.2.0
riscv                 randconfig-001-20260213    gcc-11.5.0
riscv                 randconfig-002-20260213    gcc-11.5.0
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.2.0
s390                                defconfig    gcc-15.2.0
s390                  randconfig-001-20260213    gcc-11.5.0
s390                  randconfig-002-20260213    gcc-11.5.0
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    clang-22
sh                                allnoconfig    gcc-15.2.0
sh                               allyesconfig    clang-19
sh                         ap325rxa_defconfig    clang-22
sh                        apsh4ad0a_defconfig    clang-22
sh                                  defconfig    gcc-14
sh                               j2_defconfig    clang-22
sh                    randconfig-001-20260213    gcc-11.5.0
sh                    randconfig-002-20260213    gcc-11.5.0
sh                           se7750_defconfig    clang-22
sparc                             allnoconfig    clang-22
sparc                             allnoconfig    gcc-15.2.0
sparc                               defconfig    gcc-15.2.0
sparc                 randconfig-001-20260213    gcc-12.5.0
sparc                 randconfig-002-20260213    gcc-12.5.0
sparc64                          allmodconfig    clang-22
sparc64                             defconfig    gcc-14
sparc64               randconfig-001-20260213    gcc-12.5.0
sparc64               randconfig-002-20260213    gcc-12.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-15.2.0
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260213    gcc-12.5.0
um                    randconfig-002-20260213    gcc-12.5.0
um                           x86_64_defconfig    gcc-14
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-20
x86_64                            allnoconfig    clang-22
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20260213    gcc-14
x86_64      buildonly-randconfig-002-20260213    gcc-14
x86_64      buildonly-randconfig-003-20260213    gcc-14
x86_64      buildonly-randconfig-004-20260213    gcc-14
x86_64      buildonly-randconfig-005-20260213    gcc-14
x86_64      buildonly-randconfig-006-20260213    gcc-14
x86_64                              defconfig    gcc-14
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20260213    gcc-14
x86_64                randconfig-002-20260213    gcc-14
x86_64                randconfig-003-20260213    gcc-14
x86_64                randconfig-004-20260213    gcc-14
x86_64                randconfig-005-20260213    gcc-14
x86_64                randconfig-006-20260213    gcc-14
x86_64                randconfig-011-20260213    gcc-12
x86_64                randconfig-012-20260213    gcc-12
x86_64                randconfig-013-20260213    gcc-12
x86_64                randconfig-014-20260213    gcc-12
x86_64                randconfig-015-20260213    gcc-12
x86_64                randconfig-016-20260213    gcc-12
x86_64                randconfig-071-20260213    clang-20
x86_64                randconfig-072-20260213    clang-20
x86_64                randconfig-073-20260213    clang-20
x86_64                randconfig-074-20260213    clang-20
x86_64                randconfig-075-20260213    clang-20
x86_64                randconfig-076-20260213    clang-20
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-14
x86_64                          rhel-9.4-func    clang-20
x86_64                    rhel-9.4-kselftests    clang-20
x86_64                         rhel-9.4-kunit    gcc-14
x86_64                           rhel-9.4-ltp    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    clang-22
xtensa                            allnoconfig    gcc-15.2.0
xtensa                randconfig-001-20260213    gcc-12.5.0
xtensa                randconfig-002-20260213    gcc-12.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
