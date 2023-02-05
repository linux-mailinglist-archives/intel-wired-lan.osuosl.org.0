Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id ED33A68ADC5
	for <lists+intel-wired-lan@lfdr.de>; Sun,  5 Feb 2023 02:11:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9FD6260FFB;
	Sun,  5 Feb 2023 01:11:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9FD6260FFB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675559476;
	bh=yAdRciAEzg5bBzg3gs4uHoU7rk7xfRYWUAUdyv+VAxs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ooEKjbcW066Ne9qSe30cAfltyeC3J5DoFhu0uL0GsbDbb9fPCJr8Xw3qUmNy+2G/W
	 Oa3SeNd9nY8jOookTyNMpG3kTMuLI5ua0AA/yLzRr2MBqhZqJ2U/382DKtWQqBuHIV
	 euTydPff4kOTzB1FcNFNaRAfIoFmJ6y/Pixu3Ei7Bb47rsWB5hmShE4dNmWnfom0HD
	 xCBqaH+QYLgNTy2zKVJk5hPDPIa/yPHV29anoybmrnMYeeoaZevtmwvRvR093RyawL
	 0jqgwC1+SQ5DLcG5fjNyGtGszXFP47AIVQL5WfJpjhFSOyuBfjijZk1OleV+j+D5xW
	 FgzrITdQ9IbLg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Pk_zF5FkywCE; Sun,  5 Feb 2023 01:11:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7F7D260FEC;
	Sun,  5 Feb 2023 01:11:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7F7D260FEC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 38FEC1BF33C
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 Feb 2023 01:11:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1003D81951
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 Feb 2023 01:11:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1003D81951
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CuaFzoL1Cdr7 for <intel-wired-lan@lists.osuosl.org>;
 Sun,  5 Feb 2023 01:11:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A7FB7814B6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A7FB7814B6
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 Feb 2023 01:11:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10611"; a="331141827"
X-IronPort-AV: E=Sophos;i="5.97,274,1669104000"; d="scan'208";a="331141827"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2023 17:11:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10611"; a="790081800"
X-IronPort-AV: E=Sophos;i="5.97,274,1669104000"; d="scan'208";a="790081800"
Received: from lkp-server01.sh.intel.com (HELO 4455601a8d94) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 04 Feb 2023 17:11:08 -0800
Received: from kbuild by 4455601a8d94 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pOTYc-0001cs-10;
 Sun, 05 Feb 2023 01:11:02 +0000
Date: Sun, 05 Feb 2023 09:10:10 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63df01f2.B1Yi9DoNUb11Osmr%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675559469; x=1707095469;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=i33aDfPdU7RLLyxoKZjH8MiRSMnnd/YJHMaQWRXfWvs=;
 b=DlThTywjHEtKA4JG0qHv6Mjeh6qLKmqy8YcWfEZKi84wBvtczA9ALjyV
 KEfs1XmBsS5FBtHzXcjoHW6mqUfsjFMdJ7O+ZczUNc+jME6LL6h1aJZCW
 iALrgmY5Ea1BPo10FBthWTRdVQYCs8unYKC1jbrkA6RdnfXLmuPW4T14v
 fmJkZdEo1TtUMtujzfd8u5PJ+/k9ocYReAW2oWhw4tMp5fAnA+a+MJV+V
 C2m/IdjYXgnDxl1cYAvkJPqxeLl4pm1OXk8NjiAt84NcTB/jjyPsersJR
 MzGbwxKxSm4M5QEjKv/0FhH9ImAL+45P3XDSuzrjYHdysziBs4gLKm8Ox
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DlThTywj
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 31c8db2c4fa799f5981451a6ce2b38320069d8ef
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: 31c8db2c4fa799f5981451a6ce2b38320069d8ef  ice: implement devlink reinit action

elapsed time: 1640m

configs tested: 60
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
powerpc                           allnoconfig
um                           x86_64_defconfig
um                             i386_defconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
s390                                defconfig
sh                               allmodconfig
s390                             allyesconfig
ia64                             allmodconfig
mips                             allyesconfig
powerpc                          allmodconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
x86_64                           rhel-8.3-bpf
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
riscv                randconfig-r042-20230204
arc                  randconfig-r043-20230204
s390                 randconfig-r044-20230204
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                                defconfig
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
i386                             allyesconfig
arm                                 defconfig

clang tested configs:
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
hexagon              randconfig-r041-20230204
arm                  randconfig-r046-20230204
hexagon              randconfig-r045-20230204
x86_64                          rhel-8.3-rust
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a014
x86_64                        randconfig-a012
x86_64                        randconfig-a016
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
