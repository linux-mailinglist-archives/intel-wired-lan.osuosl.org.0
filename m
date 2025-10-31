Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C115AC271DA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Oct 2025 23:14:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4899A41F8F;
	Fri, 31 Oct 2025 22:14:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pDKlWQUuwClu; Fri, 31 Oct 2025 22:14:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B9AA441F9C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761948897;
	bh=OZqYfP9r07ZNzzaGWi0Vklfkkthz6L1bfCHZ2RSkgJg=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=wI2dbQJf536p3uzN1KwRv91fLI6SgWJY+phnGObBRaHaQoOEmnMhjRssuKxdhqAKb
	 9W4A53QyhV+620AA74L3QtA28vTiWGZQUpx2BHUsVnF9PUs/do0ck9tL+mN8JHA2ny
	 rUrWqcCDhMG9blbOANQRqvrNAYVYI6eySlPJVc6VUltoLb9EAawRzDbrulynC35Y9X
	 V25RvarSFC2WljCzSJmwha+iospkANkosPAnej18k1OZx0EibKj2dnnklY/ioQO/rg
	 JbrQIpPGKCOjK9AfI6MZ3JVkp7yUjkglQIZiT2fu4abg1ttQe8hP54lieZ5GZAQqmV
	 X7AKSiHxiEXEg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B9AA441F9C;
	Fri, 31 Oct 2025 22:14:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 86D86CD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Oct 2025 22:14:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6C7E283FAC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Oct 2025 22:14:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vb76z2EesI02 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 Oct 2025 22:14:53 +0000 (UTC)
X-Greylist: delayed 967 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 31 Oct 2025 22:14:49 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 85C5283BE7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 85C5283BE7
Received-SPF: Pass (sender SPF authorized) identity=helo;
 client-ip=2a02:2350:5:407::1;
 helo=mailrelay-egress8.pub.mailoutpod2-cph3.one.com;
 envelope-from=peter@berginkonsult.se; receiver=<UNKNOWN> 
Received: from mailrelay-egress8.pub.mailoutpod2-cph3.one.com
 (mailrelay-egress8.pub.mailoutpod2-cph3.one.com [IPv6:2a02:2350:5:407::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 85C5283BE7
 for <intel-wired-lan@osuosl.org>; Fri, 31 Oct 2025 22:14:49 +0000 (UTC)
X-HalOne-ID: beee17a2-b6a4-11f0-9682-e90f2b8e16ca
Received: from [10.32.31.9] (67-207-113-218.static.wiline.com [67.207.113.218])
 by mailrelay2.pub.mailoutpod2-cph3.one.com (Halon) with ESMTPSA
 id beee17a2-b6a4-11f0-9682-e90f2b8e16ca;
 Fri, 31 Oct 2025 21:58:36 +0000 (UTC)
Message-ID: <04470870-d490-46d2-8bb7-5599b67b6cd1@berginkonsult.se>
Date: Fri, 31 Oct 2025 14:58:33 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US, sv-SE
From: Peter Bergin <peter@berginkonsult.se>
To: intel-wired-lan@osuosl.org
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 t=1761947916; x=1762552716; 
 d=berginkonsult.se; s=rsa1;
 h=content-transfer-encoding:content-type:to:subject:from:mime-version:date:
 message-id:from;
 bh=OZqYfP9r07ZNzzaGWi0Vklfkkthz6L1bfCHZ2RSkgJg=;
 b=wPj0iS4bnzO6PRXpAvXXYb5HnHLhW/MQW62nk+5BgEAag+tjoCiUK0dh+sJz7aL0GBAEeZ1I//SyI
 D8eju2nkrDjhAGCR3sVFlUdkPaPxJGkawFJgdHAdD4aTKiTedJkvP83IIN/H5KsuSAHN1TPWnglQVr
 H4+VgUdgHl+jGw83VaTSGvtBSEZh1aSaudXZtz2k7LO6LW5MrF/XIDdDlfyLwg6F5ebT61vb8ag7+e
 3yG8IQhYu75xE1RQHOcVLv8TEDYc6Sbkk1Sp4m3SjUawHJH6R986C6n+Gw0IvxSEJXkTnBUsusXDtW
 bKX0QD5cGpXEgOAp9yfzbGgvTpfGGdQ==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 t=1761947916; x=1762552716; 
 d=berginkonsult.se; s=ed1;
 h=content-transfer-encoding:content-type:to:subject:from:mime-version:date:
 message-id:from;
 bh=OZqYfP9r07ZNzzaGWi0Vklfkkthz6L1bfCHZ2RSkgJg=;
 b=jrdTUwHS3D7AKY/aJZaY3L9pYl9rX6MGdkSeFx/vTVKQ6UrAsooeP4ondaLKBUEKIrZEQqZouWzV2
 6PsQKlNCw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=berginkonsult.se
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=berginkonsult.se
 header.i=@berginkonsult.se header.a=rsa-sha256 header.s=rsa1
 header.b=wPj0iS4b; 
 dkim=pass header.d=berginkonsult.se header.i=@berginkonsult.se
 header.a=ed25519-sha256 header.s=ed1 header.b=jrdTUwHS
Subject: [Intel-wired-lan] Connect i210 with external phy over sgmii
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

Hi,

I'm currently facing a technical challenge where I'm bringing up an 
embedded system with a i210 connected to an external PHY chip over 
SGMII. The external PHY has its own driver in the PHY abstraction layer 
and I would like to connect it with the igb driver or get them work 
together. I'm currently deep in to the igb driver and fighting to find 
out the best way forward. Any help or recommendations are very welcome!

I have hard time understand the abstractions in the igb driver. Is there 
something similar there already today and a preferred way now where it 
is suitable to just plug in a PHY device?

I basically want to setup i210 to use external PHY, SGMII and MDIO. 
Create a mii_bus, find the PHY on it and then let that driver handle 
initialization.

Best regards,
/Peter

