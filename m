Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7298FC0D7E6
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Oct 2025 13:24:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 18A21840B2;
	Mon, 27 Oct 2025 12:24:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E9NGHAR-Qojn; Mon, 27 Oct 2025 12:24:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8335C831A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761567895;
	bh=WrJLIDy5DjO1Qi1gKZCpTvgxvq7dxgqrY3OppodPWIs=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=e5Wblc7MP4Ry/TLeLZPlXGWNFxnzejdDlJSBJMToEazrJD/m5dqdaSQLgGIcAHFG0
	 2F8sSIY/Prd7kVu5zCDSO3n5d6Dq4q7On9bMiE0JWdM+YcIxOH+4BsxResyLImkwwk
	 fPzmiH+CF7gKwqavo77TRCNft5yu5w+keyhUbRmyWyquopGxt3FBAQvnOQCCZ+95Ft
	 jjp8Z1wfVDvQl6O3cxyBFsUeX8wz5xgLRHMKu9dypR+/g7l5DpeaLepB4yT3ihsHJM
	 6eDsqxbHhqqvhclLCr7RStR/PDmw110TPrJQe3ubrCy7UYx1eibriyRFTLcy34F9/D
	 OCH+5M95bPofg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8335C831A0;
	Mon, 27 Oct 2025 12:24:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3AC50976
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 12:24:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 215FC411BD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 12:24:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PfGekPrFSvU0 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Oct 2025 12:24:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=34.218.115.239;
 helo=pdx-out-013.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=388e2c593=enjuk@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 243A1411AF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 243A1411AF
Received: from pdx-out-013.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-013.esa.us-west-2.outbound.mail-perimeter.amazon.com
 [34.218.115.239])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 243A1411AF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 12:24:52 +0000 (UTC)
X-CSE-ConnectionGUID: LzM7aC4yS8ayhj9JELmetQ==
X-CSE-MsgGUID: sQM+1O4oQkuQLKQYyS0+QQ==
X-IronPort-AV: E=Sophos;i="6.19,258,1754956800"; 
   d="scan'208";a="5597335"
Received: from ip-10-5-6-203.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.6.203])
 by internal-pdx-out-013.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Oct 2025 12:24:50 +0000
Received: from EX19MTAUWC002.ant.amazon.com [205.251.233.51:18342]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.17.61:2525]
 with esmtp (Farcaster)
 id a5010076-be11-4429-adff-4f15b9de8100; Mon, 27 Oct 2025 12:24:49 +0000 (UTC)
X-Farcaster-Flow-ID: a5010076-be11-4429-adff-4f15b9de8100
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWC002.ant.amazon.com (10.250.64.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.20;
 Mon, 27 Oct 2025 12:24:47 +0000
Received: from b0be8375a521.amazon.com (10.37.245.8) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.29;
 Mon, 27 Oct 2025 12:24:44 +0000
From: Kohei Enju <enjuk@amazon.com>
To: <przemyslaw.kitszel@intel.com>
CC: <andrew+netdev@lunn.ch>, <anthony.l.nguyen@intel.com>,
 <davem@davemloft.net>, <edumazet@google.com>, <enjuk@amazon.com>,
 <intel-wired-lan@lists.osuosl.org>, <kohei.enju@gmail.com>,
 <kuba@kernel.org>, <mitch.a.williams@intel.com>, <netdev@vger.kernel.org>,
 <pabeni@redhat.com>
Date: Mon, 27 Oct 2025 21:24:21 +0900
Message-ID: <20251027122435.22442-1-enjuk@amazon.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <ada06185-257b-46de-9e5b-470f2724f014@intel.com>
References: <ada06185-257b-46de-9e5b-470f2724f014@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.37.245.8]
X-ClientProxiedBy: EX19D041UWB004.ant.amazon.com (10.13.139.143) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1761567893; x=1793103893;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WrJLIDy5DjO1Qi1gKZCpTvgxvq7dxgqrY3OppodPWIs=;
 b=jJrKO8fgefjaw48vI6NCOgGY6q+C1assKb344WqnEzG+zT5m+1ffLTpu
 sypUYyX5Ovk0kizECCQLpjndtoeIB5HIAdbmms13Ax1gPsWQ9vi3qF0+C
 24Nipv+C9hFhAfB7XXyrWdb3/S29m1U3ZD4APxeHe4IIH4r+0uuHKgrCN
 fkcVIbA/6VjA8NeCKQGgApHEvST3+k9h5eB8VSFFgjvuJ88xN8/3bfiDR
 a0x4YKu1u2fVFB8mr4bPIjwHVV8cSWcPrtfW9E9OsFs3PjOkvO0IyBxwc
 7YokfHx0zBgWLag3NF1f0lCLi02CE7hxLivnTIOj84VjEjfzIAX5mOtxk
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=jJrKO8fg
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] iavf: fix off-by-one
 issues in iavf_config_rss_reg()
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

On Mon, 27 Oct 2025 13:13:54 +0100, Przemek Kitszel wrote:

>On 10/25/25 18:58, Kohei Enju wrote:
>> There are off-by-one bugs when configuring RSS hash key and lookup
>> table, causing out-of-bounds reads to memory [1] and out-of-bounds
>> writes to device registers.
>> 
>> Before commit 43a3d9ba34c9 ("i40evf: Allow PF driver to configure RSS"),
>> the loop upper bounds were:
>>      i <= I40E_VFQF_{HKEY,HLUT}_MAX_INDEX
>> which is safe since the value is the last valid index.
>> 
>> That commit changed the bounds to:
>>      i <= adapter->rss_{key,lut}_size / 4
>> where `rss_{key,lut}_size / 4` is the number of dwords, so the last
>> valid index is `(rss_{key,lut}_size / 4) - 1`. Therefore, using `<=`
>> accesses one element past the end.
>> 
>> Fix the issues by using `<` instead of `<=`, ensuring we do not exceed
>> the bounds.
>> 
>> [1] KASAN splat about rss_key_size off-by-one
>>    BUG: KASAN: slab-out-of-bounds in iavf_config_rss+0x619/0x800
>>    Read of size 4 at addr ffff888102c50134 by task kworker/u8:6/63
>> 
>
>[...]
>
>> 
>> Fixes: 43a3d9ba34c9 ("i40evf: Allow PF driver to configure RSS")
>> Signed-off-by: Kohei Enju <enjuk@amazon.com>
>> ---
>>   drivers/net/ethernet/intel/iavf/iavf_main.c | 4 ++--
>>   1 file changed, 2 insertions(+), 2 deletions(-)
>> 
>> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
>> index c2fbe443ef85..4b0fc8f354bc 100644
>> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
>> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
>> @@ -1726,11 +1726,11 @@ static int iavf_config_rss_reg(struct iavf_adapter *adapter)
>>   	u16 i;
>>   
>>   	dw = (u32 *)adapter->rss_key;
>> -	for (i = 0; i <= adapter->rss_key_size / 4; i++)
>> +	for (i = 0; i < adapter->rss_key_size / 4; i++)
>>   		wr32(hw, IAVF_VFQF_HKEY(i), dw[i]);
>>   
>>   	dw = (u32 *)adapter->rss_lut;
>> -	for (i = 0; i <= adapter->rss_lut_size / 4; i++)
>> +	for (i = 0; i < adapter->rss_lut_size / 4; i++)
>>   		wr32(hw, IAVF_VFQF_HLUT(i), dw[i]);
>
>this is generally the last defined register mapping,
>so I get why KASAN is able to report a violation here
>(I assume that we map "just enough")

Just to clarify, I think KASAN is detecting OOB read access to the slab
memory region (dw[i]), and not detecting register write access (wr32())
directly. 

Anyway, thank you for reviewing, Przemek!

>
>impressive, and thanks for the fix!
>
>Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>
>>   
>>   	iavf_flush(hw);
>
>
