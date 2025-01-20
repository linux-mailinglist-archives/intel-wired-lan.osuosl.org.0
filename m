Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CF6AA166A6
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Jan 2025 07:26:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5BE39409F5;
	Mon, 20 Jan 2025 06:26:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i2UmYLUFSwB9; Mon, 20 Jan 2025 06:26:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0E07D409F7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737354388;
	bh=x8srBVxpY1Y2go61LooQLLm+zkt7yvzarZ1bWM91bzs=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jtjcDtcAgyiWO2g54IdbsfvnsyemPY6UJteq6LPqhvqr1W+vSaaeRD3KLbuuGsj7J
	 CdPThUTMinUHQpVEkJNV/8sqWIgyzNMUtBa8noCXZLImQMUGHLDfNLbdX1lMfI+mZr
	 tj5g0wlN5boxH4a+lCNW4wCy86nPVgMgCbcoP4XlLmBAQQ4wigwzbzrbYtO5Sc02PP
	 AXfbinpoVN+Auv9IpvUUkFTvrh3EtjXPdSGxDI4RcHHUHIfQuQZ0wtIgWbzgMIdIOn
	 6AVNfuKJIyOc1Nv5ZQ60Dbl2PIlu0hfeBKPwepZNL8RUz9OfES9baAFSWtHf7COY5k
	 cTf2+UoJZuQ3A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0E07D409F7;
	Mon, 20 Jan 2025 06:26:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id C351369
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Jan 2025 06:26:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AEAC14012E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Jan 2025 06:26:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1s7g84ireDH9 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Jan 2025 06:26:24 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 133AA400AC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 133AA400AC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 133AA400AC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Jan 2025 06:26:23 +0000 (UTC)
X-CSE-ConnectionGUID: 1bqCfFL+QOe3fQXLqYBHWg==
X-CSE-MsgGUID: mWuF7QWpQAerInQWNueofA==
X-IronPort-AV: E=McAfee;i="6700,10204,11320"; a="37622990"
X-IronPort-AV: E=Sophos;i="6.13,218,1732608000"; d="scan'208";a="37622990"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2025 22:26:15 -0800
X-CSE-ConnectionGUID: 2o19Sr1rR0+02sq9LFLQ2g==
X-CSE-MsgGUID: X0kZiFOHTdmNQOkx3eVPsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="106227294"
Received: from mohdfai2-mobl.gar.corp.intel.com (HELO [10.247.64.131])
 ([10.247.64.131])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2025 22:26:01 -0800
Message-ID: <84770113-2546-4035-8bd4-bf9cedcfb00f@linux.intel.com>
Date: Mon, 20 Jan 2025 14:25:45 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Song Yoong Siang <yoong.siang.song@intel.com>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 Willem de Bruijn <willemb@google.com>,
 Florian Bezdeka <florian.bezdeka@siemens.com>,
 Donald Hunter <donald.hunter@gmail.com>, Jonathan Corbet <corbet@lwn.net>,
 Bjorn Topel <bjorn@kernel.org>, Magnus Karlsson <magnus.karlsson@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Joe Damato <jdamato@fastly.com>,
 Stanislav Fomichev <sdf@fomichev.me>, Xuan Zhuo
 <xuanzhuo@linux.alibaba.com>, Mina Almasry <almasrymina@google.com>,
 Daniel Jurgens <danielj@nvidia.com>, Andrii Nakryiko <andrii@kernel.org>,
 Eduard Zingerman <eddyz87@gmail.com>, Mykola Lysenko <mykolal@fb.com>,
 Martin KaFai Lau <martin.lau@linux.dev>, Song Liu <song@kernel.org>,
 Yonghong Song <yonghong.song@linux.dev>, KP Singh <kpsingh@kernel.org>,
 Hao Luo <haoluo@google.com>, Jiri Olsa <jolsa@kernel.org>,
 Shuah Khan <shuah@kernel.org>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Jose Abreu <joabreu@synopsys.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org, bpf@vger.kernel.org,
 linux-kselftest@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, intel-wired-lan@lists.osuosl.org,
 xdp-hints@xdp-project.net
References: <20250116155350.555374-1-yoong.siang.song@intel.com>
 <20250116155350.555374-5-yoong.siang.song@intel.com>
Content-Language: en-US
From: "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com>
In-Reply-To: <20250116155350.555374-5-yoong.siang.song@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737354384; x=1768890384;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=tnsWXzYfmvn62Lbs810i3rTWmbN0EXhNDxrDhCk8CD8=;
 b=gsI8qbEjoLH2YfFIFL5USV/VmJlo6fYr1VpQ6dWImJJyzOnnxknHu57t
 xbtijikuJ6lN+R0mSlBYF6Jn/qCBvxUCMtC/3u4A3/5BWlsnHN1ysa5UT
 ICHMMEXh0hkhxJtQQ2wwlFadd/mrJj+vh985wPccLawqx356IXy8zzkfv
 6/S8XrQY3RVVgWv7R8V/UaXcrBI1Gyj0zJuo6Vl+LV95u5Qq3DK9rvNNK
 yQKJNFHX2XNHCRV0CpapQF/EGgFJC5n13wdMNc11WiQ2gXlJBH6IyTzL8
 Ttpg84BoVUa/WUXX7VkrU+cqb0v9sTbimDgdBS2DLv8aDdF/jTkMM2kR6
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gsI8qbEj
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v6 4/4] igc: Add launch time
 support to XDP ZC
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


Hi Siang.

On 16/1/2025 11:53 pm, Song Yoong Siang wrote:
> Enable Launch Time Control (LTC) support to XDP zero copy via XDP Tx
> metadata framework.
> 
> This patch is tested with tools/testing/selftests/bpf/xdp_hw_metadata on
> Intel I225-LM Ethernet controller. Below are the test steps and result.
> 
> Test Steps:
> 1. At DUT, start xdp_hw_metadata selftest application:
>     $ sudo ./xdp_hw_metadata enp2s0 -l 1000000000 -L 1
> 
> 2. At Link Partner, send an UDP packet with VLAN priority 1 to port 9091 of
>     DUT.
> 
> When launch time is set to 1s in the future, the delta between launch time
> and transmit hardware timestamp is equal to 0.016us, as shown in result
> below:
>    0x562ff5dc8880: rx_desc[4]->addr=84110 addr=84110 comp_addr=84110 EoP
>    rx_hash: 0xE343384 with RSS type:0x1
>    HW RX-time:   1734578015467548904 (sec:1734578015.4675) delta to User RX-time sec:0.0002 (183.103 usec)
>    XDP RX-time:   1734578015467651698 (sec:1734578015.4677) delta to User RX-time sec:0.0001 (80.309 usec)
>    No rx_vlan_tci or rx_vlan_proto, err=-95
>    0x562ff5dc8880: ping-pong with csum=561c (want c7dd) csum_start=34 csum_offset=6
>    HW RX-time:   1734578015467548904 (sec:1734578015.4675) delta to HW Launch-time sec:1.0000 (1000000.000 usec)
>    0x562ff5dc8880: complete tx idx=4 addr=4018
>    HW Launch-time:   1734578016467548904 (sec:1734578016.4675) delta to HW TX-complete-time sec:0.0000 (0.016 usec)
>    HW TX-complete-time:   1734578016467548920 (sec:1734578016.4675) delta to User TX-complete-time sec:0.0000 (32.546 usec)
>    XDP RX-time:   1734578015467651698 (sec:1734578015.4677) delta to User TX-complete-time sec:0.9999 (999929.768 usec)
>    HW RX-time:   1734578015467548904 (sec:1734578015.4675) delta to HW TX-complete-time sec:1.0000 (1000000.016 usec)
>    0x562ff5dc8880: complete rx idx=132 addr=84110

To be cautious, could we perform a stress test by sending a higher number 
of packets with launch time? For example, we could send 200 packets, each 
configured with a launch time, and verify that the driver continues to 
function correctly afterward.

> Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 78 ++++++++++++++++-------
>   1 file changed, 56 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 27872bdea9bd..6857f5f5b4b2 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -1566,6 +1566,26 @@ static bool igc_request_tx_tstamp(struct igc_adapter *adapter, struct sk_buff *s
>   	return false;
>   }
>   
> +static void igc_insert_empty_packet(struct igc_ring *tx_ring)
> +{
> +	struct igc_tx_buffer *empty_info;
> +	struct sk_buff *empty;
> +	void *data;
> +
> +	empty_info = &tx_ring->tx_buffer_info[tx_ring->next_to_use];
> +	empty = alloc_skb(IGC_EMPTY_FRAME_SIZE, GFP_ATOMIC);
> +	if (!empty)
> +		return;
> +
> +	data = skb_put(empty, IGC_EMPTY_FRAME_SIZE);
> +	memset(data, 0, IGC_EMPTY_FRAME_SIZE);
> +
> +	igc_tx_ctxtdesc(tx_ring, 0, false, 0, 0, 0);
> +
> +	if (igc_init_tx_empty_descriptor(tx_ring, empty, empty_info) < 0)
> +		dev_kfree_skb_any(empty);
> +}
> +

The function igc_insert_empty_packet() appears to wrap existing code to 
enhance reusability, with no new changes related to enabling launch-time 
XDP ZC functionality. If so, could we split this into a separate commit? 
This would make it clearer for the reader to distinguish between the 
refactoring changes and the new changes related to enabling launch-time XDP 
ZC support.

>   static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,
>   				       struct igc_ring *tx_ring)
>   {
> @@ -1603,26 +1623,8 @@ static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,
>   	skb->tstamp = ktime_set(0, 0);
>   	launch_time = igc_tx_launchtime(tx_ring, txtime, &first_flag, &insert_empty);
>   
> -	if (insert_empty) {
> -		struct igc_tx_buffer *empty_info;
> -		struct sk_buff *empty;
> -		void *data;
> -
> -		empty_info = &tx_ring->tx_buffer_info[tx_ring->next_to_use];
> -		empty = alloc_skb(IGC_EMPTY_FRAME_SIZE, GFP_ATOMIC);
> -		if (!empty)
> -			goto done;
> -
> -		data = skb_put(empty, IGC_EMPTY_FRAME_SIZE);
> -		memset(data, 0, IGC_EMPTY_FRAME_SIZE);
> -
> -		igc_tx_ctxtdesc(tx_ring, 0, false, 0, 0, 0);
> -
> -		if (igc_init_tx_empty_descriptor(tx_ring,
> -						 empty,
> -						 empty_info) < 0)
> -			dev_kfree_skb_any(empty);
> -	}
> +	if (insert_empty)
> +		igc_insert_empty_packet(tx_ring);
>   
>   done:
>   	/* record the location of the first descriptor for this packet */
> @@ -2955,9 +2957,33 @@ static u64 igc_xsk_fill_timestamp(void *_priv)
>   	return *(u64 *)_priv;
>   }
>   
> +static void igc_xsk_request_launch_time(u64 launch_time, void *_priv)
> +{
> +	struct igc_metadata_request *meta_req = _priv;
> +	struct igc_ring *tx_ring = meta_req->tx_ring;
> +	__le32 launch_time_offset;
> +	bool insert_empty = false;
> +	bool first_flag = false;
> +
> +	if (!tx_ring->launchtime_enable)
> +		return;
> +
> +	launch_time_offset = igc_tx_launchtime(tx_ring,
> +					       ns_to_ktime(launch_time),
> +					       &first_flag, &insert_empty);
> +	if (insert_empty) {
> +		igc_insert_empty_packet(tx_ring);
> +		meta_req->tx_buffer =
> +			&tx_ring->tx_buffer_info[tx_ring->next_to_use];
> +	}
> +
> +	igc_tx_ctxtdesc(tx_ring, launch_time_offset, first_flag, 0, 0, 0);
> +}
> +
>   const struct xsk_tx_metadata_ops igc_xsk_tx_metadata_ops = {
>   	.tmo_request_timestamp		= igc_xsk_request_timestamp,
>   	.tmo_fill_timestamp		= igc_xsk_fill_timestamp,
> +	.tmo_request_launch_time	= igc_xsk_request_launch_time,
>   };
>   
>   static void igc_xdp_xmit_zc(struct igc_ring *ring)
> @@ -2980,7 +3006,7 @@ static void igc_xdp_xmit_zc(struct igc_ring *ring)
>   	ntu = ring->next_to_use;
>   	budget = igc_desc_unused(ring);
>   
> -	while (xsk_tx_peek_desc(pool, &xdp_desc) && budget--) {
> +	while (xsk_tx_peek_desc(pool, &xdp_desc) && budget >= 4) {

Could we add some explanation on what & why the value "4" is used ?

