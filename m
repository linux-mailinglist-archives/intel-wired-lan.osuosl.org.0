Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 240D0666BD5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Jan 2023 08:53:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9B4368127C;
	Thu, 12 Jan 2023 07:53:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9B4368127C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673510020;
	bh=VrttL9mmYv5e/96Cexs0zsdfKDIevBJhbpFe201tbHg=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=l7EXJ5NV5mUO4+z5ez87yEpi37NFZdpd+3P0QgHdJ8RtRmR68MrpXMDAo1DEGRi3P
	 tmecWc0dZ6owHgU3L+bm0cFr8rzzt9dpR8oUUjhRdU61f3D2Gqy5o4AfYahRTy9bsE
	 MS+vasDhMP5MjVDWnntMJxc1z07LpG/q5Lbs5KsggH+LH8tEx8wbVuhwmbf0DtzM7d
	 P61+f+PbJJqHQzXvyWk9zavoULzL4cnN+KcofSxNiFnlGopM7kovIJwZAuii0G7hlZ
	 Gs//7VOewNF22kkepXrh2UW8+OrWyK1iy8aNvMMIQAsWqU4jH2eSB39XzNnUro6WYh
	 PM/yc4WzkYktg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qkDa-8lUPL67; Thu, 12 Jan 2023 07:53:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 94EE080DB3;
	Thu, 12 Jan 2023 07:53:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 94EE080DB3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E84751BF396
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jan 2023 07:53:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B88B04026A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jan 2023 07:53:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B88B04026A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DRtDjQBYSXFY for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Jan 2023 07:53:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E6CFE40123
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E6CFE40123
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jan 2023 07:53:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="324873732"
X-IronPort-AV: E=Sophos;i="5.96,319,1665471600"; d="scan'208";a="324873732"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2023 23:53:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="657700642"
X-IronPort-AV: E=Sophos;i="5.96,319,1665471600"; d="scan'208";a="657700642"
Received: from lkp-server02.sh.intel.com (HELO f1920e93ebb5) ([10.239.97.151])
 by orsmga002.jf.intel.com with ESMTP; 11 Jan 2023 23:53:28 -0800
Received: from kbuild by f1920e93ebb5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pFsOt-0009wK-2q;
 Thu, 12 Jan 2023 07:53:27 +0000
Date: Thu, 12 Jan 2023 15:53:04 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63bfbc60.CWKLw39nyHvYrhgS%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673510010; x=1705046010;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=TDMtfbQWKpwufZtz/F2FEihaskyGCAT59SkayC0TCQY=;
 b=Kr+oy6Ah5+e5gj0xdBsoS8acbk8jivOuUP59lyrYgn0NyYZV63VfHcWV
 9OWiOFfmn2rgfZ+0CXoSCYwHCzi6XLEzoG5czBcSLYhcO0zQl5LIY6qUL
 PZsVCpXCC21Q5w2Rukbo8G4Z29W0oQkU3XAl0KNCzBsJMw897cSf2Njq1
 srSotRP3IeRUa9VLSSWxEmpnNq6sfZR+57wVkg2d8gQ0Kw2Di3b3R57ef
 jHfpLBBq33sS4uY/YKi7f+fHkPkAmS45hPWYQgx4t/w462alh8R9V1jlq
 we4MMiRULvn9HkL0YlVclPfCn3Vjz7f2oC04Z6vGLww3ZGvE1rSNx2sgh
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Kr+oy6Ah
Subject: [Intel-wired-lan] [tnguy-next-queue:master] BUILD SUCCESS
 62cd6679958d760e9a565ec5049ab2b839720992
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git master
branch HEAD: 62cd6679958d760e9a565ec5049ab2b839720992  Merge branch 'dt-bindings-first-batch-of-dt-schema-conversions-for-amlogic-meson-bindings'

elapsed time: 791m

configs tested: 76
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
alpha                               defconfig
s390                             allmodconfig
s390                                defconfig
x86_64                        randconfig-a013
x86_64                        randconfig-a011
um                             i386_defconfig
um                           x86_64_defconfig
i386                                defconfig
s390                             allyesconfig
x86_64                        randconfig-a015
arc                  randconfig-r043-20230110
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                            allnoconfig
riscv                randconfig-r042-20230110
x86_64                        randconfig-a006
s390                 randconfig-r044-20230110
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
i386                             allyesconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                           rhel-8.3-bpf
x86_64                         rhel-8.3-kunit
ia64                             allmodconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
arm64                            allyesconfig
arm                              allyesconfig
arm                                 defconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
m68k                         amcore_defconfig
arm                        multi_v7_defconfig
sh                              ul2_defconfig
m68k                             alldefconfig
powerpc                 mpc85xx_cds_defconfig
powerpc                    klondike_defconfig
arm                          gemini_defconfig
powerpc                     tqm8548_defconfig
sh                ecovec24-romimage_defconfig
sparc                       sparc64_defconfig
powerpc                      mgcoge_defconfig
openrisc                 simple_smp_defconfig
nios2                            allyesconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig

clang tested configs:
x86_64                        randconfig-a012
x86_64                        randconfig-a014
hexagon              randconfig-r041-20230110
arm                  randconfig-r046-20230110
x86_64                        randconfig-a016
x86_64                        randconfig-a001
hexagon              randconfig-r045-20230110
i386                          randconfig-a013
x86_64                        randconfig-a003
i386                          randconfig-a011
x86_64                        randconfig-a005
i386                          randconfig-a015
x86_64                          rhel-8.3-rust
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
