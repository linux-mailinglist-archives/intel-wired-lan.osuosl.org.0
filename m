Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 589CD83F59E
	for <lists+intel-wired-lan@lfdr.de>; Sun, 28 Jan 2024 14:35:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6628282861;
	Sun, 28 Jan 2024 13:35:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6628282861
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706448938;
	bh=m/IbM9TQ+2mgouLfu73cnKJdNBlIkoPleyOBY0qFhUc=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=xncI6jcGd9W74VSYUktBnlkS8vLHUxGYIH7m/wfilGSRmf7US87wQ8fynF53mtzFX
	 W3FuCzOn/U1mzY50VTudHiYz4pVBye/AxeqGqK07HQCQdci5jfx01w1nt283Okj0Nl
	 /i+vDJVu7BR5TCFfkUyUV++AgdLCJBDJs8VE5BeIDjE++sBfMIYwS7GqW1Cy43WZrh
	 Pm67j+fX/UOFa5lZ7hjVOw8kN3HFJFaVRjqbplUeuI32evmxMdma6LdFOyaa8HE/ei
	 q5rgWQiOmShfVmezoU9IsdB+7ZEMd4LrUNNZjl99+VxMIq9gN4bmWHIRxl6XMlzISi
	 42bamAoCZel0g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X96jPkgSVoTh; Sun, 28 Jan 2024 13:35:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 38A9B82786;
	Sun, 28 Jan 2024 13:35:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 38A9B82786
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F03DD1BF2C7
 for <intel-wired-lan@lists.osuosl.org>; Sun, 28 Jan 2024 13:35:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D3F6882786
 for <intel-wired-lan@lists.osuosl.org>; Sun, 28 Jan 2024 13:35:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D3F6882786
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SKdaaUNTqv6e for <intel-wired-lan@lists.osuosl.org>;
 Sun, 28 Jan 2024 13:35:30 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9217F82784
 for <intel-wired-lan@lists.osuosl.org>; Sun, 28 Jan 2024 13:35:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9217F82784
X-IronPort-AV: E=McAfee;i="6600,9927,10966"; a="9887250"
X-IronPort-AV: E=Sophos;i="6.05,220,1701158400"; 
   d="scan'208";a="9887250"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2024 05:35:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,220,1701158400"; 
   d="scan'208";a="3163407"
Received: from lkp-server01.sh.intel.com (HELO 370188f8dc87) ([10.239.97.150])
 by fmviesa004.fm.intel.com with ESMTP; 28 Jan 2024 05:35:28 -0800
Received: from kbuild by 370188f8dc87 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rU5Jl-0003QG-37
 for intel-wired-lan@lists.osuosl.org; Sun, 28 Jan 2024 13:35:25 +0000
Date: Sun, 28 Jan 2024 21:34:55 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202401282153.coGzBSMX-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706448930; x=1737984930;
 h=date:from:to:subject:message-id;
 bh=o2REXKxGYmjq+HSfKoqpzC1vX9kK3fEToR8ysRGcseI=;
 b=GLsotgHKBPf0NwQoO64jaDzy0T+PMZBz0cPYkBLXxNOG6JYGNzeUgum6
 Gl5Y31cVPe18bOzBx+1D6E9lO/irdIlrUtDX8zoUbJn7wnPwORw9Hn+iv
 B783a7N+cwf0NlWbkuqZIulGIhGyCYv/c+rHhIhUOBKTirm0Q7azmzHxB
 Zk4T+MB5R9LgJbPl60uDUZhz1EBlr8ZPeKu2e1sSC6T2pimAc6q7jmenG
 OAii1jP5+WGP4TCn2FoK+7SJNpFG7KndrdzHJpkDf0UGJuFCoh7jNe6Oi
 egjVSKTeBgQnWlqFVZuEz4jsyWfRQvAHGj6hajhMWoqm8p3UFYhceYrLH
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GLsotgHK
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 2053d68c5a931dac5b2b3dafa4efe982d6d88412
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
branch HEAD: 2053d68c5a931dac5b2b3dafa4efe982d6d88412  idpf: avoid compiler padding in virtchnl2_ptype struct

elapsed time: 2615m

configs tested: 103
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
arc                              allmodconfig   gcc  
arc                              allyesconfig   gcc  
arc                            hsdk_defconfig   gcc  
arc                   randconfig-001-20240128   gcc  
arc                   randconfig-002-20240128   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                           imxrt_defconfig   gcc  
arm                            mmp2_defconfig   clang
arm                          moxart_defconfig   clang
arm                            qcom_defconfig   gcc  
arm                   randconfig-001-20240128   clang
arm                   randconfig-002-20240128   clang
arm                   randconfig-003-20240128   clang
arm                   randconfig-004-20240128   clang
arm                         wpcm450_defconfig   gcc  
arm64                            allmodconfig   clang
arm64                 randconfig-001-20240128   clang
arm64                 randconfig-002-20240128   clang
arm64                 randconfig-003-20240128   clang
arm64                 randconfig-004-20240128   clang
csky                  randconfig-001-20240128   gcc  
csky                  randconfig-002-20240128   gcc  
hexagon                          allmodconfig   clang
hexagon                          allyesconfig   clang
hexagon               randconfig-001-20240128   clang
hexagon               randconfig-002-20240128   clang
i386                             allmodconfig   clang
i386                              allnoconfig   clang
i386         buildonly-randconfig-001-20240127   gcc  
i386         buildonly-randconfig-002-20240127   gcc  
i386         buildonly-randconfig-003-20240127   gcc  
i386         buildonly-randconfig-004-20240127   gcc  
i386         buildonly-randconfig-005-20240127   gcc  
i386         buildonly-randconfig-006-20240127   gcc  
i386                  randconfig-001-20240127   gcc  
i386                  randconfig-002-20240127   gcc  
i386                  randconfig-003-20240127   gcc  
i386                  randconfig-004-20240127   gcc  
i386                  randconfig-005-20240127   gcc  
i386                  randconfig-006-20240127   gcc  
i386                  randconfig-011-20240127   clang
i386                  randconfig-012-20240127   clang
i386                  randconfig-013-20240127   clang
i386                  randconfig-014-20240127   clang
i386                  randconfig-015-20240127   clang
i386                  randconfig-016-20240127   clang
loongarch                        allmodconfig   gcc  
loongarch             randconfig-001-20240128   gcc  
loongarch             randconfig-002-20240128   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                       allyesconfig   gcc  
mips                             allyesconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                 randconfig-001-20240128   gcc  
nios2                 randconfig-002-20240128   gcc  
openrisc                          allnoconfig   gcc  
openrisc                            defconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240128   gcc  
parisc                randconfig-002-20240128   gcc  
parisc64                            defconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc               randconfig-001-20240128   clang
powerpc               randconfig-002-20240128   clang
powerpc               randconfig-003-20240128   clang
powerpc64             randconfig-001-20240128   clang
powerpc64             randconfig-002-20240128   clang
powerpc64             randconfig-003-20240128   clang
riscv                             allnoconfig   clang
riscv                               defconfig   gcc  
riscv                 randconfig-001-20240128   clang
riscv                 randconfig-002-20240128   clang
s390                              allnoconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20240128   gcc  
s390                  randconfig-002-20240128   gcc  
sh                                allnoconfig   gcc  
sh                                  defconfig   gcc  
sh                    randconfig-001-20240128   gcc  
sh                    randconfig-002-20240128   gcc  
sparc                             allnoconfig   gcc  
sparc                               defconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240128   gcc  
sparc64               randconfig-002-20240128   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                    randconfig-001-20240128   clang
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   clang
x86_64                              defconfig   gcc  
x86_64                          rhel-8.3-rust   clang
xtensa                            allnoconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
