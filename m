Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 352CF58A5CA
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Aug 2022 08:05:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1424A40BC6;
	Fri,  5 Aug 2022 06:05:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1424A40BC6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659679522;
	bh=4bmhirBN0pP4AyjBu7kb6ehRJ4sQTDmYXqWDu+avjhM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=cD60TkpVzxjlwKRD95fBo+fnu4mLklkmutv04G1aMrDkNQdWZy4BBu7SBY1KTuxl2
	 LxftgzhIhvkWgdMJNWwfktkFkng3lPByWDwEpprTPe3D4X6YnFplyTC67mU4GWX8qQ
	 f4FwdEiugCPYVKvm2W796cC6veq2JZ5TlZjd4lTGS4e1ea3pLUYivYxj2u41XoQ8Ew
	 nEIs5V8oMxqZr1+EGewXYhah8N+32WO8db8GGcP3BX3ud1WWcwuEtHm6X5yWxyWqN0
	 SyKVdC9pszK1igpXGW/s4+LkHZDHu6q3RQYeRjVq9iKS6oUUBkxNnSOQahzSzw5nze
	 f+1ZFNDCBU8hA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 32P6_4LDW7md; Fri,  5 Aug 2022 06:05:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0938240134;
	Fri,  5 Aug 2022 06:05:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0938240134
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C97D71BF418
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Aug 2022 06:05:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A37B06F932
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Aug 2022 06:05:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A37B06F932
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NDvDRXruMmrA for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Aug 2022 06:05:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AFC146F92A
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AFC146F92A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Aug 2022 06:05:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10429"; a="351842474"
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="351842474"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2022 23:05:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="745754741"
Received: from lkp-server01.sh.intel.com (HELO e0eace57cfef) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 04 Aug 2022 23:05:11 -0700
Received: from kbuild by e0eace57cfef with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oJqSM-000JAJ-2P;
 Fri, 05 Aug 2022 06:05:10 +0000
Date: Fri, 05 Aug 2022 14:04:44 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62ecb2fc.HY0+gN6M4tYEyYp6%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659679513; x=1691215513;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=ybrHON1zpQ26CMy+nllFqyuOxA1Wdg5qY84BKr0aE6E=;
 b=ikVsF1FTaJtpvfNaaRRfUzZ5LHEtjvCz+PBLo4WJbmOO2GYK7Dp5nyPs
 TBrLos35l3XhT63UbJOBL1AiNrX25FbPI9eOLiMgHTxUZ/fQ/JJ5rWSjn
 oil3SiMb2bRwpG9EYBFQOjoouMtsh7HdMr1dVEmiaoCtO/s1WqnZDcN4v
 CWg7RXVA6YW7KZw/tHssikNqotPlrQQI9Q8x2e26V9yqCjKYUyPM56WpH
 gthF3zdzLlCCiKJ71aZblw5TPLbblIB0Eadb/Qcx1JElA6jHE7suuu5+N
 pdUg0SIL6219yJIm/++D+aRX8XgQUgwRIFQUNjZEBXsFuU+OwJdSTfM6l
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ikVsF1FT
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 4ae97cae07e15d41e5c0ebabba64c6eefdeb0bbe
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git master
branch HEAD: 4ae97cae07e15d41e5c0ebabba64c6eefdeb0bbe  nfp: ethtool: fix the display error of `ethtool -m DEVNAME`

elapsed time: 1619m

configs tested: 45
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
i386                                defconfig
i386                             allyesconfig
arc                  randconfig-r043-20220804
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64                           rhel-8.3-kvm
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                    rhel-8.3-kselftests
x86_64                         rhel-8.3-kunit
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
m68k                         amcore_defconfig
sh                             shx3_defconfig
parisc                generic-64bit_defconfig
i386                          randconfig-c001
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
loongarch                           defconfig
loongarch                         allnoconfig

clang tested configs:
s390                 randconfig-r044-20220804
hexagon              randconfig-r045-20220804
riscv                randconfig-r042-20220804
hexagon              randconfig-r041-20220804
x86_64                        randconfig-k001
arm                        mvebu_v5_defconfig
mips                        bcm63xx_defconfig
arm                              alldefconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
