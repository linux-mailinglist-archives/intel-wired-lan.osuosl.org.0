Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cBJ6Ep18gGnE8wIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Feb 2026 11:29:49 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C3C59CAF2E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Feb 2026 11:29:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 54F1A40A71;
	Mon,  2 Feb 2026 10:29:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KfXYwwoyo-pS; Mon,  2 Feb 2026 10:29:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B7AA040AD1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770028186;
	bh=Bii5lAhMbOuiGNxu7r40Jd2Y0F1BQJs+8WIlzeV4JEA=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hhQBREk3KKjkEhImx/tHA5W4O6mo88bnrXnaIwe6ycb0FZT8lg1JTUCcUjK0EchE/
	 OgDjfUsaLrcIua1Pw9vPweB0VwZZDwDNvuXgYZpSOGDBPzHALKn/3O4ea1NK4IPChl
	 i/TPnv9v6+iADEgqi6zr8wp7iUm0FjCsXUJOreQieJkaYf6CGz01RfOdftfvC6CHQB
	 I/uldbS0czYWebnNr4GDOwTeeA2Zy7HgmJveQJBhO22CPZG8WTNf2asjrzwPXjKfiO
	 eBUfsJGQKtWkZ9n364ETXdEvzrGa7xPnQx1Fedm1cctEhG2fpzLY6XVmhWv3jJC1rh
	 MY5xAfLM8jmyg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B7AA040AD1;
	Mon,  2 Feb 2026 10:29:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id ABF59149
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Feb 2026 10:29:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8F81F408BD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Feb 2026 10:29:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qLGWrv00l9lA for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Feb 2026 10:29:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C819E40AAD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C819E40AAD
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C819E40AAD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Feb 2026 10:29:44 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id B939D60008;
 Mon,  2 Feb 2026 10:29:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BBAE6C116C6;
 Mon,  2 Feb 2026 10:29:40 +0000 (UTC)
Date: Mon, 2 Feb 2026 10:29:38 +0000
From: Simon Horman <horms@kernel.org>
To: Takashi Kozu <takkozu@amazon.com>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 aleksandr.loktionov@intel.com, pmenzel@molgen.mpg.de,
 piotr.kwapulinski@intel.com, enjuk@amazon.com
Message-ID: <aYB8ki7Yd468N_Ah@horms.kernel.org>
References: <20260127085410.79645-5-takkozu@amazon.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260127085410.79645-5-takkozu@amazon.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1770028183;
 bh=Bii5lAhMbOuiGNxu7r40Jd2Y0F1BQJs+8WIlzeV4JEA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HGh2LgNSyAnSVp4CM1KGzBttl86jXfOW4Ca4RSg4JoKmlVyKQxn4k17gsWuRIE4x+
 QrzG0lZavgDryfCrT0180hTDaD9AKX7mEvODWi+K1BJmy12YOWdXwHl7dqGQqQufKo
 fYnreh6hdkXr1xEXSca8w9VagTuCs8C925uffTwxBFR2xZ1NzXlBdUlqu3xvbN/JQJ
 X4T9gIR3ckY2BRFoD4rH62Tu9QLnlNLkdGiClubG1dNc+P9TIkTjNtgBSD3y51KE72
 xMTC7vOomVoUQV+M2qeaukqPlM+f6whb8FPnNgrTXUesqRv+qdlbZ4O7AOm48IqZYM
 rKqHEmO9T+7uw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=HGh2LgNS
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 0/3] igb: add RSS key
 get/set support
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
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:takkozu@amazon.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:pmenzel@molgen.mpg.de,m:piotr.kwapulinski@intel.com,m:enjuk@amazon.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: C3C59CAF2E
X-Rspamd-Action: no action

On Tue, Jan 27, 2026 at 05:54:07PM +0900, Takashi Kozu wrote:
> This series adds ethtool get/set support for the RSS hash key in the igb
> driver.
> - `ethtool -x <dev>` to display the RSS key
> - `ethtool -X <dev> hkey <key>` to configure the RSS key

...

Thanks,

The AI review automation did flag a typo in patch 3/3,
which I have released in the form of a response to that patch.

That notwithstanding, overall this series looks good to me.

Reviewed-by: Simon Horman <horms@kernel.org>
