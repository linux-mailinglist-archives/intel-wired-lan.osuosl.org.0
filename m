Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E99605B8910
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Sep 2022 15:23:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 243A340BF5;
	Wed, 14 Sep 2022 13:23:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 243A340BF5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663161796;
	bh=MDxdcw5pfXREM/LaKoUwTugYArLMkRUZf84DSKxAHDs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=1uC8kmBsqj2H9MxmgSF3ziVr5Z8xiWjneVPBnxNe00+RgWGux++/7TV0efmblRwxM
	 UG0sgszDx4K9Sz0JqvpVjxJdgGXL9CSw0UFIRWJMRTY0hm19b6c0BNUp+5AqiXOX61
	 AywBWK1CxWzBNl91/VH9IMXYEVrX0UtHiY0neW59N1ZD9PI1zey28/WRx59A8pqv2u
	 OLFuOl0dr0I5wi1Fn4a7jigh8Vf15hlUFHEJ9wtHf7R3zis3kbSG1yP24nhatCI4uI
	 wgejtdaYfZwRlpib3QezwC2kuiOeyTlaAeG+1uQoT/kPDIoMFLp7cSvm+wcv8slFRq
	 G+UgYW3I+cbqA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZgRwbzR17Aos; Wed, 14 Sep 2022 13:23:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D7BFE40BEB;
	Wed, 14 Sep 2022 13:23:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D7BFE40BEB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6EFAB1BF3BA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Sep 2022 13:23:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3367C81D3A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Sep 2022 13:23:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3367C81D3A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w7e69Yz0-88s for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Sep 2022 13:23:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1A9BA81C40
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1A9BA81C40
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Sep 2022 13:23:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="281458358"
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="281458358"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 06:23:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="568008715"
Received: from lkp-server01.sh.intel.com (HELO d6e6b7c4e5a2) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 14 Sep 2022 06:23:05 -0700
Received: from kbuild by d6e6b7c4e5a2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oYSM4-0000Ec-26;
 Wed, 14 Sep 2022 13:23:04 +0000
Date: Wed, 14 Sep 2022 21:22:20 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6321d58c.VpYf6BlodGagyEU+%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663161787; x=1694697787;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=azFQWcp2O8/8m6MOP+XHeaq13bfKgvxg4MGQoprBWPw=;
 b=iWezZ+eZdbW4CgLbpK7R8NKy7tOv8D33m/nNZ5cnYtvhBWskXd71RwOf
 sf4WNk0VZUVr4pfFuqlNEUH0kB+ONuIXxHU/722zANnfDGhLHrRyp+965
 1AVaFXkxukTtQJl5cTXx/4ZNcBrbydL9rq+SGwYbhMyPkHPYfCH7tbEoz
 8A6wKwbFqBf0O+mNbGwbQol/n5Cz8drpWsUcQdYhAp/Q46NOCS26QweoR
 6uj54lNpCdVV6F3i7SQ3KmANkrkTCoQoV182t6jpRxsTCbWyR/0AXfcAa
 bJ8U/+ZDW1a10z3WhiNtNSXZlpvSTpHq8G3YNnXbe3tlVksDEecqB/iyh
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iWezZ+eZ
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 189a79207ab4e0e7e5566551bdad49fae944bb1a
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
branch HEAD: 189a79207ab4e0e7e5566551bdad49fae944bb1a  i40e: Add appropriate error message logged for incorrect duplex setting

elapsed time: 727m

configs tested: 58
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
i386                                defconfig
i386                 randconfig-a001-20220912
i386                 randconfig-a002-20220912
i386                 randconfig-a003-20220912
powerpc                           allnoconfig
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
arm                                 defconfig
x86_64                         rhel-8.3-kunit
i386                 randconfig-a005-20220912
x86_64                           rhel-8.3-kvm
i386                 randconfig-a004-20220912
x86_64                           rhel-8.3-syz
i386                 randconfig-a006-20220912
x86_64               randconfig-a001-20220912
x86_64               randconfig-a002-20220912
x86_64               randconfig-a003-20220912
m68k                             allmodconfig
x86_64                              defconfig
arm64                            allyesconfig
x86_64               randconfig-a004-20220912
riscv                randconfig-r042-20220911
i386                             allyesconfig
arm                              allyesconfig
x86_64                           allyesconfig
x86_64               randconfig-a005-20220912
arc                  randconfig-r043-20220912
x86_64               randconfig-a006-20220912
x86_64                               rhel-8.3
arc                              allyesconfig
arc                  randconfig-r043-20220911
sh                               allmodconfig
s390                 randconfig-r044-20220911
mips                             allyesconfig
powerpc                          allmodconfig
m68k                             allyesconfig
alpha                            allyesconfig
ia64                             allmodconfig

clang tested configs:
x86_64               randconfig-a011-20220912
i386                 randconfig-a013-20220912
x86_64               randconfig-a012-20220912
hexagon              randconfig-r041-20220912
i386                 randconfig-a011-20220912
x86_64               randconfig-a013-20220912
hexagon              randconfig-r045-20220911
i386                 randconfig-a012-20220912
x86_64               randconfig-a014-20220912
i386                 randconfig-a014-20220912
x86_64               randconfig-a016-20220912
hexagon              randconfig-r041-20220911
i386                 randconfig-a015-20220912
hexagon              randconfig-r045-20220912
x86_64               randconfig-a015-20220912
s390                 randconfig-r044-20220912
riscv                randconfig-r042-20220912
i386                 randconfig-a016-20220912

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
