Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EAD76ADA69
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Mar 2023 10:32:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 75D6C60FEA;
	Tue,  7 Mar 2023 09:32:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 75D6C60FEA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678181530;
	bh=26in0ijbKhcbVlessNkb9+/l18f28DWAY0CJde44N9Q=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Ux+qHNGjvCAxHWnT78AO7rUh6xpBiKWyD5f8hoWEfdVUlCOTksHm+dknHiGitE5Lj
	 j+6o/8C0O0HThsRYKeXNHra5lanwm72ghRXzk3/5pLMEz7gix969z8nqRVzkOG6zGD
	 N6u/bKOaHKWMImOovtExekoQ6j2aFpKneggSLR+1VlBhNCnUvBOuyPbfknAe/fo8RS
	 2i2etzdQBCtsa3MUSWUPv3vdvd/qB6Pn6KsmHU503ym46OgQ5IqLazCDsZQabE3Ik5
	 S6RfGCjaWC8gguAfBLQNiwpYe2B3q/2tvPittbYQjy6T9LeH7v17yw1V5RugGFQuww
	 Son8NDlJc7Jag==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Eexc_qlKmKmr; Tue,  7 Mar 2023 09:32:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 65FB96106F;
	Tue,  7 Mar 2023 09:32:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 65FB96106F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1066A1BF255
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Mar 2023 09:32:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E7A1B4013F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Mar 2023 09:32:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E7A1B4013F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id icjaJ1IrJias for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Mar 2023 09:32:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DF4484013C
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DF4484013C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Mar 2023 09:32:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="335829654"
X-IronPort-AV: E=Sophos;i="5.98,240,1673942400"; d="scan'208";a="335829654"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2023 01:32:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="626475030"
X-IronPort-AV: E=Sophos;i="5.98,240,1673942400"; d="scan'208";a="626475030"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 07 Mar 2023 01:31:59 -0800
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pZTfq-0001Ar-1O;
 Tue, 07 Mar 2023 09:31:58 +0000
Date: Tue, 07 Mar 2023 17:31:37 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <64070479.KKyRblEvLfFx+5Re%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678181520; x=1709717520;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=QrA4EY5gDJxkdMFBz6vZiXCjorQJQRl3IF/DB4FTdFk=;
 b=YNgl5pHg5mQHOkbTg4ER/wX26eufkDGeC0rTkZGbFYQizz9TUAN4bAxM
 h59dME4BGaXdZIO65CZM7oA1daeXS65xEDkk6ChsPTxpqhm+LOKy/ERtA
 EfAnGcohnI4j6HJpZCfW2cQR0dcF1UJc8a/Y46MvXmhiCXowhTNHeqjr2
 LJL8UU4jKnU1myhWxAkAGxVoTC023ytJ9tpDsUMO54jmTI0MoZSozMB8D
 TN/6LTKTpHSZSaVeAD+5y9t4d49A40K6pQXT+1siLurekcs+2X0Cq1f0L
 vhFXeBm4kDFz4GURvGKZ9uPPA5GHyNWg8pYL/Wu18epncDpn/WtalFo7J
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YNgl5pHg
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 84e0890bfba4c6a22ca6cf882b3b9e1539249e15
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
branch HEAD: 84e0890bfba4c6a22ca6cf882b3b9e1539249e15  iavf: fix non-tunneled IPv6 UDP packet type and hashing

elapsed time: 721m

configs tested: 125
configs skipped: 11

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r011-20230305   gcc  
alpha                randconfig-r015-20230306   gcc  
alpha                randconfig-r016-20230305   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r003-20230306   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r043-20230305   gcc  
arc                  randconfig-r043-20230306   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r046-20230305   clang
arm                  randconfig-r046-20230306   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r013-20230306   clang
arm64                randconfig-r024-20230306   clang
arm64                randconfig-r031-20230305   clang
csky                                defconfig   gcc  
csky                 randconfig-r002-20230305   gcc  
csky                 randconfig-r036-20230305   gcc  
hexagon              randconfig-r033-20230305   clang
hexagon              randconfig-r041-20230305   clang
hexagon              randconfig-r041-20230306   clang
hexagon              randconfig-r045-20230305   clang
hexagon              randconfig-r045-20230306   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230306   gcc  
i386                 randconfig-a002-20230306   gcc  
i386                 randconfig-a003-20230306   gcc  
i386                 randconfig-a004-20230306   gcc  
i386                 randconfig-a005-20230306   gcc  
i386                 randconfig-a006-20230306   gcc  
i386                 randconfig-a011-20230306   clang
i386                 randconfig-a012-20230306   clang
i386                 randconfig-a013-20230306   clang
i386                 randconfig-a014-20230306   clang
i386                 randconfig-a015-20230306   clang
i386                 randconfig-a016-20230306   clang
i386                 randconfig-r002-20230306   gcc  
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r013-20230305   gcc  
ia64                 randconfig-r033-20230306   gcc  
ia64                 randconfig-r035-20230306   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r006-20230305   gcc  
loongarch            randconfig-r014-20230305   gcc  
loongarch            randconfig-r016-20230306   gcc  
loongarch            randconfig-r022-20230305   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r023-20230306   gcc  
m68k                 randconfig-r026-20230305   gcc  
m68k                 randconfig-r034-20230305   gcc  
microblaze           randconfig-r022-20230306   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r006-20230306   clang
nios2                               defconfig   gcc  
openrisc             randconfig-r015-20230305   gcc  
openrisc             randconfig-r026-20230306   gcc  
parisc       buildonly-randconfig-r005-20230306   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r023-20230305   gcc  
parisc               randconfig-r024-20230305   gcc  
parisc               randconfig-r025-20230306   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r025-20230305   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r001-20230306   gcc  
riscv                randconfig-r042-20230305   gcc  
riscv                randconfig-r042-20230306   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r004-20230306   clang
s390                                defconfig   gcc  
s390                 randconfig-r001-20230305   clang
s390                 randconfig-r021-20230305   gcc  
s390                 randconfig-r035-20230305   clang
s390                 randconfig-r044-20230305   gcc  
s390                 randconfig-r044-20230306   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r021-20230306   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r011-20230306   gcc  
sparc                randconfig-r014-20230306   gcc  
sparc                randconfig-r031-20230306   gcc  
sparc                randconfig-r034-20230306   gcc  
sparc64              randconfig-r003-20230305   gcc  
sparc64              randconfig-r004-20230305   gcc  
sparc64              randconfig-r012-20230306   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230306   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230306   gcc  
x86_64               randconfig-a002-20230306   gcc  
x86_64               randconfig-a003-20230306   gcc  
x86_64               randconfig-a004-20230306   gcc  
x86_64               randconfig-a005-20230306   gcc  
x86_64               randconfig-a006-20230306   gcc  
x86_64               randconfig-a011-20230306   clang
x86_64               randconfig-a012-20230306   clang
x86_64               randconfig-a013-20230306   clang
x86_64               randconfig-a014-20230306   clang
x86_64               randconfig-a015-20230306   clang
x86_64               randconfig-a016-20230306   clang
x86_64               randconfig-r006-20230306   gcc  
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r036-20230306   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
