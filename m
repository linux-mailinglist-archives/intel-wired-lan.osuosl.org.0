Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 816DA9049D4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Jun 2024 06:01:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7B7F882013;
	Wed, 12 Jun 2024 04:01:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7XDuvsrzdFQ0; Wed, 12 Jun 2024 04:01:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4D4F482018
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718164890;
	bh=1nBkbiMt7EF7+IZMzp3g/xXhKn/11nSCJgHg3eeLoVk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=duJfUFV4RqAtMqjXdKO73ZM12oKV6SXfgev0QNHtPnGzphh7YnTIpS1EQzx05paQG
	 d8kQu94dNejhJvOf+QllQlUUbNIWZxsScRDzU/UeodFT5hOrVptktOOyZApNK80EmI
	 owGk1XDRGFl2uJ0gupl68WzKPPX5NUDJ5HsrkxgVRyWLXbtG8J1vTUVXa9XK8Yzi9Z
	 O6AyljuRX5DMKR/K4LQVrdUeFw+XmJVDeMesGO7EPdnqs+F02nCV7HFA6v96cbPhJn
	 qg5CQI0FNYOWPkQCXB1VN8PuV9MSr3Qz5hldzAolXfzosj7MVmGyRip4SxxOcEFp/A
	 Z4cNZL+qEyTWw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4D4F482018;
	Wed, 12 Jun 2024 04:01:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 85CD61BF38A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2024 04:01:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 720DD6087D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2024 04:01:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WRqhly47i9et for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Jun 2024 04:01:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2AC4E60875
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2AC4E60875
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2AC4E60875
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2024 04:01:26 +0000 (UTC)
X-CSE-ConnectionGUID: JUrjnuO3QdOnpttEqT7dXA==
X-CSE-MsgGUID: VY0tT3pXSNSh//8VvhbC9A==
X-IronPort-AV: E=McAfee;i="6600,9927,11100"; a="37434183"
X-IronPort-AV: E=Sophos;i="6.08,232,1712646000"; d="scan'208";a="37434183"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 21:01:26 -0700
X-CSE-ConnectionGUID: RJsvC5c2SfOKPGjO5QkRsw==
X-CSE-MsgGUID: IoF8tTIbQjCiG87XwH9PeA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,232,1712646000"; d="scan'208";a="39759182"
Received: from lkp-server01.sh.intel.com (HELO 628d7d8b9fc6) ([10.239.97.150])
 by fmviesa009.fm.intel.com with ESMTP; 11 Jun 2024 21:01:25 -0700
Received: from kbuild by 628d7d8b9fc6 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sHFAp-0001B4-0m
 for intel-wired-lan@lists.osuosl.org; Wed, 12 Jun 2024 04:01:23 +0000
Date: Wed, 12 Jun 2024 12:00:43 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202406121241.K0Fr3UZo-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718164887; x=1749700887;
 h=date:from:to:subject:message-id;
 bh=xWseo3oqSPnY02UdXZ6OVXVHDylb0k8C1pdUvUB6WWg=;
 b=Lkf4KwFR3zKRgoeainsEaw03GiArcWM8FeFjub4/T1vecwsIx+sxf6Vg
 3+AI3g7MjteOxeRKJb61nnlEhCUPbhY1KQW4zkRy8TYE4LlHzBrZ+yRb9
 U/apU6aYz3iPjjp7oASHx2y/RhgmnOwicI9xsDEIREBwOXf4hjJ/pXTvA
 jSFB9bDz+AiRIue/q066Q9oHp4VMSyTPnvjzC38Z8qyT10GsGTrdBrmzl
 mfi1W6sISkbxiZksAr+TMdJk2hhlh2y2bt4aw1QnQufUhgN8aD9v5r6Ut
 WVvl6jhPJ5nm36SPsHwjAPITslv4v06dSZvhwsk5z4mp1bnJfjPvRDS1V
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Lkf4KwFR
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 36534d3c54537bf098224a32dc31397793d4594d
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 200GbE
branch HEAD: 36534d3c54537bf098224a32dc31397793d4594d  tcp: use signed arithmetic in tcp_rtx_probe0_timed_out()

elapsed time: 1466m

configs tested: 64
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.2.0
alpha                            allyesconfig   gcc-13.2.0
alpha                               defconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                                 defconfig   gcc-13.2.0
arm                               allnoconfig   clang-19
arm                                 defconfig   clang-14
arm64                             allnoconfig   gcc-13.2.0
arm64                               defconfig   gcc-13.2.0
csky                              allnoconfig   gcc-13.2.0
csky                                defconfig   gcc-13.2.0
hexagon                          allmodconfig   clang-19
hexagon                           allnoconfig   clang-19
hexagon                          allyesconfig   clang-19
hexagon                             defconfig   clang-19
i386         buildonly-randconfig-001-20240612   gcc-13
i386         buildonly-randconfig-002-20240612   gcc-8
i386         buildonly-randconfig-003-20240612   gcc-13
i386         buildonly-randconfig-004-20240612   clang-18
i386         buildonly-randconfig-005-20240612   gcc-13
i386         buildonly-randconfig-006-20240612   clang-18
i386                  randconfig-001-20240612   gcc-8
i386                  randconfig-002-20240612   clang-18
i386                  randconfig-003-20240612   clang-18
i386                  randconfig-004-20240612   clang-18
i386                  randconfig-005-20240612   gcc-13
i386                  randconfig-006-20240612   clang-18
i386                  randconfig-011-20240612   clang-18
i386                  randconfig-012-20240612   clang-18
i386                  randconfig-013-20240612   clang-18
i386                  randconfig-014-20240612   gcc-7
i386                  randconfig-015-20240612   gcc-13
i386                  randconfig-016-20240612   gcc-7
loongarch                         allnoconfig   gcc-13.2.0
loongarch                           defconfig   gcc-13.2.0
m68k                              allnoconfig   gcc-13.2.0
m68k                                defconfig   gcc-13.2.0
microblaze                        allnoconfig   gcc-13.2.0
microblaze                          defconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-13.2.0
nios2                               defconfig   gcc-13.2.0
openrisc                          allnoconfig   gcc-13.2.0
openrisc                            defconfig   gcc-13.2.0
parisc                            allnoconfig   gcc-13.2.0
parisc                              defconfig   gcc-13.2.0
parisc64                            defconfig   gcc-13.2.0
powerpc                           allnoconfig   gcc-13.2.0
riscv                             allnoconfig   gcc-13.2.0
riscv                               defconfig   clang-19
s390                              allnoconfig   clang-19
s390                                defconfig   clang-19
sh                                allnoconfig   gcc-13.2.0
sh                                  defconfig   gcc-13.2.0
sparc                             allnoconfig   gcc-13.2.0
sparc                               defconfig   gcc-13.2.0
sparc64                             defconfig   gcc-13.2.0
um                               allmodconfig   clang-19
um                                allnoconfig   clang-17
um                               allyesconfig   gcc-13
um                                  defconfig   clang-19
um                             i386_defconfig   gcc-13
um                           x86_64_defconfig   clang-15
xtensa                            allnoconfig   gcc-13.2.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
