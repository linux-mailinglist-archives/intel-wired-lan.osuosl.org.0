Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0329D37AEAA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 May 2021 20:49:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9BC3B405B3;
	Tue, 11 May 2021 18:49:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7XQ3qLZ-6ytb; Tue, 11 May 2021 18:49:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8A1FD40596;
	Tue, 11 May 2021 18:49:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0B24B1BF4E6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 May 2021 18:49:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id ED577403DF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 May 2021 18:49:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=infradead.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K33OvlDkZ4zp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 May 2021 18:49:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 03B48405AF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 May 2021 18:49:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=ZkOT+h7IwVrb/g/jzXBMqGF7GJVTbVn2CyQ5yD1dGC0=; b=ob16GH3+IUlXSVCRaH6KiTLg7W
 KVGr+qMse8+2g2wZdN5XpCzI8gx5fFedBPPM7a0rOUni9p45nSoKas8LoTGRgHGNdkGawym72lhqM
 wJbSskCAJ6pc2JLqZ19l1wZaFi+zkpp51vBlynJg4PBatQf22v1P4WdbiiA7PqNpj7tXatV247aE2
 21UgpSPrBZpRsGMfHIgOaz02Ys+BYCWvtFjxa9JaCK0gBNYJHLasByutmseHgF2XExtnxn+lpHG3w
 WA3D4PNCmFk+6mL1JXUn9rz1vDUXpsZ/V7mW3lf+BHtLXAPoZnwv53hS1vP1JcbO5oRf8GsV9VHsT
 j4deW4PQ==;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat
 Linux)) id 1lgXQY-007ZFN-Mj; Tue, 11 May 2021 18:48:20 +0000
Date: Tue, 11 May 2021 19:48:18 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Jonathan Corbet <corbet@lwn.net>
Message-ID: <YJrRcgmrqJLSOjR5@casper.infradead.org>
References: <cover.1620744606.git.mchehab+huawei@kernel.org>
 <95eb2a48d0ca3528780ce0dfce64359977fa8cb3.1620744606.git.mchehab+huawei@kernel.org>
 <YJq9abOeuBla3Jiw@lunn.ch> <8735utdt6z.fsf@meer.lwn.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8735utdt6z.fsf@meer.lwn.net>
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlLCBNYXkgMTEsIDIwMjEgYXQgMTI6MjQ6NTJQTSAtMDYwMCwgSm9uYXRoYW4gQ29yYmV0
IHdyb3RlOgo+IEFuZHJldyBMdW5uIDxhbmRyZXdAbHVubi5jaD4gd3JpdGVzOgo+IAo+ID4+IC1t
b25pdG9yaW5nIHRvb2xzIHN1Y2ggYXMgaWZzdGF0IG9yIHNhciDigJNuIERFViBbaW50ZXJ2YWxd
IFtudW1iZXIgb2Ygc2FtcGxlc10KPiA+PiArbW9uaXRvcmluZyB0b29scyBzdWNoIGFzIGBpZnN0
YXRgIG9yIGBzYXIgLW4gREVWIFtpbnRlcnZhbF0gW251bWJlciBvZiBzYW1wbGVzXWAKPiA+Cj4g
PiAuLi4KPiA+Cj4gPj4gIEZvciBleGFtcGxlOiBtaW5fcmF0ZSAxR2JpdCAzR2JpdDogVmVyaWZ5
IGJhbmR3aWR0aCBsaW1pdCB1c2luZyBuZXR3b3JrCj4gPj4gLW1vbml0b3JpbmcgdG9vbHMgc3Vj
aCBhcyBpZnN0YXQgb3Igc2FyIOKAk24gREVWIFtpbnRlcnZhbF0gW251bWJlciBvZiBzYW1wbGVz
XQo+ID4+ICttb25pdG9yaW5nIHRvb2xzIHN1Y2ggYXMgYGBpZnN0YXRgYCBvciBgYHNhciAtbiBE
RVYgW2ludGVydmFsXSBbbnVtYmVyIG9mIHNhbXBsZXNdYGAKPiA+Cj4gPiBJcyB0aGVyZSBhIGRp
ZmZlcmVuY2UgYmV0d2VlbiBgIGFuZCBgYCA/IERvZXMgaXQgbWFrZSBzZW5zZSB0byBiZQo+ID4g
Y29uc2lzdGVudD8KPiAKPiBUaGlzIGlzIGBqdXN0IHdlaXJkIHF1b3Rlc2AKCnVtbSAuLi4gYHRo
aXNgIGlzIHN1cHBvc2VkIHRvIGJlICJpbnRlcnByZXRlZCB0ZXh0IgpodHRwczovL2RvY3V0aWxz
LnNvdXJjZWZvcmdlLmlvL2RvY3MvcmVmL3JzdC9yZXN0cnVjdHVyZWR0ZXh0Lmh0bWwjaW5saW5l
LW1hcmt1cAoKTWF5YmUgd2UgZG9uJ3QgYWN0dWFsbHkgaW50ZXJwcmV0IGl0LgoKPiBUaGlzIGlz
IGBgbGl0ZXJhbCB0ZXh0YGAgc2V0IGluIG1vbm9zcGFjZSBpbiBwcm9jZXNzZWQgb3V0cHV0Lgo+
IAo+IFRoZXJlIGlzIGEgY2VydGFpbiB0ZW5zaW9uIGJldHdlZW4gdGhvc2Ugd2hvIHdhbnQgdG8g
c2VlIGxpYmVyYWwgdXNlIG9mCj4gbGl0ZXJhbC10ZXh0IG1hcmt1cCwgYW5kIHRob3NlIHdobyB3
b3VsZCByYXRoZXIgaGF2ZSBsZXNzIG1hcmt1cCBpbiB0aGUKPiB0ZXh0IG92ZXJhbGw7IGNlcnRh
aW5seSwgaXQncyBiZXR0ZXIgbm90IHRvIGdvIHRvdGFsbHkgbnV0cyB3aXRoIGl0LgoKSSByZWFs
bHkgYXBwcmVjaWF0ZSB0aGUgd29yayB5b3UgZGlkIHRvIHJlZHVjZSB0aGUgYW1vdW50IG9mCm1h
cmt1cCB0aGF0J3MgbmVlZGVkIQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBv
c3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LXdpcmVkLWxhbgo=
