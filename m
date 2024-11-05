Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B43639BC220
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Nov 2024 01:47:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 65822607AD;
	Tue,  5 Nov 2024 00:47:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9HmshN2nYioX; Tue,  5 Nov 2024 00:47:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 38C5F607A7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730767620;
	bh=O1gikbpo4nTRLC2RLvJX0VWJS4TK43PZVP8Y0bj1LUo=;
	h=Date:From:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=rKbKgWtZL4g3+xX5jbhQtXE5uzO84CG6ptUfffoRajlnDC0av0RO84Oyb+jqtO8Jp
	 s6xM9BgWLILLomtfY7ev+KfAJlab0vcclAGDIBqqonDyNGDs08ZJxkzW1P8A7h2Tu8
	 NNwhahCgfIEBA4P5HCLk+IQ5rvLyjcBrLgFmfjVDyNiN5iNSef2pw/z9G9ts5cELe8
	 bTZcxPfogJ8AFJ7SDKAvj4m+0k7FEQIAwFS5X49d0xguMe8sdggPJ2ksnXtKWPfxWd
	 9aNnJAz3V/CDO+BnUYNJaJmvhbGWaO5XqlDhw1pJXsEXWN1/pE9t+ufPdznQAvDbUR
	 h9PuiF4dzd7Yg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 38C5F607A7;
	Tue,  5 Nov 2024 00:47:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id F2E06723
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 00:46:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D35F3401F6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 00:46:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ahcS-K1wkUU4 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Nov 2024 00:46:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 96C23401E0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 96C23401E0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 96C23401E0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 00:46:56 +0000 (UTC)
X-CSE-ConnectionGUID: PNoLDfQOThuDOMvvUJdnqQ==
X-CSE-MsgGUID: lYE3dOpbTCidVyND3RJxXg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30341777"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30341777"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 16:46:55 -0800
X-CSE-ConnectionGUID: u4xJ8bS7RyS1hRFul4Qakg==
X-CSE-MsgGUID: vMnYarMgTWmvCurWcv/1gw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,258,1725346800"; d="scan'208";a="107161008"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
 by fmviesa002.fm.intel.com with ESMTP; 04 Nov 2024 16:46:53 -0800
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1t87ic-000lRl-2w;
 Tue, 05 Nov 2024 00:46:50 +0000
Date: Tue, 5 Nov 2024 08:46:46 +0800
From: kernel test robot <lkp@intel.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: oe-kbuild-all@lists.linux.dev,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Wojciech Drewek <wojciech.drewek@intel.com>,
 Sai Krishna <saikrishnag@marvell.com>,
 Simon Horman <horms@kernel.org>, Ahmed Zaki <ahmed.zaki@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Message-ID: <202411050805.cfj4ObQq-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730767617; x=1762303617;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=61vI2HR48wN5HKUE5/wSXhrrWfnGmN16XpYJ8lo9lQo=;
 b=KpFn4Gi+BDPUnde03M3Gf/spAxHchfBHv5JBwZEkMkNJu0hf3KbFWJaw
 Ay0R9mb+WL231kIn/atnw/n1Ox3cfDYc6aEDAGbVSptCxv91CNQih1X7G
 WWQaJTj/BtMq/COE1UeHa9S3PmeETCpLSommI6gA5fBlRm9D0TbkAWM94
 O/gcH9FzKUWrk8ya7Vb3OKyz5nXR+rcvANFWbRqxLbu/rF72YMdS5NybP
 zlnvp/dU6T7oE3ukcMWy4VbfrIqtvLYViKE7TSOmGPAZFryUPLjnPXwBC
 OrN11WcPEQsXU3Tj82NqaMTgyOmSD9YhUBnYhrfbBrGNT1CvKf96pVLjy
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KpFn4Gi+
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue 59/85]
 iavf_main.c:undefined reference to `iavf_ptp_release'
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
commit: c12eccf6bcdc66b3b1e3826ea01bba30b04095b2 [59/85] iavf: add initial framework for registering PTP clock
config: parisc-randconfig-001-20241105 (https://download.01.org/0day-ci/archive/20241105/202411050805.cfj4ObQq-lkp@intel.com/config)
compiler: hppa-linux-gcc (GCC) 14.1.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20241105/202411050805.cfj4ObQq-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202411050805.cfj4ObQq-lkp@intel.com/

All errors (new ones prefixed by >>):

   hppa-linux-ld: drivers/net/ethernet/intel/iavf/iavf_main.o: in function `iavf_remove':
>> iavf_main.c:(.text+0x72bc): undefined reference to `iavf_ptp_release'
   hppa-linux-ld: drivers/net/ethernet/intel/iavf/iavf_main.o: in function `iavf_init_config_adapter':
>> iavf_main.c:(.text+0x8484): undefined reference to `iavf_ptp_init'
   hppa-linux-ld: drivers/net/ethernet/intel/iavf/iavf_virtchnl.o: in function `iavf_configure_queues':
>> drivers/net/ethernet/intel/iavf/iavf_virtchnl.c:381:(.text+0xf08): undefined reference to `iavf_ptp_cap_supported'
   hppa-linux-ld: drivers/net/ethernet/intel/iavf/iavf_virtchnl.o: in function `iavf_virtchnl_completion':
>> drivers/net/ethernet/intel/iavf/iavf_virtchnl.c:2618:(.text+0x4634): undefined reference to `iavf_ptp_process_caps'

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
