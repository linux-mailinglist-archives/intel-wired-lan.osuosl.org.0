Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D02D779409
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Aug 2023 18:12:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5F41841EA1;
	Fri, 11 Aug 2023 16:12:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5F41841EA1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691770347;
	bh=tmdS/Cf9wtLnVlFOsI2paQIdfBbkj+JvUpynMTjnB0U=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cJFTCNPr3GUcRXdBFFMquFqC17JdWMQVxpxgf2cG8gSEhDIVzSsx/Yc8RLa1FRCPL
	 xaQPu+3nCcPhpF25p51NKPQpJosA7h+BcUn8217LrwoMtdko0B6kboMtQJAj7ry5ol
	 GoL3rX+hULMTQLCkaiWQ/xmKldJxF91GXRpU6Xskj8LIhg555RsAkjLeyJyWrOORJC
	 qagtF62upFQczMsm0pH4oSxJ5tv9ADlgHpsBcZ6LU4INvzMZfZaioTiPIkqNM/MkUT
	 qFjJr2zvuD+UrWe087kkMKydfFm2XIfvUo72Y4Gu6LX6GY43QxliCfoEp6Km7pTWa+
	 tEcYrtvd3ZyaQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jk2H05FVtngd; Fri, 11 Aug 2023 16:12:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 02B0C41EA0;
	Fri, 11 Aug 2023 16:12:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 02B0C41EA0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EBDF41BF831
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 16:12:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8BEE54021C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 16:12:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8BEE54021C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fPhXgpZpXS8H for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Aug 2023 16:12:19 +0000 (UTC)
Received: from out-75.mta1.migadu.com (out-75.mta1.migadu.com
 [IPv6:2001:41d0:203:375::4b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D447240186
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 16:12:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D447240186
Message-ID: <33708eb5-d64f-53b4-5107-8f663ca22c4f@linux.dev>
Date: Fri, 11 Aug 2023 17:12:08 +0100
MIME-Version: 1.0
Content-Language: en-US
To: marshall.shao@dell.com, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Jacob Keller <jacob.e.keller@intel.com>,
 Simon Horman <simon.horman@corigine.com>,
 Akihiko Odaki <akihiko.odaki@daynix.com>, Kees Cook <keescook@chromium.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Lin Ma <linma@zju.edu.cn>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230811120225.4133-1-marshall.shao@dell.com>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <20230811120225.4133-1-marshall.shao@dell.com>
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1691770335;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Kv429vn4vrSk3k/7v41brV0Zux6uwlxmmzbB9l5tuo0=;
 b=cNArDGwshUnaLan3+ZQHwp/yQxNnjNwDYr5AnuuykMARyRZGX6XBHOBj+TMWDbT2sfsFyY
 koPL+1ZQjcVPbei/xPlRFXipRrPzkC5WuFC+Q8a+wFKmEjB68EtF/Oi6RXa67rdiX1i37I
 L80+sM4WXgpoBiCA2rNOprL3+YJF+dY=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=cNArDGws
Subject: Re: [Intel-wired-lan] [PATCH] Fix kernel panic issue after removing
 igb driver
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 11/08/2023 13:02, marshall.shao@dell.com wrote:
> From: Marshall Shao <Marshall.Shao@dell.com>
> 
> This patch fixes a kernel panic issue after removing the igb driver
> from the usermode.
> 
> A delayed work will be schedule in igb_ptp_init(),
> 
> 	if (adapter->ptp_flags & IGB_PTP_OVERFLOW_CHECK)
> 		INIT_DELAYED_WORK(&adapter->ptp_overflow_work,
> 				  igb_ptp_overflow_check);
> 
> If CONFIG_PTP_1588_CLOCK is not enabled, the delayed work cannot be
> cancelled when igb_ptp_suspend is called.

But should this work be inited in case there is no PTP support in the
kernel? Maybe it's better to avoid any driver threads in this case and
move the initialization to the if block where we know that PHC device
is created and working?

> 
> Signed-off-by: Marshall Shao <Marshall.Shao@dell.com>
> ---
>   drivers/net/ethernet/intel/igb/igb_ptp.c | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb_ptp.c b/drivers/net/ethernet/intel/igb/igb_ptp.c
> index 405886ee5261..b21822ea1c7d 100644
> --- a/drivers/net/ethernet/intel/igb/igb_ptp.c
> +++ b/drivers/net/ethernet/intel/igb/igb_ptp.c
> @@ -1435,12 +1435,12 @@ void igb_ptp_sdp_init(struct igb_adapter *adapter)
>    */
>   void igb_ptp_suspend(struct igb_adapter *adapter)
>   {
> -	if (!(adapter->ptp_flags & IGB_PTP_ENABLED))
> -		return;
> -
>   	if (adapter->ptp_flags & IGB_PTP_OVERFLOW_CHECK)
>   		cancel_delayed_work_sync(&adapter->ptp_overflow_work);
>   
> +	if (!(adapter->ptp_flags & IGB_PTP_ENABLED))
> +		return;
> +
>   	cancel_work_sync(&adapter->ptp_tx_work);
>   	if (adapter->ptp_tx_skb) {
>   		dev_kfree_skb_any(adapter->ptp_tx_skb);

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
