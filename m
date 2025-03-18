Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F65EA675D6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Mar 2025 15:03:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3C8818142B;
	Tue, 18 Mar 2025 14:03:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gQ0xuKxAfEZv; Tue, 18 Mar 2025 14:03:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8B243812BC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742306610;
	bh=ODe703cBzcJNsrGXr0rBG+avIRrn8cVjyQ/+2F18Kxg=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SNOQ8jhF4CdFM+VhEFpILWe0h8WFYdjOjfvVLoWJZyyWNH1O9Qh1229geWhaVEzNH
	 DtYDN4bDmgIXHsDHIV07Dq6im0d/Dy+kR6ahewRY8WRqTyHHHuFfgh1rNvQOULvJ6C
	 w2kG/4QJfKKyF3L8LbMmGMfvPf4Xa7FIuHsrRn0IYOU3q+6BuYZMNsCgTkLY2B7n4G
	 Ou79Oh8FhDUK4mU1oT/6gbrN4RXChhIjOlmX0LlDVvkYOKx3V+vOPJmFBb1fw+rtTl
	 KlrBaUUAdiiCX3lSZ3Xuxp9iTFLlJqq+CVkwg6T2G2D03s8/pc1paoP5cF0bGeNSWh
	 ytQjg8ebOPlug==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8B243812BC;
	Tue, 18 Mar 2025 14:03:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 9B6C7950
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Mar 2025 14:03:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8A175409C7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Mar 2025 14:03:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cOBjoabnvgcB for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Mar 2025 14:03:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 966314051D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 966314051D
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 966314051D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Mar 2025 14:03:27 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id B58995C57FD;
 Tue, 18 Mar 2025 14:01:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 85DC8C4CEEA;
 Tue, 18 Mar 2025 14:03:21 +0000 (UTC)
Date: Tue, 18 Mar 2025 14:03:19 +0000
From: Simon Horman <horms@kernel.org>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Ruud Bos <kernel.hbk@gmail.com>,
 Paul Barker <paul.barker.ct@bp.renesas.com>,
 Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>,
 Bryan Whitehead <bryan.whitehead@microchip.com>,
 UNGLinuxDriver@microchip.com,
 Raju Lakkaraju <Raju.Lakkaraju@microchip.com>,
 Florian Fainelli <florian.fainelli@broadcom.com>,
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>,
 Russell King <linux@armlinux.org.uk>,
 Jonathan Lemon <jonathan.lemon@gmail.com>, Lasse Johnsen <l@ssejohnsen.me>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Message-ID: <20250318140319.GU688833@kernel.org>
References: <20250310-jk-net-fixes-supported-extts-flags-v1-0-854ffb5f3a96@intel.com>
 <20250310-jk-net-fixes-supported-extts-flags-v1-2-854ffb5f3a96@intel.com>
 <20250318135947.GR688833@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250318135947.GR688833@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1742306606;
 bh=wLSyUj0wy1pDaO3/fQf6a6v78mYwzwxwtySQH15C9X8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qSO51hNtifkd+iANWTT0FvTSTlYPVAGia7nCNdbyCI2pobyHQqBfNS6e0jYjKJkw8
 S1D5WMQ9B8NnJJnrtANHvWapqOxv95Pya0CSDbyfV5UyjNpuMCgg1w3tCA8aeqOCQx
 AHj8tTlmtjZCOlCcj/lUpOVl3D9LgBxv4vXr4Ib4XjjJGlHIx4QtONafg5qW4o5sOT
 MkQWAYruRr8meu1KV2GLuAHFRpd2xTO6vYu5VteK3R7N8WJtl0z4tJrFQWvwu8aWLU
 hLKvGZWk9h0rqu2JiL4l686V2CdiKDXbOILgSVLlM0XzX1l0/BYREmMeK9Sn2gXLDl
 ZAdxWJRdR4YMw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=qSO51hNt
Subject: Re: [Intel-wired-lan] [PATCH net 2/5] renesas: reject
 PTP_STRICT_FLAGS as unsupported
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

On Tue, Mar 18, 2025 at 01:59:47PM +0000, Simon Horman wrote:
> + Shimoda-san
> 
> On Mon, Mar 10, 2025 at 03:16:37PM -0700, Jacob Keller wrote:
> > The ravb_ptp_extts() function checks the flags coming from the
> > PTP_EXTTS_REQUEST ioctl, to ensure that future flags are not accepted on
> > accident.
> > 
> > This was updated to 'honor' the PTP_STRICT_FLAGS in commit 6138e687c7b6
> > ("ptp: Introduce strict checking of external time stamp options.").
> > However, the driver does not *actually* validate the flags.
> > 
> > I originally fixed this driver to reject future flags in commit
> > 592025a03b34 ("renesas: reject unsupported external timestamp flags"). It
> > is still unclear whether this hardware timestamps the rising, falling, or
> > both edges of the input signal.
> > 
> > Accepting requests with PTP_STRICT_FLAGS is a bug, as this could lead to
> > users mistakenly assuming a request with PTP_RISING_EDGE actually
> > timestamps the rising edge only.
> > 
> > Reject requests with PTP_STRICT_FLAGS (and hence all PTP_EXTTS_REQUEST2
> > requests) until someone with access to the datasheet or hardware knowledge
> > can confirm the timestamping behavior and update this driver.
> > 
> > Fixes: 6138e687c7b6 ("ptp: Introduce strict checking of external time stamp options.")
> > Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> 
> Adding Shimoda-san who may be able to help coordinate a review if
> Niklas and Paul are unavailable for some reason.

Sorry for the noise. I now see that Niklas has reviewed v2.
