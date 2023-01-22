Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D743D67724C
	for <lists+intel-wired-lan@lfdr.de>; Sun, 22 Jan 2023 21:21:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 71C2260B97;
	Sun, 22 Jan 2023 20:21:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 71C2260B97
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674418893;
	bh=Wdeh7stQglpZkzLcw1Mo+6eqPhDSbh2mEHiULOaHZSM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3ijLXsXhJKLIIxHxW3k77YMtA6xsDCM1ZUUJOytr3IMPDa4BFQEkl1N7jQpfwfI2m
	 msVQ4tOCF4679gU8e7dhXyy7G8AZdq59+JqlvgXjCdUbVQ2HBn/kxodQcGIDOPhvfR
	 Mvzov7biDC3/wpbcCuaPqxP3CTWlUJrTI0BKrshhF2jd+MCmH8KP+sKnrMptNFDHS1
	 41n0tUd/xJ71cDHi+++S/VmjiPHZHBhCAb1rCCTFm41Min7QrksFf2FlyQiIsmo+Mm
	 TQwtacBwwodnl/KqgTT7sS+59Jk+Oa+6rfGIrG9rIuD9N+a3ZtmwISoy8isIREX3dg
	 DrVlLzrm1R7Lw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tsXJlYeT8vwg; Sun, 22 Jan 2023 20:21:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4C12F60B13;
	Sun, 22 Jan 2023 20:21:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4C12F60B13
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 605821BF31B
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Jan 2023 20:21:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 30B5381E6F
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Jan 2023 20:21:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 30B5381E6F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3gRelIsBk4VK for <intel-wired-lan@lists.osuosl.org>;
 Sun, 22 Jan 2023 20:21:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 40DD581E69
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 40DD581E69
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Jan 2023 20:21:25 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5ae93c.dynamic.kabel-deutschland.de
 [95.90.233.60])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 6E30F61CC457B;
 Sun, 22 Jan 2023 21:21:21 +0100 (CET)
Message-ID: <1bb796f9-b2dd-1c96-831a-34585770d80d@molgen.mpg.de>
Date: Sun, 22 Jan 2023 21:21:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To: Jason Xing <kerneljasonxing@gmail.com>
References: <20230121085521.9566-1-kerneljasonxing@gmail.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20230121085521.9566-1-kerneljasonxing@gmail.com>
Subject: Re: [Intel-wired-lan] [PATCH net] ixgbe: allow to increase MTU to
 some extent with XDP enalbed
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
Cc: john.fastabend@gmail.co, hawk@kernel.org, daniel@iogearbox.net,
 netdev@vger.kernel.org, richardcochran@gmail.com, jesse.brandeburg@intel.com,
 ast@kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, bpf@vger.kernel.org,
 pabeni@redhat.com, davem@davemloft.net, linux-kernel@vger.kernel.org,
 Jason Xing <kernelxing@tencent.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBKYXNvbiwKCgpUaGFuayB5b3UgZm9yIHlvdXIgcGF0Y2guCgpBbSAyMS4wMS4yMyB1bSAw
OTo1NSBzY2hyaWViIEphc29uIFhpbmc6Cj4gRnJvbTogSmFzb24gWGluZyA8a2VybmVseGluZ0B0
ZW5jZW50LmNvbT4KClRoZXJlIGlzIGEgc21hbGwgdHlwbyBpbiB0aGUgc3VtbWFyeTogZW5hKmJs
KmVkCgo+IEkgZW5jb3VudGVyZWQgb25lIGNhc2Ugd2hlcmUgSSBjYW5ub3QgaW5jcmVhc2UgdGhl
IE1UVSBzaXplIHdpdGggWERQCj4gZW5hYmxlZCBpZiB0aGUgc2VydmVyIGlzIGVxdWlwcGVkIHdp
dGggSVhHQkUgY2FyZCwgd2hpY2ggaGFwcGVuZWQgb24KPiB0aG91c2FuZHMgb2Ygc2VydmVycy4g
SSBub3RpY2VkIGl0IHdhcyBwcm9oaWJpdGVkIGZyb20gMjAxN1sxXSBhbmQKClRoYXTigJlzIGlu
Y2x1ZGVkIHNpbmNlIExpbnV4IDQuMTktcmMxLgoKPiBhZGRlZCBzaXplIGNoZWNrc1syXSBpZiBh
bGxvd2VkIHNvb24gYWZ0ZXIgdGhlIHByZXZpb3VzIHBhdGNoLgo+IAo+IEludGVyZXN0aW5nIHBh
cnQgZ29lcyBsaWtlIHRoaXM6Cj4gMSkgQ2hhbmdpbmcgTVRVIGRpcmVjdGx5IGZyb20gMTUwMCAo
ZGVmYXVsdCB2YWx1ZSkgdG8gMjAwMCBkb2Vzbid0Cj4gd29yayBiZWNhdXNlIHRoZSBkcml2ZXIg
ZmluZHMgb3V0IHRoYXQgJ25ld19mcmFtZV9zaXplID4KPiBpeGdiZV9yeF9idWZzeihyaW5nKScg
aW4gaXhnYmVfY2hhbmdlX210dSgpIGZ1bmN0aW9uLgo+IDIpIEhvd2V2ZXIsIGlmIHdlIGNoYW5n
ZSBNVFUgdG8gMTUwMSB0aGVuIGNoYW5nZSBmcm9tIDE1MDEgdG8gMjAwMCwgaXQKPiBkb2VzIHdv
cmssIGJlY2F1c2UgdGhlIGRyaXZlciBzZXRzIF9fSVhHQkVfUlhfM0tfQlVGRkVSIHdoZW4gTVRV
IHNpemUKPiBpcyBjb252ZXJ0ZWQgdG8gMTUwMSwgd2hpY2ggbGF0ZXIgc2l6ZSBjaGVjayBwb2xp
Y3kgYWxsb3dzLgo+IAo+IFRoZSBkZWZhdWx0IE1UVSB2YWx1ZSBmb3IgbW9zdCBzZXJ2ZXJzIGlz
IDE1MDAgd2hpY2ggY2Fubm90IGJlIGFkanVzdGVkCj4gZGlyZWN0bHkgdG8gdGhlIHZhbHVlIGxh
cmdlciB0aGFuIElYR0JFX01BWF8yS19GUkFNRV9CVUlMRF9TS0IgKDE1MzQgb3IKPiAxNTM2KSBp
ZiBpdCBsb2FkcyBYRFAuCj4gCj4gQWZ0ZXIgSSBkbyBhIHF1aWNrIHN0dWR5IG9uIHRoZSBtYW5u
ZXIgb2YgaTQwRSBkcml2ZXIgYWxsb3dpbmcgdHdvIGtpbmRzCj4gb2YgYnVmZmVyIHNpemUgKG9u
ZSBpcyAyMDQ4IHdoaWxlIGFub3RoZXIgaXMgMzA3MikgdG8gc3VwcG9ydCBYRFAgbW9kZSBpbgo+
IGk0MGVfbWF4X3hkcF9mcmFtZV9zaXplKCksIEkgYmVsaWV2ZSB0aGUgZGVmYXVsdCBNVFUgc2l6
ZSBpcyBwb3NzaWJseSBub3QKPiBzYXRpc2ZpZWQgaW4gWERQIG1vZGUgd2hlbiBJWEdCRSBkcml2
ZXIgaXMgaW4gdXNlLCB3ZSBzb21ldGltZXMgbmVlZCB0bwo+IGluc2VydCBhIG5ldyBoZWFkZXIs
IHNheSwgdnhsYW4gaGVhZGVyLiBTbyBzZXR0aW5nIHRoZSAzSy1idWZmZXIgZmxhZwo+IGNvdWxk
IHNvbHZlIHRoZSBpc3N1ZS4KCldoYXQgY2FyZCBkaWQgeW91IHRlc3Qgd2l0aCBleGFjdGx5PwoK
PiBbMV0gY29tbWl0IDM4YjdlN2Y4YWU4MiAoIml4Z2JlOiBEbyBub3QgYWxsb3cgTFJPIG9yIE1U
VSBjaGFuZ2Ugd2l0aCBYRFAiKQo+IFsyXSBjb21taXQgZmFiZjFiY2UxMDNhICgiaXhnYmU6IFBy
ZXZlbnQgdW5zdXBwb3J0ZWQgY29uZmlndXJhdGlvbnMgd2l0aAo+IFhEUCIpCgpJ4oCZZCBzYXkg
dG8gbm90IGJyZWFrIHRoZSBsaW5lIGluIHJlZmVyZW5jZXMuCgo+IFNpZ25lZC1vZmYtYnk6IEph
c29uIFhpbmcgPGtlcm5lbHhpbmdAdGVuY2VudC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV9tYWluLmMgfCAzICsrKwo+ICAgMSBmaWxlIGNoYW5n
ZWQsIDMgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9peGdiZS9peGdiZV9tYWluLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
eGdiZS9peGdiZV9tYWluLmMKPiBpbmRleCBhYjgzNzBjNDEzZjMuLmRjMDE2NTgyZjkxZSAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV9tYWluLmMK
PiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV9tYWluLmMKPiBA
QCAtNDMxMyw2ICs0MzEzLDkgQEAgc3RhdGljIHZvaWQgaXhnYmVfc2V0X3J4X2J1ZmZlcl9sZW4o
c3RydWN0IGl4Z2JlX2FkYXB0ZXIgKmFkYXB0ZXIpCj4gICAJCWlmIChJWEdCRV8yS19UT09fU01B
TExfV0lUSF9QQURESU5HIHx8Cj4gICAJCSAgICAobWF4X2ZyYW1lID4gKEVUSF9GUkFNRV9MRU4g
KyBFVEhfRkNTX0xFTikpKQo+ICAgCQkJc2V0X2JpdChfX0lYR0JFX1JYXzNLX0JVRkZFUiwgJnJ4
X3JpbmctPnN0YXRlKTsKPiArCj4gKwkJaWYgKGl4Z2JlX2VuYWJsZWRfeGRwX2FkYXB0ZXIoYWRh
cHRlcikpCj4gKwkJCXNldF9iaXQoX19JWEdCRV9SWF8zS19CVUZGRVIsICZyeF9yaW5nLT5zdGF0
ZSk7Cj4gICAjZW5kaWYKPiAgIAl9Cj4gICB9CgoKS2luZCByZWdhcmRzLAoKUGF1bApfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4g
bWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1
b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
