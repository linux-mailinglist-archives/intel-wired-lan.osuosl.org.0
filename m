Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id AB41932E43D
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Mar 2021 10:04:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 29D724ECE6;
	Fri,  5 Mar 2021 09:04:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yOiH-Gj_78xr; Fri,  5 Mar 2021 09:04:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9F47D4ECD2;
	Fri,  5 Mar 2021 09:04:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 19B061BF3DB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Mar 2021 09:04:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 008FD84484
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Mar 2021 09:04:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id csevp-rXhiCj for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Mar 2021 09:04:02 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 07C38830FB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Mar 2021 09:04:01 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5aea8b.dynamic.kabel-deutschland.de
 [95.90.234.139])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id BE07820647914;
 Fri,  5 Mar 2021 10:03:58 +0100 (CET)
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
References: <20210305085257.GA138498@embeddedor>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <833549f5-a191-b532-50bf-4ec343c48dd0@molgen.mpg.de>
Date: Fri, 5 Mar 2021 10:03:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210305085257.GA138498@embeddedor>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH RESEND][next] ice: Fix fall-through
 warnings for Clang
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBHdXN0YXZvLAoKClRoYW5rIHlvdSBmb3Igd29ya2luZyBvbiB0aGF0LgoKQW0gMDUuMDMu
MjEgdW0gMDk6NTIgc2NocmllYiBHdXN0YXZvIEEuIFIuIFNpbHZhOgo+IEluIHByZXBhcmF0aW9u
IHRvIGVuYWJsZSAtV2ltcGxpY2l0LWZhbGx0aHJvdWdoIGZvciBDbGFuZywgZml4IGEgd2Fybmlu
Zwo+IGJ5IGV4cGxpY2l0bHkgYWRkaW5nIGEgYnJlYWsgc3RhdGVtZW50IGluc3RlYWQgb2YganVz
dCBsZXR0aW5nIHRoZSBjb2RlCj4gZmFsbCB0aHJvdWdoIHRvIHRoZSBuZXh0IGNhc2UuCgpJdCB3
b3VsZCBiZSBuaWNlIHRvIGhhdmUgYSBzaG9ydCBzdW1tYXJ5IG9mIHRoZSBkaXNjcmVwYW5jeSBi
ZXR3ZWVuIEdDQyAKYW5kIGNsYW5nLCBhbmQgaXQgd2FzIGRlY2lkZWQgdG8gZ28gd2l0aCB0aGUg
4oCcY2xhbmcgZGVjaXNpb27igJ0sIGFuZCBub3QgCmhhdmUgY2xhbmcgYWRhcHQgdG8gR0NDLgoK
PiBMaW5rOiBodHRwczovL2dpdGh1Yi5jb20vS1NQUC9saW51eC9pc3N1ZXMvMTE1Cj4gU2lnbmVk
LW9mZi1ieTogR3VzdGF2byBBLiBSLiBTaWx2YSA8Z3VzdGF2b2Fyc0BrZXJuZWwub3JnPgo+IC0t
LQo+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV90eHJ4X2xpYi5jIHwgMSAr
Cj4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV90eHJ4X2xpYi5jIGIvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV90eHJ4X2xpYi5jCj4gaW5kZXggMDJiMTI3MzZlYTgwLi4y
MDdmNmVlM2E3ZjYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNl
L2ljZV90eHJ4X2xpYi5jCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2lj
ZV90eHJ4X2xpYi5jCj4gQEAgLTE0Myw2ICsxNDMsNyBAQCBpY2VfcnhfY3N1bShzdHJ1Y3QgaWNl
X3JpbmcgKnJpbmcsIHN0cnVjdCBza19idWZmICpza2IsCj4gICAJY2FzZSBJQ0VfUlhfUFRZUEVf
SU5ORVJfUFJPVF9VRFA6Cj4gICAJY2FzZSBJQ0VfUlhfUFRZUEVfSU5ORVJfUFJPVF9TQ1RQOgo+
ICAgCQlza2ItPmlwX3N1bW1lZCA9IENIRUNLU1VNX1VOTkVDRVNTQVJZOwo+ICsJCWJyZWFrOwo+
ICAgCWRlZmF1bHQ6Cj4gICAJCWJyZWFrOwo+ICAgCX0KCgpLaW5kIHJlZ2FyZHMsCgpQYXVsCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVk
LWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0
cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
