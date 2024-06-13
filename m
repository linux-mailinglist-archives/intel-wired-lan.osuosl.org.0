Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0358890629E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Jun 2024 05:23:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7B907841EF;
	Thu, 13 Jun 2024 03:23:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NYxBfC0FZ-Ao; Thu, 13 Jun 2024 03:23:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2B503841FF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718249015;
	bh=DJXZH32CTYPCxM6Asa18Pg9fAg4NEbiIMCufzmyg4XA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=N39dHUKPvdttPohEhsExsPrUUNKmhE/KxgPXZroJaeXYgwminPOkUJeK80Dkf7ePG
	 8fybzQ1P1pbzJhQIv/owpigetnbAmfs7MxmBhDL3Cu0GkYIUqQaasLjyHP47uXbQQr
	 b1y3FYLN79b58+rvSLSLUYiBMXNskEwgh2o9Svr0Gw0P/v4SS67XaAsKMVKsjJAHwD
	 d1nilRBqyH1YmvmGROlFZos0g2u/XFdomXySXRz7n0mgaZXWmgoydYz0U5tc0lZX8A
	 sFJJK2CQiODjYRAVfTgBURrJOkZtAYJ1oeWSzG/72I+/fK7Py7tl0rLtJGavrTg74V
	 oAgClP91+727g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2B503841FF;
	Thu, 13 Jun 2024 03:23:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 64AFC1BF3C6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2024 03:23:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5D6BA40562
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2024 03:23:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6PsvseMBEEZN for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Jun 2024 03:23:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D3AC240544
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D3AC240544
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D3AC240544
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2024 03:23:31 +0000 (UTC)
X-CSE-ConnectionGUID: 0uTsNe3bT5GXnFIHupk9sw==
X-CSE-MsgGUID: Row/yvisQEu44EdUgrGlHw==
X-IronPort-AV: E=McAfee;i="6700,10204,11101"; a="14881071"
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="14881071"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2024 20:23:30 -0700
X-CSE-ConnectionGUID: 91P0hGKwSkSpUFzUUA1GLg==
X-CSE-MsgGUID: VUxBOyYSRM2jnMENFhNABQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="77450302"
Received: from lkp-server01.sh.intel.com (HELO 628d7d8b9fc6) ([10.239.97.150])
 by orviesa001.jf.intel.com with ESMTP; 12 Jun 2024 20:23:29 -0700
Received: from kbuild by 628d7d8b9fc6 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sHb3e-0002Ae-2g;
 Thu, 13 Jun 2024 03:23:26 +0000
Date: Thu, 13 Jun 2024 11:23:02 +0800
From: kernel test robot <lkp@intel.com>
To: Simei Su <simei.su@intel.com>
Message-ID: <202406131123.jE3mwlmL-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718249011; x=1749785011;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=/cvJyVF2OmyG9TelXEntHOF7zEqgXUn1C33Ne6L++1E=;
 b=JSCRnVfFJ4gEQiwNB2FAJCeOTOnTekr/cj2oVS+1DC6Id+jKdgHwsm68
 +UTIYht18uq6ro+dKZ/q1yw/hPzGquDpC2ZXz63K5pFf60Ho81RobIKLA
 IVT45aWbENQfgoRFG+8edOWYJN2QAhqiP93IoRPqV1ygxxVLVyN71KyRq
 vbWNHtMGdA5j2N+qqKqz8PkjhGVqoyfMFwIY00Qq+zEQOVc+W/QHReFkn
 9aKGPEHr869lI81oTKQvWwpP7U8x2p548kZ+Ozh+k8pfMdENgvOMPnO57
 +O9UeSv/UTeCCe/okAA0DaNuJDlJL9ZNG6wSqNTRi2UvEwqlsrkFrqvwX
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JSCRnVfF
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue 49/85]
 drivers/net/ethernet/intel/ice/ice_virtchnl.c:3851:19: error: call to
 undeclared function 'ice_ptp_read_src_clk_reg';
 ISO C99 and later do not support implicit function declarations
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, llvm@lists.linux.dev,
 oe-kbuild-all@lists.linux.dev, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
head:   9af9f19ba76127f423f1b2cbe41b3cc098f0f5d4
commit: f3b2d0b0778285c46d451413fb4d5e67b85ee8fd [49/85] ice: support Rx timestamp on flex descriptor
config: x86_64-randconfig-071-20240613 (https://download.01.org/0day-ci/archive/20240613/202406131123.jE3mwlmL-lkp@intel.com/config)
compiler: clang version 18.1.5 (https://github.com/llvm/llvm-project 617a15a9eac96088ae5e9134248d8236e34b91b1)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240613/202406131123.jE3mwlmL-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202406131123.jE3mwlmL-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/net/ethernet/intel/ice/ice_virtchnl.c:3851:19: error: call to undeclared function 'ice_ptp_read_src_clk_reg'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
    3851 |         phc_time->time = ice_ptp_read_src_clk_reg(pf, NULL);
         |                          ^
   1 error generated.


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
