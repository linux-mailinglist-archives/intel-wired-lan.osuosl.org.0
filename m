Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E392CF53F
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Oct 2019 10:47:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C464387632;
	Tue,  8 Oct 2019 08:47:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T+Ek-P6dtkS2; Tue,  8 Oct 2019 08:47:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 87D4987691;
	Tue,  8 Oct 2019 08:47:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A54D31BF255
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2019 08:47:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A0F4C87DFE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2019 08:47:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cmmPr1xxGxsi for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Oct 2019 08:47:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
 [209.85.222.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0851A87C30
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2019 08:47:22 +0000 (UTC)
Received: by mail-qk1-f196.google.com with SMTP id x134so15907428qkb.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 08 Oct 2019 01:47:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=fEbtEhAEfJotxoHiDxf90K1SxeKU7aOyeAokgjoiW14=;
 b=s5BLKOYmB1f/bm8kTdDPkE/gZyquvlZ02+0aoYl3q+OPcs2IuhVXb0mSdTIVDq6W12
 olCHqvjWvAAYVhtVJfbIoP0r8SCz2qfI+68WaYPOv9fLRXxNLisolb9k4Ji7oHJUYhG4
 R5hszW8IY225CeRwCzlTiY6CWBo0Hkq65k4O/SCJmN+8m3wDIvcDiWJKgg201eV3K1qG
 5fCsEKRlKF5Rj2aXt/uTZaG2ESkZOKiw26UP1ix7TRw+raJOpkPnNmdfHFb9RqAXOTUc
 XaucCVIgwOIagHVpk3b7y69frjmh+GqVXSo1Cc8fcVikQ+WiPR/1FNlfGYXn9uQ/mmWX
 mC6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=fEbtEhAEfJotxoHiDxf90K1SxeKU7aOyeAokgjoiW14=;
 b=d7A5+Oyk2BWUwVB7rgh1js4yRnchqbRfe2dWkyBGiIeLTfHRCuJ65UM47rj6uA1BJQ
 Ws2tbMsE7LnYIAPUeKOgn19ggj9ebsvJoSxEGAiKT8bbkUnofl1hTcWjE6y+JRqyEI5K
 wRmd+0E91Tr6RDPStzgr+SYv9GEvCABAZdYLt7d236S4r23Bzna6SDq7ZMVOTnv04Igg
 xnR58jCTeqPGjPcPezHA5JxAk7yV3urqO4LC8/aMxXsNqxbLCvnNrNEUJtdfa193qP4K
 PQg+GPXf2/tX5cJgilcOZiWY3mePPit35USKgsGsTa/mzwShkeAcRgHvoL6KSYFkHTTE
 DsJg==
X-Gm-Message-State: APjAAAWc7ds3CH58fsB9BepjronKwKsxmgZrmZsU8bGxDXJrCaMtoZle
 Ty/c8AriCusvdT52GM3vmULCVCovRXbMSTvx4uM=
X-Google-Smtp-Source: APXvYqwawXCJKLXg09yH8++kGFLLLYB7xi/bDdB/hwSiA6kDwvZgIRzAoTS3Z0oVwpLhjbhbGRJ0bcDP213gNnX+prU=
X-Received: by 2002:a37:4b02:: with SMTP id y2mr27772546qka.493.1570524440934; 
 Tue, 08 Oct 2019 01:47:20 -0700 (PDT)
MIME-Version: 1.0
References: <1570515415-45593-1-git-send-email-sridhar.samudrala@intel.com>
 <1570515415-45593-3-git-send-email-sridhar.samudrala@intel.com>
 <875zkzn2pj.fsf@toke.dk>
In-Reply-To: <875zkzn2pj.fsf@toke.dk>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Tue, 8 Oct 2019 10:47:09 +0200
Message-ID: <CAJ+HfNhcvRP34L3px6ipAsCiZdvLXG02brecwB=T-sXMaT5yRw@mail.gmail.com>
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 2/4] xsk: allow AF_XDP
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
Cc: maciej.fijalkowski@intel.com,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>, tom.herbert@intel.com,
 Netdev <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlLCA4IE9jdCAyMDE5IGF0IDA4OjU5LCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gPHRv
a2VAcmVkaGF0LmNvbT4gd3JvdGU6Cj4KPiBTcmlkaGFyIFNhbXVkcmFsYSA8c3JpZGhhci5zYW11
ZHJhbGFAaW50ZWwuY29tPiB3cml0ZXM6Cj4KPiA+ICBpbnQgeGRwX2RvX3JlZGlyZWN0KHN0cnVj
dCBuZXRfZGV2aWNlICpkZXYsIHN0cnVjdCB4ZHBfYnVmZiAqeGRwLAo+ID4gICAgICAgICAgICAg
ICAgICAgc3RydWN0IGJwZl9wcm9nICp4ZHBfcHJvZykKPiA+ICB7Cj4gPiAgICAgICBzdHJ1Y3Qg
YnBmX3JlZGlyZWN0X2luZm8gKnJpID0gdGhpc19jcHVfcHRyKCZicGZfcmVkaXJlY3RfaW5mbyk7
Cj4gPiAgICAgICBzdHJ1Y3QgYnBmX21hcCAqbWFwID0gUkVBRF9PTkNFKHJpLT5tYXApOwo+ID4g
KyAgICAgc3RydWN0IHhkcF9zb2NrICp4c2s7Cj4gPiArCj4gPiArICAgICB4c2sgPSB4ZHBfZ2V0
X2RpcmVjdF94c2socmkpOwo+ID4gKyAgICAgaWYgKHhzaykKPiA+ICsgICAgICAgICAgICAgcmV0
dXJuIHhza19yY3YoeHNrLCB4ZHApOwo+Cj4gVGhpcyBpcyBhIG5ldyBicmFuY2ggYW5kIGEgcmVh
ZCBiYXJyaWVyIGluIHRoZSBYRFBfUkVESVJFQ1QgZmFzdCBwYXRoLgo+IFdoYXQncyB0aGUgcGVy
Zm9ybWFuY2UgaW1wYWN0IG9mIHRoYXQgZm9yIG5vbi1YU0sgcmVkaXJlY3Q/Cj4KClRoZSBkZXBl
bmRlbnQtcmVhZC1iYXJyaWVyIGluIFJFQURfT05DRT8gQW5vdGhlciBicmFuY2ggLS0gbGVhdmUg
dGhhdAp0byB0aGUgYnJhbmNoLXByZWRpY3RvciBhbHJlYWR5ISA7LSkgTm8sIHlvdSdyZSByaWdo
dCwgcGVyZm9ybWFuY2UKaW1wYWN0IGhlcmUgaXMgaW50ZXJlc3RpbmcuIEkgZ3Vlc3MgdGhlIHNh
bWUgc3RhdGljX2JyYW5jaCBjb3VsZCBiZQp1c2VkIGhlcmUgYXMgd2VsbC4uLgoKCj4gLVRva2UK
PgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13
aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8v
bGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
