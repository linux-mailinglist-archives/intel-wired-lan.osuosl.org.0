Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 63CE98D2543
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 May 2024 21:53:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 14A844010F;
	Tue, 28 May 2024 19:53:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bPVU8FN24AuB; Tue, 28 May 2024 19:53:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9CE414015D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716926018;
	bh=eo3i/WnUq65T5vnB+U1umDkAAJtjIH9FxYqtoKipc/w=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Kv6bYKZh5ERUrbjNYRk3irwDikicMutMehVmoKH7Afp3/saHQbvUEdHkluIXTv6gw
	 AuiCWtIoP0lZMxxD/Qulq2qJeJozt7W+c4w1ipQqObicYJaz46FKaiDVYB5js/kdRw
	 yyDDZftS5bXh2ly8JtWCcwtZ6tv8V3hB9LAYcvGuT3D8jCiRVIF3BrK1Al2Q0EnEGv
	 5CjvyDQUbJLzqoXvQYw/ogVyCXWkFIL5sT1Y2aYe3nmK0eGbSV1tIaPoyeDhs4Wcyh
	 SN5fW1abeWbCJnemRX2PabzR60TgMRUqcblje36RUa4kFu07L/F4y2x+6LSHi0waqu
	 ZY54a86aW6QuQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9CE414015D;
	Tue, 28 May 2024 19:53:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7E8301D2C61
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 19:53:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 697C74010F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 19:53:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CQN3hkAnGzay for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 May 2024 19:53:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7AAEB40108
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7AAEB40108
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7AAEB40108
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 19:53:33 +0000 (UTC)
X-CSE-ConnectionGUID: PXbanDBSTq+f/9yyqnbByw==
X-CSE-MsgGUID: Ew/gifcwTVeEJDastAc8mA==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="38680921"
X-IronPort-AV: E=Sophos;i="6.08,196,1712646000"; d="scan'208";a="38680921"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 12:53:33 -0700
X-CSE-ConnectionGUID: TbU7bDAvS9WqN0SZ/Fi57Q==
X-CSE-MsgGUID: HAEOm8hlQN+2e4GC485Nog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,196,1712646000"; d="scan'208";a="66372826"
Received: from unknown (HELO 0610945e7d16) ([10.239.97.151])
 by fmviesa001.fm.intel.com with ESMTP; 28 May 2024 12:53:31 -0700
Received: from kbuild by 0610945e7d16 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sC2sx-000ChX-0X;
 Tue, 28 May 2024 19:53:27 +0000
Date: Wed, 29 May 2024 03:52:57 +0800
From: kernel test robot <lkp@intel.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 intel-wired-lan@lists.osuosl.org
Message-ID: <202405290301.TKfQE09f-lkp@intel.com>
References: <20240528131429.3012910-9-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240528131429.3012910-9-maciej.fijalkowski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716926015; x=1748462015;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=2GDLW8mBju1o4uG0m5oGOiGTXqNYk//TNfdjYbjVCC0=;
 b=D79kDFaHA386FsuLhEofUGzcxvOA4EL9XnqQb4AX1WmYjV0W5L4WxIjk
 DGpC/rgX05XlARyxdljmq/JXh/yEfEqgk2RNKuGyvhBIZqmBNthBnYn+n
 Qg+1j6vG1afMCVeY6D+k3JVD+WK6jPNoDeWziQf1zsmbIVYBdLGF7AaNj
 9wVnFg17D/Py7+PVOa0ThoTgp/uJlAwqcI5Hw1sGS8OgWNwFetjLK8Rks
 orT9YSeUJXI1dqc5Vplk+6Mu/vaP/SzA0cAc4JpXNdMpQqOgVtq3ys+7n
 EFw3pX1RwKQQFzlH1vQX/2U0l2293IKpcEUN1ci4GUiaoQnVi+0DRyPQE
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=D79kDFaH
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 08/11] ice: xsk: fix txq
 interrupt mapping
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>, larysa.zaremba@intel.com,
 netdev@vger.kernel.org, michal.kubiak@intel.com, anthony.l.nguyen@intel.com,
 oe-kbuild-all@lists.linux.dev, magnus.karlsson@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Maciej,

kernel test robot noticed the following build warnings:

[auto build test WARNING on tnguy-net-queue/dev-queue]

url:    https://github.com/intel-lab-lkp/linux/commits/Maciej-Fijalkowski/ice-respect-netif-readiness-in-AF_XDP-ZC-related-ndo-s/20240528-211914
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
patch link:    https://lore.kernel.org/r/20240528131429.3012910-9-maciej.fijalkowski%40intel.com
patch subject: [Intel-wired-lan] [PATCH iwl-net 08/11] ice: xsk: fix txq interrupt mapping
config: alpha-allyesconfig (https://download.01.org/0day-ci/archive/20240529/202405290301.TKfQE09f-lkp@intel.com/config)
compiler: alpha-linux-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240529/202405290301.TKfQE09f-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202405290301.TKfQE09f-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/net/ethernet/intel/ice/ice_xsk.c:117: warning: Function parameter or struct member 'qid' not described in 'ice_qvec_cfg_msix'
   drivers/net/ethernet/intel/ice/ice_xsk.c:479: warning: Function parameter or struct member 'xsk_pool' not described in '__ice_alloc_rx_bufs_zc'
   drivers/net/ethernet/intel/ice/ice_xsk.c:528: warning: Function parameter or struct member 'xsk_pool' not described in 'ice_alloc_rx_bufs_zc'
   drivers/net/ethernet/intel/ice/ice_xsk.c:983: warning: Function parameter or struct member 'xsk_pool' not described in 'ice_xmit_pkt'
   drivers/net/ethernet/intel/ice/ice_xsk.c:1008: warning: Function parameter or struct member 'xsk_pool' not described in 'ice_xmit_pkt_batch'
   drivers/net/ethernet/intel/ice/ice_xsk.c:1041: warning: Function parameter or struct member 'xsk_pool' not described in 'ice_fill_tx_hw_ring'


vim +117 drivers/net/ethernet/intel/ice/ice_xsk.c

2d4238f55697221 Krzysztof Kazimierczak 2019-11-04  109  
2d4238f55697221 Krzysztof Kazimierczak 2019-11-04  110  /**
2d4238f55697221 Krzysztof Kazimierczak 2019-11-04  111   * ice_qvec_cfg_msix - Enable IRQ for given queue vector
2d4238f55697221 Krzysztof Kazimierczak 2019-11-04  112   * @vsi: the VSI that contains queue vector
2d4238f55697221 Krzysztof Kazimierczak 2019-11-04  113   * @q_vector: queue vector
2d4238f55697221 Krzysztof Kazimierczak 2019-11-04  114   */
2d4238f55697221 Krzysztof Kazimierczak 2019-11-04  115  static void
d77176d15a1b0ed Maciej Fijalkowski     2024-05-28  116  ice_qvec_cfg_msix(struct ice_vsi *vsi, struct ice_q_vector *q_vector, u16 qid)
2d4238f55697221 Krzysztof Kazimierczak 2019-11-04 @117  {
2d4238f55697221 Krzysztof Kazimierczak 2019-11-04  118  	u16 reg_idx = q_vector->reg_idx;
2d4238f55697221 Krzysztof Kazimierczak 2019-11-04  119  	struct ice_pf *pf = vsi->back;
2d4238f55697221 Krzysztof Kazimierczak 2019-11-04  120  	struct ice_hw *hw = &pf->hw;
d77176d15a1b0ed Maciej Fijalkowski     2024-05-28  121  	int q, _qid = qid;
2d4238f55697221 Krzysztof Kazimierczak 2019-11-04  122  
2d4238f55697221 Krzysztof Kazimierczak 2019-11-04  123  	ice_cfg_itr(hw, q_vector);
2d4238f55697221 Krzysztof Kazimierczak 2019-11-04  124  
d77176d15a1b0ed Maciej Fijalkowski     2024-05-28  125  	for (q = 0; q < q_vector->num_ring_tx; q++) {
d77176d15a1b0ed Maciej Fijalkowski     2024-05-28  126  		ice_cfg_txq_interrupt(vsi, _qid, reg_idx, q_vector->tx.itr_idx);
d77176d15a1b0ed Maciej Fijalkowski     2024-05-28  127  		_qid++;
d77176d15a1b0ed Maciej Fijalkowski     2024-05-28  128  	}
2d4238f55697221 Krzysztof Kazimierczak 2019-11-04  129  
d77176d15a1b0ed Maciej Fijalkowski     2024-05-28  130  	_qid = qid;
d77176d15a1b0ed Maciej Fijalkowski     2024-05-28  131  
d77176d15a1b0ed Maciej Fijalkowski     2024-05-28  132  	for (q = 0; q < q_vector->num_ring_rx; q++) {
d77176d15a1b0ed Maciej Fijalkowski     2024-05-28  133  		ice_cfg_rxq_interrupt(vsi, _qid, reg_idx, q_vector->rx.itr_idx);
d77176d15a1b0ed Maciej Fijalkowski     2024-05-28  134  		_qid++;
d77176d15a1b0ed Maciej Fijalkowski     2024-05-28  135  	}
2d4238f55697221 Krzysztof Kazimierczak 2019-11-04  136  
2d4238f55697221 Krzysztof Kazimierczak 2019-11-04  137  	ice_flush(hw);
2d4238f55697221 Krzysztof Kazimierczak 2019-11-04  138  }
2d4238f55697221 Krzysztof Kazimierczak 2019-11-04  139  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
