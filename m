Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9827165233
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Jul 2019 09:07:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1F774860EF;
	Thu, 11 Jul 2019 07:07:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rL4pBzuguWfU; Thu, 11 Jul 2019 07:07:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C1516860C9;
	Thu, 11 Jul 2019 07:06:59 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5703B1BF354
 for <intel-wired-lan@osuosl.org>; Thu, 11 Jul 2019 07:06:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 50502863F1
 for <intel-wired-lan@osuosl.org>; Thu, 11 Jul 2019 07:06:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tBKlt4F4v4yo for <intel-wired-lan@osuosl.org>;
 Thu, 11 Jul 2019 07:06:57 +0000 (UTC)
X-Greylist: delayed 00:16:03 by SQLgrey-1.7.6
Received: from geminitest.hmdnsgroup.com (geminitest.hmdnsgroup.com
 [63.247.140.108])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 144B084789
 for <intel-wired-lan@osuosl.org>; Thu, 11 Jul 2019 07:06:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=mirality.co.nz; s=default; h=Message-ID:Subject:To:From:Date:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HolQ139C56oHHqVBmzT/FvlU9nB7j6Z4bnswmfu2B8E=; b=wDWE2Avy1sV4L8tiMG/tRFJHC
 6JJu1G8Oam8wOjEjpxA/BAw/+FV9nT8GKKKoeb/EJ5+g7c78ZqWsBsRF97Z7B6a9AgSDign0jFvF+
 /0XKcuHvjV4RjajGTF9u/y5I0QJrhCpPi6UoanBYPLyKO5UiBng46tMYiW/qREEldPVZzBAtHcPQR
 A1grKW4rWx4tOp8We0yjD3EZVY3xBHxigUmolZ60Cu37ZGTBLqRCd1V2ufBHqiOtHtQKqt7xo324Y
 33YBR1cm0zsmxCtlzcDBp7sxPy9pgSLyf+EHsytC4DaQ+jct9yPHqyQi7Ktwcd7j1N/Lt1ZzHm2jg
 P5oX/424g==;
Received: from [::1] (port=37726 helo=mirality.co.nz)
 by gemini.hmdnsgroup.com with esmtpa (Exim 4.87)
 (envelope-from <intel@mirality.co.nz>) id 1hlSus-0001Lt-Ji
 for intel-wired-lan@osuosl.org; Thu, 11 Jul 2019 02:50:54 -0400
MIME-Version: 1.0
Date: Thu, 11 Jul 2019 18:50:54 +1200
From: Gavin Lambert <intel@mirality.co.nz>
To: intel-wired-lan@osuosl.org
Message-ID: <3acf459ddbbd30687cda0a79523afe04@mirality.co.nz>
X-Sender: intel@mirality.co.nz
User-Agent: Roundcube Webmail/1.1.4
X-HMDNSGroup-MailScanner-Information: Please contact the ISP for more
 information
X-HMDNSGroup-MailScanner-ID: 1hlSus-0001Lt-Ji
X-HMDNSGroup-MailScanner: Found to be clean
X-HMDNSGroup-MailScanner-SpamCheck: 
X-HMDNSGroup-MailScanner-From: intel@mirality.co.nz
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gemini.hmdnsgroup.com
X-AntiAbuse: Original Domain - osuosl.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - mirality.co.nz
X-Get-Message-Sender-Via: gemini.hmdnsgroup.com: authenticated_id:
 uecasm/from_h
X-Authenticated-Sender: gemini.hmdnsgroup.com: intel@mirality.co.nz
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: [Intel-wired-lan] [e1000e] Linux 4.9: unable to send packets after
 link recovery with patched driver
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

VGhpcyBtaWdodCBiZSBhIGJpdCBvZiBhIHRyaWNreSBxdWVzdGlvbiwgYnV0IEknbSBub3QgcmVh
bGx5IHN1cmUgd2hlcmUgCmVsc2UgdG8gYXNrLiAgUGxlYXNlIGNjIG1lIG9uIGFueSByZXBsaWVz
IG9yIEkgbWlnaHQgb3Zlcmxvb2sgdGhlbS4KCkknbSB1c2luZyBhIHN5c3RlbSB3aXRoIGFuIGUx
MDAwZSBuZXR3b3JrIGRyaXZlciB3aGljaCBoYXMgYmVlbiBwYXRjaGVkIAp0byBieXBhc3MgdGhl
IHJlZ3VsYXIgTGludXggbmV0d29yayBzdGFjayAoYmVjYXVzZSBpdCBjYW4gZ2V0IGNhbGxlZCAK
ZnJvbSBhIFhlbm9tYWkgUlQgY29udGV4dCwgYW1vbmcgb3RoZXIgcmVhc29ucyAtLSBhbHRob3Vn
aCBpbiBteSBjYXNlIApJJ20gbm90IGRvaW5nIHRoYXQpLiAgVGhlIGNvbXBsZXRlIHNvdXJjZSBm
b3IgdGhlIHBhdGNoZWQgdmVyc2lvbiBvZiB0aGUgCmNvZGUgY2FuIGJlIGZvdW5kIGhlcmU6CiAg
ICAgCmh0dHBzOi8vZ2l0aHViLmNvbS9yaWJhbGRhL2V0aGVyY2F0L2Jsb2IvbWFzdGVyL2Rldmlj
ZXMvZTEwMDBlL25ldGRldi00LjktZXRoZXJjYXQuYwooVGhlcmUgYXJlIHNvbWUgbWlub3IgY2hh
bmdlcyB0byBvdGhlciBmaWxlcywgYnV0IHRoZSBtYWpvcml0eSBvZiAKY2hhbmdlcyBhcmUgb25s
eSB0byB0aGlzIGZpbGUuICBZb3UgY2FuIHNlZSBqdXN0IHRoZSBjaGFuZ2VzIGF0IApodHRwczov
L2dpc3QuZ2l0aHViLmNvbS91ZWNhc20vNWUzNmExNWJkYTZmZmQ1MzA3OTM0NGZjNDQzZGNjNWYv
cmV2aXNpb25zIAouKQoKSXQgd2FzIG9yaWdpbmFsbHkgYmFzZWQgb24gdGhlIGluLWtlcm5lbCBl
MTAwMGUgZHJpdmVyIGFzIG9mIExpbnV4IAo0LjkuNjUuICAoSSdtIG5vdCB0aGUgcGVyc29uIHdo
byBvcmlnaW5hbGx5IG1hZGUgdGhlIHBhdGNoZXMsIGJ1dCBJIGFtIAp0aGUgcGVyc29uIHdobyBy
ZWJhc2VkIHRoZW0gdG8ga2VybmVsIDQuOSBhbmQgSSdtIHRoZSBvbmUgdHJ5aW5nIHRvIAptYWlu
dGFpbiB0aGVtIGZvciBuZXdlciBrZXJuZWwgdmVyc2lvbnMuICBUaG91Z2ggSSdtIGFsc28gbm90
IHRoZSBwZXJzb24gCndobyBtYWRlIHRoYXQgZ2l0aHViIHJlcG8uKQoKT24gYSBEZWJpYW4gc3lz
dGVtIHdpdGgga2VybmVsIGxpbnV4LWltYWdlLTQuOS4wLTQtcnQtYW1kNjQgKDQuOS42NSkgCmlu
c3RhbGxlZCwgdGhpcyB3b3JrcyBwZXJmZWN0bHkuICBJdCBhbHNvIHdvcmtzIHBlcmZlY3RseSB3
aXRoIApsaW51eC1pbWFnZS00LjkuMC04LXJ0LWFtZDY0ICg0LjkuMTEwKS4KCkhvd2V2ZXIsIHdp
dGgga2VybmVsIGxpbnV4LWltYWdlLTQuOS4wLTktcnQtYW1kNjQgKDQuOS4xNjgpIGluc3RhbGxl
ZCAKKGFuZCBubyBvdGhlciBjaGFuZ2VzIHRvIHRoZSBzeXN0ZW0gb3RoZXIgdGhhbiBidWlsZGlu
ZyB0aGUgcGF0Y2hlZCAKZTEwMDBlIG1vZHVsZSBhZ2FpbnN0IHRoaXMga2VybmVsJ3MgaGVhZGVy
cyksIHNvbWV0aGluZyB3ZWlyZCBoYXBwZW5zIAp3aGVuIHRoZSBkcml2ZXIgaXMgcnVubmluZyBp
biBpdHMgYWx0ZXJuYXRlICJlY2RldiIgbW9kZS4KClNwZWNpZmljYWxseSwgd2hlbiB0aGUgbW9k
dWxlIGlzIGluaXRpYWxseSBsb2FkZWQsIGl0IHdvcmtzIGFzIGV4cGVjdGVkIAphbmQgY2FuIHNl
bmQvcmVjZWl2ZSB3aXRob3V0IHByb2JsZW1zLiAgV2hlbiBsaW5rIGlzIHJlbW92ZWQgKGJ5IApk
aXNjb25uZWN0aW5nIHRoZSBFdGhlcm5ldCBjYWJsZSksIGl0IGRldGVjdHMgdGhpcyBhcyBleHBl
Y3RlZC4gIFdoZW4gCmxpbmsgaXMgcmVzdG9yZWQsIGl0IGRldGVjdHMgdGhpcyBhbmQgcmVwb3J0
cyBpdCBidXQgaXMgdGhlbiB1bmFibGUgdG8gCmFjdHVhbGx5IHNlbmQgYW55IHBhY2tldHMuICAo
Tm90ZTogdG8gc2VuZCBwYWNrZXRzIHRoZSBleHRlcm5hbCBjb2RlIApjYWxscyB0aGUgIm5kb19z
dGFydF94bWl0IiBvcGVyYXRpb24gZGlyZWN0bHksIGFuZCB0byByZWNlaXZlIHBhY2tldHMgaXQg
CmNhbGxzICJlY19wb2xsIi4gIEFsc28gbm90ZSB0aGF0IGl0IHdvbid0IHJlY2VpdmUgYSBwYWNr
ZXQgdW5sZXNzIGl0IApzZW5kcyBvbmUgZmlyc3QsIGR1ZSB0byB0aGUgd2F5IHRoYXQgdGhlIG5l
dHdvcmsgaXQncyBjb25uZWN0ZWQgdG8gCndvcmtzLCBzbyBJIGNhbid0IHRlbGwgaWYgcmVjZWl2
ZXMgd29yayBvciBub3Qgd2hlbiBzZW5kcyBkb24ndCB3b3JrLikgIApVbmxvYWRpbmcgYW5kIHJl
bG9hZGluZyB0aGUgbW9kdWxlIGZpeGVzIHRoaXMsIGV2ZW4gaWYgdGhlIGxpbmsgaXMgCmluaXRp
YWxseSBkb3duIGFuZCB0aGVuIHJlY29ubmVjdGVkIGFmdGVyIHRoZSBtb2R1bGUgaXMgcmVsb2Fk
ZWQuICAoU28gCnBlcmhhcHMgdGhlIHByb2JsZW0gaXMgc29tZXRoaW5nIGl0IGRvZXMgYXQgdGhl
IGxpbmstbG9zcyBldmVudD8pCgpPY2Nhc2lvbmFsbHksIGl0IGRvZXMgbWFuYWdlIHRvIHN1cnZp
dmUgb25lIG9yIHR3byByZXBsdWdzIGJlZm9yZSAKZ2V0dGluZyBpbnRvIHRoZSBwcm9ibGVtIHN0
YXRlLiAgQnV0IG9uY2UgdGhlcmUsIG5vIGFtb3VudCBvZiByZXBsdWdnaW5nIAphcHBlYXJzIHRv
IHJlY292ZXIgaXQ7IG9ubHkgcmVsb2FkaW5nIHRoZSBtb2R1bGUuCgpJIGRvIGtub3cgdGhhdCB3
aGVuIGl0J3MgaW4gdGhlIGZhaWx1cmUgc3RhdGUgKG5vdCBhY3R1YWxseSBzZW5kaW5nIApwYWNr
ZXRzKSwgZTEwMDBfeG1pdF9mcmFtZSBjb250aW51ZXMgdG8gZ2V0IGFsbCB0aGUgd2F5IHRvIHRo
ZSBib3R0b20gCmFuZCByZXR1cm4gTkVUREVWX1RYX09LLgoKTm90ZSB0aGF0IHRoZSBlMTAwMGUg
Y29kZSBiZWluZyB1c2VkIGlzIHN0aWxsIHRoZSBjb2RlIGFzIHNob3duIGluIHRoZSAKbGluayBh
Ym92ZSwgbm90IHRoZSBjb2RlIGFzIGV4aXN0cyBpbiBMaW51eCA0LjkuMTY4LiAgSSBkaWQgdHJ5
IHJlYmFzaW5nIAp0aGUgZXRoZXJjYXQgcGF0Y2hlcyBvbnRvIHRoZSBuZXcgZHJpdmVyIHZlcnNp
b24sIGJ1dCB0aGlzIGRpZG7igJl0IHNlZW0gCnRvIGNoYW5nZSB0aGUgYmVoYXZpb3IuCgpBbHNv
IG5vdGUgdGhhdCB0aGUgYmFkIGJlaGF2aW9yIHdhcyBvYnNlcnZlZCBvbiBhbiBJMjE5LVYgYW5k
IGFuIApJMjE5LUxNLCBidXQgZG9lcyBub3QgYXBwZWFyIHRvIGhhcHBlbiB3aXRoIGFuIDgyNTcx
RUIgKHRoZXNlIGFyZSB0aGUgCm9ubHkgZGV2aWNlcyBJIGhhdmUgaGFuZHkgYXQgdGhlIG1vbWVu
dCkuICBUaGUgcHJvYmxlbSBhbHNvIGRvZXNuJ3QgCm9jY3VyIHdoZW4gdXNpbmcgdGhlIHVucGF0
Y2hlZCBkcml2ZXIgZnJvbSA0LjkuMTY4IGFzIGEgc3RhbmRhcmQgTGludXggCm5ldHdvcmsgZHJp
dmVyLgoKT2J2aW91c2x5LCBzb21ldGhpbmcgdGhlIHBhdGNoZXMgYXJlIGRvaW5nIGlzIGNhdXNp
bmcgcHJvYmxlbXMsIGJ1dCBpdCAKc2VlbXMgb2RkIHRoYXQgdGhlIGlzc3VlIG9ubHkgb2NjdXJz
IHdpdGggY2VydGFpbiBoYXJkd2FyZSBhbmQgd2l0aCAKY2VydGFpbiBrZXJuZWwgdmVyc2lvbnMu
ICBBbnkgaWRlYXMgb24gd2hhdCBjb3VsZCBiZSB0aGUgY2F1c2UgYW5kIApzb2x1dGlvbiAob3Ig
aG93IHRvIG5hcnJvdyBpdCBkb3duIGZ1cnRoZXIpPyAgSSBjYW4gZWFzaWx5IG1ha2UgY2hhbmdl
cyAKdG8gdGhlIGRyaXZlciBjb2RlOyBpdCdzIGEgbG90IGhhcmRlciB0byB0cnkga2VybmVsIHZl
cnNpb25zIGJldHdlZW4gdGhlIAp0d28gYWJvdmUsIGhvd2V2ZXIsIGJ1dCBJIG1pZ2h0IGJlIGFi
bGUgdG8gZG8gdGhhdCB0b28uCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9z
dW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
d2lyZWQtbGFuCg==
