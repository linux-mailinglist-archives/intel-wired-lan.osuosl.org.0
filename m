Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 250ABA5D499
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Mar 2025 04:06:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 86E6760C05;
	Wed, 12 Mar 2025 03:06:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KdIgwRDLddOg; Wed, 12 Mar 2025 03:06:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D2C5360C11
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741748771;
	bh=3r97Kiqo/wk9Me8hYWwEn2idkVTXsaGg1NYbQlmaM2A=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=viC1tnBfmS5Gs0XfUzYPcKwXh+1GUO0tF/Suc9QAlCPXD+Zej8GJ2DQhkmHBORolP
	 TmmjtM+N9RdXGUrORgadooC9Rd3pUAmjBWU3Bzo0xQW2Bqc9lh9rzfkreWyANyuSRU
	 KzhomXhCY1hosaoVmdu51JtvqvxkAZUHNiJhlgE+JbTPzrWwHbkG5Z29NuVZAfskUv
	 JEE3uX94KGLyQHQ5iqhhd1/od2HIiLwHRIaly6yx2qapn91r/TVwWI0syuo14myjCm
	 ACo1sck4e0lJTT3q2vL1cv3m3DR11i5LtgsPKBfQDOJ0OGDwe0y19VhFdH+boIM3h7
	 dgArcasI0YKOQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D2C5360C11;
	Wed, 12 Mar 2025 03:06:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id C55F8943
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 03:06:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B49A2410D5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 03:06:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sbwwr1Olb0Ja for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Mar 2025 03:06:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1DF2640C33
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1DF2640C33
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1DF2640C33
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 03:06:07 +0000 (UTC)
X-CSE-ConnectionGUID: U0UO5JDyQGG6WYIvTG0vWw==
X-CSE-MsgGUID: b7r4JT/dSwmpFR7RGJV+Vg==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="53437686"
X-IronPort-AV: E=Sophos;i="6.14,240,1736841600"; d="scan'208";a="53437686"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 20:06:07 -0700
X-CSE-ConnectionGUID: H5O2YCCkRFK7Xh0Zv2MPmw==
X-CSE-MsgGUID: qFOVIYd/RcyovUyuWKbBiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,240,1736841600"; d="scan'208";a="125694866"
Received: from lkp-server02.sh.intel.com (HELO a4747d147074) ([10.239.97.151])
 by orviesa005.jf.intel.com with ESMTP; 11 Mar 2025 20:06:04 -0700
Received: from kbuild by a4747d147074 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tsCPu-00084S-0U;
 Wed, 12 Mar 2025 03:05:59 +0000
Date: Wed, 12 Mar 2025 11:05:43 +0800
From: kernel test robot <lkp@intel.com>
To: Paul Greenwalt <paul.greenwalt@intel.com>, intel-wired-lan@lists.osuosl.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
 netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 Paul Greenwalt <paul.greenwalt@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Alice Michael <alice.michael@intel.com>
Message-ID: <202503121018.CUGx8uFd-lkp@intel.com>
References: <20250311132327.76804-1-paul.greenwalt@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250311132327.76804-1-paul.greenwalt@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741748768; x=1773284768;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=5+YX71dkXNDCghpWAPAado6XW1FmrkmtNlC6GtLHbcA=;
 b=IPcgTuFfgCJixGgyEjQeHSFLy/E0yc4IKJu7QX3wiFMvQrKvvL5dEbqc
 J0ZGSyqxOLv6tmCWKLbCELYTf9bap6kpIid/mT1+DGbfDf7Bp8cfztQaf
 rxRDaBKVg2KI2vyH9dPrA/FZfybRyU4guXevXUjgO78rtJUSwC1KSeUgk
 kCgMxnaJoqNy4I6MHwETYRWmMTUlFj5I5El4/9dk4CdSjqJ5Lix8IXteW
 Q29dtwJt2EsZ84ly6gOa4N0cYO0Ay6W9z3Sfeg+SBeFiuJ0EYJtcRbqGm
 h/X/iIO/7HLCBzhAGS2tR8ZVOHYEeuU+WBGlyeHhusoTnIoQz6EChUvKy
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IPcgTuFf
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: add E830 Earliest
 TxTime First Offload support
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

Hi Paul,

kernel test robot noticed the following build errors:

[auto build test ERROR on tnguy-next-queue/dev-queue]

url:    https://github.com/intel-lab-lkp/linux/commits/Paul-Greenwalt/ice-add-E830-Earliest-TxTime-First-Offload-support/20250312-051400
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
patch link:    https://lore.kernel.org/r/20250311132327.76804-1-paul.greenwalt%40intel.com
patch subject: [PATCH iwl-next v2] ice: add E830 Earliest TxTime First Offload support
config: arm-randconfig-003-20250312 (https://download.01.org/0day-ci/archive/20250312/202503121018.CUGx8uFd-lkp@intel.com/config)
compiler: clang version 19.1.7 (https://github.com/llvm/llvm-project cd708029e0b2869e80abe31ddb175f7c35361f90)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250312/202503121018.CUGx8uFd-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202503121018.CUGx8uFd-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/net/ethernet/intel/ice/ice_base.c:1023:39: error: passing 'const struct ice_vsi *' to parameter of type 'struct ice_vsi *' discards qualifiers [-Werror,-Wincompatible-pointer-types-discards-qualifiers]
    1023 |         ring->q_handle = ice_calc_txq_handle(vsi, ring, tc);
         |                                              ^~~
   drivers/net/ethernet/intel/ice/ice_base.c:245:48: note: passing argument to parameter 'vsi' here
     245 | static u16 ice_calc_txq_handle(struct ice_vsi *vsi, struct ice_tx_ring *ring, u8 tc)
         |                                                ^
   1 error generated.


vim +1023 drivers/net/ethernet/intel/ice/ice_base.c

eff380aaffedb27 Anirudh Venkataramanan 2019-10-24   974  
eff380aaffedb27 Anirudh Venkataramanan 2019-10-24   975  /**
eff380aaffedb27 Anirudh Venkataramanan 2019-10-24   976   * ice_vsi_cfg_txq - Configure single Tx queue
eff380aaffedb27 Anirudh Venkataramanan 2019-10-24   977   * @vsi: the VSI that queue belongs to
eff380aaffedb27 Anirudh Venkataramanan 2019-10-24   978   * @ring: Tx ring to be configured
51900dfcf194b39 Paul Greenwalt         2025-03-11   979   * @tstamp_ring: time stamp ring to be configured
eff380aaffedb27 Anirudh Venkataramanan 2019-10-24   980   * @qg_buf: queue group buffer
51900dfcf194b39 Paul Greenwalt         2025-03-11   981   * @txtime_qg_buf: Tx Time queue group buffer
51900dfcf194b39 Paul Greenwalt         2025-03-11   982   *
51900dfcf194b39 Paul Greenwalt         2025-03-11   983   * Return: 0 on success and a negative value on error.
eff380aaffedb27 Anirudh Venkataramanan 2019-10-24   984   */
a292ba981324ec7 Maciej Fijalkowski     2024-01-23   985  static int
51900dfcf194b39 Paul Greenwalt         2025-03-11   986  ice_vsi_cfg_txq(const struct ice_vsi *vsi, struct ice_tx_ring *ring,
51900dfcf194b39 Paul Greenwalt         2025-03-11   987  		struct ice_tx_ring *tstamp_ring,
51900dfcf194b39 Paul Greenwalt         2025-03-11   988  		struct ice_aqc_add_tx_qgrp *qg_buf,
51900dfcf194b39 Paul Greenwalt         2025-03-11   989  		struct ice_aqc_set_txtime_qgrp *txtime_qg_buf)
eff380aaffedb27 Anirudh Venkataramanan 2019-10-24   990  {
66486d8943bac36 Bruce Allan            2020-06-29   991  	u8 buf_len = struct_size(qg_buf, txqs, 1);
eff380aaffedb27 Anirudh Venkataramanan 2019-10-24   992  	struct ice_tlan_ctx tlan_ctx = { 0 };
eff380aaffedb27 Anirudh Venkataramanan 2019-10-24   993  	struct ice_aqc_add_txqs_perq *txq;
0754d65bd4be5bb Kiran Patil            2021-10-15   994  	struct ice_channel *ch = ring->ch;
eff380aaffedb27 Anirudh Venkataramanan 2019-10-24   995  	struct ice_pf *pf = vsi->back;
7e34786a74e1403 Bruce Allan            2020-05-15   996  	struct ice_hw *hw = &pf->hw;
5e24d5984c805c6 Tony Nguyen            2021-10-07   997  	int status;
eff380aaffedb27 Anirudh Venkataramanan 2019-10-24   998  	u16 pf_q;
e75d1b2c3731999 Maciej Fijalkowski     2019-10-24   999  	u8 tc;
eff380aaffedb27 Anirudh Venkataramanan 2019-10-24  1000  
634da4c118434cf Benita Bose            2021-03-02  1001  	/* Configure XPS */
634da4c118434cf Benita Bose            2021-03-02  1002  	ice_cfg_xps_tx_ring(ring);
634da4c118434cf Benita Bose            2021-03-02  1003  
eff380aaffedb27 Anirudh Venkataramanan 2019-10-24  1004  	pf_q = ring->reg_idx;
eff380aaffedb27 Anirudh Venkataramanan 2019-10-24  1005  	ice_setup_tx_ctx(ring, &tlan_ctx, pf_q);
eff380aaffedb27 Anirudh Venkataramanan 2019-10-24  1006  	/* copy context contents into the qg_buf */
eff380aaffedb27 Anirudh Venkataramanan 2019-10-24  1007  	qg_buf->txqs[0].txq_id = cpu_to_le16(pf_q);
dc4305be467a6f8 Jacob Keller           2024-12-10  1008  	ice_pack_txq_ctx(&tlan_ctx, &qg_buf->txqs[0].txq_ctx);
eff380aaffedb27 Anirudh Venkataramanan 2019-10-24  1009  
eff380aaffedb27 Anirudh Venkataramanan 2019-10-24  1010  	/* init queue specific tail reg. It is referred as
eff380aaffedb27 Anirudh Venkataramanan 2019-10-24  1011  	 * transmit comm scheduler queue doorbell.
eff380aaffedb27 Anirudh Venkataramanan 2019-10-24  1012  	 */
7e34786a74e1403 Bruce Allan            2020-05-15  1013  	ring->tail = hw->hw_addr + QTX_COMM_DBELL(pf_q);
eff380aaffedb27 Anirudh Venkataramanan 2019-10-24  1014  
e75d1b2c3731999 Maciej Fijalkowski     2019-10-24  1015  	if (IS_ENABLED(CONFIG_DCB))
e75d1b2c3731999 Maciej Fijalkowski     2019-10-24  1016  		tc = ring->dcb_tc;
e75d1b2c3731999 Maciej Fijalkowski     2019-10-24  1017  	else
e75d1b2c3731999 Maciej Fijalkowski     2019-10-24  1018  		tc = 0;
e75d1b2c3731999 Maciej Fijalkowski     2019-10-24  1019  
eff380aaffedb27 Anirudh Venkataramanan 2019-10-24  1020  	/* Add unique software queue handle of the Tx queue per
eff380aaffedb27 Anirudh Venkataramanan 2019-10-24  1021  	 * TC into the VSI Tx ring
eff380aaffedb27 Anirudh Venkataramanan 2019-10-24  1022  	 */
e72bba21355dbb6 Maciej Fijalkowski     2021-08-19 @1023  	ring->q_handle = ice_calc_txq_handle(vsi, ring, tc);
eff380aaffedb27 Anirudh Venkataramanan 2019-10-24  1024  
0754d65bd4be5bb Kiran Patil            2021-10-15  1025  	if (ch)
0754d65bd4be5bb Kiran Patil            2021-10-15  1026  		status = ice_ena_vsi_txq(vsi->port_info, ch->ch_vsi->idx, 0,
0754d65bd4be5bb Kiran Patil            2021-10-15  1027  					 ring->q_handle, 1, qg_buf, buf_len,
0754d65bd4be5bb Kiran Patil            2021-10-15  1028  					 NULL);
0754d65bd4be5bb Kiran Patil            2021-10-15  1029  	else
0754d65bd4be5bb Kiran Patil            2021-10-15  1030  		status = ice_ena_vsi_txq(vsi->port_info, vsi->idx, tc,
0754d65bd4be5bb Kiran Patil            2021-10-15  1031  					 ring->q_handle, 1, qg_buf, buf_len,
0754d65bd4be5bb Kiran Patil            2021-10-15  1032  					 NULL);
eff380aaffedb27 Anirudh Venkataramanan 2019-10-24  1033  	if (status) {
5f87ec4861aa1b8 Tony Nguyen            2021-10-07  1034  		dev_err(ice_pf_to_dev(pf), "Failed to set LAN Tx queue context, error: %d\n",
5f87ec4861aa1b8 Tony Nguyen            2021-10-07  1035  			status);
c14846914ed6b57 Tony Nguyen            2021-10-07  1036  		return status;
eff380aaffedb27 Anirudh Venkataramanan 2019-10-24  1037  	}
eff380aaffedb27 Anirudh Venkataramanan 2019-10-24  1038  
eff380aaffedb27 Anirudh Venkataramanan 2019-10-24  1039  	/* Add Tx Queue TEID into the VSI Tx ring from the
eff380aaffedb27 Anirudh Venkataramanan 2019-10-24  1040  	 * response. This will complete configuring and
eff380aaffedb27 Anirudh Venkataramanan 2019-10-24  1041  	 * enabling the queue.
eff380aaffedb27 Anirudh Venkataramanan 2019-10-24  1042  	 */
eff380aaffedb27 Anirudh Venkataramanan 2019-10-24  1043  	txq = &qg_buf->txqs[0];
eff380aaffedb27 Anirudh Venkataramanan 2019-10-24  1044  	if (pf_q == le16_to_cpu(txq->txq_id))
eff380aaffedb27 Anirudh Venkataramanan 2019-10-24  1045  		ring->txq_teid = le32_to_cpu(txq->q_teid);
eff380aaffedb27 Anirudh Venkataramanan 2019-10-24  1046  
51900dfcf194b39 Paul Greenwalt         2025-03-11  1047  	if (tstamp_ring) {
51900dfcf194b39 Paul Greenwalt         2025-03-11  1048  		u8 txtime_buf_len = struct_size(txtime_qg_buf, txtimeqs, 1);
51900dfcf194b39 Paul Greenwalt         2025-03-11  1049  		struct ice_txtime_ctx txtime_ctx = {};
51900dfcf194b39 Paul Greenwalt         2025-03-11  1050  
51900dfcf194b39 Paul Greenwalt         2025-03-11  1051  		ice_setup_txtime_ctx(tstamp_ring, &txtime_ctx,
51900dfcf194b39 Paul Greenwalt         2025-03-11  1052  				     !!(ring->flags & ICE_TX_FLAGS_TXTIME));
51900dfcf194b39 Paul Greenwalt         2025-03-11  1053  		ice_pack_txtime_ctx(&txtime_ctx,
51900dfcf194b39 Paul Greenwalt         2025-03-11  1054  				    &txtime_qg_buf->txtimeqs[0].txtime_ctx);
51900dfcf194b39 Paul Greenwalt         2025-03-11  1055  
51900dfcf194b39 Paul Greenwalt         2025-03-11  1056  		tstamp_ring->tail =
51900dfcf194b39 Paul Greenwalt         2025-03-11  1057  			 hw->hw_addr + E830_GLQTX_TXTIME_DBELL_LSB(pf_q);
51900dfcf194b39 Paul Greenwalt         2025-03-11  1058  
51900dfcf194b39 Paul Greenwalt         2025-03-11  1059  		status = ice_aq_set_txtimeq(hw, pf_q, 1, txtime_qg_buf,
51900dfcf194b39 Paul Greenwalt         2025-03-11  1060  					    txtime_buf_len, NULL);
51900dfcf194b39 Paul Greenwalt         2025-03-11  1061  		if (status) {
51900dfcf194b39 Paul Greenwalt         2025-03-11  1062  			dev_err(ice_pf_to_dev(pf), "Failed to set Tx Time queue context, error: %d\n",
51900dfcf194b39 Paul Greenwalt         2025-03-11  1063  				status);
51900dfcf194b39 Paul Greenwalt         2025-03-11  1064  			return status;
51900dfcf194b39 Paul Greenwalt         2025-03-11  1065  		}
51900dfcf194b39 Paul Greenwalt         2025-03-11  1066  	}
51900dfcf194b39 Paul Greenwalt         2025-03-11  1067  
eff380aaffedb27 Anirudh Venkataramanan 2019-10-24  1068  	return 0;
eff380aaffedb27 Anirudh Venkataramanan 2019-10-24  1069  }
eff380aaffedb27 Anirudh Venkataramanan 2019-10-24  1070  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
