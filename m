Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 809FAA26A1F
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Feb 2025 03:43:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2ECD8410AC;
	Tue,  4 Feb 2025 02:43:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7VxuQ2Zs7tr3; Tue,  4 Feb 2025 02:43:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1863D407E4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738637029;
	bh=K+VWWaUkJc9yMLNaYmhOW78K+6/Cg1rHiWyvWuyReu4=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=suckJwR+qBkpETHBaZkiXomvNEHdRhPReaNzDVLqdGgjBoefzpQbJ9ngaaF3Fy39G
	 XM9T1w9uV7w+S9AI7Eq29XnI8knkrLJqEFmk7Lw0x5Jq+g+021JIl4ZScYPPj3rbTf
	 23kw/7EugAPSGlTwWA+NW+jV8KbWJBjv/UW2+oh6lJrst4EPvKGNF1ZQyRlSCLRvT0
	 OlMNp+1pjxtqF6/FVjMgMBe7D18//7zSvYbjN9aat0kB/XOCaDJuVZJQdpzVlzMzxL
	 Yo+G05UxmwEZJfakkWfPGGZJNZ1oroyrvn4cfm/k1l00T0dDgOquVwwA+6oUmyejE1
	 yGrRHWV5iCRsg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1863D407E4;
	Tue,  4 Feb 2025 02:43:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 0199C185
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Feb 2025 02:43:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D8F9A6078B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Feb 2025 02:43:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8yteb4oKM9Ak for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Feb 2025 02:43:46 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C480B605C9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C480B605C9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C480B605C9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Feb 2025 02:43:45 +0000 (UTC)
X-CSE-ConnectionGUID: ao3qy1j9SWmyMfe4MbbX6w==
X-CSE-MsgGUID: BQXxLfJETCOrZYwNEAjOSw==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="39248892"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="39248892"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 18:43:45 -0800
X-CSE-ConnectionGUID: eirV3W6ATT2+I2tIcic76g==
X-CSE-MsgGUID: MlLHdLEVQYS5RAbSPTokFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,257,1732608000"; d="scan'208";a="115488420"
Received: from mohdfai2-mobl.gar.corp.intel.com (HELO [10.247.89.75])
 ([10.247.89.75])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 18:43:33 -0800
Message-ID: <42fc5e78-ce8a-45fa-95dc-adf25d0d76d7@linux.intel.com>
Date: Tue, 4 Feb 2025 10:43:31 +0800
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
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Choong Yong Liang <yong.liang.choong@linux.intel.com>,
 Bouska Zdenek <zdenek.bouska@siemens.com>
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org, bpf@vger.kernel.org,
 linux-kselftest@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, intel-wired-lan@lists.osuosl.org,
 xdp-hints@xdp-project.net
References: <20250204004907.789330-1-yoong.siang.song@intel.com>
 <20250204004907.789330-6-yoong.siang.song@intel.com>
Content-Language: en-US
From: "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com>
In-Reply-To: <20250204004907.789330-6-yoong.siang.song@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738637026; x=1770173026;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=D/yelYXMu8Tmrswd3iQdp89T2paRJBLUtNsp9zw6A+I=;
 b=R8SdpOd9vQLsx6fgxG2iC2C32/aAaoV5CEYsGSE0i4EKCKBBkCuFY/Yk
 mZBy27deHPtqzUImgORpgM3pJsd53/9VmVNlWSpBQAPTYvY23NTanbOUP
 DXQbYSrrmRDuc/nI6GqErPBflE2ORAeqrQ48kJF2Cd8WUjsJP97xHrDq/
 cQ/ySQ9wWHm49XueBYZ+HB6Yl2S6gF6YBDuYrtu6y84C/RqqtMMAnpcF/
 VT2sG/1Q0hFwg6VPS4aqlpFYWgtx05tCUvrw9cpkOtFvOAYSyyo43Nojl
 2AVwP+karK16iIEYupdSny3gKFJzwWK+TQyHBnVgaYGcUX2HG+BD6mNs5
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=R8SdpOd9
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v7 5/5] igc: Add launch time
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



On 4/2/2025 8:49 am, Song Yoong Siang wrote:
> Enable Launch Time Control (LTC) support for XDP zero copy via XDP Tx
> metadata framework.
> 
> This patch has been tested with tools/testing/selftests/bpf/xdp_hw_metadata
> on Intel I225-LM Ethernet controller. Below are the test steps and result.
> 
> Test 1: Send a single packet with the launch time set to 1 s in the future.
> 
> Test steps:
> 1. On the DUT, start the xdp_hw_metadata selftest application:
>     $ sudo ./xdp_hw_metadata enp2s0 -l 1000000000 -L 1
> 
> 2. On the Link Partner, send a UDP packet with VLAN priority 1 to port 9091
>     of the DUT.
> 
> Result:
> When the launch time is set to 1 s in the future, the delta between the
> launch time and the transmit hardware timestamp is 0.016 us, as shown in
> printout of the xdp_hw_metadata application below.
>    0x562ff5dc8880: rx_desc[4]->addr=84110 addr=84110 comp_addr=84110 EoP
>    rx_hash: 0xE343384 with RSS type:0x1
>    HW RX-time:   1734578015467548904 (sec:1734578015.4675)
>                  delta to User RX-time sec:0.0002 (183.103 usec)
>    XDP RX-time:   1734578015467651698 (sec:1734578015.4677)
>                   delta to User RX-time sec:0.0001 (80.309 usec)
>    No rx_vlan_tci or rx_vlan_proto, err=-95
>    0x562ff5dc8880: ping-pong with csum=561c (want c7dd)
>                    csum_start=34 csum_offset=6
>    HW RX-time:   1734578015467548904 (sec:1734578015.4675)
>                  delta to HW Launch-time sec:1.0000 (1000000.000 usec)
>    0x562ff5dc8880: complete tx idx=4 addr=4018
>    HW Launch-time:   1734578016467548904 (sec:1734578016.4675)
>                      delta to HW TX-complete-time sec:0.0000 (0.016 usec)
>    HW TX-complete-time:   1734578016467548920 (sec:1734578016.4675)
>                           delta to User TX-complete-time sec:0.0000
>                           (32.546 usec)
>    XDP RX-time:   1734578015467651698 (sec:1734578015.4677)
>                   delta to User TX-complete-time sec:0.9999
>                   (999929.768 usec)
>    HW RX-time:   1734578015467548904 (sec:1734578015.4675)
>                  delta to HW TX-complete-time sec:1.0000 (1000000.016 usec)
>    0x562ff5dc8880: complete rx idx=132 addr=84110
> 
> Test 2: Send 1000 packets with a 10 ms interval and the launch time set to
>          500 us in the future.
> 
> Test steps:
> 1. On the DUT, start the xdp_hw_metadata selftest application:
>     $ sudo chrt -f 99 ./xdp_hw_metadata enp2s0 -l 500000 -L 1 > \
>       /dev/shm/result.log
> 
> 2. On the Link Partner, send 1000 UDP packets with a 10 ms interval and
>     VLAN priority 1 to port 9091 of the DUT.
> 
> Result:
> When the launch time is set to 500 us in the future, the average delta
> between the launch time and the transmit hardware timestamp is 0.016 us,
> as shown in the analysis of /dev/shm/result.log below. The XDP launch time
> works correctly in sending 1000 packets continuously.
>    Min delta: 0.005 us
>    Avr delta: 0.016 us
>    Max delta: 0.031 us
>    Total packets forwarded: 1000
> 
> Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 42 +++++++++++++++++++++--
>   1 file changed, 40 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index c3edd8bcf633..535d340c71c9 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -2951,9 +2951,33 @@ static u64 igc_xsk_fill_timestamp(void *_priv)
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
> @@ -2976,7 +3000,13 @@ static void igc_xdp_xmit_zc(struct igc_ring *ring)
>   	ntu = ring->next_to_use;
>   	budget = igc_desc_unused(ring);
>   
> -	while (xsk_tx_peek_desc(pool, &xdp_desc) && budget--) {
> +	/* Packets with launch time require one data descriptor and one context
> +	 * descriptor. When the launch time falls into the next Qbv cycle, we
> +	 * may need to insert an empty packet, which requires two more
> +	 * descriptors. Therefore, to be safe, we always ensure we have at least
> +	 * 4 descriptors available.
> +	 */
> +	while (xsk_tx_peek_desc(pool, &xdp_desc) && budget >= 4) {
>   		struct igc_metadata_request meta_req;
>   		struct xsk_tx_metadata *meta = NULL;
>   		struct igc_tx_buffer *bi;
> @@ -3000,6 +3030,12 @@ static void igc_xdp_xmit_zc(struct igc_ring *ring)
>   		xsk_tx_metadata_request(meta, &igc_xsk_tx_metadata_ops,
>   					&meta_req);
>   
> +		/* xsk_tx_metadata_request() may have updated next_to_use */
> +		ntu = ring->next_to_use;
> +
> +		/* xsk_tx_metadata_request() may have updated Tx buffer info */
> +		bi = meta_req.tx_buffer;
> +
>   		tx_desc = IGC_TX_DESC(ring, ntu);
>   		tx_desc->read.cmd_type_len = cpu_to_le32(meta_req.cmd_type);
>   		tx_desc->read.olinfo_status = cpu_to_le32(olinfo_status);
> @@ -3017,9 +3053,11 @@ static void igc_xdp_xmit_zc(struct igc_ring *ring)
>   		ntu++;
>   		if (ntu == ring->count)
>   			ntu = 0;
> +
> +		ring->next_to_use = ntu;
> +		budget = igc_desc_unused(ring);
>   	}
>   
> -	ring->next_to_use = ntu;
>   	if (tx_desc) {
>   		igc_flush_tx_descriptors(ring);
>   		xsk_tx_release(pool);

Reviewed-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>

