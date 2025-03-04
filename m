Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 45953A4DF77
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Mar 2025 14:41:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 483258146B;
	Tue,  4 Mar 2025 13:41:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id t4eDrfO8UecY; Tue,  4 Mar 2025 13:41:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6C8B181479
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741095685;
	bh=mIe1g7wRJzTWHrk0KluZ5semFFoVlRkgZaZgEsIxn80=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=QHqAMsEH4Sc9+boyDzL77Wg3K5WcPeR3/e0RUo/EfixpbzkmHz3zpwqKtkdnWeGjg
	 PcSY/LIsdIAnY6/AzVdKACAgkXtO8zHrZGbSRv2Kn2lMpR6WoyL9gdDDGYukJYu7+U
	 FvON09japxoPVE+FgNwUx5gBJwZF2tiEaThSEtbNzqTCe2navWM6cgOOQpV5SevmZW
	 TrzHQGqdzOi2JH11urmeoP7SvFC38opTfxoiOIV9ycmWIhMXf3QwIAnONP8mts3Cr+
	 zev4M+bcwfQPFPCv5siH6Lqh5dCKZmhbWe/kw4r5lvyLL2V7sFwthoEp+guJp3V+og
	 WRTSKrUJEQHxw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6C8B181479;
	Tue,  4 Mar 2025 13:41:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 247A1944
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 13:41:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 141F560674
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 13:41:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gtXjx7Z7ATbn for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Mar 2025 13:41:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 06DA9606D7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 06DA9606D7
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 06DA9606D7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 13:41:20 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1tpSW9-0029IZ-Jd; Tue, 04 Mar 2025 14:41:05 +0100
Date: Tue, 4 Mar 2025 14:41:05 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Cc: Mark Pearson <mpearson-lenovo@squebb.ca>, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Message-ID: <fbee86b8-fbdd-42ac-a7f9-efc934d59672@lunn.ch>
References: <mpearson-lenovo@squebb.ca>
 <20250226194422.1030419-1-mpearson-lenovo@squebb.ca>
 <36ae9886-8696-4f8a-a1e4-b93a9bd47b2f@lunn.ch>
 <50d86329-98b1-4579-9cf1-d974cf7a748d@app.fastmail.com>
 <1a4ed373-9d27-4f4b-9e75-9434b4f5cad9@lunn.ch>
 <9f460418-99c6-49f9-ac2c-7a957f781e17@app.fastmail.com>
 <4b5b0f52-7ed8-7eef-2467-fa59ca5de937@intel.com>
 <698700ab-fd36-4a09-8457-a356d92f00ea@lunn.ch>
 <24740a7d-cc50-44af-99e2-21cb838e17e5@app.fastmail.com>
 <316a020a-aa49-700e-3735-f5f810adaaed@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <316a020a-aa49-700e-3735-f5f810adaaed@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=mIe1g7wRJzTWHrk0KluZ5semFFoVlRkgZaZgEsIxn80=; b=i48j2a7ixm9NaBiLJryYlHBRnM
 jUGOl1OOd492N8Fo/cSNPhcyQeGYeG+YL5I45hF5RcNXTASeL649g0g0ksSsvZBQUdRktwKrtrDSk
 Xd5kzAOvOZf44ChXAKwnSOdIHq2Rs72fkKZWArFriaHiykyFAIklVfhF5KYNhRXywq8Q=;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=i48j2a7i
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

> > > However, that does not really help explain how this helps prevent an
> > > interrupt. I assume playing with EEE settings was also played
> > > with. Not that is register appears to have anything to do with EEE!
> > > 
> > I don't think we did tried those - it was never suggested that I can recall (the original debug started 6 months+ ago). I don't know fully what testing Intel did in their lab once the issue was reproduced there.
> > 
> > If you have any particular recommendations we can try that - with a note that we have to run a soak for ~1 week to have confidence if a change made a difference (the issue can reproduce between 1 to 2 days).
> 
> Personally I doubt that it is related to EEE since there was no real link
> flap.

I tend to agree. Despite the group of registers being called LPI, it
appears this one has nothing to do with LPI? It would probably been
better to have it in page 776, General Registers, but that region is
full.

> > > I don't follow what you are saying here. As far as i can see, the
> > > interrupt handler will triggers a read of the BMCR to determine the
> > > link status. It should not matter if there is a spurious interrupt,
> > > the BMCR should report the truth. So does BMCR actually indicate the
> > > link did go down? I also see there is the usual misunderstanding with
> > > how BMCR is latching. It should not be read twice, processed once, it
> > > should be processed each time, otherwise you miss quick link down/up
> > > events.
> > > 
> > > > We communicated that this solution is not likely to be accepted to the
> > > > kernel as is, and the initial responses on the mailing list demonstrate the
> > > > pushback.
> > > 
> > > What it has done is start a discussion towards an acceptable
> > > solution. Which is a good thing. But at the moment, the discussion
> > > does not have sufficient details.
> > > 
> > > Please could somebody describe the chain of events which results in
> > > the link down, and subsequent link up. Is the interrupt spurious, or
> > > does BMCR really indicate the link went down and up again?
> > > 
> > 
> > I'm fairly certain there is no actual link bounce but I don't know the reason for the interrupt or why it was triggered.
> > 
> > Vitaly, do you have a way of getting these answers from the Intel team that worked on this? I don't think I'll be able to get any answers, unfortunately.
> 
> You are correct, from what we saw there was no real link flap there. Only a
> false link status change interrupt.
 
So if BMCR shows no state change, why is the driver doing anything?

I really would like to understand the chain of events. Once we
understand the chain of events, we can probably come up with a change
somewhere in the chain to break it, so the spurious interrupt is
ignored.

	Andrew
