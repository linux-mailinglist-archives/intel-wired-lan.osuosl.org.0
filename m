Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D6714B27A39
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Aug 2025 09:38:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4DC2140A8E;
	Fri, 15 Aug 2025 07:38:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QUO3RPu-6Hz6; Fri, 15 Aug 2025 07:38:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AD2CD40A8F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755243537;
	bh=qmpYTVTpQzwDiP5KOloWeih/GzmERkPgMBHhbpTfXaQ=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=S4nITvqMs1Dw7zLrR5KUCJWvhni/VnowpMjW8AHMeyFT0Hpk7bmda9ViqXe1vOqqf
	 tlm3b/dac6v9IsVsBdTQ7K0ZmgunUmE/n0WxCAvrYG66P1tQfy13zs1fOKH7qLgsd8
	 7bF2X9r8YaOz8X6BFr3gKgx7Z1g4kxD9q6PwvrhpMXyTyXi7lF/7CURyNd+sng3RCG
	 Kqmq+xgebqymqI+Qj8a65heFeqee358dwCUpJb9kG1yNxYygs8SH/fShYKe5RVfQwV
	 /ab7wRu3bDObzuRmrYbWfjbU5Nh5gLHVDKlMNrBusC3wboqghTJgeV3G+A06LDoc+E
	 5YxMG/9FrpE+g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id AD2CD40A8F;
	Fri, 15 Aug 2025 07:38:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 93128271
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Aug 2025 07:38:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7A104404F5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Aug 2025 07:38:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cpo7pj3y6Lfj for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Aug 2025 07:38:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E0734404E2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E0734404E2
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E0734404E2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Aug 2025 07:38:44 +0000 (UTC)
Received: from [192.168.1.9]
 (dynamic-077-183-003-144.77.183.pool.telefonica.de [77.183.3.144])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 9D25961E647AC;
 Fri, 15 Aug 2025 09:38:02 +0200 (CEST)
Message-ID: <9ee14d54-b680-4b1a-82c2-56c0c1b26fa1@molgen.mpg.de>
Date: Fri, 15 Aug 2025 09:38:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Kohei Enju <enjuk@amazon.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Alexander Duyck <alexander.h.duyck@intel.com>, kohei.enju@gmail.com
References: <20250815062645.93732-2-enjuk@amazon.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20250815062645.93732-2-enjuk@amazon.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH v1 iwl-net] igb: fix link test
 skipping when interface is admin down
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

Dear Kohei,


Thank you very much for your patch.

Am 15.08.25 um 08:26 schrieb Kohei Enju:
> The igb driver incorrectly skips the link test when the network
> interface is admin down (if_running == false), causing the test to
> always report PASS regardless of the actual physical link state.
> 
> This behavior is inconsistent with other drivers (e.g. i40e, ice, ixgbe,
> etc.) which correctly test the physical link state regardless of admin
> state.

I’d collapse the above two sentences into one paragraph and add an empty 
line here to visually separate the paragraph below.

> Remove the if_running check to ensure link test always reflects the
> physical link state.

Please add how to verify your change, that means the command to run.

> Fixes: 8d420a1b3ea6 ("igb: correct link test not being run when link is down")
> Signed-off-by: Kohei Enju <enjuk@amazon.com>
> ---
>   drivers/net/ethernet/intel/igb/igb_ethtool.c | 5 +----
>   1 file changed, 1 insertion(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
> index ca6ccbc13954..6412c84e2d17 100644
> --- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
> +++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
> @@ -2081,11 +2081,8 @@ static void igb_diag_test(struct net_device *netdev,
>   	} else {
>   		dev_info(&adapter->pdev->dev, "online testing starting\n");
>   
> -		/* PHY is powered down when interface is down */
> -		if (if_running && igb_link_test(adapter, &data[TEST_LINK]))
> +		if (igb_link_test(adapter, &data[TEST_LINK]))
>   			eth_test->flags |= ETH_TEST_FL_FAILED;
> -		else
> -			data[TEST_LINK] = 0;
>   
>   		/* Online tests aren't run; pass by default */
>   		data[TEST_REG] = 0;

Regardless of my style comments above:

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
