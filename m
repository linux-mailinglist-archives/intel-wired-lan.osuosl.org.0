Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CC4D3E1BCE
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Aug 2021 20:56:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9B8634061E;
	Thu,  5 Aug 2021 18:56:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qd5Pln4uZvGb; Thu,  5 Aug 2021 18:56:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9D28940611;
	Thu,  5 Aug 2021 18:56:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2BB351BF2FE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Aug 2021 18:56:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 26AFA83868
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Aug 2021 18:56:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RO2Q_XROcTyt for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Aug 2021 18:56:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6641D83843
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Aug 2021 18:56:45 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5aeb7a.dynamic.kabel-deutschland.de
 [95.90.235.122])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id D7BBB61E64846;
 Thu,  5 Aug 2021 20:56:41 +0200 (CEST)
To: "Creeley, Brett" <brett.creeley@intel.com>
References: <20210728203457.325482-1-brett.creeley@intel.com>
 <5a641af5-e3fc-3b7c-6ddd-ef25e3f4a1ad@molgen.mpg.de>
 <9e0bce1b48e0c5f6d16757054ca12a8424c75991.camel@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <a9d41ed8-9464-d74c-b85e-dae5c3aba773@molgen.mpg.de>
Date: Thu, 5 Aug 2021 20:56:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <9e0bce1b48e0c5f6d16757054ca12a8424c75991.camel@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net] ice: don't remove
 netdev->dev_addr from uc sync list
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBCcmV0dCwKCgpBbSAwNS4wOC4yMSB1bSAyMDozMCBzY2hyaWViIENyZWVsZXksIEJyZXR0
Ogo+IE9uIFRodSwgMjAyMS0wOC0wNSBhdCAwODo1MSArMDIwMCwgUGF1bCBNZW56ZWwgd3JvdGU6
Cgo+PiBBbSAyOC4wNy4yMSB1bSAyMjozNCBzY2hyaWViIEJyZXR0IENyZWVsZXk6Cj4+PiBJbiBz
b21lIGNpcmN1bXN0YW5jZXMsIHN1Y2ggYXMgd2l0aCBicmlkZ2luZywgaXQncyBwb3NzaWJsZSB0
aGF0Cj4+PiB0aGUKPj4+IHN0YWNrIHdpbGwgYWRkIHRoZSBkZXZpY2UncyBvd24gTUFDIGFkZHJl
c3MgdG8gaXRzIHVuaWNhc3QgYWRkcmVzcwo+Pj4gbGlzdC4KPj4+Cj4+PiBJZiwgbGF0ZXIsIHRo
ZSBzdGFjayBkZWxldGVzIHRoaXMgYWRkcmVzcywgdGhlIGRyaXZlciB3aWxsIHJlY2VpdmUKPj4+
IGEKPj4+IHJlcXVlc3QgdG8gcmVtb3ZlIHRoaXMgYWRkcmVzcy4KPj4+Cj4+PiBUaGUgZHJpdmVy
IHN0b3JlcyBpdHMgY3VycmVudCBNQUMgYWRkcmVzcyBhcyBwYXJ0IG9mIHRoZSBWU0kgTUFDCj4+
PiBmaWx0ZXIKPj4+IGxpc3QgaW5zdGVhZCBvZiBzZXBhcmF0ZWx5LiBTbywgdGhpcyBjYXVzZXMg
YSBwcm9ibGVtIHdoZW4gdGhlCj4+PiBkZXZpY2Uncwo+Pj4gTUFDIGFkZHJlc3MgaXMgZGVsZXRl
ZCB1bmV4cGVjdGVkbHksIHdoaWNoIHJlc3VsdHMgaW4gdHJhZmZpYwo+Pj4gZmFpbHVyZQo+Pj4g
aW4gc29tZSBjYXNlcy4KPj4+Cj4+PiBGaXggdGhpcyBieSBtYWtpbmcgc3VyZSB0byBub3QgZGVs
ZXRlIHRoZSBuZXRkZXYtPmRldl9hZGRyIGR1cmluZwo+Pj4gTUFDIGFkZHJlc3Mgc3luYy4KPj4K
Pj4gSXMgaXQgZWFzeSB0byByZXByb2R1Y2U/Cj4gCj4gWWVzLCBJIHdpbGwgYWRkIG1vcmUgZGV0
YWlscyB3aGVuIEkgcmUtc3BpbiB0aGUgcGF0Y2guCj4gCj4+Cj4+PiBUaGVyZSBpcyBhIHBvc3Np
YmlsaXR5IG9mIGEgcmFjZSBjb25kaXRpb24gYmV0d2VlbiAuc2V0X21hYyBhbmQKPj4+IC5zZXRf
cnhfbW9kZS4gRml4IHRoaXMgYnkgY2FsbGluZyBuZXRpZl9hZGRyX2xvY2tfYmgoKSBhbmQKPj4+
IG5ldGlmX2FkZHJfdW5sb2NrX2JoKCkgb24gdGhlIGRldmljZSdzIG5ldGRldiB3aGVuIHRoZSBu
ZXRkZXYtCj4+Pj4gZGV2X2FkZHIKPj4+IGlzIGdvaW5nIHRvIGJlIHVwZGF0ZWQgaW4gLnNldF9t
YWMuCj4+Pgo+Pj4gQWxzbywgY2hhbmdlIHRoZSBuZXRkZXZfd2FybigpIHRvIG5ldGRldl9kYmco
KSB3aGVuIHRoZSBkZXZpY2UgaXMKPj4+IGFscmVhZHkgdXNpbmcgdGhlIHJlcXVlc3RlZCBtYWMg
aW4gLnNldF9tYWMuIFRoZSBkZXZfd2FybigpIHdhcwo+Pj4gY2F1c2luZwo+Pj4gYSBsb3Qgb2Yg
dW5uZWNlc3Nhcnkgbm9pc2Ugd2hlbiBjb25maWd1cmluZy91bmNvbmZpZ3VyaW5nIGJyaWRnaW5n
Cj4+PiBhbmQKPj4+IHByb3ZpZGVzIG5vIGJlbmVmaXQuCj4+Pgo+Pj4gTGFzdGx5LCBpbnN0ZWFk
IG9mIHVzaW5nIG1lbWNweSgpIHRvIHNhdmUgdGhlIG5ldGRldi0+ZGV2X2FkZHIsIHVzZQo+Pj4g
ZXRoZXJfYWRkcl9jb3B5KCkgaW4gLnNldF9tYWMuCj4+Cj4+IEl04oCZZCBiZSBncmVhdCwgaWYg
eW91IHNwbGl0IHRoZSB0aHJlZSBpdGVtcyBvdXQgaW50byBzZXBhcmF0ZQo+PiBwYXRjaGVzLCBh
bmQgc3VibWl0IGl0IGluIGEgcGF0Y2ggc2VyaWVzLgo+IAo+IEknbSB0aGlua2luZyB0aGF0IHRo
aXMgaXMgYWN0dWFsbHkgYSAyIHBhdGNoIHNlcmllcy4gV2l0aCB0aGUgZml4Cj4gdG8gbm90IGRl
bGV0ZSB0aGUgZGV2aWNlJ3MgYWRkcmVzcywgdGhlIG5ldGRldl93YXJuKCkgd2FzIGNhdXNpbmcK
PiBhIGxvdCBvZiBub2lzZS4gQmFzZWQgb24gdGhpcyBJIGJlbGlldmUgdGhhdCB0aGUgbmV0ZGV2
X3dhcm4oKSB0bwo+IG5ldGRldl9kYmcoKSBzaG91bGQgYmUgcGFydCBvZiB0aGUgc2FtZSBwYXRj
aCB0aGF0IGZpeGVzIHRoZQo+IHByZXZpb3VzbHkgbWVudGlvbmVkIHByb2JsZW0uCj4gCj4gSG93
ZXZlciwgSSB3aWxsIHNlbmQgdGhlIGV0aGVyX2FkZHJfY29weSgpIGNoYW5nZSB0byBuZXQtbmV4
dC8gYXMKPiBhIHNlcGFyYXRlIHBhdGNoIHNpbmNlIGl0IGlzIG5vdCBmaXhpbmcgYW55dGhpbmcs
IGp1c3QgYSBnZW5lcmFsCj4gaW1wcm92ZW1lbnQuCj4gCj4gSG9wZWZ1bGx5IHRoaXMgd29ya3Mg
Zm9yIHlvdSBhbmQgdGhhbmtzIGZvciB0aGUgZmVlZGJhY2shCgpQZXJmZWN0LiBUaGFuayB5b3Uu
CgoKS2luZCByZWdhcmRzLAoKUGF1bApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxh
bkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLXdpcmVkLWxhbgo=
