Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 09171619473
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Nov 2022 11:30:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 88C7D6108C;
	Fri,  4 Nov 2022 10:30:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 88C7D6108C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667557820;
	bh=l5awV81+RCHyIWDuCBSIDB5IXWycccagE6dsYxLtoMY=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ZfMKffY2uibsdxXmqmKayXIcilmilVST3N0B74XL5p2n0Kam01QIEynf0QE0/wTuc
	 n4GR0pwY72EhxjSHKjbzQwSI8+3mh3O1YeMbyIUJT6lodsOPF9uSytIZB4n8hqZFR1
	 sIdYUNr1fwzOLJbf/goGXiBr4u/CI55RtB4r1qCsZYwMl7eoEmC0ZAVJ5CGsvCzgO1
	 wgLxfixbCcj1roolIr1OV3ysUocvY54ZOCL4OdwcUKCKy2IVs/qQWehd8he4bBPqBr
	 iVvAvSoY5tKeuWTcF9aAfWBbQ0dwlo9/y7aa8NK2O6LneEcNMSPN4aapAiGVV84Y/5
	 tzP59+XLpVKzA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KCSPr7CR9gUu; Fri,  4 Nov 2022 10:30:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8463361082;
	Fri,  4 Nov 2022 10:30:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8463361082
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 749061BF32D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Nov 2022 10:30:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4EC8081DED
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Nov 2022 10:30:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4EC8081DED
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BAjFk61FS7h7 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Nov 2022 10:30:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 64BC681CE1
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 64BC681CE1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Nov 2022 10:30:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="290323849"
X-IronPort-AV: E=Sophos;i="5.96,137,1665471600"; d="scan'208";a="290323849"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2022 03:30:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="668315420"
X-IronPort-AV: E=Sophos;i="5.96,137,1665471600"; d="scan'208";a="668315420"
Received: from lkp-server02.sh.intel.com (HELO b6d29c1a0365) ([10.239.97.151])
 by orsmga001.jf.intel.com with ESMTP; 04 Nov 2022 03:30:11 -0700
Received: from kbuild by b6d29c1a0365 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oqtxi-000Gt3-2Y;
 Fri, 04 Nov 2022 10:30:10 +0000
Date: Fri, 04 Nov 2022 18:29:26 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6364e986.hTB5ZOEYXOx9fflI%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667557813; x=1699093813;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=RK3+qg8YsFfU1ZVDrPbkLoPSp7MQMsVZIFNM2ExQNrg=;
 b=Cb3guXLoKEMzB52O5g154Gph5QknvCdFohXpPO5alhImhVxo8ca4JGvV
 HwOe0uIJVPLP5RxbBXyCy5OadzsJzfp1WJXVeGqTLiq/0Rtk+N197FFQ1
 /Hw9WK9GwVIKV8mqYAmb6AduAfncMcp8D8CmGxc+jxLTXoBFxcC0OvTxG
 n16xa3Bd85knqLecO6vOB2eyXPEx7cjUV+oHQhtK3aQrGXHZcKfqmDT5f
 5weGAZ75rD3n/IqnJgFPQ8AWfLWr8Nq3BFhAuhQrCjMg0nJhPXU2svzT+
 ahe5QeJjm4cGqHo+teNG+4iYmrvB58+kw49Yx+UmNdG8Zelxt7e/+Y4yy
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Cb3guXLo
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 3dc9177ae14bcfb25e4a7d133b9dd8e928ed5050
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
branch HEAD: 3dc9177ae14bcfb25e4a7d133b9dd8e928ed5050  iavf: Fix race condition between iavf_shutdown and iavf_remove

elapsed time: 724m

configs tested: 52
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                                 defconfig
alpha                               defconfig
s390                                defconfig
s390                             allmodconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-kvm
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-syz
s390                             allyesconfig
x86_64                        randconfig-a002
ia64                             allmodconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
arc                  randconfig-r043-20221102
s390                 randconfig-r044-20221102
x86_64                              defconfig
riscv                randconfig-r042-20221102
x86_64                        randconfig-a004
x86_64                        randconfig-a006
i386                                defconfig
alpha                            allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
powerpc                           allnoconfig
arc                              allyesconfig
mips                             allyesconfig
x86_64                               rhel-8.3
powerpc                          allmodconfig
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
x86_64                           allyesconfig
sh                               allmodconfig
arm                                 defconfig
i386                             allyesconfig
arm                              allyesconfig
arm64                            allyesconfig

clang tested configs:
x86_64                        randconfig-a001
x86_64                        randconfig-a003
i386                          randconfig-a002
hexagon              randconfig-r041-20221102
x86_64                        randconfig-a005
hexagon              randconfig-r045-20221102
i386                          randconfig-a004
i386                          randconfig-a006
i386                          randconfig-a013
i386                          randconfig-a011
x86_64                        randconfig-a016

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
