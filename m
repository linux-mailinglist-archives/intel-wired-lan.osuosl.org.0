Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 516CA9B1BD9
	for <lists+intel-wired-lan@lfdr.de>; Sun, 27 Oct 2024 02:56:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E6A8180B9C;
	Sun, 27 Oct 2024 01:56:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id magvqGPG_1Cm; Sun, 27 Oct 2024 01:56:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AF4B680B8C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729994170;
	bh=GpqRlzs4ToDVI7D4jdXR7yLcvuzbE3I9J+ADH+jYUkE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=WfwAsM5WXKJ27Jw2Q3uw/Br1qtohi6ABGs7I+8YQ7IMTmrbzE2BPn9Uy3WCQ7PhP6
	 LQWUBZW0Rn7Z0BrkfMFwGA63qITX2nd57IboBxDK86BmJZuwVu8VQlobDwoKB0HbgR
	 xAL6E51VifAes671oRhOXfyCr+Tt9VNcvFwgfX480/aEmQJ0/tZaqYYUNwcPL2kq8N
	 cUxLJ2guUfU9fpNLwmD99RhzSQchwYp/f4QTX1/3O4Eu63nK+UqiiRMFqOYFa0qQj4
	 /9AB+j80+HJzZyE3ZmVbKOdHFmeCUlToLaAvDDq2QcNNTKm3H3gRWWl1FrBQyN55h/
	 loijDThGn/8sQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id AF4B680B8C;
	Sun, 27 Oct 2024 01:56:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 8D8A55C24
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Oct 2024 01:56:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7AB824010F
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Oct 2024 01:56:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KTN4-Pyqlnjp for <intel-wired-lan@lists.osuosl.org>;
 Sun, 27 Oct 2024 01:56:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C82D8400F9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C82D8400F9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C82D8400F9
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Oct 2024 01:56:06 +0000 (UTC)
X-CSE-ConnectionGUID: pqhZzRcQQQ+MLkGywwxIYg==
X-CSE-MsgGUID: wEryQEjrTSKABeTyoJaL2Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11237"; a="33428992"
X-IronPort-AV: E=Sophos;i="6.11,236,1725346800"; d="scan'208";a="33428992"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2024 18:56:06 -0700
X-CSE-ConnectionGUID: l1w6GjjlTk6ISsXU4WfmXw==
X-CSE-MsgGUID: Xgdcs175QayXGRFcgM5srQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,236,1725346800"; d="scan'208";a="82101529"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
 by orviesa008.jf.intel.com with ESMTP; 26 Oct 2024 18:56:04 -0700
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1t4sVe-000aGM-0W
 for intel-wired-lan@lists.osuosl.org; Sun, 27 Oct 2024 01:56:02 +0000
Date: Sun, 27 Oct 2024 09:55:29 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202410270922.4g4NkM59-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729994167; x=1761530167;
 h=date:from:to:subject:message-id;
 bh=dVKTLkqgWe8pWveGHqyvSpbm6Jsh6lUmDMp3SrF3bPk=;
 b=aJYeNmjAvzuW6WbD40KZicjE3sK7u3eoOLQVRD/gnpMrbG0Fq8JLAvTf
 9xnVM+q/QzNiytGR1g51Cdk5mjsrPw1aYwh+N5OnuqcCdo+THHFCGm2WP
 +jgt+sTAxvZ6MGv+xm9w9STAXJRVw2c9nujfvikx0P6AqYUxg/ZX3wvdq
 mEgnq3atWKKpS9KTpmND31IzgYuQkotdE+k/pxZvflVh3spjgWRhrv7sC
 xzmj1DE8/7U4wGf5rTFwZLQFPVQdmTRe9ORZNLR5gkqPTzqm9ctLcf5HX
 VoP/yhJaIqHOiSwvGV5XLkR1VWZH0gqwJjuHga1H0GrTVgi3T75IPyioz
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=aJYeNmjA
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 93e5920e5193241cb05caaa6421365fd8800f1b4
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
branch HEAD: 93e5920e5193241cb05caaa6421365fd8800f1b4  ice: support FW Recovery Mode

elapsed time: 1568m

configs tested: 101
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-13.3.0
alpha                            allyesconfig    gcc-13.3.0
arc                               allnoconfig    gcc-13.2.0
arc                   randconfig-001-20241026    gcc-13.2.0
arc                   randconfig-002-20241026    gcc-13.2.0
arm                               allnoconfig    clang-20
arm                   randconfig-001-20241026    gcc-14.1.0
arm                   randconfig-002-20241026    clang-20
arm                   randconfig-003-20241026    gcc-14.1.0
arm                   randconfig-004-20241026    gcc-14.1.0
arm64                             allnoconfig    gcc-14.1.0
arm64                 randconfig-001-20241026    gcc-14.1.0
arm64                 randconfig-002-20241026    clang-20
arm64                 randconfig-003-20241026    clang-20
arm64                 randconfig-004-20241026    gcc-14.1.0
csky                              allnoconfig    gcc-14.1.0
csky                  randconfig-001-20241026    gcc-14.1.0
csky                  randconfig-002-20241026    gcc-14.1.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    clang-20
hexagon                          allyesconfig    clang-20
hexagon               randconfig-001-20241026    clang-20
hexagon               randconfig-002-20241026    clang-17
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20241027    gcc-12
i386        buildonly-randconfig-002-20241027    gcc-12
i386        buildonly-randconfig-003-20241027    clang-19
i386        buildonly-randconfig-004-20241027    gcc-12
i386        buildonly-randconfig-005-20241027    clang-19
i386        buildonly-randconfig-006-20241027    gcc-12
i386                                defconfig    clang-19
i386                  randconfig-001-20241027    gcc-12
i386                  randconfig-002-20241027    clang-19
i386                  randconfig-003-20241027    gcc-12
i386                  randconfig-004-20241027    gcc-12
i386                  randconfig-005-20241027    gcc-12
i386                  randconfig-006-20241027    gcc-12
i386                  randconfig-011-20241027    clang-19
i386                  randconfig-012-20241027    clang-19
i386                  randconfig-013-20241027    clang-19
i386                  randconfig-014-20241027    gcc-12
i386                  randconfig-015-20241027    clang-19
i386                  randconfig-016-20241027    clang-19
loongarch                        allmodconfig    gcc-14.1.0
loongarch                         allnoconfig    gcc-14.1.0
loongarch             randconfig-001-20241026    gcc-14.1.0
loongarch             randconfig-002-20241026    gcc-14.1.0
m68k                             allmodconfig    gcc-14.1.0
m68k                              allnoconfig    gcc-14.1.0
m68k                             allyesconfig    gcc-14.1.0
microblaze                       allmodconfig    gcc-14.1.0
microblaze                        allnoconfig    gcc-14.1.0
microblaze                       allyesconfig    gcc-14.1.0
mips                              allnoconfig    gcc-14.1.0
nios2                             allnoconfig    gcc-14.1.0
nios2                 randconfig-001-20241026    gcc-14.1.0
nios2                 randconfig-002-20241026    gcc-14.1.0
openrisc                          allnoconfig    gcc-14.1.0
openrisc                         allyesconfig    gcc-14.1.0
parisc                           allmodconfig    gcc-14.1.0
parisc                            allnoconfig    gcc-14.1.0
parisc                           allyesconfig    gcc-14.1.0
parisc                randconfig-001-20241026    gcc-14.1.0
parisc                randconfig-002-20241026    gcc-14.1.0
powerpc                           allnoconfig    gcc-14.1.0
powerpc               randconfig-001-20241026    gcc-14.1.0
powerpc               randconfig-002-20241026    gcc-14.1.0
powerpc               randconfig-003-20241026    clang-20
powerpc64             randconfig-001-20241026    clang-20
powerpc64             randconfig-002-20241026    clang-20
powerpc64             randconfig-003-20241026    gcc-14.1.0
riscv                             allnoconfig    gcc-14.1.0
riscv                 randconfig-001-20241026    gcc-14.1.0
riscv                 randconfig-002-20241026    clang-20
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.1.0
s390                  randconfig-001-20241026    gcc-14.1.0
s390                  randconfig-002-20241026    gcc-14.1.0
sh                               allmodconfig    gcc-14.1.0
sh                                allnoconfig    gcc-14.1.0
sh                               allyesconfig    gcc-14.1.0
sh                    randconfig-001-20241026    gcc-14.1.0
sh                    randconfig-002-20241026    gcc-14.1.0
sparc                            allmodconfig    gcc-14.1.0
sparc64               randconfig-001-20241026    gcc-14.1.0
sparc64               randconfig-002-20241026    gcc-14.1.0
um                               allmodconfig    clang-20
um                                allnoconfig    clang-17
um                               allyesconfig    gcc-12
um                    randconfig-001-20241026    clang-20
um                    randconfig-002-20241026    clang-20
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-19
x86_64                               rhel-8.3    gcc-12
xtensa                            allnoconfig    gcc-14.1.0
xtensa                randconfig-001-20241026    gcc-14.1.0
xtensa                randconfig-002-20241026    gcc-14.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
