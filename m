Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E198A62B413
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Nov 2022 08:38:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9138C4177C;
	Wed, 16 Nov 2022 07:38:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9138C4177C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668584284;
	bh=3kjMFgCg0CpCZr7rzIA5LC5RX4mCE9G+E+vOrYABgGM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=SxpnhXF/sRGGZUU7BoUnfhxWUP2U1xzKguLUve6aYAEfqB+HWtGwtdGDt0kTu0u4h
	 f7FIn/2SJfz8HttHfJKLi4lTQWi1R5QhhgiugH0WOthklGZXa1nQBYvoIsdPCyzQm/
	 sr3rvrpTcP7WBLTzUC/HgghNT0Pk41cFd0+notdMcjy6BqG1Y1kSdvWh1lR85ElOdD
	 PsXmj0/E9c4jOFR7gXBfxjoeaUmu/01LLYfYJrUm8aVXDEYRD5yjkHWC/qX2hFuw+T
	 iLkEMNRHYcJZcZcN0raliT0Xm1BAyky/Civpeyd0fr1BitXzyIkEXULuQnsvKdshBd
	 LVUpWzKMEpMbg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B4RdAuRWmyly; Wed, 16 Nov 2022 07:38:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 81DEA41773;
	Wed, 16 Nov 2022 07:38:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 81DEA41773
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BFA6E1BF2AA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Nov 2022 07:37:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9886F41773
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Nov 2022 07:37:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9886F41773
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wI6JCpFkKkzC for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Nov 2022 07:37:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5783E4175B
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5783E4175B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Nov 2022 07:37:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10532"; a="314290003"
X-IronPort-AV: E=Sophos;i="5.96,167,1665471600"; d="scan'208";a="314290003"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2022 23:37:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10532"; a="641535303"
X-IronPort-AV: E=Sophos;i="5.96,167,1665471600"; d="scan'208";a="641535303"
Received: from lkp-server01.sh.intel.com (HELO ebd99836cbe0) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 15 Nov 2022 23:37:54 -0800
Received: from kbuild by ebd99836cbe0 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ovCzZ-00027q-2j;
 Wed, 16 Nov 2022 07:37:53 +0000
Date: Wed, 16 Nov 2022 15:37:31 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6374933b.GmWeuoVMUbI5O/JI%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668584276; x=1700120276;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=A6BNqOWj1pgcHedM2FifUF25g0zfY/w4Z0E3KLigF7A=;
 b=NcBa4KRB/AahWtJ/Rcs22elFDAQ+kjG/aiGHShbiZirF/iHS3YUaXyHq
 rkystihXIFrf2athZEKnPccctUfCDJ4LrhYh4feZ5dpkdVzzrCBuOlTjT
 Cyk9myScdStNMtxEx5RWJI9RM96JRjf3QBJJIXFOGOcEQV7BTxIWaRf6K
 fm7AO9VDuFdsBNSQj6Bca9dBheoyJPTk2WEiSWzlR7z/A0ZI+rBbTR14i
 59l3c+FMBm4WIsqVayQGM4siC5zdJAIA19HElJA5sUuePiO+US7kOcez7
 7zB7g0CZs40s0nbzNLMrVsPVdLFTohuSBxJ1OlPkTRbbexoAW/ej85pNZ
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NcBa4KRB
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 cc85b4c0276b45692c94e324eec4d3578db5c704
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: cc85b4c0276b45692c94e324eec4d3578db5c704  ice: Correctly handle aux device when num channels change

elapsed time: 721m

configs tested: 52
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
um                             i386_defconfig
um                           x86_64_defconfig
alpha                               defconfig
s390                                defconfig
s390                             allmodconfig
s390                             allyesconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
arc                  randconfig-r043-20221115
sh                               allmodconfig
riscv                randconfig-r042-20221115
x86_64                          rhel-8.3-func
s390                 randconfig-r044-20221115
x86_64                    rhel-8.3-kselftests
ia64                             allmodconfig
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                              defconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                        randconfig-a015
i386                                defconfig
x86_64                        randconfig-a002
x86_64                        randconfig-a004
x86_64                               rhel-8.3
x86_64                        randconfig-a006
x86_64                           allyesconfig
i386                             allyesconfig
arm                                 defconfig
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arm                              allyesconfig
arm64                            allyesconfig
m68k                             allmodconfig
alpha                            allyesconfig
arc                              allyesconfig
m68k                             allyesconfig

clang tested configs:
hexagon              randconfig-r041-20221115
hexagon              randconfig-r045-20221115
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
