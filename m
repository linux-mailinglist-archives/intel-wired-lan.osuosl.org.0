Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6832171930A
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Jun 2023 08:15:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CC0FC424E5;
	Thu,  1 Jun 2023 06:15:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CC0FC424E5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685600100;
	bh=cWywpb7GFxs1johuEVXK6CuP9mft48+LVP2EANpm87I=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HpNAvCNRbV2l7FwfwNbg59hEwpQUO74xLXhPmH4b8gMgFJG2yb+/RbnvbHz/rjFgZ
	 Aq9PIcQvmTiM9oymXH/Y7pj7Ay8CyiLGCDnUNShJHyMzXAojASVstqOd30/njc7zB3
	 WlAqsURcjvFwIKZ5u/aazq6DUhNq3aoMWERWi0EXsPMC5WNIW77hsvsTOKzN9d+ddi
	 T4CPFdwXXyoAW4Lnl74ko3BIbHwe5c0uzHPTPsEMPzh6fXVZCcpReV7wshhDztnDaJ
	 FHSB+XxxZx/PDG0zb1U7SLysBhoDcqC6YqwAhEltrIDrosLKw7sf6C5ZFfOoIhiq6c
	 B3Qa6KNHuVhZA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JjqYeJ1hKUAX; Thu,  1 Jun 2023 06:15:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6DA6D424E0;
	Thu,  1 Jun 2023 06:14:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6DA6D424E0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C414A1BF82F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jun 2023 06:14:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9698D41693
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jun 2023 06:14:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9698D41693
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FM_47X-PMjDC for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Jun 2023 06:14:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BB71841667
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BB71841667
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jun 2023 06:14:52 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5aef03.dynamic.kabel-deutschland.de
 [95.90.239.3])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 3AB5E61E4052B;
 Thu,  1 Jun 2023 08:14:15 +0200 (CEST)
Message-ID: <15af2a2f-2235-b9c5-b104-a09836f11dd9@molgen.mpg.de>
Date: Thu, 1 Jun 2023 08:14:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Egg Car <eggcar.luan@gmail.com>
References: <20230531090805.3959-1-eggcar.luan@gmail.com>
 <92180324-fa55-5427-839e-d555ac5a6cd7@molgen.mpg.de>
 <CACMC4jY=c8kBwxRjLL++ro=Zz1O54h5Y6ADU6x+46pgN8XhkpA@mail.gmail.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <CACMC4jY=c8kBwxRjLL++ro=Zz1O54h5Y6ADU6x+46pgN8XhkpA@mail.gmail.com>
Subject: Re: [Intel-wired-lan] [PATCH] igb: Fix extts capture value format
 for 82580/i354/i350
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
Cc: netdev@vger.kernel.org, jesse.brandeburg@intel.com,
 linux-kernel@vger.kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CkRlYXIgRWdnLAoKClRoYW5rIHlvdSBmb3IgeW91ciByZXBseS4KCkFtIDAxLjA2LjIzIHVtIDA3
OjU1IHNjaHJpZWIgZWdnIGNhcjoKCj4+IEl04oCZZCBiZSBncmVhdCwgaWYgeW91IGFkZGVkIGEg
cGFyYWdyYXBoIGhvdyB0byByZXByb2R1Y2UgdGhlCj4+IGlzc3VlLgo+IAo+IEkgaGF2ZSB0ZXN0
ZWQgYW4gaTM1MCBOSUMgd2l0aCBhIDFQUFMgc2lnbmFsIGlucHV0IHRvIGEgU0RQIHBpbiwKPiBy
dW5uaW5nICd0czJwaGMnIHByb2dyYW0gZnJvbSBsaW51eHB0cCBwcm9qZWN0LCBhbmQgZm91bmQg
dGhhdCB0aGUKPiAxUFBTIHRpbWVzdGFtcHMgcmVhZGluZyBvdXQgYXJlIHJhdyByZWdpc3RlciB2
YWx1ZSBpbiByZXNvbHV0aW9uIG9mCj4gMW5zIGFuZCBhIG1heGltdW0gcmFuZ2Ugb2YgMl40MCBu
cywgdGh1cyBhYm91dCAxMDk5IHMuIEl0IHdhcwo+IHN1cHBvc2VkIHRvIGJlIGluIFRBSSB0aW1l
c3RhbXAgZm9ybWF0Lgo+IAo+IFNvcnJ5IEknbSBuZXcgdG8ga2VybmVsIGRldmVsb3BtZW50LCBz
aG91bGQgSSBtYWtlIGEgbmV3IHBhdGNoIHRvIGFkZAo+IGEgcGFyYWdyYXBoIGluIHRoZSBjb21t
aXQgaW5mb3JtYXRpb24/CgpUaGVyZSBpcyBubyBoYXJkIHJ1bGUgYWJvdXQgaXQsIGJ1dCBJIHdv
dWxkIGFwcHJlY2lhdGUgaXQuIEluIHRoZSBlbmQsCml04oCZcyB0aGUgbWFpbnRhaW5lcnPigJkg
ZGVjaXNpb24uIFlvdSBjYW4gYW1lbmQgdGhlIGNvbW1pdCwgYW5kIHRoZW4gCnJlZ2VuZXJhdGUg
dGhlIHBhdGNoIHdpdGggYGdpdCBmb3JtYXQtcGF0Y2ggLTEgLXYyYC4gQmVsb3cgdGhlIC0tLSBs
aW5lIAp5b3UgY2FuIGFkZCBhIHNob3J0IGNoYW5nZS1sb2csIHdoYXQgeW91IGNoYW5nZWQgYmV0
d2VlbiB0aGUgcGF0Y2ggCml0ZXJhdGlvbnMuCgo+PiBJIGRvIG5vdCBzZWUgdGhlIHZhcmlhYmxl
ICpmbGFncyogYmVpbmcgdXNlZC4KPiAKPiBUaGlzIHBhdGNoIGhhcyBhIHR5cG8sIHBsZWFzZSBp
Z25vcmUgdGhpcyBvbmUsIEkgaGF2ZSBzdWJtaXR0ZWQgYSBuZXcgb25lCj4gdGhhdCBmaXhlZCB0
aGlzLgoKSSBoYXZlIG5vdCBzZWVuIHRoaXMgeWV0LgoKPiBJIGhhdmUgdGVzdGVkIHRoZSBwYXRj
aCBvbiBhIFVidW50dSBzZXJ2ZXIgMjIuMDQgbWFjaGluZSB3aXRoIGtlcm5lbCAKPiB2ZXJzaW9u
IDUuMTkuMTcsIHRoZW4gSSBnZW5lcmF0ZWQgdGhlIHBhdGNoIGluIHRoZSAnbmV0LXF1ZXVlJwo+
IGRldmVsb3BtZW50IHJlcG8uIEkganVzdCBoYW5kd3JpdHRlbiB0aGUgY2hhbmdlcyBpbiB0aGUg
ZGV2IHJlcG8sCj4gbWFkZSBhIHNpbGx5IG1pc3Rha2UuCj4gCj4gQXBvbG90OHplIGZvciB0aGF0
LCBJJ2xsIGJlIG1vcmUgY2FyZWZ1bCBuZXh0IHRpbWUuCk5vIHByb2JsZW0uIFRoaXMgaGFzIGhh
cHBlbmVkIHRvIGFsbCBvZiB1cy4gQ29uZ3JhdHVsYXRpb25zIG9uIHlvdXIgCmZpcnN0KD8pIExp
bnV4IGtlcm5lbCBjb250cmlidXRpb24uIEdsYWQgdG8gaGF2ZSB5b3UgYW5kIEkgYW0gbG9va2lu
ZyAKZm9yd2FyZCB0byB5b3VyIG5leHQgaW1wcm92ZW1lbnRzLgoKCktpbmQgcmVnYXJkcywKClBh
dWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
d2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczov
L2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
