Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 00CDEB38641
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Aug 2025 17:19:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AA53181446;
	Wed, 27 Aug 2025 15:19:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zCTZyPt2Lo_3; Wed, 27 Aug 2025 15:19:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 09F6681448
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756307952;
	bh=+lbduQnnscDvQeLayDEHm9y46Z9GRYi4sidREbMvUIE=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tTJuzLZE8LgBgQYx6DFWolZmGWcTckMf2Ez92O4SNqIaeM41JhGfqoE98Yajs1ujg
	 5YuIJsjll568Dp4i/cGC14GLbd49vB+q38TXKFteaaeglrQUI1bGnzqwk06iQQ35NJ
	 Cf5Q0vqjLauTv6vdygmIjJP/Q/h8JfKLYHOtrwFxhZGKMy+1XjzXdE55PjLbPbRKlX
	 6NY7GmJhU81ZfdzZIJ5O5fPp3xK6rTyV2nc0DAB/a648fz9QC7Pxxd05HThSehnsNF
	 xzIaTnVnWWbXFsimJcKCL5u0TW2JGNvRXMUl9kctGBNUT+NCt/XfcY5WLbRD/sDIoG
	 Tv9MqSJEbKjJQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 09F6681448;
	Wed, 27 Aug 2025 15:19:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 8086E17D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 15:19:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 727F040482
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 15:19:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cbUVYMQz4op3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Aug 2025 15:19:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B0D5740578
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B0D5740578
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B0D5740578
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 15:19:08 +0000 (UTC)
Received: from [192.168.2.202] (p5dc558dd.dip0.t-ipconnect.de [93.197.88.221])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id B625A60213AC3;
 Wed, 27 Aug 2025 17:18:35 +0200 (CEST)
Message-ID: <6dc3bd8e-66db-4237-86bc-717f7b5c7b2a@molgen.mpg.de>
Date: Wed, 27 Aug 2025 17:18:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Zhen Ni <zhen.ni@easystack.cn>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
References: <20250827032348.1374048-1-zhen.ni@easystack.cn>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20250827032348.1374048-1-zhen.ni@easystack.cn>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH] i40e: Fix potential invalid access
 when MAC list is empty
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

Dear Zhen,


Thank you for your patch.

Am 27.08.25 um 05:23 schrieb Zhen Ni:
> list_first_entry() never returns NULL — if the list is empty, it still
> returns a pointer to an invalid object, leading to potential invalid
> memory access when dereferenced.
> 
> Fix this by checking list_empty() before calling list_first_entry(),
> and only copying the MAC address when the list is not empty.
> 
> Fixes: e3219ce6a775 ("i40e: Add support for client interface for IWARP driver")
> Signed-off-by: Zhen Ni <zhen.ni@easystack.cn>
> ---
>   drivers/net/ethernet/intel/i40e/i40e_client.c | 9 +++++----
>   1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_client.c b/drivers/net/ethernet/intel/i40e/i40e_client.c
> index 5f1a405cbbf8..0a72157aee0e 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_client.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_client.c
> @@ -359,12 +359,13 @@ static void i40e_client_add_instance(struct i40e_pf *pf)
>   	if (i40e_client_get_params(vsi, &cdev->lan_info.params))
>   		goto free_cdev;
>   
> -	mac = list_first_entry(&cdev->lan_info.netdev->dev_addrs.list,
> -			       struct netdev_hw_addr, list);
> -	if (mac)
> +	if (!list_empty(&cdev->lan_info.netdev->dev_addrs.list)) {
> +		mac = list_first_entry(&cdev->lan_info.netdev->dev_addrs.list,
> +				       struct netdev_hw_addr, list);
>   		ether_addr_copy(cdev->lan_info.lanmac, mac->addr);
> -	else
> +	} else {
>   		dev_err(&pf->pdev->dev, "MAC address list is empty!\n");
> +	}
>   
>   	pf->cinst = cdev;
>   

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
