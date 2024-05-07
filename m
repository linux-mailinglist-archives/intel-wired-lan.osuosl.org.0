Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 862468BE1B9
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 May 2024 14:10:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C5081401EF;
	Tue,  7 May 2024 12:10:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Pud8ClMss7ac; Tue,  7 May 2024 12:10:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7D6C540474
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715083838;
	bh=h3Y7Sox6qKI0Ql5CybfO/mRydkNB4HCT/gEUdZDGA7U=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BLwV2ESWswTKA6pxImeOb7twwzuZ3nPeKIGOdmJcUye72Rupk6rxk7TCB8feVEQZf
	 giM3RJXoltCbGL3hPhOZ6u+3UXT7v04/9D0xcmzpo+QvQko9FIhyyWozhGp92+mCZT
	 iUuCbMURuQQwwf5trHQ77JYK1N+AZkdUYlDM/4t9/vZsePa1RhvLqSQZSbsmaXRODL
	 9+iXOiuUtAVvT71qRPkw9o6vsWsGvVAbkmUr9QhQYneGDDqmtOycarmu8KBkpNFNdw
	 lR7v1QXTqa4zECQHo9fSgGEfkZIpH4QyxgRQ80+d7sv8mF+q3K9Pvnz0SOcYpKD/HB
	 lKEE/KGGVT6ig==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7D6C540474;
	Tue,  7 May 2024 12:10:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4DE071BF294
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 May 2024 12:10:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 45AAA401EF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 May 2024 12:10:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I9jDvnhSHga2 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 May 2024 12:10:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 03E3C401A3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 03E3C401A3
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 03E3C401A3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 May 2024 12:10:34 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1s4JeN-00Eqkc-L8; Tue, 07 May 2024 14:10:27 +0200
Date: Tue, 7 May 2024 14:10:27 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: En-Wei WU <en-wei.wu@canonical.com>
Message-ID: <aad721c1-93c4-48bd-9f05-00c4f6301dce@lunn.ch>
References: <20240502091215.13068-1-en-wei.wu@canonical.com>
 <f47e0bb6-fb3f-4d0e-923a-cdb5469b6cbe@lunn.ch>
 <CAMqyJG0kMFShx8Kir17mNZ1rD7SaBt2f_Wpv4ir+5-92v3bNaA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMqyJG0kMFShx8Kir17mNZ1rD7SaBt2f_Wpv4ir+5-92v3bNaA@mail.gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=h3Y7Sox6qKI0Ql5CybfO/mRydkNB4HCT/gEUdZDGA7U=; b=40n4po0EwrBVuqnjs4CXcD2ksD
 bZMt21lN+nkQVwytBhW77WkseWqZm91klqL7HdQXGNlCHZ6KWlLX/M7Q5zA264agdt5Yf5Je27IuH
 d4SWfsrYl1n99WISFXI1h1u69W5G1Vx48LNqfvmjDkt0AxlFJfYgM38qCOhbolJO07H8=;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=40n4po0E
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: fix link fluctuations problem
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
Cc: jesse.brandeburg@intel.co, netdev@vger.kernel.org, rickywu0421@gmail.com,
 linux-kernel@vger.kernel.org, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, anthony.l.nguyen@intel.com,
 pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, May 07, 2024 at 11:24:05AM +0200, En-Wei WU wrote:
> > Why PHY is this?
> It's the Intel I219-LM, and I haven't found any other device having
> the same issue.

There is no Linux PHY driver for this device, only the code buried in
the e1000e MAC driver. Sometimes Intel use Marvell PHYs, and there are
a couple of work arounds in the Marvell PHY driver, which might of
given you a clue. But not in this case...

      Andrew
