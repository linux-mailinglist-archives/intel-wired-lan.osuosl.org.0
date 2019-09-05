Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E40FA9E69
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Sep 2019 11:30:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 338CF85BA9;
	Thu,  5 Sep 2019 09:30:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3WaA75ih+NRM; Thu,  5 Sep 2019 09:30:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7A89185C10;
	Thu,  5 Sep 2019 09:30:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2CFD71BF3BB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2019 09:30:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BF20585BBA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2019 09:30:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PtMDHKMLqkFa for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Sep 2019 09:30:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
 [209.85.160.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E465385BA9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2019 09:30:29 +0000 (UTC)
Received: by mail-qt1-f194.google.com with SMTP id g13so1556990qtj.4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 05 Sep 2019 02:30:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=j+NuWsvGg4YSTg+pY5U+WlBuaH5AU3qjPVHa3XzIK1k=;
 b=ZVscebx2X28emBP2unFzKnyKKxk5Ur7cs8Lpr09wpbqrCzquT7NG05gIf02ZCwrl9f
 DX8nrQZj/6xufRt9KH2fUN5soQyv7FqrQ3ZLZ6uFzg9rwBVLfAeIs7n9ejpOjMIaJe5G
 Jg3rEF38OvOe5G5PlKXV0p/gw6aEIqrI3RoSaX622LTUuOboeV9Hj1fes8ikfi8FcNE/
 ONvUBA1QoSbCm8Q8504y7jPdX92QFQhyi0XJdesYMUVnBgulxJkHTUD22W91ErRFuG8s
 /GYgspMFhWHK9M4Is9fQLrFetdc1fBiL2aCkVuSkDMQTk6xNZY6pGFzt6OflMUls+MyD
 Ff1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=j+NuWsvGg4YSTg+pY5U+WlBuaH5AU3qjPVHa3XzIK1k=;
 b=RPQiaXVH/kbS0z0sDFKDr6z+j4jc2+VUZrohMN/ywnUWObGgoPz3YVoATioA/YSDoH
 RG5orN68EwhwEkZvw3b1XTs50hxAOAhXyU9fpE64R5hlBrl8Lrnxlvn3ldndmIdN6Y8p
 f5yxB/zPdO/uPEBtf3JykbhfFIOThtFqVc0y79dQxw91awZ5t67iplcthmFj2bWG+W8O
 FYuY/qp3r39lEEpM64HQZE+4Zl/np2Izo5yzLdGBtvewFqqY4lLr36xE2aWCT3hR+6GM
 u0sEXGwDlN5tm7cEt9BP2NHEM9oBZCKuS/9Jn6Ez05HwWyrgOH71U87GC3JYwy1kGdZV
 dE8Q==
X-Gm-Message-State: APjAAAU74k0TQAyNILvUQJ1BKT6DMKSegNpVHgTyUttlREkD1560PZe5
 Y/J6dBQ8xqlB+rBYCtF9dLwHRQ/Q4y9ty5VTm/M=
X-Google-Smtp-Source: APXvYqwqtWEX/881MOd0kLoFhBC3PlmXYNpEUU838tQra9LNf+OzMUL5loXZdD+fMlpBG4M/oR1ESOugQ1GAOCo4uN8=
X-Received: by 2002:ac8:254c:: with SMTP id 12mr2489157qtn.36.1567675829060;
 Thu, 05 Sep 2019 02:30:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190905011217.3567-1-kevin.laatz@intel.com>
In-Reply-To: <20190905011217.3567-1-kevin.laatz@intel.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Thu, 5 Sep 2019 11:30:17 +0200
Message-ID: <CAJ+HfNhBmP6sUt+vidOzk1GDNRmXqhvqgN72s5Ce3ysRd=YYQA@mail.gmail.com>
To: Kevin Laatz <kevin.laatz@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH bpf-next] ixgbe: fix xdp handle
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

T24gVGh1LCA1IFNlcCAyMDE5IGF0IDExOjI4LCBLZXZpbiBMYWF0eiA8a2V2aW4ubGFhdHpAaW50
ZWwuY29tPiB3cm90ZToKPgo+IEN1cnJlbnRseSwgd2UgZG9uJ3QgYWRkIGhlYWRyb29tIHRvIHRo
ZSBoYW5kbGUgaW4gaXhnYmVfemNhX2ZyZWUsCj4gaXhnYmVfYWxsb2NfYnVmZmVyX3Nsb3dfemMg
YW5kIGl4Z2JlX2FsbG9jX2J1ZmZlcl96Yy4gVGhlIGFkZGl0aW9uIG9mIHRoZQo+IGhlYWRyb29t
IHRvIHRoZSBoYW5kbGUgd2FzIHJlbW92ZWQgaW4KPiBjb21taXQgZDhjMzA2MWU1ZWRkICgiaXhn
YmU6IG1vZGlmeSBkcml2ZXIgZm9yIGhhbmRsaW5nIG9mZnNldHMiKSwgd2hpY2gKPiB3aWxsIGJy
ZWFrIHRoaW5ncyB3aGVuIGhlYWRyb29tIGlzdm5vbi16ZXJvLiBUaGlzIHBhdGNoIGZpeGVzIHRo
aXMgYW5kIHVzZXMKPiB4c2tfdW1lbV9hZGp1c3Rfb2Zmc2V0IHRvIGFkZCBpdCBhcHByb3ByaXRl
bHkgYmFzZWQgb24gdGhlIG1vZGUgYmVpbmcgcnVuLgo+Cj4gRml4ZXM6IGQ4YzMwNjFlNWVkZCAo
Iml4Z2JlOiBtb2RpZnkgZHJpdmVyIGZvciBoYW5kbGluZyBvZmZzZXRzIikKPiBSZXBvcnRlZC1i
eTogQmpvcm4gVG9wZWwgPGJqb3JuLnRvcGVsQGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBL
ZXZpbiBMYWF0eiA8a2V2aW4ubGFhdHpAaW50ZWwuY29tPgoKQWNrZWQtYnk6IEJqw7ZybiBUw7Zw
ZWwgPGJqb3JuLnRvcGVsQGludGVsLmNvbT4KCj4gLS0tCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2l4Z2JlL2l4Z2JlX3hzay5jIHwgNyArKysrLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA0
IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfeHNrLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9peGdiZS9peGdiZV94c2suYwo+IGluZGV4IDE3MDYxYzc5OWY3Mi4uYWQ4MDJhODkw
OWUwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2Jl
X3hzay5jCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfeHNr
LmMKPiBAQCAtMjQ4LDcgKzI0OCw4IEBAIHZvaWQgaXhnYmVfemNhX2ZyZWUoc3RydWN0IHplcm9f
Y29weV9hbGxvY2F0b3IgKmFsbG9jLCB1bnNpZ25lZCBsb25nIGhhbmRsZSkKPiAgICAgICAgIGJp
LT5hZGRyID0geGRwX3VtZW1fZ2V0X2RhdGEocnhfcmluZy0+eHNrX3VtZW0sIGhhbmRsZSk7Cj4g
ICAgICAgICBiaS0+YWRkciArPSBocjsKPgo+IC0gICAgICAgYmktPmhhbmRsZSA9ICh1NjQpaGFu
ZGxlOwo+ICsgICAgICAgYmktPmhhbmRsZSA9IHhza191bWVtX2FkanVzdF9vZmZzZXQocnhfcmlu
Zy0+eHNrX3VtZW0sICh1NjQpaGFuZGxlLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgcnhfcmluZy0+eHNrX3VtZW0tPmhlYWRyb29tKTsKPiAgfQo+Cj4gIHN0
YXRpYyBib29sIGl4Z2JlX2FsbG9jX2J1ZmZlcl96YyhzdHJ1Y3QgaXhnYmVfcmluZyAqcnhfcmlu
ZywKPiBAQCAtMjc0LDcgKzI3NSw3IEBAIHN0YXRpYyBib29sIGl4Z2JlX2FsbG9jX2J1ZmZlcl96
YyhzdHJ1Y3QgaXhnYmVfcmluZyAqcnhfcmluZywKPiAgICAgICAgIGJpLT5hZGRyID0geGRwX3Vt
ZW1fZ2V0X2RhdGEodW1lbSwgaGFuZGxlKTsKPiAgICAgICAgIGJpLT5hZGRyICs9IGhyOwo+Cj4g
LSAgICAgICBiaS0+aGFuZGxlID0gaGFuZGxlOwo+ICsgICAgICAgYmktPmhhbmRsZSA9IHhza191
bWVtX2FkanVzdF9vZmZzZXQodW1lbSwgaGFuZGxlLCB1bWVtLT5oZWFkcm9vbSk7Cj4KPiAgICAg
ICAgIHhza191bWVtX2Rpc2NhcmRfYWRkcih1bWVtKTsKPiAgICAgICAgIHJldHVybiB0cnVlOwo+
IEBAIC0zMDEsNyArMzAyLDcgQEAgc3RhdGljIGJvb2wgaXhnYmVfYWxsb2NfYnVmZmVyX3Nsb3df
emMoc3RydWN0IGl4Z2JlX3JpbmcgKnJ4X3JpbmcsCj4gICAgICAgICBiaS0+YWRkciA9IHhkcF91
bWVtX2dldF9kYXRhKHVtZW0sIGhhbmRsZSk7Cj4gICAgICAgICBiaS0+YWRkciArPSBocjsKPgo+
IC0gICAgICAgYmktPmhhbmRsZSA9IGhhbmRsZTsKPiArICAgICAgIGJpLT5oYW5kbGUgPSB4c2tf
dW1lbV9hZGp1c3Rfb2Zmc2V0KHVtZW0sIGhhbmRsZSwgdW1lbS0+aGVhZHJvb20pOwo+Cj4gICAg
ICAgICB4c2tfdW1lbV9kaXNjYXJkX2FkZHJfcnEodW1lbSk7Cj4gICAgICAgICByZXR1cm4gdHJ1
ZTsKPiAtLQo+IDIuMTcuMQo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPiBJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0Cj4gSW50ZWwtd2lyZWQt
bGFuQG9zdW9zbC5vcmcKPiBodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC13aXJlZC1sYW4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1
b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13
aXJlZC1sYW4K
