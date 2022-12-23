Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66B61654E7B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Dec 2022 10:39:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CB7FE40C1A;
	Fri, 23 Dec 2022 09:39:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CB7FE40C1A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671788357;
	bh=PIQ+ReRITzjAW72czCGhDbTyWfzintggURy9gQh2A1U=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=X+U025T+spFF6UnFXVKgo60hWCpI2GrYbmO2N4sRlS7ZU1je21vmPWMI02qXUZsjE
	 768JPF5QZ2j90PaWe2y48nqj7XX9wY76zyQTSBkmCQElNDDjHipOw0h74qA1RA4UpN
	 +ZNLMLyECo8LZWh82KJCk1ZkTRaxHcRdCC7NS5wEItkEEfITtQ9LRIjo2mvrbHSsAF
	 UGkMjiH4/L1AJGjnZsZi5THOM4ZNHMFDQO7EMLiO0VuFc4I0qcMtclwiwJuREADxBX
	 gMU2l+uLsW2SqWxk8aWcdHNvI3MtKzuANoHVSu48YzHNwtTvE8R5vELjc2EyE0Zv4e
	 w4m9n9YKuzO4g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aSW-p3NIZyyD; Fri, 23 Dec 2022 09:39:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BF85940C07;
	Fri, 23 Dec 2022 09:39:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BF85940C07
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 29AE41BF34C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Dec 2022 09:39:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 01CB5419A2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Dec 2022 09:39:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 01CB5419A2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WyzRA6tRqZ7E for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Dec 2022 09:39:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DDDAF410AC
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DDDAF410AC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Dec 2022 09:39:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10569"; a="406545515"
X-IronPort-AV: E=Sophos;i="5.96,268,1665471600"; d="scan'208";a="406545515"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2022 01:39:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10569"; a="682676620"
X-IronPort-AV: E=Sophos;i="5.96,268,1665471600"; d="scan'208";a="682676620"
Received: from lkp-server01.sh.intel.com (HELO b5d47979f3ad) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 23 Dec 2022 01:39:08 -0800
Received: from kbuild by b5d47979f3ad with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p8eWB-000Cb9-2g;
 Fri, 23 Dec 2022 09:39:07 +0000
Date: Fri, 23 Dec 2022 17:38:34 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63a5771a.gpgQ+TxmiCP85ygC%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671788350; x=1703324350;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=laSr4HyuJQ4GkQ3G8YAfn5cMtt8gOl8+Fls3DoiinwQ=;
 b=ZiDb3jNxXrWjZ/8safXDHAeok74BvoPB2qBwU6axkSrZCX0J38EfaiXY
 rLJ/7d0xvXJQ6bt8Kc7Rg87q/Aug1zEsCYD6pVHRcytJg5ajzUt6L/ty3
 DkeU3yQfwIy8HXPs9NDhmfemAABA3JxGxKj4N3xymjQcsV8WBr8CKgDGo
 RoCIRvKtsRH9jUtgdktjH4KRVuVYgR8nAtPkVBkTvVKV8PNVTRMxK87Ih
 1+fvlwZ0VoecDGkU8UrETeTSIs3sidIbwHXiowV+vjVnKyF8RaRGdy5Ke
 ocMeM01GWUtJzIq0T74onT6CFBLfPB4PzbmcFwOD2zMTP9M73/Ytq9CEt
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZiDb3jNx
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 6dbb7aa9c52bdb840488b003ecb811196f46cf38
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
branch HEAD: 6dbb7aa9c52bdb840488b003ecb811196f46cf38  virtchnl: i40e/ice/iavf: rename iwarp to rdma

elapsed time: 897m

configs tested: 67
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
um                             i386_defconfig
s390                                defconfig
um                           x86_64_defconfig
powerpc                           allnoconfig
s390                             allyesconfig
ia64                             allmodconfig
x86_64               randconfig-a002-20221219
x86_64               randconfig-a003-20221219
sh                               allmodconfig
x86_64               randconfig-a001-20221219
x86_64                              defconfig
x86_64               randconfig-a004-20221219
m68k                             allyesconfig
m68k                             allmodconfig
x86_64               randconfig-a005-20221219
arc                              allyesconfig
x86_64               randconfig-a006-20221219
mips                             allyesconfig
alpha                            allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
i386                                defconfig
x86_64                               rhel-8.3
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-bpf
x86_64                           rhel-8.3-syz
x86_64                           rhel-8.3-kvm
arm64                            allyesconfig
arm                                 defconfig
i386                 randconfig-a004-20221219
i386                 randconfig-a001-20221219
arm                              allyesconfig
i386                 randconfig-a003-20221219
i386                 randconfig-a002-20221219
riscv                randconfig-r042-20221218
i386                 randconfig-a006-20221219
i386                 randconfig-a005-20221219
arc                  randconfig-r043-20221219
arm                  randconfig-r046-20221219
arc                  randconfig-r043-20221218
x86_64                           allyesconfig
s390                 randconfig-r044-20221218
i386                             allyesconfig
powerpc                          allmodconfig

clang tested configs:
x86_64                          rhel-8.3-rust
i386                 randconfig-a014-20221219
i386                 randconfig-a012-20221219
i386                 randconfig-a013-20221219
i386                 randconfig-a011-20221219
arm                  randconfig-r046-20221218
i386                 randconfig-a015-20221219
hexagon              randconfig-r041-20221218
hexagon              randconfig-r045-20221219
i386                 randconfig-a016-20221219
hexagon              randconfig-r041-20221219
hexagon              randconfig-r045-20221218
riscv                randconfig-r042-20221219
s390                 randconfig-r044-20221219
x86_64               randconfig-a011-20221219
x86_64               randconfig-a012-20221219
x86_64               randconfig-a014-20221219
x86_64               randconfig-a015-20221219
x86_64               randconfig-a016-20221219
x86_64               randconfig-a013-20221219

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
