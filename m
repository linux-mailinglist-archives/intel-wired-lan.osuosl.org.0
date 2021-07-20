Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 93ADE3CF47B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jul 2021 08:27:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EAC4D82423;
	Tue, 20 Jul 2021 06:27:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ktCNMyPDHBlt; Tue, 20 Jul 2021 06:27:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0F16B823F6;
	Tue, 20 Jul 2021 06:27:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D279F1BF321
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jul 2021 06:27:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C1142823F6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jul 2021 06:27:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SHmTuwPh2jvH for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jul 2021 06:27:37 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 821C5823AA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jul 2021 06:27:37 +0000 (UTC)
Received: from [192.168.0.3] (unknown [95.90.235.94])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 7A71961E5FE33;
 Tue, 20 Jul 2021 08:27:34 +0200 (CEST)
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
References: <20210719194931.11173-1-arkadiusz.kubalewski@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <8bc5e9a3-36a1-e90e-7e29-dba1a700bd56@molgen.mpg.de>
Date: Tue, 20 Jul 2021 08:27:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210719194931.11173-1-arkadiusz.kubalewski@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: Fix ATR queue selection
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
Cc: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>,
 intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Arkadiusz,


Am 19.07.21 um 21:49 schrieb Arkadiusz Kubalewski:
> If traffic classes are not configured for PF, then use
> netdev_pick_tx function for selecting queue for packet transmission.
> Instead of calling i40e_swdcb_skb_tx_hash, call netdev_pick_tx,
> which ensures that packet is transmitted/received from CPU that is
> running the application.
> Without this patch, ATR does not work. Receive/transmit uses queue
> selection based on SW DCB hashing method.

For the future, the problem statement should go first in my opinion.

Do you have a recipe, how to reproduce the problem?


Kind regards,

Paul

> Fixes: 821bd0c990ba ("i40e: Fix queue-to-TC mapping on Tx")
> Signed-off-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---
>   drivers/net/ethernet/intel/i40e/i40e_txrx.c | 3 +--
>   1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> index 3f25bd8..10a83e5 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> @@ -3663,8 +3663,7 @@ u16 i40e_lan_select_queue(struct net_device *netdev,
>   
>   	/* is DCB enabled at all? */
>   	if (vsi->tc_config.numtc == 1)
> -		return i40e_swdcb_skb_tx_hash(netdev, skb,
> -					      netdev->real_num_tx_queues);
> +		return netdev_pick_tx(netdev, skb, sb_dev);
>   
>   	prio = skb->priority;
>   	hw = &vsi->back->hw;
> 
> base-commit: e84671cd9648eb1f2b346378c100b4ebfbd1b01c
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
