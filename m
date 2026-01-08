Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 127BBD03A96
	for <lists+intel-wired-lan@lfdr.de>; Thu, 08 Jan 2026 16:07:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 464788229C;
	Thu,  8 Jan 2026 15:07:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O6LIKo3m3YN1; Thu,  8 Jan 2026 15:07:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 80B9082279
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767884855;
	bh=lEMU9tbyFTb1agsGQ0xDIcCmcJYTFHx+WZ/ZSGjBe1w=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tHrp5qrnrGJhkVB8zMczlD4z53Z+P5y1Nj559r0IUWZHAme5v47vKj72Rr7pGBWSv
	 OVPjD1BUFkzl8bCWDOdf/Pjtn7KOIeVLcXZDXE5pPEp6TzfB/mVrzUyxWfvdTtrFBA
	 kt8jjM2amktBUjSwPq8bb2jL2npaLB4ruwDQSan2Kp6OUVf7aJPN/W9R2SJbvnuxjt
	 mGvgaOwSnYERS5AdOKfPOOeKFKv4ce8Vw31Oywo6o4/OW5I/Ck5wzZwn/rwtMmYCR9
	 Sd7Eg8ysmA3TqqL8fx91DillY56IeC6YrXjhj4LAXv3P9afMfVVpZiXlYI2kOXVKSA
	 4fxpM+j8Knz0Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 80B9082279;
	Thu,  8 Jan 2026 15:07:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id E6EE3436
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jan 2026 15:07:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CCB2E4021E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jan 2026 15:07:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lqJkEBOdo6Yw for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Jan 2026 15:07:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6C049401D8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6C049401D8
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6C049401D8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jan 2026 15:07:32 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 6203560130;
 Thu,  8 Jan 2026 15:07:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A09CEC116C6;
 Thu,  8 Jan 2026 15:07:30 +0000 (UTC)
Date: Thu, 8 Jan 2026 07:07:29 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Takashi Kozu <takkozu@amazon.com>
Cc: <anthony.l.nguyen@intel.com>, <przemyslaw.kitszel@intel.com>,
 <andrew+netdev@lunn.ch>, <davem@davemloft.net>, <edumazet@google.com>,
 <pabeni@redhat.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, Kohei Enju <enjuk@amazon.com>
Message-ID: <20260108070729.79575f9c@kernel.org>
In-Reply-To: <20260108052020.84218-8-takkozu@amazon.com>
References: <20260108052020.84218-5-takkozu@amazon.com>
 <20260108052020.84218-8-takkozu@amazon.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1767884851;
 bh=rVjW+7g08CsaF8/U5C2AIau2HipugOJgIASXicUAEIg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=kiih61/M5L1y+N813dg8NelXTuCXe6o9V2dm4tynnomud2ULI9buOkfQBLIOW6yyb
 U8C9dPSxKS8UbtJDvC0mzCpWxoHklbjg6m5W2MixJdXi9rl3tFQsQJDlZXOMuSo33k
 PWLwKfMwQlFmM179JxIw/aGXLeZaitKMwA48fhCtyoE9HKj9iHMqFweyTEBXw504bq
 lnwYxYrpjeM6cEHsdvDZvwGXcaOSz69o9Sknt6tGJiDzCqAU4mrtWTC0BorfuhtSbG
 r2QfnJ4qKhSdtBFlf3oSw/NACFGU05pst3Am5jHQfPNUITnIt8zg/M3S52gw+v5cPA
 0fKNyrbGRrcMg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=kiih61/M
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 3/3] igb: allow
 configuring RSS key via ethtool set_rxfh
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

On Thu, 8 Jan 2026 14:20:15 +0900 Takashi Kozu wrote:
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index da0f550de605..d42b3750f0b1 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -4526,7 +4526,8 @@ static void igb_setup_mrqc(struct igb_adapter *adapter)
>  	u32 mrqc, rxcsum;
>  	u32 j, num_rx_queues;
>  
> -	netdev_rss_key_fill(adapter->rss_key, sizeof(adapter->rss_key));
> +	if (!adapter->has_user_rss_key)
> +		netdev_rss_key_fill(adapter->rss_key, sizeof(adapter->rss_key));
>  	igb_write_rss_key(adapter);

This is an unusual construct. adapter->rss_key is driver state, does
something wipe it? It's normal to have to write the key into the device
after reset but initializing the driver state is usually done at probe,
just once. Then you don't have to worry whether the state is coming from
random or user.

Note that netdev_rss_key_fill() initializes its state once per boot so
it will not change its 'return' value without reboot.

Last but not least - would you be able to run:

tools/testing/selftests/drivers/net/hw/toeplitz.py
tools/testing/selftests/drivers/net/hw/rss_api.py

against this device? Some more help:
https://github.com/linux-netdev/nipa/wiki/Running-driver-tests
