Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B04F995F4D2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Aug 2024 17:13:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4E0C860794;
	Mon, 26 Aug 2024 15:13:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7oqZmT83wZmd; Mon, 26 Aug 2024 15:13:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A891160786
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724685196;
	bh=ZlqsWviY6SbceThz+ITeQZl5YJfFTLdrn1JLlvlRAwk=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=23Unrgh040mt47lGflwSnQqGiXjFJKcJkULaG15nQ4C10ywlF6qxUF7osCdb1dUy0
	 bTPxvOJJl3rXa9VZE6p2o9F4kBzgxdr13oJdDmvyiBXdpc7/FkilDUeWAdIngOgTwV
	 3Yxli0jxYgfUOZ48ScnxUrjjF9PiRoFj57Xqulyt2UgPZ5HxmLWq+DNRwLcPtq9w6A
	 0e7OyEXWAD2alenbDQzyr1n/t7iRN79UjP7KP9DzdPIdOJsHXY42kf4qUiO5Us2piW
	 oJZTp/ynGt4qHC8ie3fOJ9qqxUvQ+TJjs/bjvSjULHtM97NxAWdTsakiLBrr9fCuWp
	 l8mI9bRQxNveA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A891160786;
	Mon, 26 Aug 2024 15:13:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5E7351BF31E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2024 10:17:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4B4CF401E8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2024 10:17:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8qcSd7HusBoB for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Aug 2024 10:17:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a07:de40:b251:101:10:150:64:1; helo=smtp-out1.suse.de;
 envelope-from=tbogendoerfer@suse.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4D1A2401E1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4D1A2401E1
Received: from smtp-out1.suse.de (smtp-out1.suse.de
 [IPv6:2a07:de40:b251:101:10:150:64:1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4D1A2401E1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2024 10:17:18 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 1C4BB21AAB;
 Mon, 26 Aug 2024 10:17:16 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id DB1A513724;
 Mon, 26 Aug 2024 10:17:15 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id eMF7NCtWzGbFfgAAD6G6ig
 (envelope-from <tbogendoerfer@suse.de>); Mon, 26 Aug 2024 10:17:15 +0000
Date: Mon, 26 Aug 2024 12:17:10 +0200
From: Thomas Bogendoerfer <tbogendoerfer@suse.de>
To: Jiri Pirko <jiri@resnulli.us>
Message-ID: <20240826121710.7fcd856e@samweis>
In-Reply-To: <ZsxNv6jN5hld7jYl@nanopsycho.orion>
References: <20240826085830.28136-1-tbogendoerfer@suse.de>
 <ZsxNv6jN5hld7jYl@nanopsycho.orion>
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.34; x86_64-suse-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-3.79 / 50.00]; BAYES_HAM(-3.00)[99.99%];
 NEURAL_HAM_LONG(-1.00)[-1.000]; MID_RHS_NOT_FQDN(0.50)[];
 NEURAL_HAM_SHORT(-0.19)[-0.969]; MIME_GOOD(-0.10)[text/plain];
 FUZZY_BLOCKED(0.00)[rspamd.com]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 ARC_NA(0.00)[];
 DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
 FROM_HAS_DN(0.00)[]; RCVD_TLS_ALL(0.00)[];
 RCVD_VIA_SMTP_AUTH(0.00)[]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+]; RCVD_COUNT_TWO(0.00)[2];
 RCPT_COUNT_SEVEN(0.00)[10]; TO_DN_SOME(0.00)[]
X-Mailman-Approved-At: Mon, 26 Aug 2024 15:13:12 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=suse.de; s=susede2_rsa; 
 t=1724667436; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ZlqsWviY6SbceThz+ITeQZl5YJfFTLdrn1JLlvlRAwk=;
 b=p/atFNu6uZCulZsmXvs8qulhJ4+BsK7WCwO/hIdnW0quJNDWVq7qlNYaUtOt61CtRuJfVh
 UZVuxNVcCjXEDtXOaRNNu71dnxPAMXsZL8o7s2ARGwyMNhjgV4py60Igp/sook7gxxasEt
 YRwmjXJRplojAl6vlSlZZHepMOCxwyw=
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=suse.de; s=susede2_ed25519; t=1724667436;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ZlqsWviY6SbceThz+ITeQZl5YJfFTLdrn1JLlvlRAwk=;
 b=icregVG+aVtPac08LDn8CUAddwuYM/MxDH3o9KKcXaORSNoSpfH05fAdd5Exxq0TI4QjP7
 mcZaY9SD+AnCC3DA==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=suse.de; s=susede2_rsa; 
 t=1724667436; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ZlqsWviY6SbceThz+ITeQZl5YJfFTLdrn1JLlvlRAwk=;
 b=p/atFNu6uZCulZsmXvs8qulhJ4+BsK7WCwO/hIdnW0quJNDWVq7qlNYaUtOt61CtRuJfVh
 UZVuxNVcCjXEDtXOaRNNu71dnxPAMXsZL8o7s2ARGwyMNhjgV4py60Igp/sook7gxxasEt
 YRwmjXJRplojAl6vlSlZZHepMOCxwyw=
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=suse.de; s=susede2_ed25519; t=1724667436;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ZlqsWviY6SbceThz+ITeQZl5YJfFTLdrn1JLlvlRAwk=;
 b=icregVG+aVtPac08LDn8CUAddwuYM/MxDH3o9KKcXaORSNoSpfH05fAdd5Exxq0TI4QjP7
 mcZaY9SD+AnCC3DA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=suse.de
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key, unprotected) header.d=suse.de header.i=@suse.de
 header.a=rsa-sha256 header.s=susede2_rsa header.b=p/atFNu6; 
 dkim=pass header.d=suse.de header.i=@suse.de header.a=ed25519-sha256
 header.s=susede2_ed25519 header.b=icregVG+; 
 dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de
 header.a=rsa-sha256 header.s=susede2_rsa header.b=p/atFNu6; 
 dkim=neutral header.d=suse.de header.i=@suse.de header.a=ed25519-sha256
 header.s=susede2_ed25519 header.b=icregVG+
X-Mailman-Original-Authentication-Results: smtp-out1.suse.de;
	none
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Fix NULL pointer access,
 if PF doesn't support SRIOV_LAG
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 26 Aug 2024 11:41:19 +0200
Jiri Pirko <jiri@resnulli.us> wrote:

> Mon, Aug 26, 2024 at 10:58:30AM CEST, tbogendoerfer@suse.de wrote:
> >For PFs, which don't support SRIOV_LAG, there is no pf->lag struct
> >allocated. So before accessing pf->lag a NULL pointer check is needed.
> >
> >Signed-off-by: Thomas Bogendoerfer <tbogendoerfer@suse.de> =20
>=20
> You need to add a "fixes" tag blaming the commit that introduced the
> bug.

of course...

Fixes: 1e0f9881ef79 ("ice: Flesh out implementation of support for SRIOV on
bonded interface")

Should I resend the patch ?

Thomas.

--=20
SUSE Software Solutions Germany GmbH
HRB 36809 (AG N=C3=BCrnberg)
Gesch=C3=A4ftsf=C3=BChrer: Ivo Totev, Andrew McDonald, Werner Knoblich
