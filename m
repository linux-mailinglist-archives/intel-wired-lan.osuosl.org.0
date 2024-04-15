Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B7F98A523C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Apr 2024 15:51:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A0A3F40AA5;
	Mon, 15 Apr 2024 13:51:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aeFcvxUa14Z0; Mon, 15 Apr 2024 13:51:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CBFF340A6D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713189101;
	bh=ymdSbtmN4ja8Uco9kz68ASVywr9aBZbH2f8vREr8AbU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QcbGNdsvvRNh0gVeiX8VWD6mL6XGUS1lAyHz/lu7WuEZvTlL8PipnyQTfZu9K9uEF
	 8Yh15quxVDl0V4HgNFRijGTlvVAcOJhgRKJmtvIYR6G0KGDmjC8JU65dbX1kxcWiXx
	 vy1F9W8l437YS7BPplDfF8J+Mo7+FESSu7L2sU+ZWwSmsEB5chogkCKGVnjaV31zWr
	 PkxQkiZE4iz926PAZvjU/CKWohJBxX/FBAWfT3PkjHt0nAHUfWBBh9i4z9CaqUb4UD
	 35E9bEFaYP2nnxIVjQBnoIycqhXi7JIRSjZb0vgmhcWjsKWDMBxk0h/jzQn2NICmDq
	 CCrlD6lflvs0A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CBFF340A6D;
	Mon, 15 Apr 2024 13:51:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 15A5A1BF285
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Apr 2024 13:51:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0DF53401D5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Apr 2024 13:51:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SWSfDZIlZXZ4 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Apr 2024 13:51:38 +0000 (UTC)
X-Greylist: delayed 103767 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 15 Apr 2024 13:51:37 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5C91B40119
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5C91B40119
Received-SPF: Pass (sender SPF authorized) identity=helo;
 client-ip=83.223.95.100; helo=bmailout1.hostsharing.net;
 envelope-from=foo00@h08.hostsharing.net; receiver=<UNKNOWN> 
Received: from bmailout1.hostsharing.net (bmailout1.hostsharing.net
 [83.223.95.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5C91B40119
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Apr 2024 13:51:37 +0000 (UTC)
Received: from h08.hostsharing.net (h08.hostsharing.net
 [IPv6:2a01:37:1000::53df:5f1c:0])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256
 client-signature RSA-PSS (4096 bits) client-digest SHA256)
 (Client CN "*.hostsharing.net", Issuer "RapidSSL TLS RSA CA G1" (verified OK))
 by bmailout1.hostsharing.net (Postfix) with ESMTPS id BAC6A300037E5;
 Mon, 15 Apr 2024 15:51:33 +0200 (CEST)
Received: by h08.hostsharing.net (Postfix, from userid 100393)
 id 84A1639E; Mon, 15 Apr 2024 15:51:33 +0200 (CEST)
Date: Mon, 15 Apr 2024 15:51:33 +0200
From: Lukas Wunner <lukas@wunner.de>
To: Kurt Kanzenbach <kurt@linutronix.de>
Message-ID: <Zh0w5by0atP6XuX5@wunner.de>
References: <20240411-igc_led_deadlock-v1-1-0da98a3c68c5@linutronix.de>
 <Zhubjkscu9HPgUcA@wunner.de> <877ch0b901.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <877ch0b901.fsf@kurt.kurt.home>
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=wunner.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] igc: Fix deadlock on module
 removal
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
 Roman Lozko <lozko.roma@gmail.com>, Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sun, Apr 14, 2024 at 11:15:26AM +0200, Kurt Kanzenbach wrote:
> Perfect. I was wondering why you are not submitting the patch
> yourself. Then, please go ahead and submit the patch.

Here you go:

https://lore.kernel.org/netdev/2f1be6b1cf2b3346929b0049f2ac7d7d79acb5c9.1713188539.git.lukas@wunner.de/

You may want to double-check that it fixes the issue and doesn't
cause any new ones.

Thanks,

Lukas
