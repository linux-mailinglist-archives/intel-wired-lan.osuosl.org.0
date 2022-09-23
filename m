Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A8BEB5E7643
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Sep 2022 10:53:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EC5BD60B65;
	Fri, 23 Sep 2022 08:53:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EC5BD60B65
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663923231;
	bh=wRRTVDzJL3uJaWnL+9XSWocplQK6Y2Z3Mhi/qFxSYP0=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=9lXuAFT8uYX00MlyklaUv+amE5U6/DxmizI0zy+COSdv0p3Dg6z2HT0NTO5Ytzq04
	 8CS65DF5wUe+P4/sZUF8ZcrVX81JLOhIgZj7SNFEDLKNLZ9ozsveIAmlpgDP+F502b
	 uT9FNDJzWGL+xWh5eNTF+/2oIgvcpymUooZ0WWFYC5C60W9IApRDY7SZufSeW2pkjH
	 KaYLAaEgxtZJKAm3o3g8if8ud0Gv3ExCIGqv/3Hbv6jmzFeH+45144HsV54yKJ/CCO
	 J6tS9gpxphf3xE5HmBdThaVyFYJHNWsQ1r56icqkPYbDSjfrMUCkI3zAjLMS4zRlrQ
	 QpoHv89rxQArQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0A4Ad5W8Rz88; Fri, 23 Sep 2022 08:53:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C288460644;
	Fri, 23 Sep 2022 08:53:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C288460644
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5CCAE1BF2A2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 08:53:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 43EE680F59
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 08:53:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 43EE680F59
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UHOpFCTw_aVI for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Sep 2022 08:53:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6874280EC1
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6874280EC1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 08:53:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10478"; a="299269164"
X-IronPort-AV: E=Sophos;i="5.93,337,1654585200"; d="scan'208";a="299269164"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2022 01:53:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,337,1654585200"; d="scan'208";a="709232604"
Received: from lkp-server01.sh.intel.com (HELO c0a60f19fe7e) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 23 Sep 2022 01:53:42 -0700
Received: from kbuild by c0a60f19fe7e with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1obeRK-0005UI-0E;
 Fri, 23 Sep 2022 08:53:42 +0000
Date: Fri, 23 Sep 2022 16:53:10 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <632d73f6.ezWZHesWfzNFIbdF%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663923224; x=1695459224;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=wZJJnIqguiuBEbpei3kKL8CHIc7WjPDrSe4bLJmqwTQ=;
 b=juQCdLc7STYrXG4pTCYyPXwfOcfCJC58Pp4SLQW6rtSdusLENiHJ8Euc
 aiz4vrnIXap+XlRJEcTSDqkTDOmYBS0CBFLUd/khHpuJ/ovb8SID32Kj4
 MlReBXn3IY4WapBw4YdqgWpUeAuUdGKhXxda+u4XIGWJ7qsmeXR7BPsJm
 fO8isMsSleecfvrfnI7CiA3SsrMvJ2LYkg42j+cPHngblCj33xgwx3sPw
 TXFPFw1FHHlYbQVLuzfT8o1jmOkB1i8epy29ZpzE6/HOrlN40bO8u5/zd
 hMDnl50DJjDpBcRAU6qOnBujPp9RbhT90FVWW4u7QoJS3HewreHEKlpl7
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=juQCdLc7
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 c0dff452f14ef49cc052a97c06e696b91544cdc7
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
branch HEAD: c0dff452f14ef49cc052a97c06e696b91544cdc7  i40e: Fix DMA mappings leak

elapsed time: 845m

configs tested: 63
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                           x86_64_defconfig
um                             i386_defconfig
arc                  randconfig-r043-20220922
arc                                 defconfig
s390                             allmodconfig
arc                              allyesconfig
i386                                defconfig
alpha                               defconfig
i386                          randconfig-a001
alpha                            allyesconfig
i386                          randconfig-a003
m68k                             allyesconfig
s390                                defconfig
i386                          randconfig-a005
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                              defconfig
s390                             allyesconfig
x86_64                        randconfig-a006
i386                             allyesconfig
x86_64                               rhel-8.3
powerpc                          allmodconfig
mips                             allyesconfig
x86_64                        randconfig-a013
powerpc                           allnoconfig
x86_64                        randconfig-a011
sh                               allmodconfig
x86_64                        randconfig-a015
x86_64                           allyesconfig
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
ia64                             allmodconfig
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                    rhel-8.3-kselftests
m68k                             allmodconfig
x86_64                           rhel-8.3-syz
arc                               allnoconfig
alpha                             allnoconfig
csky                              allnoconfig
riscv                             allnoconfig

clang tested configs:
hexagon              randconfig-r041-20220922
hexagon              randconfig-r045-20220922
riscv                randconfig-r042-20220922
s390                 randconfig-r044-20220922
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a012
x86_64                        randconfig-a014
i386                          randconfig-a013
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a015
powerpc                 mpc832x_rdb_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
