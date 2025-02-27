Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A634CA48445
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Feb 2025 17:08:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DDDB060AF9;
	Thu, 27 Feb 2025 16:08:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ftxWLSW4mGde; Thu, 27 Feb 2025 16:08:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3032660665
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740672487;
	bh=CND/AWjqWtefCR2+bz8yg6Rc6Qum2wM65PkiDHxFQKA=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0mu9E+tWGA98x07wKo6LqhtZ7lmwSg/o9D8rKM427yGpLeCd2dWDc1bHfcLr0YXYS
	 AkswG+IoxoIuHx6SVYlvBl5XvC8gWybSCLT4rdNXt8keBv/d8Lblr1eeXqihDFwm5k
	 K6InfxPK+nqCsyT+UtJB1lQQTLsA1lQ8WyanokaoiZL6QIJe9N15mKkA0dBbRdEJOx
	 E09xwtzB+RlgzOXywkL9sKEibWGbJu9iwYGExPh1KQwONLa5L+ckJRkxnjWx3b3r/K
	 ZBhfd3d88uWQ/ePNykjDYlzr4+72ecngsW91VVtSmCoKZflR5uguCCo7XK20HtEL6+
	 psiKD+fJrMWCQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3032660665;
	Thu, 27 Feb 2025 16:08:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id F371A711
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2025 16:08:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E0CC480CC5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2025 16:08:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Gf5gk2VaEm9J for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Feb 2025 16:08:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3FBB280CAA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3FBB280CAA
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3FBB280CAA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2025 16:08:04 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1tngQT-000e7u-Fr; Thu, 27 Feb 2025 17:07:53 +0100
Date: Thu, 27 Feb 2025 17:07:53 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Mark Pearson <mpearson-lenovo@squebb.ca>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Message-ID: <1a4ed373-9d27-4f4b-9e75-9434b4f5cad9@lunn.ch>
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
 bh=CND/AWjqWtefCR2+bz8yg6Rc6Qum2wM65PkiDHxFQKA=; b=fZ0Z6IUwpZBeYWfehdeZd8LTTq
 fWrQj/7RaPs53mZOEgMIB+pGKvLf8bb6zvQgPHHJ45OOSIGB0Gze9Nws3AX7jY94oQPYdg1qQ0uQs
 T1009zcHl7phWIDtAD7WrLJEiSbTGf1n5C8nWsteHhn4GohocKhajcus+RHV5/8iDH4E=;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=fZ0Z6IUw
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

> >> +			e1e_rphy(hw, PHY_REG(772, 26), &phy_data);
> >
> > Please add some #define for these magic numbers, so we have some idea
> > what PHY register you are actually reading. That in itself might help
> > explain how the workaround actually works.
> >
> 
> I don't know what this register does I'm afraid - that's Intel knowledge and has not been shared.

What PHY is it? Often it is just a COTS PHY, and the datasheet might
be available.

Given your setup description, pause seems like the obvious thing to
check. When trying to debug this, did you look at pause settings?
Knowing what this register is might also point towards pause, or
something totally different.

	Andrew
