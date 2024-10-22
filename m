Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 613129A9833
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Oct 2024 07:17:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id ECEAB80DF7;
	Tue, 22 Oct 2024 05:17:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oqP7mFzH7f1q; Tue, 22 Oct 2024 05:17:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B3EC280E05
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729574239;
	bh=iNCAvPSNykI85X8GtsAB9S36Zp4R897leDDo/Auqe8o=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=3coNq5w5g38+BvLn1XsyIbnaKWL6LReU9CamlrkjcpfNWt8bgKjFzWXmSC1y9K+CU
	 5cr4yjG7HwRQmefEeQO5NtIMpon4cmtAcJwCHV7wkUO8VQYHHP7tF+2+fPGIOwp4yh
	 oiCo5rPg7qefT7lVUeCVDhtfYvn2gUY88x3klDhLtNgrgSNFgCpYVgDSli1HngeGn7
	 qsL8K5faSpQPBn1buqr204g2PJm2mM6raPx0BKD9rJ4ixfgdM8P4f4SXO4lGxGWjPZ
	 7kBgtq0qe/CQD6HGSZwi3PuxwESxB7M9NZxji2tVinwE6R7318AgNDwMzgKN6b+zmS
	 Pj5d+pnUFNcUg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B3EC280E05;
	Tue, 22 Oct 2024 05:17:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 3CD4771F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 05:17:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2AFD86065C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 05:17:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fFRpdm8fGjfy for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Oct 2024 05:17:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 20FFA60766
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 20FFA60766
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 20FFA60766
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 05:17:15 +0000 (UTC)
X-CSE-ConnectionGUID: XMIS2quGQfSsu4u0646jpg==
X-CSE-MsgGUID: Y9q/KIoKSJ6iAAjdkqEpiw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="28861007"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="28861007"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 22:17:15 -0700
X-CSE-ConnectionGUID: TtoVadMLQ7yUWI0mh5COhA==
X-CSE-MsgGUID: R9ssKhEQS9q4qzpgnC29ag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="83740593"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
 by fmviesa003.fm.intel.com with ESMTP; 21 Oct 2024 22:17:14 -0700
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1t37GZ-000T5S-2V
 for intel-wired-lan@lists.osuosl.org; Tue, 22 Oct 2024 05:17:11 +0000
Date: Tue, 22 Oct 2024 13:17:02 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202410221354.2F8KshEr-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729574237; x=1761110237;
 h=date:from:to:subject:message-id;
 bh=OyOmq6VQWYtG4fZRSmT1b5OwNUS85ymO/GD9NTB3tkk=;
 b=TDmFv6fsxUeBnQRRQz5SzPBWreO07KBsoUyNbNKNGDczvFavK95ze0X8
 A5FKfBhfDQyMTZcii1MhgRuVVzVQQDIFhiW2JjqKv41nT0lRP+ugFXnJN
 t7XFTzrSIwMEAC4yv2DcDaidnXQZU88htGRY8R60jt3fgi8oK0Ivjxr+e
 fpSUQMDwTf6U7f7qT/X44TSX14qMK6D+rfXKIWNsTzzh70q6/wg7VB6Qp
 ACHvTRszXrXJUgjeP5h4VwqM/1e7+3Fq5glqWSJ4aeTxleJfSnC0MKuXM
 9M5HF13/2lkvPcYKtgT9HeRbXm4dwgcoDX/vmFTxLbfjQSvQkOS69t0z4
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TDmFv6fs
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 6f07cd8301706b661776074ddc97c991d107cc91
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git main
branch HEAD: 6f07cd8301706b661776074ddc97c991d107cc91  Merge branch 'net-mlx5-refactor-esw-qos-to-support-generalized-operations'

elapsed time: 1055m

configs tested: 115
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
arc                           tb10x_defconfig    gcc-14.1.0
arm                              allmodconfig    clang-20
arm                               allnoconfig    gcc-14.1.0
arm                              allyesconfig    clang-20
arm                         axm55xx_defconfig    gcc-14.1.0
arm                                 defconfig    gcc-14.1.0
arm                            mmp2_defconfig    gcc-14.1.0
arm                        mvebu_v5_defconfig    gcc-14.1.0
arm                        mvebu_v7_defconfig    gcc-14.1.0
arm                         s5pv210_defconfig    gcc-14.1.0
arm                           tegra_defconfig    gcc-14.1.0
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
i386        buildonly-randconfig-001-20241022    clang-18
i386        buildonly-randconfig-002-20241022    clang-18
i386        buildonly-randconfig-003-20241022    clang-18
i386        buildonly-randconfig-004-20241022    clang-18
i386        buildonly-randconfig-005-20241022    clang-18
i386        buildonly-randconfig-006-20241022    clang-18
i386                                defconfig    clang-18
i386                  randconfig-001-20241022    clang-18
i386                  randconfig-002-20241022    clang-18
i386                  randconfig-003-20241022    clang-18
i386                  randconfig-004-20241022    clang-18
i386                  randconfig-005-20241022    clang-18
i386                  randconfig-006-20241022    clang-18
i386                  randconfig-011-20241022    clang-18
i386                  randconfig-012-20241022    clang-18
i386                  randconfig-013-20241022    clang-18
i386                  randconfig-014-20241022    clang-18
i386                  randconfig-015-20241022    clang-18
i386                  randconfig-016-20241022    clang-18
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
powerpc                     asp8347_defconfig    gcc-14.1.0
powerpc                 mpc834x_itx_defconfig    gcc-14.1.0
powerpc                     mpc83xx_defconfig    gcc-14.1.0
powerpc                     stx_gp3_defconfig    gcc-14.1.0
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
sh                               j2_defconfig    gcc-14.1.0
sh                          lboxre2_defconfig    gcc-14.1.0
sh                          rsk7269_defconfig    gcc-14.1.0
sh                           se7619_defconfig    gcc-14.1.0
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
xtensa                generic_kc705_defconfig    gcc-14.1.0
xtensa                  nommu_kc705_defconfig    gcc-14.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
