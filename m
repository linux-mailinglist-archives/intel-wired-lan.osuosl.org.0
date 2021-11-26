Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C759A45F019
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Nov 2021 15:46:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3451682A95;
	Fri, 26 Nov 2021 14:46:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZsV9OE_AGqI3; Fri, 26 Nov 2021 14:46:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 362388293D;
	Fri, 26 Nov 2021 14:46:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 231591BF844
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Nov 2021 14:46:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0F1734021A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Nov 2021 14:46:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w43JrExidWBW for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Nov 2021 14:46:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1549A40336
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Nov 2021 14:46:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10179"; a="234405073"
X-IronPort-AV: E=Sophos;i="5.87,266,1631602800"; d="scan'208";a="234405073"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2021 06:46:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,266,1631602800"; d="scan'208";a="539267157"
Received: from lkp-server02.sh.intel.com (HELO 9e1e9f9b3bcb) ([10.239.97.151])
 by orsmga001.jf.intel.com with ESMTP; 26 Nov 2021 06:46:05 -0800
Received: from kbuild by 9e1e9f9b3bcb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mqcUH-0008Fx-4H; Fri, 26 Nov 2021 14:46:05 +0000
Date: Fri, 26 Nov 2021 22:45:59 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <61a0f327.yzRGavxJ7WKkXxHo%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD REGRESSION
 1bc0d12c31e7e35dcb167e62c8bcde3c7c09d95d
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
branch HEAD: 1bc0d12c31e7e35dcb167e62c8bcde3c7c09d95d  ixgbevf: switch to napi_build_skb()

Error/Warning reports:

https://lore.kernel.org/lkml/202111251527.xSdxs2Xm-lkp@intel.com

possible Error/Warning in current branch (please contact us if interested):

aarch64-linux-ld: ice_gnss.c:(.text+0x270): undefined reference to `tty_insert_flip_string_fixed_flag'
aarch64-linux-ld: ice_gnss.c:(.text+0x278): undefined reference to `tty_flip_buffer_push'
aarch64-linux-ld: ice_gnss.c:(.text+0x3c0): undefined reference to `tty_std_termios'
aarch64-linux-ld: ice_gnss.c:(.text+0x488): undefined reference to `tty_termios_encode_baud_rate'
aarch64-linux-ld: ice_gnss.c:(.text+0x4b4): undefined reference to `tty_port_init'
aarch64-linux-ld: ice_gnss.c:(.text+0x4c4): undefined reference to `tty_port_link_device'
aarch64-linux-ld: ice_gnss.c:(.text+0x4cc): undefined reference to `tty_register_driver'
aarch64-linux-ld: ice_gnss.c:(.text+0x4d8): undefined reference to `tty_port_destroy'
aarch64-linux-ld: ice_gnss.c:(.text+0x4f4): undefined reference to `tty_driver_kref_put'
aarch64-linux-ld: ice_gnss.c:(.text+0x7f0): undefined reference to `tty_unregister_driver'
ice_gnss.c:(.text+0x204): undefined reference to `tty_buffer_request_room'
ice_gnss.c:(.text+0x300): undefined reference to `__tty_alloc_driver'
ice_gnss.c:(.text+0x7b4): undefined reference to `tty_port_destroy'

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
`-- arm64-buildonly-randconfig-r003-20211125
    |-- aarch64-linux-ld:ice_gnss.c:(.text):undefined-reference-to-tty_driver_kref_put
    |-- aarch64-linux-ld:ice_gnss.c:(.text):undefined-reference-to-tty_flip_buffer_push
    |-- aarch64-linux-ld:ice_gnss.c:(.text):undefined-reference-to-tty_insert_flip_string_fixed_flag
    |-- aarch64-linux-ld:ice_gnss.c:(.text):undefined-reference-to-tty_port_destroy
    |-- aarch64-linux-ld:ice_gnss.c:(.text):undefined-reference-to-tty_port_init
    |-- aarch64-linux-ld:ice_gnss.c:(.text):undefined-reference-to-tty_port_link_device
    |-- aarch64-linux-ld:ice_gnss.c:(.text):undefined-reference-to-tty_register_driver
    |-- aarch64-linux-ld:ice_gnss.c:(.text):undefined-reference-to-tty_std_termios
    |-- aarch64-linux-ld:ice_gnss.c:(.text):undefined-reference-to-tty_termios_encode_baud_rate
    |-- aarch64-linux-ld:ice_gnss.c:(.text):undefined-reference-to-tty_unregister_driver
    |-- ice_gnss.c:(.text):undefined-reference-to-__tty_alloc_driver
    |-- ice_gnss.c:(.text):undefined-reference-to-tty_buffer_request_room
    `-- ice_gnss.c:(.text):undefined-reference-to-tty_port_destroy

elapsed time: 2687m

configs tested: 59
configs skipped: 3

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
arm                              allmodconfig
arm64                               defconfig
i386                 randconfig-c001-20211125
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                             allyesconfig
s390                                defconfig
sparc                            allyesconfig
sparc                               defconfig
i386                             allyesconfig
i386                                defconfig
i386                              debian-10.3
mips                             allmodconfig
mips                             allyesconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
arc                  randconfig-r043-20211124
riscv                randconfig-r042-20211124
s390                 randconfig-r044-20211124
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                                  kexec
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests

clang tested configs:
hexagon              randconfig-r045-20211124
hexagon              randconfig-r041-20211124

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
