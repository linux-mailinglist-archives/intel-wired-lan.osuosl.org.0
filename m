Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E930E9D049E
	for <lists+intel-wired-lan@lfdr.de>; Sun, 17 Nov 2024 17:00:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BF12C8495F;
	Sun, 17 Nov 2024 16:00:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Q9czD_MjyEyY; Sun, 17 Nov 2024 16:00:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 803358497F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731859253;
	bh=pEfytMSYkxZUTReGcMlLOhJq/X2hfN7F1SsNc2ghh2s=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=yuPRUQgxVzLTMQF0RAhKLU/RfVOIIyYfyWc+UdwNirHWV5auoYa6S6swdTXu0skvf
	 7zUZL0HMng9Y1Fk8zDyJjGEx0AvRqJT6aBQVRJRmImSwgYuNe6nlAqeYWV3+i8+61P
	 o+wvnON1czlbaSjNJBhtitfo2lxcKbvPAK9qVOPBWUcw9OkeNTNls8hR3DCZbAG2Ff
	 C2aYmBepnX0ITYMRoSDT0R2atAxZTZbidtWJknps2AOmlMsC9MA/0jqmib2/FalDVc
	 iS1NCa0jOm108wNK0BWJweRefrrpCVRZRvVTiS3MDxTERW8mBhQMksq3QX3PWRfK7O
	 55Qnsii6pD10A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 803358497F;
	Sun, 17 Nov 2024 16:00:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 7576CAF0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 Nov 2024 16:00:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 706E16077D
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 Nov 2024 16:00:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UyuhwcClMmnT for <intel-wired-lan@lists.osuosl.org>;
 Sun, 17 Nov 2024 16:00:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 10A1660743
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 10A1660743
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 10A1660743
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 Nov 2024 16:00:49 +0000 (UTC)
X-CSE-ConnectionGUID: VY39Z16OQKy2OppGkNgT4g==
X-CSE-MsgGUID: gfgH8qRTTgG9/rNTwxWFZQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11259"; a="34673531"
X-IronPort-AV: E=Sophos;i="6.12,162,1728975600"; d="scan'208";a="34673531"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2024 08:00:49 -0800
X-CSE-ConnectionGUID: JHF7N0ewQpqsQtQPBa0w5w==
X-CSE-MsgGUID: /2VU8KSXQKKUWvP/gsyWtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,162,1728975600"; d="scan'208";a="93843775"
Received: from lkp-server01.sh.intel.com (HELO 1e3cc1889ffb) ([10.239.97.150])
 by fmviesa004.fm.intel.com with ESMTP; 17 Nov 2024 08:00:48 -0800
Received: from kbuild by 1e3cc1889ffb with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tChhd-0001sL-34
 for intel-wired-lan@lists.osuosl.org; Sun, 17 Nov 2024 16:00:45 +0000
Date: Mon, 18 Nov 2024 00:00:10 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202411180005.w2Ut8wWh-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731859250; x=1763395250;
 h=date:from:to:subject:message-id;
 bh=+m+HnJ0opeQFN83PNlg1PsCwurjh9F+nj/SQ1AcxTxY=;
 b=EzpwIFu+6aGJTZc3DdlgwnTxHc/+4PY5NHelsJEtGLLT7WYawjgqswdU
 Dp680C/4vthvD47TqlCFkRw4d8pkIvcqX2P7xnodKW2yTKWJCePvLaNfD
 Rw1iDL5nVVGgtxdsomRlXxurim4XmFrjKbsWvPjDdsEhmRXQJPxaN9OKN
 hcJfRStvgo/TqzDhunObhfiChJsSSvJTtc0i4dlFlQJZVwJC3wN70y/OJ
 htqcdTcELOOOkONowCN5CAambGt38tHdShEKcqmWEgNjP2/LKquVfIbYP
 Z1xOkWGhp9lmB9rrprKTs5FA83SAjtVsEvRYBZIa9iGWqMVSfxG4ZYd/z
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EzpwIFu+
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 6ef5f61a4aa7d4df94a855a44f996bff08b0be83
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
branch HEAD: 6ef5f61a4aa7d4df94a855a44f996bff08b0be83  idpf: add lock class key

elapsed time: 1457m

configs tested: 155
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                               defconfig    gcc-14.2.0
arc                              allmodconfig    clang-20
arc                               allnoconfig    gcc-14.2.0
arc                              allyesconfig    clang-20
arc                                 defconfig    gcc-14.2.0
arc                   randconfig-001-20241117    clang-20
arc                   randconfig-002-20241117    clang-20
arm                              allmodconfig    clang-20
arm                               allnoconfig    gcc-14.2.0
arm                              allyesconfig    clang-20
arm                          collie_defconfig    clang-20
arm                                 defconfig    gcc-14.2.0
arm                          ixp4xx_defconfig    clang-20
arm                        multi_v7_defconfig    clang-20
arm                         nhk8815_defconfig    clang-20
arm                          pxa3xx_defconfig    clang-20
arm                             pxa_defconfig    clang-20
arm                   randconfig-001-20241117    clang-20
arm                   randconfig-002-20241117    clang-20
arm                   randconfig-003-20241117    clang-20
arm                   randconfig-004-20241117    clang-20
arm                         s5pv210_defconfig    clang-20
arm                           sama7_defconfig    clang-20
arm                           sunxi_defconfig    clang-20
arm                           u8500_defconfig    clang-20
arm                       versatile_defconfig    clang-20
arm64                            allmodconfig    clang-20
arm64                             allnoconfig    gcc-14.2.0
arm64                               defconfig    gcc-14.2.0
arm64                 randconfig-001-20241117    clang-20
arm64                 randconfig-002-20241117    clang-20
arm64                 randconfig-003-20241117    clang-20
arm64                 randconfig-004-20241117    clang-20
csky                              allnoconfig    gcc-14.2.0
csky                                defconfig    gcc-14.2.0
csky                  randconfig-001-20241117    clang-20
csky                  randconfig-002-20241117    clang-20
hexagon                           allnoconfig    gcc-14.2.0
hexagon                             defconfig    gcc-14.2.0
hexagon               randconfig-001-20241117    clang-20
hexagon               randconfig-002-20241117    clang-20
i386                             allmodconfig    clang-19
i386                              allnoconfig    clang-19
i386                             allyesconfig    clang-19
i386        buildonly-randconfig-001-20241117    clang-19
i386        buildonly-randconfig-002-20241117    clang-19
i386        buildonly-randconfig-003-20241117    clang-19
i386        buildonly-randconfig-004-20241117    clang-19
i386        buildonly-randconfig-005-20241117    clang-19
i386        buildonly-randconfig-006-20241117    clang-19
i386                                defconfig    clang-19
i386                  randconfig-001-20241117    clang-19
i386                  randconfig-002-20241117    clang-19
i386                  randconfig-003-20241117    clang-19
i386                  randconfig-004-20241117    clang-19
i386                  randconfig-005-20241117    clang-19
i386                  randconfig-006-20241117    clang-19
i386                  randconfig-011-20241117    clang-19
i386                  randconfig-012-20241117    clang-19
i386                  randconfig-013-20241117    clang-19
i386                  randconfig-014-20241117    clang-19
i386                  randconfig-015-20241117    clang-19
i386                  randconfig-016-20241117    clang-19
loongarch                         allnoconfig    gcc-14.2.0
loongarch                           defconfig    gcc-14.2.0
loongarch             randconfig-001-20241117    clang-20
loongarch             randconfig-002-20241117    clang-20
m68k                              allnoconfig    gcc-14.2.0
m68k                                defconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                          defconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                   sb1250_swarm_defconfig    clang-20
nios2                             allnoconfig    gcc-14.2.0
nios2                               defconfig    gcc-14.2.0
nios2                 randconfig-001-20241117    clang-20
nios2                 randconfig-002-20241117    clang-20
openrisc                          allnoconfig    clang-20
openrisc                            defconfig    gcc-12
parisc                            allnoconfig    clang-20
parisc                              defconfig    gcc-12
parisc                randconfig-001-20241117    clang-20
parisc                randconfig-002-20241117    clang-20
parisc64                            defconfig    gcc-14.2.0
powerpc                           allnoconfig    clang-20
powerpc               randconfig-001-20241117    clang-20
powerpc               randconfig-002-20241117    clang-20
powerpc               randconfig-003-20241117    clang-20
powerpc64                        alldefconfig    clang-20
powerpc64             randconfig-001-20241117    clang-20
powerpc64             randconfig-002-20241117    clang-20
powerpc64             randconfig-003-20241117    clang-20
riscv                             allnoconfig    clang-20
riscv                               defconfig    gcc-12
riscv                 randconfig-001-20241117    clang-20
riscv                 randconfig-002-20241117    clang-20
s390                             allmodconfig    gcc-14.2.0
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.2.0
s390                                defconfig    gcc-12
s390                  randconfig-001-20241117    clang-20
s390                  randconfig-002-20241117    clang-20
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                                  defconfig    gcc-12
sh                    randconfig-001-20241117    clang-20
sh                    randconfig-002-20241117    clang-20
sh                            shmin_defconfig    clang-20
sparc                            allmodconfig    gcc-14.2.0
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20241117    clang-20
sparc64               randconfig-002-20241117    clang-20
um                                allnoconfig    clang-20
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20241117    clang-20
um                    randconfig-002-20241117    clang-20
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64      buildonly-randconfig-001-20241117    clang-19
x86_64      buildonly-randconfig-002-20241117    clang-19
x86_64      buildonly-randconfig-003-20241117    clang-19
x86_64      buildonly-randconfig-004-20241117    gcc-12
x86_64      buildonly-randconfig-005-20241117    gcc-12
x86_64      buildonly-randconfig-006-20241117    gcc-12
x86_64                              defconfig    clang-19
x86_64                                  kexec    clang-19
x86_64                                  kexec    gcc-12
x86_64                randconfig-001-20241117    gcc-12
x86_64                randconfig-002-20241117    gcc-11
x86_64                randconfig-003-20241117    clang-19
x86_64                randconfig-004-20241117    gcc-12
x86_64                randconfig-005-20241117    gcc-12
x86_64                randconfig-006-20241117    gcc-12
x86_64                randconfig-011-20241117    clang-19
x86_64                randconfig-012-20241117    gcc-12
x86_64                randconfig-013-20241117    clang-19
x86_64                randconfig-014-20241117    clang-19
x86_64                randconfig-015-20241117    clang-19
x86_64                randconfig-016-20241117    gcc-12
x86_64                randconfig-071-20241117    gcc-12
x86_64                randconfig-072-20241117    clang-19
x86_64                randconfig-073-20241117    gcc-11
x86_64                randconfig-074-20241117    clang-19
x86_64                randconfig-075-20241117    gcc-12
x86_64                randconfig-076-20241117    gcc-12
x86_64                               rhel-8.3    gcc-12
xtensa                            allnoconfig    gcc-14.2.0
xtensa                          iss_defconfig    clang-20
xtensa                randconfig-001-20241117    clang-20
xtensa                randconfig-002-20241117    clang-20
xtensa                    xip_kc705_defconfig    clang-20

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
