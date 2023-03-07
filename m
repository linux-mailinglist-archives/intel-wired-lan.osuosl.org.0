Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id ED25B6ADC38
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Mar 2023 11:44:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7AEDC60E38;
	Tue,  7 Mar 2023 10:44:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7AEDC60E38
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678185896;
	bh=kFw5lBTTUGx4W9jY4c2RPRBKajVZRn7OJC3C6pvcsSg=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YOddZXT05hbV+bPq+CWtkHj+opOK8jRfwrGiMtAN1ooXTnNZOFe9xMIROqgjs+TZ+
	 ZIfjTnE4Eb7W5JAfRpqxItJ43VvJ3zTNtomAGwaOGGRSPKNTNluPsRBlYZ7Gguo87i
	 DKc4jk2Lc0peqsZI3IhvKo+p6m5d5UCktBoYOVwt5eZryZ4Wg+TLlQDDcY6J0+Kdp/
	 7ylJPlaXfieQdK1iNTy9MU8ZAAHOE26I6Klj+nDCiOCPNpDEbMeJeqyVII38FWHT01
	 cWIiIxaaFuXiRRkmLUwDC3FX0cCGdT6cZKUaShEkLuaPwtvNz7UNrCmaPzHoiIRlOe
	 JmFiP0artEqxA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4gAGhDaJtaNI; Tue,  7 Mar 2023 10:44:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 78B5360B38;
	Tue,  7 Mar 2023 10:44:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 78B5360B38
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 60B631BF28A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Mar 2023 10:44:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3852681C18
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Mar 2023 10:44:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3852681C18
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NJ7WQF9COQ2n for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Mar 2023 10:44:48 +0000 (UTC)
X-Greylist: delayed 00:07:38 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DC7B381B10
Received: from zg8tmja2lje4os4yms4ymjma.icoremail.net
 (zg8tmja2lje4os4yms4ymjma.icoremail.net [206.189.21.223])
 by smtp1.osuosl.org (Postfix) with SMTP id DC7B381B10
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Mar 2023 10:44:47 +0000 (UTC)
Received: by ajax-webmail-mail-app3 (Coremail) ; Tue, 7 Mar 2023 18:36:13
 +0800 (GMT+08:00)
X-Originating-IP: [36.28.190.156]
Date: Tue, 7 Mar 2023 18:36:13 +0800 (GMT+08:00)
X-CM-HeaderCharset: UTF-8
From: "Lin Ma" <linma@zju.edu.cn>
To: "Paul Menzel" <pmenzel@molgen.mpg.de>
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.13 build 20210104(ab8c30b6)
 Copyright (c) 2002-2023 www.mailtech.cn zju.edu.cn
In-Reply-To: <882d6a36-d3ac-c231-ba02-bc2235984cfd@molgen.mpg.de>
References: <ZAcJvkEPqWeJHO2r@calimero.vinschen.de>
 <3ef31c0b-ce40-20d0-7740-5dc0cca278ca@molgen.mpg.de>
 <882d6a36-d3ac-c231-ba02-bc2235984cfd@molgen.mpg.de>
MIME-Version: 1.0
Message-ID: <43532635.82161.186bba49ec2.Coremail.linma@zju.edu.cn>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: cC_KCgCXnQydEwdkOWnqDQ--.27890W
X-CM-SenderInfo: qtrwiiyqvtljo62m3hxhgxhubq/1tbiAwUFElNG3KE1WAAGsS
X-Coremail-Antispam: 1Ur529EdanIXcx71UUUUU7IcSsGvfJ3iIAIbVAYjsxI4VWxJw
 CS07vEb4IE77IF4wCS07vE1I0E4x80FVAKz4kxMIAIbVAFxVCaYxvI4VCIwcAKzIAtYxBI
 daVFxhVjvjDU=
Subject: Re: [Intel-wired-lan] [REGRESSION] Deadlock since commit
 6faee3d4ee8b ("igb: Add lock to avoid data race")
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
Cc: intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Corinna Vinschen <vinschen@redhat.com>,
 regressions <regressions@lists.linux.dev>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGVsbG8gdGhlcmUKClllYWggSSBhbSBsb29raW5nIGF0IGl0LiBDb3VsZCB5b3UgcGxlYXNlIG9m
ZmVyIHRoZSBjcmFzaCBsb2cgb3IgbG9ja2luZyBkZWJ1ZyBtZXNzYWdlIGlmIGFjY2Vzc2libGU/
IFRoYW5rcyBpbiBhZHZhbmNlLgoKUmVnYXJkcwpMaW4KCj5bQWRkIENvcmlubmEgYmFjayB0byBD
YzosIHdobyB3YXMgcmVtb3ZlZCBieSBNb3ppbGxhIFRodW5kZXJiaXJkIGJlY2F1c2UgCj5SZXBs
eS1UbyBoZWFkZXIgd2FzIHNldCBmb3Igc29tZSByZWFzb24gaW4gdGhlIG9yaWdpbmFsIHJlcG9y
dC5dCj4KPkFtIDA3LjAzLjIzIHVtIDExOjEyIHNjaHJpZWIgUGF1bCBNZW56ZWw6Cj4+IFtBZGRp
bmcgcmVncmVzc2lvbnNAbGlzdHMubGludXguZGV2XQo+PiAKPj4gI3JlZ3pib3QgXmludHJvZHVj
ZWQ6IDZmYWVlM2Q0ZWU4Ygo+PiAKPj4gQW0gMDcuMDMuMjMgdW0gMTA6NTQgc2NocmllYiBDb3Jp
bm5hIFZpbnNjaGVuOgo+Pj4gSGksCj4+Pgo+Pj4KPj4+IEFmdGVyIHBhdGNoIDZmYWVlM2Q0ZWU4
YiAoImlnYjogQWRkIGxvY2sgdG8gYXZvaWQgZGF0YSByYWNlIiksIHdlIHNlZQo+Pj4gYSBkZWFk
bG9jayBzY2VuYXJpbyB3aGVuIHRyeWluZyB0byB1bmxvYWQgdGhlIGlnYiBtb2R1bGUuCj4+Pgo+
Pj4gVGhlIHJlcHJvZHVjZXIgaXMgcHJldHR5IHNpbXBsZToKPj4+Cj4+PiDCoMKgICMgZWNobyAy
ID4gL3N5cy9jbGFzcy9uZXQvZW5zNWYyL2RldmljZS9zcmlvdl9udW12ZnMKPj4+IMKgwqAgIyBt
b2Rwcm9iZSAtciBpZ2IKPj4+Cj4+PiBUaGUgaGFuZyBpcyBxdWl0ZSB0aG9yb3VnaCwgSSBhc3N1
bWUgaXQncyBzdWZmZXJpbmcgYSBkZWFkbG9jayBiZXR3ZWVuCj4+PiB0aGUgcnRubF9sb2NrIGFu
ZCB0aGUgc3BpbmxvY2sgaW50cm9kdWNlZCBieSA2ZmFlZTNkNGVlOGIuCj4+Pgo+Pj4gQW55IGNo
YW5jZSB5b3UgY291bGQgaGF2ZSBhIGxvb2s/Cj4+Pgo+Pj4KPj4+IFRoYW5rcywKPj4+IENvcmlu
bmEKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
d2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczov
L2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
