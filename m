Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCA81A9E65
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Sep 2019 11:30:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 623D488574;
	Thu,  5 Sep 2019 09:30:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pa4YbLLaBF3T; Thu,  5 Sep 2019 09:30:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0E61A8857C;
	Thu,  5 Sep 2019 09:30:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0C9531BF3BB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2019 09:30:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 04FF620369
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2019 09:30:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sCggQjMBbrOo for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Sep 2019 09:30:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 07BDD203FA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2019 09:30:08 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id k10so2012360qth.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 05 Sep 2019 02:30:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=1/qBPzDGnwVwTtxvRSJOqoyvYczgN5gLAndEkApQaJs=;
 b=ki0xGu2Js/snPqI+c0IIWa47EJGHUgBYRbMSqdSD78z57sq6oeR0Pwl3Es48C15I71
 fyWzhny81kyDZNMDcqhWmZcHsDqN0z9PDCqMMqOT6a8YjMhGjzFN4PlPW5WK23hnTNd0
 dyaiCqoSRJDmUfmj04BdUbbJ8xZMjFMkN59OTt8ZDFsOrHWD+BIVcVSXot4B7L4UAkMp
 S1XzH3jMOdby77bqbKc4aEz/4Gy7BPni6MqMf0Cce6/uoIOc/86NqhZJ8yuTv5D+1feJ
 qJmrv8p7dlr9k3MmPDnwlE9dsx9lBFuaA0//ZQjwyBBc07If8Eqx5vJJJhZ2WQvQA6lg
 2fWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=1/qBPzDGnwVwTtxvRSJOqoyvYczgN5gLAndEkApQaJs=;
 b=PCi/fRWeglQDINaTc5CGJGJHWWMgWwoI5zEtTaR13YRYlaRzhkIvslms/rf/X6WMJT
 x4UrF+VGqK2Q1j5vigrdVbGU8RVZnq2wAy2Z0PF61uHrFwukxDBnCqm+fjmBWI7mpmDq
 3WCG8N1a63MB7Z7sBNOrPVAx9AI9kf9kHM1z/RsRHi1CFrOEDFC9Xs1SzhdzWGXtlr/n
 PhJuNbKW7HuSgKsawF6AUDMlu2par1nLI4pdCXsXcW6rTrb69LTTXX4YvjuCdcOo0X4o
 yWiju/gmWkGijX5iI11vsr9resxpojQrJ6o6fNSiDxfmL444pbGG/24I4BCSk7Vz+f5g
 y1dQ==
X-Gm-Message-State: APjAAAUGXtiAdnUlHbYo4XCQXc9NWblur/XNJJrkjlEe3C9EfOcd24d5
 2CYmoisDsEhm8BH7tykAcRpD+WGQRM4KRwKvQ14=
X-Google-Smtp-Source: APXvYqxNvrXejuh7WfEYSj+4SEHc1+NhdCLqNWpmkEnNmRDa90kjv0KgzmfMBT6Brk2/zCch5ckLa3rLdJnWeHzSJ3E=
X-Received: by 2002:a05:6214:1369:: with SMTP id
 c9mr1049810qvw.3.1567675806930; 
 Thu, 05 Sep 2019 02:30:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190905011144.3513-1-kevin.laatz@intel.com>
In-Reply-To: <20190905011144.3513-1-kevin.laatz@intel.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Thu, 5 Sep 2019 11:29:55 +0200
Message-ID: <CAJ+HfNib5qSX13wquSe8WbuZ3CMQCyeS2cdhqPG7NTjqvSq2Ew@mail.gmail.com>
To: Kevin Laatz <kevin.laatz@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH bpf-next] i40e: fix xdp handle
 calculations
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
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Bruce Richardson <bruce.richardson@intel.com>, bpf <bpf@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVGh1LCA1IFNlcCAyMDE5IGF0IDExOjI3LCBLZXZpbiBMYWF0eiA8a2V2aW4ubGFhdHpAaW50
ZWwuY29tPiB3cm90ZToKPgo+IEN1cnJlbnRseSwgd2UgZG9uJ3QgYWRkIGhlYWRyb29tIHRvIHRo
ZSBoYW5kbGUgaW4gaTQwZV96Y2FfZnJlZSwKPiBpNDBlX2FsbG9jX2J1ZmZlcl9zbG93X3pjIGFu
ZCBpNDBlX2FsbG9jX2J1ZmZlcl96Yy4gVGhlIGFkZGl0aW9uIG9mIHRoZQo+IGhlYWRyb29tIHRv
IHRoZSBoYW5kbGUgd2FzIHJlbW92ZWQgaW4KPiBjb21taXQgMmY4NmM4MDZhOGE4ICgiaTQwZTog
bW9kaWZ5IGRyaXZlciBmb3IgaGFuZGxpbmcgb2Zmc2V0cyIpLCB3aGljaAo+IHdpbGwgYnJlYWsg
dGhpbmdzIHdoZW4gaGVhZHJvb20gaXMgbm9uLXplcm8uIFRoaXMgcGF0Y2ggZml4ZXMgdGhpcyBh
bmQgdXNlcwo+IHhza191bWVtX2FkanVzdF9vZmZzZXQgdG8gYWRkIGl0IGFwcHJvcHJpdGVseSBi
YXNlZCBvbiB0aGUgbW9kZSBiZWluZyBydW4uCj4KPiBGaXhlczogMmY4NmM4MDZhOGE4ICgiaTQw
ZTogbW9kaWZ5IGRyaXZlciBmb3IgaGFuZGxpbmcgb2Zmc2V0cyIpCj4gUmVwb3J0ZWQtYnk6IEJq
b3JuIFRvcGVsIDxiam9ybi50b3BlbEBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogS2V2aW4g
TGFhdHogPGtldmluLmxhYXR6QGludGVsLmNvbT4KClRoYW5rcyBLZXZpbiEKCkFja2VkLWJ5OiBC
asO2cm4gVMO2cGVsIDxiam9ybi50b3BlbEBpbnRlbC5jb20+Cgo+IC0tLQo+ICBkcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfeHNrLmMgfCA3ICsrKystLS0KPiAgMSBmaWxlIGNo
YW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfeHNrLmMgYi9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfeHNrLmMKPiBpbmRleCBlYWNhNjE2MmE2ZTYuLjAzNzNi
YzZjN2U2MSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0
MGVfeHNrLmMKPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfeHNr
LmMKPiBAQCAtMjY3LDcgKzI2Nyw3IEBAIHN0YXRpYyBib29sIGk0MGVfYWxsb2NfYnVmZmVyX3pj
KHN0cnVjdCBpNDBlX3JpbmcgKnJ4X3JpbmcsCj4gICAgICAgICBiaS0+YWRkciA9IHhkcF91bWVt
X2dldF9kYXRhKHVtZW0sIGhhbmRsZSk7Cj4gICAgICAgICBiaS0+YWRkciArPSBocjsKPgo+IC0g
ICAgICAgYmktPmhhbmRsZSA9IGhhbmRsZTsKPiArICAgICAgIGJpLT5oYW5kbGUgPSB4c2tfdW1l
bV9hZGp1c3Rfb2Zmc2V0KHVtZW0sIGhhbmRsZSwgdW1lbS0+aGVhZHJvb20pOwo+Cj4gICAgICAg
ICB4c2tfdW1lbV9kaXNjYXJkX2FkZHIodW1lbSk7Cj4gICAgICAgICByZXR1cm4gdHJ1ZTsKPiBA
QCAtMzA0LDcgKzMwNCw3IEBAIHN0YXRpYyBib29sIGk0MGVfYWxsb2NfYnVmZmVyX3Nsb3dfemMo
c3RydWN0IGk0MGVfcmluZyAqcnhfcmluZywKPiAgICAgICAgIGJpLT5hZGRyID0geGRwX3VtZW1f
Z2V0X2RhdGEodW1lbSwgaGFuZGxlKTsKPiAgICAgICAgIGJpLT5hZGRyICs9IGhyOwo+Cj4gLSAg
ICAgICBiaS0+aGFuZGxlID0gaGFuZGxlOwo+ICsgICAgICAgYmktPmhhbmRsZSA9IHhza191bWVt
X2FkanVzdF9vZmZzZXQodW1lbSwgaGFuZGxlLCB1bWVtLT5oZWFkcm9vbSk7Cj4KPiAgICAgICAg
IHhza191bWVtX2Rpc2NhcmRfYWRkcl9ycSh1bWVtKTsKPiAgICAgICAgIHJldHVybiB0cnVlOwo+
IEBAIC00NjksNyArNDY5LDggQEAgdm9pZCBpNDBlX3pjYV9mcmVlKHN0cnVjdCB6ZXJvX2NvcHlf
YWxsb2NhdG9yICphbGxvYywgdW5zaWduZWQgbG9uZyBoYW5kbGUpCj4gICAgICAgICBiaS0+YWRk
ciA9IHhkcF91bWVtX2dldF9kYXRhKHJ4X3JpbmctPnhza191bWVtLCBoYW5kbGUpOwo+ICAgICAg
ICAgYmktPmFkZHIgKz0gaHI7Cj4KPiAtICAgICAgIGJpLT5oYW5kbGUgPSAodTY0KWhhbmRsZTsK
PiArICAgICAgIGJpLT5oYW5kbGUgPSB4c2tfdW1lbV9hZGp1c3Rfb2Zmc2V0KHJ4X3JpbmctPnhz
a191bWVtLCAodTY0KWhhbmRsZSwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHJ4X3JpbmctPnhza191bWVtLT5oZWFkcm9vbSk7Cj4gIH0KPgo+ICAvKioKPiAt
LQo+IDIuMTcuMQo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiBJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0Cj4gSW50ZWwtd2lyZWQtbGFuQG9z
dW9zbC5vcmcKPiBodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC13aXJlZC1sYW4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9y
ZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1s
YW4K
