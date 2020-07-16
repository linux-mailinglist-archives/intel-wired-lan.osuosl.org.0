Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5374F221B75
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Jul 2020 06:39:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C2671876F7;
	Thu, 16 Jul 2020 04:39:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V5foWUF1JCf2; Thu, 16 Jul 2020 04:39:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DA1D087722;
	Thu, 16 Jul 2020 04:39:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 782DD1BF3C3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 04:39:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 734D3876FB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 04:39:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KOTrvNBHfN12 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Jul 2020 04:39:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com
 [209.85.217.41])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BAEA6876F7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 04:39:29 +0000 (UTC)
Received: by mail-vs1-f41.google.com with SMTP id d198so2308067vsc.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2020 21:39:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=A0ekUFjcERHJPPW8HrmDlsvidqbHD3DiKBNeYrFpKfE=;
 b=k+O7x3KYzyHO09DuKILUXHtfIrxTzPLdI32853eDisjGI1+U2/wMOB2HoKp+y1Y4Ws
 +fOEHFf2KlpGDL0HsKFzzCxREYckhu1+xCjBQSfEaxSw3sKKGkLwBfnsZTWbDzNTkMaj
 bzYJz/sX9PHq9FRk5G8ZNeSjsdNaNQpGR2JMv3Ad3/e0guAR4EJgECmVcSRYEYfieAFc
 zgeRlFZ9+jCQlfM8xuMzLZ5s8kblZMGySiDtpNBnAj0Gj11wf13Lx+DndcYmJoZxhGP8
 BIh1vKK/8RY6rZC54W0BhovmYoDO0Hlba3kogF8LhMXY9KnHZMvjnorBNvFB2FMeSLBm
 S1oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=A0ekUFjcERHJPPW8HrmDlsvidqbHD3DiKBNeYrFpKfE=;
 b=O2rD5rozYaZ82d/wQvspC/RJgP5DKbnR8S2tulI2wro7BOTK2IwEM9oHorymBd2n2V
 DUOkQ/C8oLTugf4ed2kL9fmWMHfq8iBrkHvEKyCaviRmAztbwVpjmiSgnHCzdSnqLJW8
 O5fRXpZeNfWF56/1y+8/ekg6bb1sO1XaGGUzBh1Owm5goafUHMc2g2EOQh1m/U9c4y7o
 K9uK0yWkiU90lV5OVvwnn8FXxEDSK/cO+JUpStfjSGhikjv1Mpo2dDIPTASJMjS8Ac3O
 +X/Rw5ngr+YuHJiQko+/r+MOiMGr54hpNaoJuJXzKwxEikq1a/frz/uaSpR/DrzMA7Nd
 SJYg==
X-Gm-Message-State: AOAM531BC2E9b7dl/o640e+vQX6zzTL5D5JGivyt67ueg5lnhLhhdeD4
 Sr+EXqZuXcwcfBXcJa+2mMhDopT8cQWa7gjzcAk=
X-Google-Smtp-Source: ABdhPJwVCBIFQpf6VxtKKBuMdwSlFwo5K5gHOOjllRteuKAKYlLoAKLDiSVGF/WLCh6WOsU7fWtpftM8g3rwh5rZ04M=
X-Received: by 2002:a05:6102:830:: with SMTP id
 k16mr1840918vsb.182.1594874368719; 
 Wed, 15 Jul 2020 21:39:28 -0700 (PDT)
MIME-Version: 1.0
References: <2863b548da1d4c369bbd9d6ceb337a24@baidu.com>
 <CAJ8uoz08pyWR43K_zhp6PsDLi0KE=y_4QTs-a7kBA-jkRQksaw@mail.gmail.com>
 <7aac955840df438e99e6681b0ae5b5b8@baidu.com>
In-Reply-To: <7aac955840df438e99e6681b0ae5b5b8@baidu.com>
From: Magnus Karlsson <magnus.karlsson@gmail.com>
Date: Thu, 16 Jul 2020 06:39:20 +0200
Message-ID: <CAJ8uoz3Qrh7gTtsOPiz=Z_vHEk+ZoC35cEZ1audDNu5G5pogZg@mail.gmail.com>
To: "Li,Rongqing" <lirongqing@baidu.com>
Subject: Re: [Intel-wired-lan] [bug ?] i40e_rx_buffer_flip should not be
 called for redirected xsk copy mode
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
Cc: Netdev <netdev@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlLCBKdWwgMTQsIDIwMjAgYXQgMTowNSBQTSBMaSxSb25ncWluZyA8bGlyb25ncWluZ0Bi
YWlkdS5jb20+IHdyb3RlOgo+Cj4KPgo+ID4gLS0tLS3pgq7ku7bljp/ku7YtLS0tLQo+ID4g5Y+R
5Lu25Lq6OiBMaSxSb25ncWluZwo+ID4g5Y+R6YCB5pe26Ze0OiAyMDIw5bm0N+aciDbml6UgMTQ6
MzgKPiA+IOaUtuS7tuS6ujogJ01hZ251cyBLYXJsc3NvbicgPG1hZ251cy5rYXJsc3NvbkBnbWFp
bC5jb20+Cj4gPiDmioTpgIE6IGludGVsLXdpcmVkLWxhbiA8aW50ZWwtd2lyZWQtbGFuQGxpc3Rz
Lm9zdW9zbC5vcmc+OyBCasO2cm4gVMO2cGVsCj4gPiA8Ympvcm4udG9wZWxAaW50ZWwuY29tPjsg
S2FybHNzb24sIE1hZ251cyA8bWFnbnVzLmthcmxzc29uQGludGVsLmNvbT47Cj4gPiBOZXRkZXYg
PG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc+Cj4gPiDkuLvpopg6IOetlOWkjTogW0ludGVsLXdpcmVk
LWxhbl0gW2J1ZyA/XSBpNDBlX3J4X2J1ZmZlcl9mbGlwIHNob3VsZCBub3QgYmUgY2FsbGVkCj4g
PiBmb3IgcmVkaXJlY3RlZCB4c2sgY29weSBtb2RlCj4gPgo+ID4KPiA+Cj4gPiA+IC0tLS0t6YKu
5Lu25Y6f5Lu2LS0tLS0KPiA+ID4g5Y+R5Lu25Lq6OiBNYWdudXMgS2FybHNzb24gW21haWx0bzpt
YWdudXMua2FybHNzb25AZ21haWwuY29tXQo+ID4gPiDlj5HpgIHml7bpl7Q6IDIwMjDlubQ35pyI
NuaXpSAxNDoxMwo+ID4gPiDmlLbku7bkuro6IExpLFJvbmdxaW5nIDxsaXJvbmdxaW5nQGJhaWR1
LmNvbT4KPiA+ID4g5oqE6YCBOiBpbnRlbC13aXJlZC1sYW4gPGludGVsLXdpcmVkLWxhbkBsaXN0
cy5vc3Vvc2wub3JnPjsgQmrDtnJuIFTDtnBlbAo+ID4gPiA8Ympvcm4udG9wZWxAaW50ZWwuY29t
PjsgS2FybHNzb24sIE1hZ251cyA8bWFnbnVzLmthcmxzc29uQGludGVsLmNvbT47Cj4gPiA+IE5l
dGRldiA8bmV0ZGV2QHZnZXIua2VybmVsLm9yZz4KPiA+ID4g5Li76aKYOiBSZTogW0ludGVsLXdp
cmVkLWxhbl0gW2J1ZyA/XSBpNDBlX3J4X2J1ZmZlcl9mbGlwIHNob3VsZCBub3QgYmUKPiA+ID4g
Y2FsbGVkIGZvciByZWRpcmVjdGVkIHhzayBjb3B5IG1vZGUKPiA+ID4KPiA+ID4gVGhhbmsgeW91
IFJvbmdRaW5nIGZvciByZXBvcnRpbmcgdGhpcy4gSSB3aWxsIHRha2UgYSBsb29rIGF0IGl0IGFu
ZAo+ID4gPiBwcm9kdWNlIGEgcGF0Y2guCj4gPiA+Cj4gPiA+IC9NYWdudXMKPiA+Cj4KPiBQaW5n
CgpNeSBhcG9sb2dpZXMgUm9uZ1FpbmcsIGJ1dCBpdCBpcyB0YWtpbmcgbG9uZ2VyIHRoYW4gZXhw
ZWN0ZWQgZHVlIHRvCmtleSBwZW9wbGUgYmVpbmcgb24gdmFjYXRpb24gZHVyaW5nIHRoaXMgc3Vt
bWVyIHBlcmlvZC4gV2UgYXJlCmRlYmF0aW5nIHdlYXRoZXIgdGhlIHNpbXBsZSBmaXggeW91IHBy
b3ZpZGVkIGNvdmVycyBhbGwgY2FzZXMuCkhvcGVmdWxseSBpdCBkb2VzLCBidXQgd2UganVzdCB3
YW50IHRvIG1ha2Ugc3VyZS4gVGhlIGZpeCBpcyBuZWVkZWQgaW4KZm91ciBkcml2ZXJzOiB0aGUg
b25lcyB5b3UgbWVudGlvbiBwbHVzIGljZS4KCi9NYWdudXMKCj4KPiAtTGkKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxp
bmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
