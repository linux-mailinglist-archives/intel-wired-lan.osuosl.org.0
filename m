Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B51DEA4841C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Feb 2025 17:03:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6816F6129E;
	Thu, 27 Feb 2025 16:03:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v8eVcKgv6mjN; Thu, 27 Feb 2025 16:03:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BADC4612B2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740672193;
	bh=jHA36oJ30EP9uMa5rF7xPESwPrtKLCK7Cd5ezd49fWk=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=w6Ev1oNYW35lqUg/UwEAvVYrMAL4OO2xFF1SJDluoW5mC1N6X53jMn9dKTxw6W7fu
	 HIA9gqGoI5k+/mig+DI23xQMnMfcyuGG48775fK92vAf0vfPsoHWKCjCbX42EcHbuB
	 2/A7u459rU8Yn3UoflDQTpCLmb9ilWo9R+y3hbCIyhU46cS1kNGlTZiW/HjBxUUCSQ
	 r6wk1OydZLileulHzKbCTny6wo0DPgNHhupku/MCxevU+9ilJIsSc/oIvuJvTSWcF5
	 WKcljDdS22Kr1LbSqyN9OLIlyHN+xMmbtteVXlv9kkTcU3eGtEW1kyb0od5s/XDKei
	 wZkN+1ks1xj4Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BADC4612B2;
	Thu, 27 Feb 2025 16:03:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id F1950711
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2025 16:03:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D199B40363
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2025 16:03:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id a-bIZm4Vof3h for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Feb 2025 16:03:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9C33940252
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9C33940252
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9C33940252
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2025 16:03:09 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1tngLe-000e3j-3H; Thu, 27 Feb 2025 17:02:54 +0100
Date: Thu, 27 Feb 2025 17:02:54 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Mark Pearson <mpearson-lenovo@squebb.ca>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Message-ID: <8c0a80fe-5e92-42c4-88cc-0fc46c17a936@lunn.ch>
References: <mpearson-lenovo@squebb.ca>
 <20250226194422.1030419-1-mpearson-lenovo@squebb.ca>
 <36ae9886-8696-4f8a-a1e4-b93a9bd47b2f@lunn.ch>
 <50d86329-98b1-4579-9cf1-d974cf7a748d@app.fastmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <50d86329-98b1-4579-9cf1-d974cf7a748d@app.fastmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=jHA36oJ30EP9uMa5rF7xPESwPrtKLCK7Cd5ezd49fWk=; b=0Tr/jzQg9aJuTcenur4l/oX+xr
 4IxBeJe4kMTdHI7YinrnF4qym310wM1HdVJS+OF7M7xsmrryPnHn8zHfb8PzU3vAkbZ/v6gHkLBlb
 FdB6ztqqpqTYHv544JgFMldLAiS8/Cz9HvXXzivirZGe+vQ12cfJb1itGb4RA/YgYkso=;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=0Tr/jzQg
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

> The reason for the module option is I'm playing it safe, as Intel couldn't determine root cause.

> The aim of the patch is to keep the effect to a minimum whilst
> allowing users who are impacted to turn on the workaround, if they
> are encountering the issue.

And how do such users determine this module parameter exists? You need
to be a pretty savvy user to know about them, and how the set them,
etc.

> Issue details:

> We have seen the issue when running high level traffic on a network
> involving at least two nodes and also having two different network
> speeds are need. For example:

> [Lenovo WS] <---1G link---> Network switch <---100M link--->[traffic source]
> The link flap can take a day or two to reproduce - it's rare.

By flap, you mean down/up? So the network dies for a couple of seconds
while autoneg happens? And this repeats at 1 to 2 day intervals?

Or does the link go down, and stay down, and it needs user
intervention to get the link back?

	Andrew
