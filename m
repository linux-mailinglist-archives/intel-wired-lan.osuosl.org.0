Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 852D937AD07
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 May 2021 19:23:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0331E842EC;
	Tue, 11 May 2021 17:23:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gtmepE07gt0i; Tue, 11 May 2021 17:23:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 00DAB8428B;
	Tue, 11 May 2021 17:23:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5B8D21C1135
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 May 2021 17:23:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 49A828428B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 May 2021 17:23:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id deZp9FgorONp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 May 2021 17:23:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7615E84284
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 May 2021 17:23:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ku5o60Uda8ZBIzKz23zeLhUSNmtSK2p64+IzFDQCsXE=; b=dMLtNLFZrTo+mfkJIAn6TGzGvt
 E0nX+PEqBjjPXElMrcB216WzYo5nT8Cz179AyVOlatWlbrRhCc+YpoCPJK7J9BcsjPh7TeVfUoxFW
 ZzZUAPbOy2Y1dc+hFavdGEnOo6BW+jNIEiUjDCl89UCY3tmqIeoE+thU0j2cIFDuLk4M=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1lgW5p-003nl3-SY; Tue, 11 May 2021 19:22:49 +0200
Date: Tue, 11 May 2021 19:22:49 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Message-ID: <YJq9abOeuBla3Jiw@lunn.ch>
References: <cover.1620744606.git.mchehab+huawei@kernel.org>
 <95eb2a48d0ca3528780ce0dfce64359977fa8cb3.1620744606.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <95eb2a48d0ca3528780ce0dfce64359977fa8cb3.1620744606.git.mchehab+huawei@kernel.org>
Subject: Re: [Intel-wired-lan] [PATCH 5/5] docs: networking: device_drivers:
 fix bad usage of UTF-8 chars
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
Cc: Jonathan Corbet <corbet@lwn.net>, netdev@vger.kernel.org,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 linux-kernel@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiAtbW9uaXRvcmluZyB0b29scyBzdWNoIGFzIGlmc3RhdCBvciBzYXIg4oCTbiBERVYgW2ludGVy
dmFsXSBbbnVtYmVyIG9mIHNhbXBsZXNdCj4gK21vbml0b3JpbmcgdG9vbHMgc3VjaCBhcyBgaWZz
dGF0YCBvciBgc2FyIC1uIERFViBbaW50ZXJ2YWxdIFtudW1iZXIgb2Ygc2FtcGxlc11gCgouLi4K
Cj4gIEZvciBleGFtcGxlOiBtaW5fcmF0ZSAxR2JpdCAzR2JpdDogVmVyaWZ5IGJhbmR3aWR0aCBs
aW1pdCB1c2luZyBuZXR3b3JrCj4gLW1vbml0b3JpbmcgdG9vbHMgc3VjaCBhcyBpZnN0YXQgb3Ig
c2FyIOKAk24gREVWIFtpbnRlcnZhbF0gW251bWJlciBvZiBzYW1wbGVzXQo+ICttb25pdG9yaW5n
IHRvb2xzIHN1Y2ggYXMgYGBpZnN0YXRgYCBvciBgYHNhciAtbiBERVYgW2ludGVydmFsXSBbbnVt
YmVyIG9mIHNhbXBsZXNdYGAKCklzIHRoZXJlIGEgZGlmZmVyZW5jZSBiZXR3ZWVuIGAgYW5kIGBg
ID8gRG9lcyBpdCBtYWtlIHNlbnNlIHRvIGJlCmNvbnNpc3RlbnQ/CgoJQW5kcmV3Cl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBt
YWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vv
c2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
