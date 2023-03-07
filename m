Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BDEF6ADDEC
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Mar 2023 12:48:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E672540896;
	Tue,  7 Mar 2023 11:48:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E672540896
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678189727;
	bh=mQjjFIQKwruvlZ4pxVFdJWxTK6BmD8utZWrlTsmTDH8=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ake6SNys/w/HYC8Rp6GXLiJFwtwvFQUzACkG1vTJqbZFPly1NZiOnR14MEEhBUYBI
	 P/iY81MXNPFpn/YxM2DtZ0/I0zPmRtqWh04exIvUAFizO1xY4FOdsQgErPkf1kO6dt
	 lFubnY35Rnx8Y++07oMaOTH4pejoxgVatUWFIgfw5Em6X/Ipn3mIMUMHIb+purY/LS
	 hJBX2wSk/koL/Gu+0fhpjoGBGY5kGl/+WpQX3RTooytOfPiQgT+jBAK0JLqZMlkyJO
	 Yp1c0wFywcjuMsKPI5SsDKiQWigPH47RNiJCpuXYDFwB2H9L9ZrfHisXl5YPHirtMf
	 aDn+AjBsUGPgw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LMqwCZ1m3617; Tue,  7 Mar 2023 11:48:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AB8DF403A8;
	Tue,  7 Mar 2023 11:48:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AB8DF403A8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D05E21BF94D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Mar 2023 11:48:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B6DB381331
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Mar 2023 11:48:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B6DB381331
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vnYRiMWmCmVf for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Mar 2023 11:48:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C1FBD81329
Received: from zg8tmja2lje4os4yms4ymjma.icoremail.net
 (zg8tmja2lje4os4yms4ymjma.icoremail.net [206.189.21.223])
 by smtp1.osuosl.org (Postfix) with SMTP id C1FBD81329
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Mar 2023 11:48:37 +0000 (UTC)
Received: by ajax-webmail-mail-app4 (Coremail) ; Tue, 7 Mar 2023 19:48:30
 +0800 (GMT+08:00)
X-Originating-IP: [183.128.133.225]
Date: Tue, 7 Mar 2023 19:48:30 +0800 (GMT+08:00)
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
Message-ID: <301b585a.80249.186bbe6cc50.Coremail.linma@zju.edu.cn>
X-Coremail-Locale: en_US
X-CM-TRANSID: cS_KCgCXnP2PJAdket6xCw--.22652W
X-CM-SenderInfo: qtrwiiyqvtljo62m3hxhgxhubq/1tbiAwMHElNG3KG0hAAAsN
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
Cc: intel-wired-lan@lists.osuosl.org, Corinna Vinschen <vinschen@redhat.com>,
 regressions@lists.linux.dev
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGVsbG8gUGF1bCBhbmQgQ29yaW5uYSwKClNpbmNlIEkgZGlkbid0IGhhdmUgdGhlIGV4YWN0IGVu
czVmMiBkcml2ZXIgYXMgeW91IGd1eXMsIEkganVzdCB0ZXN0IHRoZSBtb2R1bGUgbG9hZGluZyBh
bmQgdW5sb2FkaW5nIGluIG15IFFFTVUgZW52aXJvbm1lbnQuCkkgdHVybmVkIG9uIHRoZSBDT05G
SUdfUFJPVkVfTE9DS0lORyBvcHRpb24gYnV0IGZhaWxlZCB0byByZXByb2R1Y2UgdGhlIGRlYWRs
b2NrLgoKcm9vdEBzeXprYWxsZXI6LyMgaW5zbW9kIGlnYi5rbwpbICAxMTYuMTkyNzMwXSBpZ2I6
IEludGVsKFIpIEdpZ2FiaXQgRXRoZXJuZXQgTmV0d29yayBEcml2ZXIKWyAgMTE2LjE5MzEyOF0g
aWdiOiBDb3B5cmlnaHQgKGMpIDIwMDctMjAxNCBJbnRlbCBDb3Jwb3JhdGlvbi4Kcm9vdEBzeXpr
YWxsZXI6LyMgbHNtb2QKTW9kdWxlICAgICAgICAgICAgICAgICAgU2l6ZSAgVXNlZCBieQppZ2Ig
ICAgICAgICAgICAgICAgICAgMjI1MjgwICAwCnJvb3RAc3l6a2FsbGVyOi8jIHJtbW9kIGlnYgpy
bW1vZDogRVJST1I6IC4uL2xpYmttb2QvbGlia21vZC5jOjUxNCBsb29rdXBfYnVpbHRpbl9maWxl
KCkgY291bGQgbm90IG9wZW4gYnVpbHRpbiBmaWxlICcvbGliL21vZHVsZXMvNi4xLjAvbW9kdWxl
cy5idWlsdGluLmJpbicKcm9vdEBzeXprYWxsZXI6LyMgbHNtb2QKbHNtb2QKTW9kdWxlICAgICAg
ICAgICAgICAgICAgU2l6ZSAgVXNlZCBieQoKSSBndWVzcyB0aGUgY29tbWFuZCAiZWNobyAyID4g
L3N5cy9jbGFzcy9uZXQvZW5zNWYyL2RldmljZS9zcmlvdl9udW12ZnMiIG11c3QgZG8gc29tZXRo
aW5nIGludGVyZXN0aW5nIGJ1dCBJCmRpZG4ndCBmaW5kIHRoZSByZWxldmFudCBjb2RlIHRoZXJl
LiBDb3VsZCB5b3UgZ3V5cyB0YWtlIGEgbG9vaz8KClJlZ2FyZHMKTGluCgoKCj4gRnJvbTogIlBh
dWwgTWVuemVsIiA8cG1lbnplbEBtb2xnZW4ubXBnLmRlPgo+IFNlbnQgVGltZTogMjAyMy0wMy0w
NyAxODoxOToxOCAoVHVlc2RheSkKPiBUbzogIkxpbiBNYSIgPGxpbm1hQHpqdS5lZHUuY24+LCAi
Q29yaW5uYSBWaW5zY2hlbiIgPHZpbnNjaGVuQHJlZGhhdC5jb20+Cj4gQ2M6IGludGVsLXdpcmVk
LWxhbkBsaXN0cy5vc3Vvc2wub3JnLCByZWdyZXNzaW9uc0BsaXN0cy5saW51eC5kZXYKPiBTdWJq
ZWN0OiBSZTogW0ludGVsLXdpcmVkLWxhbl0gW1JFR1JFU1NJT05dIERlYWRsb2NrIHNpbmNlIGNv
bW1pdCA2ZmFlZTNkNGVlOGIgKCJpZ2I6IEFkZCBsb2NrIHRvIGF2b2lkIGRhdGEgcmFjZSIpCj4g
Cj4gW0FkZCBDb3Jpbm5hIGJhY2sgdG8gQ2M6LCB3aG8gd2FzIHJlbW92ZWQgYnkgTW96aWxsYSBU
aHVuZGVyYmlyZCBiZWNhdXNlIAo+IFJlcGx5LVRvIGhlYWRlciB3YXMgc2V0IGZvciBzb21lIHJl
YXNvbiBpbiB0aGUgb3JpZ2luYWwgcmVwb3J0Ll0KPiAKPiBBbSAwNy4wMy4yMyB1bSAxMToxMiBz
Y2hyaWViIFBhdWwgTWVuemVsOgo+ID4gW0FkZGluZyByZWdyZXNzaW9uc0BsaXN0cy5saW51eC5k
ZXZdCj4gPiAKPiA+ICNyZWd6Ym90IF5pbnRyb2R1Y2VkOiA2ZmFlZTNkNGVlOGIKPiA+IAo+ID4g
QW0gMDcuMDMuMjMgdW0gMTA6NTQgc2NocmllYiBDb3Jpbm5hIFZpbnNjaGVuOgo+ID4+IEhpLAo+
ID4+Cj4gPj4KPiA+PiBBZnRlciBwYXRjaCA2ZmFlZTNkNGVlOGIgKCJpZ2I6IEFkZCBsb2NrIHRv
IGF2b2lkIGRhdGEgcmFjZSIpLCB3ZSBzZWUKPiA+PiBhIGRlYWRsb2NrIHNjZW5hcmlvIHdoZW4g
dHJ5aW5nIHRvIHVubG9hZCB0aGUgaWdiIG1vZHVsZS4KPiA+Pgo+ID4+IFRoZSByZXByb2R1Y2Vy
IGlzIHByZXR0eSBzaW1wbGU6Cj4gPj4KPiA+PiDCoMKgICMgZWNobyAyID4gL3N5cy9jbGFzcy9u
ZXQvZW5zNWYyL2RldmljZS9zcmlvdl9udW12ZnMKPiA+PiDCoMKgICMgbW9kcHJvYmUgLXIgaWdi
Cj4gPj4KPiA+PiBUaGUgaGFuZyBpcyBxdWl0ZSB0aG9yb3VnaCwgSSBhc3N1bWUgaXQncyBzdWZm
ZXJpbmcgYSBkZWFkbG9jayBiZXR3ZWVuCj4gPj4gdGhlIHJ0bmxfbG9jayBhbmQgdGhlIHNwaW5s
b2NrIGludHJvZHVjZWQgYnkgNmZhZWUzZDRlZThiLgo+ID4+Cj4gPj4gQW55IGNoYW5jZSB5b3Ug
Y291bGQgaGF2ZSBhIGxvb2s/Cj4gPj4KPiA+Pgo+ID4+IFRoYW5rcywKPiA+PiBDb3Jpbm5hCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVk
LWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0
cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
