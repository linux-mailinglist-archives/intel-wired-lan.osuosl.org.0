Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FD877CB7F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Jul 2019 20:08:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B363484812;
	Wed, 31 Jul 2019 18:08:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3pkjZEO9c2fp; Wed, 31 Jul 2019 18:08:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 587E0847EB;
	Wed, 31 Jul 2019 18:08:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2196B1BF32A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2019 12:46:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1D6D92152E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2019 12:46:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3v4q2jh+cYAm for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Jul 2019 12:46:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
 [209.85.222.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 7E0192156F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2019 12:46:04 +0000 (UTC)
Received: by mail-qk1-f195.google.com with SMTP id t8so49073456qkt.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2019 05:46:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=vLpkXNHhxEM17yvb6EI7BaAyJql2ESScNq7hPZTMJs8=;
 b=ClvLvbodde1OBQTL4cQEBUNATjh4NuCJLeyvO1xkzFujlkmlPl481j/C5Q4FC2++7J
 Ufj012+IsGSqvuJS1BCFoYow+/YP08kbDl5u1t3TUBZYuHJk/FbOqlXLeypb1bv/Z2IT
 /wNTsGr4lU7b6XJ3w+94St8xJyzVe4arR3y9BNiDaPWwtoIWnk9brl1rHRmZaOdJ3H9h
 mWa1D8FNQnWd+tAhz3R2oMqgkZ8vWL630qOJU9OOCpf0VqW6RCkApG3zM9rKQzQMnrSL
 8Fcm5ee94IpOazEbCNxxjHilgFoDtTdYJeH1c7UlKof4tAHfmzNLMRG16wIx7Jiyo/C2
 qrSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=vLpkXNHhxEM17yvb6EI7BaAyJql2ESScNq7hPZTMJs8=;
 b=R2qxFCfKnF2ZefxwCV0GizttSyq/qAEksqM9QGXPTI3hNOahAgM+KSYdeeCJtubpAR
 3cYor7kuuue/rBm+lpH/JgybEwd2aqmJ/gBObhepa395FGR43CW5D7HF43RIkv6uYi8v
 Z0tv9ZU1ve/f9YeP6nOMeSK++XVzI4zYh2JK1gnrPoReoEAEoqh40TDG3oXYQYWGsHph
 To+Ow2KZ5RCLdFrVk13yMjdVPfPY8cVcWHT+RHmcFUZlP7PgyWtJIxDhRTsNUtvCzYgj
 BWBOqVOIM3uwXyfQgqEWok6xJd3w4ndHm56zX1MPWm6VmOvm+knez3rhvaOX75sIELy9
 7wag==
X-Gm-Message-State: APjAAAXAE+moto4JGjKnsQJXZL9FBWJHetyhx+OgTh/qUnmtMaAxsgSp
 WNlI/JwXoHIRJuwL4y93lTrCDn6hxAsF1W6rUwU=
X-Google-Smtp-Source: APXvYqz4OpyytBFMjrUi+2Ek+BzAgpYTbK35jF6eoPLPS76d/m951mKVWT1i986GzTd6nwpG3luXSXILDNLnc74lcCg=
X-Received: by 2002:a37:6146:: with SMTP id v67mr64646448qkb.493.1564577163571; 
 Wed, 31 Jul 2019 05:46:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190724051043.14348-1-kevin.laatz@intel.com>
 <20190730085400.10376-1-kevin.laatz@intel.com>
 <20190730085400.10376-4-kevin.laatz@intel.com>
In-Reply-To: <20190730085400.10376-4-kevin.laatz@intel.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Wed, 31 Jul 2019 14:45:52 +0200
Message-ID: <CAJ+HfNgqZFnikLMNYo7wE3fqyyZzgsQXuix905SQ+iRo8FfqpA@mail.gmail.com>
To: Kevin Laatz <kevin.laatz@intel.com>
X-Mailman-Approved-At: Wed, 31 Jul 2019 18:08:01 +0000
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v4 03/11] libbpf: add flags
 to umem config
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
Cc: Maxim Mikityanskiy <maximmi@mellanox.com>,
 Jakub Kicinski <jakub.kicinski@netronome.com>,
 Daniel Borkmann <daniel@iogearbox.net>, Netdev <netdev@vger.kernel.org>,
 ciara.loftus@intel.com, Alexei Starovoitov <ast@kernel.org>,
 Stephen Hemminger <stephen@networkplumber.org>,
 Saeed Mahameed <saeedm@mellanox.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Bruce Richardson <bruce.richardson@intel.com>, bpf <bpf@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlLCAzMCBKdWwgMjAxOSBhdCAxOTo0MywgS2V2aW4gTGFhdHogPGtldmluLmxhYXR6QGlu
dGVsLmNvbT4gd3JvdGU6Cj4KPiBUaGlzIHBhdGNoIGFkZHMgYSAnZmxhZ3MnIGZpZWxkIHRvIHRo
ZSB1bWVtX2NvbmZpZyBhbmQgdW1lbV9yZWcgc3RydWN0cy4KPiBUaGlzIHdpbGwgYWxsb3cgZm9y
IG1vcmUgb3B0aW9ucyB0byBiZSBhZGRlZCBmb3IgY29uZmlndXJpbmcgdW1lbXMuCj4KPiBUaGUg
Zmlyc3QgdXNlIGZvciB0aGUgZmxhZ3MgZmllbGQgaXMgdG8gYWRkIGEgZmxhZyBmb3IgdW5hbGln
bmVkIGNodW5rcwo+IG1vZGUuIFRoZXNlIGZsYWdzIGNhbiBlaXRoZXIgYmUgdXNlci1wcm92aWRl
ZCBvciBmaWxsZWQgd2l0aCBhIGRlZmF1bHQuCj4KPiBTaWduZWQtb2ZmLWJ5OiBLZXZpbiBMYWF0
eiA8a2V2aW4ubGFhdHpAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IENpYXJhIExvZnR1cyA8
Y2lhcmEubG9mdHVzQGludGVsLmNvbT4KPgo+IC0tLQo+IHYyOgo+ICAgLSBSZW1vdmVkIHRoZSBo
ZWFkcm9vbSBjaGVjayBmcm9tIHRoaXMgcGF0Y2guIEl0IGhhcyBtb3ZlZCB0byB0aGUKPiAgICAg
cHJldmlvdXMgcGF0Y2guCj4KPiB2NDoKPiAgIC0gbW9kaWZpZWQgY2h1bmsgZmxhZyBkZWZpbmUK
PiAtLS0KPiAgdG9vbHMvaW5jbHVkZS91YXBpL2xpbnV4L2lmX3hkcC5oIHwgOSArKysrKysrLS0K
PiAgdG9vbHMvbGliL2JwZi94c2suYyAgICAgICAgICAgICAgIHwgMyArKysKPiAgdG9vbHMvbGli
L2JwZi94c2suaCAgICAgICAgICAgICAgIHwgMiArKwo+ICAzIGZpbGVzIGNoYW5nZWQsIDEyIGlu
c2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvdG9vbHMvaW5jbHVk
ZS91YXBpL2xpbnV4L2lmX3hkcC5oIGIvdG9vbHMvaW5jbHVkZS91YXBpL2xpbnV4L2lmX3hkcC5o
Cj4gaW5kZXggZmFhYTVjYTJhMTE3Li5hNjkxODAyZDc5MTUgMTAwNjQ0Cj4gLS0tIGEvdG9vbHMv
aW5jbHVkZS91YXBpL2xpbnV4L2lmX3hkcC5oCj4gKysrIGIvdG9vbHMvaW5jbHVkZS91YXBpL2xp
bnV4L2lmX3hkcC5oCj4gQEAgLTE3LDYgKzE3LDEwIEBACj4gICNkZWZpbmUgWERQX0NPUFkgICAg
ICAgKDEgPDwgMSkgLyogRm9yY2UgY29weS1tb2RlICovCj4gICNkZWZpbmUgWERQX1pFUk9DT1BZ
ICAgKDEgPDwgMikgLyogRm9yY2UgemVyby1jb3B5IG1vZGUgKi8KPgo+ICsvKiBGbGFncyBmb3Ig
eHNrX3VtZW1fY29uZmlnIGZsYWdzICovCj4gKyNkZWZpbmUgWERQX1VNRU1fVU5BTElHTkVEX0NI
VU5LX0ZMQUdfU0hJRlQgMTUKPiArI2RlZmluZSBYRFBfVU1FTV9VTkFMSUdORURfQ0hVTktfRkxB
RyAoMSA8PCBYRFBfVU1FTV9VTkFMSUdORURfQ0hVTktfRkxBR19TSElGVCkKPiArCj4gIHN0cnVj
dCBzb2NrYWRkcl94ZHAgewo+ICAgICAgICAgX191MTYgc3hkcF9mYW1pbHk7Cj4gICAgICAgICBf
X3UxNiBzeGRwX2ZsYWdzOwo+IEBAIC00OSw4ICs1Myw5IEBAIHN0cnVjdCB4ZHBfbW1hcF9vZmZz
ZXRzIHsKPiAgI2RlZmluZSBYRFBfT1BUSU9OUyAgICAgICAgICAgICAgICAgICAgOAo+Cj4gIHN0
cnVjdCB4ZHBfdW1lbV9yZWcgewo+IC0gICAgICAgX191NjQgYWRkcjsgLyogU3RhcnQgb2YgcGFj
a2V0IGRhdGEgYXJlYSAqLwo+IC0gICAgICAgX191NjQgbGVuOyAvKiBMZW5ndGggb2YgcGFja2V0
IGRhdGEgYXJlYSAqLwo+ICsgICAgICAgX191NjQgYWRkcjsgICAgIC8qIFN0YXJ0IG9mIHBhY2tl
dCBkYXRhIGFyZWEgKi8KPiArICAgICAgIF9fdTY0IGxlbjo0ODsgICAvKiBMZW5ndGggb2YgcGFj
a2V0IGRhdGEgYXJlYSAqLwo+ICsgICAgICAgX191NjQgZmxhZ3M6MTY7IC8qIEZsYWdzIGZvciB1
bWVtICovCgpTbywgdGhlIGZsYWdzIG1lbWJlciBtb3ZlZCBmcm9tIHN0cnVjdCBzb2NrYWRkcl94
ZHAgdG8gc3RydWN0CnhkcF91bWVtX3JlZy4gTWFrZXMgc2Vuc2UuIEhvd2V2ZXIsIEknbSBub3Qg
YSBmYW4gb2YgdGhlIGJpdGZpZWxkLiBXaHkKbm90IGp1c3QgYWRkIHRoZSBmbGFncyBtZW1iZXIg
YWZ0ZXIgdGhlIGxhc3QgbWVtYmVyIChoZWFkcm9vbSkgYW5kCmRlYWwgd2l0aCBpdCBpbiB4c2su
Yy94c2tfc2V0c29ja29wdCBhbmQgbGliYnBmPyBUaGUgYml0ZmllbGQKcHJlc2VydmVzIHRoZSBz
aXplLCBidXQgbWFrZXMgaXQgaGFyZCB0byByZWFkL2Vycm9yIHByb25lIElNTy4KCgpCasO2cm4K
Cgo+ICAgICAgICAgX191MzIgY2h1bmtfc2l6ZTsKPiAgICAgICAgIF9fdTMyIGhlYWRyb29tOwo+
ICB9Owo+IGRpZmYgLS1naXQgYS90b29scy9saWIvYnBmL3hzay5jIGIvdG9vbHMvbGliL2JwZi94
c2suYwo+IGluZGV4IDUwMDdiNWQ0ZmQyYy4uNWU3ZTRkNDIwZWUwIDEwMDY0NAo+IC0tLSBhL3Rv
b2xzL2xpYi9icGYveHNrLmMKPiArKysgYi90b29scy9saWIvYnBmL3hzay5jCj4gQEAgLTExNiw2
ICsxMTYsNyBAQCBzdGF0aWMgdm9pZCB4c2tfc2V0X3VtZW1fY29uZmlnKHN0cnVjdCB4c2tfdW1l
bV9jb25maWcgKmNmZywKPiAgICAgICAgICAgICAgICAgY2ZnLT5jb21wX3NpemUgPSBYU0tfUklO
R19DT05TX19ERUZBVUxUX05VTV9ERVNDUzsKPiAgICAgICAgICAgICAgICAgY2ZnLT5mcmFtZV9z
aXplID0gWFNLX1VNRU1fX0RFRkFVTFRfRlJBTUVfU0laRTsKPiAgICAgICAgICAgICAgICAgY2Zn
LT5mcmFtZV9oZWFkcm9vbSA9IFhTS19VTUVNX19ERUZBVUxUX0ZSQU1FX0hFQURST09NOwo+ICsg
ICAgICAgICAgICAgICBjZmctPmZsYWdzID0gWFNLX1VNRU1fX0RFRkFVTFRfRkxBR1M7Cj4gICAg
ICAgICAgICAgICAgIHJldHVybjsKPiAgICAgICAgIH0KPgo+IEBAIC0xMjMsNiArMTI0LDcgQEAg
c3RhdGljIHZvaWQgeHNrX3NldF91bWVtX2NvbmZpZyhzdHJ1Y3QgeHNrX3VtZW1fY29uZmlnICpj
ZmcsCj4gICAgICAgICBjZmctPmNvbXBfc2l6ZSA9IHVzcl9jZmctPmNvbXBfc2l6ZTsKPiAgICAg
ICAgIGNmZy0+ZnJhbWVfc2l6ZSA9IHVzcl9jZmctPmZyYW1lX3NpemU7Cj4gICAgICAgICBjZmct
PmZyYW1lX2hlYWRyb29tID0gdXNyX2NmZy0+ZnJhbWVfaGVhZHJvb207Cj4gKyAgICAgICBjZmct
PmZsYWdzID0gdXNyX2NmZy0+ZmxhZ3M7Cj4gIH0KPgo+ICBzdGF0aWMgaW50IHhza19zZXRfeGRw
X3NvY2tldF9jb25maWcoc3RydWN0IHhza19zb2NrZXRfY29uZmlnICpjZmcsCj4gQEAgLTE4Miw2
ICsxODQsNyBAQCBpbnQgeHNrX3VtZW1fX2NyZWF0ZShzdHJ1Y3QgeHNrX3VtZW0gKip1bWVtX3B0
ciwgdm9pZCAqdW1lbV9hcmVhLCBfX3U2NCBzaXplLAo+ICAgICAgICAgbXIubGVuID0gc2l6ZTsK
PiAgICAgICAgIG1yLmNodW5rX3NpemUgPSB1bWVtLT5jb25maWcuZnJhbWVfc2l6ZTsKPiAgICAg
ICAgIG1yLmhlYWRyb29tID0gdW1lbS0+Y29uZmlnLmZyYW1lX2hlYWRyb29tOwo+ICsgICAgICAg
bXIuZmxhZ3MgPSB1bWVtLT5jb25maWcuZmxhZ3M7Cj4KPiAgICAgICAgIGVyciA9IHNldHNvY2tv
cHQodW1lbS0+ZmQsIFNPTF9YRFAsIFhEUF9VTUVNX1JFRywgJm1yLCBzaXplb2YobXIpKTsKPiAg
ICAgICAgIGlmIChlcnIpIHsKPiBkaWZmIC0tZ2l0IGEvdG9vbHMvbGliL2JwZi94c2suaCBiL3Rv
b2xzL2xpYi9icGYveHNrLmgKPiBpbmRleCA4MzNhNmU2MGQwNjUuLjQ0YTAzZDhjMzRiOSAxMDA2
NDQKPiAtLS0gYS90b29scy9saWIvYnBmL3hzay5oCj4gKysrIGIvdG9vbHMvbGliL2JwZi94c2su
aAo+IEBAIC0xNzAsMTIgKzE3MCwxNCBAQCBMSUJCUEZfQVBJIGludCB4c2tfc29ja2V0X19mZChj
b25zdCBzdHJ1Y3QgeHNrX3NvY2tldCAqeHNrKTsKPiAgI2RlZmluZSBYU0tfVU1FTV9fREVGQVVM
VF9GUkFNRV9TSElGVCAgICAxMiAvKiA0MDk2IGJ5dGVzICovCj4gICNkZWZpbmUgWFNLX1VNRU1f
X0RFRkFVTFRfRlJBTUVfU0laRSAgICAgKDEgPDwgWFNLX1VNRU1fX0RFRkFVTFRfRlJBTUVfU0hJ
RlQpCj4gICNkZWZpbmUgWFNLX1VNRU1fX0RFRkFVTFRfRlJBTUVfSEVBRFJPT00gMAo+ICsjZGVm
aW5lIFhTS19VTUVNX19ERUZBVUxUX0ZMQUdTIDAKPgo+ICBzdHJ1Y3QgeHNrX3VtZW1fY29uZmln
IHsKPiAgICAgICAgIF9fdTMyIGZpbGxfc2l6ZTsKPiAgICAgICAgIF9fdTMyIGNvbXBfc2l6ZTsK
PiAgICAgICAgIF9fdTMyIGZyYW1lX3NpemU7Cj4gICAgICAgICBfX3UzMiBmcmFtZV9oZWFkcm9v
bTsKPiArICAgICAgIF9fdTMyIGZsYWdzOwo+ICB9Owo+Cj4gIC8qIEZsYWdzIGZvciB0aGUgbGli
YnBmX2ZsYWdzIGZpZWxkLiAqLwo+IC0tCj4gMi4xNy4xCj4KPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxp
c3QKPiBJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwo+IGh0dHBzOi8vbGlzdHMub3N1b3NsLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0Cklu
dGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
