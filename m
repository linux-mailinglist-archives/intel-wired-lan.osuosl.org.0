Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B9C3444BDC7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Nov 2021 10:27:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 058FD608DE;
	Wed, 10 Nov 2021 09:27:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bmc5vej5nTDl; Wed, 10 Nov 2021 09:27:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1862860876;
	Wed, 10 Nov 2021 09:27:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AFE041BF345
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Nov 2021 09:27:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9BE9681026
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Nov 2021 09:27:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DrkBPEf9POkB for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Nov 2021 09:27:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0FE8881025
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Nov 2021 09:27:19 +0000 (UTC)
Received: from [141.14.13.160] (g415.RadioFreeInternet.molgen.mpg.de
 [141.14.13.160])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 43F7161E5FE00;
 Wed, 10 Nov 2021 10:27:17 +0100 (CET)
Message-ID: <38c47f1b-f153-6c79-2ec5-ed4332c52f6c@molgen.mpg.de>
Date: Wed, 10 Nov 2021 10:27:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Content-Language: en-US
To: Dan Carpenter <dan.carpenter@oracle.com>
References: <20211110081350.GI5176@kili>
 <89022668-5c63-bf19-a768-6bef2a3be3b0@molgen.mpg.de>
 <20211110090557.GL2001@kadam>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20211110090557.GL2001@kadam>
Subject: Re: [Intel-wired-lan] [PATCH net] iavf: missing unlocks in
 iavf_watchdog_task()
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
Cc: Jakub Pawlak <jakub.pawlak@intel.com>, netdev@vger.kernel.org,
 kernel-janitors@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Mateusz Palczewski <mateusz.palczewski@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBEYW4sCgoKQW0gMTAuMTEuMjEgdW0gMTA6MDUgc2NocmllYiBEYW4gQ2FycGVudGVyOgo+
IE9uIFdlZCwgTm92IDEwLCAyMDIxIGF0IDA5OjUzOjUwQU0gKzAxMDAsIFBhdWwgTWVuemVsIHdy
b3RlOgoKPj4gVGhhbmsgeW91IGZvciB5b3VyIHBhdGNoLgo+Pgo+PiBGb3IgdGhlIGZ1dHVyZSwg
anVzdCBhIG5pdCBmb3IgdGhlIGNvbW1pdCBtZXNzYWdlIHN1bW1hcnkuIENvdWxkIHlvdSBtYWtl
IGl0Cj4+IGEgc3RhdGVtZW50IGJ5IGFkZGluZyBhIHZlcmIgKGluIGltcGVyYXRpdmUgbW9vZCkg
WzFdLgo+Pgo+Pj4gaWF2ZjogQWRkIG1pc3NpbmcgdW5sb2NrcyBpbiBpYXZmX3dhdGNoZG9nX3Rh
c2soKQo+IAo+IEltcGVyYXRpdmUgc2htZXJpdGF2ZS4KPiAKPiBXaGVuIHN1YnN5c3RlbXMgZ2V0
IHRha2VuIG92ZXIgYnkgZnVzc3kgYnVyZWF1Y3JhdHMgdGhlbiBJIG9ubHkgc2VuZAo+IHRoZW0g
YnVnIHJlcG9ydHMgaW5zdGVhZCBvZiBwYXRjaGVzLgoKSXQgd2FzIGp1c3QgYSB3aXNoIGFzIHRo
ZSBzdGFuZGFyZCBjb21taXQgbWVzc2FnZXMgZm9sbG93IHRoYXQgZm9ybWF0LCAKYW5kIGFueSB2
ZXJiIGNvdWxkIGJlIGFkZGVkLiBJdOKAmXMgbm90IGEgcmVxdWlyZW1lbnQgdG8gbXkga25vd2xl
ZGdlLCBhbmQgCkkgZG8gbm90IGhhdmUgYW55IGF1dGhvcml0eSBhbnl3YXkuIFNvcnJ5IGFib3V0
IHRoYXQsIGFuZCB0aGFuayB5b3UgZm9yIAp5b3VyIHBhdGNoZXMuCgoKS2luZCByZWdhcmRzLAoK
UGF1bApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBz
Oi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
