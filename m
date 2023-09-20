Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C86B97A8E74
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Sep 2023 23:30:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EF51B613A4;
	Wed, 20 Sep 2023 21:30:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EF51B613A4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695245429;
	bh=BWzeUOdCFEh/eaK6sVOa2rxSq7Cnf5zLXVu+DMzrip4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RVc4QharGyEOVovb3kyi9zjDPOWxEVpcWmNV6PdoK51PpfCIV2nd67dULZp8zx3hQ
	 C61k2cgIhgme/utX26BmVRr6FHFzq7xfdN0cg9U2+zSJo8UCUC7JV4LsreDSm0C5u7
	 ssjBcU7qNHrmG+ZlUnrx0DP2jDzwwgDxOO0L9i+5fpHz3iDrFH48b0uVgmX9oudb5l
	 ENwK1i6LV+FLqg6B1ZIvPjICkkYJeKK+Mm7eBohWp3wzh8fJJY7VTDpqGFEDsX6oT6
	 9glHGWUOOOuPLaD26z7yBgiTa+UkdI6QXfkwqqtffpCEAZcl3YEP6Kfb1igDmsZxDA
	 tG7KI373rJxew==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hRSsO2sjU_nq; Wed, 20 Sep 2023 21:30:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EA35F60A66;
	Wed, 20 Sep 2023 21:30:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EA35F60A66
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A238C1BF3F3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Sep 2023 21:30:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7968C40207
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Sep 2023 21:30:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7968C40207
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jhPokcIsKNHh for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Sep 2023 21:30:20 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:3::133])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6820A40133
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Sep 2023 21:30:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6820A40133
Received: from [2601:1c2:980:9ec0::9fed]
 by bombadil.infradead.org with esmtpsa (Exim 4.96 #2 (Red Hat Linux))
 id 1qj4lx-004Gnu-1X; Wed, 20 Sep 2023 21:30:13 +0000
Message-ID: <2038f544-859f-4ffb-9840-37c1ba289259@infradead.org>
Date: Wed, 20 Sep 2023 14:30:09 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Alexander Lobakin <aleksander.lobakin@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
References: <20230920180745.1607563-1-aleksander.lobakin@intel.com>
 <20230920180745.1607563-4-aleksander.lobakin@intel.com>
From: Randy Dunlap <rdunlap@infradead.org>
In-Reply-To: <20230920180745.1607563-4-aleksander.lobakin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
 Message-ID:Sender:Reply-To:Content-ID:Content-Description;
 bh=6v2opmoFg7iTULsiIm+tDuLVY19sjKvFanl0iv7NN1o=; b=buDyQX+yG1Vtywipv9/KYh/HQS
 mG+ZauoFDs4ND9NJqm+19+SHBrVxkSxzDN5235umhT2Js9Lgh/CY6IYgzU6zBNupVHwoR1TWSf09K
 0yF2XxYy0CP4qJ5iGkRiqCLkTPDHnFSKQU+Z8MhUyO6BzWwXVXGVL0ixewm0hgVtXY82csiDQ7TbR
 DDIlGmBn0/zs2vqoK8OaYuVvpgpNw9VgColQpDf7iEWOT4l50YyEJMIEJmMqHZjBl6tHfJFiF7Cx7
 DW4UlH8dpST1tGqD0MKsNQA2RYmE860c67qFZvABmYlNJLWvKroHgaumo8FWGFGVdl1fIi7I+/xLi
 NBufu3MA==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org
 header.a=rsa-sha256 header.s=bombadil.20210309 header.b=buDyQX+y
Subject: Re: [Intel-wired-lan] [PATCH net-next 3/3] idpf: fix undefined
 reference to tcp_gro_complete() when !CONFIG_INET
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
Cc: Michal Michalik <michal.michalik@intel.com>, netdev@vger.kernel.org,
 Richard Cochran <richardcochran@gmail.com>, linux-kernel@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Milena Olech <milena.olech@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 9/20/23 11:07, Alexander Lobakin wrote:
> When CONFIG_INET is not set, tcp_gro_complete is not compiled, although
> the drivers using it may still be compiled (spotted by Randy):
> 
> aarch64-linux-ld: drivers/net/ethernet/intel/idpf/idpf_txrx.o:
> in function `idpf_rx_rsc.isra.0':
> drivers/net/ethernet/intel/idpf/idpf_txrx.c:2909:(.text+0x40cc):
> undefined reference to `tcp_gro_complete'
> 
> The drivers need to guard the calls to it manually.
> Return early from the RSC completion function if !CONFIG_INET, it won't
> work properly either way. This effectively makes it be compiled-out
> almost entirely on such builds.
> 
> Fixes: 3a8845af66ed ("idpf: add RX splitq napi poll support")
> Reported-by: Randy Dunlap <rdunlap@infradead.org>
> Closes: https://lore.kernel.org/linux-next/4c84eb7b-3dec-467b-934b-8a0240f7fb12@infradead.org
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>

That builds for me.  Thanks.

Tested-by: Randy Dunlap <rdunlap@infradead.org>

I hope that these patches can be merged into the v6.6 instead of
v6.7 kernel at some point (i.e., [PATCH net] instead of net-next).


> ---
>  drivers/net/ethernet/intel/idpf/idpf_txrx.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> index 6fa79898c42c..aa45afeb6496 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> @@ -2876,6 +2876,9 @@ static int idpf_rx_rsc(struct idpf_queue *rxq, struct sk_buff *skb,
>  	if (unlikely(!(ipv4 ^ ipv6)))
>  		return -EINVAL;
>  
> +	if (!IS_ENABLED(CONFIG_INET))
> +		return 0;
> +
>  	rsc_segments = DIV_ROUND_UP(skb->data_len, rsc_seg_len);
>  	if (unlikely(rsc_segments == 1))
>  		return 0;

-- 
~Randy
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
