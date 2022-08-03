Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DE40588B99
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Aug 2022 13:58:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BEAA541C26;
	Wed,  3 Aug 2022 11:58:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BEAA541C26
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659527894;
	bh=Yfvzh/3/8rtKkbQzxKgavS860UEhIxVyAnQ7VUN8SsQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=tDzDOAuLTPLPIINNZYEPjYgWRQo+OSNWYFFJBdsUcZ8qTnGN3Z37UV9zKPRPeviIQ
	 FuYPOTYFnQ+yJHXMlt6ryxVHoGqjU+XTDltiEYIhjf/Y/pK45wMJqLMMvcKQs5wQ+/
	 BbSaEnd5WomH5OVJ7ylEtLj56Jw8ybEDqOxsH+aSP8C8TL0yueKHyphdq9UwgoeYBm
	 cfGRNOfJVlc1qE+QNMUuemlVfYhCI6HONMXuWfz+svnC1tGK0indpAihsfrLGqz8tS
	 u4sKcwtM4+vLRf47Ikr2QifOI06Z75fLWgFpSov8cBGEAe5N7GbY1lfy7kX2MwtX9r
	 YqnlRTYs8KNng==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RORHngh-MiOg; Wed,  3 Aug 2022 11:58:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BA78F41BF9;
	Wed,  3 Aug 2022 11:58:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BA78F41BF9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DADFD1BF369
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Aug 2022 11:58:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C215341BF7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Aug 2022 11:58:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C215341BF7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6Zaro7tODXds for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Aug 2022 11:58:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E83F341BD3
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E83F341BD3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Aug 2022 11:58:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10427"; a="276566442"
X-IronPort-AV: E=Sophos;i="5.93,214,1654585200"; d="scan'208";a="276566442"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2022 04:58:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,214,1654585200"; d="scan'208";a="662053264"
Received: from lkp-server01.sh.intel.com (HELO e0eace57cfef) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 03 Aug 2022 04:58:04 -0700
Received: from kbuild by e0eace57cfef with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oJD0l-000HEB-1n;
 Wed, 03 Aug 2022 11:58:03 +0000
Date: Wed, 03 Aug 2022 19:57:53 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62ea62c1.JWybTNb5Zkc3nnlV%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659527885; x=1691063885;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=YiXtq2k4g3HhIK5kqXbMPFtijKJxrL7FJ0O1r/YmONA=;
 b=iCSgMwh5RBfh8S9+s4a38k8JofqCxMbFuz+rt05DTYzWBUtKOgWLCu+7
 Y5qZoHwCNQZ0/B1sJM6WJWelNlHw9UbZ4v4OdfquTZHUrxJOjTZkK2LEa
 sFShmvg4bpu5nNpfKDKzgYwlQBBtLboop0C0pKFqTU9BzkJMKfF3nC9ld
 FtQooc1VvHRT2R7/lIOfoTFHeGioKwozSmhqzMlPpNEdtW9EYr9zQ1/Q6
 sjazz1XqHrRhVhKwP/vRXELx7GQqJiNBLG/KnPW7dQwVp6hhG/h7HPtHu
 KsRrVhQx5EIS8VWAHb4lfMvffLzbvILWXGKZB/aqnIKMbVFkZ/t/XWZ8P
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iCSgMwh5
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 76000e26ce24d092ee569b5e557e9ad6aa6cfa54
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
branch HEAD: 76000e26ce24d092ee569b5e557e9ad6aa6cfa54  ice: Add low latency Tx timestamp read

elapsed time: 721m

configs tested: 52
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                  randconfig-r043-20220801
s390                 randconfig-r044-20220801
riscv                randconfig-r042-20220801
x86_64                              defconfig
x86_64                           allyesconfig
arm                                 defconfig
arc                              allyesconfig
x86_64                               rhel-8.3
alpha                            allyesconfig
m68k                             allmodconfig
m68k                             allyesconfig
arm                              allyesconfig
arm64                            allyesconfig
i386                 randconfig-a012-20220801
i386                 randconfig-a013-20220801
i386                 randconfig-a011-20220801
i386                 randconfig-a014-20220801
i386                                defconfig
i386                             allyesconfig
i386                 randconfig-a015-20220801
i386                 randconfig-a016-20220801
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
powerpc                           allnoconfig
powerpc                          allmodconfig
mips                             allyesconfig
sh                               allmodconfig
x86_64                        randconfig-a015
x86_64                        randconfig-a013
x86_64                        randconfig-a011

clang tested configs:
i386                 randconfig-a001-20220801
i386                 randconfig-a002-20220801
i386                 randconfig-a003-20220801
i386                 randconfig-a005-20220801
i386                 randconfig-a004-20220801
i386                 randconfig-a006-20220801
hexagon              randconfig-r041-20220801
hexagon              randconfig-r045-20220801
x86_64               randconfig-a002-20220801
x86_64               randconfig-a001-20220801
x86_64               randconfig-a003-20220801
x86_64               randconfig-a004-20220801
x86_64               randconfig-a005-20220801
x86_64               randconfig-a006-20220801
x86_64                        randconfig-a014
x86_64                        randconfig-a012
x86_64                        randconfig-a016

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
