Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C165199F2E6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Oct 2024 18:41:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6550F80E5A;
	Tue, 15 Oct 2024 16:41:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6kALrLMUOZwt; Tue, 15 Oct 2024 16:41:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 902C580E86
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729010504;
	bh=JNzQK1HhioyRYMI6rcLSHl2RrpWukgynKg8JLkqfnC0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6CxADE1SLpGauHKilTm6eo3R7KParKgRzuRHRZcLaFLmZ974owrfkiQh4yWmjm/Bc
	 5366WyrKkT54zoLqZp3b7Y00nrahljg0lzFQ5kwJgdYqsoEXg7YMJdwa31xr/HiRRM
	 SkvpckZ+4pq2Zq5thUrxUgFUkIoGJf1eLMw9+GC72+g/ElpkSBCGjyVfmhXQU2SrdR
	 wXLL/SSkgQnfvbamyfdF0lwio16kMvQtMppmqrde6ydbyYb2xbYyGcnD0zndPYskzD
	 IAEHfhf69OwPdXg8Atq5dPWnqTPtNz4sc8rt0QY/+kIMOPwiAiFk+C3OVBtw4UFSEC
	 TX064s0NizHZg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 902C580E86;
	Tue, 15 Oct 2024 16:41:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CE7F31BF312
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Oct 2024 16:41:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BBCFE605EA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Oct 2024 16:41:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L3VjPVV6TB4c for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Oct 2024 16:41:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E36AC6059D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E36AC6059D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E36AC6059D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Oct 2024 16:41:38 +0000 (UTC)
X-CSE-ConnectionGUID: gxSzgpQHTZ6bKEoGbrmaOg==
X-CSE-MsgGUID: GH3sRRp/R1GE20OSp9YReQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11225"; a="28547868"
X-IronPort-AV: E=Sophos;i="6.11,205,1725346800"; d="scan'208";a="28547868"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2024 09:41:38 -0700
X-CSE-ConnectionGUID: SczcHlVvR2aaw+M8ZU1KJQ==
X-CSE-MsgGUID: MBS919D0RLCIncI6MSDq/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,205,1725346800"; d="scan'208";a="78131266"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
 by orviesa006.jf.intel.com with ESMTP; 15 Oct 2024 09:41:36 -0700
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1t0kc1-000Jcn-2i;
 Tue, 15 Oct 2024 16:41:33 +0000
Date: Wed, 16 Oct 2024 00:41:24 +0800
From: kernel test robot <lkp@intel.com>
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 intel-wired-lan@lists.osuosl.org, aleksander.lobakin@intel.com
Message-ID: <202410160029.BdxyUZWz-lkp@intel.com>
References: <20241013154415.20262-10-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241013154415.20262-10-mateusz.polchlopek@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729010499; x=1760546499;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=1RCvuv83jk4fBfbF/fCasfyo6o7vAPm6BJjDx/dVE1A=;
 b=Dj8JZ4B2w6OXG2cdQ89C5s5Pj0pcsgLqK+QqbX3LbGt9GC1Vl63GJyb+
 DaFd6kfiBukedFMZ2/EMdTYr+vO/Z2Bf8QrIfql5yXga7WKgwgr4PS6Dq
 1clXR2YLaqgiVtkh55iXp1GQawPya25sSZ3GjGahiMEKVGPpoaMFJES40
 ufMM9Bgcs27uqd5zvkXE7IJ/4ShPnorIjznQg1Ev9c/psJpXlQN66X6yt
 u22SmqCg3YgoE0OfciFZjVRfCRG8XuWBYnzfquthKEHBNhlk+pjmx06pF
 E8oQml+q7RDM3aFsJFUZm+SyX9fGODrowrJt9hARC7JLNv1xdmR/io3Om
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Dj8JZ4B2
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
Cc: netdev@vger.kernel.org, Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 oe-kbuild-all@lists.linux.dev
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Mateusz,

kernel test robot noticed the following build errors:

[auto build test ERROR on a77c49f53be0af1efad5b4541a9a145505c81800]

url:    https://github.com/intel-lab-lkp/linux/commits/Mateusz-Polchlopek/virtchnl-add-support-for-enabling-PTP-on-iAVF/20241014-174710
base:   a77c49f53be0af1efad5b4541a9a145505c81800
patch link:    https://lore.kernel.org/r/20241013154415.20262-10-mateusz.polchlopek%40intel.com
patch subject: [Intel-wired-lan] [PATCH iwl-next v11 09/14] libeth: move idpf_rx_csum_decoded and idpf_rx_extracted
config: alpha-allyesconfig (https://download.01.org/0day-ci/archive/20241016/202410160029.BdxyUZWz-lkp@intel.com/config)
compiler: alpha-linux-gcc (GCC) 13.3.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20241016/202410160029.BdxyUZWz-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202410160029.BdxyUZWz-lkp@intel.com/

All errors (new ones prefixed by >>):

   drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c: In function 'idpf_rx_singleq_clean':
>> drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c:1040:78: error: expected ';' before 'napi_gro_receive'
    1040 |                 idpf_rx_singleq_process_skb_fields(rx_q, skb, rx_desc, ptype)
         |                                                                              ^
         |                                                                              ;
   ......
    1043 |                 napi_gro_receive(rx_q->pp->p.napi, skb);
         |                 ~~~~~~~~~~~~~~~~                                              


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
