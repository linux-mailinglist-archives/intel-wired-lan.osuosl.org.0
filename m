Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AE59D510AE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Jun 2019 17:36:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6B3DC2038E;
	Mon, 24 Jun 2019 15:36:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 36l4o-K1VvvU; Mon, 24 Jun 2019 15:36:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5301B204D3;
	Mon, 24 Jun 2019 15:36:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CF55E1BF232
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 15:36:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CB03B2038E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 15:36:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QrMa70LnBCMO for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Jun 2019 15:36:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
 [209.85.160.195])
 by silver.osuosl.org (Postfix) with ESMTPS id C0DF020108
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 15:36:34 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id p15so14942569qtl.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 08:36:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=2fedAY1L1btlfl2SG7dqkjpbIsEJBo2iKLbpPw9GTe0=;
 b=DJzHvyiSbcQ6CRpXmTjpzIx9uYAQpj5lVFPLxsegvuhGQyCRdl6TKjWM2zXtplk3WP
 Fkj+9Jqz2ekthKHqTahkaSfuA8J04SORbLkZBNpuBRotxnutKyWMTMhUICa3mUmKW1Jw
 cwmYSOgbzkSjZxTqL1WY92md5GwcEqcLNf3lSEIG5wWqPeh9wMzEqIiMIEwOxDAhWJk0
 2ScNOn0aYlmPuj+XfxxCOYEosZeGxoSLAaVMIpohGFbUxeNm/LWrJRjKKw9k/wOVqEl3
 qPqVkTeDttiJngm7lIM1wDU8UJtDmKWfFhZjhxy52hQVkiB4s1psKwdWd9bPx/6dzb0m
 bKaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=2fedAY1L1btlfl2SG7dqkjpbIsEJBo2iKLbpPw9GTe0=;
 b=AB4isGRJg/Yl7hiGxYqAqjp+OzXaLzDQKXsx1Z3W84/aRjRn4ixeuYRfZf+Ri2XTv0
 cd23Q09Xloy6F/Z/sKb33hadZ1BKC/XHUIl05uve91yE6iXayvhF12VXa8uTZzee0rP3
 FIcLkQrVBp+l1ZHo616Vt9Oxgeq5NWbENwo153I5zpg+rW8f+rjipY7mCDx7+GHsL+X/
 OOgMAlZAiAo5vhqbab7c7Z6sRsixS58hv/eH2xzDI6HQ/0SpZMspWEQ5sf2YJhqnz6QD
 AFoPjO25t5b/L+ssN7n0/ChRTRKENf+LGucUnFgzNwgRWMsWUjZowvd0x6F3I6WPkIyd
 uaZQ==
X-Gm-Message-State: APjAAAWtbvdnGwqbUXKYFP4tuPVtWyW377k6k0FXOGUT/SLP3wp40VRT
 vd/FXKwF1tE5rWktUPl9R6W2nU543X8lI/R7EjU=
X-Google-Smtp-Source: APXvYqzud0u4l0tPcVLp9FP9+zn+iA4HMLTOKUiEi4BNJZaHRZKQcOi8G59OLZHPyhRjvq3u8N9Nr43JjGfISkrKlwM=
X-Received: by 2002:ac8:2f07:: with SMTP id j7mr118912618qta.359.1561390593748; 
 Mon, 24 Jun 2019 08:36:33 -0700 (PDT)
MIME-Version: 1.0
References: <20190620090958.2135-1-kevin.laatz@intel.com>
 <20190620090958.2135-11-kevin.laatz@intel.com>
In-Reply-To: <20190620090958.2135-11-kevin.laatz@intel.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Mon, 24 Jun 2019 17:36:22 +0200
Message-ID: <CAJ+HfNhkXmDJO7nZx2A0Gg9vj7s83iUOtkRtWi=wpi5446_NcQ@mail.gmail.com>
To: Kevin Laatz <kevin.laatz@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH 10/11] samples/bpf: use hugepages in
 xdpsock app
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
dGVsLmNvbT4gd3JvdGU6Cj4KPiBUaGlzIHBhdGNoIG1vZGlmaWVzIHhkcHNvY2sgdG8gdXNlIG1t
YXAgaW5zdGVhZCBvZiBwb3NpeF9tZW1hbGlnbi4gV2l0aAo+IHRoaXMgY2hhbmdlLCB3ZSBjYW4g
dXNlIGh1Z2VwYWdlcyB3aGVuIHJ1bm5pbmcgdGhlIGFwcGxpY2F0aW9uIGluIHVuYWxpZ25lZAo+
IGNodW5rcyBtb2RlLiBVc2luZyBodWdlcGFnZXMgbWFrZXMgaXQgbW9yZSBsaWtlbHkgdGhhdCB3
ZSBoYXZlIHBoeXNpY2FsbHkKPiBjb250aWd1b3VzIG1lbW9yeSwgd2hpY2ggc3VwcG9ydHMgdGhl
IHVuYWxpZ25lZCBjaHVuayBtb2RlIGJldHRlci4KPgo+IFNpZ25lZC1vZmYtYnk6IEtldmluIExh
YXR6IDxrZXZpbi5sYWF0ekBpbnRlbC5jb20+CgpBY2tlZC1ieTogQmrDtnJuIFTDtnBlbCA8Ympv
cm4udG9wZWxAaW50ZWwuY29tPgoKPiAtLS0KPiAgc2FtcGxlcy9icGYveGRwc29ja191c2VyLmMg
fCAxNCArKysrKysrKystLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCA1
IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL3NhbXBsZXMvYnBmL3hkcHNvY2tfdXNlci5j
IGIvc2FtcGxlcy9icGYveGRwc29ja191c2VyLmMKPiBpbmRleCA3YjRjZTA0N2RlYjIuLjhlZDYz
YWQ2ODQyOCAxMDA2NDQKPiAtLS0gYS9zYW1wbGVzL2JwZi94ZHBzb2NrX3VzZXIuYwo+ICsrKyBi
L3NhbXBsZXMvYnBmL3hkcHNvY2tfdXNlci5jCj4gQEAgLTc0LDYgKzc0LDcgQEAgc3RhdGljIGlu
dCBvcHRfaW50ZXJ2YWwgPSAxOwo+ICBzdGF0aWMgdTY0IG9wdF9idWZmZXJfc2l6ZSA9IFhTS19V
TUVNX19ERUZBVUxUX0ZSQU1FX1NJWkU7Cj4gIHN0YXRpYyB1MzIgb3B0X3VtZW1fZmxhZ3M7Cj4g
IHN0YXRpYyBpbnQgb3B0X3VuYWxpZ25lZF9jaHVua3M7Cj4gK3N0YXRpYyBpbnQgb3B0X21tYXBf
ZmxhZ3M7Cj4gIHN0YXRpYyB1MzIgb3B0X3hkcF9iaW5kX2ZsYWdzOwo+ICBzdGF0aWMgX191MzIg
cHJvZ19pZDsKPgo+IEBAIC00MzgsNiArNDM5LDcgQEAgc3RhdGljIHZvaWQgcGFyc2VfY29tbWFu
ZF9saW5lKGludCBhcmdjLCBjaGFyICoqYXJndikKPiAgICAgICAgICAgICAgICAgY2FzZSAndSc6
Cj4gICAgICAgICAgICAgICAgICAgICAgICAgb3B0X3VtZW1fZmxhZ3MgfD0gWERQX1VNRU1fVU5B
TElHTkVEX0NIVU5LUzsKPiAgICAgICAgICAgICAgICAgICAgICAgICBvcHRfdW5hbGlnbmVkX2No
dW5rcyA9IDE7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgb3B0X21tYXBfZmxhZ3MgPSBNQVBf
SFVHRVRMQjsKPiAgICAgICAgICAgICAgICAgICAgICAgICBicmVhazsKPiAgICAgICAgICAgICAg
ICAgY2FzZSAnYic6Cj4gICAgICAgICAgICAgICAgICAgICAgICAgb3B0X2J1ZmZlcl9zaXplID0g
YXRvaShvcHRhcmcpOwo+IEBAIC03MDcsMTEgKzcwOSwxMyBAQCBpbnQgbWFpbihpbnQgYXJnYywg
Y2hhciAqKmFyZ3YpCj4gICAgICAgICAgICAgICAgIGV4aXQoRVhJVF9GQUlMVVJFKTsKPiAgICAg
ICAgIH0KPgo+IC0gICAgICAgcmV0ID0gcG9zaXhfbWVtYWxpZ24oJmJ1ZnMsIGdldHBhZ2VzaXpl
KCksIC8qIFBBR0VfU0laRSBhbGlnbmVkICovCj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBOVU1fRlJBTUVTICogb3B0X2J1ZmZlcl9zaXplKTsKPiAtICAgICAgIGlmIChyZXQpCj4gLSAg
ICAgICAgICAgICAgIGV4aXRfd2l0aF9lcnJvcihyZXQpOwo+IC0KPiArICAgICAgIC8qIFJlc2Vy
dmUgbWVtb3J5IGZvciB0aGUgdW1lbS4gVXNlIGh1Z2VwYWdlcyBpZiB1bmFsaWduZWQgY2h1bmsg
bW9kZSAqLwo+ICsgICAgICAgYnVmcyA9IG1tYXAoTlVMTCwgTlVNX0ZSQU1FUyAqIG9wdF9idWZm
ZXJfc2l6ZSwgUFJPVF9SRUFEfFBST1RfV1JJVEUsCj4gKyAgICAgICAgICAgICAgICAgICAgICAg
TUFQX1BSSVZBVEV8TUFQX0FOT05ZTU9VU3xvcHRfbW1hcF9mbGFncywgLTEsIDApOwo+ICsgICAg
ICAgaWYgKGJ1ZnMgPT0gTUFQX0ZBSUxFRCkgewo+ICsgICAgICAgICAgICAgICBwcmludGYoIkVS
Uk9SOiBtbWFwIGZhaWxlZFxuIik7Cj4gKyAgICAgICAgICAgICAgIGV4aXQoRVhJVF9GQUlMVVJF
KTsKPiArICAgICAgIH0KPiAgICAgICAgIC8qIENyZWF0ZSBzb2NrZXRzLi4uICovCj4gICAgICAg
ICB1bWVtID0geHNrX2NvbmZpZ3VyZV91bWVtKGJ1ZnMsCj4gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIE5VTV9GUkFNRVMgKiBvcHRfYnVmZmVyX3NpemUpOwo+IC0tCj4gMi4xNy4x
Cj4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
d2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczov
L2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
