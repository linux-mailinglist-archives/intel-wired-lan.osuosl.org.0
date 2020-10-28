Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F88429D098
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Oct 2020 16:15:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 54D9686A40;
	Wed, 28 Oct 2020 15:15:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gOodiQe42srq; Wed, 28 Oct 2020 15:15:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 531BC86448;
	Wed, 28 Oct 2020 15:15:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D09651BF27E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Oct 2020 15:15:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C7457203F9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Oct 2020 15:15:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sX963r6Fv8Dw for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Oct 2020 15:15:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by silver.osuosl.org (Postfix) with ESMTPS id 0D3FD203E3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Oct 2020 15:15:17 +0000 (UTC)
IronPort-SDR: t7eSbIidCX4WYdCDIyW3+vZtO4oQZ03tlgvBHX2hFopenRPkaF2ks+Fo/0UI6k6qL2XaN/rfB4
 ODmJdLptHBkA==
X-IronPort-AV: E=McAfee;i="6000,8403,9788"; a="164773928"
X-IronPort-AV: E=Sophos;i="5.77,426,1596524400"; d="scan'208";a="164773928"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2020 08:15:11 -0700
IronPort-SDR: Fq4R0/dr3o/kVo7cqDiB3V4H/JupeownZCiX5L3nH84Wc1QKh0+MUpAv85GqpC9gNsvVFvg6nP
 NF38KQPjuZEQ==
X-IronPort-AV: E=Sophos;i="5.77,426,1596524400"; d="scan'208";a="536265213"
Received: from aketzova-mobl1.ger.corp.intel.com (HELO
 btopel-mobl.ger.intel.com) ([10.252.41.60])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2020 08:15:04 -0700
To: Eric Dumazet <edumazet@google.com>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?=
 <bjorn.topel@gmail.com>
References: <20201028133437.212503-1-bjorn.topel@gmail.com>
 <CANn89iLpwne8P+E4p+wD92xB0LP4WridLUhPQTx1CeDF-D+LdA@mail.gmail.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>
Message-ID: <149e5989-86c5-d9f4-3307-a55bc696d639@intel.com>
Date: Wed, 28 Oct 2020 16:14:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.2
MIME-Version: 1.0
In-Reply-To: <CANn89iLpwne8P+E4p+wD92xB0LP4WridLUhPQTx1CeDF-D+LdA@mail.gmail.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [RFC PATCH bpf-next 0/9] Introduce biased
 busy-polling
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
Cc: Daniel Borkmann <daniel@iogearbox.net>, netdev <netdev@vger.kernel.org>,
 qi.z.zhang@intel.com, Alexei Starovoitov <ast@kernel.org>,
 Jonathan Lemon <jonathan.lemon@gmail.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, bpf <bpf@vger.kernel.org>,
 magnus.karlsson@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMjAyMC0xMC0yOCAxNToxMywgRXJpYyBEdW1hemV0IHdyb3RlOgo+IE9uIFdlZCwgT2N0IDI4
LCAyMDIwIGF0IDI6MzUgUE0gQmrDtnJuIFTDtnBlbCA8Ympvcm4udG9wZWxAZ21haWwuY29tPiB3
cm90ZToKWy4uLl0KPj4gUGVyZm9ybWFuY2UgVURQIHNvY2tldHM6Cj4+Cj4+IEkgaGFja2VkIG5l
dHBlcmYgdG8gdXNlIG5vbi1ibG9ja2luZyBzb2NrZXRzLCBhbmQgbG9vcGluZyBvdmVyCj4+IHJl
Y3Zmcm9tKCkuIFRoZSBmb2xsb3dpbmcgY29tbWFuZC1saW5lIHdhcyB1c2VkOgo+PiAgICAkIG5l
dHBlcmYgLUggMTkyLjE2OC4xLjEgLWwgMzAgLXQgVURQX1JSIC12IDIgLS0gXAo+PiAgICAgICAg
LW8gbWluX2xhdGVuY3ksbWVhbl9sYXRlbmN5LG1heF9sYXRlbmN5LHN0ZGRldl9sYXRlbmN5LHRy
YW5zYWN0aW9uX3JhdGUKPj4KPj4gTm9uLWJsb2NraW5nOgo+PiAgICAxNiwxOC40NSwxOTUsMC45
NCw1NDA3MC4zNjkKPj4gTm9uLWJsb2NraW5nIHdpdGggYmlhc2VkIGJ1c3ktcG9sbGluZzoKPj4g
ICAgMTUsMTYuNTksMzgsMC43MCw2MDA4Ni4zMTMKPj4KPiAKPiBCdXQgYSBmYWlyIGNvbXBhcmlz
b24gc2hvdWxkIGJlIGRvbmUgdXNpbmcgY3VycmVudCBidXN5LXBvbGxpbmcgbW9kZSwKPiB3aGlj
aCBkb2VzIG5vdCByZXF1aXJlIG5ldHBlcmYgdG8gdXNlIG5vbi1ibG9ja2luZyBtb2RlIGluIHRo
ZSBmaXJzdCBwbGFjZSA/Cj4KClllYWgsIGdvb2QgcG9pbnQhIEknbGwgbWFrZSBzdXJlIHRvIGFk
ZCB0aGF0LgoKT25lIGRpZmZlcmVuY2UgYmV0d2VlbiBiaWFzZWQvcmVndWxhciBpcyB0aGF0IGZv
ciBlbGVwaGFudCBmbG93cywKcmVndWxhciBmYWxscyBiYWNrIHRvIHNvZnRpcnEgcHJvY2Vzc2lu
Zywgd2hlcmUgYXMgdGhlIGJpYXNlZCBzdGF5IGluCiJidXN5LXBvbGxpbmcgbW9kZSIuIEZ1cnRo
ZXIsIGlmIHRoZSBzb2Z0aXJxIGlzIHJlYWxseSBidXN5IGR1ZSB0byBoZWF2eQpsb2FkICh0cmFm
ZmljKSBidXN5LXBvbGxpbmcgd2lsbCBuZXZlciBiZSBlbnRlcmVkLgoKCj4gV291bGQgZGlzYWJs
aW5nL3JlYXJtaW5nIGludGVycnVwdHMgYWJvdXQgNjAsMDAwIHRpbWVzIHBlciBzZWNvbmQKPiBi
cmluZyBhbnkgYmVuZWZpdCA/Cj4KCk5vdCBmb2xsb3dpbmcsIEVyaWMuIFdkeW0/Cgo+IAo+IEFk
ZGl0aW9uYWwgcXVlc3Rpb25zIDoKPiAKPiAtIFdoYXQgaGFwcGVucyB0byB0aGUgZ3JvX2ZsdXNo
X3RpbWVvdXQgYW5kIGFjY3VtdWxhdGVkIFRDUCBzZWdtZW50cwo+IGluIEdSTyBlbmdpbmUKPiB3
aGlsZSB0aGUgYmlhc2VkIGJ1c3ktcG9sbGluZyBpcyBpbiB1c2UgPwo+Cj4gLSBXaGF0IG1lY2hh
bmlzbSB3b3VsZCBhdm9pZCBhIHBvdGVudGlhbCAyMDAgbXMgbGF0ZW5jeSB3aGVuIHRoZQo+IGFw
cGxpY2F0aW9uIHdhbnRzIHRvIGV4aXQgY2xlYW5seSA/Cj4gICAgUHJlc3VtYWJseSB3aGVuL2lm
IFNPX0JJQVNfQlVTWV9QT0xMIGlzIHVzZWQgdG8gY2xlYXIKPiBzay0+c2tfYmlhc19idXN5X3Bv
bGwgd2UgbmVlZAo+ICAgdG8gbWFrZSBzdXJlIGRldmljZSBpbnRlcnJ1cHRzIGFyZSByZS1lbmFi
bGVkLgo+CgpZZXMsIGdvb2QgcXVlc3Rpb25zL2lucHV0LiBJJ2xsIGxvb2sgaW50byB0aGUgZmly
c3Qgb25lLiBBcyBmb3IgdGhlCnNlY29uZCBvbmU7IEknZCBzYXkgdGhpcyBzaG91bGQgYmUgaW1w
bGVtZW50ZWQhIFRoYW5rcyEKCgpDaGVlcnMsCkJqw7ZybgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJ
bnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
