Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96EF684BA94
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Feb 2024 17:04:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 249CF416E9;
	Tue,  6 Feb 2024 16:04:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 249CF416E9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707235484;
	bh=R1JkbkHYZjBJccdGuVGW2VQafUHeELVUbK2T3y/y9DU=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ytoReC4+Bz4cxPO74cS2o4uxTOxSb+RWLviJszGQNa/YOp5gCI3IER5ZGTZDBipp8
	 B9fsVqC3t+sgs6qHderTLlWHhqqqHZmnZlIN6qIynOkr62wk5Ub7lP86xMU4pGbvO6
	 5jn063Ral+TdYkbFQiV9rOZbUzAE+PLB96j4leSMbhnpnqoalupe/wKWox4Cw8lNi/
	 H6ItQ9qf4pkXcCMJ5NkRFdMrp5sqVtrOdWK5/LH8zyyNJIiGjOVPAtRdyszG9lMFUt
	 kIKxFnTTJrmASOwnQNf7HQLCCklRN6WVkgWrdKhWq4jZm65G6k//YpddlmTCQpeDk4
	 kPxNndGYMZgIw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ykJoLerZmR1e; Tue,  6 Feb 2024 16:04:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 055E2408BC;
	Tue,  6 Feb 2024 16:04:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 055E2408BC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1F7041BF27C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Feb 2024 09:38:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B749E41183
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Feb 2024 09:38:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B749E41183
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vqIA6jUrRMZF for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Feb 2024 09:38:50 +0000 (UTC)
Received: from mslow1.mail.gandi.net (mslow1.mail.gandi.net [217.70.178.240])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B1BAB400FF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Feb 2024 09:38:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B1BAB400FF
Received: from relay5-d.mail.gandi.net (unknown [217.70.183.197])
 by mslow1.mail.gandi.net (Postfix) with ESMTP id C16E5C1A02
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Feb 2024 09:38:47 +0000 (UTC)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 26B2E1C0004;
 Tue,  6 Feb 2024 09:38:43 +0000 (UTC)
Date: Tue, 6 Feb 2024 10:38:42 +0100
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
To: Andrew Lunn <andrew@lunn.ch>
Message-ID: <20240206103842.0a72ed27@device-28.home>
In-Reply-To: <20240204-keee-u32-cleanup-v1-0-fb6e08329d9a@lunn.ch>
References: <20240204-keee-u32-cleanup-v1-0-fb6e08329d9a@lunn.ch>
Organization: Bootlin
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.39; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-GND-Sasl: maxime.chevallier@bootlin.com
X-Mailman-Approved-At: Tue, 06 Feb 2024 16:04:25 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bootlin.com; s=gm1; t=1707212323;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=R1JkbkHYZjBJccdGuVGW2VQafUHeELVUbK2T3y/y9DU=;
 b=dKXLtGPRXyrAMOrPTXbdEyI20UREUIhUzE+Mf1Z5vpipNPJdGYMVPkrsUQeoigC1hwWnkb
 +sM/Si7s/HdqTv9NJGKDnsV0uLZobsBHMzgjmbD4K2wnudQJXaLBCBra8zBnv8j0xNA7kC
 8vGEoiOuRG5cnA6VA9PtfySl3RUAvBpgybPSqe+1fsUeivB74y2RiRnOcRwyMSPcRb032N
 hOtgA17p2NVRic19T0+WnJSj06W4R2W6/zdYQQ1bcLS98kh3PkmcXJdgUjfn03M3Zfql6B
 Kb1Rtjq5ghJdvaH+4DpXNXzP2XvEKZl5yXAe4j3mW0eXFWOMNUP9ZRiKbIWvbg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=bootlin.com header.i=@bootlin.com header.a=rsa-sha256
 header.s=gm1 header.b=dKXLtGPR
Subject: Re: [Intel-wired-lan] [PATCH 0/8] drivers: net: Convert EEE
 handling to use linkmode bitmaps
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
Cc: Ariel Elior <aelior@marvell.com>, Manish Chopra <manishc@marvell.com>,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello Andrew,

On Sun, 04 Feb 2024 17:40:17 -0600
Andrew Lunn <andrew@lunn.ch> wrote:

> EEE has until recently been limited to lower speeds due to the use of
> the legacy u32 for link speeds. This restriction has been lifted, with
> the use of linkmode bitmaps. This patchset convert some MAC drivers
> still using the old _u32 to link modes, with the aim of soon being
> able to remove the legacy _u32 members in the keee structure.

Although I don't have proper hardware to test all these, I've read
the patches and I didn't find any obvious issues besides the typo in
patch 7.

Regards,

Maxime
