Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4083A6917FB
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Feb 2023 06:32:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E403B418D6;
	Fri, 10 Feb 2023 05:32:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E403B418D6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676007155;
	bh=v3yHUYdX0I9Gw4ZILaFLTtO7aPI6wMl4X26gXJgLLLA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=E+aCgZte6eLRKN40QMko4DX7gGjdMCPxolo3fF0aDDQWcGOhAxBxoc2gTiPZE8UkC
	 /tFiR9GuVDbC01i5XQAug4pNfVaFRhNstxvF29cOhOWScDELQe1QDJ/jj09mSKiKQS
	 QK3gkCzKhvel5j+MOapf0sn6FAOVOlZttMc92S/z3db4fW2KwmYhJWFWe/oPT7lZnM
	 aYgIT3/nisCPdu+Bd+qO60ALWeQnrpMxaLpXbf95dVShRMf6yKHAOef2AgKp1pAmW3
	 VtepyDyUoLOu16epLUoCi5N9Pb3D4WTjLoam6NAmqP4NSshu2mSCQEyDOQxX1hGcMu
	 UM193ueFnmADQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u6ks7h1pyaiI; Fri, 10 Feb 2023 05:32:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A36F7418A1;
	Fri, 10 Feb 2023 05:32:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A36F7418A1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 65D5A1BF20B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Feb 2023 05:32:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 38E0A418A3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Feb 2023 05:32:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 38E0A418A3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ery4MwAZynSD for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Feb 2023 05:32:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 72CD3418A1
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 72CD3418A1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Feb 2023 05:32:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10616"; a="330349718"
X-IronPort-AV: E=Sophos;i="5.97,286,1669104000"; d="scan'208";a="330349718"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2023 21:32:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10616"; a="645518381"
X-IronPort-AV: E=Sophos;i="5.97,286,1669104000"; d="scan'208";a="645518381"
Received: from lkp-server01.sh.intel.com (HELO 4455601a8d94) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 09 Feb 2023 21:32:25 -0800
Received: from kbuild by 4455601a8d94 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pQM1I-0005a5-14;
 Fri, 10 Feb 2023 05:32:24 +0000
Date: Fri, 10 Feb 2023 13:32:19 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63e5d6e3.BGnMg6ik40JSBwii%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676007147; x=1707543147;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=sUfLy9GqtFejl9L9zTBh4IoldLm8VPTjO56lxr1MLzo=;
 b=E6A12I2Ng/O99IxTf/mlQM/xRWP0CQtOdAONoMgxaX50tjoIFHzUlPEC
 n5P+KBFI2EJLFOiF3VRsO/h24MehyE1W7Ua2UTaGO4yUKxyZ6GZk+OeHk
 /5jpUt8a2Wr5hcP14Gy2uItuYH8oBAhVvObhmhpLafm5sM5YsaHswUrJ3
 9XmsAA9rSLFwNBzyA6V2keCA5aBV1dU0vCSgj9B3GQ9YGY5GrhG6saWkW
 s6yVbt8zLzu29/+VV4GHpZWZVzfQYmNnb3eaGILljt240cLFPdXsQERDh
 hU4mACnh4+HvVSatCSKCSd2eUFMZ50+ZTdIB8J+0V63RaFx8z8KdHqqsJ
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=E6A12I2N
Subject: [Intel-wired-lan] [tnguy-next-queue:40GbE] BUILD SUCCESS
 0d5292bb29661bd8dbaedf0d768f274474f23196
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 40GbE
branch HEAD: 0d5292bb29661bd8dbaedf0d768f274474f23196  net/i40e: Replace 0-length array with flexible array

elapsed time: 727m

configs tested: 62
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
um                             i386_defconfig
um                           x86_64_defconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
x86_64                              defconfig
s390                                defconfig
x86_64                               rhel-8.3
s390                             allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
x86_64                           allyesconfig
arc                              allyesconfig
x86_64                           rhel-8.3-bpf
ia64                             allmodconfig
alpha                            allyesconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
arc                  randconfig-r043-20230209
x86_64                           rhel-8.3-kvm
arm                  randconfig-r046-20230209
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                                defconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          randconfig-a001
i386                          randconfig-a003
x86_64                        randconfig-a006
i386                          randconfig-a005
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
i386                             allyesconfig
arm                                 defconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
arm64                            allyesconfig
arm                              allyesconfig

clang tested configs:
hexagon              randconfig-r041-20230209
hexagon              randconfig-r045-20230209
s390                 randconfig-r044-20230209
riscv                randconfig-r042-20230209
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64                        randconfig-a001
x86_64                        randconfig-a003
i386                          randconfig-a002
i386                          randconfig-a004
x86_64                        randconfig-a005
i386                          randconfig-a006
x86_64                          rhel-8.3-rust

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
