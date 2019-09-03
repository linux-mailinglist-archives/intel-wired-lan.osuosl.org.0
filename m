Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 08AB1A61AC
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Sep 2019 08:42:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8E290226A9;
	Tue,  3 Sep 2019 06:42:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w3awMdzHJhAI; Tue,  3 Sep 2019 06:42:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 07991226B7;
	Tue,  3 Sep 2019 06:42:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 111D61BF86C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2019 06:42:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0D6C28836C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2019 06:42:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EmbmD2WxjO+N for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Sep 2019 06:42:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8E46988367
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2019 06:42:48 +0000 (UTC)
Received: from [192.168.0.6] (ip5f5bd172.dynamic.kabel-deutschland.de
 [95.91.209.114])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 0DF8120225704;
 Tue,  3 Sep 2019 08:42:45 +0200 (CEST)
To: Stefan Assmann <sassmann@kpanic.de>, intel-wired-lan@lists.osuosl.org
References: <20190903060810.30775-1-sassmann@kpanic.de>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <36909884-1de6-a537-0341-b060d01e4c0d@molgen.mpg.de>
Date: Tue, 3 Sep 2019 08:42:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190903060810.30775-1-sassmann@kpanic.de>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH] i40e: clear
 __I40E_VIRTCHNL_OP_PENDING on invalid min tx rate
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
Cc: netdev@vger.kernel.org, davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Stefan,


On 03.09.19 08:08, Stefan Assmann wrote:
> In the case of an invalid min tx rate being requested
> i40e_ndo_set_vf_bw() immediately returns -EINVAL instead of releasing
> __I40E_VIRTCHNL_OP_PENDING first.

What problem does this cause?

> Signed-off-by: Stefan Assmann <sassmann@kpanic.de>
> ---
>   drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index f8aa4deceb5e..3d2440838822 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> @@ -4263,7 +4263,8 @@ int i40e_ndo_set_vf_bw(struct net_device *netdev, int vf_id, int min_tx_rate,
>   	if (min_tx_rate) {
>   		dev_err(&pf->pdev->dev, "Invalid min tx rate (%d) (greater than 0) specified for VF %d.\n",
>   			min_tx_rate, vf_id);
> -		return -EINVAL;
> +		ret = -EINVAL;
> +		goto error;
>   	}
>   
>   	vf = &pf->vf[vf_id];


Kind regards,

Paul
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
