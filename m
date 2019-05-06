Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CBB71487D
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 May 2019 12:45:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 85B0C248F6;
	Mon,  6 May 2019 10:45:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2FNpVV3LjRlZ; Mon,  6 May 2019 10:45:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A72A224804;
	Mon,  6 May 2019 10:45:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C6E661BF95C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2019 10:44:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C2FC18731E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2019 10:44:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H2iR+5rTm-Zi for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 May 2019 10:44:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A97CB872A6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2019 10:44:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 May 2019 03:44:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,437,1549958400"; d="scan'208";a="137313144"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 06 May 2019 03:44:54 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hNb77-0005U6-DE; Mon, 06 May 2019 18:44:53 +0800
Date: Mon, 06 May 2019 18:44:21 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5cd01005.7/JcYaoQCDJSh4zY%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue] BUILD SUCCESS
 4b43437004a92a6942bc74f47e2e3e536a1c39a4
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git  dev-queue
branch HEAD: 4b43437004a92a6942bc74f47e2e3e536a1c39a4  i40e: Missing response checks in driver when starting/stopping FW LLDP

elapsed time: 108m

configs tested: 89

The following configs have been built successfully.
More configs may be tested in the coming days.

openrisc                    or1ksim_defconfig
um                             i386_defconfig
um                           x86_64_defconfig
nds32                             allnoconfig
nds32                               defconfig
c6x                        evmc6678_defconfig
h8300                    h8300h-sim_defconfig
nios2                         10m50_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
x86_64                              fedora-25
x86_64                                  kexec
x86_64                                    lkp
x86_64                                   rhel
x86_64                               rhel-7.6
riscv                             allnoconfig
riscv                               defconfig
x86_64                             acpi-redef
x86_64                           allyesdebian
x86_64                                nfsroot
sh                               allmodconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
x86_64                           allmodconfig
i386                             alldefconfig
powerpc                           allnoconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
s390                        default_defconfig
i386                   randconfig-x018-201918
i386                   randconfig-x010-201918
i386                   randconfig-x013-201918
i386                   randconfig-x017-201918
i386                   randconfig-x014-201918
i386                   randconfig-x011-201918
i386                   randconfig-x012-201918
i386                   randconfig-x016-201918
i386                   randconfig-x015-201918
i386                   randconfig-x019-201918
i386                   randconfig-x005-201918
i386                   randconfig-x001-201918
i386                   randconfig-x002-201918
i386                   randconfig-x007-201918
i386                   randconfig-x008-201918
i386                   randconfig-x004-201918
i386                   randconfig-x000-201918
i386                   randconfig-x003-201918
i386                   randconfig-x006-201918
i386                   randconfig-x009-201918
x86_64                 randconfig-x016-201918
x86_64                 randconfig-x015-201918
x86_64                 randconfig-x018-201918
x86_64                 randconfig-x013-201918
x86_64                 randconfig-x012-201918
x86_64                 randconfig-x017-201918
x86_64                 randconfig-x014-201918
x86_64                 randconfig-x010-201918
x86_64                 randconfig-x011-201918
x86_64                 randconfig-x019-201918
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
x86_64                 randconfig-x000-201918
x86_64                 randconfig-x001-201918
x86_64                 randconfig-x004-201918
x86_64                 randconfig-x008-201918
x86_64                 randconfig-x007-201918
x86_64                 randconfig-x003-201918
x86_64                 randconfig-x002-201918
x86_64                 randconfig-x005-201918
x86_64                 randconfig-x009-201918
x86_64                 randconfig-x006-201918
alpha                               defconfig
parisc                            allnoconfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
um                                  defconfig
i386                   randconfig-x070-201918
i386                   randconfig-x074-201918
i386                   randconfig-x077-201918
i386                   randconfig-x072-201918
i386                   randconfig-x071-201918
i386                   randconfig-x075-201918
i386                   randconfig-x076-201918
i386                   randconfig-x073-201918
i386                   randconfig-x078-201918
i386                   randconfig-x079-201918

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
