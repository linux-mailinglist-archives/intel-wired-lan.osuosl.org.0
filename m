Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB1F933F8F7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Mar 2021 20:16:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 32D2D43253;
	Wed, 17 Mar 2021 19:16:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fUqB8h_YY9vN; Wed, 17 Mar 2021 19:16:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1969942FD7;
	Wed, 17 Mar 2021 19:16:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B1C471BF681
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 19:16:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AA14F60677
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 19:16:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=embeddedor.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8ntxsA6Fdymo for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Mar 2021 19:16:49 +0000 (UTC)
X-Greylist: delayed 00:25:01 by SQLgrey-1.8.0
Received: from gateway30.websitewelcome.com (gateway30.websitewelcome.com
 [50.116.127.1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8175E60670
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 19:16:49 +0000 (UTC)
Received: from cm13.websitewelcome.com (cm13.websitewelcome.com [100.42.49.6])
 by gateway30.websitewelcome.com (Postfix) with ESMTP id DA549B05F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 13:27:42 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id MatSly9AhmJLsMatSllkja; Wed, 17 Mar 2021 13:27:42 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NXenw5qbQa2c5Dq+QDdWLszQhEmsUBkGoD/XPih167M=; b=YIGIhpWEJvVG8HRqbV2FOavf5e
 z4XBvqewoGs38Yw1uijefU+jblaYEZX3jAsFQGT70bOJfTE55N8rMY1KGNtoC4UwwqI+EnB4TCV4U
 UIiSLwTOTHY1agewzQwVeiC0NM9z4jIsPJChEtGa+OM/3J4eygBrKUR1TMNvPxikKRGzdWQ3gN9sU
 BoitfNGKnGod/pgFvNHXCEhPvixihJ0j5tyraoC1EGh4tpAmMLcJ1nkPfkmq79Ws3QmiwnlpYExjo
 EyV9EIzTWJwbnW+58OgCHyiCx1HL1Wcory2uOypQ8OpIaym8Ef8APQ48pAhqtcd1/edrr7Ar78qcE
 aHVklH2g==;
Received: from 187-162-31-110.static.axtel.net ([187.162.31.110]:58230
 helo=[192.168.15.8])
 by gator4166.hostgator.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <gustavo@embeddedor.com>)
 id 1lMatS-001uWQ-Eq; Wed, 17 Mar 2021 13:27:42 -0500
To: Jann Horn <jannh@google.com>, "Gustavo A. R. Silva" <gustavoars@kernel.org>
References: <20210317064148.GA55123@embeddedor>
 <CAG48ez2RDqKwx=umOHjo_1mYyNQgzvcP=KOw1HgSo4Prs_VQDw@mail.gmail.com>
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Message-ID: <3bd8d009-2ad2-c24d-5c34-5970c52502de@embeddedor.com>
Date: Wed, 17 Mar 2021 12:27:28 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <CAG48ez2RDqKwx=umOHjo_1mYyNQgzvcP=KOw1HgSo4Prs_VQDw@mail.gmail.com>
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.osuosl.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 187.162.31.110
X-Source-L: No
X-Exim-ID: 1lMatS-001uWQ-Eq
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 187-162-31-110.static.axtel.net ([192.168.15.8])
 [187.162.31.110]:58230
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 5
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
Subject: Re: [Intel-wired-lan] [PATCH][next] ixgbe: Fix out-of-bounds
 warning in ixgbe_host_interface_command()
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
Cc: Network Development <netdev@vger.kernel.org>,
 kernel list <linux-kernel@vger.kernel.org>, intel-wired-lan@lists.osuosl.org,
 linux-hardening@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGkgSmFubiwKClBsZWFzZSwgc2VlIG15IGNvbW1lbnRzIGJlbG93Li4uCgpPbiAzLzE3LzIxIDEy
OjExLCBKYW5uIEhvcm4gd3JvdGU6Cj4gT24gV2VkLCBNYXIgMTcsIDIwMjEgYXQgODo0MyBBTSBH
dXN0YXZvIEEuIFIuIFNpbHZhCj4gPGd1c3Rhdm9hcnNAa2VybmVsLm9yZz4gd3JvdGU6Cj4+IEZp
eCB0aGUgZm9sbG93aW5nIG91dC1vZi1ib3VuZHMgd2FybmluZyBieSByZXBsYWNpbmcgdGhlIG9u
ZS1lbGVtZW50Cj4+IGFycmF5IGluIGFuIGFub255bW91cyB1bmlvbiB3aXRoIGEgcG9pbnRlcjoK
Pj4KPj4gICBDQyBbTV0gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX2Nv
bW1vbi5vCj4+IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX2NvbW1vbi5j
OiBJbiBmdW5jdGlvbiDigJhpeGdiZV9ob3N0X2ludGVyZmFjZV9jb21tYW5k4oCZOgo+PiBkcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV9jb21tb24uYzozNzI5OjEzOiB3YXJu
aW5nOiBhcnJheSBzdWJzY3JpcHQgMSBpcyBhYm92ZSBhcnJheSBib3VuZHMgb2Yg4oCYdTMyWzFd
4oCZIHtha2Eg4oCYdW5zaWduZWQgaW50WzFd4oCZfSBbLVdhcnJheS1ib3VuZHNdCj4+ICAzNzI5
IHwgICBicC0+dTMyYXJyW2JpXSA9IElYR0JFX1JFQURfUkVHX0FSUkFZKGh3LCBJWEdCRV9GTEVY
X01ORywgYmkpOwo+PiAgICAgICB8ICAgfn5+fn5+fn5+fl5+fn4KPj4gZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfY29tbW9uLmM6MzY4Mjo3OiBub3RlOiB3aGlsZSByZWZl
cmVuY2luZyDigJh1MzJhcnLigJkKPj4gIDM2ODIgfCAgIHUzMiB1MzJhcnJbMV07Cj4+ICAgICAg
IHwgICAgICAgXn5+fn5+Cj4+Cj4+IFRoaXMgaGVscHMgd2l0aCB0aGUgb25nb2luZyBlZmZvcnRz
IHRvIGdsb2JhbGx5IGVuYWJsZSAtV2FycmF5LWJvdW5kcy4KPj4KPj4gTm90aWNlIHRoYXQsIHRo
ZSB1c3VhbCBhcHByb2FjaCB0byBmaXggdGhlc2Ugc29ydHMgb2YgaXNzdWVzIGlzIHRvCj4+IHJl
cGxhY2UgdGhlIG9uZS1lbGVtZW50IGFycmF5IHdpdGggYSBmbGV4aWJsZS1hcnJheSBtZW1iZXIu
IEhvd2V2ZXIsCj4+IGZsZXhpYmxlIGFycmF5cyBzaG91bGQgbm90IGJlIHVzZWQgaW4gdW5pb25z
LiBUaGF0LCB0b2dldGhlciB3aXRoIHRoZQo+PiBmYWN0IHRoYXQgdGhlIGFycmF5IG5vdGF0aW9u
IGlzIG5vdCBiZWluZyBhZmZlY3RlZCBpbiBhbnkgd2F5cywgaXMgd2h5Cj4+IHRoZSBwb2ludGVy
IGFwcHJvYWNoIHdhcyBjaG9zZW4gaW4gdGhpcyBjYXNlLgo+Pgo+PiBMaW5rOiBodHRwczovL2dp
dGh1Yi5jb20vS1NQUC9saW51eC9pc3N1ZXMvMTA5Cj4+IFNpZ25lZC1vZmYtYnk6IEd1c3Rhdm8g
QS4gUi4gU2lsdmEgPGd1c3Rhdm9hcnNAa2VybmVsLm9yZz4KPj4gLS0tCj4+ICBkcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV9jb21tb24uYyB8IDIgKy0KPj4gIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfY29tbW9uLmMgYi9kcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV9jb21tb24uYwo+PiBpbmRleCA2MmRkYjQ1
MmY4NjIuLmJmZjNkYzFhZjcwMiAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaXhnYmUvaXhnYmVfY29tbW9uLmMKPj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaXhnYmUvaXhnYmVfY29tbW9uLmMKPj4gQEAgLTM2NzksNyArMzY3OSw3IEBAIHMzMiBp
eGdiZV9ob3N0X2ludGVyZmFjZV9jb21tYW5kKHN0cnVjdCBpeGdiZV9odyAqaHcsIHZvaWQgKmJ1
ZmZlciwKPj4gICAgICAgICB1MzIgaGRyX3NpemUgPSBzaXplb2Yoc3RydWN0IGl4Z2JlX2hpY19o
ZHIpOwo+PiAgICAgICAgIHVuaW9uIHsKPj4gICAgICAgICAgICAgICAgIHN0cnVjdCBpeGdiZV9o
aWNfaGRyIGhkcjsKPj4gLSAgICAgICAgICAgICAgIHUzMiB1MzJhcnJbMV07Cj4+ICsgICAgICAg
ICAgICAgICB1MzIgKnUzMmFycjsKPj4gICAgICAgICB9ICpicCA9IGJ1ZmZlcjsKPj4gICAgICAg
ICB1MTYgYnVmX2xlbiwgZHdvcmRfbGVuOwo+PiAgICAgICAgIHMzMiBzdGF0dXM7Cj4gCj4gVGhp
cyBsb29rcyBib2d1cy4gQW4gYXJyYXkgaXMgaW5saW5lLCBhIHBvaW50ZXIgcG9pbnRzIGVsc2V3
aGVyZSAtCj4gdGhleSdyZSBub3QgaW50ZXJjaGFuZ2VhYmxlLgoKWWVwOyBidXQgaW4gdGhpcyBj
YXNlIHRoZXNlIGFyZSB0aGUgb25seSBwbGFjZXMgaW4gdGhlIGNvZGUgd2hlcmUgX3UzMmFycl8g
aXMKYmVpbmcgdXNlZDoKCjM3MDcgICAgICAgICAvKiBmaXJzdCBwdWxsIGluIHRoZSBoZWFkZXIg
c28gd2Uga25vdyB0aGUgYnVmZmVyIGxlbmd0aCAqLwozNzA4ICAgICAgICAgZm9yIChiaSA9IDA7
IGJpIDwgZHdvcmRfbGVuOyBiaSsrKSB7CjM3MDkgICAgICAgICAgICAgICAgIGJwLT51MzJhcnJb
YmldID0gSVhHQkVfUkVBRF9SRUdfQVJSQVkoaHcsIElYR0JFX0ZMRVhfTU5HLCBiaSk7CjM3MTAg
ICAgICAgICAgICAgICAgIGxlMzJfdG9fY3B1cygmYnAtPnUzMmFycltiaV0pOwozNzExICAgICAg
ICAgfQoKMzcyNyAgICAgICAgIC8qIFB1bGwgaW4gdGhlIHJlc3Qgb2YgdGhlIGJ1ZmZlciAoYmkg
aXMgd2hlcmUgd2UgbGVmdCBvZmYpICovCjM3MjggICAgICAgICBmb3IgKDsgYmkgPD0gZHdvcmRf
bGVuOyBiaSsrKSB7CjM3MjkgICAgICAgICAgICAgICAgIGJwLT51MzJhcnJbYmldID0gSVhHQkVf
UkVBRF9SRUdfQVJSQVkoaHcsIElYR0JFX0ZMRVhfTU5HLCBiaSk7CjM3MzAgICAgICAgICAgICAg
ICAgIGxlMzJfdG9fY3B1cygmYnAtPnUzMmFycltiaV0pOwozNzMxICAgICAgICAgfQoKSSB0aGlu
ayBpdCBpcyBzYWZlIHRvIHR1cm4gX3UzMmFycmFfIGludG8gYSBwb2ludGVyIGFuZCBjb250aW51
ZSB1c2luZyB0aGUgYXJyYXkgbm90YXRpb24KaW4gdGhpcyBwYXJ0aWN1bGFyIGNhc2UuCgpJIGFs
c28gbWVudGlvbiB0aGlzIGluIHRoZSBjaGFuZ2Vsb2cgdGV4dDoKCiJOb3RpY2UgdGhhdCwgdGhl
IHVzdWFsIGFwcHJvYWNoIHRvIGZpeCB0aGVzZSBzb3J0cyBvZiBpc3N1ZXMgaXMgdG8KcmVwbGFj
ZSB0aGUgb25lLWVsZW1lbnQgYXJyYXkgd2l0aCBhIGZsZXhpYmxlLWFycmF5IG1lbWJlci4gSG93
ZXZlciwKZmxleGlibGUgYXJyYXlzIHNob3VsZCBub3QgYmUgdXNlZCBpbiB1bmlvbnMuIFRoYXQs
IHRvZ2V0aGVyIHdpdGggdGhlCmZhY3QgdGhhdCB0aGUgYXJyYXkgbm90YXRpb24gaXMgbm90IGJl
aW5nIGFmZmVjdGVkIGluIGFueSB3YXlzLCBpcyB3aHkKdGhlIHBvaW50ZXIgYXBwcm9hY2ggd2Fz
IGNob3NlbiBpbiB0aGlzIGNhc2UuIgoKRG8geW91IHNlZSBhbnkgcGFydGljdWxhciBwcm9ibGVt
IHdpdGggdGhpcyBpbiB0aGUgY3VycmVudCBjb2RlPwoKQW5vdGhlciBzb2x1dGlvbiBmb3IgdGhp
cyB3b3VsZCBiZSBhcyBmb2xsb3dzOgoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2l4Z2JlL2l4Z2JlX2NvbW1vbi5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aXhnYmUvaXhnYmVfY29tbW9uLmMKaW5kZXggNjJkZGI0NTJmODYyLi4zYWQ5NTI4MWQ3OTAgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX2NvbW1vbi5j
CisrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX2NvbW1vbi5jCkBA
IC0zNjc3LDEwICszNjc3LDExIEBAIHMzMiBpeGdiZV9ob3N0X2ludGVyZmFjZV9jb21tYW5kKHN0
cnVjdCBpeGdiZV9odyAqaHcsIHZvaWQgKmJ1ZmZlciwKICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgYm9vbCByZXR1cm5fZGF0YSkKIHsKICAgICAgICB1MzIgaGRyX3NpemUgPSBzaXpl
b2Yoc3RydWN0IGl4Z2JlX2hpY19oZHIpOwotICAgICAgIHVuaW9uIHsKLSAgICAgICAgICAgICAg
IHN0cnVjdCBpeGdiZV9oaWNfaGRyIGhkcjsKLSAgICAgICAgICAgICAgIHUzMiB1MzJhcnJbMV07
Ci0gICAgICAgfSAqYnAgPSBidWZmZXI7CisgICAgICAgc3RydWN0IGl4Z2JlX2hpY19oZHIgKmJw
X2hkciA9IGJ1ZmZlcjsKKyAgICAgICBzdHJ1Y3QgeworICAgICAgICAgICAgICAgc2l6ZV90IGxl
bjsKKyAgICAgICAgICAgICAgIHUzMiB1MzJhcnJbXTsKKyAgICAgICB9ICpicDsKICAgICAgICB1
MTYgYnVmX2xlbiwgZHdvcmRfbGVuOwogICAgICAgIHMzMiBzdGF0dXM7CiAgICAgICAgdTMyIGJp
OwpAQCAtMzcwNCw2ICszNzA1LDkgQEAgczMyIGl4Z2JlX2hvc3RfaW50ZXJmYWNlX2NvbW1hbmQo
c3RydWN0IGl4Z2JlX2h3ICpodywgdm9pZCAqYnVmZmVyLAogICAgICAgIC8qIENhbGN1bGF0ZSBs
ZW5ndGggaW4gRFdPUkRzICovCiAgICAgICAgZHdvcmRfbGVuID0gaGRyX3NpemUgPj4gMjsKCisg
ICAgICAgYnAgPSBrbWFsbG9jKHN0cnVjdF9zaXplKGJwLCB1MzJhcnIsIGR3b3JkX2xlbiksIEdG
UF9LRVJORUwpOworICAgICAgIGJwLT5sZW4gPSBkd29yZF9sZW47CisgICAgICAgbWVtY3B5KGJw
LT51MzJhcnIsIGJ1ZmZlciwgZmxleF9hcnJheV9zaXplKGJwLCB1MzJhcnIsIGJwLT5sZW4pKTsK
ICAgICAgICAvKiBmaXJzdCBwdWxsIGluIHRoZSBoZWFkZXIgc28gd2Uga25vdyB0aGUgYnVmZmVy
IGxlbmd0aCAqLwogICAgICAgIGZvciAoYmkgPSAwOyBiaSA8IGR3b3JkX2xlbjsgYmkrKykgewog
ICAgICAgICAgICAgICAgYnAtPnUzMmFycltiaV0gPSBJWEdCRV9SRUFEX1JFR19BUlJBWShodywg
SVhHQkVfRkxFWF9NTkcsIGJpKTsKQEAgLTM3MTEsNyArMzcxNSw3IEBAIHMzMiBpeGdiZV9ob3N0
X2ludGVyZmFjZV9jb21tYW5kKHN0cnVjdCBpeGdiZV9odyAqaHcsIHZvaWQgKmJ1ZmZlciwKICAg
ICAgICB9CgogICAgICAgIC8qIElmIHRoZXJlIGlzIGFueSB0aGluZyBpbiBkYXRhIHBvc2l0aW9u
IHB1bGwgaXQgaW4gKi8KLSAgICAgICBidWZfbGVuID0gYnAtPmhkci5idWZfbGVuOworICAgICAg
IGJ1Zl9sZW4gPSBicF9oZHItPmJ1Zl9sZW47CiAgICAgICAgaWYgKCFidWZfbGVuKQogICAgICAg
ICAgICAgICAgZ290byByZWxfb3V0OwoKQEAgLTM3MjQsNiArMzcyOCw5IEBAIHMzMiBpeGdiZV9o
b3N0X2ludGVyZmFjZV9jb21tYW5kKHN0cnVjdCBpeGdiZV9odyAqaHcsIHZvaWQgKmJ1ZmZlciwK
ICAgICAgICAvKiBDYWxjdWxhdGUgbGVuZ3RoIGluIERXT1JEcywgYWRkIDMgZm9yIG9kZCBsZW5n
dGhzICovCiAgICAgICAgZHdvcmRfbGVuID0gKGJ1Zl9sZW4gKyAzKSA+PiAyOwoKKyAgICAgICBi
cCA9IGtyZWFsbG9jKGJwLCBzdHJ1Y3Rfc2l6ZShicCwgdTMyYXJyLCBkd29yZF9sZW4pLCBHRlBf
S0VSTkVMKTsKKyAgICAgICBicC0+bGVuID0gZHdvcmRfbGVuOworICAgICAgIG1lbWNweSgmYnAt
PnUzMmFycltiaV0sICgodTMyICopYnVmZmVyICsgYmkpLCBmbGV4X2FycmF5X3NpemUoYnAsIHUz
MmFyciwgYnAtPmxlbi1iaSkpOwogICAgICAgIC8qIFB1bGwgaW4gdGhlIHJlc3Qgb2YgdGhlIGJ1
ZmZlciAoYmkgaXMgd2hlcmUgd2UgbGVmdCBvZmYpICovCiAgICAgICAgZm9yICg7IGJpIDw9IGR3
b3JkX2xlbjsgYmkrKykgewoJCV5eXl5eXgpJIGp1c3Qgbm90aWNlZCBpdCBzZWVtcyB0aGVyZSBp
cyBhIGJ1ZyByaWdodCB0aGVyZS4gSSB0aGluayBpdCBzaG91bGQgYmUgYmkgPCBkd29yZF9sZW4s
IGluc3RlYWQKCiAgICAgICAgICAgICAgICBicC0+dTMyYXJyW2JpXSA9IElYR0JFX1JFQURfUkVH
X0FSUkFZKGh3LCBJWEdCRV9GTEVYX01ORywgYmkpOwoKCldoYXQgZG8geW91IGd1eXMgdGhpbms/
CgpUaGFua3MhCi0tCkd1c3Rhdm8KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxh
bkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLXdpcmVkLWxhbgo=
