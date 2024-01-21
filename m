Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ECE88354C9
	for <lists+intel-wired-lan@lfdr.de>; Sun, 21 Jan 2024 08:12:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B3F05404A1;
	Sun, 21 Jan 2024 07:12:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B3F05404A1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1705821137;
	bh=yyK1hSA2Y2pUNCaEpBoZvthUQzj0GK1NlyHaBO07xHE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Ms3MRG5dlzpBgJbfexGDamgd7MpYRZoKGFZfpbHyiDuAdcfoOsH7JBlOOrGnQDyc4
	 RYXVCQ+fH8ESIOQNob9v0Fyveiqj3OOnOA7gbtfhSFYC7rzViUhrhUxOh/Tnq3dRdI
	 HeceWV0oFhje70Lg5kI8gc6hNa5uO58xNEaxEZk83v0KmjfPS+L/yVUKGadeYR54q5
	 djaFTGubPcTQpJ4ZdHxU2qLsU7dIh2Zd/SmUrPmK69FYmPk+j1a/FRylabI30+/j+A
	 u0gZD7eZby3N5I5X/dTJYJnf25bI7+PUap1gUpT6Qx1r/lws5fuFbW3ogg2AN2dpNB
	 wKAZhFo0KpDDg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dRolshFMHdqT; Sun, 21 Jan 2024 07:12:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5762840280;
	Sun, 21 Jan 2024 07:12:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5762840280
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 45F181BF476
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Jan 2024 07:12:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1E05283BE4
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Jan 2024 07:12:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1E05283BE4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id afdwmYj1o9Lh for <intel-wired-lan@lists.osuosl.org>;
 Sun, 21 Jan 2024 07:12:07 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 175D883A86
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Jan 2024 07:12:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 175D883A86
X-IronPort-AV: E=McAfee;i="6600,9927,10959"; a="465268576"
X-IronPort-AV: E=Sophos;i="6.05,209,1701158400"; d="scan'208";a="465268576"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2024 23:12:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10959"; a="1116579494"
X-IronPort-AV: E=Sophos;i="6.05,209,1701158400"; d="scan'208";a="1116579494"
Received: from lkp-server01.sh.intel.com (HELO 961aaaa5b03c) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 20 Jan 2024 23:12:03 -0800
Received: from kbuild by 961aaaa5b03c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rRRzt-0005kC-2M
 for intel-wired-lan@lists.osuosl.org; Sun, 21 Jan 2024 07:12:01 +0000
Date: Sun, 21 Jan 2024 15:11:32 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202401211530.SOgaXpx0-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705821127; x=1737357127;
 h=date:from:to:subject:message-id;
 bh=mt0IUVeN5IzqPqYwTyCpKO6ufC0ngcoibl9PB+R0uho=;
 b=ls1e3xdAUj9VpmUXPAB5DrTj/tG4mfvoIK4LOIqfpEmilChENQHjw7Cg
 gkrKiNchl9XIHL+rwuz3vu5YjN4Gx4MKorxP1FAT2P0x1N2z2G8PRRg4p
 Nto8KlpRzhdbQtJATVFYvx2Lt2XhrkTBqpm3tP72lEQ9RaLTs+UFGEalM
 tFDE87NiB0rwKJCNK77X9+ryKizMxaW0nv6e/Xg2j4fEjJMnUHUXNKdCr
 RR5kKeHkrskYkPyfoaq6136RK3aKk/FOe7hT9Qm12lapi13Dv2B/014FQ
 f4yp8lIIHgHciR/xHHyfgm9oVkSsuWV7PT1lSAmYMDphVE4GNTblEgTyK
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ls1e3xdA
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 5db323adbcf17274a6e72abd7010af891379e1d8
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 5db323adbcf17274a6e72abd7010af891379e1d8  idpf: avoid compiler padding in virtchnl2_ptype struct

elapsed time: 1947m

configs tested: 96
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                               defconfig   gcc  
arc                               allnoconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20240121   gcc  
arc                   randconfig-002-20240121   gcc  
arm                               allnoconfig   gcc  
arm                                 defconfig   clang
arm                   randconfig-001-20240121   gcc  
arm                   randconfig-002-20240121   gcc  
arm                   randconfig-003-20240121   gcc  
arm                   randconfig-004-20240121   gcc  
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240121   gcc  
arm64                 randconfig-002-20240121   gcc  
arm64                 randconfig-003-20240121   gcc  
arm64                 randconfig-004-20240121   gcc  
csky                              allnoconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240121   gcc  
csky                  randconfig-002-20240121   gcc  
hexagon                           allnoconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240121   clang
hexagon               randconfig-002-20240121   clang
i386                             allmodconfig   clang
i386                              allnoconfig   clang
i386         buildonly-randconfig-001-20240120   clang
i386         buildonly-randconfig-002-20240120   clang
i386         buildonly-randconfig-003-20240120   clang
i386         buildonly-randconfig-004-20240120   clang
i386         buildonly-randconfig-005-20240120   clang
i386         buildonly-randconfig-006-20240120   clang
i386                  randconfig-001-20240120   clang
i386                  randconfig-002-20240120   clang
i386                  randconfig-003-20240120   clang
i386                  randconfig-004-20240120   clang
i386                  randconfig-005-20240120   clang
i386                  randconfig-006-20240120   clang
i386                  randconfig-011-20240120   gcc  
i386                  randconfig-012-20240120   gcc  
i386                  randconfig-013-20240120   gcc  
i386                  randconfig-014-20240120   gcc  
i386                  randconfig-015-20240120   gcc  
i386                  randconfig-016-20240120   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch             randconfig-001-20240121   gcc  
loongarch             randconfig-002-20240121   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                       allyesconfig   gcc  
mips                             allyesconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                 randconfig-001-20240121   gcc  
nios2                 randconfig-002-20240121   gcc  
parisc                randconfig-001-20240121   gcc  
parisc                randconfig-002-20240121   gcc  
powerpc               randconfig-001-20240121   gcc  
powerpc               randconfig-002-20240121   gcc  
powerpc               randconfig-003-20240121   gcc  
powerpc64             randconfig-001-20240121   gcc  
powerpc64             randconfig-002-20240121   gcc  
powerpc64             randconfig-003-20240121   gcc  
riscv                 randconfig-001-20240121   gcc  
riscv                 randconfig-002-20240121   gcc  
s390                  randconfig-001-20240121   clang
s390                  randconfig-002-20240121   clang
sh                    randconfig-001-20240121   gcc  
sh                    randconfig-002-20240121   gcc  
sparc64               randconfig-001-20240121   gcc  
sparc64               randconfig-002-20240121   gcc  
um                    randconfig-001-20240121   gcc  
um                    randconfig-002-20240121   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240121   gcc  
x86_64       buildonly-randconfig-002-20240121   gcc  
x86_64       buildonly-randconfig-003-20240121   gcc  
x86_64       buildonly-randconfig-004-20240121   gcc  
x86_64       buildonly-randconfig-005-20240121   gcc  
x86_64       buildonly-randconfig-006-20240121   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20240121   clang
x86_64                randconfig-002-20240121   clang
x86_64                randconfig-003-20240121   clang
x86_64                randconfig-004-20240121   clang
x86_64                randconfig-005-20240121   clang
x86_64                randconfig-006-20240121   clang
x86_64                randconfig-011-20240121   gcc  
x86_64                          rhel-8.3-rust   clang
xtensa                randconfig-001-20240121   gcc  
xtensa                randconfig-002-20240121   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
