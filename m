Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eIjUAjkD3mkRmAkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 11:04:57 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A9EB3F7A49
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 11:04:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5A38B42995;
	Tue, 14 Apr 2026 09:04:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wjYk29NIXOMH; Tue, 14 Apr 2026 09:04:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 96FD942991
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776157493;
	bh=DJAxnQ1AZdXITwfi/uqwzh+zlb6HRBFVe8X4hHzfMCM=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2PofvRlGWIaGrHD1TuOisk5n6KE3deqI5537Q5BhNHhGuyB6MCW1vzM0LRwq+MxRq
	 zHfn4aTPILDTSlB9ebbTuvqAytRrbOLdM/wcpnmsyHmCAdhU2Skc8RfuCWHn5BgssE
	 L+XrUSngKDH2gtMlFuNTsPOEPMdtXXlu0DpxYTioeF4s0OCNrqnXP/1hfTOOQ0C8Mh
	 Dxn3+T67abR2XO5xwXxB4fqCrGJkheNk3tUBhLYpj1sBGzKHKTbWuIIX4ufxxcJh0N
	 +D+ZUf1Aw+w/FZNRgE35SQo3Z/rv9RsLnGjP5E0riCkjm1y54aMgSqdfAIaSTY6nYo
	 v1vE55GZd3mRw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 96FD942991;
	Tue, 14 Apr 2026 09:04:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 053B9237
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 09:04:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EB3B64298A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 09:04:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OQjz7qKYnmRo for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Apr 2026 09:04:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org EA5FD42988
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EA5FD42988
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EA5FD42988
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 09:04:50 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id B46D760018;
 Tue, 14 Apr 2026 09:04:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1DE33C19425;
 Tue, 14 Apr 2026 09:04:47 +0000 (UTC)
From: Simon Horman <horms@kernel.org>
To: aleksandr.loktionov@intel.com
Cc: 'Simon Horman' <horms@kernel.org>, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 jacob.e.keller@intel.com
Date: Tue, 14 Apr 2026 10:04:29 +0100
Message-ID: <20260414090429.740296-1-horms@kernel.org>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260410074921.1254213-3-aleksandr.loktionov@intel.com>
References: <20260410074921.1254213-3-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1776157489;
 bh=JJHgXdaywcrs/YUTvzPh7LAar39SbrQoipL1n9cetjs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ISLbYqQm8+XFSWvqFF8bJsv2FSvLP7lQqJ6pE7KBhmhTkL/xe+Mx/hZzBrzdEQqMm
 09rhHRYQlzhJq3rs86UPMOGC85ZZmkvakQgyfceyD7vrhbdmSQ7EaQvCCNvQhXMWos
 Cgyt+ASyoSH6yTOt2V1UHbPN0qUrX0LPu79F6q8YL0QUydIqZNeW3CBoHnQ7wB5k59
 9deCVr3nXEYtOJ6XEPPR2CghU6WuAQ9zqCPlH0P4qX4jY4vW3h+S7B06M902PThK7w
 DAFBAwwlW+VTCGteclFLUz07R1CjRtdK3KGxV2lZ7u7q+G8dCkInnRWmBFuy8y1R98
 I2hvgEwm+uYHg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=ISLbYqQm
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 2/10] ice: allow setting
 advertised speed and duplex for all media types
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
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:jacob.e.keller@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	NEURAL_HAM(-0.00)[-0.996];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_FIVE(0.00)[6];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 1A9EB3F7A49
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: 'Simon Horman' <horms@kernel.org>

This is an AI-generated review of your patch. The human sending this
email has considered the AI review valid, or at least plausible.
Full review at: https://sashiko.dev
---
ice: allow setting advertised speed and duplex for all media types

This commit allows setting advertised speed and duplex for all media types by
only refusing media types NONE or UNKNOWN in strict mode. It adds AUI and NONE
to the ice_media_type enum.

> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> index e6a20af6f63de..62d214c5582ad 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> @@ -2634,10 +2635,14 @@ ice_set_link_ksettings(struct net_device *netdev,
>  	if (!pi)
>  		return -EIO;
>  
> -	if (pi->phy.media_type != ICE_MEDIA_BASET &&
> -	    pi->phy.media_type != ICE_MEDIA_FIBER &&
> -	    pi->phy.media_type != ICE_MEDIA_BACKPLANE &&
> -	    pi->phy.media_type != ICE_MEDIA_DA &&
> +	lenient_mode = test_bit(ICE_FLAG_LINK_LENIENT_MODE_ENA, pf->flags);
> +
> +	/* Setting the speed and duplex advertised by autonegotiation is
> +	 * supported for all media types, so only return unsupported for media
> +	 * type none or unknown in strict mode.
> +	 */
> +	if ((pi->phy.media_type == ICE_MEDIA_NONE ||
> +	     (pi->phy.media_type == ICE_MEDIA_UNKNOWN && !lenient_mode)) &&
>  	    pi->phy.link_info.link_info & ICE_AQ_LINK_UP)
>  		return -EOPNOTSUPP;

Will AUI media types still be rejected here in strict mode?

The patch adds ICE_MEDIA_AUI and ICE_MEDIA_NONE to enum ice_media_type, but
doesn't appear to update ice_get_media_type() to actually return these new
values. 

If AUI media continues to fall through to ICE_MEDIA_UNKNOWN, wouldn't the new
logic still reject it when lenient mode is disabled, defeating the intent of
the patch?

[ ... ]
> @@ -2667,7 +2672,7 @@ ice_set_link_ksettings(struct net_device *netdev,
>  	if (!bitmap_subset(copy_ks.link_modes.advertising,
>  			   safe_ks.link_modes.supported,
>  			   __ETHTOOL_LINK_MODE_MASK_NBITS)) {
> -		if (!test_bit(ICE_FLAG_LINK_LENIENT_MODE_ENA, pf->flags))
> +		if (!lenient_mode)
>  			netdev_info(netdev, "The selected speed is not supported by the current media. Please select a link speed that is supported by the current media.\n");
>  		err = -EOPNOTSUPP;
>  		goto done;

This isn't a bug introduced by this patch, but does taking this error path
accidentally release another thread's lock?

The ICE_CFG_BUSY flag is used as an ad-hoc lock later in this function:

	while (test_and_set_bit(ICE_CFG_BUSY, pf->state)) {
		timeout--;
		if (!timeout) {
			err = -EBUSY;
			goto done;
		}
		usleep_range(TEST_SET_BITS_SLEEP_MIN, TEST_SET_BITS_SLEEP_MAX);
	}

If the bitmap_subset() check fails, or if the while loop times out, it jumps to
the done label:

done:
	kfree(phy_caps);
	clear_bit(ICE_CFG_BUSY, pf->state);

Since the bitmap_subset() check happens before test_and_set_bit() has acquired
the lock, wouldn't this unconditionally clear the ICE_CFG_BUSY flag even if
another thread currently holds it? Could this synchronization be replaced with a
standard lock to avoid these issues?
