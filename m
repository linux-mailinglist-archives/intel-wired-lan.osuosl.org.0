Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B8986294FC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Nov 2022 10:57:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CBA0640984;
	Tue, 15 Nov 2022 09:57:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CBA0640984
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668506226;
	bh=4qu9V+h+7MwAIhtLDa7MDBfSshBuL16oN0D9L/2WoTQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RhdU0Oqodkaez4gROeh8PS6DFIXYB96S1Ls8SQRIqqXjPICTpgwvsM+Vi988UCV/b
	 AOcGjD+OC7X4k+mUYjESxAWm9lKSgE/wUpeD+OiHuQfi8NaJGPFRucgvQSC4yMtGHX
	 xKIAS6VhrK1dXGao7SjEUFZIrQ+UopKgfAPh1H+bs6vtNdkBtif+Mohr4NYlM9th8z
	 2swq/O++95nji8VdVcnmzCXRLGTmFhez59NVn4uGj8OEmTa7OeuWAyKlXgzJFCf/V2
	 Fmj8LCUJMyzXmnf+AzJzk0lw7yucjXyKX05o1tQPyK7UDwNVIPit5rtMtQi/V0ACjl
	 m5g2o2b0uqyWg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aHmJqMvdJ1x8; Tue, 15 Nov 2022 09:57:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7571040990;
	Tue, 15 Nov 2022 09:57:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7571040990
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B9FCD1BF2A0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 09:57:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9422E813BC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 09:57:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9422E813BC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FL7vZhRph1Ju for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Nov 2022 09:56:59 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2756D812D6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2756D812D6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 09:56:58 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 019DC61EA1930;
 Tue, 15 Nov 2022 10:56:56 +0100 (CET)
Message-ID: <da5ff524-d93a-2aeb-cfe3-56295785e14d@molgen.mpg.de>
Date: Tue, 15 Nov 2022 10:56:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
To: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>,
 Kamil Maziarz <kamil.maziarz@intel.com>
References: <20221115084925.2489227-1-kamil.maziarz@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20221115084925.2489227-1-kamil.maziarz@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net v3] i40e: Disallow ip4 and ip6
 l4_4_bytes
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

W0NjOiArSmFjb2JdCgpEZWFyIFByemVteXNsYXcsIGRlYXIgS2FtaWwsCgoKQW0gMTUuMTEuMjIg
dW0gMDk6NDkgc2NocmllYiBLYW1pbCBNYXppYXJ6Ogo+IEZyb206IFByemVteXNsYXcgUGF0eW5v
d3NraSA8cHJ6ZW15c2xhd3gucGF0eW5vd3NraUBpbnRlbC5jb20+Cj4gCj4gUmV0dXJuIC1FT1BO
T1RTVVBQLCB3aGVuIHVzZXIgcmVxdWVzdHMgbDRfNF9ieXRlcyBmb3IgcmF3IElQNCBvcgo+IElQ
NiBmbG93IGRpcmVjdG9yIGZpbHRlcnMuIEZsb3cgZGlyZWN0b3IgZG9lcyBub3Qgc3VwcG9ydCBm
aWx0ZXJpbmcKPiBvbiBsNCBieXRlcyBmb3IgUENUWVBFcyB1c2VkIGJ5IElQNCBhbmQgSVA2IGZp
bHRlcnMuCj4gV2l0aG91dCB0aGlzIHBhdGNoLCB1c2VyIGNvdWxkIGNyZWF0ZSBmaWx0ZXJzIHdp
dGggbDRfNF9ieXRlcyBmaWVsZHMsCj4gd2hpY2ggZGlkIG5vdCBkbyBhbnkgZmlsdGVyaW5nIG9u
IEw0LCBidXQgb25seSBvbiBMMyBmaWVsZHMuCj4gCj4gRml4ZXM6IDM2Nzc3ZDlmYTI0YyAoImk0
MGU6IGNoZWNrIGN1cnJlbnQgY29uZmlndXJlZCBpbnB1dCBzZXQgd2hlbiBhZGRpbmcgbnR1cGxl
IGZpbHRlcnMiKQoKQXJlIHlvdSBzdXJlIHRoYXQgaXMgdGhlIGNvcnJlY3QgY29tbWl0LiBJdCBv
bmx5IHNlZW1zIHRvIGhhdmUgCnJlZmFjdG9yZWQgc3R1ZmYsIOKApgoKPiBTaWduZWQtb2ZmLWJ5
OiBQcnplbXlzbGF3IFBhdHlub3dza2kgPHByemVteXNsYXd4LnBhdHlub3dza2lAaW50ZWwuY29t
Pgo+IFNpZ25lZC1vZmYtYnk6IEthbWlsIE1hemlhcnogIDxrYW1pbC5tYXppYXJ6QGludGVsLmNv
bT4KPiAtLS0KPiAgIHYzOiByZW1vdmVkIGZvb3RlciBhbmQgYWRkZWQgRml4ZXMgdGFnCj4gLS0t
Cj4gICB2MjogY2hhbmdlZCBhdXRob3IgYW5kIHRyZWUKPiAtLS0KPiAgIGRyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2k0MGUvaTQwZV9ldGh0b29sLmMgfCAxMiArKy0tLS0tLS0tLS0KPiAgIDEg
ZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfZXRodG9vbC5jIGIv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2V0aHRvb2wuYwo+IGluZGV4IDE1
NmU5MmM0Mzc4MC4uNjY5NWRiZTYxYTA0IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2k0MGUvaTQwZV9ldGh0b29sLmMKPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pNDBlL2k0MGVfZXRodG9vbC5jCj4gQEAgLTQ0NDcsMTEgKzQ0NDcsNyBAQCBzdGF0
aWMgaW50IGk0MGVfY2hlY2tfZmRpcl9pbnB1dF9zZXQoc3RydWN0IGk0MGVfdnNpICp2c2ksCj4g
ICAJCQlyZXR1cm4gLUVPUE5PVFNVUFA7Cj4gICAKPiAgIAkJLyogRmlyc3QgNCBieXRlcyBvZiBM
NCBoZWFkZXIgKi8KPiAtCQlpZiAodXNyX2lwNF9zcGVjLT5sNF80X2J5dGVzID09IGh0b25sKDB4
RkZGRkZGRkYpKQo+IC0JCQluZXdfbWFzayB8PSBJNDBFX0w0X1NSQ19NQVNLIHwgSTQwRV9MNF9E
U1RfTUFTSzsKPiAtCQllbHNlIGlmICghdXNyX2lwNF9zcGVjLT5sNF80X2J5dGVzKQo+IC0JCQlu
ZXdfbWFzayAmPSB+KEk0MEVfTDRfU1JDX01BU0sgfCBJNDBFX0w0X0RTVF9NQVNLKTsKPiAtCQll
bHNlCj4gKwkJaWYgKHVzcl9pcDRfc3BlYy0+bDRfNF9ieXRlcykKPiAgIAkJCXJldHVybiAtRU9Q
Tk9UU1VQUDsKCmFuZCB0aGUgY29uZGl0aW9uIGJlZm9yZSB3YXMKCiAgICAgaWYgKCF0Y3BfaXA0
X3NwZWMtPmlwNGRzdCB8fCB+dGNwX2lwNF9zcGVjLT5pcDRkc3QpCgo+ICAgCj4gICAJCS8qIEZp
bHRlcmluZyBvbiBUeXBlIG9mIFNlcnZpY2UgaXMgbm90IHN1cHBvcnRlZC4gKi8KPiBAQCAtNDQ5
MCwxMSArNDQ4Niw3IEBAIHN0YXRpYyBpbnQgaTQwZV9jaGVja19mZGlyX2lucHV0X3NldChzdHJ1
Y3QgaTQwZV92c2kgKnZzaSwKPiAgIAkJZWxzZQo+ICAgCQkJcmV0dXJuIC1FT1BOT1RTVVBQOwo+
ICAgCj4gLQkJaWYgKHVzcl9pcDZfc3BlYy0+bDRfNF9ieXRlcyA9PSBodG9ubCgweEZGRkZGRkZG
KSkKPiAtCQkJbmV3X21hc2sgfD0gSTQwRV9MNF9TUkNfTUFTSyB8IEk0MEVfTDRfRFNUX01BU0s7
Cj4gLQkJZWxzZSBpZiAoIXVzcl9pcDZfc3BlYy0+bDRfNF9ieXRlcykKPiAtCQkJbmV3X21hc2sg
Jj0gfihJNDBFX0w0X1NSQ19NQVNLIHwgSTQwRV9MNF9EU1RfTUFTSyk7Cj4gLQkJZWxzZQo+ICsJ
CWlmICh1c3JfaXA2X3NwZWMtPmw0XzRfYnl0ZXMpCj4gICAJCQlyZXR1cm4gLUVPUE5PVFNVUFA7
Cj4gICAKPiAgIAkJLyogRmlsdGVyaW5nIG9uIFRyYWZmaWMgY2xhc3MgaXMgbm90IHN1cHBvcnRl
ZC4gKi8KCgpLaW5kIHJlZ2FyZHMsCgpQYXVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2ly
ZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtd2lyZWQtbGFuCg==
