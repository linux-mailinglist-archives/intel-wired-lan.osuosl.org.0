Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3442399F4C6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Oct 2024 20:03:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CB90060842;
	Tue, 15 Oct 2024 18:03:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qTsE5Zvzga0g; Tue, 15 Oct 2024 18:03:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6385060888
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729015428;
	bh=g085k9b+sZOfBzv4vTMMqxWN1rAHPei97pUqHGNGvuw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=v4assXgNowfjsnJMquulD7I1mJpLr+OPhmDYp43NANJSmosAiqucQUMby8pB0eGzF
	 nUakJRJ0YrifqT6cmMaMP601C3KYRmOPoEg+tbegfDWjoH07Z56j6p9pZkXbKusZyt
	 mtfq6sYXH1eCxocz0vZZ7dz5OPQx9Oq0daTsCP1OTp4znRjgyVLBg5nq5RzZXmlpi2
	 c7Tm6pyxGgUwvyrGU9etziId9C9sEmxIOkls8YEMmCYFh/YMJSFy/9d0AbzRN7twNY
	 iA0+lZndVwX/Xh0BVNSKn1qZej/6ixZsdW4pw/y4wbzIkb4YekUIIzd3uxvryneLuP
	 f6uovjsyqSqhQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6385060888;
	Tue, 15 Oct 2024 18:03:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5282D1BF35B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Oct 2024 18:03:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3FCE6405D3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Oct 2024 18:03:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pxGKfAPwufbT for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Oct 2024 18:03:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7E6F140195
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7E6F140195
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7E6F140195
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Oct 2024 18:03:43 +0000 (UTC)
X-CSE-ConnectionGUID: RCwDBHnLS7qwY93aCBGb/g==
X-CSE-MsgGUID: qFrGliAxSxSbTcpZu8JXTQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11225"; a="39818628"
X-IronPort-AV: E=Sophos;i="6.11,205,1725346800"; d="scan'208";a="39818628"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2024 11:03:43 -0700
X-CSE-ConnectionGUID: 2OLwxAtWR3mbgRXseSctXw==
X-CSE-MsgGUID: 8OsR92p0ScO85/UBS+NHkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,205,1725346800"; d="scan'208";a="78158364"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
 by orviesa006.jf.intel.com with ESMTP; 15 Oct 2024 11:03:41 -0700
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1t0ltS-000JhW-23;
 Tue, 15 Oct 2024 18:03:38 +0000
Date: Wed, 16 Oct 2024 02:03:30 +0800
From: kernel test robot <lkp@intel.com>
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 intel-wired-lan@lists.osuosl.org, aleksander.lobakin@intel.com
Message-ID: <202410160123.5dWnVGKr-lkp@intel.com>
References: <20241013154415.20262-10-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241013154415.20262-10-mateusz.polchlopek@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729015424; x=1760551424;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=FUxYJtCSs6rsDB6KaZF+B5u3c5DTcljuc15UIOoOLjw=;
 b=kO0SN1wQ52pmVTwp2wqq8RT3QUHpiwaUHAJohuLfhZkyYPR9o1+Gdi4y
 MAl8sEmckk2zFNYsIkhml8k/GYn38uiz1yVPWQEVieTlouyVEplyYvg6y
 8YubN8Id9Zicl+CAk03j8VF36GqnOQdcGWiw9rQWvSkzeMIw574++drRh
 9ya+/IFhk0e8xNVZx2mj8DT+TSbkm/09CJqcdzrTCjz8DUXz+MxRmbjam
 BIjvdOPQ32GYsytLy6RkYQ1AW4tCac7mRG80fv9vZX/Bfk1L90mG53MWE
 lSdecGTTf/+RLhbbACyG6z/eH+2u+1rgzRBfFLPgdA0oiV3/+U5/TEA4l
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kO0SN1wQ
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v11 09/14] libeth: move
 idpf_rx_csum_decoded and idpf_rx_extracted
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
Cc: Mateusz Polchlopek <mateusz.polchlopek@intel.com>, netdev@vger.kernel.org,
 llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Mateusz,

kernel test robot noticed the following build errors:

[auto build test ERROR on a77c49f53be0af1efad5b4541a9a145505c81800]

url:    https://github.com/intel-lab-lkp/linux/commits/Mateusz-Polchlopek/virtchnl-add-support-for-enabling-PTP-on-iAVF/20241014-174710
base:   a77c49f53be0af1efad5b4541a9a145505c81800
patch link:    https://lore.kernel.org/r/20241013154415.20262-10-mateusz.polchlopek%40intel.com
patch subject: [Intel-wired-lan] [PATCH iwl-next v11 09/14] libeth: move idpf_rx_csum_decoded and idpf_rx_extracted
config: x86_64-allyesconfig (https://download.01.org/0day-ci/archive/20241016/202410160123.5dWnVGKr-lkp@intel.com/config)
compiler: clang version 18.1.8 (https://github.com/llvm/llvm-project 3b5b5c1ec4a3095ab096dd780e84d7ab81f3d7ff)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20241016/202410160123.5dWnVGKr-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202410160123.5dWnVGKr-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c:1040:64: error: expected ';' after expression
    1040 |                 idpf_rx_singleq_process_skb_fields(rx_q, skb, rx_desc, ptype)
         |                                                                              ^
         |                                                                              ;
   1 error generated.


vim +1040 drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c

   954	
   955	/**
   956	 * idpf_rx_singleq_clean - Reclaim resources after receive completes
   957	 * @rx_q: rx queue to clean
   958	 * @budget: Total limit on number of packets to process
   959	 *
   960	 * Returns true if there's any budget left (e.g. the clean is finished)
   961	 */
   962	static int idpf_rx_singleq_clean(struct idpf_rx_queue *rx_q, int budget)
   963	{
   964		unsigned int total_rx_bytes = 0, total_rx_pkts = 0;
   965		struct sk_buff *skb = rx_q->skb;
   966		u16 ntc = rx_q->next_to_clean;
   967		u16 cleaned_count = 0;
   968		bool failure = false;
   969	
   970		/* Process Rx packets bounded by budget */
   971		while (likely(total_rx_pkts < (unsigned int)budget)) {
   972			struct libeth_rqe_info fields = { };
   973			union virtchnl2_rx_desc *rx_desc;
   974			struct idpf_rx_buf *rx_buf;
   975			u32 ptype;
   976	
   977			/* get the Rx desc from Rx queue based on 'next_to_clean' */
   978			rx_desc = &rx_q->rx[ntc];
   979	
   980			/* status_error_ptype_len will always be zero for unused
   981			 * descriptors because it's cleared in cleanup, and overlaps
   982			 * with hdr_addr which is always zero because packet split
   983			 * isn't used, if the hardware wrote DD then the length will be
   984			 * non-zero
   985			 */
   986	#define IDPF_RXD_DD VIRTCHNL2_RX_BASE_DESC_STATUS_DD_M
   987			if (!idpf_rx_singleq_test_staterr(rx_desc,
   988							  IDPF_RXD_DD))
   989				break;
   990	
   991			/* This memory barrier is needed to keep us from reading
   992			 * any other fields out of the rx_desc
   993			 */
   994			dma_rmb();
   995	
   996			idpf_rx_singleq_extract_fields(rx_q, rx_desc, &fields, &ptype);
   997	
   998			rx_buf = &rx_q->rx_buf[ntc];
   999			if (!libeth_rx_sync_for_cpu(rx_buf, fields.len))
  1000				goto skip_data;
  1001	
  1002			if (skb)
  1003				idpf_rx_add_frag(rx_buf, skb, fields.len);
  1004			else
  1005				skb = idpf_rx_build_skb(rx_buf, fields.len);
  1006	
  1007			/* exit if we failed to retrieve a buffer */
  1008			if (!skb)
  1009				break;
  1010	
  1011	skip_data:
  1012			rx_buf->page = NULL;
  1013	
  1014			IDPF_SINGLEQ_BUMP_RING_IDX(rx_q, ntc);
  1015			cleaned_count++;
  1016	
  1017			/* skip if it is non EOP desc */
  1018			if (idpf_rx_singleq_is_non_eop(rx_desc) || unlikely(!skb))
  1019				continue;
  1020	
  1021	#define IDPF_RXD_ERR_S FIELD_PREP(VIRTCHNL2_RX_BASE_DESC_QW1_ERROR_M, \
  1022					  VIRTCHNL2_RX_BASE_DESC_ERROR_RXE_M)
  1023			if (unlikely(idpf_rx_singleq_test_staterr(rx_desc,
  1024								  IDPF_RXD_ERR_S))) {
  1025				dev_kfree_skb_any(skb);
  1026				skb = NULL;
  1027				continue;
  1028			}
  1029	
  1030			/* pad skb if needed (to make valid ethernet frame) */
  1031			if (eth_skb_pad(skb)) {
  1032				skb = NULL;
  1033				continue;
  1034			}
  1035	
  1036			/* probably a little skewed due to removing CRC */
  1037			total_rx_bytes += skb->len;
  1038	
  1039			/* protocol */
> 1040			idpf_rx_singleq_process_skb_fields(rx_q, skb, rx_desc, ptype)
  1041	
  1042			/* send completed skb up the stack */
  1043			napi_gro_receive(rx_q->pp->p.napi, skb);
  1044			skb = NULL;
  1045	
  1046			/* update budget accounting */
  1047			total_rx_pkts++;
  1048		}
  1049	
  1050		rx_q->skb = skb;
  1051	
  1052		rx_q->next_to_clean = ntc;
  1053	
  1054		page_pool_nid_changed(rx_q->pp, numa_mem_id());
  1055		if (cleaned_count)
  1056			failure = idpf_rx_singleq_buf_hw_alloc_all(rx_q, cleaned_count);
  1057	
  1058		u64_stats_update_begin(&rx_q->stats_sync);
  1059		u64_stats_add(&rx_q->q_stats.packets, total_rx_pkts);
  1060		u64_stats_add(&rx_q->q_stats.bytes, total_rx_bytes);
  1061		u64_stats_update_end(&rx_q->stats_sync);
  1062	
  1063		/* guarantee a trip back through this routine if there was a failure */
  1064		return failure ? budget : (int)total_rx_pkts;
  1065	}
  1066	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
