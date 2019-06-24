Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F60951089
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Jun 2019 17:31:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DB38084ADE;
	Mon, 24 Jun 2019 15:31:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SCDpq2JSWIsP; Mon, 24 Jun 2019 15:31:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4B95F84D29;
	Mon, 24 Jun 2019 15:31:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DA6811BF232
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 15:31:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D631185736
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 15:31:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N1gKWsiV25Cg for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Jun 2019 15:31:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
 [209.85.222.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 000E484415
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 15:31:30 +0000 (UTC)
Received: by mail-qk1-f195.google.com with SMTP id c70so10059490qkg.7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 08:31:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=rw7Ix2QAqLxTiUw5AmV1AKBnYuLcc6WLLs23EmfkFCk=;
 b=WD8QA4tGbiHfidk/A4VQDka4j6W/lOjOh+MlD1a+QSUpY6l3wk6XAnmOij3UFXbR4/
 FR5NFLouGvkeC1aNGg21mKhYWJitJuI9TcvHfoseeqadTk2YAiwdvoMab7NNtNbSX98v
 OvmUQ2O9m63lcHXCyJjUyxiVVp4hUWG+uQa2vQt8a1gS2yy58T170jCPrAnocOzgxVWI
 axtDjwPwGbHYQ8PPdw/jffxGytlmV9alC8ARNeTbkKrkG98GoDWZEk+qURvWfit7zp8+
 Vp9HQ4OM8zw7bFU9Y6geUIUcNP/nK7JCmewKnO9DAzwqG9ampk9kORFJX88D/tiTXmMQ
 MQ0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=rw7Ix2QAqLxTiUw5AmV1AKBnYuLcc6WLLs23EmfkFCk=;
 b=O7t/97qp/dmnMcOEs7Mj5wNH8LuATSb+FzuvRGTholynyAnyv3iZmc1Aa9s55WIknu
 ARf0vrl8bsJJrJBJatuAnyDEh3NI8EQl9IvOA9kZBLCNyQnCkuqtn2DxcKbxXvdIjGaQ
 aS3xEOCD3HlYj5KhZN7Z358pg64qOhpeOUzBZtyR3M9LiB+eALV2jGufCAzz1/iXljdN
 i284cprDAHOeEoQP3uQRf3P/hrt4P/9CsK255MOGpnZFneTsRlHC2QQC5cXYY2aOnbY4
 SInQiero2Ja77De+xAT0Ldg3JPbvqz6Ym6nEZU3hs3R8KmaxQYj0zHV4GBS4l8A7APM2
 ygCQ==
X-Gm-Message-State: APjAAAXgWcR/d3OgpgyvPg8Oqv3dtvoN6E76SYQA363kdHDGlmjIP2Z0
 AFuE4iN/5C50RK7vq4kEgx9iMrMelWlPoJzLDOU=
X-Google-Smtp-Source: APXvYqx4V4RU9M+lFiMybe2PmHblR9vuN7NRlzY0nhX947XJwvuX07AHd6CaqhhB02e2GXNZE59rumVxnW+sjlR+MBw=
X-Received: by 2002:a37:9e4b:: with SMTP id
 h72mr120267915qke.297.1561390290029; 
 Mon, 24 Jun 2019 08:31:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190620090958.2135-1-kevin.laatz@intel.com>
 <20190620090958.2135-9-kevin.laatz@intel.com>
In-Reply-To: <20190620090958.2135-9-kevin.laatz@intel.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Mon, 24 Jun 2019 17:31:19 +0200
Message-ID: <CAJ+HfNi=QtGEGq=4PaxEMUrBxsSg8JsJcQHik_8WGVdAawJHKA@mail.gmail.com>
To: Kevin Laatz <kevin.laatz@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH 08/11] samples/bpf: add unaligned
 chunks mode support to xdpsock
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
Cc: Daniel Borkmann <daniel@iogearbox.net>, Netdev <netdev@vger.kernel.org>,
 ciara.loftus@intel.com, Alexei Starovoitov <ast@kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Bruce Richardson <bruce.richardson@intel.com>, bpf <bpf@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVGh1LCAyMCBKdW4gMjAxOSBhdCAxOToyNSwgS2V2aW4gTGFhdHogPGtldmluLmxhYXR6QGlu
dGVsLmNvbT4gd3JvdGU6Cj4KPiBUaGlzIHBhdGNoIGFkZHMgc3VwcG9ydCBmb3IgdGhlIHVuYWxp
Z25lZCBjaHVua3MgbW9kZS4gVGhlIGFkZGl0aW9uIG9mIHRoZQo+IHVuYWxpZ25lZCBjaHVua3Mg
b3B0aW9uIHdpbGwgYWxsb3cgdXNlcnMgdG8gcnVuIHRoZSBhcHBsaWNhdGlvbiB3aXRoIG1vcmUK
PiByZWxheGVkIGNodW5rIHBsYWNlbWVudCBpbiB0aGUgWERQIHVtZW0uCj4KPiBVbmFsaWduZWQg
Y2h1bmtzIG1vZGUgY2FuIGJlIHVzZWQgd2l0aCB0aGUgJy11JyBvciAnLS11bmFsaWduZWQnIGNv
bW1hbmQKPiBsaW5lIG9wdGlvbnMuCj4KPiBTaWduZWQtb2ZmLWJ5OiBLZXZpbiBMYWF0eiA8a2V2
aW4ubGFhdHpAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IENpYXJhIExvZnR1cyA8Y2lhcmEu
bG9mdHVzQGludGVsLmNvbT4KCkFja2VkLWJ5OiBCasO2cm4gVMO2cGVsIDxiam9ybi50b3BlbEBp
bnRlbC5jb20+Cgo+IC0tLQo+ICBzYW1wbGVzL2JwZi94ZHBzb2NrX3VzZXIuYyB8IDIwICsrKysr
KysrKysrKysrKysrKy0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspLCAyIGRl
bGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL3NhbXBsZXMvYnBmL3hkcHNvY2tfdXNlci5jIGIv
c2FtcGxlcy9icGYveGRwc29ja191c2VyLmMKPiBpbmRleCBkMDhlZTFhYjdiYjQuLmUyNmY0MzM4
MmQwMSAxMDA2NDQKPiAtLS0gYS9zYW1wbGVzL2JwZi94ZHBzb2NrX3VzZXIuYwo+ICsrKyBiL3Nh
bXBsZXMvYnBmL3hkcHNvY2tfdXNlci5jCj4gQEAgLTY3LDYgKzY3LDggQEAgc3RhdGljIGludCBv
cHRfaWZpbmRleDsKPiAgc3RhdGljIGludCBvcHRfcXVldWU7Cj4gIHN0YXRpYyBpbnQgb3B0X3Bv
bGw7Cj4gIHN0YXRpYyBpbnQgb3B0X2ludGVydmFsID0gMTsKPiArc3RhdGljIHUzMiBvcHRfdW1l
bV9mbGFnczsKPiArc3RhdGljIGludCBvcHRfdW5hbGlnbmVkX2NodW5rczsKPiAgc3RhdGljIHUz
MiBvcHRfeGRwX2JpbmRfZmxhZ3M7Cj4gIHN0YXRpYyBfX3UzMiBwcm9nX2lkOwo+Cj4gQEAgLTI3
NiwxNCArMjc4LDIxIEBAIHN0YXRpYyBzaXplX3QgZ2VuX2V0aF9mcmFtZShzdHJ1Y3QgeHNrX3Vt
ZW1faW5mbyAqdW1lbSwgdTY0IGFkZHIpCj4gIHN0YXRpYyBzdHJ1Y3QgeHNrX3VtZW1faW5mbyAq
eHNrX2NvbmZpZ3VyZV91bWVtKHZvaWQgKmJ1ZmZlciwgdTY0IHNpemUpCj4gIHsKPiAgICAgICAg
IHN0cnVjdCB4c2tfdW1lbV9pbmZvICp1bWVtOwo+ICsgICAgICAgc3RydWN0IHhza191bWVtX2Nv
bmZpZyB1bWVtX2NmZzsKPiAgICAgICAgIGludCByZXQ7Cj4KPiAgICAgICAgIHVtZW0gPSBjYWxs
b2MoMSwgc2l6ZW9mKCp1bWVtKSk7Cj4gICAgICAgICBpZiAoIXVtZW0pCj4gICAgICAgICAgICAg
ICAgIGV4aXRfd2l0aF9lcnJvcihlcnJubyk7Cj4KPiArICAgICAgIHVtZW1fY2ZnLmZpbGxfc2l6
ZSA9IFhTS19SSU5HX1BST0RfX0RFRkFVTFRfTlVNX0RFU0NTOwo+ICsgICAgICAgdW1lbV9jZmcu
Y29tcF9zaXplID0gWFNLX1JJTkdfQ09OU19fREVGQVVMVF9OVU1fREVTQ1M7Cj4gKyAgICAgICB1
bWVtX2NmZy5mcmFtZV9zaXplID0gWFNLX1VNRU1fX0RFRkFVTFRfRlJBTUVfU0laRTsKPiArICAg
ICAgIHVtZW1fY2ZnLmZyYW1lX2hlYWRyb29tID0gWFNLX1VNRU1fX0RFRkFVTFRfRlJBTUVfSEVB
RFJPT007Cj4gKyAgICAgICB1bWVtX2NmZy5mbGFncyA9IG9wdF91bWVtX2ZsYWdzOwo+ICsKPiAg
ICAgICAgIHJldCA9IHhza191bWVtX19jcmVhdGUoJnVtZW0tPnVtZW0sIGJ1ZmZlciwgc2l6ZSwg
JnVtZW0tPmZxLCAmdW1lbS0+Y3EsCj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIE5V
TEwpOwo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAmdW1lbV9jZmcpOwo+ICAgICAg
ICAgaWYgKHJldCkKPiAgICAgICAgICAgICAgICAgZXhpdF93aXRoX2Vycm9yKC1yZXQpOwo+Cj4g
QEAgLTM0Niw2ICszNTUsNyBAQCBzdGF0aWMgc3RydWN0IG9wdGlvbiBsb25nX29wdGlvbnNbXSA9
IHsKPiAgICAgICAgIHsiaW50ZXJ2YWwiLCByZXF1aXJlZF9hcmd1bWVudCwgMCwgJ24nfSwKPiAg
ICAgICAgIHsiemVyby1jb3B5Iiwgbm9fYXJndW1lbnQsIDAsICd6J30sCj4gICAgICAgICB7ImNv
cHkiLCBub19hcmd1bWVudCwgMCwgJ2MnfSwKPiArICAgICAgIHsidW5hbGlnbmVkIiwgbm9fYXJn
dW1lbnQsIDAsICd1J30sCj4gICAgICAgICB7MCwgMCwgMCwgMH0KPiAgfTsKPgo+IEBAIC0zNjUs
NiArMzc1LDcgQEAgc3RhdGljIHZvaWQgdXNhZ2UoY29uc3QgY2hhciAqcHJvZykKPiAgICAgICAg
ICAgICAgICAgIiAgLW4sIC0taW50ZXJ2YWw9biAgICAgU3BlY2lmeSBzdGF0aXN0aWNzIHVwZGF0
ZSBpbnRlcnZhbCAoZGVmYXVsdCAxIHNlYykuXG4iCj4gICAgICAgICAgICAgICAgICIgIC16LCAt
LXplcm8tY29weSAgICAgIEZvcmNlIHplcm8tY29weSBtb2RlLlxuIgo+ICAgICAgICAgICAgICAg
ICAiICAtYywgLS1jb3B5ICAgICAgICAgICBGb3JjZSBjb3B5IG1vZGUuXG4iCj4gKyAgICAgICAg
ICAgICAgICIgIC11LCAtLXVuYWxpZ25lZCAgICAgIEVuYWJsZSB1bmFsaWduZWQgY2h1bmsgcGxh
Y2VtZW50XG4iCj4gICAgICAgICAgICAgICAgICJcbiI7Cj4gICAgICAgICBmcHJpbnRmKHN0ZGVy
ciwgc3RyLCBwcm9nKTsKPiAgICAgICAgIGV4aXQoRVhJVF9GQUlMVVJFKTsKPiBAQCAtMzc3LDcg
KzM4OCw3IEBAIHN0YXRpYyB2b2lkIHBhcnNlX2NvbW1hbmRfbGluZShpbnQgYXJnYywgY2hhciAq
KmFyZ3YpCj4gICAgICAgICBvcHRlcnIgPSAwOwo+Cj4gICAgICAgICBmb3IgKDs7KSB7Cj4gLSAg
ICAgICAgICAgICAgIGMgPSBnZXRvcHRfbG9uZyhhcmdjLCBhcmd2LCAiRnJ0bGk6cTpwc1NObjpj
eiIsIGxvbmdfb3B0aW9ucywKPiArICAgICAgICAgICAgICAgYyA9IGdldG9wdF9sb25nKGFyZ2Ms
IGFyZ3YsICJGcnRsaTpxOnBzU05uOmN6dSIsIGxvbmdfb3B0aW9ucywKPiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICZvcHRpb25faW5kZXgpOwo+ICAgICAgICAgICAgICAgICBpZiAo
YyA9PSAtMSkKPiAgICAgICAgICAgICAgICAgICAgICAgICBicmVhazsKPiBAQCAtNDE3LDkgKzQy
OCwxNCBAQCBzdGF0aWMgdm9pZCBwYXJzZV9jb21tYW5kX2xpbmUoaW50IGFyZ2MsIGNoYXIgKiph
cmd2KQo+ICAgICAgICAgICAgICAgICBjYXNlICdjJzoKPiAgICAgICAgICAgICAgICAgICAgICAg
ICBvcHRfeGRwX2JpbmRfZmxhZ3MgfD0gWERQX0NPUFk7Cj4gICAgICAgICAgICAgICAgICAgICAg
ICAgYnJlYWs7Cj4gKyAgICAgICAgICAgICAgIGNhc2UgJ3UnOgo+ICsgICAgICAgICAgICAgICAg
ICAgICAgIG9wdF91bWVtX2ZsYWdzIHw9IFhEUF9VTUVNX1VOQUxJR05FRF9DSFVOS1M7Cj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgb3B0X3VuYWxpZ25lZF9jaHVua3MgPSAxOwo+ICsgICAgICAg
ICAgICAgICAgICAgICAgIGJyZWFrOwo+ICAgICAgICAgICAgICAgICBjYXNlICdGJzoKPiAgICAg
ICAgICAgICAgICAgICAgICAgICBvcHRfeGRwX2ZsYWdzICY9IH5YRFBfRkxBR1NfVVBEQVRFX0lG
X05PRVhJU1Q7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgYnJlYWs7Cj4gKwo+ICAgICAgICAg
ICAgICAgICBkZWZhdWx0Ogo+ICAgICAgICAgICAgICAgICAgICAgICAgIHVzYWdlKGJhc2VuYW1l
KGFyZ3ZbMF0pKTsKPiAgICAgICAgICAgICAgICAgfQo+IC0tCj4gMi4xNy4xCj4KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1h
aWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9z
bC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
