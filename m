Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BFD78B9076
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 May 2024 22:15:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A603F81F68;
	Wed,  1 May 2024 20:15:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k35A-nAhlZwu; Wed,  1 May 2024 20:15:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7A39A81F6A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714594556;
	bh=EkbrIAK9Yg03NdXlSxTcXG19o6anmL5x/1bldEAAd90=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Ot8fRI3ADoi0WxYClV6P1csFlNnJJhDs31MupYt2Be+COhvFZ0kOogbEhMrf2sAbo
	 OowjktvornP86git/oycHCbE44D+MH46foCg+L34jJycMF4LDUuA/SFL1z8m6UwBsy
	 kSSL5hVV+aqzuVdcO4AyqHiqhBF/zU7VfiYCvk3eQBVmL+H6wI5TBqfQoFBXlDKdK+
	 tWUhUIekfwIVbj1BFmJQa0c9siP0P3nLUYy0opXk0xY94W74HZ8nIjk5qwRtl9DKA5
	 T10jHOdA3lewTVjVIZeebsNmEanPSdFtzZBWymsW0ERJwPk2+TxHOKn0hl6PNYSgl9
	 PgyDXQbbk08Ow==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7A39A81F6A;
	Wed,  1 May 2024 20:15:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 248EE1BF3D6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 May 2024 20:15:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0F19F4031F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 May 2024 20:15:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G4QZQdOushtB for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 May 2024 20:15:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CDCF140132
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CDCF140132
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CDCF140132
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 May 2024 20:15:53 +0000 (UTC)
X-CSE-ConnectionGUID: s0v11Pj/S8eW9RUtSDtyyA==
X-CSE-MsgGUID: TWY8Tp/wQkefLZKuY7pjLQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11061"; a="10504785"
X-IronPort-AV: E=Sophos;i="6.07,246,1708416000"; d="scan'208";a="10504785"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2024 13:15:46 -0700
X-CSE-ConnectionGUID: LL1fHLPQQoOUZ3PDvYiUFA==
X-CSE-MsgGUID: dunyswi9TC2dYS4yZJNFlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,246,1708416000"; d="scan'208";a="64343663"
Received: from lkp-server01.sh.intel.com (HELO e434dd42e5a1) ([10.239.97.150])
 by orviesa001.jf.intel.com with ESMTP; 01 May 2024 13:15:45 -0700
Received: from kbuild by e434dd42e5a1 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1s2GMg-0009xI-1o
 for intel-wired-lan@lists.osuosl.org; Wed, 01 May 2024 20:15:42 +0000
Date: Thu, 02 May 2024 04:15:29 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202405020426.s0wScVhv-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714594554; x=1746130554;
 h=date:from:to:subject:message-id;
 bh=XAlYdhp6E9Ije6L0BpLjuWO9iuB9v8LPUlZ/JHZ2yEc=;
 b=anzhpf0jJawk+Y2+IdxzyntiT+AvJaJ61oQOSFhbGZ1iaCPtISqE5GVx
 MCuAsCr9UGoyNQXHxVYzn4us5RqZr2uLoLmQH8Odh0hc/SETRynS3505E
 jdACclj5F+PuchOnEu5Yspg/EB5FXMFNExh8U8DBojY8iM0J5+xturILE
 n/tm1Yq0yCTjYca5iXv7u1xKLgvEVmh1oRQ+88XiSDR8JMJUl2x9Ms57k
 NiowzSbU6zS4st9TRdAvsdwMdnVGmUjQdoBao8c4z3Tmf/dIxWPFQdTKU
 0OK68hLkY/HzFUz+dp0UnFXkPh3wFedSgLLWU6nzCCZFSyQXQ/fWUYTPM
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=anzhpf0j
Subject: [Intel-wired-lan] [tnguy-net-queue:100GbE] BUILD SUCCESS
 6c047665d598f469ea51411f9f4b24291cec6d96
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 100GbE
branch HEAD: 6c047665d598f469ea51411f9f4b24291cec6d96  ice: Do not get coalesce settings while in reset

elapsed time: 1487m

configs tested: 131
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                               allnoconfig   gcc  
arc                          axs103_defconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20240501   gcc  
arc                   randconfig-002-20240501   gcc  
arm                               allnoconfig   clang
arm                                 defconfig   clang
arm                   randconfig-001-20240501   gcc  
arm                   randconfig-002-20240501   gcc  
arm                   randconfig-004-20240501   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   clang
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240501   gcc  
arm64                 randconfig-002-20240501   gcc  
csky                              allnoconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240501   gcc  
csky                  randconfig-002-20240501   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-002-20240501   gcc  
i386         buildonly-randconfig-004-20240501   gcc  
i386         buildonly-randconfig-005-20240501   gcc  
i386                  randconfig-001-20240501   gcc  
i386                  randconfig-003-20240501   gcc  
i386                  randconfig-004-20240501   gcc  
i386                  randconfig-011-20240501   gcc  
i386                  randconfig-012-20240501   gcc  
i386                  randconfig-013-20240501   gcc  
i386                  randconfig-014-20240501   gcc  
i386                  randconfig-015-20240501   gcc  
i386                  randconfig-016-20240501   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240501   gcc  
loongarch             randconfig-002-20240501   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                           sun3_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                          ath79_defconfig   gcc  
mips                     cu1830-neo_defconfig   gcc  
mips                  maltasmvp_eva_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240501   gcc  
nios2                 randconfig-002-20240501   gcc  
openrisc                          allnoconfig   gcc  
openrisc                            defconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240501   gcc  
parisc                randconfig-002-20240501   gcc  
parisc64                            defconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                  iss476-smp_defconfig   gcc  
powerpc                    klondike_defconfig   gcc  
powerpc                    mvme5100_defconfig   gcc  
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240501   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                ecovec24-romimage_defconfig   gcc  
sh                          landisk_defconfig   gcc  
sh                    randconfig-001-20240501   gcc  
sh                    randconfig-002-20240501   gcc  
sh                   sh7724_generic_defconfig   gcc  
sh                        sh7785lcr_defconfig   gcc  
sh                            titan_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240501   gcc  
sparc64               randconfig-002-20240501   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                    randconfig-001-20240501   gcc  
um                           x86_64_defconfig   clang
x86_64       buildonly-randconfig-002-20240501   clang
x86_64       buildonly-randconfig-005-20240501   clang
x86_64                              defconfig   gcc  
x86_64                randconfig-004-20240501   clang
x86_64                randconfig-005-20240501   clang
x86_64                randconfig-012-20240501   clang
x86_64                randconfig-014-20240501   clang
x86_64                randconfig-015-20240501   clang
x86_64                randconfig-016-20240501   clang
x86_64                randconfig-071-20240501   clang
x86_64                randconfig-072-20240501   clang
x86_64                randconfig-073-20240501   clang
x86_64                randconfig-076-20240501   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                randconfig-001-20240501   gcc  
xtensa                randconfig-002-20240501   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
