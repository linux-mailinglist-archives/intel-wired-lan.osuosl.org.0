Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 835F072A95E
	for <lists+intel-wired-lan@lfdr.de>; Sat, 10 Jun 2023 08:26:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 79B7242592;
	Sat, 10 Jun 2023 06:26:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 79B7242592
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686378391;
	bh=+01V1AKVmetaVgSoVnGcORBfiVCOWJDDUnDp9n59Mr4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=lOslysRpZbTEG9QPWSs27RUTdOorLeZ6z9Ib5dy4NiETJ+H9PzhWl8wK2YjAzFIl/
	 vnATb5tZ0FKBfMXf56ZRMTOvqW3g0brkicfu536sjCkHgO/cBDAjVM1N2VLDlPyoqc
	 CU0ORFfwkQeeWZiBtPSmJlcH40FB8eHwYVBI+758g0YkbVNzeAOdMy0AboqopqnI9E
	 Hi7Be/bBPiHdxgRRevzZ7ChaclyugZhlBIEoWRGKGa+DbBeuD96WXJ+uJfqR9NxcGh
	 g8ZEjfrx9B8tUNrwY7KrAGBIcGfHFncp0B+JVtjyNYSyO9SorbwxFXbeortTL186Zw
	 r39sOg7rXcVHg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nw2tATfTz9_8; Sat, 10 Jun 2023 06:26:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1984341E5E;
	Sat, 10 Jun 2023 06:26:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1984341E5E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BF8581BF859
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jun 2023 06:26:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 97270400DD
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jun 2023 06:26:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 97270400DD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qoDpHCcZTNUV for <intel-wired-lan@lists.osuosl.org>;
 Sat, 10 Jun 2023 06:26:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1D6B940017
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1D6B940017
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jun 2023 06:26:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="357735408"
X-IronPort-AV: E=Sophos;i="6.00,231,1681196400"; d="scan'208";a="357735408"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 23:26:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="834870900"
X-IronPort-AV: E=Sophos;i="6.00,231,1681196400"; d="scan'208";a="834870900"
Received: from lkp-server01.sh.intel.com (HELO 15ab08e44a81) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 09 Jun 2023 23:26:20 -0700
Received: from kbuild by 15ab08e44a81 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1q7s3H-0009p8-3B
 for intel-wired-lan@lists.osuosl.org; Sat, 10 Jun 2023 06:26:19 +0000
Date: Sat, 10 Jun 2023 14:25:36 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202306101434.akFLj9sK-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686378383; x=1717914383;
 h=date:from:to:subject:message-id;
 bh=RPpvNj5AYExHOmtdiOpBV0oER3kxhv0fkCzfmChJNkI=;
 b=QRCDZR7azEcyxM0hgzpnFoj8zduWGhHalUQF2RPRrcSec27t1N8Tm5s6
 gjuUPn2lAw37wEtpYb5cPmz7kNJ43jET+X08ZJN+q7f+nt/AbUJBcqoaU
 WPCzBCv5EGUiD62TkcdSqJrLCoJPrnAGk8iv82aGGsIiLmXNMsQ8B8xn0
 4586ek8ut+A7zb2/5Vz3Yf2oe6fimqbnwot3hMnV2hR46wlbIvoWnzZOh
 Fcj2DWIPfsAdBkCKwUGoz877fNAECp0z71Ux3xoprYXgQf+BDXDx4dITd
 e9WEgNRkYPf73YTbQvidZuwji5QHKpZeJDoqq1ENnWC/OSfhp1WFG0Ni2
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QRCDZR7a
Subject: [Intel-wired-lan] [tnguy-net-queue:1GbE] BUILD SUCCESS
 42a36205c853f670a2c964aeaec4f8cb3321c9e5
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 1GbE
branch HEAD: 42a36205c853f670a2c964aeaec4f8cb3321c9e5  igb: fix nvm.ops.read() error handling

elapsed time: 816m

configs tested: 93
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r005-20230608   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r012-20230608   gcc  
alpha                randconfig-r032-20230609   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r004-20230608   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r015-20230608   gcc  
arc                  randconfig-r021-20230608   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                          pxa168_defconfig   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r013-20230608   clang
csky         buildonly-randconfig-r001-20230608   gcc  
csky         buildonly-randconfig-r003-20230608   gcc  
csky                                defconfig   gcc  
hexagon              randconfig-r034-20230609   clang
i386                             alldefconfig   gcc  
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i051-20230608   gcc  
i386                 randconfig-i052-20230608   gcc  
i386                 randconfig-i053-20230608   gcc  
i386                 randconfig-i054-20230608   gcc  
i386                 randconfig-i055-20230608   gcc  
i386                 randconfig-i056-20230608   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r026-20230608   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k         buildonly-randconfig-r002-20230608   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r036-20230609   gcc  
microblaze           randconfig-r031-20230609   gcc  
microblaze           randconfig-r033-20230609   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                            gpr_defconfig   gcc  
mips                 randconfig-r023-20230608   gcc  
nios2                               defconfig   gcc  
openrisc             randconfig-r011-20230608   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                   lite5200b_defconfig   clang
powerpc                     skiroot_defconfig   clang
powerpc                     tqm8560_defconfig   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                          debug_defconfig   gcc  
s390                                defconfig   gcc  
sh                               allmodconfig   gcc  
sh                         ap325rxa_defconfig   gcc  
sh                        edosk7705_defconfig   gcc  
sh                   randconfig-r014-20230608   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64      buildonly-randconfig-r006-20230608   gcc  
sparc64              randconfig-r016-20230608   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   clang
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230608   gcc  
x86_64               randconfig-a002-20230608   gcc  
x86_64               randconfig-a003-20230608   gcc  
x86_64               randconfig-a004-20230608   gcc  
x86_64               randconfig-a005-20230608   gcc  
x86_64               randconfig-a006-20230608   gcc  
x86_64               randconfig-a011-20230608   clang
x86_64               randconfig-a012-20230608   clang
x86_64               randconfig-a013-20230608   clang
x86_64               randconfig-a014-20230608   clang
x86_64               randconfig-a015-20230608   clang
x86_64               randconfig-a016-20230608   clang
x86_64               randconfig-r022-20230608   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
