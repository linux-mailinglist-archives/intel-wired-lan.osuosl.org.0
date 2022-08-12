Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C23A590B27
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Aug 2022 06:27:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B7B0B418DD;
	Fri, 12 Aug 2022 04:27:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B7B0B418DD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660278466;
	bh=JItQYWo76B4pPzD3/D56BwKOQFYcIs6noqo00hK3K3k=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ExmdYydMsjasjBbFWF0fpEQAELpu0iOCig0WbPY/iYQoBUGcyzrP24cACwR/i4nfH
	 sKdgx0kHYunFnqPpjhw1hPS2/w3F9l4+KV+Ak57wSQy6ZLr8C0Fq/pWNCHRUORIn6h
	 GMI+YzxSF3RXyjD4t4wLXWDWNzF5SM0ZrqjKwCIiD4mauhrfHG3wKm9zqvpZ+vpx1n
	 jqIzpz5lgfvLu7QW6Wu95WSiNd8ZVBfHTBqbX/oH1QXHasOOwoA0YNqoeg1xj2izaM
	 gQJxS4RJDJS5oQPrI2JGaE/7MJ4QNSRqS97zDI9JYsO1t1f3Dspu3klqQkL5tdYqZw
	 Ej+xUOlUNgAcQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z-gr-v1EK6AX; Fri, 12 Aug 2022 04:27:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4A28F418DC;
	Fri, 12 Aug 2022 04:27:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4A28F418DC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CAE771C11A5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Aug 2022 04:27:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A25EF418DC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Aug 2022 04:27:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A25EF418DC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sz0Mv8_Zg4mM for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Aug 2022 04:27:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 74D2F418D9
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 74D2F418D9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Aug 2022 04:27:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="291519164"
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="291519164"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 21:27:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="732106874"
Received: from lkp-server02.sh.intel.com (HELO 8745164cafc7) ([10.239.97.151])
 by orsmga004.jf.intel.com with ESMTP; 11 Aug 2022 21:27:31 -0700
Received: from kbuild by 8745164cafc7 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oMMGh-00008h-0S;
 Fri, 12 Aug 2022 04:27:31 +0000
Date: Fri, 12 Aug 2022 12:27:17 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62f5d6a5.ORK6o8ULhDyHU6C5%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660278453; x=1691814453;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=g7KkLmN+jZ7HGXaROUnAKC/4m/owwFkwm/PjlvnL3wQ=;
 b=KALf1RTLjA/0K7YhixHq2mGNcrpfPcHovlgRQQYgU243SnyMspj53tj5
 nPEgdtl3Weom9xKyBayCjWL0K3QQ2NyAn2Gqv5mwGPdkSRjj66qmJ6c64
 rQ68f7S1phUp7+t5SUpU95X7YgwAw1f0U3+5wlN79F9Z+2FyJRruwSf0O
 I8BqLiT6Nq3One/0Ljb38J9ExsumXAFWVGyAjbGnKIzg1o4+zbOl4x/cj
 cY1wKiSfKywZcxnDahrv686Jy67oPzswBZialYNPTF1VBzFvCwYtG08DZ
 gZb83K+J6MeqNUNYXefL04l0aCOAltZUZa9eaxAwIeDCNmHqO5iVxtE9I
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KALf1RTL
Subject: [Intel-wired-lan] [tnguy-net-queue:100GbE] BUILD SUCCESS
 cf90b74341eecc32ceef0c136954a1668e43b1e7
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 100GbE
branch HEAD: cf90b74341eecc32ceef0c136954a1668e43b1e7  ice: Fix call trace with null VSI during VF reset

elapsed time: 717m

configs tested: 69
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                           x86_64_defconfig
um                             i386_defconfig
powerpc                          allmodconfig
mips                             allyesconfig
powerpc                           allnoconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
sh                               allmodconfig
m68k                             allyesconfig
i386                                defconfig
i386                             allyesconfig
arc                  randconfig-r043-20220811
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
i386                          randconfig-a001
i386                          randconfig-a003
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                               rhel-8.3
x86_64                        randconfig-a006
i386                          randconfig-a005
arm                                 defconfig
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
arm64                            allyesconfig
x86_64                         rhel-8.3-kunit
arm                              allyesconfig
x86_64                           rhel-8.3-syz
x86_64                           rhel-8.3-kvm
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
loongarch                           defconfig
loongarch                         allnoconfig
xtensa                  cadence_csp_defconfig
arm64                            alldefconfig
ia64                            zx1_defconfig
i386                          randconfig-c001
sh                   secureedge5410_defconfig
sh                          rsk7264_defconfig
m68k                       m5475evb_defconfig
sh                        sh7757lcr_defconfig

clang tested configs:
hexagon              randconfig-r045-20220811
hexagon              randconfig-r041-20220811
riscv                randconfig-r042-20220811
s390                 randconfig-r044-20220811
i386                          randconfig-a013
i386                          randconfig-a015
i386                          randconfig-a011
i386                          randconfig-a002
i386                          randconfig-a004
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a006
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64                        randconfig-k001
powerpc                 xes_mpc85xx_defconfig
arm                   milbeaut_m10v_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
