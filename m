Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0D5661D953
	for <lists+intel-wired-lan@lfdr.de>; Sat,  5 Nov 2022 11:13:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3F3014049F;
	Sat,  5 Nov 2022 10:13:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3F3014049F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667643216;
	bh=nzsO0KzqxlCyowD/98wimARasyys4plKopeEK9ABd48=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=PQS+Nma4W0dksKqN0wg2ImvTmPea9xsPOyDY8u3wavGMr0WfQNS2hDzXvxS22nXsa
	 9BbcVQ//av8H50La//E3Ci5gvl8F3gN9kYG4XYt2UDn14qdNaW3ATcWWYwpKGU2I0d
	 bs/HL/igkQ+aEA5uBqEG0zkbs+mzAct2UD33tbZXS382sZbuWUuqVOgXGafcx26Nww
	 luE9cikRIzhLA8NU4wt4EZCjECqvAJXAbvXuJJF/3tqV6PYjr3w8hyBc+82XMjS0UO
	 YC6pUbOSBWsTvFB6A/rsLZoCDztzRgK2A/EdL0C7FQTNIKtmSdFA9PVIM+2vZVdbSC
	 tM3QfMkSLObNw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LXDHHQzU6s12; Sat,  5 Nov 2022 10:13:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3CDDA402F6;
	Sat,  5 Nov 2022 10:13:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3CDDA402F6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A58B41BF330
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Nov 2022 10:13:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7B344418A9
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Nov 2022 10:13:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7B344418A9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id haUbsBsSOFBf for <intel-wired-lan@lists.osuosl.org>;
 Sat,  5 Nov 2022 10:13:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7AC9D418A7
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7AC9D418A7
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Nov 2022 10:13:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10521"; a="310154166"
X-IronPort-AV: E=Sophos;i="5.96,140,1665471600"; d="scan'208";a="310154166"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2022 03:13:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10521"; a="586452732"
X-IronPort-AV: E=Sophos;i="5.96,140,1665471600"; d="scan'208";a="586452732"
Received: from lkp-server02.sh.intel.com (HELO b6d29c1a0365) ([10.239.97.151])
 by orsmga003.jf.intel.com with ESMTP; 05 Nov 2022 03:13:24 -0700
Received: from kbuild by b6d29c1a0365 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1orGB1-000HtF-31;
 Sat, 05 Nov 2022 10:13:23 +0000
Date: Sat, 05 Nov 2022 18:13:01 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6366372d.o2ee6Tpe/IdF5Q9t%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667643206; x=1699179206;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=ecMC2SLiUQQjnccIEB9g/LTMT6SmgjairpAOTzDCGzQ=;
 b=ifexEBKY0ozvakzq8/E5OVHG5PzCv5yjoN25MD8B9T3IQqJ8PjtoNI4t
 MmCae4VaJ6ZpWIjVEt+H7AV7WU3hky1IRUQczrhArM09/E2brIp3PxuVQ
 1NtxLhktP3E4R/1GweB04VzsyKOUlTPtJjd7YpUslXXD4QcK92mufrK3T
 dCg3TtFEgxMcBISNFueOxt5piABto6Nt0cnPlkODEVIq6jTaB4UZVlj7Y
 b+hwG0rSmZ5xy5DwTdI1WmnCYYMq0OpEi44RqN8eLakdSHt9y4gcyPFAy
 XoxJq6qxlzJUeNSFJqeYYQvkd40HDWH7abQ1oxwSIvPcbd/b1xorE2z5i
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ifexEBKY
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 658a5d5bd35ada45560dbb360ad777ec1a4e0f70
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
branch HEAD: 658a5d5bd35ada45560dbb360ad777ec1a4e0f70  igc: Enhance Qbv scheduling by using first flag bit

elapsed time: 724m

configs tested: 58
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
powerpc                           allnoconfig
sh                               allmodconfig
mips                             allyesconfig
powerpc                          allmodconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                               rhel-8.3
arc                                 defconfig
ia64                             allmodconfig
x86_64                              defconfig
s390                             allmodconfig
x86_64                           allyesconfig
x86_64                        randconfig-a013
alpha                               defconfig
x86_64                        randconfig-a011
x86_64                        randconfig-a015
s390                                defconfig
i386                                defconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
s390                             allyesconfig
alpha                            allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
arc                  randconfig-r043-20221104
arm                                 defconfig
riscv                randconfig-r042-20221104
i386                             allyesconfig
s390                 randconfig-r044-20221104
i386                          randconfig-a012
arm64                            allyesconfig
arm                              allyesconfig
i386                          randconfig-a014
i386                          randconfig-a016

clang tested configs:
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a016
x86_64                        randconfig-a012
x86_64                        randconfig-a014
hexagon              randconfig-r041-20221104
hexagon              randconfig-r045-20221104
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
