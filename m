Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 751CD6BF81F
	for <lists+intel-wired-lan@lfdr.de>; Sat, 18 Mar 2023 06:46:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A22C960C18;
	Sat, 18 Mar 2023 05:46:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A22C960C18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679118405;
	bh=rylW5cvr0pqPM70gyYNBJEjJKdJmk+aABP8+Yc0gGKA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=RRLe5h6/Aebhz55uEWbPY8Z6js3QV059gOfoEmK4m534YEPYTFZSQ8ry3+P3dvKD7
	 SwyV1oW9UlEizx2XoikPFp9FrJa4/OMoW76J7btlU7U9A1aqs/BJrBEwrGkPnVlppO
	 XoDkInHTKq5ooCG8V1j6WtRKE4ES2s4u3jI10AHAD5pYj6ZJrXWm5M7br0c73NnO7S
	 QjidVuq76Aw7rmvCdwi8RoyIkRTKt9Kjm5qgrgJZsotOplc3CaIeD33BULMEFE8Had
	 iabUBtgy/4Y9ZPrcqadd0zwL5E4XOqDMDFfAqUNwoIdwnLNAD5w2DCluLlW5Kl9Nrd
	 Mue+Xjr7NUzOg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IXKbQdpsrNnF; Sat, 18 Mar 2023 05:46:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6ECDD60BFF;
	Sat, 18 Mar 2023 05:46:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6ECDD60BFF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 085B71BF383
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Mar 2023 05:46:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E135960BFF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Mar 2023 05:46:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E135960BFF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2UZxxJ48CZT1 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 18 Mar 2023 05:46:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A787360BAE
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A787360BAE
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Mar 2023 05:46:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="424685484"
X-IronPort-AV: E=Sophos;i="5.98,271,1673942400"; d="scan'208";a="424685484"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 22:46:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="790989681"
X-IronPort-AV: E=Sophos;i="5.98,271,1673942400"; d="scan'208";a="790989681"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 17 Mar 2023 22:46:35 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pdPOk-0009pq-1c;
 Sat, 18 Mar 2023 05:46:34 +0000
Date: Sat, 18 Mar 2023 13:46:18 +0800
From: kernel test robot <lkp@intel.com>
To: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
Message-ID: <202303181356.6AePiBhC-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679118397; x=1710654397;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=QXZtVBxXqVz/93gDu2a3c/Voh1hGJ7yBlRIDZK5sUQw=;
 b=Kl7q6Q/tlGFndoYTbwqwTZRwP1EZy6A/ZPHtI+pFn8NReQsDBB5mGaCN
 xrJ6oqTflIs/aei0+tFBDc9bCTpNr7uyovTsCSsUr0G4grKDIOsvWFkKI
 7Y9ak0rRZoCoX+YfIBcEXNn3wRPRlo8YFA2oIo2iISHXDddcp/qFQki51
 4gTNUuPyUNDlJkipw9Xz0NdDpJowRGJmJNBSiwGDsHHniVNXHSsim9BKh
 0T48o2FpPIyQEeVfNUD3R+7SNxEDEsn66/353LCeGsS3JL4DY/RCWeAW7
 Unnq1Pb3cKD7Ywk7+3fgYSzGUKYwqBhfIqpnShNjcwSaJQHaTxO+uUJeF
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Kl7q6Q/t
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue 42/44]
 drivers/net/ethernet/intel/ice/ice_main.c:4561:5: error: redefinition of
 'ice_pf_fwlog_update_modules'
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
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Brett Creeley <brett.creeley@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 oe-kbuild-all@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
head:   f3c2b472377ca0b45ef0ae86b89c247340459720
commit: a6e11130511dd2437ac5dbdfc3fa9b77eb3e2277 [42/44] ice: add ability to set FW log configuration
config: riscv-randconfig-r042-20230318 (https://download.01.org/0day-ci/archive/20230318/202303181356.6AePiBhC-lkp@intel.com/config)
compiler: riscv64-linux-gcc (GCC) 12.1.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git/commit/?id=a6e11130511dd2437ac5dbdfc3fa9b77eb3e2277
        git remote add tnguy-next-queue https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git
        git fetch --no-tags tnguy-next-queue dev-queue
        git checkout a6e11130511dd2437ac5dbdfc3fa9b77eb3e2277
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=riscv olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=riscv SHELL=/bin/bash drivers/net/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202303181356.6AePiBhC-lkp@intel.com/

All error/warnings (new ones prefixed by >>):

   In file included from drivers/net/ethernet/intel/ice/ice_main.c:9:
>> drivers/net/ethernet/intel/ice/ice.h:888:1: warning: no previous prototype for 'ice_pf_fwlog_update_modules' [-Wmissing-prototypes]
     888 | ice_pf_fwlog_update_modules(struct ice_pf *pf, u8 log_level,
         | ^~~~~~~~~~~~~~~~~~~~~~~~~~~
>> drivers/net/ethernet/intel/ice/ice_main.c:4561:5: error: redefinition of 'ice_pf_fwlog_update_modules'
    4561 | int ice_pf_fwlog_update_modules(struct ice_pf *pf, u8 log_level,
         |     ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/ice/ice.h:888:1: note: previous definition of 'ice_pf_fwlog_update_modules' with type 'int(struct ice_pf *, u8,  u32)' {aka 'int(struct ice_pf *, unsigned char,  unsigned int)'}
     888 | ice_pf_fwlog_update_modules(struct ice_pf *pf, u8 log_level,
         | ^~~~~~~~~~~~~~~~~~~~~~~~~~~
--
   In file included from drivers/net/ethernet/intel/ice/ice_lib.h:7,
                    from drivers/net/ethernet/intel/ice/ice_switch.c:4:
>> drivers/net/ethernet/intel/ice/ice.h:888:1: warning: no previous prototype for 'ice_pf_fwlog_update_modules' [-Wmissing-prototypes]
     888 | ice_pf_fwlog_update_modules(struct ice_pf *pf, u8 log_level,
         | ^~~~~~~~~~~~~~~~~~~~~~~~~~~


vim +/ice_pf_fwlog_update_modules +4561 drivers/net/ethernet/intel/ice/ice_main.c

  4554	
  4555	/**
  4556	 * ice_pf_fwlog_update_modules - update 1 or more modules via debugfs
  4557	 * @pf: pointer to the PF struct
  4558	 * @log_level: log_level to use for the @events
  4559	 * @events: events to update
  4560	 */
> 4561	int ice_pf_fwlog_update_modules(struct ice_pf *pf, u8 log_level,
  4562					u32 events)
  4563	{
  4564		struct ice_fwlog_module_entry *entries;
  4565		struct ice_hw *hw = &pf->hw;
  4566		u16 max_bits;
  4567		int i;
  4568	
  4569		if (log_level >= ICE_FWLOG_LEVEL_INVALID) {
  4570			dev_err(ice_pf_to_dev(pf), "Invalid FW log level %u, all level(s) >= %u are invalid\n",
  4571				log_level, ICE_FWLOG_LEVEL_INVALID);
  4572			return -EINVAL;
  4573		}
  4574	
  4575		entries = (struct ice_fwlog_module_entry *)hw->fwlog_cfg.module_entries;
  4576	
  4577		max_bits = min_t(u32, BITS_PER_TYPE(u32),
  4578				 ICE_AQC_FW_LOG_ID_MAX);
  4579	
  4580		/* look for the set bits in events. the driver can't use any of the
  4581		 * built in bitops because they all need an unsigned long type which
  4582		 * events is not
  4583		 */
  4584		for (i = 0; i < max_bits; i++) {
  4585			if (BIT(i) & events)
  4586				entries[i].log_level = log_level;
  4587		}
  4588	
  4589		return 0;
  4590	}
  4591	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
