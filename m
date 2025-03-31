Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 42233A767E2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 31 Mar 2025 16:30:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 31C1E40956;
	Mon, 31 Mar 2025 14:30:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7_OYqKQOh0Gc; Mon, 31 Mar 2025 14:30:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9D6884098C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1743431421;
	bh=VFIvp5VniFRkYy5hkXsYY1LBxwev4K/a9oaC6jauFow=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=avA8DngJJoHz7oYPjeOI1L/wbW/7yzP9YbqwjOLkLudD/8TQwig07xo4HyG1AcIlw
	 kk7Czezhm8GHdBBTXnhERl0D3H3HW0jf96JdVH7PRvKeYnNDA+GqmKMbJigZ1ZsvXu
	 K/MXLBhO8Tz0PRx/SXh5NzVgQHyezq95uB0gRStbFSYBI1s+GOMoDMDORrCbllv5sw
	 dKzu0S7zVwt1coAs/2IZxsNj7VA+jLzPkeVFdFwx1qmjEdf/0xZZ/LXsR1jNtkJiJZ
	 AIdKyD6wAqmhToXpv2MVCK+b2NaZsyijRxLk0ZFi2sRRN96jH/f4pZ66ZgPaDr7g2R
	 RTv2vwSKhOlvw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9D6884098C;
	Mon, 31 Mar 2025 14:30:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4BC501B5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Mar 2025 14:30:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2898940616
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Mar 2025 14:30:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LYiXr3RE_H1E for <intel-wired-lan@lists.osuosl.org>;
 Mon, 31 Mar 2025 14:30:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3C4D7405DB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3C4D7405DB
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3C4D7405DB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Mar 2025 14:30:13 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1tzG9H-007aKX-Kb; Mon, 31 Mar 2025 16:29:59 +0200
Date: Mon, 31 Mar 2025 16:29:59 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Cc: Jacek Kowalski <jacek@jacekk.info>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Message-ID: <978d1158-c419-4a59-b0dd-ad5be9869991@lunn.ch>
References: <c0435964-44ad-4b03-b246-6db909e419df@jacekk.info>
 <9ad46cc5-0d49-8f51-52ff-05eb7691ef61@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9ad46cc5-0d49-8f51-52ff-05eb7691ef61@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=VFIvp5VniFRkYy5hkXsYY1LBxwev4K/a9oaC6jauFow=; b=mF7uknFwslSgNDplU7qtD4tjzz
 4ZbCxwXsInxKsRRYh3jjHFhaBRmV8rLkSexH5I6S3f4gNUGNcK7yzKVZZdp4KkV/szFUQzQohce//
 0A4vbN0w1lpDuN4OaFcahrXq4z+XcbRRcrYckhusHpTBDexqA/RabOa97nrElIz6Jdrc=;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=mF7uknFw
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: add option not to verify NVM
 checksum
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

> From a technical perspective, your patch looks correct. However, if the
> checksum validation is skipped, there is no way to distinguish between the
> simple checksum error described above, and actual NVM corruption, which may
> result in loss of functionality and undefined behavior. This means, that if
> there is any functional issue with the network adapter on a given system,
> while checksum validation was suspended by the user, we will not be able to
> offer support

We have a similar issue with SFP, which contain a checksum. But a few
vendors are lazy, they set a serial number and don't recalculate the
checksum.

We handle this by adding quirks. We know which vendors/products have
FUBAR checksums, and allow them to be used when the checksum is
FUBAR. You could do something similar here, add a list of vendors with
known FUBAR checksums and allow them to be used, but taint the kernel,
and print a warming that the device is unsupported because the vendor
messed up the CRC.

	Andrew
