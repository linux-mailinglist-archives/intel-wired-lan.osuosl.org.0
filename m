Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 41C0E7ACE61
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Sep 2023 04:40:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CEBD860F68;
	Mon, 25 Sep 2023 02:40:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CEBD860F68
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695609632;
	bh=paSQH3/mpIRxl1UNWZHDzP7/Iy442a1i7ZDFdcKNNEs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=HqENdtyYPTard3rgP9zpIrJpwPdm45dGfa3unq9+L5D+HnvsXZdACejx5qwYti9/7
	 2sO40aKNrFyPDickSJNmo0GAIti25wrG3mzTaGekaN2Ey8vmwGQkEYZdBfztIEEyhE
	 uBKEDtthkp/i/pYvOj0SyZxac4O/8UBQjCkOy7dGeEbe68EmDn1EYJShYNYVyfyFiU
	 XFdow6+TUKB7SH8ySqyH+diQxgJ6igVjT/WEjZ9R9X0IkQoHDY0RZin7o/Q56bd2Gr
	 pbIqO908aA17yuM22D6VcLc+DEqKSpt5BtRYVnYtmBppkWaIdFbj/Hhx8AcM2vC9eQ
	 s1fmB3cGGvXcA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6T5nnCw4hRxV; Mon, 25 Sep 2023 02:40:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A439260F54;
	Mon, 25 Sep 2023 02:40:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A439260F54
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E228C1BF330
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Sep 2023 02:40:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BADEE403F9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Sep 2023 02:40:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BADEE403F9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1CR_7eTYcTl4 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Sep 2023 02:40:25 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CB624400B9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Sep 2023 02:40:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CB624400B9
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="361406142"
X-IronPort-AV: E=Sophos;i="6.03,174,1694761200"; d="scan'208";a="361406142"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2023 19:40:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="871900469"
X-IronPort-AV: E=Sophos;i="6.03,174,1694761200"; d="scan'208";a="871900469"
Received: from lkp-server02.sh.intel.com (HELO 32c80313467c) ([10.239.97.151])
 by orsmga004.jf.intel.com with ESMTP; 24 Sep 2023 19:40:24 -0700
Received: from kbuild by 32c80313467c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qkbWH-0000xV-27
 for intel-wired-lan@lists.osuosl.org; Mon, 25 Sep 2023 02:40:21 +0000
Date: Mon, 25 Sep 2023 10:39:38 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202309251036.uJY0BmxH-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695609625; x=1727145625;
 h=date:from:to:subject:message-id;
 bh=/N+lnnfF3X76EBOR7QDPwKOF0zAAGCdO48MJBcSnhRY=;
 b=aKX7Ao3WH9aLKUKGE51X+KzMYVGoM5l9fNpoih/Z68slbmxDpmPAXN+8
 KQwe2LqwuGjMZ0UOp2vNny9PLpThAJrv7nsPnPgnimd/37HklovFLzZuw
 1XQApVR+7TaX3ynkCTFeMBsmUJgn6xfSWwZjfdECb0j1tpGzIOKHpTGS3
 459cBE8/baidusMT9cG5VErw06oGx8FwDG+QonT7uio/S0uq3g4Qzrrsf
 Qos07VbDedF3ic5PRvH4WCKTjLt7MdfVXblhAWj2Wy/a8TM98rFnSzGT/
 mEUzPKT+heoMRgHdP3Oozfzk39PK3R5tbb3j7pOYN8Fsu08TsaaAlfUuG
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aKX7Ao3W
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 ec59a054a84f04c6e8efe97b36f29a3057ffd780
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
branch HEAD: ec59a054a84f04c6e8efe97b36f29a3057ffd780  ice: always add legacy 32byte RXDID in supported_rxdids

elapsed time: 3297m

configs tested: 133
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
arc                   randconfig-001-20230923   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                   randconfig-001-20230923   gcc  
arm64                            allmodconfig   gcc  
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
i386                              allnoconfig   gcc  
i386         buildonly-randconfig-001-20230923   gcc  
i386         buildonly-randconfig-002-20230923   gcc  
i386         buildonly-randconfig-003-20230923   gcc  
i386         buildonly-randconfig-004-20230923   gcc  
i386         buildonly-randconfig-005-20230923   gcc  
i386         buildonly-randconfig-006-20230923   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20230923   gcc  
i386                  randconfig-002-20230923   gcc  
i386                  randconfig-003-20230923   gcc  
i386                  randconfig-004-20230923   gcc  
i386                  randconfig-005-20230923   gcc  
i386                  randconfig-006-20230923   gcc  
i386                  randconfig-011-20230923   gcc  
i386                  randconfig-012-20230923   gcc  
i386                  randconfig-013-20230923   gcc  
i386                  randconfig-014-20230923   gcc  
i386                  randconfig-015-20230923   gcc  
i386                  randconfig-016-20230923   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20230923   gcc  
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
riscv                 randconfig-001-20230923   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20230923   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                 randconfig-001-20230923   gcc  
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
x86_64       buildonly-randconfig-001-20230923   gcc  
x86_64       buildonly-randconfig-002-20230923   gcc  
x86_64       buildonly-randconfig-003-20230923   gcc  
x86_64       buildonly-randconfig-004-20230923   gcc  
x86_64       buildonly-randconfig-005-20230923   gcc  
x86_64       buildonly-randconfig-006-20230923   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20230923   gcc  
x86_64                randconfig-002-20230923   gcc  
x86_64                randconfig-003-20230923   gcc  
x86_64                randconfig-004-20230923   gcc  
x86_64                randconfig-005-20230923   gcc  
x86_64                randconfig-006-20230923   gcc  
x86_64                randconfig-011-20230924   gcc  
x86_64                randconfig-012-20230924   gcc  
x86_64                randconfig-013-20230924   gcc  
x86_64                randconfig-014-20230924   gcc  
x86_64                randconfig-015-20230924   gcc  
x86_64                randconfig-016-20230924   gcc  
x86_64                randconfig-071-20230923   gcc  
x86_64                randconfig-072-20230923   gcc  
x86_64                randconfig-073-20230923   gcc  
x86_64                randconfig-074-20230923   gcc  
x86_64                randconfig-075-20230923   gcc  
x86_64                randconfig-076-20230923   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
