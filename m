Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 366E288D741
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Mar 2024 08:29:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DCFDA8146B;
	Wed, 27 Mar 2024 07:29:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LJ2BH8N-Elvw; Wed, 27 Mar 2024 07:29:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 15B878146E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711524589;
	bh=I+MC2q8y8nD5KthMzwqiAm8lJS2baMGc2mOBEQ/3u6A=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=g4VM2o6dF0g8i4YDmZt8jZFKaa1m6o7grKSwIS7QkOlMIhNN4N12bMzadGl6w/VvG
	 dWBWb2hV60ENcTZMP2uC+I7UCuHMwQFqS+C2ff6v6u5/ECogaphFK+Hb5DAChBWAnK
	 hfggbyq2MbxJQBQ+8ukSjhXeFqlyVKh014FaGmdVZf7GNL3gfcHeqKIf+fbmsQpXDh
	 Xvk9RqUbdffyPEb0507NyR9RMQzmEnjhGO7C8IjXMTz1hVFMpAMKfS2yqsLWIqvKWn
	 lWp8BTvZdbUB5qjMToLG7c9ZiY4Jb0XHsoZyXAnVEORu1MEuFzD1nqmbAVn31H4aBK
	 iekSoewkntcsA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 15B878146E;
	Wed, 27 Mar 2024 07:29:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F0F401BF42D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 07:29:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DD1EE81461
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 07:29:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M1b3I4WOPVDu for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Mar 2024 07:29:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 013B98145C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 013B98145C
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 013B98145C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 07:29:45 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-156-nqxTmeZ1MK2Q_AuxGNsxpA-1; Wed,
 27 Mar 2024 03:29:42 -0400
X-MC-Unique: nqxTmeZ1MK2Q_AuxGNsxpA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
 [10.11.54.8])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D63653800E8D;
 Wed, 27 Mar 2024 07:29:41 +0000 (UTC)
Received: from [10.45.224.197] (unknown [10.45.224.197])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 32D79C017A2;
 Wed, 27 Mar 2024 07:29:40 +0000 (UTC)
Message-ID: <8e585156-4f6f-4837-9375-f29842fa7f85@redhat.com>
Date: Wed, 27 Mar 2024 08:29:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>
References: <20240313135618.20930-1-ivecera@redhat.com>
Content-Language: en-US
In-Reply-To: <20240313135618.20930-1-ivecera@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1711524584;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=I+MC2q8y8nD5KthMzwqiAm8lJS2baMGc2mOBEQ/3u6A=;
 b=Nwh3FNQL/50FKCQ+1uJSSYYWh6e5PqJ2Z5QXuin0Tji7JEip93pH67q0gCyNPvtY03aKCc
 Aa+8V2cYPL8dKuKw1GXnfc+kBl8NNlHts1s5hTjrxFToHa8byruDCj6cp1Wl7B53+exVYe
 z1iLMok8RcIvGKnfxUyqC3XvxuddElk=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=Nwh3FNQL
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: Fix VF MAC filter removal
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
Cc: "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 open list <linux-kernel@vger.kernel.org>, aleksandr.loktionov@intel.com,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 horms@kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 13. 03. 24 14:56, Ivan Vecera wrote:
> Commit 73d9629e1c8c ("i40e: Do not allow untrusted VF to remove
> administratively set MAC") fixed an issue where untrusted VF was
> allowed to remove its own MAC address although this was assigned
> administratively from PF. Unfortunately the introduced check
> is wrong because it causes that MAC filters for other MAC addresses
> including multi-cast ones are not removed.
> 
> <snip>
> 	if (ether_addr_equal(addr, vf->default_lan_addr.addr) &&
> 	    i40e_can_vf_change_mac(vf))
> 		was_unimac_deleted = true;
> 	else
> 		continue;
> 
> 	if (i40e_del_mac_filter(vsi, al->list[i].addr)) {
> 	...
> </snip>
> 
> The else path with `continue` effectively skips any MAC filter
> removal except one for primary MAC addr when VF is allowed to do so.
> Fix the check condition so the `continue` is only done for primary
> MAC address.
> 
> Fixes: 73d9629e1c8c ("i40e: Do not allow untrusted VF to remove administratively set MAC")
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> ---
>   drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 11 ++++++-----
>   1 file changed, 6 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index b34c71770887..10267a300770 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> @@ -3143,11 +3143,12 @@ static int i40e_vc_del_mac_addr_msg(struct i40e_vf *vf, u8 *msg)
>   		/* Allow to delete VF primary MAC only if it was not set
>   		 * administratively by PF or if VF is trusted.
>   		 */
> -		if (ether_addr_equal(addr, vf->default_lan_addr.addr) &&
> -		    i40e_can_vf_change_mac(vf))
> -			was_unimac_deleted = true;
> -		else
> -			continue;
> +		if (ether_addr_equal(addr, vf->default_lan_addr.addr)) {
> +			if (i40e_can_vf_change_mac(vf))
> +				was_unimac_deleted = true;
> +			else
> +				continue;
> +		}
>   
>   		if (i40e_del_mac_filter(vsi, al->list[i].addr)) {
>   			ret = -EINVAL;

Hi Tony,
the fix is not part of your recent pull series for i40e... I have 
submitted it to 'net' instead of 'iwl-net' as it fixes recent commit 
that causes MAC filter resource leaks that should be fixed as soon as 
possible. But its status in patchwork is 'Awaiting upstream' so it has 
to be resubmitted by yourself... Or should this be picked directly by 
netdev maintainers?

Thanks,
Ivan

