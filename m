Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zPGgJFaCKWolYQMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Jun 2026 17:27:18 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 33A1166AC42
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Jun 2026 17:27:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=alsZBMne;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=pass (policy=none) header.from=osuosl.org
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 13A2F81B10;
	Wed, 10 Jun 2026 15:27:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZpnjhSyEVwEf; Wed, 10 Jun 2026 15:27:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 80EA581B14
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781105234;
	bh=Klrgs6S1L7vyN25nRg842jZqnd2p9mAU1kL/Okh4r2g=;
	h=To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=alsZBMne0fIgmnQ5l2kxuaCuLD7LI3lFVx29rh9FCmfyb22tA9iTirfzLLiFeWRTN
	 EfW7LoAfr+kh+cXw95ut6lP48yEN6gpgIYhC1mL4NpmYT/Uli6+WUbIhEn7ilW+s2z
	 9Yw9Am1Ee+qihha0s1gFWJWMiOueoSDk+cW8yojLQo4yesUDaR5gTNkXNQAYhUc5kX
	 1T1vTV8K+SDyQByY1M9UQyyUXKvfKIxSb3Qi1KfZ0zSKquo26xyf9rOme4cL1AwdAe
	 Auht0MzwJ4B/5y8hUxXhKOTLOS6ydFh3/4n2NmmmeaTDTLHsM5mU0baYI4xa1ObloZ
	 0TiAZ9pKUIwww==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 80EA581B14;
	Wed, 10 Jun 2026 15:27:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 7F42D256
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2026 08:47:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 70B7B4025D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2026 08:47:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xwS0RoTnTwfg for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Jun 2026 08:47:02 +0000 (UTC)
X-Greylist: delayed 599 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 10 Jun 2026 08:47:01 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8114B4024B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8114B4024B
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:67c:2050:0:465::101; helo=mout-p-101.mailbox.org;
 envelope-from=manuelebner@mailbox.org; receiver=<UNKNOWN> 
Received: from mout-p-101.mailbox.org (mout-p-101.mailbox.org
 [IPv6:2001:67c:2050:0:465::101])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8114B4024B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2026 08:47:01 +0000 (UTC)
Received: from smtp102.mailbox.org (smtp102.mailbox.org [10.196.197.102])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by mout-p-101.mailbox.org (Postfix) with ESMTPS id 4gZzWZ5yN8z9tr7;
 Wed, 10 Jun 2026 10:31:06 +0200 (CEST)
Message-ID: <c80c7ad9aa48dca8799ed2e76b1628aa7bec92b0.camel@mailbox.org>
To: Markus Elfring <Markus.Elfring@web.de>,
 intel-wired-lan@lists.osuosl.org, 	netdev@vger.kernel.org, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller"	 <davem@davemloft.net>, Eric
 Dumazet <edumazet@google.com>, Jakub Kicinski	 <kuba@kernel.org>, Paolo
 Abeni <pabeni@redhat.com>, Przemek Kitszel	 <przemyslaw.kitszel@intel.com>,
 Shiraz Saleem <shiraz.saleem@intel.com>,  Tony Nguyen
 <anthony.l.nguyen@intel.com>
Cc: LKML <linux-kernel@vger.kernel.org>, kernel-janitors@vger.kernel.org
Date: Wed, 10 Jun 2026 10:30:59 +0200
In-Reply-To: <f0b4e354-9ed7-43f5-8ffe-97019e421c02@web.de>
References: <f0b4e354-9ed7-43f5-8ffe-97019e421c02@web.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MBO-RS-ID: 9bb7a79ae9e476ce094
X-MBO-RS-META: inxwp8m3dr45e16ycngz46gfm9ofxwch
X-Mailman-Approved-At: Wed, 10 Jun 2026 15:27:12 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailbox.org; s=mail20150812; 
 t=1781080266;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Klrgs6S1L7vyN25nRg842jZqnd2p9mAU1kL/Okh4r2g=;
 b=lWvP8vUk+/Yq1piLALsm6ZrhFiE/iK7HqSXmQgTgi4Dpy1HU8z/83dIVf8wKs96VjYHyJ3
 SqCHixavV22sESbcCmwqckKzLsEeuYnFJQu2Uz/KSqUnosc7ezrLnKiFDEuVz8uReoRGf+
 w554SrnIpV3EY2HkBwvcEFPFWG1OiJxAip1KqbUGCizfB/5v7vcruIrI+0fMU/POWYR0Ia
 NTB51AUPmn7rUYGaAr+XAhEqOVvXa/YB0VLmD4yCrt0DLT+tcldvs63gdP4SBUJmsv7BEe
 jpt9DsneikbnvYusyCMr+X3lvVb7uy5ENCkH1r2Np/V77g07FXLi6rMvknOj4w==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=mailbox.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=mailbox.org header.i=@mailbox.org header.a=rsa-sha256
 header.s=mail20150812 header.b=lWvP8vUk
Subject: Re: [Intel-wired-lan] [PATCH net-next] i40e: Use common error
 handling code in i40e_register_auxiliary_dev()
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
From: Manuel Ebner via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Manuel Ebner <manuelebner@mailbox.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:Markus.Elfring@web.de,m:netdev@vger.kernel.org,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:przemyslaw.kitszel@intel.com,m:shiraz.saleem@intel.com,m:anthony.l.nguyen@intel.com,m:linux-kernel@vger.kernel.org,m:kernel-janitors@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[web.de,lists.osuosl.org,vger.kernel.org,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,intel.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mailbox.org:replyto,mailbox.org:mid,smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo];
	DKIM_TRACE(0.00)[osuosl.org:+];
	HAS_REPLYTO(0.00)[manuelebner@mailbox.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 33A1166AC42

On Wed, 2026-06-10 at 10:20 +0200, Markus Elfring wrote:
> From: Markus Elfring <elfring@users.sourceforge.net>
> Date: Wed, 10 Jun 2026 10:02:58 +0200
>=20
> [...]
>=20
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_client.c
> b/drivers/net/ethernet/intel/i40e/i40e_client.c
> index 84a97ca8a6d8..389b8b83afbd 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_client.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_client.c
> @@ -304,15 +304,15 @@ static int i40e_register_auxiliary_dev(struct i40e_=
info *ldev,
> const char *name)
> =C2=A0	ldev->aux_dev =3D aux_dev;
> =C2=A0
> =C2=A0	ret =3D ida_alloc(&i40e_client_ida, GFP_KERNEL);
> -	if (ret < 0) {
> -		kfree(i40e_aux_dev);
> -		return ret;
> -	}
> +	if (ret < 0)
> +		goto free_aux_dev;
> +
> =C2=A0	aux_dev->id =3D ret;
> =C2=A0
> =C2=A0	ret =3D auxiliary_device_init(aux_dev);
> =C2=A0	if (ret < 0) {
> =C2=A0		ida_free(&i40e_client_ida, aux_dev->id);
> +free_aux_dev:
> =C2=A0		kfree(i40e_aux_dev);
> =C2=A0		return ret;
why do you do this? There's no functional change, right?
is it just readability?

Thanks
 Manuel
