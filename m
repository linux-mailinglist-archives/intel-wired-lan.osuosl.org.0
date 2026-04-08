Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WA7/A5WO1mliGQgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 19:21:25 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E39CE3BF681
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 19:21:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DB72E6081E;
	Wed,  8 Apr 2026 17:21:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YJTnmgHy-3yQ; Wed,  8 Apr 2026 17:21:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 516C960A67
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775668881;
	bh=EMN26tcri+A6pAuNyMm6CoIV/LzpguMlQrW8dtZlQSY=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=00vFd2nNq2hVFkPEmNtJI3dntTeRVaNMtDWT0Ao0/ZnggHNr0AIOjEY9VuTSDAebx
	 5EZ85UP+rKF9aCk/qWSMWLZ0uPn/shIqozUpcY5eZUGazaGgmesFN2cQy/2ZaW3jN9
	 z3PUwyEkjnqIKNI4Kzrk68VpGAroxtoe4yCmw9gPQplSIw5MlAWCDvuY7+NNEcPSzp
	 A3padn3eJj4naEKjSOeh06JsRi6dE4IhvCDv3vTGnwisyYn6FlMtgyjx2pGzg+k7Tf
	 LgXNSMYLdpDTudQbVF6yaMs2kPVtbMs9esDoTkGOmSbPOduTTGyljdK0yqLIeAkRtk
	 K4b3LqIxNfFVg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 516C960A67;
	Wed,  8 Apr 2026 17:21:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 54E351F6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 17:21:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 376B640377
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 17:21:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2CnkItRbr8vf for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Apr 2026 17:21:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 28E4A40054
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 28E4A40054
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 28E4A40054
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 17:21:16 +0000 (UTC)
Received: from [192.168.2.229] (p5dc55707.dip0.t-ipconnect.de [93.197.87.7])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 7DA944C2C37D60;
 Wed, 08 Apr 2026 19:20:53 +0200 (CEST)
Message-ID: <d2a40b73-2019-479d-9eb0-3a0e9c440659@molgen.mpg.de>
Date: Wed, 8 Apr 2026 19:20:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, Paul Greenwalt <paul.greenwalt@intel.com>,
 Simon Horman <horms@kernel.org>
References: <20260408141105.2781683-1-aleksandr.loktionov@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20260408141105.2781683-1-aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: fix ice_init_link() error
 return preventing probe
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
X-Spamd-Result: default: False [-0.71 / 15.00];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:paul.greenwalt@intel.com,m:horms@kernel.org,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,molgen.mpg.de:mid,osuosl.org:dkim];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[mpg.de];
	FORGED_SENDER(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: E39CE3BF681
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Dear Aleksandr, dear Paul,


Thank you for the patch.

Am 08.04.26 um 16:11 schrieb Aleksandr Loktionov:
> From: Paul Greenwalt <paul.greenwalt@intel.com>
> 
> ice_init_link() can return an error status from ice_update_link_info()
> or ice_init_phy_user_cfg(), causing probe to fail.
> 
> An incorrect NVM update procedure can result in link/PHY errors, and
> the recommended resolution is to update the NVM using the correct
> procedure. If the driver fails probe due to link errors, the user
> cannot update the NVM to recover. The link/PHY errors logged are
> non-fatal: they are already annotated as 'not a fatal error if this
> fails'.
> 
> Since none of the errors inside ice_init_link() should prevent probe
> from completing, convert it to void and remove the error check in the
> caller. All failures are already logged; callers have no meaningful
> recovery path for link init errors.

Do you have a way to force the error path?

> Fixes: 5b246e533d01 ("ice: split probe into smaller functions")
> Cc: stable@vger.kernel.org
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> ---
> v1 -> v2:
>   - Rename the now-unused goto label err_init_link to err_deinit_pf_sw
>     to better describe the cleanup it performs (Simon Horman).
> 
>   drivers/net/ethernet/intel/ice/ice_main.c | 16 +++++-----------
>   1 file changed, 5 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index cf116bb..a6b0c09 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -4856,16 +4856,14 @@ static void ice_init_wakeup(struct ice_pf *pf)
>   	device_set_wakeup_enable(ice_pf_to_dev(pf), false);
>   }
>   
> -static int ice_init_link(struct ice_pf *pf)
> +static void ice_init_link(struct ice_pf *pf)
>   {
>   	struct device *dev = ice_pf_to_dev(pf);
>   	int err;
>   
>   	err = ice_init_link_events(pf->hw.port_info);
> -	if (err) {
> +	if (err)
>   		dev_err(dev, "ice_init_link_events failed: %d\n", err);
> -		return err;
> -	}
>   
>   	/* not a fatal error if this fails */
>   	err = ice_init_nvm_phy_type(pf->hw.port_info);
> @@ -4899,8 +4897,6 @@ static int ice_init_link(struct ice_pf *pf)
>   	} else {
>   		set_bit(ICE_FLAG_NO_MEDIA, pf->flags);
>   	}
> -
> -	return err;
>   }
>   
>   static int ice_init_pf_sw(struct ice_pf *pf)
> @@ -5043,11 +5039,9 @@ static int ice_init(struct ice_pf *pf)
>   
>   	ice_init_wakeup(pf);
>   
> -	err = ice_init_link(pf);
> -	if (err)
> -		goto err_init_link;
> +	ice_init_link(pf);
>   
>   	err = ice_send_version(pf);
>   	if (err)
> -		goto err_init_link;
> +		goto err_deinit_pf_sw;
>   
> @@ -5069,7 +5063,7 @@ static int ice_init(struct ice_pf *pf)
>   	return 0;
>   
> -err_init_link:
> +err_deinit_pf_sw:

The renaming of the label could be mentioned in the commit message.

>   	ice_deinit_pf_sw(pf);
>   err_init_pf_sw:
>   	ice_dealloc_vsis(pf);
>   unroll_pf_init:


Kind regards,

Paul
