Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D96433F64D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Mar 2021 18:12:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 362DB42FDF;
	Wed, 17 Mar 2021 17:12:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TWRQjgw0BxSF; Wed, 17 Mar 2021 17:12:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3E5DA43014;
	Wed, 17 Mar 2021 17:12:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 35BD11BF5DF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 17:12:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 20DB66F96E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 17:12:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=google.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l3TqyNx8XP6w for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Mar 2021 17:11:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com
 [IPv6:2a00:1450:4864:20::130])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E84936F970
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 17:11:58 +0000 (UTC)
Received: by mail-lf1-x130.google.com with SMTP id u4so4104520lfs.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 10:11:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Jzrcb4snjLsfCfgL7oJZ6fFGa4UZcs/jVCaFF495Y9I=;
 b=jhsTx4u3bX6dnuVOods1QVHxDvDRiLqaGF+PGS54cjNTi9eg9MypoGpTSGldjNDPn4
 WpwX3M8TKZuSW/TAGQkVP9BS/k6wwj2WpG5ssv7ZXigAiiLALXIWU/T8oLqh32ji2/ph
 8/G/6m3jCydCfwIjD8/cBRg+tvtl67RTRYxHJcP6LqnTbVgq/JeFyGr0I4Oam0Mf24fB
 d8JRTAbUa0HJOsPpSaomCtqmexfQZUBd30in19OoWMB44of9N6YcEIZ/Iz6CrDL4Q7ba
 kPCaUhZ69478SbyyCqVG5sRGOWAzYWe3ayXkl0fe5uDUJngVJmExKdU3bcAzmOM75kIs
 xR+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Jzrcb4snjLsfCfgL7oJZ6fFGa4UZcs/jVCaFF495Y9I=;
 b=SbiOqEOkZAatsx8AOl73eq/EB2YjnckuX5YXJKGVjGRpt2lDYr7GKQe0QB2Cqb8dJo
 o7KKWYVtPFRrgN3jFSWI+63KOe1wpIngJDvAuhGBYQfSoGjlc+0CrVmGV6zHI4FSlFbL
 aqLwixI59FyGgooxnowpapNerZYURJi4a/52v32EVxK9W/lMwRSnnn16+Kv4J5x5UykW
 x4c+AuWiCouzhXyvaHdpwuZNUdkbO5dXaet+7eEkGCfiXajrRXigjvsSrCMSr2jRmwdt
 2qtLleMQs1nSDpQRDwpsnNQyohHePq/eiIPSsUnkLyg5i3cJWoQN3mCCFK6TiRx1SPKk
 6M1A==
X-Gm-Message-State: AOAM5312IIQmxh5oG4joZ0xX33M6JeFP8hBdQtW9A+I6zwecJVOL4MRg
 9MCC3g3xfjGyeOdJyGQHvkdsj2c5le1EEc7JuOkdcg==
X-Google-Smtp-Source: ABdhPJwy1vfNQZQDVVE72SA1/HppIJ+ANP8e2YQaMqPQRoEHa1oHuTdWoG9xh3SZl2KCgAetkOywA6CCUAUxOlAF/5U=
X-Received: by 2002:a05:6512:3481:: with SMTP id
 v1mr2853789lfr.193.1616001116260; 
 Wed, 17 Mar 2021 10:11:56 -0700 (PDT)
MIME-Version: 1.0
References: <20210317064148.GA55123@embeddedor>
In-Reply-To: <20210317064148.GA55123@embeddedor>
From: Jann Horn <jannh@google.com>
Date: Wed, 17 Mar 2021 18:11:29 +0100
Message-ID: <CAG48ez2RDqKwx=umOHjo_1mYyNQgzvcP=KOw1HgSo4Prs_VQDw@mail.gmail.com>
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Subject: Re: [Intel-wired-lan] [PATCH][next] ixgbe: Fix out-of-bounds
 warning in ixgbe_host_interface_command()
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
Cc: Network Development <netdev@vger.kernel.org>,
 kernel list <linux-kernel@vger.kernel.org>, intel-wired-lan@lists.osuosl.org,
 linux-hardening@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gV2VkLCBNYXIgMTcsIDIwMjEgYXQgODo0MyBBTSBHdXN0YXZvIEEuIFIuIFNpbHZhCjxndXN0
YXZvYXJzQGtlcm5lbC5vcmc+IHdyb3RlOgo+IEZpeCB0aGUgZm9sbG93aW5nIG91dC1vZi1ib3Vu
ZHMgd2FybmluZyBieSByZXBsYWNpbmcgdGhlIG9uZS1lbGVtZW50Cj4gYXJyYXkgaW4gYW4gYW5v
bnltb3VzIHVuaW9uIHdpdGggYSBwb2ludGVyOgo+Cj4gICBDQyBbTV0gIGRyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX2NvbW1vbi5vCj4gZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaXhnYmUvaXhnYmVfY29tbW9uLmM6IEluIGZ1bmN0aW9uIOKAmGl4Z2JlX2hvc3RfaW50
ZXJmYWNlX2NvbW1hbmTigJk6Cj4gZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhn
YmVfY29tbW9uLmM6MzcyOToxMzogd2FybmluZzogYXJyYXkgc3Vic2NyaXB0IDEgaXMgYWJvdmUg
YXJyYXkgYm91bmRzIG9mIOKAmHUzMlsxXeKAmSB7YWthIOKAmHVuc2lnbmVkIGludFsxXeKAmX0g
Wy1XYXJyYXktYm91bmRzXQo+ICAzNzI5IHwgICBicC0+dTMyYXJyW2JpXSA9IElYR0JFX1JFQURf
UkVHX0FSUkFZKGh3LCBJWEdCRV9GTEVYX01ORywgYmkpOwo+ICAgICAgIHwgICB+fn5+fn5+fn5+
Xn5+fgo+IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX2NvbW1vbi5jOjM2
ODI6Nzogbm90ZTogd2hpbGUgcmVmZXJlbmNpbmcg4oCYdTMyYXJy4oCZCj4gIDM2ODIgfCAgIHUz
MiB1MzJhcnJbMV07Cj4gICAgICAgfCAgICAgICBefn5+fn4KPgo+IFRoaXMgaGVscHMgd2l0aCB0
aGUgb25nb2luZyBlZmZvcnRzIHRvIGdsb2JhbGx5IGVuYWJsZSAtV2FycmF5LWJvdW5kcy4KPgo+
IE5vdGljZSB0aGF0LCB0aGUgdXN1YWwgYXBwcm9hY2ggdG8gZml4IHRoZXNlIHNvcnRzIG9mIGlz
c3VlcyBpcyB0bwo+IHJlcGxhY2UgdGhlIG9uZS1lbGVtZW50IGFycmF5IHdpdGggYSBmbGV4aWJs
ZS1hcnJheSBtZW1iZXIuIEhvd2V2ZXIsCj4gZmxleGlibGUgYXJyYXlzIHNob3VsZCBub3QgYmUg
dXNlZCBpbiB1bmlvbnMuIFRoYXQsIHRvZ2V0aGVyIHdpdGggdGhlCj4gZmFjdCB0aGF0IHRoZSBh
cnJheSBub3RhdGlvbiBpcyBub3QgYmVpbmcgYWZmZWN0ZWQgaW4gYW55IHdheXMsIGlzIHdoeQo+
IHRoZSBwb2ludGVyIGFwcHJvYWNoIHdhcyBjaG9zZW4gaW4gdGhpcyBjYXNlLgo+Cj4gTGluazog
aHR0cHM6Ly9naXRodWIuY29tL0tTUFAvbGludXgvaXNzdWVzLzEwOQo+IFNpZ25lZC1vZmYtYnk6
IEd1c3Rhdm8gQS4gUi4gU2lsdmEgPGd1c3Rhdm9hcnNAa2VybmVsLm9yZz4KPiAtLS0KPiAgZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfY29tbW9uLmMgfCAyICstCj4gIDEg
ZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+Cj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX2NvbW1vbi5jIGIvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfY29tbW9uLmMKPiBpbmRleCA2MmRk
YjQ1MmY4NjIuLmJmZjNkYzFhZjcwMiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9peGdiZS9peGdiZV9jb21tb24uYwo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2l4Z2JlL2l4Z2JlX2NvbW1vbi5jCj4gQEAgLTM2NzksNyArMzY3OSw3IEBAIHMzMiBp
eGdiZV9ob3N0X2ludGVyZmFjZV9jb21tYW5kKHN0cnVjdCBpeGdiZV9odyAqaHcsIHZvaWQgKmJ1
ZmZlciwKPiAgICAgICAgIHUzMiBoZHJfc2l6ZSA9IHNpemVvZihzdHJ1Y3QgaXhnYmVfaGljX2hk
cik7Cj4gICAgICAgICB1bmlvbiB7Cj4gICAgICAgICAgICAgICAgIHN0cnVjdCBpeGdiZV9oaWNf
aGRyIGhkcjsKPiAtICAgICAgICAgICAgICAgdTMyIHUzMmFyclsxXTsKPiArICAgICAgICAgICAg
ICAgdTMyICp1MzJhcnI7Cj4gICAgICAgICB9ICpicCA9IGJ1ZmZlcjsKPiAgICAgICAgIHUxNiBi
dWZfbGVuLCBkd29yZF9sZW47Cj4gICAgICAgICBzMzIgc3RhdHVzOwoKVGhpcyBsb29rcyBib2d1
cy4gQW4gYXJyYXkgaXMgaW5saW5lLCBhIHBvaW50ZXIgcG9pbnRzIGVsc2V3aGVyZSAtCnRoZXkn
cmUgbm90IGludGVyY2hhbmdlYWJsZS4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1s
YW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC13aXJlZC1sYW4K
