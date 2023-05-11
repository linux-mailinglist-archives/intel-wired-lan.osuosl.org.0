Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3FD86FEC30
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 May 2023 09:02:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3C51E408DA;
	Thu, 11 May 2023 07:02:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3C51E408DA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683788533;
	bh=eJrJ20XdrzGmHgfcgf0YiqykD8pEj24GayskbjVISWE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=zDKFc1c7Kie+TNo4ouR3i0PdsnPZ4pk8uds/h9TLwL+2+d76fEU9KLLhOg7dddo/0
	 VLnRdOFthIcIw4LhrQH+71tWQMaURh/rGGJL6qQ+RinxtFzkH0fgZJZ9ucIynEKyPI
	 2hC+rxeWB75616PZZF7Wf9s9EB9ShEmhdulSvFJypnRdj/slLfVfpavba0I9cdiZDQ
	 56FzXkv76xKmVp6NeXMMlmiFKzXRezewkb+nx/u66DaHfuWUNa/AJ2RPCuVsmIq4Bx
	 xNe0Qitz5DcE0WinFUPRr82/HI8PojjSPPy8UMp5E4cCmyQp2orlBOJi9WXoQPlMep
	 +h82RgcKbwcwQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uOrjUHcXDh8n; Thu, 11 May 2023 07:02:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BB8404018F;
	Thu, 11 May 2023 07:02:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BB8404018F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 612DA1BF350
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 May 2023 07:02:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3AE744018F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 May 2023 07:02:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3AE744018F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wW6Fp86UNnuY for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 May 2023 07:02:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CBC09400D8
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CBC09400D8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 May 2023 07:01:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="352622062"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="352622062"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 00:01:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="693684824"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="693684824"
Received: from lkp-server01.sh.intel.com (HELO dea6d5a4f140) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 11 May 2023 00:01:58 -0700
Received: from kbuild by dea6d5a4f140 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1px0JJ-0003qC-1H
 for intel-wired-lan@lists.osuosl.org; Thu, 11 May 2023 07:01:57 +0000
Date: Thu, 11 May 2023 15:01:39 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <20230511070139.Q234J%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683788519; x=1715324519;
 h=date:from:to:subject:message-id;
 bh=Dryi7HvxVEDiSiujoPliUPv/BNEwIifmvMbNno3inOA=;
 b=OOieta0ABUyi2wXTgYC4zY7tV1FOcBRboul2IJNOUqA/KgQAqsZWfhT5
 +jRxrN86ZcHYFXziq8HdQnxBn2lXtrDovA5iPnb5tDD74htXg4idPExM5
 QeF0dWPQTkY51+1LWw0elv5h5zGVxh56BtegqrI7lx1VtMpkJ3u1Ml9xA
 e610aH+i+mTwX0JloqGEYux8e2cSTMAU7TrXiKZEGaZKEKfrxyiIViUJX
 poXI9k6yWkOOlqkJcAp1UMhMUDNtwf6wxHoQ2WSpAXkHW1M4JiOOyMF6o
 qHgPUmjna9po7MoDhkf5VWN/h8MDOZFSdH9enzyZ/3DhEAMJsjzM8tBW5
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OOieta0A
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 73b8935b1758dba8714179e2d85ef61ec184735a
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 73b8935b1758dba8714179e2d85ef61ec184735a  iavf: Fix out-of-bounds when setting channels on remove

elapsed time: 725m

configs tested: 115
configs skipped: 7

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r011-20230509   gcc  
arc                  randconfig-r043-20230509   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r046-20230509   gcc  
arm                             rpc_defconfig   gcc  
arm                         s3c6400_defconfig   gcc  
arm                         wpcm450_defconfig   gcc  
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r006-20230509   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r035-20230509   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r001-20230509   gcc  
csky                 randconfig-r014-20230509   gcc  
csky                 randconfig-r025-20230509   gcc  
hexagon              randconfig-r023-20230509   clang
hexagon              randconfig-r041-20230509   clang
hexagon              randconfig-r045-20230509   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                          randconfig-a001   gcc  
i386                          randconfig-a002   clang
i386                          randconfig-a003   gcc  
i386                          randconfig-a004   clang
i386                          randconfig-a005   gcc  
i386                          randconfig-a006   clang
i386                          randconfig-a011   clang
i386                          randconfig-a012   gcc  
i386                          randconfig-a013   clang
i386                          randconfig-a014   gcc  
i386                          randconfig-a015   clang
i386                          randconfig-a016   gcc  
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                        generic_defconfig   gcc  
ia64                 randconfig-r012-20230509   gcc  
ia64                 randconfig-r015-20230509   gcc  
ia64                 randconfig-r026-20230509   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r005-20230509   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                       m5275evb_defconfig   gcc  
m68k                 randconfig-r031-20230509   gcc  
microblaze           randconfig-r005-20230509   gcc  
microblaze           randconfig-r022-20230509   gcc  
microblaze           randconfig-r034-20230509   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                      maltasmvp_defconfig   gcc  
mips                    maltaup_xpa_defconfig   gcc  
nios2                            alldefconfig   gcc  
nios2        buildonly-randconfig-r001-20230509   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r036-20230509   gcc  
openrisc                         alldefconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                     mpc83xx_defconfig   gcc  
powerpc              randconfig-r004-20230509   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230509   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r002-20230509   gcc  
s390                 randconfig-r044-20230509   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r032-20230509   gcc  
sh                          sdk7786_defconfig   gcc  
sh                           se7724_defconfig   gcc  
sh                           se7750_defconfig   gcc  
sh                           se7780_defconfig   gcc  
sh                            titan_defconfig   gcc  
sparc        buildonly-randconfig-r004-20230509   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r003-20230509   gcc  
sparc64      buildonly-randconfig-r003-20230509   gcc  
sparc64              randconfig-r006-20230509   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                        randconfig-a001   clang
x86_64                        randconfig-a002   gcc  
x86_64                        randconfig-a003   clang
x86_64                        randconfig-a004   gcc  
x86_64                        randconfig-a005   clang
x86_64                        randconfig-a006   gcc  
x86_64                        randconfig-a011   gcc  
x86_64                        randconfig-a012   clang
x86_64                        randconfig-a013   gcc  
x86_64                        randconfig-a014   clang
x86_64                        randconfig-a015   gcc  
x86_64                        randconfig-a016   clang
x86_64                        randconfig-k001   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r024-20230509   gcc  
xtensa               randconfig-r033-20230509   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
