Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 93AF458F73E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Aug 2022 07:23:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 80B6782A29;
	Thu, 11 Aug 2022 05:23:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 80B6782A29
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660195425;
	bh=ZgIzo1Y900LxHiHAVrl5Fiib34GvBiHCP0rd9tYbwmc=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Tv6MJvC65Uby0kaTylo5WFNY5bUF8OIY7xJpr4n+UAyV0qBbeWNBuK/mwra+sUumG
	 v5fCMxiF7+yubADnC+jO0zuAf212tBpHCQeicS2AMlOd2C5LusT1SLIGHKYm3RaFs1
	 TddSHMDtlxDuYFvP+CC2Gr+BUPfpNRjPytDq8iYgn6lWxp0l86AMzVhmR9V5qV3tRv
	 s+/Sivi0lHG3a/S7K8s9rgy5puYgxiauEmB13fWTfAjZpzX6kKFu/+TcxdKSNOZlGP
	 61IIR9MoHyQZvXNxfKjo0b5Ecmm0StL8RhYMS5dbTNe6mfRgC3eOjio+qjZi7mKo3w
	 KCkgImacj7IUw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bQgcxg2mkBDC; Thu, 11 Aug 2022 05:23:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 76E0982894;
	Thu, 11 Aug 2022 05:23:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 76E0982894
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 088AD1BF94B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 05:23:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E244A408B1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 05:23:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E244A408B1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lgrciBJ3KHeG for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Aug 2022 05:23:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 984E440C5B
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 984E440C5B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 05:23:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10435"; a="355264348"
X-IronPort-AV: E=Sophos;i="5.93,228,1654585200"; d="scan'208";a="355264348"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2022 22:23:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,228,1654585200"; d="scan'208";a="556002194"
Received: from lkp-server02.sh.intel.com (HELO d10ab0927833) ([10.239.97.151])
 by orsmga003.jf.intel.com with ESMTP; 10 Aug 2022 22:23:34 -0700
Received: from kbuild by d10ab0927833 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oM0fO-000015-0m;
 Thu, 11 Aug 2022 05:23:34 +0000
Date: Thu, 11 Aug 2022 13:23:18 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62f49246.uDuWoyBudnKv2f5h%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660195418; x=1691731418;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=20fEgcAJaZXCXCom3BAXae2x2vugX3AWo+xS/zRaM5g=;
 b=eK5F0WVUmpIZFys2iijNVKrDIn8MeLqlbGUdCyL59fPv40ZES7JDii0b
 0pY/7ih/axd3pETKkaAkjzsM9nPJ+vsvNNijEmB8o8pAtY5PBhnbbMWeB
 tsfW2HAJLV8MU4eT5vyLuq9JYT0L4uT4ePgrr2IcVKIh+s0SgwcIpY+RE
 kcKeUrq65+7um3B6Z6GPXCNBIlZnACXQ4XGpbdkBGj78/l1hg+N+yJUHm
 Xb4RprTvU6pgbVABKWWKi0XlH67UrL3sS9pYtrG+2L/FXeEx6XMc67hXT
 f0D7kYDheJz2uvaAIe/hT0Dqp5NL6BCacjc3Tgwyh6hkvhhUMVfc6dGbr
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eK5F0WVU
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 ae686257461247cfe33bcbfc62c9c084bc46d721
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
branch HEAD: ae686257461247cfe33bcbfc62c9c084bc46d721  ice: Don't double unplug aux on peer initiated reset

elapsed time: 715m

configs tested: 53
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
i386                                defconfig
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a004
x86_64                        randconfig-a015
arc                  randconfig-r043-20220810
x86_64                        randconfig-a002
i386                             allyesconfig
s390                 randconfig-r044-20220810
x86_64                              defconfig
i386                          randconfig-a014
riscv                randconfig-r042-20220810
x86_64                        randconfig-a006
m68k                             allmodconfig
i386                          randconfig-a012
arm                                 defconfig
x86_64                           allyesconfig
arc                              allyesconfig
i386                          randconfig-a016
alpha                            allyesconfig
x86_64                               rhel-8.3
ia64                             allmodconfig
m68k                             allyesconfig
arm64                            allyesconfig
arm                              allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
x86_64                           rhel-8.3-syz
sh                               allmodconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005

clang tested configs:
x86_64                        randconfig-a014
x86_64                        randconfig-a012
x86_64                        randconfig-a016
hexagon              randconfig-r041-20220810
x86_64                        randconfig-a005
i386                          randconfig-a013
hexagon              randconfig-r045-20220810
x86_64                        randconfig-a001
i386                          randconfig-a011
x86_64                        randconfig-a003
i386                          randconfig-a015
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
