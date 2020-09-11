Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 914B026665D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Sep 2020 19:26:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4A64987ADB;
	Fri, 11 Sep 2020 17:26:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O9-Fo1LFLVfi; Fri, 11 Sep 2020 17:26:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 44BC787AF3;
	Fri, 11 Sep 2020 17:26:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 82D941BF3CA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 17:26:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7C70C2E2A5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 17:26:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N5lSRCut3JU3 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Sep 2020 17:26:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from dispatch1-us1.ppe-hosted.com (dispatch1-us1.ppe-hosted.com
 [148.163.129.52])
 by silver.osuosl.org (Postfix) with ESMTPS id A444A2E2A7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 17:26:38 +0000 (UTC)
Received: from mx1-us1.ppe-hosted.com (unknown [10.7.65.62])
 by dispatch1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id
 4B05D60097; Fri, 11 Sep 2020 17:26:38 +0000 (UTC)
Received: from us4-mdac16-21.ut7.mdlocal (unknown [10.7.65.245])
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id 4949F8009E; 
 Fri, 11 Sep 2020 17:26:38 +0000 (UTC)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.7.66.31])
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id D41C928004D;
 Fri, 11 Sep 2020 17:26:37 +0000 (UTC)
Received: from webmail.solarflare.com (uk.solarflare.com [193.34.186.16])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 89A18940089;
 Fri, 11 Sep 2020 17:26:37 +0000 (UTC)
Received: from [10.17.20.203] (10.17.20.203) by ukex01.SolarFlarecom.com
 (10.17.10.4) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Fri, 11 Sep
 2020 18:26:32 +0100
To: Jesse Brandeburg <jesse.brandeburg@intel.com>, <netdev@vger.kernel.org>
References: <20200911012337.14015-1-jesse.brandeburg@intel.com>
 <20200911012337.14015-12-jesse.brandeburg@intel.com>
From: Edward Cree <ecree@solarflare.com>
Message-ID: <227d2fe4-ddf8-89c9-b80b-142674c2cca0@solarflare.com>
Date: Fri, 11 Sep 2020 18:26:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200911012337.14015-12-jesse.brandeburg@intel.com>
Content-Language: en-GB
X-Originating-IP: [10.17.20.203]
X-ClientProxiedBy: ocex03.SolarFlarecom.com (10.20.40.36) To
 ukex01.SolarFlarecom.com (10.17.10.4)
X-TM-AS-Product-Ver: SMEX-12.5.0.1300-8.6.1012-25660.000
X-TM-AS-Result: No-3.714600-8.000000-10
X-TMASE-MatchedRID: QfHZjzml1E/mLzc6AOD8DfHkpkyUphL91JP9NndNOkUda1Vk3RqxOIO3
 X3IJL/YZ0JwSV7ipDfUsMgTZd2lCt0ohWBZ4QV+6qJSK+HSPY+/pVMb1xnESMgWqvFWg3Xg6Tup
 AS3DN87IeQ2V1bj+6xusaujhTG8awkrMo37I6x/4J6xTeI+I0LAZyESFXAljf4Vo4xoaXBy+1U5
 6R2ZaElQ0mmbOIq98WoHy2Fsp5cv5jDV//SvkH3kz7FUUjXG1jNW8jQhzoALUrxUs8Nw/2foRqG
 PInK2mOFOow+ChHTLNftuJwrFEhTY2j49Ftap9Ero1URZJFbJsCr1CPevXiUuLYJrD1X9Z+1GHp
 OH8+3EeqITbnPRiwj0JfV3B+/RErwM16T6UwC99QpRvUskPZiLmNpuXp+tR+mg6zWDb9bUyFcgJ
 c+QNMwu8bJovJYm8FYupx0XjSQPLDOFVmKqGJ4bPn3tFon6UK
X-TM-AS-User-Approved-Sender: Yes
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--3.714600-8.000000
X-TMASE-Version: SMEX-12.5.0.1300-8.6.1012-25660.000
X-MDID: 1599845198-ywl0bJXEWIi0
Subject: Re: [Intel-wired-lan] [RFC PATCH net-next v1 11/11]
 drivers/net/ethernet: clean up mis-targeted comments
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMTEvMDkvMjAyMCAwMjoyMywgSmVzc2UgQnJhbmRlYnVyZyB3cm90ZToKPiBBcyBwYXJ0IG9m
IHRoZSBXPTEgY2xlYW51cHMgZm9yIGV0aGVybmV0LCBhIG1pbGxpb24gWzFdIGRyaXZlciBjb21t
ZW50cwo+IGhhZCB0byBiZSBjbGVhbmVkIHVwIHRvIGdldCB0aGUgVz0xIGNvbXBpbGF0aW9uIHRv
IHN1Y2NlZWQuIFRoaXMKPiBjaGFuZ2UgZmluYWxseSBtYWtlcyB0aGUgZHJpdmVycy9uZXQvZXRo
ZXJuZXQgdHJlZSBjb21waWxlIHdpdGgKPiBXPTEgc2V0IG9uIHRoZSBjb21tYW5kIGxpbmUuCj4K
PiBbMV0gLSBvayBpdCB3YXNuJ3QgcXVpdGUgYSBtaWxsaW9uLCBidXQgaXQgZmVsdCBsaWtlIGl0
Lgo+Cj4gU2lnbmVkLW9mZi1ieTogSmVzc2UgQnJhbmRlYnVyZyA8amVzc2UuYnJhbmRlYnVyZ0Bp
bnRlbC5jb20+Cj4KPiAtLS0KPiBAQCAtMjYzLDYgKzI2OCw3IEBAIHN0cnVjdCBlZnhfcHRwX3Rp
bWVzZXQgewo+ICAgKiBAbmljX3RzX2VuYWJsZWQ6IEZsYWcgaW5kaWNhdGluZyBpZiBOSUMgZ2Vu
ZXJhdGVkIFRTIGV2ZW50cyBhcmUgaGFuZGxlZAo+ICAgKiBAdHhidWY6IEJ1ZmZlciBmb3IgdXNl
IHdoZW4gdHJhbnNtaXR0aW5nIChQVFApIHBhY2tldHMgdG8gTUMgKGF2b2lkcwo+ICAgKiAgICAg
ICAgIGFsbG9jYXRpb25zIGluIG1haW4gZGF0YSBwYXRoKS4KPiArICogQE1DX0NNRF9QVFBfSU5f
VFJBTlNNSVRfTEVOTUFYOiBoYWNrIHRvIGdldCBXPTEgdG8gY29tcGlsZQpJIHRoaW5rIEknZCBy
YXRoZXIgaGF2ZSBhIGJvZ3VzIHdhcm5pbmcgdGhhbiBib2d1cyBrZXJuZWxkb2N0byBzdXBwcmVz
cyBpdDsKwqBwbGVhc2UgZHJvcCB0aGlzIGxpbmUgKGFuZCBlbmNvdXJhZ2UgdG9vbGNoYWluIGZv
bGtzIHRvIGZpZ3VyZSBvdXQgaG93IHRvCsKgZ2V0IGtlcm5lbGRvYyB0byBpZ25vcmUgbWFjcm9z
IGl0IGNhbid0IHVuZGVyc3RhbmQpLgpBcGFydCBmcm9tIHRoYXQsIHRoZSBzZmMgYW5kIHNmYy9m
YWxjb24gcGFydHMgTEdUTS4KCi1lZApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxh
bkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLXdpcmVkLWxhbgo=
