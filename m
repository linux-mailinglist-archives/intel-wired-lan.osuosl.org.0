Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 656C65A8E92
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Sep 2022 08:46:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8CE51417A5;
	Thu,  1 Sep 2022 06:46:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8CE51417A5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1662014762;
	bh=Rtld0iS4P/TN1bj6FVcud/qZ06PNPNVQzqvMH80sAC4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=P5gglbhTXoCl7UZdhlrltFp6xsOe7RglEhhU990MEX+ZOjP81sJoCl4lbrDwxH49n
	 ndzpL68UErCxQoJQYHLJpQ+egSGFRaqDVUDiQZKdPaCBwGb+EMCnCwxi/VK8bJOukx
	 sLN6xvTGTW9jOnps8zyF3E3+I5TM3W00diDJzPlP8Dbxg152SqN0fnFaEpg1jlmXeR
	 H9pTncL9SWmTZ9OXzjR2koFrjB4CmKtuSeLUrlg5JyP62Ni3rboUJgHrRa2n0VSZTE
	 vzFMxBOUGAcrKCfjh0PdwBUwuTwX9BKqGzWL4ellbCLpy/WiUb3Mq8vvacJrlZVXbX
	 2nXDim4jaBG3g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xt6dBo4-oBIS; Thu,  1 Sep 2022 06:46:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 17CEF41710;
	Thu,  1 Sep 2022 06:46:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 17CEF41710
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 213D71BF21A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Sep 2022 06:45:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EE21941720
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Sep 2022 06:45:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EE21941720
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n3rRi8Rr7lqb for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Sep 2022 06:45:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A98864171C
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A98864171C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Sep 2022 06:45:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10456"; a="293210115"
X-IronPort-AV: E=Sophos;i="5.93,280,1654585200"; d="scan'208";a="293210115"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 23:45:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,280,1654585200"; d="scan'208";a="673707791"
Received: from lkp-server02.sh.intel.com (HELO 811e2ceaf0e5) ([10.239.97.151])
 by fmsmga008.fm.intel.com with ESMTP; 31 Aug 2022 23:45:52 -0700
Received: from kbuild by 811e2ceaf0e5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oTdxX-0001Ec-2W;
 Thu, 01 Sep 2022 06:45:51 +0000
Date: Thu, 01 Sep 2022 14:45:10 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <631054f6.GDaJpmvjbIg7eQZH%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662014753; x=1693550753;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=c++LVk5wAiaeTmgPps+tR7O4Izt8he68cMRDFaXls4I=;
 b=HEXYpWqtoX9JrbYTRgwkhCtChL26dpt9R7Ri65otDFpoekpIJ5ASm9VO
 LC2O1HkVbgV8ns6oulCu/g6eaKlegUS7T2/cPWAfJXs6xPbbirJHO/OXY
 PVkbeLxe5yWGMTWZFi8+d9y/pwP5qSZYjwiZNWwYn5fDVhpyN3zHymAub
 YycgO+qNmZGzFviOeiZ3H82voIvK5LGG45zpIGsHwyZv6HCuVdesz+GxO
 Torulf6uxC32HX3VRiVNIu6QUJGtjr53Nzw1st70bCqWjuol7ER5KwxdE
 sT3BV4Fj+Q5uFGxEGIwkUxMr/VHQ+1tPhl6GeVoV2c1M1dtEUn00s4vwl
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HEXYpWqt
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 08ed3336a2c180a59dedb969bfaec96ebe1e15ac
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
branch HEAD: 08ed3336a2c180a59dedb969bfaec96ebe1e15ac  iavf: Detach device during reset task

elapsed time: 726m

configs tested: 53
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                  randconfig-r043-20220831
s390                 randconfig-r044-20220831
riscv                randconfig-r042-20220831
x86_64                              defconfig
x86_64                               rhel-8.3
m68k                             allyesconfig
powerpc                           allnoconfig
m68k                             allmodconfig
powerpc                          allmodconfig
x86_64                           allyesconfig
mips                             allyesconfig
arc                              allyesconfig
sh                               allmodconfig
alpha                            allyesconfig
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                                defconfig
i386                          randconfig-a001
x86_64                        randconfig-a002
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a004
x86_64                        randconfig-a006
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
i386                          randconfig-a014
x86_64                           rhel-8.3-syz
i386                          randconfig-a012
arm                                 defconfig
x86_64                           rhel-8.3-kvm
i386                          randconfig-a016
i386                             allyesconfig
arm                              allyesconfig
arm64                            allyesconfig
ia64                             allmodconfig

clang tested configs:
hexagon              randconfig-r041-20220831
hexagon              randconfig-r045-20220831
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64                        randconfig-a001
i386                          randconfig-a002
x86_64                        randconfig-a003
i386                          randconfig-a006
x86_64                        randconfig-a005
i386                          randconfig-a004
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
