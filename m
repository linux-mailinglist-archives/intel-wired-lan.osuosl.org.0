Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SDc/BXej72kcDgEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Apr 2026 19:57:11 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B42A2477F52
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Apr 2026 19:57:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 04CE7606E0;
	Mon, 27 Apr 2026 17:57:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5XD2u9v0Cp8Y; Mon, 27 Apr 2026 17:57:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 433B8606DC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777312627;
	bh=e5xGL6uuaBWKPAdTLOXHgJTjIoGjalBU+LWxzeOThBE=;
	h=Date:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=eZlMPhFn5KVZxYtYQyrSpARyboZ3IJbwwHlZqGUpiZnPeihOc3GBxvoQel0aO5C3O
	 ZuXOzpggPLZ3n7HenV/0xUVRL3b/434/0ySHDns//W8Wz74xx0C6qN8BSp22jC9+Rj
	 SLqSegrR1Jzw8u5imr0nHlWcNFkSOhqSMYcxnw2A1Oe4kodxOhWPtCT+pY47q/Gbg1
	 npF0CAU5ga8ykhVFqOJGKXaxg94t0HnjAk5aKOUQNqur4+gqZn5lKIxRC3UkuDeaHU
	 jPeb8PTZfb2oz9VTmIEalIx90nvKbIioomBMgi2osyi6foYZJ5ht4/WJdNCDttb1Nw
	 M+bjrIrD/Nlog==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 433B8606DC;
	Mon, 27 Apr 2026 17:57:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 200AB231
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 17:57:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 052A5606DA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 17:57:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0dWfDJqXCvUX for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Apr 2026 17:57:05 +0000 (UTC)
X-Greylist: delayed 473 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 27 Apr 2026 17:57:04 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A2A28606D7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A2A28606D7
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=199.89.1.14;
 helo=011.lax.mailroute.net; envelope-from=bvanassche@acm.org;
 receiver=<UNKNOWN> 
Received: from 011.lax.mailroute.net (011.lax.mailroute.net [199.89.1.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A2A28606D7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 17:57:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by 011.lax.mailroute.net (Postfix) with ESMTP id 4g49zp52Cpz1XLwX6;
 Mon, 27 Apr 2026 17:49:10 +0000 (UTC)
X-Virus-Scanned: by MailRoute
Received: from 011.lax.mailroute.net ([127.0.0.1])
 by localhost (011.lax [127.0.0.1]) (mroute_mailscanner, port 10029) with LMTP
 id D0UElPbxNW_m; Mon, 27 Apr 2026 17:49:07 +0000 (UTC)
Received: from [100.119.48.131] (unknown [104.135.180.219])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 (Authenticated sender: bvanassche@acm.org)
 by 011.lax.mailroute.net (Postfix) with ESMTPSA id 4g49zk2BZ0z1XLwX5;
 Mon, 27 Apr 2026 17:49:06 +0000 (UTC)
Message-ID: <32ef1813-b69d-4d9b-80e6-530a6d431d39@acm.org>
Date: Mon, 27 Apr 2026 10:49:05 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20260320212824.264252-1-bvanassche@acm.org>
Content-Language: en-US
In-Reply-To: <20260320212824.264252-1-bvanassche@acm.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=acm.org; h=
 content-transfer-encoding:content-type:content-type:in-reply-to
 :from:from:content-language:references:subject:subject
 :user-agent:mime-version:date:date:message-id:received:received;
 s=mr01; t=1777312147; x=1779904148; bh=e5xGL6uuaBWKPAdTLOXHgJTj
 IoGjalBU+LWxzeOThBE=; b=VIwe69iVjaKbhV9y9+rFhoOgu5M5RDZHBlNEplZn
 t67cBueXiJILqt5oa/qUyCKlqRsqB8pDp621gVdwkgxOPCw0VkMGuPFp+Pp6cSBJ
 Gg8FO5+MTL/RBAWIfeN22HTJHbj+3xKdnj7XE1RAAfddugwC+9umH1K4P8Rc3CFX
 aurjyidMeZUsw9I6FEL14En21eEyfJ5r4zw+WWOqIuy+05mNnyc7jGE6BC17Jojz
 ZOeQV8M0In4f/yp/RhGdRJUfabgAfoEOiOuUBxPca8ICxzTe2PWvdTuKEvRKFhNP
 wh9WyMCUdvp1HydeUewlFuH5/Ht/dVIbF7k3RHrIX45M9g==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=acm.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=acm.org header.i=@acm.org header.a=rsa-sha256
 header.s=mr01 header.b=VIwe69iV
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v4] ice: fix locking in
 ice_dcb_rebuild()
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
From: Bart Van Assche via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Bart Van Assche <bvanassche@acm.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: B42A2477F52
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.21 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	HAS_REPLYTO(0.00)[bvanassche@acm.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]

On 3/20/26 2:28 PM, Bart Van Assche wrote:
> Move the mutex_lock() call up to prevent that DCB settings change after
> the first ice_query_port_ets() call. The second ice_query_port_ets()
> call in ice_dcb_rebuild() is already protected by pf->tc_mutex.
> 
> This also fixes a bug in an error path, as before taking the first
> "goto dcb_error" in the function jumped over mutex_lock() to
> mutex_unlock().
> 
> This bug has been detected by the clang thread-safety analyzer.
> 
> Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org
> Fixes: 242b5e068b25 ("ice: Fix DCB rebuild after reset")
> Signed-off-by: Bart Van Assche <bvanassche@acm.org>
> ---
> 
> v4 (this patch): Changed "[PATCH] iwl-net:" into "[PATCH iwl-net]".
> 
> v3 (2026-03-20): Modified patch description. See also
>    https://lore.kernel.org/all/20260223220102.2158611-20-bart.vanassche@linux.dev/#t
> 
> v2 (2026-02-23): Combined the two patches into one patch and
>    increased the amount of code covered by tc_mutex. See also
>    https://lore.kernel.org/all/20260223220102.2158611-20-bart.vanassche@linux.dev/
> 
> v1 (2025-02-06): Two patches. See also
>    https://lore.kernel.org/all/20250206175114.1974171-16-bvanassche@acm.org/
> 
>   drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
> index bd77f1c001ee..78ded6876581 100644
> --- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
> @@ -537,14 +537,14 @@ void ice_dcb_rebuild(struct ice_pf *pf)
>   	struct ice_dcbx_cfg *err_cfg;
>   	int ret;
>   
> +	mutex_lock(&pf->tc_mutex);
> +
>   	ret = ice_query_port_ets(pf->hw.port_info, &buf, sizeof(buf), NULL);
>   	if (ret) {
>   		dev_err(dev, "Query Port ETS failed\n");
>   		goto dcb_error;
>   	}
>   
> -	mutex_lock(&pf->tc_mutex);
> -
>   	if (!pf->hw.port_info->qos_cfg.is_sw_lldp)
>   		ice_cfg_etsrec_defaults(pf->hw.port_info);
>   

Hi Tony,

It seems like this patch has not made it into Linux kernel v7.1-rc. Do
you agree that this patch is ready to be merged? I checked that it still
applies to Linus' master branch.

Thanks,

Bart.
