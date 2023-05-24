Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 423DD70EC8F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 May 2023 06:31:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B2931424C7;
	Wed, 24 May 2023 04:31:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B2931424C7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684902660;
	bh=Uy3CMurfMzhiBsf1kJJ2NfSHihpUXDb9MAL71WiZpFw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=49H+a+JosAsFyac7koL0e2s0UDUZC0DvBTmoz++NuE8+CE502hlO4jLxdLToypq6A
	 uKQQW7XP4KFWtzpLFUZgdK3JXWMkbyoobl8yuCkXny3hC3ZAQGuDAI5kvqfO43zrjL
	 DIpoHpQQSBXBirNvr00bXcIvK7r5PEJE/mHWxFpbm1J2JSlq7LFb7bh1QCU7zfHHFy
	 KEWulyB52E/uoIyIsrLjlA7PCqc88hW3k8+iqovAntbuGfnApO3ZkzSNCpvaccDOAE
	 ibepI1b7gaTqxoSW4kkCPaLHgLWpV93dnGjLJaxKF1l4lo0nQLUDtcYopVpcgy/qVP
	 S3RcxrWVlSEyw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bn_23Qk37US4; Wed, 24 May 2023 04:30:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E384642091;
	Wed, 24 May 2023 04:30:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E384642091
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9D3C81BF355
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 May 2023 04:30:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 81E606157E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 May 2023 04:30:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 81E606157E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zIeabLPNns0O for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 May 2023 04:30:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3297D61544
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3297D61544
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 May 2023 04:30:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10719"; a="333071204"
X-IronPort-AV: E=Sophos;i="6.00,188,1681196400"; d="scan'208";a="333071204"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2023 21:30:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10719"; a="848581533"
X-IronPort-AV: E=Sophos;i="6.00,188,1681196400"; d="scan'208";a="848581533"
Received: from lkp-server01.sh.intel.com (HELO dea6d5a4f140) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 23 May 2023 21:30:46 -0700
Received: from kbuild by dea6d5a4f140 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1q1g97-000EOL-1W
 for intel-wired-lan@lists.osuosl.org; Wed, 24 May 2023 04:30:45 +0000
Date: Wed, 24 May 2023 12:30:08 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <20230524043008.8CELI%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684902652; x=1716438652;
 h=date:from:to:subject:message-id;
 bh=YTj2T7tfkv0FPUHSesAX0pXn2o9kgMnUmsAZdxVKKJc=;
 b=H1Qz4/bOKpIkmqMqSXQ1ExDCvQU4KM25J9HnCTPBd/laLTRySxskgHSI
 BIyIEZq2GCO9o9qL9TQOcH7JhcxuH/lHLrhYLZcrvCnuPFlXP5KpniVLG
 wuiVum10Jh2w10v1uDhDM1hyZw7WTR7OZ0W59l9h+cJE8h1wxam9uXBJw
 jIrtJdXjY3CDvvEm8mFzVhsg3v/+2h+M5ypaI0zdsPy00cETzWeMCOjXK
 a0u7nxsLHGsgmoXqQCdjECQ+ux72RBNFJcv0z0etEaawruZe2r+n9Y1Dw
 2WRuDLYWtT11TvXXqS/4/90uh+pgFcknBFv3bWNz5skU2TekVxNTko5KC
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=H1Qz4/bO
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 d59079a95dfa8cd5e35003c474b8b60cc20c8ff5
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

tree/branch: INFO setup_repo_specs: /db/releases/20230524121217/lkp-src/repo/*/tnguy-net-queue
https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: d59079a95dfa8cd5e35003c474b8b60cc20c8ff5  iavf: use internal state to free traffic IRQs

elapsed time: 731m

configs tested: 154
configs skipped: 11

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r006-20230521   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r034-20230521   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r001-20230522   gcc  
arc          buildonly-randconfig-r004-20230522   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r012-20230521   gcc  
arc                  randconfig-r014-20230521   gcc  
arc                  randconfig-r043-20230521   gcc  
arc                  randconfig-r043-20230522   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r046-20230521   clang
arm                  randconfig-r046-20230522   gcc  
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r003-20230521   clang
arm64                               defconfig   gcc  
arm64                randconfig-r005-20230522   gcc  
arm64                randconfig-r011-20230521   gcc  
arm64                randconfig-r013-20230522   clang
csky                                defconfig   gcc  
csky                 randconfig-r022-20230522   gcc  
csky                 randconfig-r026-20230521   gcc  
hexagon              randconfig-r031-20230521   clang
hexagon              randconfig-r032-20230521   clang
hexagon              randconfig-r041-20230521   clang
hexagon              randconfig-r041-20230522   clang
hexagon              randconfig-r045-20230521   clang
hexagon              randconfig-r045-20230522   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a011-20230522   clang
i386                 randconfig-a012-20230522   clang
i386                 randconfig-a013-20230522   clang
i386                 randconfig-a014-20230522   clang
i386                 randconfig-a015-20230522   clang
i386                 randconfig-a016-20230522   clang
i386                 randconfig-r001-20230522   gcc  
i386                 randconfig-r015-20230522   clang
i386                 randconfig-r034-20230522   gcc  
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r003-20230522   gcc  
ia64                 randconfig-r012-20230522   gcc  
ia64                 randconfig-r023-20230521   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r013-20230521   gcc  
loongarch            randconfig-r022-20230521   gcc  
loongarch            randconfig-r033-20230522   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r024-20230522   gcc  
microblaze   buildonly-randconfig-r006-20230522   gcc  
microblaze           randconfig-r004-20230522   gcc  
microblaze           randconfig-r014-20230522   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r001-20230521   gcc  
mips                 randconfig-r006-20230521   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r004-20230521   gcc  
nios2                randconfig-r005-20230521   gcc  
nios2                randconfig-r025-20230521   gcc  
nios2                randconfig-r033-20230521   gcc  
nios2                randconfig-r036-20230521   gcc  
openrisc             randconfig-r031-20230522   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r015-20230521   gcc  
parisc               randconfig-r035-20230522   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r002-20230521   gcc  
powerpc      buildonly-randconfig-r002-20230522   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230521   gcc  
riscv                randconfig-r042-20230522   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r001-20230521   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r002-20230521   clang
s390                 randconfig-r032-20230522   gcc  
s390                 randconfig-r044-20230521   gcc  
s390                 randconfig-r044-20230522   clang
sh                               allmodconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r011-20230522   gcc  
sparc                randconfig-r023-20230522   gcc  
sparc64      buildonly-randconfig-r003-20230522   gcc  
sparc64      buildonly-randconfig-r005-20230521   gcc  
sparc64              randconfig-r035-20230521   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r005-20230522   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230522   gcc  
x86_64                        randconfig-a001   clang
x86_64               randconfig-a002-20230522   gcc  
x86_64                        randconfig-a002   gcc  
x86_64               randconfig-a003-20230522   gcc  
x86_64                        randconfig-a003   clang
x86_64               randconfig-a004-20230522   gcc  
x86_64                        randconfig-a004   gcc  
x86_64               randconfig-a005-20230522   gcc  
x86_64                        randconfig-a005   clang
x86_64               randconfig-a006-20230522   gcc  
x86_64                        randconfig-a006   gcc  
x86_64               randconfig-a011-20230522   clang
x86_64               randconfig-a012-20230522   clang
x86_64               randconfig-a013-20230522   clang
x86_64               randconfig-a014-20230522   clang
x86_64               randconfig-a015-20230522   clang
x86_64               randconfig-a016-20230522   clang
x86_64               randconfig-r016-20230522   clang
x86_64               randconfig-r036-20230522   gcc  
x86_64                        randconfig-x051   gcc  
x86_64                        randconfig-x052   clang
x86_64                        randconfig-x053   gcc  
x86_64                        randconfig-x054   clang
x86_64                        randconfig-x055   gcc  
x86_64                        randconfig-x056   clang
x86_64               randconfig-x061-20230522   clang
x86_64               randconfig-x062-20230522   clang
x86_64               randconfig-x063-20230522   clang
x86_64               randconfig-x064-20230522   clang
x86_64               randconfig-x065-20230522   clang
x86_64               randconfig-x066-20230522   clang
x86_64               randconfig-x071-20230522   gcc  
x86_64               randconfig-x072-20230522   gcc  
x86_64               randconfig-x073-20230522   gcc  
x86_64               randconfig-x074-20230522   gcc  
x86_64               randconfig-x075-20230522   gcc  
x86_64               randconfig-x076-20230522   gcc  
x86_64               randconfig-x081-20230522   gcc  
x86_64               randconfig-x082-20230522   gcc  
x86_64               randconfig-x083-20230522   gcc  
x86_64               randconfig-x084-20230522   gcc  
x86_64               randconfig-x085-20230522   gcc  
x86_64               randconfig-x086-20230522   gcc  
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r002-20230522   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
