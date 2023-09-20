Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E8C177A77F3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Sep 2023 11:52:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9971D8391F;
	Wed, 20 Sep 2023 09:52:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9971D8391F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695203524;
	bh=Z+tMbRnsk0/yyeNtB3CARvOChfDqsoziT9nX7XD87o4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=X2TUKoyU2wAM1U+6X7i1Zm/vm+oVwxkjguyfEVi4klqHP7JUY1V03+hWJQoR/DKIt
	 /xdsz484TmpeoAKM29zJ3xiRI2yc0O6rau6YpkqNgKCEFV7Sk3kCv20Rpzt18NyiHf
	 7z1nge9kmtmS4gZWnpZAd8cCxcvnAw6EqPNaIeqZ6T/BctwyNQe4h8MzY4AjvC+W4h
	 jqX9m/SxTcwCfOHzKOuQQqRe9HdVb57LlhajWRAuWtC0UcOTLfIad+105mR1lmNLMC
	 cKL7kvuVIy734Ns1ZC3hS8l58UphDJUEAkUjCp1/rXaMryNZ0642C0HY1CToHyT9pE
	 6mfc3QBTsVz+Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WqGOsD4Os5L6; Wed, 20 Sep 2023 09:52:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5822083883;
	Wed, 20 Sep 2023 09:52:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5822083883
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 40F7A1BF427
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Sep 2023 09:51:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 27487838DE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Sep 2023 09:51:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 27487838DE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nx9_kl0Y748V for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Sep 2023 09:51:54 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2C1A683883
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Sep 2023 09:51:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2C1A683883
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="411121380"
X-IronPort-AV: E=Sophos;i="6.02,161,1688454000"; d="scan'208";a="411121380"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 02:51:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="746580502"
X-IronPort-AV: E=Sophos;i="6.02,161,1688454000"; d="scan'208";a="746580502"
Received: from lkp-server02.sh.intel.com (HELO 9ef86b2655e5) ([10.239.97.151])
 by orsmga002.jf.intel.com with ESMTP; 20 Sep 2023 02:51:52 -0700
Received: from kbuild by 9ef86b2655e5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qits5-0008c9-2o
 for intel-wired-lan@lists.osuosl.org; Wed, 20 Sep 2023 09:51:49 +0000
Date: Wed, 20 Sep 2023 17:51:15 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202309201711.g4rhTR5H-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695203514; x=1726739514;
 h=date:from:to:subject:message-id;
 bh=WkXUkJWkfaCdK6wyck3pFviOYufm1Us5JOAr6Wzssvw=;
 b=jHPrKhYRWQ21voBKwkHBMM+6p+94bXKRtDiOJVzek9qNC+WisLCeMhMQ
 b9qDdGdJXCmV9YEW38ixEJqolvQWmHPu7wzvFrAaqfd2Bpmj6sMJrCTFw
 tjzKtlLV9+vtJQ9FYQg9IXaN8TtAFfLe25Y9ldNVPy+Fqt/3c2QdtOz5a
 198mQQCOMY7hnL7DDcHsYEBcYZqV9HuFikNbwE5yy+zFF1pbOlB+Yo/i/
 XXscLGLGVq7JZkjMiOBbTMMFLV32Fzk40EYhDOg8St2IFG4d2Ivr8RiA6
 8IGRbfFSSn7o99OvTA0oV0UHOysZN2ukh0YA3AYYUF5hrfWN8f4OgpKBZ
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jHPrKhYR
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 2fcb79a1962e88ff10552384fb8164fde815ccd3
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
branch HEAD: 2fcb79a1962e88ff10552384fb8164fde815ccd3  ice: block default rule setting on LAG interface

elapsed time: 727m

configs tested: 119
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
arc                   randconfig-001-20230920   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                   randconfig-001-20230920   gcc  
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
i386         buildonly-randconfig-001-20230920   gcc  
i386         buildonly-randconfig-002-20230920   gcc  
i386         buildonly-randconfig-003-20230920   gcc  
i386         buildonly-randconfig-004-20230920   gcc  
i386         buildonly-randconfig-005-20230920   gcc  
i386         buildonly-randconfig-006-20230920   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                  randconfig-004-20230920   gcc  
i386                  randconfig-005-20230920   gcc  
i386                  randconfig-006-20230920   gcc  
i386                  randconfig-016-20230920   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20230920   gcc  
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
riscv                 randconfig-001-20230920   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20230920   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                 randconfig-001-20230920   gcc  
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
x86_64       buildonly-randconfig-001-20230920   gcc  
x86_64       buildonly-randconfig-002-20230920   gcc  
x86_64       buildonly-randconfig-003-20230920   gcc  
x86_64       buildonly-randconfig-004-20230920   gcc  
x86_64       buildonly-randconfig-005-20230920   gcc  
x86_64       buildonly-randconfig-006-20230920   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20230920   gcc  
x86_64                randconfig-002-20230920   gcc  
x86_64                randconfig-003-20230920   gcc  
x86_64                randconfig-011-20230920   gcc  
x86_64                randconfig-012-20230920   gcc  
x86_64                randconfig-013-20230920   gcc  
x86_64                randconfig-014-20230920   gcc  
x86_64                randconfig-075-20230920   gcc  
x86_64                randconfig-076-20230920   gcc  
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
