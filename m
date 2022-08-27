Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 85EAB5A3599
	for <lists+intel-wired-lan@lfdr.de>; Sat, 27 Aug 2022 09:30:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 653184175E;
	Sat, 27 Aug 2022 07:30:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 653184175E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661585400;
	bh=Tv6/MhdEtqzGFxoTF2rNx48pg3uYQq651Fy6t+/Pg2I=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=J8Og5fy1vCBeDZJa+hm2RsBizKH7GRoAzGyT3ydZ07oCdDJSNxtNAQMhhI1LqFadR
	 YySS2a8dnxxsol3XGynuhd+RslQPZS4m2AXU7DNAvmWboILc7UvYNrKdBnCqlajfZV
	 g2bNCLXF4BBLw3LFS+zELwrTXVfCt/aiWC0RPumNKQiRbFfSZ1cQIbU7xMa5EjCfBI
	 +9DDhtuWkPyI9WrlGZWKFYUQGHbfT15wpyd7gAqUDniQcV67fcYEMC65vHI5t3UgKL
	 56bqvCoLl4q+8qfaeoi6ZGRG6PIWxDQxFTH3MjG0x8wKs7lrmVGl7mRSRH9BEmoU/C
	 GOdzyM+wxFw6w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3dDNDrnsc1RY; Sat, 27 Aug 2022 07:29:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CDB464175C;
	Sat, 27 Aug 2022 07:29:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CDB464175C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 736301BF853
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Aug 2022 07:29:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4C0BD40144
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Aug 2022 07:29:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4C0BD40144
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6cohr1QXe5md for <intel-wired-lan@lists.osuosl.org>;
 Sat, 27 Aug 2022 07:29:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2A4CE40017
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2A4CE40017
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Aug 2022 07:29:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10451"; a="320756891"
X-IronPort-AV: E=Sophos;i="5.93,267,1654585200"; d="scan'208";a="320756891"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2022 00:29:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,267,1654585200"; d="scan'208";a="640330810"
Received: from lkp-server01.sh.intel.com (HELO 71b0d3b5b1bc) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 27 Aug 2022 00:29:41 -0700
Received: from kbuild by 71b0d3b5b1bc with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oRqGD-000167-0m;
 Sat, 27 Aug 2022 07:29:41 +0000
Date: Sat, 27 Aug 2022 15:29:09 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6309c7c5.ld4JO2Pk9HNg9ulC%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661585392; x=1693121392;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=aRA6NoiEIE2J83F0yc1lh7ph56ulMqiV8vv7UJiXDok=;
 b=ak3V3hc/GGQZx0PDxwa1cm0nBY/uOQKfnuJD0NIJLwi+X1EE9KrMfhox
 CME1i17uGOYvHRBwvmB6EbgNi7lZMZv04gaU2zH3DUvShrisgpjoMSYjK
 SCDnYqHyeSzij73eIwGuMU1pZfH4MjtzL1YN92pHHfkSxgzYZC05bLHoZ
 zAuMiNo1YBcS1xp6xjEGiMRPgHJCCwv/kiObgrA3aCPtjKMsSd6Yvd/vZ
 BUnO83HZYeXet4Dt1cci5ffctfElfPnKixCZ6SCecDTTh1/F3xbUiar0L
 rZLRl3YbBk68H2HUBkDKnXgg382y15mJZxwQyMHh/4fcy95TZ6khy/SaG
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ak3V3hc/
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 ed92b8cc9c6f634db556c973260c15782bb96adc
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
branch HEAD: ed92b8cc9c6f634db556c973260c15782bb96adc  ice: add helper function to check FW API version

elapsed time: 724m

configs tested: 111
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
loongarch                         allnoconfig
um                             i386_defconfig
um                           x86_64_defconfig
loongarch                           defconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
i386                                defconfig
s390                                defconfig
x86_64                              defconfig
s390                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
x86_64                               rhel-8.3
arm                                 defconfig
alpha                            allyesconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a013
x86_64                           allyesconfig
i386                             allyesconfig
powerpc                           allnoconfig
x86_64                        randconfig-a011
i386                          randconfig-a001
m68k                             allyesconfig
mips                             allyesconfig
x86_64                        randconfig-a015
x86_64                        randconfig-a002
i386                          randconfig-a003
powerpc                          allmodconfig
i386                          randconfig-a005
sh                               allmodconfig
i386                          randconfig-a014
x86_64                          rhel-8.3-func
x86_64                        randconfig-a006
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                    rhel-8.3-kselftests
i386                          randconfig-a012
x86_64                           rhel-8.3-syz
arc                  randconfig-r043-20220824
riscv                randconfig-r042-20220824
i386                          randconfig-a016
s390                 randconfig-r044-20220826
s390                 randconfig-r044-20220824
arm                              allyesconfig
arc                  randconfig-r043-20220823
arm64                            allyesconfig
riscv                randconfig-r042-20220826
arc                  randconfig-r043-20220826
arc                  randconfig-r043-20220825
parisc                              defconfig
nios2                               defconfig
nios2                            allyesconfig
parisc64                            defconfig
parisc                           allyesconfig
riscv                            allmodconfig
powerpc                          allyesconfig
riscv                            allyesconfig
riscv                               defconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
ia64                             allmodconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
sh                          rsk7203_defconfig
parisc                generic-32bit_defconfig
arm                            xcep_defconfig
openrisc                  or1klitex_defconfig
ia64                            zx1_defconfig

clang tested configs:
i386                          randconfig-a013
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64                        randconfig-a012
i386                          randconfig-a015
x86_64                        randconfig-a005
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a001
hexagon              randconfig-r041-20220825
hexagon              randconfig-r041-20220823
x86_64                        randconfig-a003
i386                          randconfig-a011
hexagon              randconfig-r045-20220825
hexagon              randconfig-r041-20220824
hexagon              randconfig-r045-20220824
s390                 randconfig-r044-20220823
hexagon              randconfig-r045-20220826
hexagon              randconfig-r041-20220826
riscv                randconfig-r042-20220825
s390                 randconfig-r044-20220825
riscv                randconfig-r042-20220823
hexagon              randconfig-r045-20220823
powerpc                      obs600_defconfig
arm                                 defconfig
arm                         bcm2835_defconfig
hexagon              randconfig-r045-20220827
riscv                randconfig-r042-20220827
hexagon              randconfig-r041-20220827
s390                 randconfig-r044-20220827
arm                           sama7_defconfig
riscv                            alldefconfig
arm                         mv78xx0_defconfig
x86_64                        randconfig-k001

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
