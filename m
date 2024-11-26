Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A4349D9CC4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Nov 2024 18:42:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 56AA540438;
	Tue, 26 Nov 2024 17:42:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JStlD9enn4vW; Tue, 26 Nov 2024 17:42:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E0121407C5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1732642944;
	bh=p9KO4aD1pNaj06JQBoCDJRQ9TSOEHmgHW2kQNpAw0oI=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ndVR2sIRcT2hQvp733ZHT7EvlZ8WXI1pyhzV6S0wHysllt7LgmLasruM3YQyqrAWo
	 0WMPGNDzkzkVBBDQ21dezTFSSB4u/lMLbAQavSx/fDJSMfasZWgRYfzNPstddmeRPG
	 w3gAdyvqO34I0+s1m2e0+Oa1ynwXAkPOakuPx26MgB89wtbOE8H0ZkTDxbeGpvC+O6
	 9gPbMy6vf+MTkFp+SajoNNQ5nlOTMi9gdbWTP87BKB2jMYWn6wMPNSOmX3VZGfsBx2
	 bh+65eW2+zkM16TQfakOakyPFE9rqmWoFW6Fb6c2TjWh7+Pe3IcQR0GJbcdIyTPUYz
	 bjM2HX3nEkwUg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E0121407C5;
	Tue, 26 Nov 2024 17:42:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 38D35112A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Nov 2024 17:42:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1942760703
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Nov 2024 17:42:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cGdKhySBHA-k for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Nov 2024 17:42:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 372BD60689
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 372BD60689
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 372BD60689
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Nov 2024 17:42:20 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1tFzZn-00EXpD-L7; Tue, 26 Nov 2024 18:42:15 +0100
Date: Tue, 26 Nov 2024 18:42:15 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Przemyslaw Korba <przemyslaw.korba@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 Milena Olech <milena.olech@intel.com>
Message-ID: <946b6621-fd35-46b9-84ee-37de14195610@lunn.ch>
References: <20241126102311.344972-1-przemyslaw.korba@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241126102311.344972-1-przemyslaw.korba@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=p9KO4aD1pNaj06JQBoCDJRQ9TSOEHmgHW2kQNpAw0oI=; b=tYLPoCpC+vuMB+EE4pbMtXSwaB
 iokgeZiwTlvi2RXBy0twtv5iNjYpR8Syese640fTdkZSo+krozcDxDddPheThaMskAxbPwrXmiNfP
 +D9L8OxYAAYv3vgHyEeW20TffmVQrXxWtCrcdjH9RAUaQbSPrtXTmtEEge4u9zP9hVD4=;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=tYLPoCpC
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix incorrect PHY
 settings for 100 GB/s
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

On Tue, Nov 26, 2024 at 11:23:11AM +0100, Przemyslaw Korba wrote:
> ptp4l application reports too high offset when ran on E823 device
> with a 100GB/s link. Those values cannot go under 100ns, like in a
> PTP working case when using 100 GB/s cable.
> This is due to incorrect frequency settings on the PHY clocks for
> 100 GB/s speed. Changes are introduced to align with the internal
> hardware documentation, and correctly initialize frequency in PHY
> clocks with the frequency values that are in our HW spec.
> To reproduce the issue run ptp4l as a Time Receiver on E823 device,
> and observe the offset, which will never approach values seen
> in the PTP working case.

You forgot to Cc: the PTP maintainer.

If i spent the time to measure the latency and configured ptp4l
correctly to take into account the latency, would i not see this
issue? And will this change then cause a regression because it changes
the latency invalidating my measurements?

    Andrew
