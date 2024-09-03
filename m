Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FA3C96AA84
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Sep 2024 23:44:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CBD32607C1;
	Tue,  3 Sep 2024 21:44:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Nn7idknr5b5B; Tue,  3 Sep 2024 21:44:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 95400607F8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725399845;
	bh=wQ2Z4c48ce6CUlKYTbl197VdpIjkeOTW1y7Y+4S08+Y=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lNbSosMGIR6+Y/ZTe1SBK7AAdutHCJNJ2aN4N1+qUTFrYiKpCJvJYS95EqvWUhgBt
	 7JqXoslY8WWWrZdMII1t5EtpiH+1lmc4R7BJPF0rSPG5evH2Ng2+wTD7G3Aqi6JgjQ
	 khkj4iWR9OqntzM6xTTGUOEl7bz46Sup7CoHqfPEjve0XAQxYUBZbDSQHxDN6Zt//1
	 nmrS9uQLfyE5Hf7ePv+B0EiAhbE5xT95di2tlCUkFqK58Uog7GJORT4JAcB8jn8Pgu
	 HnP3WcqZPafvWzki/ktsYP2bg+VFun2wSahJhCBPY01v3qxrVJO1NXJH+8GQEjstZc
	 7ousRnPE74xFQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 95400607F8;
	Tue,  3 Sep 2024 21:44:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2EB511BF95D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2024 21:44:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4D51F607CF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2024 21:44:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bn8k7HmU1Zu0 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Sep 2024 21:44:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a07:de40:b251:101:10:150:64:1; helo=smtp-out1.suse.de;
 envelope-from=tbogendoerfer@suse.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4BBAD60824
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4BBAD60824
Received: from smtp-out1.suse.de (smtp-out1.suse.de
 [IPv6:2a07:de40:b251:101:10:150:64:1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4BBAD60824
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2024 21:44:02 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 0649321B8F;
 Tue,  3 Sep 2024 21:44:00 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id BEFD4139D5;
 Tue,  3 Sep 2024 21:43:59 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id +ACvLR+D12YrVQAAD6G6ig
 (envelope-from <tbogendoerfer@suse.de>); Tue, 03 Sep 2024 21:43:59 +0000
Date: Tue, 3 Sep 2024 23:43:43 +0200
From: Thomas Bogendoerfer <tbogendoerfer@suse.de>
To: "Ertman, David M" <david.m.ertman@intel.com>
Message-ID: <20240903234343.5c17f735@samweis>
In-Reply-To: <IA1PR11MB61942396759BA7F1C20BA41BDD972@IA1PR11MB6194.namprd11.prod.outlook.com>
References: <20240826085830.28136-1-tbogendoerfer@suse.de>
 <ZsxNv6jN5hld7jYl@nanopsycho.orion>
 <20240826121710.7fcd856e@samweis>
 <362dd93c-8176-4c46-878d-dd0e1b897468@intel.com>
 <20240827211224.0d172e40@samweis>
 <IA1PR11MB61942396759BA7F1C20BA41BDD972@IA1PR11MB6194.namprd11.prod.outlook.com>
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.34; x86_64-suse-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-3.80 / 50.00]; BAYES_HAM(-3.00)[100.00%];
 NEURAL_HAM_LONG(-1.00)[-1.000]; MID_RHS_NOT_FQDN(0.50)[];
 NEURAL_HAM_SHORT(-0.20)[-0.991]; MIME_GOOD(-0.10)[text/plain];
 RCPT_COUNT_SEVEN(0.00)[11]; RCVD_VIA_SMTP_AUTH(0.00)[];
 TO_DN_EQ_ADDR_SOME(0.00)[]; MIME_TRACE(0.00)[0:+];
 ARC_NA(0.00)[]; RCVD_TLS_ALL(0.00)[];
 DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
 FUZZY_BLOCKED(0.00)[rspamd.com]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; FROM_EQ_ENVFROM(0.00)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; RCVD_COUNT_TWO(0.00)[2];
 DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:email]
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=suse.de; s=susede2_rsa; 
 t=1725399840; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=wQ2Z4c48ce6CUlKYTbl197VdpIjkeOTW1y7Y+4S08+Y=;
 b=SsT6LKFBNSYyVy1SRGdkIMGkpkqjvNAUdiJNhSuADZP4A7FX6wbV7nXa7hgGYM/G2CfRZL
 aYYAkH8JdI13xXs/Wgue9ALsX3AqzFdnv2AC5REUErU0Fl6XsBr1bxxCuEwvRfcUypZoLc
 lIJYdJnoSuafTYhDtBaGNvYUpEUrF4A=
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=suse.de; s=susede2_ed25519; t=1725399840;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=wQ2Z4c48ce6CUlKYTbl197VdpIjkeOTW1y7Y+4S08+Y=;
 b=aqDegjFQE/6/6LwQNwSM4FgpCF7XB9hSy+vHMJzGrpZkpPquFO9A2ee3+qMb9tq2Rajqqa
 xZOsLzfz47HRTvBw==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=suse.de; s=susede2_rsa; 
 t=1725399840; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=wQ2Z4c48ce6CUlKYTbl197VdpIjkeOTW1y7Y+4S08+Y=;
 b=SsT6LKFBNSYyVy1SRGdkIMGkpkqjvNAUdiJNhSuADZP4A7FX6wbV7nXa7hgGYM/G2CfRZL
 aYYAkH8JdI13xXs/Wgue9ALsX3AqzFdnv2AC5REUErU0Fl6XsBr1bxxCuEwvRfcUypZoLc
 lIJYdJnoSuafTYhDtBaGNvYUpEUrF4A=
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=suse.de; s=susede2_ed25519; t=1725399840;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=wQ2Z4c48ce6CUlKYTbl197VdpIjkeOTW1y7Y+4S08+Y=;
 b=aqDegjFQE/6/6LwQNwSM4FgpCF7XB9hSy+vHMJzGrpZkpPquFO9A2ee3+qMb9tq2Rajqqa
 xZOsLzfz47HRTvBw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=suse.de
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key, unprotected) header.d=suse.de header.i=@suse.de
 header.a=rsa-sha256 header.s=susede2_rsa header.b=SsT6LKFB; 
 dkim=pass header.d=suse.de header.i=@suse.de header.a=ed25519-sha256
 header.s=susede2_ed25519 header.b=aqDegjFQ; 
 dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de
 header.a=rsa-sha256 header.s=susede2_rsa header.b=SsT6LKFB; 
 dkim=neutral header.d=suse.de header.i=@suse.de header.a=ed25519-sha256
 header.s=susede2_ed25519 header.b=aqDegjFQ
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
Cc: Jiri Pirko <jiri@resnulli.us>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony
 L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 30 Aug 2024 17:12:56 +0000
"Ertman, David M" <david.m.ertman@intel.com> wrote:

> > -----Original Message-----
> > From: Thomas Bogendoerfer <tbogendoerfer@suse.de>
> > Sent: Tuesday, August 27, 2024 12:12 PM
> > To: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> > Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; David S. Miller
> > <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>; Jakub
> > Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; intel-
> > wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
> > kernel@vger.kernel.org; Ertman, David M <david.m.ertman@intel.com>; Jiri
> > Pirko <jiri@resnulli.us>
> > Subject: Re: [PATCH net] ice: Fix NULL pointer access, if PF doesn't su=
pport
> > SRIOV_LAG
> >=20
> > On Tue, 27 Aug 2024 09:16:51 +0200
> > Przemek Kitszel <przemyslaw.kitszel@intel.com> wrote:
> >  =20
> > > On 8/26/24 12:17, Thomas Bogendoerfer wrote: =20
> > > > On Mon, 26 Aug 2024 11:41:19 +0200
> > > > Jiri Pirko <jiri@resnulli.us> wrote:
> > > > =20
> > > >> Mon, Aug 26, 2024 at 10:58:30AM CEST, tbogendoerfer@suse.de wrote:=
 =20
> > > >>> For PFs, which don't support SRIOV_LAG, there is no pf->lag struct
> > > >>> allocated. So before accessing pf->lag a NULL pointer check is ne=
eded.
> > > >>>
> > > >>> Signed-off-by: Thomas Bogendoerfer <tbogendoerfer@suse.de> =20
> > > >>
> > > >> You need to add a "fixes" tag blaming the commit that introduced t=
he
> > > >> bug. =20
> > >
> > > Would be also good to CC the author. =20
> >=20
> > sure, I'm using get_maintainer for building address line and looks
> > like it only adds the author, if there is a Fixes tag, which IMHO
> > makes more sense than mailing all possible authors of file (in this
> > case it would work, but there are other files).
> >  =20
> > > > Fixes: 1e0f9881ef79 ("ice: Flesh out implementation of support for
> > > > SRIOV on bonded interface") =20
> > >
> > > the bug was introduced later, the tag should be:
> > > Fixes: ec5a6c5f79ed ("ice: process events created by lag netdev event
> > > handler") =20
> >=20
> > I'd like to disagree, ec5a6c5f79ed adds an empty
> > ice_lag_move_new_vf_nodes(),
> > which will do no harm if pf->lag is NULL. Commit 1e0f9881ef79 introduces
> > the access to pf->lag without checking for NULL. =20
> > >
> > > The mentioned commit extracted code into =20
> > ice_lag_move_new_vf_nodes(), =20
> > > and there is just one call to this function by now, just after
> > > releasing lag_mutex, so would be good to change the semantics of
> > > ice_lag_move_new_vf_nodes() to "only for lag-enabled flows, with
> > > lag_mutex held", and fix the call to it to reflect that. =20
> >=20
> > I could do that for sure, but IMHO this is about fixing a bug,
> > which crashes the kernel. Making the code better should be done
> > after fixing. =20
>=20
> Thomas,
>=20
> Nice catch!
>=20
> I looked into this a bit and it seems that when I sent in patch:
> commit 9f74a3dfcf83 ("ice: Fix VF Reset paths when interface in a failed =
over aggregate)
>=20
> I left in a spurious call to the previous function for moving nodes. Sinc=
e it is
> just in the error path it went unnoticed this long.
>=20
> Since this is the only call to ice_lag_move_new_vf_nodes(), it seems that
> proper way of fixing this would be to eliminate the spurious call and the=
 function
> definition entirely.
>=20
> If you do no want to do this, I can volunteer to write the patch.

either way is fine. But shouldn't the fix alone just applied first ?
Who will pick it up ?

Thomas.

--=20
SUSE Software Solutions Germany GmbH
HRB 36809 (AG N=C3=BCrnberg)
Gesch=C3=A4ftsf=C3=BChrer: Ivo Totev, Andrew McDonald, Werner Knoblich
