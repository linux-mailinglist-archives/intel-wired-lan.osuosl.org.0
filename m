Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B167B44FBEC
	for <lists+intel-wired-lan@lfdr.de>; Sun, 14 Nov 2021 23:00:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 20E044024E;
	Sun, 14 Nov 2021 21:59:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gfk-Wtt47RQh; Sun, 14 Nov 2021 21:59:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1E07C401D2;
	Sun, 14 Nov 2021 21:59:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 201EF1BF3DF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Nov 2021 15:08:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 05316605D0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Nov 2021 15:08:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=suse.de header.b="xtrQ8QYB";
 dkim=neutral reason="invalid (unsupported algorithm ed25519-sha256)"
 header.d=suse.de header.b="yV692aDY"
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P5Ex0lpJJTGV for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Nov 2021 15:08:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.220.29])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A66C5605AD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Nov 2021 15:08:31 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id A51BF1FD66;
 Fri, 12 Nov 2021 15:08:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1636729708; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=R/1fHuKFgBgw4hV9neRtlv0mhDFE9RH72dHARJzHv1I=;
 b=xtrQ8QYB3cUMrRALhmU2GVhy5qCSwkncdTDYv8X/uzjEvgbRxFg9ONxcBgbQYRmOUyEQyK
 tAjfGVNDCgmSRWmUL4ZzgI7RqWLxci/N2PRZFMI8nFLk9YBc5yamlaQ9Xsy2NalJQyOW1T
 NheZ+hlSfc5JUObB3gdaT4rgN96hGnk=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1636729708;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=R/1fHuKFgBgw4hV9neRtlv0mhDFE9RH72dHARJzHv1I=;
 b=yV692aDYuglUylNYIkwp5IllmIK0n2maEnXKbTY6x+MHHLLPNYBopF0S5G4+HkbXW4SsEh
 94Q7RMSvaS8PtEBw==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id E313213C75;
 Fri, 12 Nov 2021 15:08:27 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id DSBBM2uDjmGXVgAAMHmgww
 (envelope-from <dkirjanov@suse.de>); Fri, 12 Nov 2021 15:08:27 +0000
To: Letu Ren <fantasquex@gmail.com>, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com, davem@davemloft.net, kuba@kernel.org
References: <20211112142002.23156-1-fantasquex@gmail.com>
From: Denis Kirjanov <dkirjanov@suse.de>
Message-ID: <4246e551-8963-e6aa-a70a-7a7005c7316b@suse.de>
Date: Fri, 12 Nov 2021 18:08:27 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211112142002.23156-1-fantasquex@gmail.com>
Content-Language: ru
X-Mailman-Approved-At: Sun, 14 Nov 2021 21:59:50 +0000
Subject: Re: [Intel-wired-lan] [PATCH] net: igbvf: fix double free in
 `igbvf_probe`
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
Cc: netdev@vger.kernel.org, Zheyu Ma <zheyuma97@gmail.com>,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgoxMS8xMi8yMSA1OjIwIFBNLCBMZXR1IFJlbiDQv9C40YjQtdGCOgo+IEluIGBpZ2J2Zl9wcm9i
ZWAsIGlmIHJlZ2lzdGVyX25ldGRldigpIGZhaWxzLCB0aGUgcHJvZ3JhbSB3aWxsIGdvIHRvCj4g
bGFiZWwgZXJyX2h3X2luaXQsIGFuZCB0aGVuIHRvIGxhYmVsIGVycl9pb3JlbWFwLiBJbiBmcmVl
X25ldGRldigpIHdoaWNoCj4gaXMganVzdCBiZWxvdyBsYWJlbCBlcnJfaW9yZW1hcCwgdGhlcmUg
aXMgYGxpc3RfZm9yX2VhY2hfZW50cnlfc2FmZWAgYW5kCj4gYG5ldGlmX25hcGlfZGVsYCB3aGlj
aCBhaW1zIHRvIGRlbGV0ZSBhbGwgZW50cmllcyBpbiBgZGV2LT5uYXBpX2xpc3RgLgo+IFRoZSBw
cm9ncmFtIGhhcyBhZGRlZCBhbiBlbnRyeSBgYWRhcHRlci0+cnhfcmluZy0+bmFwaWAgd2hpY2gg
aXMgYWRkZWQgYnkKPiBgbmV0aWZfbmFwaV9hZGRgIGluIGlnYnZmX2FsbG9jX3F1ZXVlcygpLiBI
b3dldmVyLCBhZGFwdGVyLT5yeF9yaW5nIGhhcwo+IGJlZW4gZnJlZWQgYmVsb3cgbGFiZWwgZXJy
X2h3X2luaXQuIFNvIHRoaXMgYSBVQUYuCj4gCj4gSW4gdGVybXMgb2YgaG93IHRvIHBhdGNoIHRo
ZSBwcm9ibGVtLCB3ZSBjYW4gcmVmZXIgdG8gaWdidmZfcmVtb3ZlKCkgYW5kCj4gZGVsZXRlIHRo
ZSBlbnRyeSBiZWZvcmUgYGFkYXB0ZXItPnJ4X3JpbmdgLgo+IAo+IFRoZSBLQVNBTiBsb2dzIGFy
ZSBhcyBmb2xsb3dzOgo+IAo+IFsgICAzNS4xMjYwNzVdIEJVRzogS0FTQU46IHVzZS1hZnRlci1m
cmVlIGluIGZyZWVfbmV0ZGV2KzB4MWZkLzB4NDUwCj4gWyAgIDM1LjEyNzE3MF0gUmVhZCBvZiBz
aXplIDggYXQgYWRkciBmZmZmODg4MTAxMjZkOTkwIGJ5IHRhc2sgbW9kcHJvYmUvMzY2Cj4gWyAg
IDM1LjEyODM2MF0KPiBbICAgMzUuMTI4NjQzXSBDUFU6IDEgUElEOiAzNjYgQ29tbTogbW9kcHJv
YmUgTm90IHRhaW50ZWQgNS4xNS4wLXJjMisgIzE0Cj4gWyAgIDM1LjEyOTc4OV0gSGFyZHdhcmUg
bmFtZTogUUVNVSBTdGFuZGFyZCBQQyAoUTM1ICsgSUNIOSwgMjAwOSksIEJJT1MgcmVsLTEuMTIu
MC01OS1nYzliYTUyNzZlMzIxLXByZWJ1aWx0LnFlbXUub3JnIDA0LzAxLzIwMTQKPiBbICAgMzUu
MTMxNzQ5XSBDYWxsIFRyYWNlOgo+IFsgICAzNS4xMzIxOTldICBkdW1wX3N0YWNrX2x2bCsweDU5
LzB4N2IKPiBbICAgMzUuMTMyODY1XSAgcHJpbnRfYWRkcmVzc19kZXNjcmlwdGlvbisweDdjLzB4
M2IwCj4gWyAgIDM1LjEzMzcwN10gID8gZnJlZV9uZXRkZXYrMHgxZmQvMHg0NTAKPiBbICAgMzUu
MTM0Mzc4XSAgX19rYXNhbl9yZXBvcnQrMHgxNjAvMHgxYzAKPiBbICAgMzUuMTM1MDYzXSAgPyBm
cmVlX25ldGRldisweDFmZC8weDQ1MAo+IFsgICAzNS4xMzU3MzhdICBrYXNhbl9yZXBvcnQrMHg0
Yi8weDcwCj4gWyAgIDM1LjEzNjM2N10gIGZyZWVfbmV0ZGV2KzB4MWZkLzB4NDUwCj4gWyAgIDM1
LjEzNzAwNl0gIGlnYnZmX3Byb2JlKzB4MTIxZC8weDFhMTAgW2lnYnZmXQo+IFsgICAzNS4xMzc4
MDhdICA/IGlnYnZmX3ZsYW5fcnhfYWRkX3ZpZCsweDEwMC8weDEwMCBbaWdidmZdCj4gWyAgIDM1
LjEzODc1MV0gIGxvY2FsX3BjaV9wcm9iZSsweDEzYy8weDFmMAo+IFsgICAzNS4xMzk0NjFdICBw
Y2lfZGV2aWNlX3Byb2JlKzB4MzdlLzB4NmMwCj4gWyAgIDM1LjE2NTUyNl0KPiBbICAgMzUuMTY1
ODA2XSBBbGxvY2F0ZWQgYnkgdGFzayAzNjY6Cj4gWyAgIDM1LjE2NjQxNF0gIF9fX19rYXNhbl9r
bWFsbG9jKzB4YzQvMHhmMAo+IFsgICAzNS4xNjcxMTddICBmb29fa21lbV9jYWNoZV9hbGxvY190
cmFjZSsweDNjLzB4NTAgW2lnYnZmXQo+IFsgICAzNS4xNjgwNzhdICBpZ2J2Zl9wcm9iZSsweDlj
NS8weDFhMTAgW2lnYnZmXQo+IFsgICAzNS4xNjg4NjZdICBsb2NhbF9wY2lfcHJvYmUrMHgxM2Mv
MHgxZjAKPiBbICAgMzUuMTY5NTY1XSAgcGNpX2RldmljZV9wcm9iZSsweDM3ZS8weDZjMAo+IFsg
ICAzNS4xNzk3MTNdCj4gWyAgIDM1LjE3OTk5M10gRnJlZWQgYnkgdGFzayAzNjY6Cj4gWyAgIDM1
LjE4MDUzOV0gIGthc2FuX3NldF90cmFjaysweDRjLzB4ODAKPiBbICAgMzUuMTgxMjExXSAga2Fz
YW5fc2V0X2ZyZWVfaW5mbysweDFmLzB4NDAKPiBbICAgMzUuMTgxOTQyXSAgX19fX2thc2FuX3Ns
YWJfZnJlZSsweDEwMy8weDE0MAo+IFsgICAzNS4xODI3MDNdICBrZnJlZSsweGUzLzB4MjUwCj4g
WyAgIDM1LjE4MzIzOV0gIGlnYnZmX3Byb2JlKzB4MTE3My8weDFhMTAgW2lnYnZmXQo+IFsgICAz
NS4xODQwNDBdICBsb2NhbF9wY2lfcHJvYmUrMHgxM2MvMHgxZjAKPiAKPiBSZXBvcnRlZC1ieTog
WmhleXUgTWEgPHpoZXl1bWE5N0BnbWFpbC5jb20+ClBsZWFzZSBhZGQgRml4ZXMgdGFnCj4gU2ln
bmVkLW9mZi1ieTogTGV0dSBSZW4gPGZhbnRhc3F1ZXhAZ21haWwuY29tPgo+IC0tLQo+ICAgZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdidmYvbmV0ZGV2LmMgfCAxICsKPiAgIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pZ2J2Zi9uZXRkZXYuYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ln
YnZmL25ldGRldi5jCj4gaW5kZXggZDMyZTcyZDk1M2M4Li5kMDUxOTE4ZGZkZmYgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdidmYvbmV0ZGV2LmMKPiArKysgYi9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2J2Zi9uZXRkZXYuYwo+IEBAIC0yODYxLDYgKzI4
NjEsNyBAQCBzdGF0aWMgaW50IGlnYnZmX3Byb2JlKHN0cnVjdCBwY2lfZGV2ICpwZGV2LCBjb25z
dCBzdHJ1Y3QgcGNpX2RldmljZV9pZCAqZW50KQo+ICAgCXJldHVybiAwOwo+ICAgCj4gICBlcnJf
aHdfaW5pdDoKPiArCW5ldGlmX25hcGlfZGVsKCZhZGFwdGVyLT5yeF9yaW5nLT5uYXBpKTsKPiAg
IAlrZnJlZShhZGFwdGVyLT50eF9yaW5nKTsKPiAgIAlrZnJlZShhZGFwdGVyLT5yeF9yaW5nKTsK
PiAgIGVycl9zd19pbml0Ogo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBv
c3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LXdpcmVkLWxhbgo=
