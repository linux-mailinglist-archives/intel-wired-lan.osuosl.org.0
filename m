Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A5E568ADED
	for <lists+intel-wired-lan@lfdr.de>; Sun,  5 Feb 2023 02:29:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 58A11404ED;
	Sun,  5 Feb 2023 01:29:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 58A11404ED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675560553;
	bh=O/cLzzMJLUArdBttwoQJuqnqkc3R+KwTO+k5hVwpNo0=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=WBwkRuo16UNSZo6iSoTi1pkIgNYhFUcfm39fdQZ1cuSWynA4JsMOk3TwZSLNrJxDf
	 n4FWY9urSH5kUGc8fQE1FlDQk+C9nAGW2PQsNaygKWYJLDnvY9Erkb7nPbTaDVhkep
	 v05slsrPU8v5kDsrkpqbPTtuUSzZwfR5XxLoY+nzPepuWiPShjITElXircuqYnJFR2
	 WrKk/9XczeEGLk2nK6/gvolu2C3vz+OsvyUMHNgEiJwXC5hu9VI4LVrsrmiamKqtSq
	 bb+u18nndz8rnGzSboq4sNO4RY5YX3ECIySa43fWmgA6yChxLZ2qYYqsoHmitHcqGB
	 Nk3O+dj2KVDBA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xSdSHHbZUgO1; Sun,  5 Feb 2023 01:29:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 546CD400F8;
	Sun,  5 Feb 2023 01:29:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 546CD400F8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 121641BF33C
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 Feb 2023 01:29:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D56E560B6E
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 Feb 2023 01:29:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D56E560B6E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R_xw14KRPPal for <intel-wired-lan@lists.osuosl.org>;
 Sun,  5 Feb 2023 01:29:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BAF1060B1A
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BAF1060B1A
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 Feb 2023 01:29:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10611"; a="415225748"
X-IronPort-AV: E=Sophos;i="5.97,274,1669104000"; d="scan'208";a="415225748"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2023 17:29:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10611"; a="808744411"
X-IronPort-AV: E=Sophos;i="5.97,274,1669104000"; d="scan'208";a="808744411"
Received: from lkp-server01.sh.intel.com (HELO 4455601a8d94) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 04 Feb 2023 17:29:03 -0800
Received: from kbuild by 4455601a8d94 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pOTq2-0001dM-1l;
 Sun, 05 Feb 2023 01:29:02 +0000
Date: Sun, 05 Feb 2023 09:28:51 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63df0653.HPp1bt3wJB6uTDxr%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675560544; x=1707096544;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=vY2J7pK7qvo7IzPY53/hbEaUp0WJiK/FFfL5o83iJ+U=;
 b=MM9T3yvuyb6Kl3+hidoQgYp5KIfaDJzn0nWgDyZ/nVGZsyqXiFHMjgrN
 Ii6CyFuicvSmiAqF7gn6IUU9OiN9g1B81rh4imaaKbpzldqDYLlgG1cSs
 2w4vfCVwmIhuFu0fnWKy2gJPHKmpMpk+lNqK8UgASXWeMw8Bl8ZHB2NOY
 v83eeGnmlUOwM+3gWlyXKe42szA64599KVvRVfSCTqA2ZwECHBJ6YwSXq
 9s36eRIskpbfwL5tnxOfKXzFSbpfAHTDPolfesbDZva2lYRiNIHZEAicJ
 fH9oHDMQB4uo9xew8wVXzJdCLrtk9IQjzD28NimjfPp5f1gjC71V6ZX5y
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MM9T3yvu
Subject: [Intel-wired-lan] [tnguy-next-queue:40GbE] BUILD SUCCESS
 07ce664bb5ecfb8cb1bc99762fc787aea94a76cd
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
branch HEAD: 07ce664bb5ecfb8cb1bc99762fc787aea94a76cd  net/i40e: Replace 0-length array with flexible array

elapsed time: 1659m

configs tested: 60
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
s390                                defconfig
s390                             allyesconfig
powerpc                           allnoconfig
um                             i386_defconfig
um                           x86_64_defconfig
ia64                             allmodconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
sh                               allmodconfig
x86_64                        randconfig-a006
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allyesconfig
mips                             allyesconfig
powerpc                          allmodconfig
x86_64                           rhel-8.3-syz
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-bpf
x86_64                         rhel-8.3-kunit
x86_64                              defconfig
x86_64                               rhel-8.3
arc                  randconfig-r043-20230204
x86_64                           allyesconfig
s390                 randconfig-r044-20230204
riscv                randconfig-r042-20230204
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                                defconfig
i386                             allyesconfig
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arm                                 defconfig

clang tested configs:
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
hexagon              randconfig-r041-20230204
arm                  randconfig-r046-20230204
hexagon              randconfig-r045-20230204
x86_64                          rhel-8.3-rust
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
