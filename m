Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93C0445D5D5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Nov 2021 08:57:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B61714024C;
	Thu, 25 Nov 2021 07:57:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id REpkfX-6uobK; Thu, 25 Nov 2021 07:57:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5D9CF40018;
	Thu, 25 Nov 2021 07:57:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0FAF31BF36C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Nov 2021 07:57:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EC635405F0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Nov 2021 07:57:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w5Fes4o8N_PY for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Nov 2021 07:57:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 07DF8405EE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Nov 2021 07:57:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10178"; a="321701059"
X-IronPort-AV: E=Sophos;i="5.87,262,1631602800"; d="scan'208";a="321701059"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 23:57:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,262,1631602800"; d="scan'208";a="457312152"
Received: from lkp-server02.sh.intel.com (HELO 9e1e9f9b3bcb) ([10.239.97.151])
 by orsmga003.jf.intel.com with ESMTP; 24 Nov 2021 23:57:27 -0800
Received: from kbuild by 9e1e9f9b3bcb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mq9dG-000600-Pr; Thu, 25 Nov 2021 07:57:26 +0000
Date: Thu, 25 Nov 2021 15:57:12 +0800
From: kernel test robot <lkp@intel.com>
To: Karol Kolacinski <karol.kolacinski@intel.com>
Message-ID: <202111251527.xSdxs2Xm-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue 94/108]
 ice_gnss.c:undefined reference to `tty_buffer_request_room'
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
Cc: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, kbuild-all@lists.01.org,
 linux-kernel@vger.kernel.org,
 Sudhansu Sekhar Mishra <sudhansu.mishra@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
head:   1bc0d12c31e7e35dcb167e62c8bcde3c7c09d95d
commit: d837bf714865bcefbf83c3f4e7b886a50ecda8b1 [94/108] ice: add TTY for GNSS module for E810T device
config: arm64-buildonly-randconfig-r003-20211125 (https://download.01.org/0day-ci/archive/20211125/202111251527.xSdxs2Xm-lkp@intel.com/config)
compiler: aarch64-linux-gcc (GCC) 11.2.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git/commit/?id=d837bf714865bcefbf83c3f4e7b886a50ecda8b1
        git remote add tnguy-next-queue https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git
        git fetch --no-tags tnguy-next-queue dev-queue
        git checkout d837bf714865bcefbf83c3f4e7b886a50ecda8b1
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.2.0 make.cross O=build_dir ARCH=arm64 SHELL=/bin/bash

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   aarch64-linux-ld: Unexpected GOT/PLT entries detected!
   aarch64-linux-ld: Unexpected run-time procedure linkages detected!
   aarch64-linux-ld: drivers/net/ethernet/intel/ice/ice_gnss.o: in function `ice_gnss_read':
>> ice_gnss.c:(.text+0x204): undefined reference to `tty_buffer_request_room'
>> aarch64-linux-ld: ice_gnss.c:(.text+0x270): undefined reference to `tty_insert_flip_string_fixed_flag'
>> aarch64-linux-ld: ice_gnss.c:(.text+0x278): undefined reference to `tty_flip_buffer_push'
   aarch64-linux-ld: drivers/net/ethernet/intel/ice/ice_gnss.o: in function `ice_gnss_create_tty_driver':
>> ice_gnss.c:(.text+0x300): undefined reference to `__tty_alloc_driver'
>> aarch64-linux-ld: ice_gnss.c:(.text+0x3c0): undefined reference to `tty_std_termios'
   aarch64-linux-ld: drivers/net/ethernet/intel/ice/ice_gnss.o: relocation R_AARCH64_ADR_PREL_PG_HI21 against symbol `tty_std_termios' which may bind externally can not be used when making a shared object; recompile with -fPIC
   ice_gnss.c:(.text+0x3c0): dangerous relocation: unsupported relocation
   aarch64-linux-ld: ice_gnss.c:(.text+0x3c4): undefined reference to `tty_std_termios'
>> aarch64-linux-ld: ice_gnss.c:(.text+0x488): undefined reference to `tty_termios_encode_baud_rate'
>> aarch64-linux-ld: ice_gnss.c:(.text+0x4b4): undefined reference to `tty_port_init'
>> aarch64-linux-ld: ice_gnss.c:(.text+0x4c4): undefined reference to `tty_port_link_device'
>> aarch64-linux-ld: ice_gnss.c:(.text+0x4cc): undefined reference to `tty_register_driver'
>> aarch64-linux-ld: ice_gnss.c:(.text+0x4d8): undefined reference to `tty_port_destroy'
>> aarch64-linux-ld: ice_gnss.c:(.text+0x4f4): undefined reference to `tty_driver_kref_put'
   aarch64-linux-ld: drivers/net/ethernet/intel/ice/ice_gnss.o: in function `ice_gnss_exit':
>> ice_gnss.c:(.text+0x7b4): undefined reference to `tty_port_destroy'
>> aarch64-linux-ld: ice_gnss.c:(.text+0x7f0): undefined reference to `tty_unregister_driver'
   aarch64-linux-ld: ice_gnss.c:(.text+0x81c): undefined reference to `tty_driver_kref_put'

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
