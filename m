Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B25D5109C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Jun 2019 17:34:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 98D71204DD;
	Mon, 24 Jun 2019 15:34:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C6LQKDq+h43p; Mon, 24 Jun 2019 15:34:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7ACD6204D9;
	Mon, 24 Jun 2019 15:34:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E37A21BF232
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 15:34:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DDA9E84C53
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 15:34:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T712hFvqEJcE for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Jun 2019 15:34:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
 [209.85.160.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2CAEC8471C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 15:34:27 +0000 (UTC)
Received: by mail-qt1-f196.google.com with SMTP id w40so4368217qtk.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 08:34:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=37HHlnX0ko661Qr3W/bCbUQhiUoBQ5T0GwRisjYLBng=;
 b=oV0HwOyaHayzF6PBaHFlgw+N6No5kTP1fBxa77bbHlQGzE+nH7bPAbQYUI6z+bs1iT
 Be+AL0Nin3i52pE63mdC2/jBOZ3ssy/ACra3grOQf7o0tOB/ugNp5/FMo0ih2aMKfl94
 GYKe8MA28Odamxuq2JX/UA7tREMwBpdbnWbRywm4bb8sQTJIC6V/Uip+yu6SqiMzP8lM
 VqK8fmKE2WWT9w9Psu2dA86cWB/14GVovN/oFMg0lxGa47M9B6BngwYcJ2Vy90bl6eJ1
 USm//Nv/Hd0HMIcS7T+7twimC3Y1OZEhp/6xWoIGbNT99PTZNBHpRdaqIh/qxUoIPkOZ
 S9Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=37HHlnX0ko661Qr3W/bCbUQhiUoBQ5T0GwRisjYLBng=;
 b=n/8JIRBPnRfDreRo8prPH2j9QuVYABUDURtZBOdD7ujcqNrN+p1f5GHmniFJPn+P1D
 O0zQG+sQLc5VO7qHwCTjLw4mOrJFfRCyF1qAZEX8aGKOBF0JpR+vY6lCZlxD003RCGiJ
 bU1JvM6n5PxORSSvVqNL1dWC9kGpZCsPP1YBdCBI7vYzEBCdhtoMP9bmeZtjvLDH/iLq
 GA9kcFsmGZdaeWeKvFj4v+8rEMHcEikQhrsIiFblxlOAS7dJH1yXf++wphPe3VEINk1X
 1vErOSRoL6nJHa3uHB62I0Gj8PpZ1qXMTRfBoiU8RcJ0d3yPJd9UmXAg/4cHiCh2dUXt
 df6w==
X-Gm-Message-State: APjAAAX9CAEMe/JZDOV0zIuJIEleP+fIodm8higz4HetEDecscQClliW
 40qA0czBFQzO8k9VrE+zH+jOPepoX1DMVeTry6s=
X-Google-Smtp-Source: APXvYqw/3/UIpGtVW/kZ8Xai0idQYgzr6oTVOpXmvjRsBnHwXljdY01SuGYRuFPT1cAEQx6bTwqOPg8ncrLu8IEryZo=
X-Received: by 2002:ac8:2f07:: with SMTP id j7mr118902221qta.359.1561390466338; 
 Mon, 24 Jun 2019 08:34:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190620090958.2135-1-kevin.laatz@intel.com>
 <20190620090958.2135-12-kevin.laatz@intel.com>
In-Reply-To: <20190620090958.2135-12-kevin.laatz@intel.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Mon, 24 Jun 2019 17:34:15 +0200
Message-ID: <CAJ+HfNiSs1jGzqg0E4f8=8EMCTMpAWs6-33m7o9Gw_8L-5v-TQ@mail.gmail.com>
To: Kevin Laatz <kevin.laatz@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH 11/11] doc/af_xdp: include unaligned
 chunk case
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
dGVsLmNvbT4gd3JvdGU6Cj4KPiBUaGUgYWRkaXRpb24gb2YgdW5hbGlnbmVkIGNodW5rcyBtb2Rl
LCB0aGUgZG9jdW1lbnRhdGlvbiBuZWVkcyB0byBiZQo+IHVwZGF0ZWQgdG8gaW5kaWNhdGUgdGhh
dCB0aGUgaW5jb21pbmcgYWRkciB0byB0aGUgZmlsbCByaW5nIHdpbGwgb25seSBiZQo+IG1hc2tl
ZCBpZiB0aGUgdXNlciBhcHBsaWNhdGlvbiBpcyBydW4gaW4gdGhlIGFsaWduZWQgY2h1bmsgbW9k
ZS4gVGhpcyBwYXRjaAo+IGFsc28gYWRkcyBhIGxpbmUgdG8gZXhwbGljaXRseSBpbmRpY2F0ZSB0
aGF0IHRoZSBpbmNvbWluZyBhZGRyIHdpbGwgbm90IGJlCj4gbWFza2VkIGlmIHJ1bm5pbmcgdGhl
IHVzZXIgYXBwbGljYXRpb24gaW4gdGhlIHVuYWxpZ25lZCBjaHVuayBtb2RlLgo+Cj4gU2lnbmVk
LW9mZi1ieTogS2V2aW4gTGFhdHogPGtldmluLmxhYXR6QGludGVsLmNvbT4KCkFja2VkLWJ5OiBC
asO2cm4gVMO2cGVsIDxiam9ybi50b3BlbEBpbnRlbC5jb20+Cgo+IC0tLQo+ICBEb2N1bWVudGF0
aW9uL25ldHdvcmtpbmcvYWZfeGRwLnJzdCB8IDEwICsrKysrKy0tLS0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDYgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9Eb2N1
bWVudGF0aW9uL25ldHdvcmtpbmcvYWZfeGRwLnJzdCBiL0RvY3VtZW50YXRpb24vbmV0d29ya2lu
Zy9hZl94ZHAucnN0Cj4gaW5kZXggZTE0ZDdkNDBmYzc1Li4xNmZiYzY4Y2FjNTAgMTAwNjQ0Cj4g
LS0tIGEvRG9jdW1lbnRhdGlvbi9uZXR3b3JraW5nL2FmX3hkcC5yc3QKPiArKysgYi9Eb2N1bWVu
dGF0aW9uL25ldHdvcmtpbmcvYWZfeGRwLnJzdAo+IEBAIC0xNTMsMTAgKzE1MywxMiBAQCBhbiBl
eGFtcGxlLCBpZiB0aGUgVU1FTSBpcyA2NGsgYW5kIGVhY2ggY2h1bmsgaXMgNGssIHRoZW4gdGhl
IFVNRU0gaGFzCj4KPiAgRnJhbWVzIHBhc3NlZCB0byB0aGUga2VybmVsIGFyZSB1c2VkIGZvciB0
aGUgaW5ncmVzcyBwYXRoIChSWCByaW5ncykuCj4KPiAtVGhlIHVzZXIgYXBwbGljYXRpb24gcHJv
ZHVjZXMgVU1FTSBhZGRycyB0byB0aGlzIHJpbmcuIE5vdGUgdGhhdCB0aGUKPiAta2VybmVsIHdp
bGwgbWFzayB0aGUgaW5jb21pbmcgYWRkci4gRS5nLiBmb3IgYSBjaHVuayBzaXplIG9mIDJrLCB0
aGUKPiAtbG9nMigyMDQ4KSBMU0Igb2YgdGhlIGFkZHIgd2lsbCBiZSBtYXNrZWQgb2ZmLCBtZWFu
aW5nIHRoYXQgMjA0OCwgMjA1MAo+IC1hbmQgMzAwMCByZWZlcnMgdG8gdGhlIHNhbWUgY2h1bmsu
Cj4gK1RoZSB1c2VyIGFwcGxpY2F0aW9uIHByb2R1Y2VzIFVNRU0gYWRkcnMgdG8gdGhpcyByaW5n
LiBOb3RlIHRoYXQsIGlmCj4gK3J1bm5pbmcgdGhlIGFwcGxpY2F0aW9uIHdpdGggYWxpZ25lZCBj
aHVuayBtb2RlLCB0aGUga2VybmVsIHdpbGwgbWFzawo+ICt0aGUgaW5jb21pbmcgYWRkci4gIEUu
Zy4gZm9yIGEgY2h1bmsgc2l6ZSBvZiAyaywgdGhlIGxvZzIoMjA0OCkgTFNCIG9mCj4gK3RoZSBh
ZGRyIHdpbGwgYmUgbWFza2VkIG9mZiwgbWVhbmluZyB0aGF0IDIwNDgsIDIwNTAgYW5kIDMwMDAg
cmVmZXJzCj4gK3RvIHRoZSBzYW1lIGNodW5rLiBJZiB0aGUgdXNlciBhcHBsaWNhdGlvbiBpcyBy
dW4gaW4gdGhlIHVuYWxpZ25lZAo+ICtjaHVua3MgbW9kZSwgdGhlbiB0aGUgaW5jb21pbmcgYWRk
ciB3aWxsIGJlIGxlZnQgdW50b3VjaGVkLgo+Cj4KPiAgVU1FTSBDb21wbGV0aW9uIFJpbmcKPiAt
LQo+IDIuMTcuMQo+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5v
cmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQt
bGFuCg==
