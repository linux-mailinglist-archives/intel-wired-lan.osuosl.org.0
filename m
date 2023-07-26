Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ADA327635C7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jul 2023 14:02:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3AC736120B;
	Wed, 26 Jul 2023 12:02:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3AC736120B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690372951;
	bh=2ubA6tSSXN74nvTTH2cuzVeaJVYL/l+N4/ixGByYQws=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Nbwqi3RuphL569j/n7q3Y6tjTVTQH6GEldFXxFmjt3rVXRvaSVrN6bBpDpTAaMBwm
	 uNeEMnUOpxqeycQwgzeB0hH4OX7HNnvM/jnIP1Onow1rKf7uU+uZs5c1zkWIyjaB5i
	 pnAliVVkz7JKeohJm/jqOyU5H8uprskzvSThE5mYC/MYtZfxYUMLr6i37Y9bc+QI3H
	 pLkLiRU23lRdbO3JNoCzywplE6d1/tvQAmSdxEXyXJh+71Ru1qTlsarqPlhRipk140
	 08eqOBz9hmpohv2/A9Bpi+JWFiCdbosEoCA2f9Fw0XAKp4HXCSq5ybZcau7noHH/ce
	 JT/QHK53Of9hA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Jm6bexjT1BDb; Wed, 26 Jul 2023 12:02:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1AD2860BD9;
	Wed, 26 Jul 2023 12:02:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1AD2860BD9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C38301BF57F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 12:02:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A786940448
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 12:02:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A786940448
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vFn1NlalxwHE for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Jul 2023 12:02:24 +0000 (UTC)
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com
 [IPv6:2a00:1450:4864:20::630])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B7A2E40296
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 12:02:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B7A2E40296
Received: by mail-ej1-x630.google.com with SMTP id
 a640c23a62f3a-99bc512526cso100422266b.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 05:02:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1690372941; x=1690977741;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=qoPCQO3CIWnYMM0tX6KNUXPCxTm/c6ulY3wdvUR9O3k=;
 b=PD1DJGv9eJ67mzZQXf53LdL4yDH4NBz7P9NQZPClDxAmnOrA3RtUvjm4NjlKQYRtwY
 Nl5NvOheF/Hl0TESjvZk9f429icAqmmVJjE5MYMAqYOL+4MHdxN+if90kEzEBXePwBGP
 vlbVWuLgyyPz4La4kqjnQeWFEN1CfOddV+J9oq2BBExFJVajHks3wEsosUnO9gUOwkYj
 192JCCL7JfgjGmsyPj7a1loKWsnVHqfxWSteYl90iNniRCfkviADCYy1pqwLZ7soTO7W
 3yvVO14gkSstDum/iIfTXEQboW5v5qSthM8+R/atXof1F9T9SHwSN2aU/WD91P+XCPgT
 xT3g==
X-Gm-Message-State: ABy/qLaQBBb8TWjlgExS7yK2p0J7x4wtEoMvsCe8QnLjCQZWQ/0iqWa/
 adpORiRZ30T7sdq2+0avKN+pHib9X6pMH0mJ6N8=
X-Google-Smtp-Source: APBJJlGCtZkEdxLxj+wDw3nfkiQ9ynP6L2xpuL8g7cVF/3nB4WS+zihn9Q74H6Uf3KkzYO/fIAEgI2luhWo4wNmYwgQ=
X-Received: by 2002:a17:906:5dcc:b0:99b:492d:25fa with SMTP id
 p12-20020a1709065dcc00b0099b492d25famr1358608ejv.76.1690372941252; Wed, 26
 Jul 2023 05:02:21 -0700 (PDT)
MIME-Version: 1.0
References: <20230721071532.613888-1-marcin.szycik@linux.intel.com>
 <20230721071532.613888-3-marcin.szycik@linux.intel.com>
 <ZLqZRFa1VOHHWCqX@smile.fi.intel.com>
 <5775952b-943a-f8ad-55a1-c4d0fd08475f@intel.com>
In-Reply-To: <5775952b-943a-f8ad-55a1-c4d0fd08475f@intel.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Wed, 26 Jul 2023 15:01:44 +0300
Message-ID: <CAHp75VcFse1_gijfhDkyxhBFtd1d-o5_4RO2j2urSXJ_HuZzyg@mail.gmail.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1690372941; x=1690977741;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=qoPCQO3CIWnYMM0tX6KNUXPCxTm/c6ulY3wdvUR9O3k=;
 b=fXcn05ddUN9vYrh1ugt4x04y/YcV0UlEHd1XbmnKxljT0pYmnwNzxEbNMGby7u586D
 ZCGtiAumAa1h+6+tIO0DZi+UF0ryr//Ym6wWygmuVvwGa9zWLBk8iZHwK9syYBUEyVfE
 o5Sttj5qbc0FCRLNMnOLtmyw0KAcqFW2fE+dAbYFl2WizKx9SP53Pqe8L9OGkV/+xcV4
 AOt7meVttoKQpVIUhqA+5s9k9VYdMKVCHJA/sTF6UNOfNXPuLwddpBN52JMyLdnJR8ZI
 Te5dPdBAfnVz/yqv2oQZOOu8EVstDtFLW6h398NDVyKJ86oHQ+8UHRswJYv2c1ouAxz3
 ovzA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=fXcn05dd
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 2/6] ip_tunnel: convert
 __be16 tunnel flags to bitmaps
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
Cc: Andy Shevchenko <andy@kernel.org>, Yury Norov <yury.norov@gmail.com>,
 netdev@vger.kernel.org, idosch@nvidia.com, jiri@resnulli.us,
 jesse.brandeburg@intel.com, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 simon.horman@corigine.com, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gV2VkLCBKdWwgMjYsIDIwMjMgYXQgMjoxMeKAr1BNIEFsZXhhbmRlciBMb2Jha2luCjxhbGVr
c2FuZGVyLmxvYmFraW5AaW50ZWwuY29tPiB3cm90ZToKPiBGcm9tOiBBbmR5IFNoZXZjaGVua28g
PGFuZHlAa2VybmVsLm9yZz4sIFl1cnkgTm9yb3YgPHl1cnkubm9yb3ZAZ21haWwuY29tPgo+IERh
dGU6IEZyaSwgMjEgSnVsIDIwMjMgMTc6NDI6MTIgKzAzMDAKPgo+ID4gK0NjOiBZdXJ5IG9uIGJp
dG1hcCBhc3NpZ25tZW50cy4KPgo+IEkgdG9sZCBNYXJjaW4gdG8gYWRkIHlvdSB0byBDYyB3aGVu
IHNlbmRpbmcsIGJ1dCBmb3Jnb3QgWXVyeSwgbXkKPiBhcG9sb2dpZXMgPVwKPgo+ID4KPiA+IChZ
dXJ5LCBKRllJLAo+ID4gIGlmIHlvdSBuZWVkIHRoZSB3aG9sZSBzZXJpZXMsIHRha2UgbWVzc2Fn
ZSBJRCBhcyAkTVNHX0lEIG9mIHRoaXMgZW1haWwKPiA+ICBhbmQgZXhlY3V0ZQo+ID4KPiA+ICAg
IGBiNCBtYm94ICRNU0dfSURgCj4gPgo+ID4gIHRvIHJldHJpZXZlIGl0KQo+ID4KPiA+IE9uIEZy
aSwgSnVsIDIxLCAyMDIzIGF0IDA5OjE1OjI4QU0gKzAyMDAsIE1hcmNpbiBTenljaWsgd3JvdGU6
Cj4gPj4gRnJvbTogQWxleGFuZGVyIExvYmFraW4gPGFsZWtzYW5kZXIubG9iYWtpbkBpbnRlbC5j
b20+CgouLi4KCj4gPj4gYW5kIHJlcGxhY2UgYWxsIFRVTk5FTF8qIG9jY3VyZW5jaWVzIHRvCgpv
Y2N1cnJlbmNlcwoKLi4uCgo+ID4+IG90aGVyd2lzZSB0aGVyZSB3aWxsIGJlIHRvbyBtdWNoIGNv
bnZlcnNpb25zCgp0b28gbWFueQooY291bnRhYmxlKQoKLi4uCgo+ID4+ICtzdGF0aWMgaW5saW5l
IHZvaWQgaXBfdHVubmVsX2ZsYWdzX2Zyb21fYmUxNih1bnNpZ25lZCBsb25nICpkc3QsIF9fYmUx
NiBmbGFncykKPiA+PiArewo+ID4+ICsgICAgYml0bWFwX3plcm8oZHN0LCBfX0lQX1RVTk5FTF9G
TEFHX05VTSk7Cj4gPgo+ID4+ICsgICAgKmRzdCA9IGJlMTZfdG9fY3B1KGZsYWdzKTsKPiA+Cj4g
PiBPaCwgVGhpcyBpcyBub3QgZ29vZC4gV2hhdCB5b3UgbmVlZCBpcyBzb21ldGhpbmcgbGlrZSBi
aXRtYXBfc2V0X3ZhbHVlMTYoKSBpbgo+ID4gYW5hbG9ndWUgd2l0aCBiaXRtYXBfc2V0X3ZhbHVl
OCgpLgo+Cj4gQnV0IEkgZG9uJ3QgbmVlZCBgc3RhcnRgLCB0aG9zZSBmbGFnIHdpbGwgYWx3YXlz
IGJlIGluIHRoZSBmaXJzdCB3b3JkCj4gYW5kIEkgZG9uJ3QgbmVlZCB0byByZXBsYWNlIG9ubHkg
c29tZSByYW5nZSwgYnV0IHRvIGNsZWFyIGV2ZXJ5dGhpbmcgYW5kCj4gdGhlbiBzZXQgb25seSB0
aGUgZmxhZ3Mgd2hpY2ggYXJlIHNldCBpbiB0aGF0IF9fYmUxNi4KPiBXaHkgc2hvdWxkbid0IHRo
aXMgd29yaz8KCkknbSBub3Qgc2F5aW5nIGl0IHNob3VsZCBvciBzaG91bGRuJ3QgKGFjdHVhbGx5
IHlvdSBuZWVkIHRvIHByb3ZlIHRoYXQKd2l0aCBzb21lIHRlc3QgY2FzZXMgYWRkZWQpLiBXaGF0
IEknbSBzYXlpbmcgaXMgdGhhdCB0aGlzIGNvZGUgaXMgYQpoYWNrIGJlY2F1c2Ugb2YgYSBsYXll
cmluZyB2aW9sYXRpb24uIFdlIGRvIG5vdCBkZXJlZmVyZW5jZSBiaXRtYXBzCndpdGggZGlyZWN0
IGFjY2Vzcy4gRXZlbiBpbiB5b3VyIGNvZGUgeW91IGhhdmUgYml0bWFwX3plcm8oKSBmb2xsb3dl
ZApieSB0aGlzIGhhY2suIFdoeSBkbyB5b3UgY2FsbCB0aGF0IGJpdG1hcF96ZXJvKCkgaW4gdGhl
IGZpcnN0IHBsYWNlIGlmCnlvdSBhcmUgc28gc3VyZSBldmVyeXRoaW5nIHdpbGwgYmUgb2theT8g
U28gZWl0aGVyIHlvdSBzdGljayB3aXRoCmJpdG9wcyAvIGJpdG1hcCBBUElzIG9yIGRyb3AgYWxs
IG9mIHRoZW0gYW5kIHVzZSBQT0QgdHlwZXMgYW5kIGJpdAp3aXNlIG9wcy4KCi4uLgoKPiA+PiAr
ICAgIHJldCA9IGNwdV90b19iZTE2KCpmbGFncyAmIFUxNl9NQVgpOwoKU2FtZSBhcyBhYm92ZS4K
Ci4uLgoKPiA+PiArICAgIF9fc2V0X2JpdChJUF9UVU5ORUxfS0VZX0JJVCwgaW5mby0+a2V5LnR1
bl9mbGFncyk7Cj4gPj4gKyAgICBfX3NldF9iaXQoSVBfVFVOTkVMX0NTVU1fQklULCBpbmZvLT5r
ZXkudHVuX2ZsYWdzKTsKPiA+PiArICAgIF9fc2V0X2JpdChJUF9UVU5ORUxfTk9DQUNIRV9CSVQs
IGluZm8tPmtleS50dW5fZmxhZ3MpOwo+ID4+ICAgICAgaWYgKGZsYWdzICYgQlBGX0ZfRE9OVF9G
UkFHTUVOVCkKPiA+PiAtICAgICAgICAgICAgaW5mby0+a2V5LnR1bl9mbGFncyB8PSBUVU5ORUxf
RE9OVF9GUkFHTUVOVDsKPiA+PiArICAgICAgICAgICAgX19zZXRfYml0KElQX1RVTk5FTF9ET05U
X0ZSQUdNRU5UX0JJVCwgaW5mby0+a2V5LnR1bl9mbGFncyk7Cj4gPj4gICAgICBpZiAoZmxhZ3Mg
JiBCUEZfRl9aRVJPX0NTVU1fVFgpCj4gPj4gLSAgICAgICAgICAgIGluZm8tPmtleS50dW5fZmxh
Z3MgJj0gflRVTk5FTF9DU1VNOwo+ID4+ICsgICAgICAgICAgICBfX2NsZWFyX2JpdChJUF9UVU5O
RUxfQ1NVTV9CSVQsIGluZm8tPmtleS50dW5fZmxhZ3MpOwo+ID4KPiA+IEluc3RlYWQgb2Ygc2V0
L2NsZWFyLCB1c2UgYXNzaWduLCBpLmUuIF9fYXNpZ25fYml0KCkuCj4KPiBKdXN0IHRvIG1ha2Ug
aXQgY2xlYXIsIHlvdSBtZWFuCj4KPiAgICAgICAgIF9fYXNzaWduX2JpdChJUF9UVU5ORUxfQ1NV
TV9CSVQsIGluZm8tPmtleS50dW5fZmxhZ3MsCj4gICAgICAgICAgICAgICAgICAgICAgZmxhZ3Mg
JiBCUEZfRl9aRVJPX0NTVU1fVFgpOwo+Cj4gcmlnaHQ/CgpZZXMuCgoKLS0gCldpdGggQmVzdCBS
ZWdhcmRzLApBbmR5IFNoZXZjaGVua28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1s
YW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC13aXJlZC1sYW4K
