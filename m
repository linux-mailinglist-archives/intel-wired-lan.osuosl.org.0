Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 412FB3FD60A
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Sep 2021 10:57:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C2245406D3;
	Wed,  1 Sep 2021 08:57:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l4iTcWgSX6bG; Wed,  1 Sep 2021 08:57:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5B28F406F3;
	Wed,  1 Sep 2021 08:57:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BB0B91BF834
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Sep 2021 08:57:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A73F8400F0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Sep 2021 08:57:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wTQuAElr8ZZL for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Sep 2021 08:57:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EDF2E400C3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Sep 2021 08:57:10 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 5E79D61E64784;
 Wed,  1 Sep 2021 10:57:09 +0200 (CEST)
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Witold Fijalkowski <witoldx.fijalkowski@intel.com>
References: <20210901082657.25109-1-jedrzej.jagielski@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <09fab5e6-532f-85a1-3232-223d4870551f@molgen.mpg.de>
Date: Wed, 1 Sep 2021 10:57:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210901082657.25109-1-jedrzej.jagielski@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net v1] iavf: Fix displaying queue
 statistics shown by ethtool
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Witold, dear Jedrzej,


Am 01.09.21 um 10:26 schrieb Jedrzej Jagielski:
> Change the number of used queues amount in the NIC statistics. The
> defined number was displaced with actual amount of queues. This fixes

Maybe add the variable names in brackets after it?

> problem with displaying queues statistics, that were not configured.

Example outputs showing the problem might be helpful and useful for testing.

> Fixes: 6dba41cd02fc ("i40evf: update ethtool stats code and use helper functions")
> Signed-off-by: Witold Fijalkowski <witoldx.fijalkowski@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>   drivers/net/ethernet/intel/iavf/iavf_ethtool.c | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> index 7cbe59beeebb..6d67cd3b96bd 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> @@ -404,10 +404,10 @@ static void iavf_get_stat_strings(struct net_device *netdev, u8 *data)
>   
>   	iavf_add_stat_strings(&data, iavf_gstrings_stats);
>   
> -	/* Queues are always allocated in pairs, so we just use num_tx_queues
> -	 * for both Tx and Rx queues.
> -	 */
> -	for (i = 0; i < netdev->num_tx_queues; i++) {
> +	/* Queues are always allocated in pairs, so we just use
> +	* real_num_tx_queues for both Tx and Rx queues.
> +	*/

The alignment of the comment characters looks off.

> +	for (i = 0; i < netdev->real_num_tx_queues; i++) {
>   		iavf_add_stat_strings(&data, iavf_gstrings_queue_stats,
>   				      "tx", i);
>   		iavf_add_stat_strings(&data, iavf_gstrings_queue_stats,
> 


Kind regards,

Paul
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
