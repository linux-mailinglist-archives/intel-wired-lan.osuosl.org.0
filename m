Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6JA+EbzSnmnwXQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Feb 2026 11:45:16 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 50F60195F68
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Feb 2026 11:45:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 04F8160FA9;
	Wed, 25 Feb 2026 10:45:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 57OE7b-7_53V; Wed, 25 Feb 2026 10:45:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 78EA860FBE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772016313;
	bh=UtxTdtDEUqvw7hPygrSf04ZO5SJeSMm1X0OUZmtpR0A=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=EXoQqS5jxECaFsteSHZzwaBnfOxuzEfEoyr7Bdy9Eh0AOBmcUavUGP7lqTQM6zPc2
	 W1xVqSmZsINLuOMwUUTTFzrx7IDdjUSfSrTD5CVSwUHex7iDPMJ9oHG6uwOr5KGTaU
	 122W3OQrz5Cxg4CydobRFjMVF7ta4+BQNbsqQe5C82sEoqqCk8bKr53FeUz7Bmy4CU
	 7fPxt3Ax1jILj7bZplx6L1IG79Dr1KdrH6zPTbmORFUXR3UyEo/+jKhhPxMbkIhNpB
	 I1RguYYKnhEDNUjgUds5PXUrAJPUUpN8Gk9LSg4h30ZtK0gCIccTUIHya3bsp52+np
	 ZdjEuZt9BBqFg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 78EA860FBE;
	Wed, 25 Feb 2026 10:45:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id A05FC204
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 10:45:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9DE8783E39
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 10:45:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 04anGuRivX-Z for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Feb 2026 10:45:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 179D3846B0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 179D3846B0
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 179D3846B0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 10:45:08 +0000 (UTC)
Received: from [172.18.249.96] (ip-185-104-138-144.ptr.icomera.net
 [185.104.138.144])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 6E8484C2C37D48;
 Wed, 25 Feb 2026 11:44:53 +0100 (CET)
Message-ID: <4720c31a-bf3a-445c-821a-a702fb650a6e@molgen.mpg.de>
Date: Wed, 25 Feb 2026 11:44:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Natalia Wochtman <natalia.wochtman@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, aleksandr.loktionov@intel.com,
 netdev@vger.kernel.org, przemyslaw.kitszel@intel.com
References: <20260225090236.187255-1-natalia.wochtman@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20260225090236.187255-1-natalia.wochtman@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ice: remove redundant
 checks from PTP init
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim];
	FORGED_RECIPIENTS(0.00)[m:natalia.wochtman@intel.com,m:aleksandr.loktionov@intel.com,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,s:lists@lfdr.de];
	DMARC_NA(0.00)[mpg.de];
	FORGED_SENDER(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 50F60195F68
X-Rspamd-Action: no action

Dear Natalia,


Thank you for the patch.

Am 25.02.26 um 10:02 schrieb Natalia Wochtman:
> Remove unnecessary condition checks in
> ice_ptp_setup_adapter() and ice_ptp_init().
> They are duplicated in ice_pf_src_tmr_owned().

Using 75 characters per line, the above would fit in two lines.

> Change ice_ptp_setup_adapter() to return void.
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Natalia Wochtman <natalia.wochtman@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_ptp.c | 14 ++++----------
>   1 file changed, 4 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
> index d8fd01fa617b..2b26024de888 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> @@ -3065,14 +3065,9 @@ void ice_ptp_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
>   	dev_err(ice_pf_to_dev(pf), "PTP reset failed %d\n", err);
>   }
>   
> -static int ice_ptp_setup_adapter(struct ice_pf *pf)
> +static void ice_ptp_setup_adapter(struct ice_pf *pf)
>   {
> -	if (!ice_pf_src_tmr_owned(pf) || !ice_is_primary(&pf->hw))
> -		return -EPERM;
> -
>   	pf->adapter->ctrl_pf = pf;
> -
> -	return 0;
>   }
>   
>   static int ice_ptp_setup_pf(struct ice_pf *pf)
> @@ -3315,10 +3310,9 @@ void ice_ptp_init(struct ice_pf *pf)
>   	/* If this function owns the clock hardware, it must allocate and
>   	 * configure the PTP clock device to represent it.
>   	 */
> -	if (ice_pf_src_tmr_owned(pf) && ice_is_primary(hw)) {
> -		err = ice_ptp_setup_adapter(pf);
> -		if (err)
> -			goto err_exit;
> +	if (ice_pf_src_tmr_owned(pf)) {
> +		ice_ptp_setup_adapter(pf);

As the checks were duplicated, this branch was never taken, and 
therefore err was never set? Is that your argument?

Did the compiler notice this redundancy, and is different code generated 
now?

> +
>   		err = ice_ptp_init_owner(pf);
>   		if (err)
>   			goto err_exit;


Kind regards,

Paul
