Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WPYvO1Pl8WlZlAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Apr 2026 13:02:43 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D64B4934DA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Apr 2026 13:02:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9CF044233D;
	Wed, 29 Apr 2026 11:02:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ES7OzvCtXxbX; Wed, 29 Apr 2026 11:02:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7A1F04233B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777460555;
	bh=6Cb+eOeKh2/iAF5cyO9+yDud9QZ6LA5aCftMTKzKcBU=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=siooR0kFFA64fuvXqYKWE/PmJp1FPT7a9o3WP7epMQYBbh/E+iVtpPSqGovrPc4Qt
	 87Rn75r4WAnp3aT9N++sHfMbro0fpk6xi7ULB0GhlyH72z9tAwNm99K6JvVo/lv4Em
	 ed/NgaGlbKe7/BsXArA3NpJKYvhsw+PRrGImGLdNWDrS9JI8W9xOLNmkXQplGe7cnr
	 kajgrbjxCbbY1HUpRt9ArjxxX0qY/TOVnfrX0anRMCqTGkTfh78zVS8llbVbf3n3ND
	 D4LH+mlyTm9AUfFLYd5kYamihywjIp+9Km8663QeReFeVoJUFvRFY8SKEkh6O+hT0L
	 NpvNzFLSgCJnw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7A1F04233B;
	Wed, 29 Apr 2026 11:02:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id D0BE423D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 11:02:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C25564044C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 11:02:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nN8XDHzg9yXe for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Apr 2026 11:02:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 094114208C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 094114208C
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 094114208C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 11:02:27 +0000 (UTC)
Received: from [141.14.220.42] (g42.guest.molgen.mpg.de [141.14.220.42])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 048184C4431148;
 Wed, 29 Apr 2026 13:02:01 +0200 (CEST)
Message-ID: <558971b7-caea-471a-8fe2-73ba6cc0790a@molgen.mpg.de>
Date: Wed, 29 Apr 2026 13:02:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Mohamed Khalfella <mkhalfella@purestorage.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260428181450.2622899-1-mkhalfella@purestorage.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20260428181450.2622899-1-mkhalfella@purestorage.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH] i40e: Fix i40e_debug() to use struct
 i40e_hw argument
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
X-Rspamd-Queue-Id: 2D64B4934DA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.71 / 15.00];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[mpg.de];
	RCVD_COUNT_SEVEN(0.00)[8];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mkhalfella@purestorage.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	URIBL_MULTI_FAIL(0.00)[mpg.de:server fail,osuosl.org:server fail,molgen.mpg.de:server fail,purestorage.com:server fail,smtp4.osuosl.org:server fail,sashiko.dev:server fail];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,mpg.de:email]

Dear Mohamed,


Thank you for your patch.

Am 28.04.26 um 20:14 schrieb Mohamed Khalfella:
> i40e_debug() macro takes struct i40e_hw *h as first argument. But the
> macro body uses hw instead of h. This has been working so far because hw
> happen to be the name of the variable in the context where the marco is

marco → ma*cr*o

> expanded. Fix the macro to use the passed argument.

I’d add a Fixes: tag, but the maintainers might have more input.

> Signed-off-by: Mohamed Khalfella <mkhalfella@purestorage.com>
> ---
>   drivers/net/ethernet/intel/i40e/i40e_debug.h | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_debug.h b/drivers/net/ethernet/intel/i40e/i40e_debug.h
> index e9871dfb32bd..01fd70db9086 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_debug.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e_debug.h
> @@ -42,7 +42,7 @@ struct device *i40e_hw_to_dev(struct i40e_hw *hw);
>   #define i40e_debug(h, m, s, ...)				\
>   do {								\
>   	if (((m) & (h)->debug_mask))				\
> -		dev_info(i40e_hw_to_dev(hw), s, ##__VA_ARGS__);	\
> +		dev_info(i40e_hw_to_dev(h), s, ##__VA_ARGS__);	\
>   } while (0)
>   
>   #endif /* _I40E_DEBUG_H_ */

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul


PS: gemini/gemini-3.1-pro-preview embargoed it’s review until the 
evening [1].


[1]: 
https://sashiko.dev/#/patchset/20260428181450.2622899-1-mkhalfella%40purestorage.com
