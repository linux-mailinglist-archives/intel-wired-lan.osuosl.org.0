Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cHZqBADanmkTXgQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Feb 2026 12:16:16 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AAD5C19653A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Feb 2026 12:16:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E490B41E69;
	Wed, 25 Feb 2026 11:16:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dWHFW_5_7sRW; Wed, 25 Feb 2026 11:16:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2BC3F41E6F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772018172;
	bh=Asc7os5XgEttj+QqFfI9VdSfR3d7ytYJwpk2iQbc3GQ=;
	h=To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=eHPEnF1CdWc+wHE8BsQSZ8zWF42m6E+9S/eTnm6MfkzsNm7V2JUJFQu2eEo8Um5Kb
	 MHvNP8mPVLbIJ2YPtA8LpNVQVsnZi/wBkDCn41opfNykqjkIi9A6Dd/83gMCDPTVYM
	 mqyBapOEqYQdZaTnvWr4ax0xxIXkOvfaIfVqP/WhGK6aFG3bRhSPjz4aM0WiRm4Ujx
	 OI+Hy9BDHLmUj06UJMt15y3Wq7YSm5IXzZbiotoitSgSFpT7rvRtdSuR27VaohqE9G
	 whM/aiQ9P80QG9B/6yK3LZ/ULN0jQOQvtJKXx9FwH8SDnAr3hNrA+8BU855HDRqfP9
	 xX+jv7JFC8cfA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2BC3F41E6F;
	Wed, 25 Feb 2026 11:16:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id B54A2204
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 11:16:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B2C0360FB4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 11:16:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PZhgCOQFPkXZ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Feb 2026 11:16:09 +0000 (UTC)
X-Greylist: delayed 303 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 25 Feb 2026 11:16:06 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 24B8C60F47
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 24B8C60F47
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.136.65.227;
 helo=mta-65-227.siemens.flowmailer.net;
 envelope-from=fm-68982-20260225111059f13c0e36c80002077b-tuddw_@rts-flowmailer.siemens.com;
 receiver=<UNKNOWN> 
Received: from mta-65-227.siemens.flowmailer.net
 (mta-65-227.siemens.flowmailer.net [185.136.65.227])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 24B8C60F47
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 11:16:06 +0000 (UTC)
Received: by mta-65-227.siemens.flowmailer.net with ESMTPSA id
 20260225111059f13c0e36c80002077b
 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Feb 2026 12:10:59 +0100
Message-ID: <f4232af291e742d0d0a110bbf6934ebdf490e153.camel@siemens.com>
To: Zdenek Bouska <zdenek.bouska@siemens.com>, Tony Nguyen	
 <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>,  Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet	
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni	
 <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann	
 <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>, John
 Fastabend <john.fastabend@gmail.com>, Stanislav Fomichev <sdf@fomichev.me>,
 Richard Cochran	 <richardcochran@gmail.com>, Song Yoong Siang
 <yoong.siang.song@intel.com>,  Lai Peter Jun Ann <jun.ann.lai@intel.com>
Cc: Vinicius Costa Gomes <vinicius.gomes@intel.com>, 
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, bpf@vger.kernel.org
Date: Wed, 25 Feb 2026 12:10:58 +0100
In-Reply-To: <20260225-igc-fix-xdp-tx-tstamp-pagefault-v2-1-bf797ec20f3b@siemens.com>
References: <20260225-igc-fix-xdp-tx-tstamp-pagefault-v2-1-bf797ec20f3b@siemens.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-68982:519-21489:flowmailer
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; s=fm2; 
 d=siemens.com; i=florian.bezdeka@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=Asc7os5XgEttj+QqFfI9VdSfR3d7ytYJwpk2iQbc3GQ=;
 b=IBktAHMdRTU6V+8xrzNUCbSLyz2pcjARd1g51+nrvqYOdAqTA5KuLrcC6RTKX814EhQ6pD
 98zkHaHWDzqmtcyXuEszOgWJwZdaq/f4WH95f2I+pem0PFeOFRWBH63YazXLYrijQBBkQL/E
 I8RTxLQUTSl6qUV3LxLCci+1NJ5vjjufACcZtO9/87kbP68/W4v687xlC/PrtWk0VkEmjFkR
 CDX8RaFHnNo8P3jvEbhIej0nKleAyrQrsAykTPwfmIe7Gj/p9YMO581U0gBwwnqB9Ex3jUyw
 fkIzJIEpP9kbDMla0Xu05DrrRjJk6DGWhE9OXG2qmzU0kLCyXssSJT2g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=siemens.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=siemens.com header.i=florian.bezdeka@siemens.com
 header.a=rsa-sha256 header.s=fm2 header.b=IBktAHMd
Subject: Re: [Intel-wired-lan] [PATCH v2] igc: fix page fault in XDP TX
 timestamps handling
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
From: Florian Bezdeka via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Florian Bezdeka <florian.bezdeka@siemens.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_MATCH_TO(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:zdenek.bouska@siemens.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:richardcochran@gmail.com,m:yoong.siang.song@intel.com,m:jun.ann.lai@intel.com,m:vinicius.gomes@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:bpf@vger.kernel.org,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[siemens.com:mid,siemens.com:email,siemens.com:replyto];
	FREEMAIL_TO(0.00)[siemens.com,intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,iogearbox.net,gmail.com,fomichev.me];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[21];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[florian.bezdeka@siemens.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.996];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: AAD5C19653A
X-Rspamd-Action: no action

On Wed, 2026-02-25 at 10:58 +0100, Zdenek Bouska wrote:
> If an XDP application that requested TX timestamping is shutting down
> while the link of the interface in use is still up the following kernel
> splat is reported:
>=20
> [  883.803618] [   T1554] BUG: unable to handle page fault for address: f=
fffcfb6200fd008
> ...
> [  883.803650] [   T1554] Call Trace:
> [  883.803652] [   T1554]  <TASK>
> [  883.803654] [   T1554]  igc_ptp_tx_tstamp_event+0xdf/0x160 [igc]
> [  883.803660] [   T1554]  igc_tsync_interrupt+0x2d5/0x300 [igc]
> ...
>=20
> During shutdown of the TX ring the xsk_meta pointers are left behind, so
> that the IRQ handler is trying to touch them.
>=20
> This issue is now being fixed by cleaning up the stale xsk meta data on
> TX shutdown. TX timestamps on other queues remain unaffected.
>=20
> Fixes: 15fd021bc427 ("igc: Add Tx hardware timestamp request for AF_XDP z=
ero-copy packet")
> Signed-off-by: Zdenek Bouska <zdenek.bouska@siemens.com>
> ---
> Changes in v2:
> - Moved 'adapter' variable declaration into the if block (Vinicius)
> - Link to v1: https://lore.kernel.org/r/20260224-igc-fix-xdp-tx-tstamp-pa=
gefault-v1-1-7c729ef61ee5@siemens.com
> ---

Reviewed-by: Florian Bezdeka <florian.bezdeka@siemens.com>
