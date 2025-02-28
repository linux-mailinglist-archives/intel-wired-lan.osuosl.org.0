Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E860AA49F7C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Feb 2025 17:55:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A4B464F579;
	Fri, 28 Feb 2025 16:55:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id F6O6S06Fqgpg; Fri, 28 Feb 2025 16:55:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E6213501DE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740761755;
	bh=1VRZoqoHCK+crSI0o1Efw52ErTi5ppZiw43v7ZMPgsI=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=B9OTnahvytBsKmaiaDIkBawarjjfEUaJAPl2YgNSXPyoNYbmHQNCGRkFxJe9jgSVy
	 NgSyCXSHSOs05g7UVTTdHWHR5n+hHRluSsJqYfVTxsC7o6lOhzPWgKnAxRB1n4Vm3/
	 ADgTi/N65YWx3w1wPiuqK/R7/7zVCsayxlrK/Ip/Q4m+i4G1r3v/zTF1ecR8VqDFgW
	 XmdD7nlMgZCYN98E9e0nvML3p+DsyHAMBQdvV64sdMyU74SHCOaEOjIn5Jov/e3mES
	 eNZH3PJ80K1FcfDPHzbpETmFHRjTJ1h6YuwfxKQwbzV7UHJjnXOXKJ9x7ucXpZENSB
	 zh+8N8gMLv/kQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E6213501DE;
	Fri, 28 Feb 2025 16:55:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id B107D1DD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 16:37:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9360B8426D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 16:37:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Z7RatyOCQxIA for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Feb 2025 16:37:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org EA1A0844AB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EA1A0844AB
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EA1A0844AB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 16:37:36 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1to3MX-0010OP-I6; Fri, 28 Feb 2025 17:37:21 +0100
Date: Fri, 28 Feb 2025 17:37:21 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Mark Pearson <mpearson-lenovo@squebb.ca>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Message-ID: <51f829a0-43e2-4cb5-ac0f-a0098d53ce7b@lunn.ch>
References: <mpearson-lenovo@squebb.ca>
 <20250226194422.1030419-1-mpearson-lenovo@squebb.ca>
 <36ae9886-8696-4f8a-a1e4-b93a9bd47b2f@lunn.ch>
 <50d86329-98b1-4579-9cf1-d974cf7a748d@app.fastmail.com>
 <1a4ed373-9d27-4f4b-9e75-9434b4f5cad9@lunn.ch>
 <9f460418-99c6-49f9-ac2c-7a957f781e17@app.fastmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9f460418-99c6-49f9-ac2c-7a957f781e17@app.fastmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=1VRZoqoHCK+crSI0o1Efw52ErTi5ppZiw43v7ZMPgsI=; b=B9GH67kh5Jx8WzgqtpIIffYyq3
 PWDB2DLd/vOU1AwfV204wkdgFxp78886X72/Ob+ubLCt+jeR4DCJpFk4VoO2BUpK2M2oQI87XSI0D
 3+dNH2QThUO2gaotwredUNBP3UQhuCf2nSiZ18yMiWTn0r2HRCWEOhldpdhbV3oGjP+I=;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=B9GH67kh
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

> For the PHY - do you know a way of determining this easily?

Add printk()s to e1000e_get_phy_type_from_id().

	Andrew
