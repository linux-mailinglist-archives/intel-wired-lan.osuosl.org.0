Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 06FFD37AF1B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 May 2021 21:10:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 860A183B56;
	Tue, 11 May 2021 19:10:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JAe7Klk4OUxL; Tue, 11 May 2021 19:10:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5C9B083B3F;
	Tue, 11 May 2021 19:10:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6D9661BF3C9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 May 2021 19:10:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5B6FF606CA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 May 2021 19:10:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Pj_e09nC7Dyu for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 May 2021 19:10:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 71F0F60674
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 May 2021 19:10:35 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id D1CE661626;
 Tue, 11 May 2021 19:10:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1620760234;
 bh=e54D+JL7G0fBmcvlSsTLoGw5QlbnsspS2RdH8ESWbLg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Mw2rodQrteAc7YOIRxIl2TsI0vlaRbRWOhWt/N3R4Vou6GUuZDCD0NY9j4YljQgyz
 atAwkCCqXc7HLwaXvYrqa8MLJosjjgC6Vbl5U/bdQt//JGlf/pmueW8BN+WKUCJtx2
 BS7AVC2k75NT+WJMh+9tQslurOQ5EpMhdgc+9ZFQnX6JuHFpOR3FDSwPgEToJC/HUz
 J7CShSGPDmGMCgjDcf17jxx09XhC+3VYRKeGQb7dYwGFrjA2EeNyThD+mMW3jpOsnS
 AjuQ3F6zLxMXRGH+ZrHo0qo9EjHKK5XbhHXyLIhe/NSobmMHDYae2fShv+00Tl6f9Y
 WQv0lV53C0T4g==
Date: Tue, 11 May 2021 21:10:28 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Matthew Wilcox <willy@infradead.org>
Message-ID: <20210511211028.557de948@coco.lan>
In-Reply-To: <YJrRcgmrqJLSOjR5@casper.infradead.org>
References: <cover.1620744606.git.mchehab+huawei@kernel.org>
 <95eb2a48d0ca3528780ce0dfce64359977fa8cb3.1620744606.git.mchehab+huawei@kernel.org>
 <YJq9abOeuBla3Jiw@lunn.ch> <8735utdt6z.fsf@meer.lwn.net>
 <YJrRcgmrqJLSOjR5@casper.infradead.org>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
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
 Linux Doc Mailing List <linux-doc@vger.kernel.org>, netdev@vger.kernel.org,
 Jonathan Corbet <corbet@lwn.net>, linux-kernel@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RW0gVHVlLCAxMSBNYXkgMjAyMSAxOTo0ODoxOCArMDEwMApNYXR0aGV3IFdpbGNveCA8d2lsbHlA
aW5mcmFkZWFkLm9yZz4gZXNjcmV2ZXU6Cgo+IE9uIFR1ZSwgTWF5IDExLCAyMDIxIGF0IDEyOjI0
OjUyUE0gLTA2MDAsIEpvbmF0aGFuIENvcmJldCB3cm90ZToKPiA+IEFuZHJldyBMdW5uIDxhbmRy
ZXdAbHVubi5jaD4gd3JpdGVzOgo+ID4gICAKPiA+ID4+IC1tb25pdG9yaW5nIHRvb2xzIHN1Y2gg
YXMgaWZzdGF0IG9yIHNhciDigJNuIERFViBbaW50ZXJ2YWxdIFtudW1iZXIgb2Ygc2FtcGxlc10K
PiA+ID4+ICttb25pdG9yaW5nIHRvb2xzIHN1Y2ggYXMgYGlmc3RhdGAgb3IgYHNhciAtbiBERVYg
W2ludGVydmFsXSBbbnVtYmVyIG9mIHNhbXBsZXNdYCAgCj4gPiA+Cj4gPiA+IC4uLgo+ID4gPiAg
Cj4gPiA+PiAgRm9yIGV4YW1wbGU6IG1pbl9yYXRlIDFHYml0IDNHYml0OiBWZXJpZnkgYmFuZHdp
ZHRoIGxpbWl0IHVzaW5nIG5ldHdvcmsKPiA+ID4+IC1tb25pdG9yaW5nIHRvb2xzIHN1Y2ggYXMg
aWZzdGF0IG9yIHNhciDigJNuIERFViBbaW50ZXJ2YWxdIFtudW1iZXIgb2Ygc2FtcGxlc10KPiA+
ID4+ICttb25pdG9yaW5nIHRvb2xzIHN1Y2ggYXMgYGBpZnN0YXRgYCBvciBgYHNhciAtbiBERVYg
W2ludGVydmFsXSBbbnVtYmVyIG9mIHNhbXBsZXNdYGAgIAo+ID4gPgo+ID4gPiBJcyB0aGVyZSBh
IGRpZmZlcmVuY2UgYmV0d2VlbiBgIGFuZCBgYCA/IERvZXMgaXQgbWFrZSBzZW5zZSB0byBiZQo+
ID4gPiBjb25zaXN0ZW50PyAgCj4gPiAKPiA+IFRoaXMgaXMgYGp1c3Qgd2VpcmQgcXVvdGVzYCAg
CgpHYWgsIHNvcnJ5IGZvciB0aGF0ISBJIHNlbnQgYSB3cm9uZyB2ZXJzaW9uIG9mIHRoaXMgcGF0
Y2guLi4KaTQwZS5yc3Qgc2hvdWxkIGFsc28gYmUgdXNpbmc6CgoJbW9uaXRvcmluZyB0b29scyBz
dWNoIGFzIGBgaWZzdGF0YGAgb3IgYGBzYXIgLW4gREVWIFtpbnRlcnZhbF0gW251bWJlciBvZiBz
YW1wbGVzXWBgIAoKSSdsbCBmaXggaXQgb24gdGhlIG5leHQgc3Bpbi4KCj4gCj4gdW1tIC4uLiBg
dGhpc2AgaXMgc3VwcG9zZWQgdG8gYmUgImludGVycHJldGVkIHRleHQiCj4gaHR0cHM6Ly9kb2N1
dGlscy5zb3VyY2Vmb3JnZS5pby9kb2NzL3JlZi9yc3QvcmVzdHJ1Y3R1cmVkdGV4dC5odG1sI2lu
bGluZS1tYXJrdXAKPiAKPiBNYXliZSB3ZSBkb24ndCBhY3R1YWxseSBpbnRlcnByZXQgaXQuCgpX
ZWxsLCBpZiB3ZSB1c2UgaXQgYXMgc29tZXRoaW5nIGxpa2UgOnJlZjpgZm9vYCwgaXQgaXMgdGhl
biBpbnRlcnByZXRlZCA7LSkKCnVzaW5nIGBmb29gIG9uIFNwaGlueCBwcm9kdWNlcywgaW4gcHJh
Y3RpY2UsIHRoZSBzYW1lIGVmZmVjdCBhcwpgYGZvb2BgIChhdCBsZWFzdCBvbiB0aGUgaW5pdGlh
bCB2ZXJzaW9ucyk6IGl0IGFsc28gc2V0cyB0aGUgZm9udCB0bwptb25vc3BhY2UgYW5kIHN0b3Bz
IHBhcnNpbmcgb3RoZXIgbWFya3VwcyBpbnNpZGUgdGhlIGBpbnRlcnByZXRlZCB0ZXh0YApzdHJp
bmcuIAoKSSByZW1lbWJlciB0aGF0LCBhdCB0aGUgdmVyeSBiZWdpbm5pbmcsIEkgZGlkIHNvbWUg
UmVTVCBjb252ZXJzaW9ucwp1c2luZyBgZm9vYC4gVGhlbiwgSSByZWFsaXplZCB0aGF0IHRoaXMg
YWN0dWFsbHkgd3JvbmcsIGZyb20gdGhlCmRlZmluaXRpb24gUG9WLCBhbmQgc3RhcnRlZCB1c2lu
ZyBgYGZvb2BgLgoKPiAKPiA+IFRoaXMgaXMgYGBsaXRlcmFsIHRleHRgYCBzZXQgaW4gbW9ub3Nw
YWNlIGluIHByb2Nlc3NlZCBvdXRwdXQuCj4gPiAKPiA+IFRoZXJlIGlzIGEgY2VydGFpbiB0ZW5z
aW9uIGJldHdlZW4gdGhvc2Ugd2hvIHdhbnQgdG8gc2VlIGxpYmVyYWwgdXNlIG9mCj4gPiBsaXRl
cmFsLXRleHQgbWFya3VwLCBhbmQgdGhvc2Ugd2hvIHdvdWxkIHJhdGhlciBoYXZlIGxlc3MgbWFy
a3VwIGluIHRoZQo+ID4gdGV4dCBvdmVyYWxsOyBjZXJ0YWlubHksIGl0J3MgYmV0dGVyIG5vdCB0
byBnbyB0b3RhbGx5IG51dHMgd2l0aCBpdC4gIAo+IAo+IEkgcmVhbGx5IGFwcHJlY2lhdGUgdGhl
IHdvcmsgeW91IGRpZCB0byByZWR1Y2UgdGhlIGFtb3VudCBvZgo+IG1hcmt1cCB0aGF0J3MgbmVl
ZGVkIQoKSW4gdGhlIHNwZWNpZmljIGNhc2Ugb2YgdXNpbmcgdGhpbmdzIGxpa2U6IGBgY29tbWFu
ZCAtbmBgLCBJIHdvdWxkCnB1dCBpdCBvbiBhIGxpdGVyYWwgYmxvY2ssIGVpdGhlciBsaWtlIHRo
ZSBwcm9wb3NlZCBwYXRoLCBvciBhczoKCgltb25pdG9yaW5nIHRvb2xzIHN1Y2ggYXM6OgoKCQlp
ZnN0YXQKCglvcjo6CgkJc2FyIC1uIERFViBbaW50ZXJ2YWxdIFtudW1iZXIgb2Ygc2FtcGxlc10K
Cmlmc3RhdCBpcyB0aGVyZSB1c2luZyB0aGUgc2FtZSBtb25vc3BhY2VkIGZvbnQganVzdCBmb3IK
Y29uc2lzdGVuY3kgcHVycG9zZXMuCgpTZWUsIGlmIHlvdSB1c2UganVzdDogc2FyIC1uCgpUaGUg
U3BoaW54IG91dHB1dCBjb3VsZCBjb252ZXJ0IHRoZSBoeXBoZW4gdG8gYSBkYXNoLgoKQnR3LCBp
ZiB0aGVyZSB3YXMgdHdvIGh5cGhlbnMsIGxpa2U6ICJpZnN0YXQgLS1oZWxwIgoKVGhpcyB3b3Vs
ZCBiZSBjb252ZXJ0ZWQgaW50byAiaWZzdGF0IOKAk2hlbHAiLCB1c2luZyB0aGUgRU4gREFTSCBV
VEYtOApjaGFyYWN0ZXIuCgpTbywgSSBzdHJvbmdseSByZWNvbW1lbmQgdGhhdCBwcm9ncmFtcyAo
c3BlY2lhbGx5IHdoZW4gZm9sbG93ZWQKYnkgYXJndW1lbnRzKSB0byBhbHdheXMgdXNlIGEgbGl0
ZXJhbCBibG9jayBtYXJrdXAuCgoKVGhhbmtzLApNYXVybwpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0Cklu
dGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
