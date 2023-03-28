Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C086D6CB9A2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Mar 2023 10:43:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 61C2F820ED;
	Tue, 28 Mar 2023 08:43:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 61C2F820ED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679992987;
	bh=AeRHQOZmsgPTMb7yPyXt6ufnYe1tufAPRmoEK2o8M5A=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=zIgrJIkws/T1xO9r10NRHn4he6Q6wwAw7r2Swdrhvq2skJLtcDi/p18y1yku04SdU
	 3EkT7W4WfeOyT4YdXgalMehmAreTeO4zL8jvGusCgHLflRpZwJuGqpjEEYhOapXQQz
	 okFkMj17tcMnvXES2xDC6OXszd3YQ093HFWq5Jj9eBpjyIRpQpf6+e2LGEaLfjNmBo
	 ofsAcDN47TE9KonedOE3CJcgnt/fIWGTxlIPjbvtQG06M8lZQEkOiYaTwG08BrNaDV
	 tgSwWkjobAC4Tec+TH3nPNJWWZRvmVSqruHEp1nilVJQaVXqBb3AOxRA2a29ZYu9dc
	 fwNZuZsftwGCw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KLBc_BiMEptJ; Tue, 28 Mar 2023 08:43:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9B2568209B;
	Tue, 28 Mar 2023 08:43:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9B2568209B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F03011BF2F1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Mar 2023 08:43:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C81CE41181
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Mar 2023 08:43:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C81CE41181
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rlIF6Ou2pi3x for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Mar 2023 08:42:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C377840CA4
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C377840CA4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Mar 2023 08:42:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="339233561"
X-IronPort-AV: E=Sophos;i="5.98,296,1673942400"; d="scan'208";a="339233561"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2023 01:42:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="677283652"
X-IronPort-AV: E=Sophos;i="5.98,296,1673942400"; d="scan'208";a="677283652"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 28 Mar 2023 01:42:57 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ph4uu-000IOx-1q;
 Tue, 28 Mar 2023 08:42:56 +0000
Date: Tue, 28 Mar 2023 16:42:12 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6422a864.y+Roqa/EvhTJRwZ6%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679992979; x=1711528979;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=JVjqHPsGDB1BF4RMvRnC10VSg2IOrMUZIkfTK1olusY=;
 b=RndXiCc3VJiXwbSFg9dTFzXCHF4rkD9f0SOOr2Uf8qlVHyzfS4R39j4P
 rPatFh6+gFdn8l9aT1IeWr2Id2/5LBPF8QvWMxMs5gOtqfQmqZwRuFVeM
 JkPrjCwWIDwMZv8TchgbyMEEFKhpTapbROWdN9UFg5mymcgaDv6y1VOzH
 xudbmkhK9VFZSGmn3PVAToDSA6hPfKu3WqFhLp59ofUT4jCe3wqVMnlKO
 LEoNSGt+lJKEI3Xhht6ZwfedQyUfGoCd1oAzMVme0SzgpIPcd0BKYFWKM
 yjovIMiC1WnrrtMtAnj+DZRhG/JPDTVrjn6PPEpEeMZPqsSuoQlCjT8TL
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RndXiCc3
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 400b463fcb8cf483a57201d41c8f807fed0361db
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 400b463fcb8cf483a57201d41c8f807fed0361db  ice: add dynamic interrupt allocation

elapsed time: 922m

configs tested: 124
configs skipped: 12

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r001-20230326   gcc  
arc                  randconfig-r011-20230327   gcc  
arc                  randconfig-r024-20230326   gcc  
arc                  randconfig-r043-20230326   gcc  
arc                  randconfig-r043-20230327   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r002-20230327   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r002-20230326   gcc  
arm                  randconfig-r046-20230326   clang
arm                  randconfig-r046-20230327   gcc  
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r002-20230326   clang
arm64                               defconfig   gcc  
arm64                randconfig-r016-20230326   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r001-20230327   gcc  
csky                 randconfig-r003-20230327   gcc  
hexagon              randconfig-r011-20230326   clang
hexagon              randconfig-r021-20230326   clang
hexagon              randconfig-r041-20230326   clang
hexagon              randconfig-r041-20230327   clang
hexagon              randconfig-r045-20230326   clang
hexagon              randconfig-r045-20230327   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r006-20230327   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230327   gcc  
i386                 randconfig-a002-20230327   gcc  
i386                 randconfig-a003-20230327   gcc  
i386                 randconfig-a004-20230327   gcc  
i386                 randconfig-a005-20230327   gcc  
i386                 randconfig-a006-20230327   gcc  
i386                 randconfig-a011-20230327   clang
i386                 randconfig-a012-20230327   clang
i386                 randconfig-a013-20230327   clang
i386                 randconfig-a014-20230327   clang
i386                 randconfig-a015-20230327   clang
i386                 randconfig-a016-20230327   clang
i386                 randconfig-r024-20230327   clang
i386                 randconfig-r026-20230327   clang
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r005-20230327   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r012-20230326   gcc  
loongarch            randconfig-r023-20230326   gcc  
loongarch            randconfig-r036-20230328   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r003-20230327   gcc  
m68k         buildonly-randconfig-r004-20230326   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r013-20230327   gcc  
microblaze   buildonly-randconfig-r004-20230327   gcc  
microblaze   buildonly-randconfig-r005-20230326   gcc  
microblaze           randconfig-r022-20230326   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r002-20230327   clang
mips                 randconfig-r004-20230327   clang
nios2                               defconfig   gcc  
nios2                randconfig-r006-20230326   gcc  
nios2                randconfig-r021-20230327   gcc  
nios2                randconfig-r022-20230327   gcc  
nios2                randconfig-r025-20230326   gcc  
openrisc             randconfig-r015-20230326   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r005-20230326   gcc  
parisc               randconfig-r033-20230328   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r031-20230328   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r001-20230326   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230326   gcc  
riscv                randconfig-r042-20230327   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r044-20230326   gcc  
s390                 randconfig-r044-20230327   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r015-20230327   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r003-20230326   gcc  
sparc                randconfig-r012-20230327   gcc  
sparc64              randconfig-r004-20230326   gcc  
sparc64              randconfig-r005-20230327   gcc  
sparc64              randconfig-r014-20230327   gcc  
sparc64              randconfig-r023-20230327   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230327   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230327   gcc  
x86_64               randconfig-a002-20230327   gcc  
x86_64               randconfig-a003-20230327   gcc  
x86_64               randconfig-a004-20230327   gcc  
x86_64               randconfig-a005-20230327   gcc  
x86_64               randconfig-a006-20230327   gcc  
x86_64               randconfig-a011-20230327   clang
x86_64               randconfig-a012-20230327   clang
x86_64               randconfig-a013-20230327   clang
x86_64               randconfig-a014-20230327   clang
x86_64               randconfig-a015-20230327   clang
x86_64               randconfig-a016-20230327   clang
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r006-20230326   gcc  
xtensa               randconfig-r025-20230327   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
