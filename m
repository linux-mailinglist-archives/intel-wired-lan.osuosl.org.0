Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A091A55799
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Mar 2025 21:42:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D431482B21;
	Thu,  6 Mar 2025 20:42:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GeKaAmkZJ_t6; Thu,  6 Mar 2025 20:42:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3AFFC82CD3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741293734;
	bh=5rpN8LZzSdDAQPH0MF/E+WOcau7fcSMHabK8Z8e0XPg=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=g11IC/HdF76pM+Izo9zb5aws/vmH/tscxCOeI2CsIdxEPlAH4WTUujnXtVAGuKASi
	 hz4AlapEYKNjn1cp62CERt9GUcje7LMpUlS1ryprJc4VkNa3ef7eBWowyDkhu13p88
	 UuF63wX98wY9KKR2uLX7022hBhuVl3W0y+qARH6iOx+Eo0ZNRyYGWIeReIUX/XKYCi
	 nL4Cl9VTLxxwS83CUU5a3R5USsF7HvJ86aIuSfxcByzJkE+tkqtyePPQR2W1iq4naU
	 FjwpzM+1vJ7i0fcc0uoOiVkkoiYiLXtGLa91TTMN5EYj08HoXtzcaRhiz/P5LY8JcQ
	 0/9ibKfjRvEzw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3AFFC82CD3;
	Thu,  6 Mar 2025 20:42:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 67BA4F21
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 20:42:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 439EE40CF1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 20:42:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QB-vQTdWRryn for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Mar 2025 20:42:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CD6D140CCF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CD6D140CCF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CD6D140CCF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 20:42:09 +0000 (UTC)
X-CSE-ConnectionGUID: euicwFkRRvaRYKWdpYcfPA==
X-CSE-MsgGUID: mbtOv0JwSk60FEXhunosHg==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="42468204"
X-IronPort-AV: E=Sophos;i="6.14,227,1736841600"; d="scan'208";a="42468204"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 12:42:09 -0800
X-CSE-ConnectionGUID: P4Y4ZXPBSOGHQUdyOruKVg==
X-CSE-MsgGUID: p2RvOByeQU+Z5Xwh7PFi2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,227,1736841600"; d="scan'208";a="123729265"
Received: from lkp-server02.sh.intel.com (HELO 76cde6cc1f07) ([10.239.97.151])
 by fmviesa005.fm.intel.com with ESMTP; 06 Mar 2025 12:42:08 -0800
Received: from kbuild by 76cde6cc1f07 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tqI2g-000Nb5-0v
 for intel-wired-lan@lists.osuosl.org; Thu, 06 Mar 2025 20:42:06 +0000
Date: Fri, 07 Mar 2025 04:41:34 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202503070428.gNz95ltp-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741293731; x=1772829731;
 h=date:from:to:subject:message-id;
 bh=/1NowSnCHFaQ+HIv6Nz65o/Dr8ZtI5YWeeFYkJp9BwI=;
 b=WNXQn09Jzzh6/+yb2g/0D9X1+B6xvEPmL86k+MCMZXGtV1Ll1lblva8x
 KeJYhTshcrg2SSqmMs5CWe9ODo5kWqZxr47VN2Ubpg7Z29qxa4PwQeGge
 zI+YZLfA9J8qqdnfIdY2lpJEqXDK7lqEfbYSZx/e32yJavJ9scTYaca7Z
 7IfxyHw/obsKInCrhyusxbky0ubAISB/YlBZ6o1oge65THoKIvZN2J9V2
 RRgQiN7n33Ki3NaussUWbJufCQ1w2kLFrptx7d80m0pouKwNhhC0BQQJ5
 BxRfw9k8eudE3/gJHXK2aV5Ja6WqFao+ZL7DTz7GndYsf6pMQ1X4KLyVt
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WNXQn09J
Subject: [Intel-wired-lan] [tnguy-next-queue:for-next-fixes] BUILD SUCCESS
 f798c4bce163411673e49b7d07587aff7896ded4
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git for-next-fixes
branch HEAD: f798c4bce163411673e49b7d07587aff7896ded4  irdma: free iwdev->rf after removing MSI-X

elapsed time: 1457m

configs tested: 190
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
arc                               allnoconfig    gcc-14.2.0
arc                   randconfig-001-20250306    gcc-13.2.0
arc                   randconfig-001-20250307    clang-15
arc                   randconfig-002-20250306    gcc-13.2.0
arc                   randconfig-002-20250307    clang-15
arc                    vdk_hs38_smp_defconfig    gcc-14.2.0
arm                               allnoconfig    gcc-14.2.0
arm                          exynos_defconfig    gcc-14.2.0
arm                        mvebu_v7_defconfig    gcc-14.2.0
arm                   randconfig-001-20250306    gcc-14.2.0
arm                   randconfig-001-20250307    clang-15
arm                   randconfig-002-20250306    gcc-14.2.0
arm                   randconfig-002-20250307    clang-15
arm                   randconfig-003-20250306    gcc-14.2.0
arm                   randconfig-003-20250307    clang-15
arm                   randconfig-004-20250306    clang-18
arm                   randconfig-004-20250307    clang-15
arm64                             allnoconfig    gcc-14.2.0
arm64                 randconfig-001-20250306    gcc-14.2.0
arm64                 randconfig-001-20250307    clang-15
arm64                 randconfig-002-20250306    gcc-14.2.0
arm64                 randconfig-002-20250307    clang-15
arm64                 randconfig-003-20250306    gcc-14.2.0
arm64                 randconfig-003-20250307    clang-15
arm64                 randconfig-004-20250306    gcc-14.2.0
arm64                 randconfig-004-20250307    clang-15
csky                              allnoconfig    gcc-14.2.0
csky                  randconfig-001-20250306    gcc-14.2.0
csky                  randconfig-001-20250307    gcc-14.2.0
csky                  randconfig-002-20250306    gcc-14.2.0
csky                  randconfig-002-20250307    gcc-14.2.0
hexagon                           allnoconfig    gcc-14.2.0
hexagon               randconfig-001-20250306    clang-21
hexagon               randconfig-001-20250307    gcc-14.2.0
hexagon               randconfig-002-20250306    clang-19
hexagon               randconfig-002-20250307    gcc-14.2.0
i386                             allmodconfig    clang-19
i386                              allnoconfig    clang-19
i386                             allyesconfig    clang-19
i386        buildonly-randconfig-001-20250306    clang-19
i386        buildonly-randconfig-001-20250307    clang-19
i386        buildonly-randconfig-002-20250306    clang-19
i386        buildonly-randconfig-002-20250307    clang-19
i386        buildonly-randconfig-003-20250306    clang-19
i386        buildonly-randconfig-003-20250307    clang-19
i386        buildonly-randconfig-004-20250306    gcc-12
i386        buildonly-randconfig-004-20250307    clang-19
i386        buildonly-randconfig-005-20250306    gcc-12
i386        buildonly-randconfig-005-20250307    clang-19
i386        buildonly-randconfig-006-20250306    clang-19
i386        buildonly-randconfig-006-20250307    clang-19
i386                                defconfig    clang-19
i386                  randconfig-001-20250307    clang-19
i386                  randconfig-002-20250307    clang-19
i386                  randconfig-003-20250307    clang-19
i386                  randconfig-004-20250307    clang-19
i386                  randconfig-005-20250307    clang-19
i386                  randconfig-006-20250307    clang-19
i386                  randconfig-007-20250307    clang-19
i386                  randconfig-011-20250307    gcc-11
i386                  randconfig-012-20250307    gcc-11
i386                  randconfig-013-20250307    gcc-11
i386                  randconfig-014-20250307    gcc-11
i386                  randconfig-015-20250307    gcc-11
i386                  randconfig-016-20250307    gcc-11
i386                  randconfig-017-20250307    gcc-11
loongarch                         allnoconfig    gcc-14.2.0
loongarch             randconfig-001-20250306    gcc-14.2.0
loongarch             randconfig-001-20250307    gcc-14.2.0
loongarch             randconfig-002-20250306    gcc-14.2.0
loongarch             randconfig-002-20250307    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                          amiga_defconfig    gcc-14.2.0
m68k                        m5407c3_defconfig    gcc-14.2.0
microblaze                       alldefconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                           ip32_defconfig    gcc-14.2.0
nios2                         10m50_defconfig    gcc-14.2.0
nios2                            alldefconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250306    gcc-14.2.0
nios2                 randconfig-001-20250307    gcc-14.2.0
nios2                 randconfig-002-20250306    gcc-14.2.0
nios2                 randconfig-002-20250307    gcc-14.2.0
openrisc                          allnoconfig    clang-15
openrisc                          allnoconfig    gcc-14.2.0
parisc                            allnoconfig    clang-15
parisc                            allnoconfig    gcc-14.2.0
parisc                randconfig-001-20250306    gcc-14.2.0
parisc                randconfig-001-20250307    gcc-14.2.0
parisc                randconfig-002-20250306    gcc-14.2.0
parisc                randconfig-002-20250307    gcc-14.2.0
powerpc                           allnoconfig    clang-15
powerpc                           allnoconfig    gcc-14.2.0
powerpc                        icon_defconfig    gcc-14.2.0
powerpc                 linkstation_defconfig    gcc-14.2.0
powerpc                      pcm030_defconfig    gcc-14.2.0
powerpc               randconfig-001-20250306    clang-21
powerpc               randconfig-001-20250307    gcc-14.2.0
powerpc               randconfig-002-20250306    clang-18
powerpc               randconfig-002-20250307    gcc-14.2.0
powerpc               randconfig-003-20250306    gcc-14.2.0
powerpc               randconfig-003-20250307    gcc-14.2.0
powerpc64             randconfig-001-20250306    clang-18
powerpc64             randconfig-001-20250307    gcc-14.2.0
powerpc64             randconfig-002-20250306    clang-21
powerpc64             randconfig-002-20250307    gcc-14.2.0
powerpc64             randconfig-003-20250306    clang-18
powerpc64             randconfig-003-20250307    gcc-14.2.0
riscv                             allnoconfig    clang-15
riscv                             allnoconfig    gcc-14.2.0
riscv                 randconfig-001-20250306    clang-18
riscv                 randconfig-001-20250307    gcc-14.2.0
riscv                 randconfig-002-20250306    gcc-14.2.0
riscv                 randconfig-002-20250307    gcc-14.2.0
s390                             allmodconfig    clang-19
s390                             allmodconfig    gcc-14.2.0
s390                              allnoconfig    clang-15
s390                             allyesconfig    gcc-14.2.0
s390                  randconfig-001-20250306    gcc-14.2.0
s390                  randconfig-001-20250307    gcc-14.2.0
s390                  randconfig-002-20250306    clang-19
s390                  randconfig-002-20250307    gcc-14.2.0
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                    randconfig-001-20250306    gcc-14.2.0
sh                    randconfig-001-20250307    gcc-14.2.0
sh                    randconfig-002-20250306    gcc-14.2.0
sh                    randconfig-002-20250307    gcc-14.2.0
sh                          sdk7780_defconfig    gcc-14.2.0
sh                          sdk7786_defconfig    gcc-14.2.0
sh                              ul2_defconfig    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250306    gcc-14.2.0
sparc                 randconfig-001-20250307    gcc-14.2.0
sparc                 randconfig-002-20250306    gcc-14.2.0
sparc                 randconfig-002-20250307    gcc-14.2.0
sparc64               randconfig-001-20250306    gcc-14.2.0
sparc64               randconfig-001-20250307    gcc-14.2.0
sparc64               randconfig-002-20250306    gcc-14.2.0
sparc64               randconfig-002-20250307    gcc-14.2.0
um                                allnoconfig    clang-15
um                                allnoconfig    clang-18
um                    randconfig-001-20250306    gcc-12
um                    randconfig-001-20250307    gcc-14.2.0
um                    randconfig-002-20250306    clang-16
um                    randconfig-002-20250307    gcc-14.2.0
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64      buildonly-randconfig-001-20250306    gcc-11
x86_64      buildonly-randconfig-001-20250307    clang-19
x86_64      buildonly-randconfig-002-20250306    clang-19
x86_64      buildonly-randconfig-002-20250307    clang-19
x86_64      buildonly-randconfig-003-20250306    clang-19
x86_64      buildonly-randconfig-003-20250307    clang-19
x86_64      buildonly-randconfig-004-20250306    clang-19
x86_64      buildonly-randconfig-004-20250307    clang-19
x86_64      buildonly-randconfig-005-20250306    clang-19
x86_64      buildonly-randconfig-005-20250307    clang-19
x86_64      buildonly-randconfig-006-20250306    gcc-12
x86_64      buildonly-randconfig-006-20250307    clang-19
x86_64                              defconfig    clang-19
x86_64                                  kexec    clang-19
x86_64                randconfig-001-20250307    clang-19
x86_64                randconfig-002-20250307    clang-19
x86_64                randconfig-003-20250307    clang-19
x86_64                randconfig-004-20250307    clang-19
x86_64                randconfig-005-20250307    clang-19
x86_64                randconfig-006-20250307    clang-19
x86_64                randconfig-007-20250307    clang-19
x86_64                randconfig-008-20250307    clang-19
x86_64                randconfig-071-20250307    clang-19
x86_64                randconfig-072-20250307    clang-19
x86_64                randconfig-073-20250307    clang-19
x86_64                randconfig-074-20250307    clang-19
x86_64                randconfig-075-20250307    clang-19
x86_64                randconfig-076-20250307    clang-19
x86_64                randconfig-077-20250307    clang-19
x86_64                randconfig-078-20250307    clang-19
x86_64                               rhel-9.4    clang-19
xtensa                            allnoconfig    gcc-14.2.0
xtensa                          iss_defconfig    gcc-14.2.0
xtensa                randconfig-001-20250306    gcc-14.2.0
xtensa                randconfig-001-20250307    gcc-14.2.0
xtensa                randconfig-002-20250306    gcc-14.2.0
xtensa                randconfig-002-20250307    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
