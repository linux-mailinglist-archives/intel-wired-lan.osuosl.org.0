Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C59898FF861
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Jun 2024 02:04:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EF9E6614CC;
	Fri,  7 Jun 2024 00:04:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id e9DQmUmU0ouF; Fri,  7 Jun 2024 00:04:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A2CBA614C9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717718669;
	bh=ZtdlObNiSO6b5hNIdw21IgML5HjWO5yu9123+aqWMYY=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=AWIvcMsQFbQOZyO5fRMNb0fCobyO07g2j2urhFLtRzafz5RLwBEioPMMbp+4hl1TI
	 Ungjs8qKcGOSH/YVgoK8uKgnJa1zjgXYb37Oqh9HD/MjD3Bv/pGpxUzGE86Jujudrr
	 xe0iIYc5gMx5GVdNnrmmw9+wwv8yGPGggA+wL3kzCaQM4iqbISRyvHjGqgofd2TNoQ
	 JZFoFTX5R5eYuLTgjTQ1W8GyyXspuVbzTpBU44ITADlY0xcU5jGyhEPf0hWRr5WhMX
	 AU4gVAbnDI0+etPKiBm8xrUG4N9FoH7NhGDkYDidi5QgReMoi6Q4MUnJqq2icasWEy
	 S8/jRVZbBBocQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A2CBA614C9;
	Fri,  7 Jun 2024 00:04:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 970B11BF4E7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jun 2024 00:04:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 82C40419B5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jun 2024 00:04:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id m0GedD3z8BNy for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Jun 2024 00:04:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 15E6C40934
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 15E6C40934
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 15E6C40934
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jun 2024 00:04:25 +0000 (UTC)
X-CSE-ConnectionGUID: LJWxwtpQTLKVfO8nNqdubw==
X-CSE-MsgGUID: kRm5WhGBR7Sd1nepJRxofw==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="25828483"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="25828483"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 17:04:25 -0700
X-CSE-ConnectionGUID: j/61vJFITi+J+eTNTGiY8g==
X-CSE-MsgGUID: xOXix06WTxWIbb3ToCLnyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="38816263"
Received: from unknown (HELO 0610945e7d16) ([10.239.97.151])
 by orviesa007.jf.intel.com with ESMTP; 06 Jun 2024 17:04:24 -0700
Received: from kbuild by 0610945e7d16 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sFN5h-0003tS-1F;
 Fri, 07 Jun 2024 00:04:21 +0000
Date: Fri, 7 Jun 2024 08:03:52 +0800
From: kernel test robot <lkp@intel.com>
To: Simei Su <simei.su@intel.com>
Message-ID: <202406070705.6IjwhIMk-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717718666; x=1749254666;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=NdYW5RDPM74NpAZ3xcP774UxCnJinmAzZgFImgqRDds=;
 b=FzQhfjQzn44ZFwqmNgyoJLbGtE45T6FMCWmLbB3AF7vybJTXswEdbpW1
 29fXGOC8zNDk4BLcpIUE27E1l83u8iCdxspyvEzrLdwUTJ+adtuBX67LI
 gpiosm+K3BIfWoP009MH0uktTPhZP6x/ZELg9yE96mr5I9Iszu3URn3h5
 FPVyog6eGXitqM8mS9mUUwWqsbuvEhQen5dXnsPAU2akp2O4ejrSQhRPO
 sb+ZVw57hEF6J53rhBg56A/2uWR4piUO6bDxOsed8uFGcyH4g1cI5o294
 Hemc692YgXEvvDS3Llc2AWw6o8/c4/Rxj7M3CtPuHZDKygKaGBz3r9XjM
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FzQhfjQz
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue 70/81]
 drivers/net/ethernet/intel/ice/ice_virtchnl.c:3851:26: error: implicit
 declaration of function 'ice_ptp_read_src_clk_reg'
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 oe-kbuild-all@lists.linux.dev
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
head:   ace679d6a9e3623d89804105baaca54d4e5e9c49
commit: c3bafac0365a81a223dff3ca0a68665926ef077d [70/81] ice: support Rx timestamp on flex descriptor
config: arm-randconfig-004-20240607 (https://download.01.org/0day-ci/archive/20240607/202406070705.6IjwhIMk-lkp@intel.com/config)
compiler: arm-linux-gnueabi-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240607/202406070705.6IjwhIMk-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202406070705.6IjwhIMk-lkp@intel.com/

All errors (new ones prefixed by >>):

   drivers/net/ethernet/intel/ice/ice_virtchnl.c: In function 'ice_vc_get_phc_time':
>> drivers/net/ethernet/intel/ice/ice_virtchnl.c:3851:26: error: implicit declaration of function 'ice_ptp_read_src_clk_reg' [-Werror=implicit-function-declaration]
    3851 |         phc_time->time = ice_ptp_read_src_clk_reg(pf, NULL);
         |                          ^~~~~~~~~~~~~~~~~~~~~~~~
   cc1: some warnings being treated as errors


vim +/ice_ptp_read_src_clk_reg +3851 drivers/net/ethernet/intel/ice/ice_virtchnl.c

  3829	
  3830	static int ice_vc_get_phc_time(struct ice_vf *vf)
  3831	{
  3832		enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
  3833		struct virtchnl_phc_time *phc_time = NULL;
  3834		struct ice_pf *pf = vf->pf;
  3835		int len = 0;
  3836		int ret;
  3837	
  3838		if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) {
  3839			v_ret = VIRTCHNL_STATUS_ERR_PARAM;
  3840			goto err;
  3841		}
  3842	
  3843		len = sizeof(struct virtchnl_phc_time);
  3844		phc_time = kzalloc(len, GFP_KERNEL);
  3845		if (!phc_time) {
  3846			v_ret = VIRTCHNL_STATUS_ERR_NO_MEMORY;
  3847			len = 0;
  3848			goto err;
  3849		}
  3850	
> 3851		phc_time->time = ice_ptp_read_src_clk_reg(pf, NULL);
  3852	
  3853	err:
  3854		/* send the response back to the VF */
  3855		ret = ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_1588_PTP_GET_TIME,
  3856					    v_ret, (u8 *)phc_time, len);
  3857		kfree(phc_time);
  3858		return ret;
  3859	}
  3860	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
