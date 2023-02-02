Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 354E46888AA
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Feb 2023 22:01:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BCFFF410BB;
	Thu,  2 Feb 2023 21:01:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BCFFF410BB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675371660;
	bh=HdNQNR/BuF6yL8d95ijuLC1mQ0KI+sP5CzP2Q1+zITU=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=W4rsJjCu7KgyE+zM934hDpSprDpsV+keK2iKodUPRfbtMnoSJ8s6Zqy8Fa0yabpZJ
	 3guC6Xxt8gImx528MAoBARBurhgoiHZy8nhfXko8IOiurgS7HRUp8BJVXYHlWdrn0S
	 lwhay68CtwbVaUGuP1J7UmjIKiwFPyNLhm7xZRQ50dfXQbC1oc4MgsC2xXTDUcvd33
	 wFeBHCHbMOiMa36iM2T5hhle6YZZOKl2cQVyaFFGChk8vqvcpJVO0FZLLdMzMqeA3p
	 CqEO9nNERemH5cAa1pzOC8YdptF4LHtD2w4PgIlVDbNEwc6aS8DDgxBEX85CNIIfuP
	 5yhRc70iNNekg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rh9lVh8d-qdS; Thu,  2 Feb 2023 21:01:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AB27E4105B;
	Thu,  2 Feb 2023 21:00:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AB27E4105B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CBA661BF417
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Feb 2023 21:00:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A3CAA8204A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Feb 2023 21:00:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A3CAA8204A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eskbP0WEyDPh for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Feb 2023 21:00:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A75FE813B6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A75FE813B6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Feb 2023 21:00:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="330696905"
X-IronPort-AV: E=Sophos;i="5.97,268,1669104000"; d="scan'208";a="330696905"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 13:00:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="695921022"
X-IronPort-AV: E=Sophos;i="5.97,268,1669104000"; d="scan'208";a="695921022"
Received: from lkp-server01.sh.intel.com (HELO ffa7f14d1d0f) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 02 Feb 2023 13:00:50 -0800
Received: from kbuild by ffa7f14d1d0f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pNghN-0006r2-30;
 Thu, 02 Feb 2023 21:00:49 +0000
Date: Fri, 03 Feb 2023 04:59:57 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63dc244d.Q9dSjam4Ljp2fRlK%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675371652; x=1706907652;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=DkHwjBnAxu5XUPsSOuV9XLOMrAHoI739srP+ZHW3C1U=;
 b=bfxNLU/CDia9Fmq7NoXzLRV+bqu/vwf8kwJea+EprsPvhT3SfXuvCQno
 VaNtqMFJO5A6/EouMgDGUGtizGTK1WF4961xwoI027/qIGkNeENnP3b4l
 tDP2Q2TxyP2JH8NnJ1rXFyeaDusN+Pc1ZIbDkJZG0A+v2HeF8A8IcRlho
 03kZAkC94dFBAqm9bgNwRnVTovYl7QonpoaEQ2qLzDrruN6h28TV7hnwC
 D5sfsJ1uh7JMfU8fPjrWHXWdMAPszOo8B3CPTySMYbCmsJEaWzbSmBUV7
 F3ZOm+o4nx2NydLUV4A+nnsgFaDD7HIg8OxQedX0WvSZ7VSe8wR7200xE
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bfxNLU/C
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 8fe45173bae955f7d857ff988fb6413f6b27db06
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: 8fe45173bae955f7d857ff988fb6413f6b27db06  ice: implement devlink reinit action

elapsed time: 1523m

configs tested: 68
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
arc                                 defconfig
alpha                               defconfig
s390                             allmodconfig
s390                                defconfig
s390                             allyesconfig
x86_64               randconfig-a001-20230130
x86_64               randconfig-a003-20230130
x86_64               randconfig-a004-20230130
x86_64               randconfig-a002-20230130
x86_64               randconfig-a006-20230130
x86_64               randconfig-a005-20230130
m68k                             allyesconfig
x86_64                          rhel-8.3-func
m68k                             allmodconfig
alpha                            allyesconfig
x86_64                    rhel-8.3-kselftests
arc                              allyesconfig
i386                 randconfig-a002-20230130
i386                 randconfig-a001-20230130
i386                 randconfig-a004-20230130
i386                 randconfig-a003-20230130
i386                 randconfig-a005-20230130
i386                 randconfig-a006-20230130
um                             i386_defconfig
um                           x86_64_defconfig
ia64                             allmodconfig
powerpc                           allnoconfig
sh                               allmodconfig
mips                             allyesconfig
powerpc                          allmodconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-bpf
arc                  randconfig-r043-20230129
arm                  randconfig-r046-20230129
arm                  randconfig-r046-20230130
arc                  randconfig-r043-20230130
i386                                defconfig
i386                             allyesconfig
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig

clang tested configs:
x86_64                          rhel-8.3-rust
x86_64               randconfig-a014-20230130
x86_64               randconfig-a012-20230130
x86_64               randconfig-a013-20230130
x86_64               randconfig-a011-20230130
x86_64               randconfig-a015-20230130
x86_64               randconfig-a016-20230130
i386                 randconfig-a013-20230130
i386                 randconfig-a012-20230130
i386                 randconfig-a014-20230130
i386                 randconfig-a011-20230130
i386                 randconfig-a015-20230130
i386                 randconfig-a016-20230130
hexagon              randconfig-r041-20230129
riscv                randconfig-r042-20230129
riscv                randconfig-r042-20230130
hexagon              randconfig-r045-20230130
hexagon              randconfig-r041-20230130
hexagon              randconfig-r045-20230129
s390                 randconfig-r044-20230129
s390                 randconfig-r044-20230130

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
