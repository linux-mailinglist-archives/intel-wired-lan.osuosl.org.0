Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BAA29A4F02E
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Mar 2025 23:24:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 539FC80B9A;
	Tue,  4 Mar 2025 22:24:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tNIRVsQ6ybEi; Tue,  4 Mar 2025 22:24:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B432780B04
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741127063;
	bh=NQspby4G75DaS/LBNhOnxLMcEKKmp/qYjXqhxLpgpJc=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rlWCLoB6G90A/kRFKi7sk4UhTvfUw9NDA/646IdlL5qWtPmqkE4Z1MV3yyAWymecw
	 BdaWlt/wCbbQJtayWA3NL1fB2uiw3ZcQwwbkiGHLZB9Bci0T8NFdeV4Od88pQUKlxi
	 ctfpMRVk8cjYyarJ3RpB6yFhNtorq+2b4Ajw5Q3woqSEYHqz9REft9aqFulE5b2Jvq
	 qvR8HD1y1+bNRlvf7HB88/25rCrGKDwV++GWVsgfbP3tXYU0GsprmB4sddJy9ZH/pK
	 +hVJlzUDWC73gHUVqThVFaChcgDEO6Xro5IaO8WIsqiFEAyJ36pt903SlcGUldIiZ9
	 Wvul0MT9kqFdg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B432780B04;
	Tue,  4 Mar 2025 22:24:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 1303FD2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 22:24:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0039340148
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 22:24:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5a195pm4R9Fj for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Mar 2025 22:24:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0E61B40586
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0E61B40586
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0E61B40586
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 22:24:19 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1tpagH-002Hg7-7E; Tue, 04 Mar 2025 23:24:05 +0100
Date: Tue, 4 Mar 2025 23:24:05 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Mark Pearson <mpearson-lenovo@squebb.ca>
Cc: Vitaly Lifshits <vitaly.lifshits@intel.com>, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Message-ID: <eb5b93b5-ca90-4287-b6b5-17825d79e6ea@lunn.ch>
References: <20250226194422.1030419-1-mpearson-lenovo@squebb.ca>
 <36ae9886-8696-4f8a-a1e4-b93a9bd47b2f@lunn.ch>
 <50d86329-98b1-4579-9cf1-d974cf7a748d@app.fastmail.com>
 <1a4ed373-9d27-4f4b-9e75-9434b4f5cad9@lunn.ch>
 <9f460418-99c6-49f9-ac2c-7a957f781e17@app.fastmail.com>
 <4b5b0f52-7ed8-7eef-2467-fa59ca5de937@intel.com>
 <698700ab-fd36-4a09-8457-a356d92f00ea@lunn.ch>
 <24740a7d-cc50-44af-99e2-21cb838e17e5@app.fastmail.com>
 <316a020a-aa49-700e-3735-f5f810adaaed@intel.com>
 <a2bd6964-1ec0-4bd6-ad68-7210ac3fe38b@app.fastmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a2bd6964-1ec0-4bd6-ad68-7210ac3fe38b@app.fastmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=NQspby4G75DaS/LBNhOnxLMcEKKmp/qYjXqhxLpgpJc=; b=X+ZDZ1jYxcz5VBtDKzP8p0t8nn
 qrHqeqVx76GM2mwLBEeMYc/M3s47hIw8qlQaamEt68PbvmCnU+TTqvWHVrPLd7LNwyvKTA5Q1kD+y
 nvE8RJm7JyFXpAZmDheUn+8K8V6cusfhtGtoDXrHt6mw/VqpPdbWWragyPXDZYvh+V/U=;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=X+ZDZ1jY
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: Link flap workaround option
 for false IRP events
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

> > I suggest to try replacing the register read for a short delay or 
> > reading the PHY STATUS register instead.
> >
> 
> Ack - we'll try that, and collect some other debug registers in the process.
> Will update with findings - this may take a while :)

Please be careful with which register you choice. Because the link
status bit in BMSR is latching, you should not be reading it and
discarding the result.

Reading register 2 or 3 should be totally safe.

Another thing to keep in mind, you cannot unconditionally read a paged
register in this particular PHY, because the e1000e is used with a
number of different PHYs. That register does not exist in other PHYs,
and the action of selecting the page performs a register write, which
for some other PHY could be destructive. So i would suggest you keep
to registers defined in 802.3 C22.

	Andrew
