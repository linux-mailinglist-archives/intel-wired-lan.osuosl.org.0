Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC239BC627
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Nov 2024 07:57:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D81C7403CA;
	Tue,  5 Nov 2024 06:57:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Moc2zeZd1yry; Tue,  5 Nov 2024 06:57:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8B1A6403C4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730789836;
	bh=ElfW5xWzhllvvyxXfOoPaO+KNK4dgai2FOI4uxvZ9fQ=;
	h=Date:From:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=o3XOKa3mQtvN37E2wSclxQmB0jVVcgRFEFai0BPl7zbC6LvT51Q3heI4ECcRdoPaw
	 uDTcZnxTq3vTeTVJsmIz9dRU4i9b1Nn1VYX7nfKU1nuD4Bc6atuPCJVQziCMA/7RGV
	 Uifo1DaiANPGY5ROPrzF97QX9squ5NDosmunGcW6Nx+H1TlUzvNeDzFSxQ7j4YvS9l
	 eyKr0/i2M1N6Vq8MCgbWtP7yBsSSXnuHBBp2bhbVfkqgUVvjmcGC9LQ4HTJx+Skyi0
	 KXusoJgDceuNeYcqoFbIkYu8C44ZO7N52tHHe5PT12dwbCIrTX2960+BHg/ZEZ83Wx
	 n5KnKp7M9M05Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8B1A6403C4;
	Tue,  5 Nov 2024 06:57:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id BEE573B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 06:57:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B9ACD80C2A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 06:57:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GsTb9FCTDu5V for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Nov 2024 06:57:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6305080C15
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6305080C15
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6305080C15
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 06:57:12 +0000 (UTC)
X-CSE-ConnectionGUID: oqSn6ZTlSVe8BhfifbVeUw==
X-CSE-MsgGUID: +Wi59Mh8TgO030HEi7CIkQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30472325"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30472325"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 22:57:12 -0800
X-CSE-ConnectionGUID: Qa9uln9dTneLPciS3AjuJw==
X-CSE-MsgGUID: imh0gthNS7SosGgkIw0Abg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,259,1725346800"; d="scan'208";a="84309881"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
 by orviesa007.jf.intel.com with ESMTP; 04 Nov 2024 22:57:10 -0800
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1t8DUx-000ljR-23;
 Tue, 05 Nov 2024 06:57:07 +0000
Date: Tue, 5 Nov 2024 14:57:04 +0800
From: kernel test robot <lkp@intel.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: oe-kbuild-all@lists.linux.dev,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Wojciech Drewek <wojciech.drewek@intel.com>,
 Rahul Rameshbabu <rrameshbabu@nvidia.com>,
 Sunil Goutham <sgoutham@marvell.com>, Simon Horman <horms@kernel.org>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Message-ID: <202411051410.QeBCuZ5y-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730789834; x=1762325834;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=1cO7Y5Z8UtBdJ1ya75r7xZPnNobLD2iFpsVzTi7HM08=;
 b=dOsODkeq40I8lnosn9DC33Q71IYCsI50Q1MPjWTvmJQATeMCrnEuKeOt
 P5tZ1UoE4tjcfvGAC/CqbSrBWgANgFfVC+Siy6h6vILuXYc6ORr0AyxWF
 r84kAGjayaqTu0cJzIKgsiRqS6x5ybFpXDQLXJj+I8oLxwKf0YPRI4HFp
 7RzD/hXNMnSoJlj7PcxiEKWmZQoi88pkq+edAC6xFfZ+hzXTYMs4+5gNn
 CctXRpdvW0Dg6+zdvl711I2Stk/bIzx8x/cuI5xNpPsbZGstidkFP3PDF
 iwYuU4fFq6HHI5Q6htRxkvK2lOQKgoBenmZ7g99VS5/V7thhC4X1mNX+L
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dOsODkeq
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue 67/85]
 iavf_main.c:undefined reference to `iavf_ptp_cap_supported'
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
head:   676d779106de51fc4e2685ca8de610ee5a70d35f
commit: adcff768e70df6a1905ffe1387259da00b859521 [67/85] iavf: add support for Rx timestamps to hotpath
config: parisc-randconfig-001-20241105 (https://download.01.org/0day-ci/archive/20241105/202411051410.QeBCuZ5y-lkp@intel.com/config)
compiler: hppa-linux-gcc (GCC) 14.1.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20241105/202411051410.QeBCuZ5y-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202411051410.QeBCuZ5y-lkp@intel.com/

All errors (new ones prefixed by >>):

   hppa-linux-ld: drivers/net/ethernet/intel/iavf/iavf_main.o: in function `iavf_hwstamp_set':
   iavf_main.c:(.text+0x1924): undefined reference to `iavf_ptp_set_ts_config'
   hppa-linux-ld: drivers/net/ethernet/intel/iavf/iavf_main.o: in function `iavf_configure':
>> iavf_main.c:(.text+0x61ac): undefined reference to `iavf_ptp_cap_supported'
   hppa-linux-ld: drivers/net/ethernet/intel/iavf/iavf_main.o: in function `iavf_remove':
   iavf_main.c:(.text+0x73cc): undefined reference to `iavf_ptp_release'
   hppa-linux-ld: drivers/net/ethernet/intel/iavf/iavf_main.o: in function `iavf_init_config_adapter':
   iavf_main.c:(.text+0x8594): undefined reference to `iavf_ptp_init'
   hppa-linux-ld: drivers/net/ethernet/intel/iavf/iavf_virtchnl.o: in function `iavf_configure_queues':
   drivers/net/ethernet/intel/iavf/iavf_virtchnl.c:381:(.text+0xf08): undefined reference to `iavf_ptp_cap_supported'
   hppa-linux-ld: drivers/net/ethernet/intel/iavf/iavf_virtchnl.o: in function `iavf_virtchnl_completion':
   drivers/net/ethernet/intel/iavf/iavf_virtchnl.c:2710:(.text+0x4778): undefined reference to `iavf_ptp_process_caps'
   hppa-linux-ld: drivers/net/ethernet/intel/iavf/iavf_txrx.o: in function `iavf_process_skb_fields':
>> drivers/net/ethernet/intel/iavf/iavf_txrx.c:1111:(.text+0x185c): undefined reference to `iavf_ptp_extend_32b_timestamp'

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
