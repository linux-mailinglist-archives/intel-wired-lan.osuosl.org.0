Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40FB1775EF6
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Aug 2023 14:29:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0C81641508;
	Wed,  9 Aug 2023 12:29:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0C81641508
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691584183;
	bh=to7MvZs17OMzHWD938kA2l699Xcu7sXbKOlQNDspv+0=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=e5CW4kHBUj3PMxW1hX0g62xKFT7F0QnfDxTfWocgRys4Pgo9A0hFhA2shLeWN1Bo3
	 QJCmppeWMQF+F6YEBfDWmXb4VDg45MLETcJ4pWh/r48DbzXmlaxgXU4PMX398GJAqk
	 1r/8oX4JVJ18Q/qHo/5+Td7E25R9EUCCfElJAcM1u88jY0OyI+OI1OU2i43E2RyD/2
	 cSJMQO5e6TO/Z4M1KeX2sk556FTvuwmNEnRGsXtCxJSIvCKfHDcj/9pxjt7i24ljyS
	 hu9Uos/wQN62N73bGkbhqobIvONL4eUpPdjTBk6QSIIN0ZhTxmwPChkhwEZnTQbS7K
	 WndWRuxWi4+2g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EsIrzlm_Aw4R; Wed,  9 Aug 2023 12:29:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C376D41489;
	Wed,  9 Aug 2023 12:29:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C376D41489
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 75BA11BF316
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Aug 2023 12:29:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4BEC041858
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Aug 2023 12:29:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4BEC041858
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wBoh3pnMZXmT for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Aug 2023 12:29:35 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2905041856
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Aug 2023 12:29:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2905041856
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="371096528"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="371096528"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2023 05:29:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="801726996"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="801726996"
Received: from lkp-server01.sh.intel.com (HELO d1ccc7e87e8f) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 09 Aug 2023 05:29:32 -0700
Received: from kbuild by d1ccc7e87e8f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qTiJg-00066G-0Q
 for intel-wired-lan@lists.osuosl.org; Wed, 09 Aug 2023 12:29:32 +0000
Date: Wed, 09 Aug 2023 20:29:08 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202308092005.X5LXSMDY-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691584175; x=1723120175;
 h=date:from:to:subject:message-id;
 bh=RGkRXBvNVGwEvzwH+WAC6r8USXytKbHl9ND1h4Gbgvc=;
 b=G46n9Odf0fGg2WGlWZxNvHRdSbJay2WeekzU01e6q7f8OXWIa6Fkml4E
 tTXvE5zMKLCozt5hcRxAo2XyImgFjmimm5Va1ZKugKVGkh7btda3vZylm
 /16ppWwp9CcCIMIn2VMyxRijQ8ZyMknu9tdJFoR24Hf+7XQihCiTD5rtM
 LGhqL/4cdzxbv38bbNHk9+ZLHLlK6VaDSt+B2/1jFOEnCWpkKj0dxXbIH
 0h2ZH35isNoDKMjXhzy0oWbrsKL2zF4hM8T6D/12yV07KX+c66qw2k634
 7lZVomvK188FySVKs+EqHNmxLWpbfr4gV+jcYiv8hB4jSOnQso9KIPD2j
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=G46n9Odf
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 d9d9633cbcaefd33ccdcc0b4475adce95b5bd5b8
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
branch HEAD: d9d9633cbcaefd33ccdcc0b4475adce95b5bd5b8  idpf: configure SRIOV and add other ndo_ops

elapsed time: 843m

configs tested: 107
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r043-20230808   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r011-20230808   clang
arm                  randconfig-r032-20230808   gcc  
arm                  randconfig-r046-20230808   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r006-20230808   gcc  
csky                 randconfig-r016-20230808   gcc  
hexagon              randconfig-r041-20230808   clang
hexagon              randconfig-r045-20230808   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230808   clang
i386         buildonly-randconfig-r005-20230808   clang
i386         buildonly-randconfig-r006-20230808   clang
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230808   clang
i386                 randconfig-i002-20230808   clang
i386                 randconfig-i003-20230808   clang
i386                 randconfig-i004-20230808   clang
i386                 randconfig-i005-20230808   clang
i386                 randconfig-i006-20230808   clang
i386                 randconfig-i011-20230808   gcc  
i386                 randconfig-i012-20230808   gcc  
i386                 randconfig-i013-20230808   gcc  
i386                 randconfig-i014-20230808   gcc  
i386                 randconfig-i015-20230808   gcc  
i386                 randconfig-i016-20230808   gcc  
i386                 randconfig-r012-20230808   gcc  
i386                 randconfig-r023-20230808   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r004-20230808   gcc  
m68k                 randconfig-r034-20230808   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
nios2                               defconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r001-20230808   clang
powerpc              randconfig-r013-20230808   gcc  
powerpc              randconfig-r031-20230808   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r003-20230808   clang
riscv                randconfig-r014-20230808   gcc  
riscv                randconfig-r042-20230808   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r035-20230808   clang
s390                 randconfig-r044-20230808   gcc  
sh                               allmodconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r005-20230808   gcc  
sparc                randconfig-r025-20230808   gcc  
sparc64              randconfig-r026-20230808   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r015-20230808   clang
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230808   clang
x86_64       buildonly-randconfig-r002-20230808   clang
x86_64       buildonly-randconfig-r003-20230808   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-r021-20230808   gcc  
x86_64               randconfig-r033-20230808   clang
x86_64               randconfig-r036-20230808   clang
x86_64               randconfig-x001-20230808   gcc  
x86_64               randconfig-x002-20230808   gcc  
x86_64               randconfig-x003-20230808   gcc  
x86_64               randconfig-x004-20230808   gcc  
x86_64               randconfig-x005-20230808   gcc  
x86_64               randconfig-x006-20230808   gcc  
x86_64               randconfig-x011-20230808   clang
x86_64               randconfig-x012-20230808   clang
x86_64               randconfig-x013-20230808   clang
x86_64               randconfig-x014-20230808   clang
x86_64               randconfig-x015-20230808   clang
x86_64               randconfig-x016-20230808   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r002-20230808   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
