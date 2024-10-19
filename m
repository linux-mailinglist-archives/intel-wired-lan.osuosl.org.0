Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C27599A4AF0
	for <lists+intel-wired-lan@lfdr.de>; Sat, 19 Oct 2024 04:27:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2A9D180D6F;
	Sat, 19 Oct 2024 02:27:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id clertRgL5qiL; Sat, 19 Oct 2024 02:27:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6C72680D5E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729304833;
	bh=tSSa1FkPEFSPIZOe/BAtnujSVPVEADOuHxiDwZoizyE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=q6Xs0PpSZqzNE3u8oFgj8PRGcfup2p+OQUgPTAijL1nzXI05AaOf1ecq2aYPB7je/
	 JtVs0oVxMUAzCehufS8+TN2X/f/ukZuFUdSxe46M5y9l/N25d/7gADllZWRsoRREEH
	 SOerydLxlydvSkvj8tZBk7QpUh6wHvdgyGUVDltnc0C/fkBFKPY31Q5JK+niNw+ICD
	 WXyp4GhrZ3G4a3EiBOnfbpQRA76PCVlFp6pW/nbwynqRAQ4snk6JJlM5BUySg360TU
	 sVS4NMZXXrte1GDWwrCyYcuhkLZYl3zgW9FDk3KuPzh0WoCLkN9FzQ2l6aLIDW9FrD
	 2jdh8wPUsHF7w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6C72680D5E;
	Sat, 19 Oct 2024 02:27:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 2A45227D7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Oct 2024 02:27:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0B4DC80C6A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Oct 2024 02:27:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XQygVM9Thsy7 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 19 Oct 2024 02:27:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.249.212.191;
 helo=szxga05-in.huawei.com; envelope-from=yuehaibing@huawei.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7296F80C65
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7296F80C65
Received: from szxga05-in.huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7296F80C65
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Oct 2024 02:27:09 +0000 (UTC)
Received: from mail.maildlp.com (unknown [172.19.163.44])
 by szxga05-in.huawei.com (SkyGuard) with ESMTP id 4XVlmV2sZ5z1j9q7;
 Sat, 19 Oct 2024 10:25:46 +0800 (CST)
Received: from dggpemf500002.china.huawei.com (unknown [7.185.36.57])
 by mail.maildlp.com (Postfix) with ESMTPS id CF55C1401E9;
 Sat, 19 Oct 2024 10:27:03 +0800 (CST)
Received: from [10.174.179.113] (10.174.179.113) by
 dggpemf500002.china.huawei.com (7.185.36.57) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.11; Sat, 19 Oct 2024 10:27:02 +0800
Message-ID: <efb013ff-a9dd-07a7-e4e7-87aa19b559ac@huawei.com>
Date: Sat, 19 Oct 2024 10:27:02 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.1
Content-Language: en-US
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
References: <20241018023734.1912166-1-yuehaibing@huawei.com>
 <20241018023734.1912166-5-yuehaibing@huawei.com> <ZxJTUKmZBAktfWik@boxer>
From: Yue Haibing <yuehaibing@huawei.com>
In-Reply-To: <ZxJTUKmZBAktfWik@boxer>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.174.179.113]
X-ClientProxiedBy: dggems704-chm.china.huawei.com (10.3.19.181) To
 dggpemf500002.china.huawei.com (7.185.36.57)
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=huawei.com
Subject: Re: [Intel-wired-lan] [PATCH v2 net 4/4] ixgbevf: Fix passing 0 to
 ERR_PTR in ixgbevf_run_xdp()
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

On 2024/10/18 20:23, Maciej Fijalkowski wrote:
> On Fri, Oct 18, 2024 at 10:37:34AM +0800, Yue Haibing wrote:
>> ixgbevf_run_xdp() converts customed xdp action to a negative error code
>> with the sk_buff pointer type which be checked with IS_ERR in
>> ixgbevf_clean_rx_irq(). Remove this error pointer handing instead use
>> plain int return value.
>>
>> Fixes: c7aec59657b6 ("ixgbevf: Add XDP support for pass and drop actions")
>> Signed-off-by: Yue Haibing <yuehaibing@huawei.com>
>> ---
>>  .../net/ethernet/intel/ixgbevf/ixgbevf_main.c | 23 ++++++++-----------
>>  1 file changed, 10 insertions(+), 13 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
>> index 149911e3002a..183d2305d058 100644
>> --- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
>> +++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
>> @@ -732,10 +732,6 @@ static bool ixgbevf_cleanup_headers(struct ixgbevf_ring *rx_ring,
>>  				    union ixgbe_adv_rx_desc *rx_desc,
>>  				    struct sk_buff *skb)
>>  {
>> -	/* XDP packets use error pointer so abort at this point */
>> -	if (IS_ERR(skb))
>> -		return true;
>> -
>>  	/* verify that the packet does not have any known errors */
>>  	if (unlikely(ixgbevf_test_staterr(rx_desc,
>>  					  IXGBE_RXDADV_ERR_FRAME_ERR_MASK))) {
>> @@ -1044,9 +1040,9 @@ static int ixgbevf_xmit_xdp_ring(struct ixgbevf_ring *ring,
>>  	return IXGBEVF_XDP_TX;
>>  }
>>  
>> -static struct sk_buff *ixgbevf_run_xdp(struct ixgbevf_adapter *adapter,
>> -				       struct ixgbevf_ring  *rx_ring,
>> -				       struct xdp_buff *xdp)
>> +static int ixgbevf_run_xdp(struct ixgbevf_adapter *adapter,
>> +			   struct ixgbevf_ring *rx_ring,
>> +			   struct xdp_buff *xdp)
> 
> ditto

yuehaibing@localhost:~/code/net$ ./scripts/checkpatch.pl 0004-ixgbevf-Fix-passing-0-to-ERR_PTR-in-ixgbevf_run_xdp.patch
total: 0 errors, 0 warnings, 0 checks, 67 lines checked

0004-ixgbevf-Fix-passing-0-to-ERR_PTR-in-ixgbevf_run_xdp.patch has no obvious style problems and is ready for submission.

> 
>>  {
>>  	int result = IXGBEVF_XDP_PASS;
>>  	struct ixgbevf_ring *xdp_ring;
>> @@ -1080,7 +1076,7 @@ static struct sk_buff *ixgbevf_run_xdp(struct ixgbevf_adapter *adapter,
>>  		break;
>>  	}
>>  xdp_out:
>> -	return ERR_PTR(-result);
>> +	return result;
>>  }
>>  
>>  static unsigned int ixgbevf_rx_frame_truesize(struct ixgbevf_ring *rx_ring,
>> @@ -1122,6 +1118,7 @@ static int ixgbevf_clean_rx_irq(struct ixgbevf_q_vector *q_vector,
>>  	struct sk_buff *skb = rx_ring->skb;
>>  	bool xdp_xmit = false;
>>  	struct xdp_buff xdp;
>> +	int xdp_res;
>>  
>>  	/* Frame size depend on rx_ring setup when PAGE_SIZE=4K */
>>  #if (PAGE_SIZE < 8192)
>> @@ -1165,11 +1162,11 @@ static int ixgbevf_clean_rx_irq(struct ixgbevf_q_vector *q_vector,
>>  			/* At larger PAGE_SIZE, frame_sz depend on len size */
>>  			xdp.frame_sz = ixgbevf_rx_frame_truesize(rx_ring, size);
>>  #endif
>> -			skb = ixgbevf_run_xdp(adapter, rx_ring, &xdp);
>> +			xdp_res = ixgbevf_run_xdp(adapter, rx_ring, &xdp);
>>  		}
>>  
>> -		if (IS_ERR(skb)) {
>> -			if (PTR_ERR(skb) == -IXGBEVF_XDP_TX) {
>> +		if (xdp_res) {
>> +			if (xdp_res == IXGBEVF_XDP_TX) {
>>  				xdp_xmit = true;
>>  				ixgbevf_rx_buffer_flip(rx_ring, rx_buffer,
>>  						       size);
>> @@ -1189,7 +1186,7 @@ static int ixgbevf_clean_rx_irq(struct ixgbevf_q_vector *q_vector,
>>  		}
>>  
>>  		/* exit if we failed to retrieve a buffer */
>> -		if (!skb) {
>> +		if (!xdp_res && !skb) {
>>  			rx_ring->rx_stats.alloc_rx_buff_failed++;
>>  			rx_buffer->pagecnt_bias++;
>>  			break;
>> @@ -1203,7 +1200,7 @@ static int ixgbevf_clean_rx_irq(struct ixgbevf_q_vector *q_vector,
>>  			continue;
>>  
>>  		/* verify the packet layout is correct */
>> -		if (ixgbevf_cleanup_headers(rx_ring, rx_desc, skb)) {
>> +		if (xdp_res || ixgbevf_cleanup_headers(rx_ring, rx_desc, skb)) {
>>  			skb = NULL;
>>  			continue;
>>  		}
>> -- 
>> 2.34.1
>>
> 
> .
