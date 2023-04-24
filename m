Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A88EC6ED4FB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Apr 2023 21:01:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 22C5E81C11;
	Mon, 24 Apr 2023 19:01:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 22C5E81C11
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682362902;
	bh=DL1fp4dM+M7q19/ldxj3qFKNyqPdktK8tJrKJ5TaUIA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UCiZYcOZb5qLJd7pcvqr4UEglx5isn7Klxu+zhW0PDTzRSm9AhhGHjr5lUT/LcmCn
	 hRpC9og8l59rcsZYEuATgUiJy1K1EaCuWce4S18sU2He0ZOmB5yF9ULzG4ympKSALX
	 KVeXRHIF0kPrdJk3RcxlL6jzeAY3LdlSqTkW0q2Bt2n9nzukZvzVXs12EJFbe5a8Ut
	 EZjeWho2ml88XShk54k7+useFu+seTx6r3S9nP/ykaZxlJ84W0VKvSACzutI1ZmlbE
	 +zPToJ75darQ0M1Ko59RPvbYim4g87LAW+YKqmpMddWTtepoa66mUUhth47qnqB7te
	 VcstmGPenFHcg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qXaLOsq-t2aJ; Mon, 24 Apr 2023 19:01:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1973481770;
	Mon, 24 Apr 2023 19:01:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1973481770
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 15C901C2B1F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Apr 2023 19:01:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E215881770
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Apr 2023 19:01:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E215881770
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SPkJzwR3eUwt for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Apr 2023 19:01:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6B7DA8176F
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6B7DA8176F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Apr 2023 19:01:31 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5aebe8.dynamic.kabel-deutschland.de
 [95.90.235.232])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 2F59661E4052B;
 Mon, 24 Apr 2023 21:01:28 +0200 (CEST)
Message-ID: <b6a13b7f-b140-114b-781f-16299ec3379c@molgen.mpg.de>
Date: Mon, 24 Apr 2023 21:01:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: xiaoyan.gong@intel.com
References: <20230423075312.544244-1-xiaoyan.gong@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20230423075312.544244-1-xiaoyan.gong@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: enable multiple TXSTMP
 registers reporting TX timestamp.
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
Cc: inux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, edumazet@google.com, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciAgWGlhbyBZYW4sCgoKQW0gMjMuMDQuMjMgdW0gMDk6NTMgc2NocmllYiBnb25neGlhby1p
bnRlbDoKCllvdXIgbmFtZSBpcyBpbmNvcnJlY3RseSBjb25maWd1cmVkLiBQbGVhc2UgZG8gKHBs
ZWFzZSBjb3JyZWN0IHRoZSAKc3BlbGxpbmcpOgoKICAgICAkIGdpdCBjb25maWcgLS1nbG9iYWwg
dXNlci5uYW1lICJYaWFvIFlhbiBHb25nIgogICAgICQgZ2l0IGNvbW1pdCAtLWFtZW5kIC1zIC0t
YXV0aG9yPSJYaWFvIFlhbiBHb25nIAo8eGlhb3lhbi5nb25nQGludGVsLmNvbT4iCgpBbHNvLCBw
bGVhc2UgcmVtb3ZlIHRoZSBkb3QvcGVyaW9kIGZyb20gdGhlIGVuZCBvZiB0aGUgY29tbWl0IG1l
c3NhZ2UgCnN1bW1hcnkuCgo+IFRoZSBIVyBUWCB0aW1lc3RhbXBzIGNyZWF0ZWQgYnkgdGhlIE5J
QyB2aWEgc29ja2V0IG9wdGlvbnMgY2FuIGJlCj4gcmVxdWVzdGVkIHVzaW5nIHRoZSBjdXJyZW50
IG5ldHdvcmsgdGltZXN0YW1wcyBnZW5lcmF0aW9uIGNhcGFiaWxpdHkgb2YKPiBTT0ZfVElNRVNU
QU1QSU5HX1RYX0hBUkRXQVJFLiBUaGUgbW9zdCBjb21tb24gdXNlcnMgb2YgdGhpcyBzb2NrZXQg
ZmxhZwo+IGlzIFBUUCwgaG93ZXZlciBvdGhlciBwYWNrZXQgYXBwbGljYXRpb25zIHRoYXQgcmVx
dWlyZSB0eCB0aW1lc3RhbXBzIG1pZ2h0Cj4gYWxzbyBhc2sgZm9yIGl0Lgo+IAo+IFRoZSBwcm9i
bGVtIGlzIHRoYXQsIHdoZW4gdGhlcmUgaXMgYSBsb3Qgb2YgdHJhZmZpYywgdGhlcmUgaXMgYSBo
aWdoIGNoYW5jZQo+IHRoYXQgdGhlIHRpbWVzdGFtcHMgZm9yIGEgUFRQIHBhY2tldCB3aWxsIGJl
IGxvc3QgaWYgYm90aCBQVFAgYW5kIE5vbi1QVFAKCm5vbi1QVFAKCj4gcGFja2V0cyB1c2UgdGhl
IHNhbWUgU09GX1RJTUVTVEFNUElOR19UWF9IQVJEV0FSRSBjYXVzaW5nIHRoZSB0eCB0aW1lb3V0
LgoKSXMgTGludXggbG9nZ2luZyB0aGlzPyBJZiBzbywgcGxlYXNlIHBhc3RlIHN1Y2ggYSBtZXNz
YWdlLgoKPiBUaGUgcm9vdCBjYXVzZSBvZiB0aGlzIHByb2JsZW0gaXMgdGhhdCBpZ2Mgb25seSB1
c2Ugb25lIFRYU1RNUCByZWdpc3RlciB0bwoKdXNlKnMqCgo+IHJlcG9ydCBUWCB0aW1lc3RhbXAu
IFN1Y2ggaW1wbGVtZW50YXRpb24gaW50ZW5zaWZ5IHRoZSByYWNlIG9mIFRYIHRpbWVzdGFtcAoK
aW50ZW5zaWYqaWVzKgoKPiBxdWVyeSBmcm9tIG11bHRpcGxlIHNvY2tldHMuCj4gCj4gSG93ZXZl
ciwgSW50ZWwgaTIyNS9pMjI2IGNvbnRyb2xsZXIgaGFzIDQgVFhTVE1QIHJlZ2lzdGVycy4gVGhp
cyBwYXRjaCBmdWxseQo+IHV0aWxpemVzIDQgVFhTVE1QIHJlZ2lzdGVycyB0byByZWR1Y2UgdGhl
IHJhY2Ugb2YgVFggdGltZXN0YW1wIHF1ZXJ5Lgo+IAo+IFRoaXMgcGF0Y2ggZGVkaWNhdGVzIFRY
U1RNUCByZWdpc3RlciAwIHRvIGFsbCBQVFAgcGFja2V0cy4gSW4gbW9zdCBjYXNlLCBvbmx5Cj4g
b25lIFBUUCBzeW5jIHByb2Nlc3Mgd2lsbCBydW4gb24gYSBuZXR3b3JrIHBvcnQuIFNvLCBvbmUg
VFhTVE1QIHJlZ2lzdGVyIGlzCj4gZW5vdWdoIGZvciBQVFAgc3RyZWFtLgo+IAo+IEZvciBUWFNU
TVAgcmVnaXN0ZXIgMSAtIDMsIHRoZXkgYXJlIGFsbG9jYXRlZCB0byBzb2NrZXRzIHJvdW5kIHJv
YmluLiBBbmQgZWFjaAoKcmVnaXN0ZXIqcyoKCj4gc29ja2V0IGNhbiBvbmx5IG9jY3VweSBvbmUg
cmVnaXN0ZXIgYXQgYSB0aW1lLiBTbywgYXQgbGVhc3QgMyBzb2NrZXRzIGNhbiByZXF1aWVzdAoK
cmVxdWVzdAoKPiBUWCB0aW1lc3RhbXAgc2ltdWx0YW5lb3VzbHkuCgpQbGVhc2UgYWRkIFNpZ25l
ZC1vZmYtYnkgbGluZS4KCkhvdyBkaWQgeW91IHRlc3QgeW91ciBwYXRjaD8KCj4gLS0tCj4gICBk
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjLmggICAgICAgICB8IDI0ICsrKy0tCj4g
ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX2Jhc2UuaCAgICB8ICAyICstCj4g
ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX2RlZmluZXMuaCB8ICAyICstCj4g
ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX21haW4uYyAgICB8IDU1ICsrKysr
KysrKy0tCj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX3B0cC5jICAgICB8
IDk3ICsrKysrKysrKysrKystLS0tLS0tCj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
Z2MvaWdjX3JlZ3MuaCAgICB8ICA0ICstCj4gICA2IGZpbGVzIGNoYW5nZWQsIDEyOSBpbnNlcnRp
b25zKCspLCA1NSBkZWxldGlvbnMoLSkKClvigKZdCgoKS2luZCByZWdhcmRzLAoKUGF1bApfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1s
YW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMu
b3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
