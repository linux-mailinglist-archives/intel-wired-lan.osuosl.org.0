Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 712709AFC85
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Oct 2024 10:28:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1EA3960A5F;
	Fri, 25 Oct 2024 08:28:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Mtul0mbGCmMA; Fri, 25 Oct 2024 08:28:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 04B9D60A62
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729844935;
	bh=glTrAYaUTz3ha7vdRwOWz/kL8Mdt3K6rwjxAIuZk4wo=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=N0hrDbuoE9oqqBrEcOtDodt5uUCD8qldQ8NdYf8xg1jjsEZvZRfeH59K3j8KvBAd9
	 6iVlYC6NxrpfBJeixrO64y5K7PuUbMhXXkZrJtW0XUd1ZVjWdhfitzqnUaCCFaeSqq
	 ppdsOURJSRVXdMocseW74I0KIbfI73Ck/jQ/2rW2a00doWYtLN40/I6vejQVVmPH9L
	 KGNmKGq7NXD0ggsXaNhy/EY5uHZPwsCD7x3Tq/VZdPf3amO4jQhuv8cicqlz7lSqip
	 k0dMyv3uiI4f34tNJEcQ7Zzx8pw/Dvx1A34hlRpxF5Y6Xhcx701WvbjzHEiSW/Rzbk
	 8jaM+0k7PT2ng==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 04B9D60A62;
	Fri, 25 Oct 2024 08:28:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 8FD13497A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2024 08:28:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7D37040939
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2024 08:28:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dVvvJfv-Cox1 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Oct 2024 08:28:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 083A9408D2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 083A9408D2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 083A9408D2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2024 08:28:51 +0000 (UTC)
X-CSE-ConnectionGUID: RmzhWRaVTeWTNibR9pN4Ag==
X-CSE-MsgGUID: lCp9VHg2QBGfcjAb2mkKWQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11235"; a="33417886"
X-IronPort-AV: E=Sophos;i="6.11,231,1725346800"; d="scan'208";a="33417886"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 01:28:50 -0700
X-CSE-ConnectionGUID: xCb03KYDQ2auTOLZlGc0wQ==
X-CSE-MsgGUID: zXEwVQgbSB2MJK6K8cC2cg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,231,1725346800"; d="scan'208";a="80507659"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
 by fmviesa007.fm.intel.com with ESMTP; 25 Oct 2024 01:28:49 -0700
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1t4Fgd-000XrC-2k
 for intel-wired-lan@lists.osuosl.org; Fri, 25 Oct 2024 08:28:47 +0000
Date: Fri, 25 Oct 2024 16:28:15 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202410251608.I4e7ULnw-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729844932; x=1761380932;
 h=date:from:to:subject:message-id;
 bh=+kkYt3r1fkLfNYL1i7cA3ha0fiHQ76oAkI4EqBgmV2E=;
 b=bOR5S52OPo6u9nw/Y6GZoJP9DAPjnNSRC7UTuj/br6RIxdYcyzob+whU
 YOmTfCsC1v6+rItF/QgQ58zDDgRTolVP0JQLXcbWI/S5qq2l/LVigg5tT
 M1ZuhW2EYZ2R97Gr+jnv+syQNi96rdV27wBcg6D3W+2uAPRipbDwpXisG
 cuZ1HWrOBv3qZ8TVGp1Yfl1e3SCvajG2ZE+Y+9gS6DhlkLkGUBiaHcbNJ
 42m1kAdne6Yd9LBNzWgtG/zpmMmRYOzCofjjfAlfaLqdtp1LgiYKvugIi
 P9e/KNLUH+4UrQrNrtopgsZt1aZnMVGhAggSrDq9SHFJxlRWRHqJG01cK
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=bOR5S52O
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 81bc949f640f78b507c7523de7c750bcc87c1bb8
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 10GbE
branch HEAD: 81bc949f640f78b507c7523de7c750bcc87c1bb8  selftests: tls: add a selftest for wrapping rec_seq

elapsed time: 1055m

configs tested: 109
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                     allnoconfig    gcc-14.1.0
alpha                    allyesconfig    clang-20
alpha                       defconfig    gcc-14.1.0
arc                      allmodconfig    clang-20
arc                       allnoconfig    gcc-14.1.0
arc                      allyesconfig    clang-20
arc                         defconfig    gcc-14.1.0
arm                      allmodconfig    clang-20
arm                       allnoconfig    gcc-14.1.0
arm                      allyesconfig    clang-20
arm               aspeed_g5_defconfig    clang-20
arm                         defconfig    gcc-14.1.0
arm                 lpc32xx_defconfig    gcc-14.1.0
arm                 s3c6400_defconfig    gcc-14.1.0
arm                   sama5_defconfig    clang-20
arm                  sp7021_defconfig    gcc-14.1.0
arm            vt8500_v6_v7_defconfig    gcc-14.1.0
arm64                    allmodconfig    clang-20
arm64                     allnoconfig    gcc-14.1.0
arm64                       defconfig    gcc-14.1.0
csky                      allnoconfig    gcc-14.1.0
csky                        defconfig    gcc-14.1.0
hexagon                  allmodconfig    clang-20
hexagon                   allnoconfig    gcc-14.1.0
hexagon                  allyesconfig    clang-20
hexagon                     defconfig    gcc-14.1.0
i386                     alldefconfig    gcc-14.1.0
i386                     allmodconfig    clang-19
i386                      allnoconfig    clang-19
i386                     allyesconfig    clang-19
i386                        defconfig    clang-19
loongarch                allmodconfig    gcc-14.1.0
loongarch                 allnoconfig    gcc-14.1.0
loongarch                   defconfig    gcc-14.1.0
m68k                     allmodconfig    gcc-14.1.0
m68k                      allnoconfig    gcc-14.1.0
m68k                     allyesconfig    gcc-14.1.0
m68k                        defconfig    gcc-14.1.0
m68k                   sun3_defconfig    clang-20
microblaze               allmodconfig    gcc-14.1.0
microblaze                allnoconfig    gcc-14.1.0
microblaze               allyesconfig    gcc-14.1.0
microblaze                  defconfig    gcc-14.1.0
mips                      allnoconfig    gcc-14.1.0
mips                bcm63xx_defconfig    clang-20
mips                 bigsur_defconfig    clang-20
mips                    gpr_defconfig    clang-20
mips                    gpr_defconfig    gcc-14.1.0
mips                   jazz_defconfig    gcc-14.1.0
mips                omega2p_defconfig    clang-20
nios2                     allnoconfig    gcc-14.1.0
nios2                       defconfig    gcc-14.1.0
openrisc                  allnoconfig    clang-20
openrisc                 allyesconfig    gcc-14.1.0
openrisc                    defconfig    gcc-12
parisc                   allmodconfig    gcc-14.1.0
parisc                    allnoconfig    clang-20
parisc                   allyesconfig    gcc-14.1.0
parisc                      defconfig    gcc-12
parisc64                    defconfig    gcc-14.1.0
powerpc            adder875_defconfig    clang-20
powerpc                  allmodconfig    gcc-14.1.0
powerpc                   allnoconfig    clang-20
powerpc                  allyesconfig    gcc-14.1.0
powerpc            ge_imp3a_defconfig    clang-20
powerpc         mpc832x_rdb_defconfig    clang-20
powerpc             sequoia_defconfig    gcc-14.1.0
powerpc             tqm8560_defconfig    clang-20
powerpc              tqm8xx_defconfig    gcc-14.1.0
powerpc                warp_defconfig    gcc-14.1.0
riscv                    allmodconfig    gcc-14.1.0
riscv                     allnoconfig    clang-20
riscv                    allyesconfig    gcc-14.1.0
riscv                       defconfig    gcc-12
s390                     allmodconfig    gcc-14.1.0
s390                      allnoconfig    clang-20
s390                     allyesconfig    gcc-14.1.0
s390                        defconfig    gcc-12
s390               zfcpdump_defconfig    clang-20
sh                       allmodconfig    gcc-14.1.0
sh                        allnoconfig    gcc-14.1.0
sh                       allyesconfig    gcc-14.1.0
sh                          defconfig    gcc-12
sh                 ecovec24_defconfig    gcc-14.1.0
sh                edosk7705_defconfig    gcc-14.1.0
sh                  kfr2r09_defconfig    gcc-14.1.0
sh             magicpanelr2_defconfig    gcc-14.1.0
sh              rts7751r2d1_defconfig    clang-20
sh                   se7619_defconfig    gcc-14.1.0
sh                   se7705_defconfig    clang-20
sh                   se7705_defconfig    gcc-14.1.0
sh          sh7785lcr_32bit_defconfig    clang-20
sh                     shx3_defconfig    clang-20
sparc                    allmodconfig    gcc-14.1.0
sparc64                     defconfig    gcc-12
um                       allmodconfig    clang-20
um                        allnoconfig    clang-20
um                       allyesconfig    clang-20
um                          defconfig    gcc-12
um                     i386_defconfig    gcc-12
um                   x86_64_defconfig    gcc-12
x86_64                    allnoconfig    clang-19
x86_64                   allyesconfig    clang-19
x86_64                      defconfig    clang-19
x86_64                          kexec    clang-19
x86_64                          kexec    gcc-12
x86_64                       rhel-8.3    gcc-12
xtensa                    allnoconfig    gcc-14.1.0
xtensa          cadence_csp_defconfig    clang-20

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
