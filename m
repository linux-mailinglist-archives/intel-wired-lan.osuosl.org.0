Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A802F9B731C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 31 Oct 2024 04:40:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B5B21407B7;
	Thu, 31 Oct 2024 03:40:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6sYAK3RsHm-I; Thu, 31 Oct 2024 03:40:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 638F4407B8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730346055;
	bh=ulwhYHDZTs95Z8jsiKiyy7TvRtNI4RJGsT051g/IVgo=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=0Pd5j5z27Ov6DwpSp52JNtQ+NgN6yWuTo+aLOPlEx91pN4bWF67yydXsoLwPXiUBB
	 YhCCzHN/aj7oGormNsnP3KqcSJZV+fpTF3r434O88n6mOKdjG//aREeQduwD2oKtia
	 OF7ch12SSqqOaVXeMtsL9K8zTh3V1hTIFaH71B9E19eOBoTN+rPdOMX3WqhdBb2M8C
	 Noy+5kDNxZOVHNBHSLDU9kq+ReZ8lKK4Z8OiLHFQ77DZaDcFgh3H+hFI81PlDGYG9n
	 HM42HzBZxoSjKCHGyhENH10EOka48g2+66f5kAJ1s7O0TFPQK7dfF3QNkqJ+o58geL
	 Cw7YszQdionbg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 638F4407B8;
	Thu, 31 Oct 2024 03:40:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id C54AA494E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2024 03:40:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B4276407B4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2024 03:40:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Baj6nSSgdv1T for <intel-wired-lan@lists.osuosl.org>;
 Thu, 31 Oct 2024 03:40:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5FE0D407AF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5FE0D407AF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5FE0D407AF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2024 03:40:51 +0000 (UTC)
X-CSE-ConnectionGUID: EYQja5GNQKKpCvKvWADomg==
X-CSE-MsgGUID: pFmwhHduQIGI/SGzpTA4RA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="33764923"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="33764923"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 20:40:51 -0700
X-CSE-ConnectionGUID: nmJ/lvPdTVuKFb+oeXPR+A==
X-CSE-MsgGUID: Z8Fzn2nhSn+GcceWkUC2Xw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,246,1725346800"; d="scan'208";a="87648605"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
 by orviesa004.jf.intel.com with ESMTP; 30 Oct 2024 20:40:49 -0700
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1t6M3D-000fce-1j
 for intel-wired-lan@lists.osuosl.org; Thu, 31 Oct 2024 03:40:47 +0000
Date: Thu, 31 Oct 2024 11:40:46 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202410311142.IJ7MvfoQ-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730346052; x=1761882052;
 h=date:from:to:subject:message-id;
 bh=BDeeuJT9ruwUEPWGGniFX5JGZmrQNAXqstuJuZUzHxM=;
 b=dZwiJVU4POjcU5M7V7TFL6jrN1OWXmiyrX6D/dqaId9rWe72WH7da9xw
 4Rx7X4QFT1iaqBzEubExgRXyNoc/eW/rBT84LLNp4vqh7CVq6dMlOhOUZ
 MYqUIoiwUjR6YBUAfSrS5/TyQJN/yawbppJkqzacDK3lbn9JyaqF9nmFk
 /1Q6+upGq8ZTKOyxPXZ3MrKrUuiw7YQO45u4VGfPO5fU+M1iiRiAVESIf
 /45PfHFMfngtGn1ppRy2Q7jJRzUgJQEdKXTb1AEvFbIx8i7kTjsjBEcU3
 yg51qQUQoYN0Ljh+JxdzlkR9QFmWHlXVK7cKoMrXhWWl8njka4As/b5I2
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dZwiJVU4
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 cb335af5a2d487c8a8a7a2b202af0a7aeb5c11bf
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
branch HEAD: cb335af5a2d487c8a8a7a2b202af0a7aeb5c11bf  idpf: fix idpf_vc_core_init error path

elapsed time: 1675m

configs tested: 100
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-13.3.0
alpha                            allyesconfig    gcc-13.3.0
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-13.2.0
arc                              allyesconfig    gcc-13.2.0
arc                   randconfig-001-20241031    gcc-13.2.0
arc                   randconfig-002-20241031    gcc-13.2.0
arm                              allmodconfig    gcc-14.1.0
arm                               allnoconfig    clang-20
arm                              allyesconfig    gcc-14.1.0
arm                   randconfig-001-20241031    clang-17
arm                   randconfig-002-20241031    clang-20
arm                   randconfig-003-20241031    gcc-14.1.0
arm                   randconfig-004-20241031    gcc-14.1.0
arm64                            allmodconfig    clang-20
arm64                             allnoconfig    gcc-14.1.0
arm64                 randconfig-001-20241031    clang-20
arm64                 randconfig-002-20241031    clang-20
arm64                 randconfig-003-20241031    clang-15
arm64                 randconfig-004-20241031    clang-17
csky                              allnoconfig    gcc-14.1.0
csky                  randconfig-001-20241031    gcc-14.1.0
csky                  randconfig-002-20241031    gcc-14.1.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    clang-20
hexagon                          allyesconfig    clang-20
hexagon               randconfig-001-20241031    clang-14
hexagon               randconfig-002-20241031    clang-20
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20241031    gcc-12
i386        buildonly-randconfig-002-20241031    clang-19
i386        buildonly-randconfig-003-20241031    gcc-12
i386        buildonly-randconfig-004-20241031    gcc-12
i386        buildonly-randconfig-005-20241031    clang-19
i386        buildonly-randconfig-006-20241031    gcc-11
i386                                defconfig    clang-19
i386                  randconfig-001-20241031    gcc-12
i386                  randconfig-002-20241031    clang-19
i386                  randconfig-003-20241031    gcc-11
i386                  randconfig-004-20241031    clang-19
i386                  randconfig-005-20241031    gcc-12
i386                  randconfig-006-20241031    clang-19
i386                  randconfig-011-20241031    clang-19
i386                  randconfig-012-20241031    clang-19
i386                  randconfig-013-20241031    clang-19
loongarch                        allmodconfig    gcc-14.1.0
loongarch                         allnoconfig    gcc-14.1.0
loongarch             randconfig-001-20241031    gcc-14.1.0
loongarch             randconfig-002-20241031    gcc-14.1.0
m68k                             allmodconfig    gcc-14.1.0
m68k                              allnoconfig    gcc-14.1.0
m68k                             allyesconfig    gcc-14.1.0
microblaze                       allmodconfig    gcc-14.1.0
microblaze                        allnoconfig    gcc-14.1.0
microblaze                       allyesconfig    gcc-14.1.0
mips                              allnoconfig    gcc-14.1.0
nios2                             allnoconfig    gcc-14.1.0
nios2                 randconfig-001-20241031    gcc-14.1.0
nios2                 randconfig-002-20241031    gcc-14.1.0
openrisc                          allnoconfig    gcc-14.1.0
parisc                            allnoconfig    gcc-14.1.0
parisc                randconfig-001-20241031    gcc-14.1.0
parisc                randconfig-002-20241031    gcc-14.1.0
powerpc                           allnoconfig    gcc-14.1.0
powerpc               randconfig-001-20241031    gcc-14.1.0
powerpc               randconfig-002-20241031    gcc-14.1.0
powerpc               randconfig-003-20241031    clang-20
powerpc64             randconfig-001-20241031    clang-15
powerpc64             randconfig-002-20241031    gcc-14.1.0
powerpc64             randconfig-003-20241031    clang-20
riscv                             allnoconfig    gcc-14.1.0
riscv                 randconfig-001-20241031    clang-20
riscv                 randconfig-002-20241031    clang-20
s390                             allmodconfig    clang-20
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.1.0
s390                  randconfig-001-20241031    gcc-14.1.0
s390                  randconfig-002-20241031    gcc-14.1.0
sh                               allmodconfig    gcc-14.1.0
sh                                allnoconfig    gcc-14.1.0
sh                               allyesconfig    gcc-14.1.0
sh                    randconfig-001-20241031    gcc-14.1.0
sh                    randconfig-002-20241031    gcc-14.1.0
sparc                            allmodconfig    gcc-14.1.0
sparc64               randconfig-001-20241031    gcc-14.1.0
sparc64               randconfig-002-20241031    gcc-14.1.0
um                               allmodconfig    clang-20
um                                allnoconfig    clang-17
um                               allyesconfig    gcc-12
um                    randconfig-001-20241031    clang-20
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-19
x86_64                               rhel-8.3    gcc-12
xtensa                            allnoconfig    gcc-14.1.0
xtensa                randconfig-001-20241031    gcc-14.1.0
xtensa                randconfig-002-20241031    gcc-14.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
