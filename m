Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 504526B8076
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Mar 2023 19:27:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9770240151;
	Mon, 13 Mar 2023 18:27:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9770240151
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678732034;
	bh=nLad/4bfrnxZhFKw+puyuOgvymkOh/6g/BV5HbcsSmg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MLhuTQ3GiNW7KRdw9G9O6Gsn/lfScf7B5gxBdA4OgDPdJdRL39VzDFpEHwSNFlRIt
	 oT9p9oRTRqzqzf8PmqBqXZ3zHGo15VIHFPqCcgPTIGUqmAD4U6ErgrS8hENLYIMfV9
	 AEK0xWmmYamN6ya3vBhZU8C66dD/P6ilgk2wti7+vKLga8XRYxZuzDDNpj/nCgMQ5P
	 qwDUtdv5xwUNaqmEVgcY74H68bv+w0FjPVOQ6NFq5vHzv3rsAkrFQcJHxAiNriia82
	 KSStAwTNmDQHOoKl77Xm8tyaA30f2+9oPz4rWn4M/nvGkkz6o6FYPumZEJ9JSVwPNl
	 s7CP0kRPc4UJg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uME5Rk6YvxBa; Mon, 13 Mar 2023 18:27:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3A4AD40131;
	Mon, 13 Mar 2023 18:27:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3A4AD40131
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8CD211BF365
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Mar 2023 18:27:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 64BDD605A6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Mar 2023 18:27:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 64BDD605A6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ukoFGTzsIpjy for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Mar 2023 18:27:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 850BF600CB
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 850BF600CB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Mar 2023 18:27:06 +0000 (UTC)
Received: from [172.18.236.247] (unknown [46.183.103.17])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id E9CF361CC457B;
 Mon, 13 Mar 2023 19:27:01 +0100 (CET)
Message-ID: <12d1ab7d-c4fd-44b5-7e53-e80cd4b00a21@molgen.mpg.de>
Date: Mon, 13 Mar 2023 19:26:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Jakob Koschel <jkl820.git@gmail.com>
References: <20230301-ice-fix-invalid-iterator-found-check-v1-1-87c26deed999@gmail.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20230301-ice-fix-invalid-iterator-found-check-v1-1-87c26deed999@gmail.com>
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix invalid check for empty
 list in ice_sched_assoc_vsi_to_agg()
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
Cc: Cristiano Giuffrida <c.giuffrida@vu.nl>, netdev@vger.kernel.org,
 Pietro Borrello <borrello@diag.uniroma1.it>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, "Bos, H.J." <h.j.bos@vu.nl>,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Jakob,


Thank you for the patch.

Am 13.03.23 um 17:31 schrieb Jakob Koschel:
> The code implicitly assumes that the list iterator finds a correct
> handle. If 'vsi_handle' is not found the 'old_agg_vsi_info' was
> pointing to an bogus memory location. For safety a separate list
> iterator variable should be used to make the != NULL check on
> 'old_agg_vsi_info' correct under any circumstances.
> 
> Additionally Linus proposed to avoid any use of the list iterator
> variable after the loop, in the attempt to move the list iterator
> variable declaration into the macro to avoid any potential misuse after
> the loop. Using it in a pointer comparision after the loop is undefined

compar*i*son

> behavior and should be omitted if possible [1].

(It took me a short time to find the reference number at the end of the 
URL.)

> Link: https://lore.kernel.org/all/CAHk-=wgRr_D8CB-D9Kg-c=EHreAsk5SqXPwr9Y7k9sA6cWXJ6w@mail.gmail.com/ [1]
> Signed-off-by: Jakob Koschel <jkl820.git@gmail.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_sched.c | 8 +++++---
>   1 file changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_sched.c b/drivers/net/ethernet/intel/ice/ice_sched.c
> index 4eca8d195ef0..b7682de0ae05 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sched.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sched.c
> @@ -2788,7 +2788,7 @@ static int
>   ice_sched_assoc_vsi_to_agg(struct ice_port_info *pi, u32 agg_id,
>   			   u16 vsi_handle, unsigned long *tc_bitmap)
>   {
> -	struct ice_sched_agg_vsi_info *agg_vsi_info, *old_agg_vsi_info = NULL;
> +	struct ice_sched_agg_vsi_info *agg_vsi_info, *iter, *old_agg_vsi_info = NULL;
>   	struct ice_sched_agg_info *agg_info, *old_agg_info;
>   	struct ice_hw *hw = pi->hw;
>   	int status = 0;
> @@ -2806,11 +2806,13 @@ ice_sched_assoc_vsi_to_agg(struct ice_port_info *pi, u32 agg_id,
>   	if (old_agg_info && old_agg_info != agg_info) {
>   		struct ice_sched_agg_vsi_info *vtmp;
>   
> -		list_for_each_entry_safe(old_agg_vsi_info, vtmp,
> +		list_for_each_entry_safe(iter, vtmp,
>   					 &old_agg_info->agg_vsi_list,
>   					 list_entry)
> -			if (old_agg_vsi_info->vsi_handle == vsi_handle)
> +			if (iter->vsi_handle == vsi_handle) {
> +				old_agg_vsi_info = iter;
>   				break;
> +			}
>   	}
>   
>   	/* check if entry already exist */

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
