Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A83B2A5D4AF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Mar 2025 04:17:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1E71E410F0;
	Wed, 12 Mar 2025 03:17:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KRcKlD_dmhn8; Wed, 12 Mar 2025 03:17:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5AEB54111F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741749419;
	bh=52xsjPSQtnG6SosdpKgjxhzX8jMjItKknXewt2hD/yg=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nLOSmz0RnhwfGXwSYWgsaDQ3D5Suk3KcXGTvPcOZh8mQIDHl/q2V8FxwK2PYuJNd4
	 P/i4hdedflvQpL78JL9PEbItjGCB4Xoqicgi5mr1Sm0Lm0R9epAaHJuMDgy5WaQtu4
	 LnSZz6g0WujuUE5u+p2ZrvJLMbjFIfG3OdGywGUM/t5tiPmwOYPKYBiWcBZiBFvy23
	 f/tzhRdOpf6k35O4p3mZ5UN1pgCMDlhgki51+3w1LIVrV8fuTlp8g/24AHxf25Xilg
	 6jJDq8zT8IMNwGFeLshpot/bOE3TC45IYgsRV3J5KsXQ3UYd4a1K147/STbsjbvyQ1
	 adCOiKPBM9O0w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5AEB54111F;
	Wed, 12 Mar 2025 03:16:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1FBEE943
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 03:16:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 18D3C410F0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 03:16:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Jwx9CeTw-Vz9 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Mar 2025 03:16:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 90108409EC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 90108409EC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 90108409EC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 03:16:55 +0000 (UTC)
X-CSE-ConnectionGUID: rjpWf6lORd2v67zvIR0uYg==
X-CSE-MsgGUID: EV45J6NaR5mwjoWh69EdlA==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="42850349"
X-IronPort-AV: E=Sophos;i="6.14,240,1736841600"; d="scan'208";a="42850349"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 20:16:55 -0700
X-CSE-ConnectionGUID: HmaKDxfPQF2c5jS54m/ILA==
X-CSE-MsgGUID: Hch2/FQCQfyXOa4SBQfMlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,240,1736841600"; d="scan'208";a="125401029"
Received: from lkp-server02.sh.intel.com (HELO a4747d147074) ([10.239.97.151])
 by orviesa003.jf.intel.com with ESMTP; 11 Mar 2025 20:16:52 -0700
Received: from kbuild by a4747d147074 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tsCaP-00085A-33;
 Wed, 12 Mar 2025 03:16:49 +0000
Date: Wed, 12 Mar 2025 11:16:12 +0800
From: kernel test robot <lkp@intel.com>
To: Paul Greenwalt <paul.greenwalt@intel.com>, intel-wired-lan@lists.osuosl.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
 netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 Paul Greenwalt <paul.greenwalt@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Alice Michael <alice.michael@intel.com>
Message-ID: <202503121005.iGEV5eau-lkp@intel.com>
References: <20250311132327.76804-1-paul.greenwalt@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250311132327.76804-1-paul.greenwalt@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741749416; x=1773285416;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ko7Tc3C+mirQDYlajagDRqIRlUKa9AwTZ8pNLxpRF1g=;
 b=dUpzI5KoEyyqa4ZmIo7Cv9wVaHZPQh3UlpGW8Mh0E/yzpz63Q64/zN2S
 KlAiXTyXZjazx2GRJGJudpfOU3/t2/rIDd02IDWSMQm9aHn11ceVjoG+k
 zz9kBQUqboBCM27Mmd12lPBRf2+cXYhx2jZTpEBGXe6fcCrccGHqatbZ3
 AUl3nPgb03DCtwLd3Doi7gz+aRmRFky0A3CHfN+eoR+D9BQResOuKCyxl
 Y0ABe8HBhmyp/WDHG1ODzOD/TCBjI2hB+a4od/r2hT6wlzE0zfF3f7Cuq
 epbc988sIMD0xFcH60bNyyIFJQeTuwNyybLv8FPw3DuJsgh8iVkRdHExL
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dUpzI5Ko
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

kernel test robot noticed the following build warnings:

[auto build test WARNING on tnguy-next-queue/dev-queue]

url:    https://github.com/intel-lab-lkp/linux/commits/Paul-Greenwalt/ice-add-E830-Earliest-TxTime-First-Offload-support/20250312-051400
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
patch link:    https://lore.kernel.org/r/20250311132327.76804-1-paul.greenwalt%40intel.com
patch subject: [PATCH iwl-next v2] ice: add E830 Earliest TxTime First Offload support
config: s390-allyesconfig (https://download.01.org/0day-ci/archive/20250312/202503121005.iGEV5eau-lkp@intel.com/config)
compiler: s390-linux-gcc (GCC) 14.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250312/202503121005.iGEV5eau-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202503121005.iGEV5eau-lkp@intel.com/

All warnings (new ones prefixed by >>):

   drivers/net/ethernet/intel/ice/ice_base.c: In function 'ice_vsi_cfg_txq':
>> drivers/net/ethernet/intel/ice/ice_base.c:1023:46: warning: passing argument 1 of 'ice_calc_txq_handle' discards 'const' qualifier from pointer target type [-Wdiscarded-qualifiers]
    1023 |         ring->q_handle = ice_calc_txq_handle(vsi, ring, tc);
         |                                              ^~~
   drivers/net/ethernet/intel/ice/ice_base.c:245:48: note: expected 'struct ice_vsi *' but argument is of type 'const struct ice_vsi *'
     245 | static u16 ice_calc_txq_handle(struct ice_vsi *vsi, struct ice_tx_ring *ring, u8 tc)
         |                                ~~~~~~~~~~~~~~~~^~~


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
