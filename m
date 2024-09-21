Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E706E97DD48
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Sep 2024 14:53:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 587386075A;
	Sat, 21 Sep 2024 12:53:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YVbjbCZzVVKk; Sat, 21 Sep 2024 12:53:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9ACC16079A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726923212;
	bh=6QSo1wbX76z4QTgK0MnEADpfJWPXA3ae8nkOlPrjfdI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QTIjFN/XnLuWUP2z3vN1y7X9ravfH2v0Y3CaNTZUgT7opeIvcWXrlA7+f/Vn98uz6
	 mGpcgapdp2L5QFsCjz9VBZiwPdaRyoTPDQlfFSf0fwY09xnyp6oics5DGqsHlyvlrW
	 psD6APpbkiilvSWLz7b3WkMv200wtkcwbxFdRsO92SKsfxZ0eN/lPutSrrERfkOHG9
	 bfntNMaEDIhhJWWeurwH9WYx4bEWrJJHyaWaJmJBw8aqMT4GEgDUBCvQUYD84ANIW6
	 p53VW43g5WUz3Bx+d6pkhCf6PEbxKF4Pb1SZjYDMm+AX2LAoqkcJml5JmK+m2pqiHd
	 mx5mNwmqD+02w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9ACC16079A;
	Sat, 21 Sep 2024 12:53:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 481C21BF834
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Sep 2024 12:53:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 36A278444B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Sep 2024 12:53:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VuNeT2D025uc for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Sep 2024 12:53:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 31191841C7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 31191841C7
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 31191841C7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Sep 2024 12:53:27 +0000 (UTC)
Received: from [192.168.0.53] (ip5f5aef34.dynamic.kabel-deutschland.de
 [95.90.239.52])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 4670161E5FE05;
 Sat, 21 Sep 2024 14:52:56 +0200 (CEST)
Message-ID: <7e2c75bf-3ec5-4202-8b69-04fce763e948@molgen.mpg.de>
Date: Sat, 21 Sep 2024 14:52:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Wander Lairson Costa <wander@redhat.com>
References: <20240920185918.616302-1-wander@redhat.com>
 <20240920185918.616302-3-wander@redhat.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20240920185918.616302-3-wander@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH 2/2] igbvf: remove unused spinlock
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Wander,


Thank you for your patch.

Am 20.09.24 um 20:59 schrieb Wander Lairson Costa:
> tx_queue_lock and stats_lock are declared and initialized, but never
> used. Remove them.
> 
> Signed-off-by: Wander Lairson Costa <wander@redhat.com>

It’d be great if you added a Fixes: tag.

> ---
>   drivers/net/ethernet/intel/igbvf/igbvf.h  | 3 ---
>   drivers/net/ethernet/intel/igbvf/netdev.c | 3 ---
>   2 files changed, 6 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igbvf/igbvf.h b/drivers/net/ethernet/intel/igbvf/igbvf.h
> index 6ad35a00a287..ca6e44245a7b 100644
> --- a/drivers/net/ethernet/intel/igbvf/igbvf.h
> +++ b/drivers/net/ethernet/intel/igbvf/igbvf.h
> @@ -169,8 +169,6 @@ struct igbvf_adapter {
>   	u16 link_speed;
>   	u16 link_duplex;
>   
> -	spinlock_t tx_queue_lock; /* prevent concurrent tail updates */
> -
>   	/* track device up/down/testing state */
>   	unsigned long state;
>   
> @@ -220,7 +218,6 @@ struct igbvf_adapter {
>   	/* OS defined structs */
>   	struct net_device *netdev;
>   	struct pci_dev *pdev;
> -	spinlock_t stats_lock; /* prevent concurrent stats updates */
>   
>   	/* structs defined in e1000_hw.h */
>   	struct e1000_hw hw;
> diff --git a/drivers/net/ethernet/intel/igbvf/netdev.c b/drivers/net/ethernet/intel/igbvf/netdev.c
> index 925d7286a8ee..02044aa2181b 100644
> --- a/drivers/net/ethernet/intel/igbvf/netdev.c
> +++ b/drivers/net/ethernet/intel/igbvf/netdev.c
> @@ -1656,12 +1656,9 @@ static int igbvf_sw_init(struct igbvf_adapter *adapter)
>   	if (igbvf_alloc_queues(adapter))
>   		return -ENOMEM;
>   
> -	spin_lock_init(&adapter->tx_queue_lock);
> -
>   	/* Explicitly disable IRQ since the NIC can be in any state. */
>   	igbvf_irq_disable(adapter);
>   
> -	spin_lock_init(&adapter->stats_lock);
>   	spin_lock_init(&adapter->hw.mbx_lock);
>   
>   	set_bit(__IGBVF_DOWN, &adapter->state);

With that addressed:

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
