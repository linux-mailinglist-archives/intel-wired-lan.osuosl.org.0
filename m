Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84B827B6D42
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Oct 2023 17:35:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 85A3541494;
	Tue,  3 Oct 2023 15:35:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 85A3541494
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696347350;
	bh=ihRya5IpJtGzWPQxaY0qZYfMbMSUM2iVSIEAgujnTD4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=mX2Lt3J1iLKLajNPlvfhmH6WzyDg1RAMS1C0OnysF0vFJbiT/g1ssdykAO05Pvxzg
	 WZmLxnnx7RTVNo7y/bMT0S5b7561tGYxmjLu632mvAIdKYOKeYztSZEdRM/aFnVR+U
	 t8CU5yIDyHiCAmONwKIMhk8AMQs9F4okuWlbECGa6NCZ+U7amXbJaIHD7aEcdbmwA6
	 41bk7kfkSBt5jo8GEpYkT+XaPmmqBAjxRHpsk9LEQ2wvvUct/dxeqBU2XgAvYM05dp
	 q0vngPYEv6DWKSuiaAa5/l2asKN9fIKMyG2dDIGbF9z7hLDUum20nbRnSzf7/OjZq+
	 yb/T2zJYD3Nwg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wbet0me7QFKs; Tue,  3 Oct 2023 15:35:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4C24F4052A;
	Tue,  3 Oct 2023 15:35:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4C24F4052A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 74BCF1BF3D2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 15:35:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 53B0B418FF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 15:35:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 53B0B418FF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mz9tkSXavMaX for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Oct 2023 15:35:42 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 10B9941824
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 15:35:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 10B9941824
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="413813813"
X-IronPort-AV: E=Sophos;i="6.03,197,1694761200"; d="scan'208";a="413813813"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 08:35:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="780340374"
X-IronPort-AV: E=Sophos;i="6.03,197,1694761200"; d="scan'208";a="780340374"
Received: from lkp-server02.sh.intel.com (HELO c3b01524d57c) ([10.239.97.151])
 by orsmga008.jf.intel.com with ESMTP; 03 Oct 2023 08:35:38 -0700
Received: from kbuild by c3b01524d57c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qnhQu-0007EQ-0I
 for intel-wired-lan@lists.osuosl.org; Tue, 03 Oct 2023 15:35:36 +0000
Date: Tue, 03 Oct 2023 23:35:32 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202310032329.dBLq6UQH-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696347342; x=1727883342;
 h=date:from:to:subject:message-id;
 bh=unboU8bRi3P1y96pyTiQaKZhA0zM5WkzFP1qiJujS4s=;
 b=hTEGbc5z4d11Wnl1Bv36Qo5nnee+duLJjFazBr4QAV6Hj1nz/EuwIsDG
 gVfRyfrfW7zk2FfoRbjuZF76nl59NG1W/gODLJwuZy47K9F+HwJjUzVxz
 CKozOiDLUrjjLSJQLrCdp8a5aegwt4ddOeTJvBafGYswE3Q8uO+t4gJjP
 ZsgFSvmA0ENiOSXmHAUZ3wdpyMplB1xDzE86IWLQ2D71oxO4YAOFIlR+A
 Y6PUi8ek9FYCfk7oycu6at920Wf2XOKtDMprRaOToEH01ZWzG5WCM102V
 YJulEKbgreNHB3M8dCaFcfIkR5gkLTxCEyRBfeCzWL19rITg8aTAnvaMD
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hTEGbc5z
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 b6aed813cbe277cd41af1c898e7b8f9b762a75c0
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: b6aed813cbe277cd41af1c898e7b8f9b762a75c0  ice: manage VFs MSI-X using resource tracking

elapsed time: 1141m

configs tested: 107
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20231003   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                   randconfig-001-20231003   gcc  
arm64                            allmodconfig   gcc  
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20231003   gcc  
i386         buildonly-randconfig-002-20231003   gcc  
i386         buildonly-randconfig-003-20231003   gcc  
i386         buildonly-randconfig-004-20231003   gcc  
i386         buildonly-randconfig-005-20231003   gcc  
i386         buildonly-randconfig-006-20231003   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20231003   gcc  
i386                  randconfig-002-20231003   gcc  
i386                  randconfig-003-20231003   gcc  
i386                  randconfig-004-20231003   gcc  
i386                  randconfig-005-20231003   gcc  
i386                  randconfig-006-20231003   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20231003   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20231003   gcc  
x86_64                randconfig-002-20231003   gcc  
x86_64                randconfig-003-20231003   gcc  
x86_64                randconfig-004-20231003   gcc  
x86_64                randconfig-005-20231003   gcc  
x86_64                randconfig-006-20231003   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
