Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 92F429A4AEF
	for <lists+intel-wired-lan@lfdr.de>; Sat, 19 Oct 2024 04:25:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 31288408EA;
	Sat, 19 Oct 2024 02:25:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lgZweAVtxdYj; Sat, 19 Oct 2024 02:25:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 186E1408F9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729304752;
	bh=4l2IKJvBkROzhOKYsn0B0O8/IkcNbFKKwGRvffIs1rg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hvd6ljv/dOoJFVRKlLzwYPPuxbNV3VQhwYHG4ka4rgIUa0dCGimqr7aeBodmaolld
	 dZuSObCa3m//npDUAP9lZa0Fq7xBGOP2yrSSiQ5NFmc04hTlsWHgcm76RL02/Y6eV2
	 RSw0GlzuhxYV3+V2I/zuzJZJRFUqdebTl+EyZk7QpFOrwmKS5+4McNs7Yv2+MEwMU4
	 +YRac1s92t5yuEawilRPZpS+FZRIrZG8BQf929/FRyfzsbbOAoHSZnyULYqGc7UsSc
	 Oz6e2eUoUDvIJ8TyAQjDDyS/tNIGZecE3BllXtloDiZ06qloBjqTaiP1TxlLTAJM7I
	 uF7jj4PWx4IHg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 186E1408F9;
	Sat, 19 Oct 2024 02:25:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4687127D7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Oct 2024 02:25:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 34C8B408EA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Oct 2024 02:25:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9JOp-YHZEEtK for <intel-wired-lan@lists.osuosl.org>;
 Sat, 19 Oct 2024 02:25:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.249.212.255;
 helo=szxga08-in.huawei.com; envelope-from=yuehaibing@huawei.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2471540150
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2471540150
Received: from szxga08-in.huawei.com (szxga08-in.huawei.com [45.249.212.255])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2471540150
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Oct 2024 02:25:47 +0000 (UTC)
Received: from mail.maildlp.com (unknown [172.19.163.48])
 by szxga08-in.huawei.com (SkyGuard) with ESMTP id 4XVlk92X8pz1T88X;
 Sat, 19 Oct 2024 10:23:45 +0800 (CST)
Received: from dggpemf500002.china.huawei.com (unknown [7.185.36.57])
 by mail.maildlp.com (Postfix) with ESMTPS id 5347E18006C;
 Sat, 19 Oct 2024 10:25:41 +0800 (CST)
Received: from [10.174.179.113] (10.174.179.113) by
 dggpemf500002.china.huawei.com (7.185.36.57) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.11; Sat, 19 Oct 2024 10:25:40 +0800
Message-ID: <1ae4bc8e-caa3-5ba1-f018-30b4a2801955@huawei.com>
Date: Sat, 19 Oct 2024 10:25:39 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.1
Content-Language: en-US
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
References: <20241018023734.1912166-1-yuehaibing@huawei.com>
 <20241018023734.1912166-4-yuehaibing@huawei.com> <ZxJTHIc3HPKxkD09@boxer>
From: Yue Haibing <yuehaibing@huawei.com>
In-Reply-To: <ZxJTHIc3HPKxkD09@boxer>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.174.179.113]
X-ClientProxiedBy: dggems705-chm.china.huawei.com (10.3.19.182) To
 dggpemf500002.china.huawei.com (7.185.36.57)
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=huawei.com
Subject: Re: [Intel-wired-lan] [PATCH v2 net 3/4] ixgbe: Fix passing 0 to
 ERR_PTR in ixgbe_run_xdp()
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
Cc: alexander.h.duyck@intel.com, andre.guedes@intel.com, hawk@kernel.org,
 daniel@iogearbox.net, jithu.joseph@intel.com, przemyslaw.kitszel@intel.com,
 john.fastabend@gmail.com, ast@kernel.org, linux-kernel@vger.kernel.org,
 edumazet@google.com, netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 horms@kernel.org, intel-wired-lan@lists.osuosl.org, jacob.e.keller@intel.com,
 kuba@kernel.org, bpf@vger.kernel.org, pabeni@redhat.com, davem@davemloft.net,
 vedang.patel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2024/10/18 20:22, Maciej Fijalkowski wrote:
> On Fri, Oct 18, 2024 at 10:37:33AM +0800, Yue Haibing wrote:
>> ixgbe_run_xdp() converts customed xdp action to a negative error code
>> with the sk_buff pointer type which be checked with IS_ERR in
>> ixgbe_clean_rx_irq(). Remove this error pointer handing instead use
>> plain int return value.
>>
>> Fixes: 924708081629 ("ixgbe: add XDP support for pass and drop actions")
>> Signed-off-by: Yue Haibing <yuehaibing@huawei.com>
>> ---
>>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 23 ++++++++-----------
>>  1 file changed, 9 insertions(+), 14 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>> index 8b8404d8c946..78bf97ab0524 100644
>> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>> @@ -1908,10 +1908,6 @@ bool ixgbe_cleanup_headers(struct ixgbe_ring *rx_ring,
>>  {
>>  	struct net_device *netdev = rx_ring->netdev;
>>  
>> -	/* XDP packets use error pointer so abort at this point */
>> -	if (IS_ERR(skb))
>> -		return true;
>> -
>>  	/* Verify netdev is present, and that packet does not have any
>>  	 * errors that would be unacceptable to the netdev.
>>  	 */
>> @@ -2219,9 +2215,9 @@ static struct sk_buff *ixgbe_build_skb(struct ixgbe_ring *rx_ring,
>>  	return skb;
>>  }
>>  
>> -static struct sk_buff *ixgbe_run_xdp(struct ixgbe_adapter *adapter,
>> -				     struct ixgbe_ring *rx_ring,
>> -				     struct xdp_buff *xdp)
>> +static int ixgbe_run_xdp(struct ixgbe_adapter *adapter,
>> +			 struct ixgbe_ring *rx_ring,
>> +			 struct xdp_buff *xdp)
> 
> please align args. checkpatch didn't yell at you?

These have aligned in my patch and checkpatch passed.

yuehaibing@localhost:~/code/net$ ./scripts/checkpatch.pl 0003-ixgbe-Fix-passing-0-to-ERR_PTR-in-ixgbe_run_xdp.patch
total: 0 errors, 0 warnings, 0 checks, 67 lines checked

0003-ixgbe-Fix-passing-0-to-ERR_PTR-in-ixgbe_run_xdp.patch has no obvious style problems and is ready for submission.

> 
>>  {
>>  	int err, result = IXGBE_XDP_PASS;
>>  	struct bpf_prog *xdp_prog;
>> @@ -2271,7 +2267,7 @@ static struct sk_buff *ixgbe_run_xdp(struct ixgbe_adapter *adapter,
>>  		break;
>>  	}
>>  xdp_out:
>> -	return ERR_PTR(-result);
>> +	return result;
>>  }
>>  
>>  static unsigned int ixgbe_rx_frame_truesize(struct ixgbe_ring *rx_ring,
>> @@ -2329,6 +2325,7 @@ static int ixgbe_clean_rx_irq(struct ixgbe_q_vector *q_vector,
>>  	unsigned int offset = rx_ring->rx_offset;
>>  	unsigned int xdp_xmit = 0;
>>  	struct xdp_buff xdp;
>> +	int xdp_res;
>>  
>>  	/* Frame size depend on rx_ring setup when PAGE_SIZE=4K */
>>  #if (PAGE_SIZE < 8192)
>> @@ -2374,12 +2371,10 @@ static int ixgbe_clean_rx_irq(struct ixgbe_q_vector *q_vector,
>>  			/* At larger PAGE_SIZE, frame_sz depend on len size */
>>  			xdp.frame_sz = ixgbe_rx_frame_truesize(rx_ring, size);
>>  #endif
>> -			skb = ixgbe_run_xdp(adapter, rx_ring, &xdp);
>> +			xdp_res = ixgbe_run_xdp(adapter, rx_ring, &xdp);
>>  		}
>>  
>> -		if (IS_ERR(skb)) {
>> -			unsigned int xdp_res = -PTR_ERR(skb);
>> -
>> +		if (xdp_res) {
>>  			if (xdp_res & (IXGBE_XDP_TX | IXGBE_XDP_REDIR)) {
>>  				xdp_xmit |= xdp_res;
>>  				ixgbe_rx_buffer_flip(rx_ring, rx_buffer, size);
>> @@ -2399,7 +2394,7 @@ static int ixgbe_clean_rx_irq(struct ixgbe_q_vector *q_vector,
>>  		}
>>  
>>  		/* exit if we failed to retrieve a buffer */
>> -		if (!skb) {
>> +		if (!xdp_res && !skb) {
>>  			rx_ring->rx_stats.alloc_rx_buff_failed++;
>>  			rx_buffer->pagecnt_bias++;
>>  			break;
>> @@ -2413,7 +2408,7 @@ static int ixgbe_clean_rx_irq(struct ixgbe_q_vector *q_vector,
>>  			continue;
>>  
>>  		/* verify the packet layout is correct */
>> -		if (ixgbe_cleanup_headers(rx_ring, rx_desc, skb))
>> +		if (xdp_res || ixgbe_cleanup_headers(rx_ring, rx_desc, skb))
>>  			continue;
>>  
>>  		/* probably a little skewed due to removing CRC */
>> -- 
>> 2.34.1
>>
> 
> 
> .
