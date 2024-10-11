Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B661C999EB7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Oct 2024 10:06:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 810C841556;
	Fri, 11 Oct 2024 08:06:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HV1tkFsN6kqQ; Fri, 11 Oct 2024 08:06:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E2C2C4155A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728633972;
	bh=WNDbESH8Ggc7fY1JUjOr3zw4JGz6YQDKcmBYJhKlg3A=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=tt23ojKNTkaG21OMUZkl3k/STVs0GPURDfiUD+d+YEoEpGHdyidGBFyoBFAkU4Xvi
	 BX+c+h7ed7Z5Rdpw6P0A7B8zEikkSX9R0RfYcM01j/yj1fFw4Z2rfAjOYVEsTaCcKv
	 IgdZ0SiqBuSCci2Z0/oaKvbkVlk1529M6fXfnbGinZSYBFMXMs4MjIBv8jc+edXo0C
	 ont3ZH0D/JRgkYTeWP16/1UAhjL1ZXBjuaMSieNe6bWvZMpu6b2kN5je2Fqt6Q0mKY
	 5YbbCvJt+JhqjtQnww11AcXFc4Nf2h1J0G/j+O+J1YqQwDijfbJF5zzrD4nTpv5ocN
	 tOCugLwFySXPA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E2C2C4155A;
	Fri, 11 Oct 2024 08:06:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 782AC1BF3A1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2024 08:06:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 638C641554
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2024 08:06:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OCONX1Rb48It for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Oct 2024 08:06:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0F47741547
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0F47741547
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0F47741547
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2024 08:06:07 +0000 (UTC)
X-CSE-ConnectionGUID: uJIArC4bQDyjQ2sZwVJbkg==
X-CSE-MsgGUID: xGgzojr2ScyZyAv4ZQ7HCA==
X-IronPort-AV: E=McAfee;i="6700,10204,11221"; a="45500385"
X-IronPort-AV: E=Sophos;i="6.11,195,1725346800"; d="scan'208";a="45500385"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 01:06:05 -0700
X-CSE-ConnectionGUID: Pi3pKECsQmKR8Xziefb0xg==
X-CSE-MsgGUID: cc8IzmjiTVumGWXrO2H/vg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,195,1725346800"; d="scan'208";a="77151395"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
 by fmviesa010.fm.intel.com with ESMTP; 11 Oct 2024 01:06:04 -0700
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1szAev-000C2T-3A
 for intel-wired-lan@lists.osuosl.org; Fri, 11 Oct 2024 08:06:01 +0000
Date: Fri, 11 Oct 2024 16:05:11 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202410111659.CIYv2loQ-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728633968; x=1760169968;
 h=date:from:to:subject:message-id;
 bh=GT4PJKZsDTPKzwNJXTjKAd5BR8d3oslwn6cP7rygMzk=;
 b=PKZMP5h0sDXMsVR/CVDaQA+NlaI99pIk7td/Fp+5RYQi2VppH3aNii8S
 lCnZp49lsDw1NZr2+9a6zA1ifqOfNLKTwNeT7JcIsVLrlD4v7ox7lBMUC
 p2equdiZWsfaqP1/K0sbBXPkzB335oU6NGxZJBVYks47uOj9/48YORpLL
 2N7elXc9P1mYFebtrUJmzHN+g/cy6FVBxBbOGsdZtFgtXEJYoIzr5xWoa
 VZQcA7Kuv/eFz1AqUnfqWx2OGvUeYCbDr88Wx7BKlblntq8EzNBi+74yH
 LoRgSbIHQgMaM8Wje8ePzaPFczjYOdXODTi/U7VsM1mYeY9oJ0jGSdbPa
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PKZMP5h0
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 ffc8fa91bef547ed419fb093e5e1703567552d2a
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
branch HEAD: ffc8fa91bef547ed419fb093e5e1703567552d2a  Merge branch 'rtnetlink-handle-error-of-rtnl_register_module'

elapsed time: 1030m

configs tested: 100
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
arm                              allmodconfig    clang-20
arm                               allnoconfig    gcc-14.1.0
arm                              allyesconfig    clang-20
arm                                 defconfig    gcc-14.1.0
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
i386                                defconfig    clang-18
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
x86_64      buildonly-randconfig-001-20241011    gcc-12
x86_64      buildonly-randconfig-002-20241011    gcc-12
x86_64      buildonly-randconfig-003-20241011    gcc-12
x86_64      buildonly-randconfig-004-20241011    gcc-12
x86_64      buildonly-randconfig-005-20241011    gcc-12
x86_64      buildonly-randconfig-006-20241011    gcc-12
x86_64                              defconfig    clang-18
x86_64                                  kexec    gcc-12
x86_64                randconfig-001-20241011    gcc-12
x86_64                randconfig-002-20241011    gcc-12
x86_64                randconfig-003-20241011    gcc-12
x86_64                randconfig-004-20241011    gcc-12
x86_64                randconfig-005-20241011    gcc-12
x86_64                randconfig-006-20241011    gcc-12
x86_64                randconfig-011-20241011    gcc-12
x86_64                randconfig-012-20241011    gcc-12
x86_64                randconfig-013-20241011    gcc-12
x86_64                randconfig-014-20241011    gcc-12
x86_64                randconfig-015-20241011    gcc-12
x86_64                randconfig-016-20241011    gcc-12
x86_64                randconfig-071-20241011    gcc-12
x86_64                randconfig-072-20241011    gcc-12
x86_64                randconfig-073-20241011    gcc-12
x86_64                randconfig-074-20241011    gcc-12
x86_64                randconfig-075-20241011    gcc-12
x86_64                randconfig-076-20241011    gcc-12
x86_64                               rhel-8.3    gcc-12
x86_64                          rhel-8.3-rust    clang-18
xtensa                            allnoconfig    gcc-14.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
