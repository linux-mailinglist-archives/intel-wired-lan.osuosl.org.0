Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FDC98A75FD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Apr 2024 22:55:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A3747815CC;
	Tue, 16 Apr 2024 20:55:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gXDgAXrMvQzk; Tue, 16 Apr 2024 20:55:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E4BC8814B8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713300929;
	bh=SOBrduNq6abzzMV93b1/GhKvT61LbgDaVIzoPQPGROQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=08tUiOL/REYrIIrhgVgRSS86mKZwvSmSI9a0nUKTg2B3LraZEabieQT8Px2zog23t
	 B1kv8wk1xAljW4gTCKqkSOOvmh33aO7Sx7ILnKnMnMSwmMZSzW95QAQjNr9r9A9ikK
	 NklxKzhgM9/Ss+GHvCQypAmdyI8TaTJ1AatLGRw56oPDjc0Tx4Rp2/xgeM/RR17Zh0
	 YbqX/9RXMw5SN21ZrkkLPxhHqGH3U8SE55DwxUF1OLni6Egc84Oxrnmnej1SDmrTp/
	 nx2u17AL8+LBNuyNEmgEe9lBh8L6/pvGDW+f6b/e2I2hz8lZPlA6Y9QbxJArFMA11h
	 PYjLcz3REDZeg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E4BC8814B8;
	Tue, 16 Apr 2024 20:55:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DECCD1BF279
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 20:55:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C9B7940A45
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 20:55:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nWs4UoJo5tBL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Apr 2024 20:55:25 +0000 (UTC)
Received-SPF: Pass (sender SPF authorized) identity=helo;
 client-ip=83.223.95.100; helo=bmailout1.hostsharing.net;
 envelope-from=foo00@h08.hostsharing.net; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B13374018E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B13374018E
Received: from bmailout1.hostsharing.net (bmailout1.hostsharing.net
 [83.223.95.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B13374018E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 20:55:23 +0000 (UTC)
Received: from h08.hostsharing.net (h08.hostsharing.net
 [IPv6:2a01:37:1000::53df:5f1c:0])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256
 client-signature RSA-PSS (4096 bits) client-digest SHA256)
 (Client CN "*.hostsharing.net", Issuer "RapidSSL TLS RSA CA G1" (verified OK))
 by bmailout1.hostsharing.net (Postfix) with ESMTPS id CAC463000D5BB;
 Tue, 16 Apr 2024 22:55:19 +0200 (CEST)
Received: by h08.hostsharing.net (Postfix, from userid 100393)
 id 9D1131E063; Tue, 16 Apr 2024 22:55:19 +0200 (CEST)
Date: Tue, 16 Apr 2024 22:55:19 +0200
From: Lukas Wunner <lukas@wunner.de>
To: Kurt Kanzenbach <kurt@linutronix.de>
Message-ID: <Zh7lt_A6LvBro_ti@wunner.de>
References: <2f1be6b1cf2b3346929b0049f2ac7d7d79acb5c9.1713188539.git.lukas@wunner.de>
 <87plupe70m.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87plupe70m.fsf@kurt.kurt.home>
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=wunner.de
Subject: Re: [Intel-wired-lan] [PATCH net] igc: Fix LED-related deadlock on
 driver unbind
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Andrew Lunn <andrew@lunn.ch>, Sasha Neftin <sasha.neftin@intel.com>,
 Roman Lozko <lozko.roma@gmail.com>, intel-wired-lan@lists.osuosl.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Apr 16, 2024 at 04:06:49PM +0200, Kurt Kanzenbach wrote:
> On Mon Apr 15 2024, Lukas Wunner wrote:
> > Fixes: ea578703b03d ("igc: Add support for LEDs on i225/i226")
> > Reported-by: Roman Lozko <lozko.roma@gmail.com>
> > Closes: https://lore.kernel.org/r/CAEhC_B=ksywxCG_+aQqXUrGEgKq+4mqnSV8EBHOKbC3-Obj9+Q@mail.gmail.com/
> > Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
> 
> I think, the first SoB has to be yours, because you are the patch
> author. In fact, my SoB is not required at all.

My understanding is that the commit author must be identical to the last
Signed-off-by, so I put mine last.  I've seen Stephen Rothwell send
complaints whenever he spotted commits in linux-next violating that.

I carried over the variable and function renaming you did to match
the driver's (or your) preferred style, hence the inclusion of your
Signed-off-by.

Thanks!

Lukas
