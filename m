Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C00A9867C0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Sep 2024 22:45:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4A56984A09;
	Wed, 25 Sep 2024 20:45:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kn37YcQ_1VJ6; Wed, 25 Sep 2024 20:45:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B617B84A11
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727297143;
	bh=EO+wJlPcIHIJ3ga/UVRgTH9L8IrKep8yFrFCLMRP1kc=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=WoaVO5iumUuonyKGIewCWZtyfQmhdOB5H7Aw3596Jy5p4ySiJqYESCoCBsyNzHxJ8
	 yCWNhtGuIPOvgwGTTW3Y4gqqHwoDM9zaLHwqLUwrKBAJu0cdGmceP7rGfThvBDr3DC
	 FotMjbDlGK9x9MwDq1hn6eN3hnB3gu/x93yEiy8Waar+lAiXh32WMYYBoNPpL38glM
	 o4y0MWFluOtYImFZoMNrEyGtFwEwJa7qdQgNWrP1lMEeEDY+lf7e0u4pxVthq7dLQ5
	 LaL14RxgLJhjJ9TOgXq+SbgnCyIC1++e85FrG+Gk0PX7muBKZP2KJxWxBQkCm7/T8X
	 ich/QDBwNFnNA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B617B84A11;
	Wed, 25 Sep 2024 20:45:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6EF401BF340
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Sep 2024 20:45:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 68657403BF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Sep 2024 20:45:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tU3SagwG0k8z for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Sep 2024 20:45:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A9302402F4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A9302402F4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A9302402F4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Sep 2024 20:45:39 +0000 (UTC)
X-CSE-ConnectionGUID: 293oAaPIRv6lCDEpxdPvqg==
X-CSE-MsgGUID: AZgzHJsuSUWwcbomESuakA==
X-IronPort-AV: E=McAfee;i="6700,10204,11206"; a="37044154"
X-IronPort-AV: E=Sophos;i="6.10,258,1719903600"; d="scan'208";a="37044154"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2024 13:45:39 -0700
X-CSE-ConnectionGUID: LzhZbUnATY2DSWBUV1lfUQ==
X-CSE-MsgGUID: ViS9695OTieXFgWWusEIcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,258,1719903600"; d="scan'208";a="71993625"
Received: from lkp-server01.sh.intel.com (HELO 53e96f405c61) ([10.239.97.150])
 by orviesa009.jf.intel.com with ESMTP; 25 Sep 2024 13:45:37 -0700
Received: from kbuild by 53e96f405c61 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1stYtD-000Jwx-1w
 for intel-wired-lan@lists.osuosl.org; Wed, 25 Sep 2024 20:45:35 +0000
Date: Thu, 26 Sep 2024 04:44:43 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202409260437.nEIRWhNe-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727297140; x=1758833140;
 h=date:from:to:subject:message-id;
 bh=ZUsEGqEJNQq0jfdr9h8D4TkGdZs1ORjvBHFPwAyHO/I=;
 b=ipd/JRpex9r4eM+1KvBEQZmJZ2bHuIT+RegejqnggtzpcjiMYeEh+KU3
 TYYy/4rUR0JkEmKzZPpadKKruaiQI63D+jO3QiLQdf0AoIqgI8KhsESM0
 bcQIpUn+uoKmF1h3r4QXE5gNV22H/gTWNHepKzVsC6THuD8UuroRk/EOf
 V9oTOIHqNSbldi2kXA+IOq1EcEt9sKBmBQfzMRJo/dz/c7/HuZWOkjHK3
 w9LE6joE7K3jwPR1HqIrAFKZjBFpMDLqccX/JXhyhF2ydNY0r7H6ZkJHZ
 yH62NRo+9AB0ooNqMdK96/fH8DdK3U3z2KIxHE1bWQVWxznVkX56YLeJC
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ipd/JRpe
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 f9f8790a0508e8bafd364de310cfb88ef87a49d3
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: f9f8790a0508e8bafd364de310cfb88ef87a49d3  igb: Disable threaded IRQ for igb_msix_other

elapsed time: 1250m

configs tested: 230
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.1.0
alpha                            allyesconfig    clang-20
alpha                            allyesconfig    gcc-13.3.0
alpha                               defconfig    gcc-14.1.0
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-14.1.0
arc                              allyesconfig    gcc-13.2.0
arc                                 defconfig    gcc-14.1.0
arc                   randconfig-001-20240925    gcc-13.2.0
arc                   randconfig-001-20240925    gcc-14.1.0
arc                   randconfig-002-20240925    gcc-13.2.0
arc                   randconfig-002-20240925    gcc-14.1.0
arc                    vdk_hs38_smp_defconfig    clang-20
arm                              allmodconfig    gcc-13.2.0
arm                              allmodconfig    gcc-14.1.0
arm                               allnoconfig    gcc-14.1.0
arm                              allyesconfig    gcc-13.2.0
arm                              allyesconfig    gcc-14.1.0
arm                        clps711x_defconfig    gcc-14.1.0
arm                                 defconfig    gcc-14.1.0
arm                      jornada720_defconfig    clang-20
arm                        neponset_defconfig    gcc-14.1.0
arm                   randconfig-001-20240925    gcc-14.1.0
arm                   randconfig-002-20240925    clang-20
arm                   randconfig-002-20240925    gcc-14.1.0
arm                   randconfig-003-20240925    clang-20
arm                   randconfig-003-20240925    gcc-14.1.0
arm                   randconfig-004-20240925    gcc-14.1.0
arm                         s3c6400_defconfig    clang-20
arm                         socfpga_defconfig    gcc-14.1.0
arm                           tegra_defconfig    clang-20
arm                        vexpress_defconfig    clang-20
arm64                            allmodconfig    clang-20
arm64                             allnoconfig    gcc-14.1.0
arm64                               defconfig    gcc-14.1.0
arm64                 randconfig-001-20240925    gcc-14.1.0
arm64                 randconfig-002-20240925    gcc-14.1.0
arm64                 randconfig-003-20240925    clang-20
arm64                 randconfig-003-20240925    gcc-14.1.0
arm64                 randconfig-004-20240925    gcc-14.1.0
csky                              allnoconfig    gcc-14.1.0
csky                                defconfig    gcc-14.1.0
csky                  randconfig-001-20240925    gcc-14.1.0
csky                  randconfig-002-20240925    gcc-14.1.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    gcc-14.1.0
hexagon                          allyesconfig    clang-20
hexagon                             defconfig    gcc-14.1.0
hexagon               randconfig-001-20240925    clang-20
hexagon               randconfig-001-20240925    gcc-14.1.0
hexagon               randconfig-002-20240925    clang-20
hexagon               randconfig-002-20240925    gcc-14.1.0
i386                             allmodconfig    clang-18
i386                             allmodconfig    gcc-12
i386                              allnoconfig    clang-18
i386                              allnoconfig    gcc-12
i386                             allyesconfig    clang-18
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20240925    clang-18
i386        buildonly-randconfig-002-20240925    clang-18
i386        buildonly-randconfig-003-20240925    clang-18
i386        buildonly-randconfig-004-20240925    clang-18
i386        buildonly-randconfig-004-20240925    gcc-12
i386        buildonly-randconfig-005-20240925    clang-18
i386        buildonly-randconfig-006-20240925    clang-18
i386                                defconfig    clang-18
i386                  randconfig-001-20240925    clang-18
i386                  randconfig-001-20240925    gcc-12
i386                  randconfig-002-20240925    clang-18
i386                  randconfig-003-20240925    clang-18
i386                  randconfig-003-20240925    gcc-12
i386                  randconfig-004-20240925    clang-18
i386                  randconfig-005-20240925    clang-18
i386                  randconfig-006-20240925    clang-18
i386                  randconfig-006-20240925    gcc-12
i386                  randconfig-011-20240925    clang-18
i386                  randconfig-011-20240925    gcc-12
i386                  randconfig-012-20240925    clang-18
i386                  randconfig-012-20240925    gcc-12
i386                  randconfig-013-20240925    clang-18
i386                  randconfig-014-20240925    clang-18
i386                  randconfig-015-20240925    clang-18
i386                  randconfig-016-20240925    clang-18
i386                  randconfig-016-20240925    gcc-12
loongarch                        allmodconfig    gcc-14.1.0
loongarch                         allnoconfig    gcc-14.1.0
loongarch                           defconfig    gcc-14.1.0
loongarch             randconfig-001-20240925    gcc-14.1.0
loongarch             randconfig-002-20240925    gcc-14.1.0
m68k                             allmodconfig    gcc-14.1.0
m68k                              allnoconfig    gcc-14.1.0
m68k                             allyesconfig    gcc-14.1.0
m68k                                defconfig    gcc-14.1.0
m68k                       m5208evb_defconfig    clang-20
m68k                        m5407c3_defconfig    clang-20
microblaze                       allmodconfig    gcc-14.1.0
microblaze                        allnoconfig    gcc-14.1.0
microblaze                       allyesconfig    gcc-14.1.0
microblaze                          defconfig    gcc-14.1.0
mips                              allnoconfig    gcc-14.1.0
mips                        bcm47xx_defconfig    clang-20
mips                        bcm63xx_defconfig    gcc-14.1.0
mips                         cobalt_defconfig    gcc-14.1.0
mips                           ip28_defconfig    clang-20
mips                      malta_kvm_defconfig    gcc-14.1.0
mips                        omega2p_defconfig    clang-20
mips                          rb532_defconfig    gcc-14.1.0
mips                           rs90_defconfig    clang-20
nios2                             allnoconfig    gcc-14.1.0
nios2                               defconfig    gcc-14.1.0
nios2                 randconfig-001-20240925    gcc-14.1.0
nios2                 randconfig-002-20240925    gcc-14.1.0
openrisc                          allnoconfig    clang-20
openrisc                          allnoconfig    gcc-14.1.0
openrisc                         allyesconfig    gcc-14.1.0
openrisc                            defconfig    gcc-12
parisc                           allmodconfig    gcc-14.1.0
parisc                            allnoconfig    clang-20
parisc                            allnoconfig    gcc-14.1.0
parisc                           allyesconfig    gcc-14.1.0
parisc                              defconfig    gcc-12
parisc                randconfig-001-20240925    gcc-14.1.0
parisc                randconfig-002-20240925    gcc-14.1.0
parisc64                            defconfig    gcc-14.1.0
powerpc                          allmodconfig    gcc-14.1.0
powerpc                           allnoconfig    clang-20
powerpc                           allnoconfig    gcc-14.1.0
powerpc                          allyesconfig    clang-20
powerpc                          allyesconfig    gcc-14.1.0
powerpc                     asp8347_defconfig    clang-20
powerpc                       eiger_defconfig    gcc-14.1.0
powerpc                   microwatt_defconfig    clang-20
powerpc                     rainier_defconfig    clang-20
powerpc                     rainier_defconfig    gcc-14.1.0
powerpc               randconfig-001-20240925    gcc-14.1.0
powerpc               randconfig-002-20240925    clang-20
powerpc               randconfig-002-20240925    gcc-14.1.0
powerpc                     skiroot_defconfig    clang-20
powerpc                        warp_defconfig    gcc-14.1.0
powerpc64             randconfig-001-20240925    gcc-14.1.0
powerpc64             randconfig-002-20240925    clang-20
powerpc64             randconfig-002-20240925    gcc-14.1.0
powerpc64             randconfig-003-20240925    gcc-14.1.0
riscv                            allmodconfig    clang-20
riscv                            allmodconfig    gcc-14.1.0
riscv                             allnoconfig    clang-20
riscv                             allnoconfig    gcc-14.1.0
riscv                            allyesconfig    clang-20
riscv                            allyesconfig    gcc-14.1.0
riscv                               defconfig    gcc-12
riscv                    nommu_k210_defconfig    gcc-14.1.0
riscv                 randconfig-001-20240925    clang-20
riscv                 randconfig-001-20240925    gcc-14.1.0
riscv                 randconfig-002-20240925    clang-20
riscv                 randconfig-002-20240925    gcc-14.1.0
s390                             allmodconfig    clang-20
s390                             allmodconfig    gcc-14.1.0
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.1.0
s390                                defconfig    gcc-12
s390                  randconfig-001-20240925    clang-20
s390                  randconfig-001-20240925    gcc-14.1.0
s390                  randconfig-002-20240925    gcc-14.1.0
sh                               allmodconfig    gcc-14.1.0
sh                                allnoconfig    gcc-14.1.0
sh                               allyesconfig    gcc-14.1.0
sh                                  defconfig    gcc-12
sh                ecovec24-romimage_defconfig    clang-20
sh                             espt_defconfig    gcc-14.1.0
sh                               j2_defconfig    gcc-14.1.0
sh                 kfr2r09-romimage_defconfig    gcc-14.1.0
sh                    randconfig-001-20240925    gcc-14.1.0
sh                    randconfig-002-20240925    gcc-14.1.0
sparc                            alldefconfig    clang-20
sparc                            allmodconfig    gcc-14.1.0
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20240925    gcc-14.1.0
sparc64               randconfig-002-20240925    gcc-14.1.0
um                               allmodconfig    clang-20
um                                allnoconfig    clang-17
um                                allnoconfig    clang-20
um                               allyesconfig    clang-20
um                               allyesconfig    gcc-12
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20240925    clang-20
um                    randconfig-001-20240925    gcc-14.1.0
um                    randconfig-002-20240925    clang-20
um                    randconfig-002-20240925    gcc-14.1.0
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-18
x86_64                           allyesconfig    clang-18
x86_64      buildonly-randconfig-001-20240925    clang-18
x86_64      buildonly-randconfig-002-20240925    clang-18
x86_64      buildonly-randconfig-003-20240925    clang-18
x86_64      buildonly-randconfig-004-20240925    clang-18
x86_64      buildonly-randconfig-005-20240925    clang-18
x86_64      buildonly-randconfig-006-20240925    clang-18
x86_64                              defconfig    clang-18
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-18
x86_64                                  kexec    gcc-12
x86_64                randconfig-001-20240925    clang-18
x86_64                randconfig-002-20240925    clang-18
x86_64                randconfig-003-20240925    clang-18
x86_64                randconfig-004-20240925    clang-18
x86_64                randconfig-005-20240925    clang-18
x86_64                randconfig-006-20240925    clang-18
x86_64                randconfig-011-20240925    clang-18
x86_64                randconfig-012-20240925    clang-18
x86_64                randconfig-013-20240925    clang-18
x86_64                randconfig-014-20240925    clang-18
x86_64                randconfig-015-20240925    clang-18
x86_64                randconfig-016-20240925    clang-18
x86_64                randconfig-071-20240925    clang-18
x86_64                randconfig-072-20240925    clang-18
x86_64                randconfig-073-20240925    clang-18
x86_64                randconfig-074-20240925    clang-18
x86_64                randconfig-075-20240925    clang-18
x86_64                randconfig-076-20240925    clang-18
x86_64                               rhel-8.3    gcc-12
x86_64                           rhel-8.3-bpf    clang-18
x86_64                         rhel-8.3-kunit    clang-18
x86_64                           rhel-8.3-ltp    clang-18
x86_64                          rhel-8.3-rust    clang-18
xtensa                           alldefconfig    gcc-14.1.0
xtensa                            allnoconfig    gcc-14.1.0
xtensa                  audio_kc705_defconfig    gcc-14.1.0
xtensa                randconfig-001-20240925    gcc-14.1.0
xtensa                randconfig-002-20240925    gcc-14.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
