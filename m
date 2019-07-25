Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A390754F9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jul 2019 19:00:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 664E88706B;
	Thu, 25 Jul 2019 17:00:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r34XSy4J6S1F; Thu, 25 Jul 2019 17:00:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2EA5687048;
	Thu, 25 Jul 2019 17:00:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EF1CE1BF2FE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 17:00:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E807A88177
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 17:00:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3k6sEJfxXJEF for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jul 2019 17:00:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EA1B788157
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 17:00:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jul 2019 10:00:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,307,1559545200"; d="scan'208";a="345497546"
Received: from klaatz-mobl1.ger.corp.intel.com (HELO [10.237.221.70])
 ([10.237.221.70])
 by orsmga005.jf.intel.com with ESMTP; 25 Jul 2019 10:00:43 -0700
To: Maxim Mikityanskiy <maximmi@mellanox.com>
References: <20190716030637.5634-1-kevin.laatz@intel.com>
 <20190724051043.14348-1-kevin.laatz@intel.com>
 <20190724051043.14348-7-kevin.laatz@intel.com>
 <c5704b74-8efe-af2a-68e6-716fa89a5665@mellanox.com>
From: "Laatz, Kevin" <kevin.laatz@intel.com>
Message-ID: <4a8bea9e-6b0c-152c-fcbc-6be414a4a324@intel.com>
Date: Thu, 25 Jul 2019 18:00:42 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <c5704b74-8efe-af2a-68e6-716fa89a5665@mellanox.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v3 06/11] mlx5e: modify
 driver for handling offsets
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
Cc: "jakub.kicinski@netronome.com" <jakub.kicinski@netronome.com>,
 "daniel@iogearbox.net" <daniel@iogearbox.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Loftus,
 Ciara" <ciara.loftus@intel.com>, "ast@kernel.org" <ast@kernel.org>,
 "stephen@networkplumber.org" <stephen@networkplumber.org>,
 Saeed Mahameed <saeedm@mellanox.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "jonathan.lemon@gmail.com" <jonathan.lemon@gmail.com>, "Richardson,
 Bruce" <bruce.richardson@intel.com>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>, "Topel,
 Bjorn" <bjorn.topel@intel.com>, "Karlsson, Magnus" <magnus.karlsson@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 25/07/2019 11:15, Maxim Mikityanskiy wrote:
> On 2019-07-24 08:10, Kevin Laatz wrote:
>> With the addition of the unaligned chunks option, we need to make sure we
>> handle the offsets accordingly based on the mode we are currently running
>> in. This patch modifies the driver to appropriately mask the address for
>> each case.
>>
>> Signed-off-by: Kevin Laatz <kevin.laatz@intel.com>
>>
>> ---
>> v3:
>>     - Use new helper function to handle offset
>> ---
>>    drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c    | 8 ++++++--
>>    drivers/net/ethernet/mellanox/mlx5/core/en/xsk/tx.c | 9 +++++++--
>>    2 files changed, 13 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c b/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c
>> index b0b982cf69bb..d5245893d2c8 100644
>> --- a/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c
>> +++ b/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c
>> @@ -122,6 +122,7 @@ bool mlx5e_xdp_handle(struct mlx5e_rq *rq, struct mlx5e_dma_info *di,
>>    		      void *va, u16 *rx_headroom, u32 *len, bool xsk)
>>    {
>>    	struct bpf_prog *prog = READ_ONCE(rq->xdp_prog);
>> +	struct xdp_umem *umem = rq->umem;
>>    	struct xdp_buff xdp;
>>    	u32 act;
>>    	int err;
>> @@ -138,8 +139,11 @@ bool mlx5e_xdp_handle(struct mlx5e_rq *rq, struct mlx5e_dma_info *di,
>>    	xdp.rxq = &rq->xdp_rxq;
>>    
>>    	act = bpf_prog_run_xdp(prog, &xdp);
>> -	if (xsk)
>> -		xdp.handle += xdp.data - xdp.data_hard_start;
>> +	if (xsk) {
>> +		u64 off = xdp.data - xdp.data_hard_start;
>> +
>> +		xdp.handle = xsk_umem_handle_offset(umem, xdp.handle, off);
>> +	}
> What's missed is that umem_headroom is added to handle directly in
> mlx5e_xsk_page_alloc_umem. In my understanding umem_headroom should go
> to the offset part (high 16 bits) of the handle, to
> xsk_umem_handle_offset has to support increasing the offset.

Will look into it and make the changes for the v4

>>    	switch (act) {
>>    	case XDP_PASS:
>>    		*rx_headroom = xdp.data - xdp.data_hard_start;
>> diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/tx.c b/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/tx.c
>> index 35e188cf4ea4..f596e63cba00 100644
>> --- a/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/tx.c
>> +++ b/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/tx.c
>> @@ -61,6 +61,7 @@ bool mlx5e_xsk_tx(struct mlx5e_xdpsq *sq, unsigned int budget)
>>    	struct mlx5e_xdp_xmit_data xdptxd;
>>    	bool work_done = true;
>>    	bool flush = false;
>> +	u64 addr, offset;
>>    
>>    	xdpi.mode = MLX5E_XDP_XMIT_MODE_XSK;
>>    
>> @@ -82,8 +83,12 @@ bool mlx5e_xsk_tx(struct mlx5e_xdpsq *sq, unsigned int budget)
>>    			break;
>>    		}
>>    
>> -		xdptxd.dma_addr = xdp_umem_get_dma(umem, desc.addr);
>> -		xdptxd.data = xdp_umem_get_data(umem, desc.addr);
>> +		/* for unaligned chunks need to take offset from upper bits */
>> +		offset = (desc.addr >> XSK_UNALIGNED_BUF_OFFSET_SHIFT);
>> +		addr = (desc.addr & XSK_UNALIGNED_BUF_ADDR_MASK);
>> +
>> +		xdptxd.dma_addr = xdp_umem_get_dma(umem, addr + offset);
>> +		xdptxd.data = xdp_umem_get_data(umem, addr + offset);
> Why can't these calculations be encapsulated into
> xdp_umem_get_{dma,data}? I think they are common for all drivers, aren't
> they?
>
> Even if there is some reason not to put this bitshifting stuff into
> xdp_umem_get_* functions, I suggest to encapsulate it into a function
> anyway, because it's a good idea to keep those calculations in a single
> place.
Nice suggestion! I will move it to the xdp_umem_get_* functions in the 
v4. Thanks

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
