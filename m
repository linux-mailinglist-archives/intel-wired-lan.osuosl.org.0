Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id KKzBF3nRQ2o4jQoAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jun 2026 16:23:53 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B3906E5638
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jun 2026 16:23:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b="4Kkxd/Cx";
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=kernel.org (policy=quarantine)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F397282965;
	Tue, 30 Jun 2026 14:23:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OkuN2tsO50ci; Tue, 30 Jun 2026 14:23:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7372282969
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782829430;
	bh=4Hhhr2XcfubTUcrvTbwWhwLy7CUCWTZEVOLPtuGC1E4=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4Kkxd/Cxfipy0JWT57muylmo3F3QctH7+fhegBjrYqal68OoLACmg/bFe6wD7Ji5m
	 XPYEr05xhDQpVmTTx878Iqq6To0RJVvhYng2jZ8cIxJDHqM45aaGjmvbrXeeiZPLHD
	 gCVi3tjz5lKd0CAsHCWI6h1GKys0jnV0+nIAARpAogUmbTvEj1YYcWLQg3WINMHq3E
	 YHm7Wl//+d8eAT8GmnnHSzFVgfRJ0oyknnIk6Mp3NNFt3lQcnURWCMt5n1p4QQWikg
	 2Yx2TelrMXF1a+lDGGwhJ99PD/hdCnG7anwehS5lGBqzx5X/g8TDA4ufJ0c+rkyX7g
	 icD4lhlSnD9aQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7372282969;
	Tue, 30 Jun 2026 14:23:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 4E945149
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jun 2026 14:23:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 34458827C5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jun 2026 14:23:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NBw5PzDIwEqP for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jun 2026 14:23:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8ECEB826FF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8ECEB826FF
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8ECEB826FF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jun 2026 14:23:47 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by tor.source.kernel.org (Postfix) with ESMTP id B217B601DC;
 Tue, 30 Jun 2026 14:23:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DE4E91F000E9;
 Tue, 30 Jun 2026 14:23:44 +0000 (UTC)
Date: Tue, 30 Jun 2026 07:23:44 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: "Mike Rapoport (Microsoft)" <rppt@kernel.org>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni
 <pabeni@redhat.com>, Brian Norris <briannorris@chromium.org>, Edward Cree
 <ecree.xilinx@gmail.com>, Francesco Dolcini <francesco@dolcini.it>, Manish
 Chopra <manishc@marvell.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Sudarsana Kalluru <skalluru@marvell.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, b43-dev@lists.infradead.org,
 intel-wired-lan@lists.osuosl.org, libertas-dev@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 linux-net-drivers@amd.com, linux-wireless@vger.kernel.org,
 netdev@vger.kernel.org
Message-ID: <20260630072344.159b5d99@kernel.org>
In-Reply-To: <20260630-b4-drivers-net-v1-0-672162a91f37@kernel.org>
References: <20260630-b4-drivers-net-v1-0-672162a91f37@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel.org; s=k20260515; t=1782829425;
 bh=4Hhhr2XcfubTUcrvTbwWhwLy7CUCWTZEVOLPtuGC1E4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References;
 b=FAKx/t6uR6e0YnXhUD4OAIvzCSGSFQqB0vFZUhEgy2dgiJnluy0duaFK6NLRYiwtu
 fVDfi6acLZR+l3CUXlY5hftQWt/eE24AJXi/lvEcSdMFqXuJ4frYnZ0itSCqWXgRpl
 NkxGX/Z1g2YgctN43YDAMXODPkhFFnXpPr67j43JUyr96RZ4YBioADsYLsm1iFUxvL
 kodoBEkjnvidKLPf8W0IWgLBeeikaJ/MwZ32d9NW2RcMvE5Z8DmTV/IfxrRD1LrLCw
 CIGyHDS/uvzs9a2YLUoQJ/+oG9AWfESzK2/RaL5bmBD/3DuJWQPM2GV+9y8JozF2SR
 aMsyqYRgaYGUQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20260515 header.b=FAKx/t6u
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/8] drivers/net: replace
 __get_free_pages() with kmalloc()
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[lunn.ch,davemloft.net,google.com,redhat.com,chromium.org,gmail.com,dolcini.it,marvell.com,intel.com,lists.infradead.org,lists.osuosl.org,vger.kernel.org,kvack.org,amd.com];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:rppt@kernel.org,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:briannorris@chromium.org,m:ecree.xilinx@gmail.com,m:francesco@dolcini.it,m:manishc@marvell.com,m:przemyslaw.kitszel@intel.com,m:skalluru@marvell.com,m:anthony.l.nguyen@intel.com,m:b43-dev@lists.infradead.org,m:libertas-dev@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:linux-mm@kvack.org,m:linux-net-drivers@amd.com,m:linux-wireless@vger.kernel.org,m:netdev@vger.kernel.org,m:andrew@lunn.ch,m:ecreexilinx@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:from_smtp,smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[100.103.45.18:received];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6B3906E5638

On Tue, 30 Jun 2026 13:59:19 +0300 Mike Rapoport (Microsoft) wrote:
>  drivers/net/ethernet/broadcom/bnx2x/bnx2x_sp.c    |  6 +--
>  drivers/net/ethernet/intel/ice/ice_gnss.c         |  5 +-
>  drivers/net/ethernet/sfc/mcdi.c                   |  7 +--
>  drivers/net/ethernet/sfc/siena/mcdi.c             |  7 +--
>  drivers/net/wireless/broadcom/b43/debugfs.c       | 12 ++---
>  drivers/net/wireless/broadcom/b43legacy/debugfs.c | 11 ++--
>  drivers/net/wireless/marvell/libertas/debugfs.c   | 39 ++++++--------
>  drivers/net/wireless/marvell/mwifiex/debugfs.c    | 62 ++++++++++-------------
>  drivers/net/wireless/ti/wlcore/main.c             | 14 +++--

You gotta split this, wireless and ethernet go via separate trees.
BTW cocci also suggests folding in a memset, IDK if it's worth it.

drivers/net/wireless/broadcom/b43legacy/debugfs.c:217:8-15: WARNING: kzalloc should be used for buf, instead of kmalloc/memset
-- 
pw-bot: cr
