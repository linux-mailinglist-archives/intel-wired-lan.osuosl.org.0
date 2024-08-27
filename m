Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36E609617D7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Aug 2024 21:12:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C14094058D;
	Tue, 27 Aug 2024 19:12:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PEB2Xwvvmgio; Tue, 27 Aug 2024 19:12:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8200D40A47
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724785956;
	bh=hV7fAjaizF4vynjkGZ/75HBzKrPuuFVP8PnlSmPIxwk=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UAWIzf3aHw+aqP1EnFUInPZFCAqLOC4psL1PyF3hD2yViXml2biru9WDwW51Qx2u+
	 JCtO4CTropM5vw8IA8QyUANkxTv6BUFsb3VSduYTOma69+EqbOOsRHor539hEQg7TE
	 HFtZryp/wUoItevsSEnzP/cN3mKKNpZbwJL2ze/TC91qM3q0tWpC3ZabbSSI6866Sk
	 W2cuBmC9rzfnSno1cQqtmDcmbm8GLVSmdfUyY5CfUfbDLcQiy+OL4fDje2F5DJE+/O
	 SwIwxbdchWhloB32rKT4HspUATwiUzSuXfUHHVQJ6iwUJd5a/NIPjXABvIP3zT7h04
	 Qdrp/BGom6KkA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8200D40A47;
	Tue, 27 Aug 2024 19:12:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 148911BF2FD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 19:12:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id ED39B60754
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 19:12:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WB5OKPaqA3mJ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Aug 2024 19:12:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a07:de40:b251:101:10:150:64:2; helo=smtp-out2.suse.de;
 envelope-from=tbogendoerfer@suse.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C8E0B60744
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C8E0B60744
Received: from smtp-out2.suse.de (smtp-out2.suse.de
 [IPv6:2a07:de40:b251:101:10:150:64:2])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C8E0B60744
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 19:12:32 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org
 [IPv6:2a07:de40:b281:104:10:150:64:97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id BB53B1FB86;
 Tue, 27 Aug 2024 19:12:29 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 8007813724;
 Tue, 27 Aug 2024 19:12:29 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id GGUBHh0lzmY5agAAD6G6ig
 (envelope-from <tbogendoerfer@suse.de>); Tue, 27 Aug 2024 19:12:29 +0000
Date: Tue, 27 Aug 2024 21:12:24 +0200
From: Thomas Bogendoerfer <tbogendoerfer@suse.de>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <20240827211224.0d172e40@samweis>
In-Reply-To: <362dd93c-8176-4c46-878d-dd0e1b897468@intel.com>
References: <20240826085830.28136-1-tbogendoerfer@suse.de>
 <ZsxNv6jN5hld7jYl@nanopsycho.orion>
 <20240826121710.7fcd856e@samweis>
 <362dd93c-8176-4c46-878d-dd0e1b897468@intel.com>
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.34; x86_64-suse-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: BB53B1FB86
X-Spamd-Result: default: False [-4.01 / 50.00]; BAYES_HAM(-3.00)[100.00%];
 NEURAL_HAM_LONG(-1.00)[-1.000]; MID_RHS_NOT_FQDN(0.50)[];
 R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
 NEURAL_HAM_SHORT(-0.20)[-0.999]; MIME_GOOD(-0.10)[text/plain];
 MX_GOOD(-0.01)[]; FUZZY_BLOCKED(0.00)[rspamd.com];
 RCVD_TLS_ALL(0.00)[]; RCVD_VIA_SMTP_AUTH(0.00)[];
 MIME_TRACE(0.00)[0:+]; ARC_NA(0.00)[];
 RCPT_COUNT_SEVEN(0.00)[11];
 DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; FROM_EQ_ENVFROM(0.00)[];
 RCVD_COUNT_TWO(0.00)[2]; DKIM_TRACE(0.00)[suse.de:+]
X-Rspamd-Server: rspamd2.dmz-prg2.suse.org
X-Rspamd-Action: no action
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=suse.de; s=susede2_rsa; 
 t=1724785949; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=hV7fAjaizF4vynjkGZ/75HBzKrPuuFVP8PnlSmPIxwk=;
 b=X+vPlEneJD0qhFJi2Kx8Xo0qkNOHG3KSuspOC6CMtYIY/+h7F1r9nMfpW8zLROF9taU8S3
 aFE3GHU4Ows4b6yDeZ8jLISne4PhwcqW1DvBEh5zL1nUXMr9oQTk5JQTonU6wi6OP+Gc2Z
 TJ2yYxpbtXWwo53DgMaBtL95IVpEQeQ=
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=suse.de; s=susede2_ed25519; t=1724785949;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=hV7fAjaizF4vynjkGZ/75HBzKrPuuFVP8PnlSmPIxwk=;
 b=siK8oYLjSAiJ9eajPXBKoZORHOIGT3g8kdmV58jc8X/mqGtBMefSgY/j3s81MB0qZYOwDK
 7zSZsaMT5TnT0FAg==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=suse.de; s=susede2_rsa; 
 t=1724785949; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=hV7fAjaizF4vynjkGZ/75HBzKrPuuFVP8PnlSmPIxwk=;
 b=X+vPlEneJD0qhFJi2Kx8Xo0qkNOHG3KSuspOC6CMtYIY/+h7F1r9nMfpW8zLROF9taU8S3
 aFE3GHU4Ows4b6yDeZ8jLISne4PhwcqW1DvBEh5zL1nUXMr9oQTk5JQTonU6wi6OP+Gc2Z
 TJ2yYxpbtXWwo53DgMaBtL95IVpEQeQ=
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=suse.de; s=susede2_ed25519; t=1724785949;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=hV7fAjaizF4vynjkGZ/75HBzKrPuuFVP8PnlSmPIxwk=;
 b=siK8oYLjSAiJ9eajPXBKoZORHOIGT3g8kdmV58jc8X/mqGtBMefSgY/j3s81MB0qZYOwDK
 7zSZsaMT5TnT0FAg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=suse.de
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key, unprotected) header.d=suse.de header.i=@suse.de
 header.a=rsa-sha256 header.s=susede2_rsa header.b=X+vPlEne; 
 dkim=pass header.d=suse.de header.i=@suse.de header.a=ed25519-sha256
 header.s=susede2_ed25519 header.b=siK8oYLj; 
 dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de
 header.a=rsa-sha256 header.s=susede2_rsa header.b=X+vPlEne; 
 dkim=neutral header.d=suse.de header.i=@suse.de header.a=ed25519-sha256
 header.s=susede2_ed25519 header.b=siK8oYLj
X-Mailman-Original-Authentication-Results: smtp-out2.suse.de;
 dkim=pass header.d=suse.de header.s=susede2_rsa header.b=X+vPlEne;
 dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=siK8oYLj
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
Cc: Jiri Pirko <jiri@resnulli.us>, Dave Ertman <david.m.ertman@intel.com>,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 27 Aug 2024 09:16:51 +0200
Przemek Kitszel <przemyslaw.kitszel@intel.com> wrote:

> On 8/26/24 12:17, Thomas Bogendoerfer wrote:
> > On Mon, 26 Aug 2024 11:41:19 +0200
> > Jiri Pirko <jiri@resnulli.us> wrote:
> >  =20
> >> Mon, Aug 26, 2024 at 10:58:30AM CEST, tbogendoerfer@suse.de wrote: =20
> >>> For PFs, which don't support SRIOV_LAG, there is no pf->lag struct
> >>> allocated. So before accessing pf->lag a NULL pointer check is needed.
> >>>
> >>> Signed-off-by: Thomas Bogendoerfer <tbogendoerfer@suse.de> =20
> >>
> >> You need to add a "fixes" tag blaming the commit that introduced the
> >> bug. =20
>=20
> Would be also good to CC the author.

sure, I'm using get_maintainer for building address line and looks
like it only adds the author, if there is a Fixes tag, which IMHO
makes more sense than mailing all possible authors of file (in this
case it would work, but there are other files).

> > Fixes: 1e0f9881ef79 ("ice: Flesh out implementation of support for
> > SRIOV on bonded interface") =20
>=20
> the bug was introduced later, the tag should be:
> Fixes: ec5a6c5f79ed ("ice: process events created by lag netdev event=20
> handler")

I'd like to disagree, ec5a6c5f79ed adds an empty ice_lag_move_new_vf_nodes(=
),
which will do no harm if pf->lag is NULL. Commit 1e0f9881ef79 introduces
the access to pf->lag without checking for NULL.
>=20
> The mentioned commit extracted code into ice_lag_move_new_vf_nodes(),
> and there is just one call to this function by now, just after
> releasing lag_mutex, so would be good to change the semantics of
> ice_lag_move_new_vf_nodes() to "only for lag-enabled flows, with
> lag_mutex held", and fix the call to it to reflect that.

I could do that for sure, but IMHO this is about fixing a bug,
which crashes the kernel. Making the code better should be done
after fixing.

Thomas.

--=20
SUSE Software Solutions Germany GmbH
HRB 36809 (AG N=C3=BCrnberg)
Gesch=C3=A4ftsf=C3=BChrer: Ivo Totev, Andrew McDonald, Werner Knoblich
