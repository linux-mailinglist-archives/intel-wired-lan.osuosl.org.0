Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 190255E5C67
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Sep 2022 09:29:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3A330408A6;
	Thu, 22 Sep 2022 07:29:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3A330408A6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663831756;
	bh=1wQv94QUIqafAGAG833CZKCLPWeCn0eyA/2VrNZL+zE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=WiwUp63Bd0j1fGYP9DamDqWZnNJMt2JWMDiy1KxohGUMxqELQKGkCFhANLK0uAAO/
	 o9cIA+mlQO7bMIufx7wd8TB43QZaBTUePCsSk+VMyTV/tlD4FYndBXdr3hJO3hoVr4
	 36gHYNNY2Ha54bhrIQWtFDKf+ES7RwoPECfBSY0cin9cPrkjuNlHwAatgfG2bYfXFj
	 MJQWIAka603a6ZcaC2r6sKz5dioMPFugppZ+jhTAN51xKBONaUZOdkPOcBx3Akcj94
	 OZTvJrZDghPJMHAuNdHY8MhuSztMFxGC4mtvxgZEj5LFcRBNnL4KYi+F1WDg6e7GTz
	 DeJNT67R4MYSg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MOPH5ef9cbJD; Thu, 22 Sep 2022 07:29:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F08624018D;
	Thu, 22 Sep 2022 07:29:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F08624018D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BCEB71BF2C2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 07:29:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A41E84018D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 07:29:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A41E84018D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yntjiEByZeMf for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Sep 2022 07:29:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8D9C140186
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8D9C140186
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 07:29:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10477"; a="283274572"
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="283274572"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 00:29:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="597323564"
Received: from lkp-server01.sh.intel.com (HELO c0a60f19fe7e) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 22 Sep 2022 00:29:06 -0700
Received: from kbuild by c0a60f19fe7e with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1obGdt-0004Qy-2W;
 Thu, 22 Sep 2022 07:29:05 +0000
Date: Thu, 22 Sep 2022 15:28:44 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <632c0eac.pvyPkj2OB+afNHMz%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663831748; x=1695367748;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=MchDci8yXW88nBVNHFTXV3uWBQYmL5YF8y6966rT1/U=;
 b=ieyE2IVtCdJgIC0h+fVg2OV70Z6i5M2vXNC2VtHbBfmQlKXusKU9Fpdy
 m8ruvjF7DKBk1ls1UrpCydUn6BkIetb9sqWvCCAAL9eskaB4T+ODPFW5F
 oJmuYZUP0LF9RRcFaPFLhqBoDwIamGOwOmFeKwk1bzHbVk4QYf6zg3+Ik
 jF9L0wGoajvOl6+F/ylmCMeqVsDabf0qvLvrYQQRFStZoxqpBYO7kCydp
 S+tQ0+UdjvxMjh4OczRWlUILrb/iIRjEfkqjBt13PRCzPYUjq/uhCH8Y6
 nlv34bshmnG691sgrMFecjaedH6SmqzxU7UzQPe0o03iOdVvBT/T56cUD
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ieyE2IVt
Subject: [Intel-wired-lan] [tnguy-next-queue:master] BUILD SUCCESS
 6fb4825e492b07ba6e450e5c9add3a35aa337f54
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
branch HEAD: 6fb4825e492b07ba6e450e5c9add3a35aa337f54  docs: net: add an explanation of VF (and other) Representors

elapsed time: 1007m

configs tested: 46
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                  randconfig-r043-20220921
riscv                randconfig-r042-20220921
s390                 randconfig-r044-20220921
m68k                             allyesconfig
um                           x86_64_defconfig
um                             i386_defconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
s390                                defconfig
s390                             allmodconfig
arc                                 defconfig
alpha                               defconfig
s390                             allyesconfig
i386                                defconfig
arm                                 defconfig
x86_64                              defconfig
arm                              allyesconfig
arm64                            allyesconfig
ia64                             allmodconfig
i386                             allyesconfig
x86_64                         rhel-8.3-kunit
x86_64                               rhel-8.3
x86_64                           rhel-8.3-kvm
x86_64                    rhel-8.3-kselftests
x86_64                           allyesconfig
x86_64                           rhel-8.3-syz
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
x86_64                          rhel-8.3-func

clang tested configs:
hexagon              randconfig-r041-20220921
hexagon              randconfig-r045-20220921
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
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
