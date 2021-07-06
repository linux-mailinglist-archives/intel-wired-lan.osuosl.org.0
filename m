Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 27A753BD867
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Jul 2021 16:37:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CA54E60895;
	Tue,  6 Jul 2021 14:37:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UAMSMjO3L6h0; Tue,  6 Jul 2021 14:37:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CE4ED60652;
	Tue,  6 Jul 2021 14:37:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AC2711BF479
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jul 2021 14:23:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9651440333
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jul 2021 14:23:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2oJzl0EbNl2t for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Jul 2021 14:23:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E282940331
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jul 2021 14:23:18 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5F4A661AC0;
 Tue,  6 Jul 2021 14:23:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1625581398;
 bh=kLVem+lC4RwgaSvlRxNWh6WClbsCqyCWUybrD/hsjdo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dvBxQHrmw6EPUmkbmwxaVbFTYhRXd43UhsERgeVTjyeN1Rok/1RGCSSvjSJdC/5IL
 GrDuLOEZKo2AWon9u7+Be3SWrEOtuXBnZ3J/UgSLqU3q6dUA9JZObFM4oeEtq3LW7i
 8/JJaq8D+AMhDJy0bA4rtdwqp2b/CJLsEue/hs2EeqUFUHjX0nJN8e+gLNnugBJLf5
 GNx3/AIhIMoJalL/yvToUL/G1X9ikKh0hxME4PbsbFo07r8tOKQcvVUCC1vv5Hqzs3
 JyZEwbtjX2jukib2GAOPYALdIQ2ZqysUaG3sGtFAaHrURNkghH84UJ/OfEOCZrV3pH
 fM8gEFrTlWXpw==
Received: by pali.im (Postfix)
 id D17896E9; Tue,  6 Jul 2021 16:23:15 +0200 (CEST)
Date: Tue, 6 Jul 2021 16:23:15 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>
Message-ID: <20210706142315.ve22wypovdezqnva@pali>
References: <20210702045120.22855-1-aaron.ma@canonical.com>
 <20210704142808.f43jbcufk37hundo@pali>
 <20210705230212.GC142312@rocinante>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210705230212.GC142312@rocinante>
User-Agent: NeoMutt/20180716
X-Mailman-Approved-At: Tue, 06 Jul 2021 14:37:52 +0000
Subject: Re: [Intel-wired-lan] [PATCH 1/2] igc: don't rd/wr iomem when PCI
 is removed
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
Cc: Marek =?utf-8?B?QmVow7pu?= <kabel@kernel.org>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 linux-pci@vger.kernel.org, kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlc2RheSAwNiBKdWx5IDIwMjEgMDE6MDI6MTIgS3J6eXN6dG9mIFdpbGN6ecWEc2tpIHdy
b3RlOgo+IEhpIFBhbGksCj4gCj4gWy4uLl0KPiA+IEFhcm9uOiBjYW4geW91IGNoZWNrIGlmIHBj
aV9kZXZfaXNfZGlzY29ubmVjdGVkKCkgaXMgcmVhbGx5IHNvbWV0aGluZwo+ID4gd2hpY2ggc2hv
dWxkIGJlIHVzZWQgYW5kIGl0IGhlbHBzIHlvdT8KPiAKPiBXaGlsZSBoYXZpbmcgYSBjbG9zZXIg
bG9vaywgSSd2ZSBub3RpY2VkIHRoYXQgcXVpdGUgYSBmZXcgb2YgdGhlIG5ldHdvcmsKPiBkcml2
ZXJzIGhhbmRsZSB0aGlzIHNvbWV3aGF0LCBhcyBJIHNlZSB0aGF0IGEgbG90IG9mIHRoZW0gaGF2
ZSBzb21lIHNvcnQKPiBvZiBJL08gZXJyb3IgaGFuZGxlcyBzZXQgd2hlcmUgYSBjaGVjayBmb3Ig
InBjaV9jaGFubmVsX2lvX3Blcm1fZmFpbHVyZSIKPiBzZWVtIHRvIGJlIGhhdmluZyBwbGFjZS4g
IFRoaXMgaXMgYWxzbyB0cnVlIGZvciB0aGlzIGRyaXZlciBsb29raW5nIGF0Cj4gdGhlIGlnY19p
b19lcnJvcl9kZXRlY3RlZCgpLgo+IAo+IElzIHRoaXMgbm90IHdvcmtpbmcgZm9yIHRoZSBpZ2Mg
ZHJpdmVyPyAgT3IgaXMgdGhpcyBmb3Igc29tZXRoaW5nCj4gY29tcGxldGVseSBkaWZmZXJlbnQ/
CgpJIGd1ZXNzIHRoYXQgdGhpcyBjYWxsYmFjayBpcyBjYWxsZWQgd2hlbiBCcmlkZ2UgcmVjZWl2
ZSBzb21lIGtpbmQgb2YKZmF0YWwgZXJyb3IuIE5vbi1BRVItYXdhcmUgYnJpZGdlcyBwcm9iYWJs
eSBkbyBub3QgaGF2ZSB0byBpbmZvcm0gc3lzdGVtCnRoYXQgZXJyb3IgaGFwcGVuZWQgYW5kIGtl
cm5lbCB3b3VsZCBub3QgY2FsbCB0aGlzIGNhbGxiYWNrLiBTbyBJIGd1ZXNzCml0IGRlcGVuZHMg
b24gdG8gd2hpY2ggIm1hY2hpbmUiIHlvdSBuZWVkIHRoaXMgbmV0d29yayBhZGFwdGVyLgoKU28g
aW4gbXkgb3BpbmlvbiB0aGlzIGNhbGxiYWNrIGlzIHRoZXJlIGZvciBQQ0kgc3Vic3lzdGVtIHRv
IGluZm9ybQpkcml2ZXIgdGhhdCBlcnJvciBoYXBwZW5lZCBhbmQgbGV0IGRyaXZlciB0byBkbyBh
bnkgaHcgc3BlY2lmaWMgcmVjb3ZlcnkKaWYgaXQgaXMgcG9zc2libGUuCgpCdXQgSSB0aGluayBw
cm9ibGVtIGRlc2NyaWJlZCBoZXJlIGNhbiBiZSBzbGlnaHRseSBkaWZmZXJlbnQuIEl0IGlzCm5l
ZWRlZCB0byBjaGVjayBpZiBkZXZpY2UgaXMgc3RpbGwgYWxpdmUgb3Igd2FzIGRpc2Nvbm5lY3Rl
ZC4KCj4gSGF2aW5nIHNhaWQgYWxsIHRoYXQsIEkgYW0gbm90IGFuIGV4cGVydCBpbiBuZXR3b3Jr
IGRyaXZlcnMsIHNvIHBhcmRvbgo+IG1lIGlmIEkgYW0gYXNraW5nIGFib3V0IHNvbWV0aGluZyBj
b21wbGV0ZWx5IGRpZmZlcmVudCwgYW5kIEkgYXBvbG9naXNlCj4gaWYgdGhhdCBpcyB0aGUgY2Fz
ZS4KPiAKPiA+IEJqb3JuLCBLcnp5c3p0b2Y6IHdoYXQgZG8geW91IHRoaW5rIGFib3V0IGxpZnRp
bmcgaGVscGVyIGZ1bmN0aW9uCj4gPiBwY2lfZGV2X2lzX2Rpc2Nvbm5lY3RlZCgpIHRvIGJlIGF2
YWlsYWJsZSB0byBhbGwgZHJpdmVycyBhbmQgbm90IG9ubHkgaW4KPiA+IFBDSSBzdWJzeXN0ZW0/
Cj4gCj4gTm8gb2JqZWN0aW9ucyBmcm9tIG1lLCBpZiB3ZSBiZWxpZXZlIGl0J3MgdXNlZnVsIGFu
ZCB0aGF0IGl0IG1pZ2h0Cj4gZW5jb3VyYWdlIHBlb3BsZSB0byB1c2UgYSBjb21tb24gQVBJLiAg
Q3VycmVudGx5LCBJIGNhbiBzZWUgYXQgbGVhc3QKPiBmaXZlIHBvdGVudGlhbCB1c2VycyBvZiB0
aGlzIGhlbHBlci4KPiAKPiAJS3J6eXN6dG9mCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2ly
ZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtd2lyZWQtbGFuCg==
