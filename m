Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wDdMJUPlummdcwIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 18:47:47 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A8F02C0907
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 18:47:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B8E5060784;
	Wed, 18 Mar 2026 17:47:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eMZN098Sc_uO; Wed, 18 Mar 2026 17:47:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3939960BAC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773856064;
	bh=5hNKCWgX96sgR6zjiwj8uC7SyiqM+Qdw0bwirpBOYpc=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LhMKLcRYI4CDynuuZRsUTQaJZPCgG8ThklEdBNrSVgP8mL8gi+C1ih6S/z2K+Xv/C
	 iHp+ktuhiPNZLw7GwLBh1hZIJLm9Ze9yIoC7/1Mi0vSxQ8FSrkevlKCdQaPKnQ8kmq
	 Uo/6S/k5sScwhDkJUuTHRyHSwIRSLTxgWluEtM3eY3pSeESnKI/vySGJec3A1KBh+L
	 LLU56v1e0sNjRT3HndR/S/MJWvn89AOE5eSNm/IzeIwNLMqWe1C9fu6ez7otWdEH9t
	 7u6CTusPVdt6pROy/T3YJ1RyupKkfN454LoayMziOs74p661k1NC1pXnQmQ43IzAUH
	 oc4afyANv0luQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3939960BAC;
	Wed, 18 Mar 2026 17:47:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id CEC091AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 17:47:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C098182278
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 17:47:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FaFgkQQjqtJf for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Mar 2026 17:47:42 +0000 (UTC)
X-Greylist: delayed 466 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 18 Mar 2026 17:47:41 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9EA6581886
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9EA6581886
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2001:41b8:202:deb::311:108; helo=stravinsky.debian.org;
 envelope-from=leitao@debian.org; receiver=<UNKNOWN> 
Received: from stravinsky.debian.org (stravinsky.debian.org
 [IPv6:2001:41b8:202:deb::311:108])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9EA6581886
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 17:47:41 +0000 (UTC)
Received: from authenticated user by stravinsky.debian.org with esmtpsa
 (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.94.2) (envelope-from <leitao@debian.org>)
 id 1w2uro-003pAQ-2W; Wed, 18 Mar 2026 17:39:34 +0000
Date: Wed, 18 Mar 2026 10:39:27 -0700
From: Breno Leitao <leitao@debian.org>
To: Guangshuo Li <lgs201920130244@gmail.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>, 
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Piotr Raczynski <piotr.raczynski@intel.com>, 
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
Message-ID: <abrjCmR_ivMRY6KJ@gmail.com>
References: <20260318151028.634828-1-lgs201920130244@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260318151028.634828-1-lgs201920130244@gmail.com>
X-Debian-User: leitao
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=debian.org; 
 s=smtpauto.stravinsky; h=X-Debian-User:In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=5hNKCWgX96sgR6zjiwj8uC7SyiqM+Qdw0bwirpBOYpc=; b=NWUS6RxmSfSu3uQi2YURo3VhoQ
 DZTzs6tv5kmMS4eLx8ORFN5e9Bt+Z2Ch1+YmhToKDPYxeOwE1W8K7FOFeubzWdWJX9I4NjaRsxC2f
 gufuanabSwF9JoS9MVXMTFWNpRH2qn7FzgqTQwyReP1Qo7tJCXmdAq4PmNX0U1X49BQ9v+gTdCeyX
 sjEl94m/iskIweupFLWo1Ntl5bYwwo57fssFaGDVYn9snS2JP2DImZz7vJ8WxkGge+x6ST/poml0r
 21KmkL9AJNCoLhYpKMe7mPp8qpJ8frlH2/eD93H+W6mbimkVUTsSzcwPTv09jsISH6ILc9iGmw6r+
 T2oqNRPA==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=debian.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=debian.org header.i=@debian.org header.a=rsa-sha256
 header.s=smtpauto.stravinsky header.b=NWUS6Rxm
Subject: Re: [Intel-wired-lan] [PATCH] ice: fix double free in
 ice_sf_eth_activate() error path
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_MATCH_TO(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:lgs201920130244@gmail.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:michal.swiatkowski@linux.intel.com,m:piotr.raczynski@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	DMARC_NA(0.00)[debian.org];
	FORGED_SENDER(0.00)[leitao@debian.org,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[leitao@debian.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 6A8F02C0907
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 18, 2026 at 11:10:28PM +0800, Guangshuo Li wrote:
> When auxiliary_device_add() fails, ice_sf_eth_activate() jumps to
> aux_dev_uninit and calls auxiliary_device_uninit(&sf_dev->adev).
> 
> The device release callback ice_sf_dev_release() frees sf_dev, but
> the current error path falls through to sf_dev_free and calls
> kfree(sf_dev) again, causing a double free.
> 
> Keep kfree(sf_dev) for the auxiliary_device_init() failure path, but
> avoid falling through to sf_dev_free after auxiliary_device_uninit().
> 
> Fixes: 13acc5c4cdbe ("ice: subfunction activation and base devlink ops")
> Cc: stable@vger.kernel.org
> Signed-off-by: Guangshuo Li <lgs201920130244@gmail.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_sf_eth.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_sf_eth.c b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
> index 1a2c94375ca7..ec6020338b9f 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sf_eth.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
> @@ -305,6 +305,7 @@ ice_sf_eth_activate(struct ice_dynamic_port *dyn_port,
>  
>  aux_dev_uninit:
>  	auxiliary_device_uninit(&sf_dev->adev);
> +	goto xa_erase;

Do you want to xa_erase?

Isn't ice_sf_dev_release() doing the xa_erase already on put_device()
path?
