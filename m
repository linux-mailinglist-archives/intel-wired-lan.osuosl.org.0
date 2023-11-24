Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A4477F76EA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Nov 2023 15:53:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 35138615B0;
	Fri, 24 Nov 2023 14:53:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 35138615B0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700837583;
	bh=YiNflYAkimzACiwIlQpIux05JWtPVlcXIgucFKI4iOs=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LJdtQ3uv+VSUNH7DBB1PAItbJW7xWKb1+6oTUt7Ruz6TaRd8W11zcnjGIQG87rqpv
	 Z3VsbzWjHJB73WD10PS0RciKtcFzpyaRhxkok4gdiOz2LMgWvHWtELfY/6GJNV9vhz
	 tcFKgH+oMPbzPQW1WRFcf49nk7+o522l6QlxZaQyWaBlPWtZh6+KjhZH1lvIx9HUPw
	 89qiLrzpMqrH9MQdxqYq4dffM5/jIdIeMxreVDfzuHVoCUqNtSgeT8L9FKDg4BajgS
	 mohy9smwDrfzieNb6SQvHKmG4dLWCuzBVDvRksKHQ3MA8OyMhaQWy/ZRBBhbsOr06v
	 s9mK5xZx5pJXg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wqN9CC6DhvAB; Fri, 24 Nov 2023 14:53:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F2F0A615AF;
	Fri, 24 Nov 2023 14:53:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F2F0A615AF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1F7171BF271
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 14:52:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EB3DC8225E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 14:52:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EB3DC8225E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e3587cs5K437 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Nov 2023 14:52:56 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2323A82233
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 14:52:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2323A82233
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-588-pV1hPVSUNtqfoJ2xBmpj-A-1; Fri, 24 Nov 2023 09:52:50 -0500
X-MC-Unique: pV1hPVSUNtqfoJ2xBmpj-A-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
 [10.11.54.9])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A4295831520;
 Fri, 24 Nov 2023 14:52:49 +0000 (UTC)
Received: from [10.45.226.4] (unknown [10.45.226.4])
 by smtp.corp.redhat.com (Postfix) with ESMTP id EB4AE492BE7;
 Fri, 24 Nov 2023 14:52:47 +0000 (UTC)
Message-ID: <838b7b9b-a937-4f6c-9239-93e40fe0a97b@redhat.com>
Date: Fri, 24 Nov 2023 15:52:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Ivan Vecera <ivecera@redhat.com>
To: intel-wired-lan@lists.osuosl.org
References: <20231122101545.28819-1-ivecera@redhat.com>
 <20231122101545.28819-3-ivecera@redhat.com>
In-Reply-To: <20231122101545.28819-3-ivecera@redhat.com>
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.9
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1700837575;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=0ap6fiQil2Ft40pSx8Ez60gBhy9KG4NpYhydDRp/BJQ=;
 b=TZQ+DQKWAjmI2Gf+UCLqiHzmhvsZhdOqWhciCpn33GqDL0sGXXVr1Helyofz49bfUzKw4N
 eSle6ccDnx8qNrQ1ex1Id13yr4z7hx4rssIAme/yi22bqGL68gloniH/Xz3Pwpnucgptmx
 i/v5MJOkOexwruCRIRLINFUdZKOPJpw=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=TZQ+DQKW
Subject: Re: [Intel-wired-lan] [PATCH v4 2/5] i40e: Introduce and use macros
 for iterating VSIs and VEBs
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Simon Horman <horms@kernel.org>, Jacob Keller <jacob.e.keller@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 22. 11. 23 11:15, Ivan Vecera wrote:
> Introduce i40e_for_each_vsi() and i40e_for_each_veb() helper
> macros and use them to iterate relevant arrays.
> 
> Replace pattern:
> for (i = 0; i < pf->num_alloc_vsi; i++)
> by:
> i40e_for_each_vsi(pf, i, vsi)
> 
> and pattern:
> for (i = 0; i < I40E_MAX_VEB; i++)
> by
> i40e_for_each_veb(pf, i, veb)
> 
> These macros also check if array item pf->vsi[i] or pf->veb[i]
> are not NULL and skip such items so we can remove redundant
> checks from loop bodies.
> 
> Reviewed-by: Wojciech Drewek<wojciech.drewek@intel.com>
> Signed-off-by: Ivan Vecera<ivecera@redhat.com>
> ---
>   drivers/net/ethernet/intel/i40e/i40e.h        |  56 ++-
>   drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c |  10 +-
>   .../net/ethernet/intel/i40e/i40e_debugfs.c    |  54 +--
>   drivers/net/ethernet/intel/i40e/i40e_main.c   | 389 ++++++++----------
>   4 files changed, 264 insertions(+), 245 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
> index f1627ab211cd..1e9266de270b 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e.h
> @@ -686,6 +686,54 @@ struct i40e_pf {
>   	struct list_head ddp_old_prof;
>   };
>   
> +/**
> + * __i40e_pf_next_vsi - get next valid VSI
> + * @pf: pointer to the PF struct
> + * @idx: pointer to start position number
> + *
> + * Find and return next non-NULL VSI pointer in pf->vsi array and
> + * updates idx position. Returns NULL if no VSI is found.
> + **/
> +static __always_inline struct i40e_vsi *
> +__i40e_pf_next_vsi(struct i40e_pf *pf, int *idx)
> +{
> +	while (*idx < pf->num_alloc_vsi) {
> +		if (pf->vsi[*idx])
> +			return pf->vsi[(*idx)++];
> +		(*idx)++;
> +	}
> +	return NULL;
> +}
> +
> +#define i40e_pf_for_each_vsi(_pf, _i, _vsi)			\
> +	for (_i = 0, _vsi = __i40e_pf_next_vsi(_pf, &_i);	\
> +	     _vsi;						\
> +	     _vsi = __i40e_pf_next_vsi(_pf, &_i))
> +

It would be safer to update idx to index of returned vsi in 
__i40e_pf_next_vsi() so

(pf->vsi[i] == vsi) in i40e_pf_for_each_vsi(pf, i, vsi) loop.

Will fix this in v5.

Thanks,
Ivan

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
