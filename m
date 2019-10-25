Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 94892E44BE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Oct 2019 09:43:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3EEE98795A;
	Fri, 25 Oct 2019 07:43:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rWISty0UU6U0; Fri, 25 Oct 2019 07:43:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C0961878C0;
	Fri, 25 Oct 2019 07:43:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 988B61BF2F3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2019 07:43:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 539B6878C0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2019 07:43:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CTSAfNANs-iz for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Oct 2019 07:43:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
 [209.85.222.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 724DB87834
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2019 07:43:00 +0000 (UTC)
Received: by mail-qk1-f196.google.com with SMTP id 71so916265qkl.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2019 00:43:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=eCMciiCDbX8jb8plKVhdLrZ15B5tJHlk2Aev+kt9I0Y=;
 b=OIySZeld5ZznaaMF7UAE9qMFtXh1IB2VRU3p1eJPKquocjhrD2MrZwKu+w4EUj4Ewb
 /PL29wNJp5woqhAUq8cZJI71qSvNwE0zrmdgh7wRhnaVF0v8YNox2icBdhgux7J04Xop
 7QW7Dx4e51m46raceMTlDq0B5EE0gmUyNLjjafvUFVyKfvkFbbFA2xrUBiAuumet8wkV
 nsGOqYUJYdazJ7v4phthGuM3/q//fRcybEWgwuUD+h2qxyBN5n6tqT/a/NX5/hqWHLOc
 DfOYUmKr6rwwwuGflGgx4B9fsUxKlK5oUys2BLcDdwYfxfkIHm5cju/t6M64SmFjsylv
 X/YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=eCMciiCDbX8jb8plKVhdLrZ15B5tJHlk2Aev+kt9I0Y=;
 b=NBCwd8wxlkRA10Tml5cIWSGc5fd0KpFjR3dYrbDQjlDGAcGZaQd4Nxw4AnJ5n3ccMN
 1mqTB0i2CD/1IFJfy274+I2QA/aPBdqpCmonoGQC0w6DIodr2g48LL1+mluFbcTfH/ZO
 kK9DOVTB6ToA61HkehhHc9pSEmbf3SH6iJnzG0UT3mB9K+agBYylnBQyJOVCzAdJan37
 9MNS4x4zv0V04GZg25m4s99ErqPCx/iawYaTQdQwn9euE8qrZb3g4h74M1giD3S2yNe8
 3mTbcjBQIYrosMh//t2DdKvao4WIOgMvPY+XiPuoGxiw9CQp8hUwF7MW2BiBoPq0Efdr
 JuvQ==
X-Gm-Message-State: APjAAAUP74YHWHs3t518zMoDdKogxuKi8bXyz3KmX/vVPhUWASljEr2Z
 i6/9iJUOI4kw7ayxJUPC5KWmUsj2ObFOX4wfpJw=
X-Google-Smtp-Source: APXvYqz2mkOWlXqUiqJIVqOJ424SlOwwLymNgGGU85rHsFJC3Ef4nmL1rnIzPWnQWIws50w22LyxDiZyyVapjvYpdH4=
X-Received: by 2002:a05:620a:1364:: with SMTP id
 d4mr1692290qkl.218.1571989379371; 
 Fri, 25 Oct 2019 00:42:59 -0700 (PDT)
MIME-Version: 1.0
References: <CAADnVQKwnMChzeGaC66A99cHn5szB4hPZaGXq8JAhd8sjrdGeA@mail.gmail.com>
 <68d6e154-8646-7904-f081-10ec32115496@intel.com>
In-Reply-To: <68d6e154-8646-7904-f081-10ec32115496@intel.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Fri, 25 Oct 2019 09:42:48 +0200
Message-ID: <CAJ+HfNigHWVk2b+UJPhdCWCTcW=Eh=yfRNHg4=Fr1mv98Pq=cA@mail.gmail.com>
To: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
Subject: Re: [Intel-wired-lan] FW: [PATCH bpf-next 2/4] xsk: allow AF_XDP
 sockets to receive packets directly from a queue
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
Cc: Jakub Kicinski <jakub.kicinski@netronome.com>,
 Netdev <netdev@vger.kernel.org>,
 =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>, "Herbert,
 Tom" <tom.herbert@intel.com>, "Fijalkowski,
 Maciej" <maciej.fijalkowski@intel.com>, bpf <bpf@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 Alexei Starovoitov <alexei.starovoitov@gmail.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVGh1LCAyNCBPY3QgMjAxOSBhdCAyMDoxMiwgU2FtdWRyYWxhLCBTcmlkaGFyCjxzcmlkaGFy
LnNhbXVkcmFsYUBpbnRlbC5jb20+IHdyb3RlOgo+ClsuLi5dCj4KPiBXaXRoIG1pdGlnYXRpb25z
IE9OCj4gLS0tLS0tLS0tLS0tLS0tLS0tLQo+IFNhbXBsZXM6IDZLIG9mIGV2ZW50ICdjeWNsZXMn
LCA0MDAwIEh6LCBFdmVudCBjb3VudCAoYXBwcm94Lik6IDU2NDY1MTI3MjYKPiBicGZfcHJvZ18z
YzgyNTFjN2UwZmVmOGRiICBicGZfcHJvZ18zYzgyNTFjN2UwZmVmOGRiIFtQZXJjZW50OiBsb2Nh
bCBwZXJpb2RdCj4gICA0NS4wNSAgICAgIHB1c2ggICAlcmJwCj4gICAgMC4wMiAgICAgIG1vdiAg
ICAlcnNwLCVyYnAKPiAgICAwLjAzICAgICAgc3ViICAgICQweDgsJXJzcAo+ICAgMjIuMDkgICAg
ICBwdXNoICAgJXJieAoKWy4uLl0KCj4KPiBEbyB5b3Ugc2VlIGFueSBpc3N1ZXMgd2l0aCB0aGlz
IGRhdGE/IFdpdGggbWl0aWdhdGlvbnMgT04gcHVzaCAlcmJwIGFuZCBwdXNoICVyYnggb3Zlcmhl
YWQgc2VlbXMgdG8KPiBiZSBwcmV0dHkgaGlnaC4KClRoYXQncyBzYW1wbGUgc2tpZCBmcm9tIHRo
ZSByZXRwb2xpbmUgdGh1bmsgd2hlbiBlbnRyaW5nIHRoZSBYRFAKcHJvZ3JhbS4gUHJldHR5IGV4
cGVuc2l2ZSBwdXNoIG90aGVyd2lzZSEgOi0pCgpBbm90aGVyIHRob3VnaHQ7IERpc2NsYWltZXI6
IEknbSBubyBzcGVjdHJldjIgZXhwZXJ0LCBhbmQgcHJvYmFibHkgbm90CmdldHRpbmcgdGhlIG1p
dGlnYXRpb25zIHdlbGwgZW5vdWdoLiBTbyB0aGlzIGlzIG1lIHRyeWluZyB0byBzd2ltIGF0CnRo
ZSBkZWVwIGVuZCEgV291bGQgaXQgYmUgcG9zc2libGUgdG8gYXZvaWQgdGhlIHJldHBvbGluZSB3
aGVuCmVudGVyaW5nIHRoZSBYRFAgcHJvZ3JhbS4gQXQgbGVhc3QgZm9yIHNvbWUgWERQIHByb2dy
YW0gdGhhdCBjYW4gYmUKcHJvdmVkICJzYWZlIj8gSWYgc28sIFBldGVyWidzIHVwY29taW5nIHN0
YXRpY19jYWxsIGNvdWxkIGJlIHVzZWQgZnJvbQp0aGUgZHJpdmVyIHNpZGUuCgoKQmrDtnJuCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVk
LWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0
cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
