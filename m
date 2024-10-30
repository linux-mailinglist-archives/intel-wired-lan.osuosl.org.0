Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C27089B693E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Oct 2024 17:34:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E4975608AD;
	Wed, 30 Oct 2024 16:34:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pAdYmsxNH7tL; Wed, 30 Oct 2024 16:34:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4A0D260770
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730306074;
	bh=/gjHJyBJM9BAClx7Mo/NvwcRLxg6d+FLv4msSrfkF0k=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ezconOF+BCQHo/SAuUyS6SFKhwkb10ebSL4OKtNFEbEs90A7Zp2ShS3S+zHAOWxuu
	 s1fS54MQrAE0IF2W6BRehQUIfEFJV5GPFkGK+e1lUlGKluyVg6hWXqQEqcIhuLdIyi
	 SKOTHU8lNmmNcN8BjMf7MQxiGF6pRsRE0H8K2upZBy3irgIca47L4I6rR38MF3DHA4
	 vjGqe8qcvNAha5ZyCsIS+p40Z2ItCtpWhSY35u+Ajeyf+3P6IUro4gJIi0z+txYcOS
	 /cVYecZdBd/QuHthRouAov1om1hvKSTmtLlnGErT/I1U5MwUWTPmsQLPC5qyMlZXON
	 ALxD8fKB9bAvw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4A0D260770;
	Wed, 30 Oct 2024 16:34:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 0F54E5E4F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Oct 2024 16:34:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E405140328
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Oct 2024 16:34:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2REkEie6MEjg for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Oct 2024 16:34:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E35644032F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E35644032F
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E35644032F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Oct 2024 16:34:30 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id BB557600AA6A1;
 Wed, 30 Oct 2024 17:34:13 +0100 (CET)
Message-ID: <fa6a5bf6-5401-48d9-bda6-08d17c0bad68@molgen.mpg.de>
Date: Wed, 30 Oct 2024 17:34:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Peter_Gro=C3=9Fe?= <pegro@friiks.de>
Cc: intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
References: <20241030160643.9950-1-pegro@friiks.de>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20241030160643.9950-1-pegro@friiks.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] i40e: Fix handling changed
 priv flags
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

[Cc: +Przemek who succeeded Jesse]

Dear Peter,


Thank you very much for your patch. Some minor comments.

Am 30.10.24 um 17:06 schrieb pegro@friiks.de:
> From: Peter Große <pegro@friiks.de>
> 
> After assembling the new private flags on a PF, the operation to determine
> the changed flags uses the wrong bitmaps. Instead of xor-ing orig_flags with
> new_flags, it uses the still unchanged pf->flags, thus changed_flags is always 0.

It’d be great if you reflowed for 75 characters per line.

> Fix it by using the corrent bitmaps.

corre*c*t

> The issue was discovered while debugging why disabling source pruning
> stopped working with release 6.7. Although the new flags will be copied to
> pf->flags later on in that function, source pruning requires a reset of the PF,
> which was skipped due to this bug.

If you have the actual commands handy to reproduce it, that’d be great 
to have in the commit message.

> Fixes: 70756d0a4727 ("i40e: Use DECLARE_BITMAP for flags and hw_features fields in i40e_pf")
> Signed-off-by: Peter Große <pegro@friiks.de>
> ---
>   drivers/net/ethernet/intel/i40e/i40e_ethtool.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> index c841779713f6..016c0ae6b36f 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> @@ -5306,7 +5306,7 @@ static int i40e_set_priv_flags(struct net_device *dev, u32 flags)
>   	}
>   
>   flags_complete:
> -	bitmap_xor(changed_flags, pf->flags, orig_flags, I40E_PF_FLAGS_NBITS);
> +	bitmap_xor(changed_flags, new_flags, orig_flags, I40E_PF_FLAGS_NBITS);
>   
>   	if (test_bit(I40E_FLAG_FW_LLDP_DIS, changed_flags))
>   		reset_needed = I40E_PF_RESET_AND_REBUILD_FLAG;

With the style fixes above:

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
