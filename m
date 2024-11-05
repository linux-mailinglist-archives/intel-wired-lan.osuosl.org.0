Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 674FD9BC408
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Nov 2024 04:47:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DEFCF607D9;
	Tue,  5 Nov 2024 03:47:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AHsDNF8Rl4YN; Tue,  5 Nov 2024 03:47:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0A371607B9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730778428;
	bh=oj6mmjnyXBsSzOpFH/3IwwX1GhpgOzg2fzFaweU0L/U=;
	h=Date:From:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=qr8WTSdGyScze/wS+XW/cxBVRMwJWZDYOOmO2/sLxLBaxNesiHzakpZRzsBsmHb09
	 fP4bh//1rN3G6Cv0v18JO8al0HI+MZZKW4BJVXBHTfRfQkKatGBvuva5zjZRzfVUeg
	 QFirvf6WHvdmFZ9vGCOkQMGCOO9pr34PNX9wPnnidGtSycH6plwg+/gD28d6GwkNvK
	 /e82thmGfq4CezGvNwmQz1HbmRqyt4j4+9V3+LVXNLkFo+3Yx8iUFMXsu4onBIDP1x
	 bY2Vp0vfwXu6VNFIZIciEJqq7P4ss49T01cOn51oz2qJPIP6kh2hXMsMr4x81ONuHa
	 vMbtDuHTPF9Tg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0A371607B9;
	Tue,  5 Nov 2024 03:47:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 6811CB8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 03:47:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 492204047D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 03:47:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pUUL-7oAk57u for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Nov 2024 03:47:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2F28A4029F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2F28A4029F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2F28A4029F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 03:47:04 +0000 (UTC)
X-CSE-ConnectionGUID: Iatu0q6zQNuCV7/2E4Gppw==
X-CSE-MsgGUID: TCcJQr+nQjmr7nYRXbEOwg==
X-IronPort-AV: E=McAfee;i="6700,10204,11246"; a="18122947"
X-IronPort-AV: E=Sophos;i="6.11,259,1725346800"; d="scan'208";a="18122947"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 19:47:03 -0800
X-CSE-ConnectionGUID: q4QQwP80TVWb4F0766a8oA==
X-CSE-MsgGUID: YRtGtRl5ReaxwBzXthMeFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,259,1725346800"; d="scan'208";a="83971716"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
 by fmviesa008.fm.intel.com with ESMTP; 04 Nov 2024 19:47:01 -0800
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1t8AWx-000lZj-1q;
 Tue, 05 Nov 2024 03:46:59 +0000
Date: Tue, 5 Nov 2024 11:46:26 +0800
From: kernel test robot <lkp@intel.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: oe-kbuild-all@lists.linux.dev,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Wojciech Drewek <wojciech.drewek@intel.com>,
 Rahul Rameshbabu <rrameshbabu@nvidia.com>, Simon Horman <horms@kernel.org>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Message-ID: <202411051123.n3qTi2f2-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730778425; x=1762314425;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=v3c7Ok6iipLf2siUerlcD6n0AaVaZ9SzjXrTHaoTkRA=;
 b=KiPeETLuchIwgN4+GNkq/xsCFaAfYdZFXP/C3tp6OEK+NC76ScDekSR+
 Sl2rSwFzcxbNYspZbOm7RJWG1t6dZ2WpWajs51p65fB690TR7LPYF3uia
 nVAStedTNBVcGHTHF/bWUOJSpr4z7Uho0N6jMx6eOVgVS6dfAoh6trz/E
 11FNQvosWyy4bx4b/cKSqmMJ2YWtQ3l9CaiNnnkKemnuye+bkmQbDHU0+
 3ayVUFHXhpWUPJdhr3q7hSo1q+p9xDWklM5trbTqn9Zhp9Hd11Pck54Fx
 FB6npKWovfq1n1Ck4fXsjCT2cPb4r7tdDbqhNhhndeiTldLWrFbdB/gGi
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KiPeETLu
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue 66/85]
 iavf_main.c:undefined reference to `iavf_ptp_set_ts_config'
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
commit: 827d8d40f17baf7a78b28aa4146f52140b2baf8f [66/85] iavf: handle set and get timestamps ops
config: parisc-randconfig-001-20241105 (https://download.01.org/0day-ci/archive/20241105/202411051123.n3qTi2f2-lkp@intel.com/config)
compiler: hppa-linux-gcc (GCC) 14.1.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20241105/202411051123.n3qTi2f2-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202411051123.n3qTi2f2-lkp@intel.com/

All errors (new ones prefixed by >>):

   hppa-linux-ld: drivers/net/ethernet/intel/iavf/iavf_main.o: in function `iavf_hwstamp_set':
>> iavf_main.c:(.text+0x1924): undefined reference to `iavf_ptp_set_ts_config'
   hppa-linux-ld: drivers/net/ethernet/intel/iavf/iavf_main.o: in function `iavf_remove':
   iavf_main.c:(.text+0x7398): undefined reference to `iavf_ptp_release'
   hppa-linux-ld: drivers/net/ethernet/intel/iavf/iavf_main.o: in function `iavf_init_config_adapter':
   iavf_main.c:(.text+0x8560): undefined reference to `iavf_ptp_init'
   hppa-linux-ld: drivers/net/ethernet/intel/iavf/iavf_virtchnl.o: in function `iavf_configure_queues':
   drivers/net/ethernet/intel/iavf/iavf_virtchnl.c:381:(.text+0xf08): undefined reference to `iavf_ptp_cap_supported'
   hppa-linux-ld: drivers/net/ethernet/intel/iavf/iavf_virtchnl.o: in function `iavf_virtchnl_completion':
   drivers/net/ethernet/intel/iavf/iavf_virtchnl.c:2710:(.text+0x4778): undefined reference to `iavf_ptp_process_caps'

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
