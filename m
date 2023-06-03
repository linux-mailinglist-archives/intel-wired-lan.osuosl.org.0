Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BE5C720DF9
	for <lists+intel-wired-lan@lfdr.de>; Sat,  3 Jun 2023 07:43:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B6F034012E;
	Sat,  3 Jun 2023 05:43:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B6F034012E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685771016;
	bh=qSgIVE/EXeUNXLEaAmHAONXjr3f7NCpj3ROzE40jx+c=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=3PJ+GgzfpnVt/WnWc9ezpWLNY04tSYuBEOAvCNSyoDYrIJ4QubFSgMHA7KBXLrwBu
	 JPXg4wZo981DkB/e1djXNReniFCFYTcmLIxH1plSoaSXGqes5kuF1g3wyTFQUkPnl8
	 tv81DsrgDacCIqqJVcM75jS6o3ebYWt0WcRr3B+1asd2vtsHJ2FLJTviidYrnjr8hG
	 NtJ+jyPTZ501MP63EzFKFbIQ5Cx8ICrjAyZ7CG5DifWGPclU6Wn3N2BdfiIkf+A/8q
	 s34eM3ex+AiHs2D+nfpp9WiMt8TNTk3ZD8HOkETHeV78ik6uRDeAifzhdwRMuoPK/A
	 6JBjxXOHkfbAg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uBgW3gjnOoGa; Sat,  3 Jun 2023 05:43:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 42E7B4012B;
	Sat,  3 Jun 2023 05:43:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 42E7B4012B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E9EE61BF417
 for <intel-wired-lan@lists.osuosl.org>; Sat,  3 Jun 2023 05:43:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6D98B801ED
 for <intel-wired-lan@lists.osuosl.org>; Sat,  3 Jun 2023 05:43:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6D98B801ED
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XLZWHlc2XjgZ for <intel-wired-lan@lists.osuosl.org>;
 Sat,  3 Jun 2023 05:43:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0A9F384518
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0A9F384518
 for <intel-wired-lan@lists.osuosl.org>; Sat,  3 Jun 2023 05:43:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="419575443"
X-IronPort-AV: E=Sophos;i="6.00,215,1681196400"; d="scan'208";a="419575443"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 22:43:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="737772955"
X-IronPort-AV: E=Sophos;i="6.00,215,1681196400"; d="scan'208";a="737772955"
Received: from lkp-server01.sh.intel.com (HELO 15ab08e44a81) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 02 Jun 2023 22:43:20 -0700
Received: from kbuild by 15ab08e44a81 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1q5K2q-0001LG-0Y
 for intel-wired-lan@lists.osuosl.org; Sat, 03 Jun 2023 05:43:20 +0000
Date: Sat, 03 Jun 2023 13:42:51 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <20230603054251.toqCh%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685771007; x=1717307007;
 h=date:from:to:subject:message-id;
 bh=Zrj+gm8kC3DP+fYCSN7Olzjox7ix+rJBzVR/LSh61o0=;
 b=Uyud0XYFGGF1rU7vvK3j5dSe4GhujHHspgk+3xLgQ2NTmmqGwPL0G3eH
 //FCQOi6YRv7ccsjRyNVsHLi2aTu0py2ZIvsWQgjdPVEL3SarGhHTE33R
 FtIu7+m5a7CZ7f3FXXWB4Zf+POF7qtu2TcnHkycai/JiQlUUxIWJPUa8C
 NUndJURl9WujSWEyr/JmYeuCxIL6FWx/OFMqUKPXyzgvi9OLWgo50ye0l
 VISTBmql1DFhj5UuKO5Wabt6MarTCcHub7k9rNif7zJVNv7CPo0eyba5J
 QeihXy+SHzgRteGvr53YqayQrGSj4x99zjt3caVY8I0mWnbzqwL2dPwtU
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Uyud0XYF
Subject: [Intel-wired-lan] [tnguy-next-queue:40GbE] BUILD SUCCESS
 8875087b966d7a2e89408630f001675c58dc86f4
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 40GbE
branch HEAD: 8875087b966d7a2e89408630f001675c58dc86f4  iavf: remove mask from iavf_irq_enable_queues()

elapsed time: 723m

configs tested: 155
configs skipped: 12

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r004-20230531   gcc  
alpha                randconfig-r024-20230531   gcc  
alpha                randconfig-r025-20230531   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r021-20230531   gcc  
arc                  randconfig-r043-20230531   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                         bcm2835_defconfig   clang
arm                                 defconfig   gcc  
arm                  randconfig-r046-20230531   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r031-20230531   gcc  
arm64                randconfig-r036-20230602   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r005-20230531   gcc  
csky                 randconfig-r035-20230602   gcc  
hexagon      buildonly-randconfig-r001-20230531   clang
hexagon              randconfig-r016-20230601   clang
hexagon              randconfig-r041-20230531   clang
hexagon              randconfig-r045-20230531   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230531   gcc  
i386                 randconfig-i001-20230602   gcc  
i386                 randconfig-i002-20230531   gcc  
i386                 randconfig-i002-20230602   gcc  
i386                 randconfig-i003-20230531   gcc  
i386                 randconfig-i003-20230602   gcc  
i386                 randconfig-i004-20230531   gcc  
i386                 randconfig-i004-20230602   gcc  
i386                 randconfig-i005-20230531   gcc  
i386                 randconfig-i005-20230602   gcc  
i386                 randconfig-i006-20230531   gcc  
i386                 randconfig-i006-20230602   gcc  
i386                 randconfig-i051-20230531   gcc  
i386                 randconfig-i051-20230602   gcc  
i386                 randconfig-i052-20230531   gcc  
i386                 randconfig-i052-20230602   gcc  
i386                 randconfig-i053-20230531   gcc  
i386                 randconfig-i053-20230602   gcc  
i386                 randconfig-i054-20230531   gcc  
i386                 randconfig-i054-20230602   gcc  
i386                 randconfig-i055-20230531   gcc  
i386                 randconfig-i055-20230602   gcc  
i386                 randconfig-i056-20230531   gcc  
i386                 randconfig-i056-20230602   gcc  
i386                 randconfig-i061-20230531   gcc  
i386                 randconfig-i062-20230531   gcc  
i386                 randconfig-i063-20230531   gcc  
i386                 randconfig-i064-20230531   gcc  
i386                 randconfig-i065-20230531   gcc  
i386                 randconfig-i066-20230531   gcc  
i386                 randconfig-r003-20230531   gcc  
i386                 randconfig-r035-20230531   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r002-20230531   gcc  
loongarch            randconfig-r011-20230601   gcc  
loongarch            randconfig-r016-20230601   gcc  
loongarch            randconfig-r021-20230531   gcc  
m68k                             allmodconfig   gcc  
m68k                         amcore_defconfig   gcc  
m68k                          atari_defconfig   gcc  
m68k                                defconfig   gcc  
m68k                       m5249evb_defconfig   gcc  
m68k                        m5307c3_defconfig   gcc  
m68k                 randconfig-r013-20230601   gcc  
m68k                 randconfig-r014-20230601   gcc  
m68k                          sun3x_defconfig   gcc  
microblaze                      mmu_defconfig   gcc  
microblaze           randconfig-r022-20230531   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r006-20230531   clang
mips                           ci20_defconfig   gcc  
mips                       lemote2f_defconfig   clang
mips                        maltaup_defconfig   clang
mips                 randconfig-r001-20230531   clang
mips                 randconfig-r023-20230531   gcc  
mips                 randconfig-r025-20230531   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r001-20230531   gcc  
openrisc     buildonly-randconfig-r003-20230531   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r011-20230601   gcc  
parisc               randconfig-r032-20230531   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                    ge_imp3a_defconfig   clang
powerpc                 mpc836x_rdk_defconfig   clang
powerpc              randconfig-r006-20230531   gcc  
powerpc              randconfig-r012-20230601   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r034-20230602   gcc  
riscv                randconfig-r042-20230531   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r044-20230531   clang
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r005-20230531   gcc  
sh                            hp6xx_defconfig   gcc  
sh                   randconfig-r003-20230531   gcc  
sh                   randconfig-r015-20230601   gcc  
sh                   randconfig-r024-20230531   gcc  
sh                           se7722_defconfig   gcc  
sh                             sh03_defconfig   gcc  
sh                          urquell_defconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r013-20230601   gcc  
sparc                randconfig-r015-20230601   gcc  
sparc64      buildonly-randconfig-r002-20230531   gcc  
sparc64      buildonly-randconfig-r004-20230531   gcc  
sparc64              randconfig-r002-20230531   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230531   gcc  
x86_64               randconfig-a002-20230531   gcc  
x86_64               randconfig-a003-20230531   gcc  
x86_64               randconfig-a004-20230531   gcc  
x86_64               randconfig-a005-20230531   gcc  
x86_64               randconfig-a006-20230531   gcc  
x86_64               randconfig-a011-20230603   gcc  
x86_64               randconfig-a012-20230603   gcc  
x86_64               randconfig-a013-20230603   gcc  
x86_64               randconfig-a014-20230603   gcc  
x86_64               randconfig-a015-20230603   gcc  
x86_64               randconfig-a016-20230603   gcc  
x86_64               randconfig-x051-20230603   gcc  
x86_64               randconfig-x052-20230603   gcc  
x86_64               randconfig-x053-20230603   gcc  
x86_64               randconfig-x054-20230603   gcc  
x86_64               randconfig-x055-20230603   gcc  
x86_64               randconfig-x056-20230603   gcc  
x86_64                          rhel-8.3-func   gcc  
x86_64                    rhel-8.3-kselftests   gcc  
x86_64                           rhel-8.3-ltp   gcc  
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r026-20230531   gcc  
xtensa               randconfig-r033-20230602   gcc  
xtensa               randconfig-r036-20230531   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
