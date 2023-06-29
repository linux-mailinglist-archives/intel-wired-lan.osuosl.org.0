Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5571074244F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jun 2023 12:51:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6E06481427;
	Thu, 29 Jun 2023 10:51:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6E06481427
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688035892;
	bh=pOcT0KO2babir8p01g8h9GcwFOFADGsdxOYqLmWV5os=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EpkC0u908dv64UqPtPOuFbfrxM7ZEBLELOSlaJ7JtNmfl5NIE0vrU25i8+VYJ5Lmf
	 9asyK53ewLhnqwX2HwY+YSLh09SBy6+G4yFgh1WfAgO5IXF6az7TwcYatC9PEVaYo2
	 cb6PlNpVfkTTmk2tSzWz6sdQz/kBgsyIoSVhtv+r/zud+69BgowlI1Fdvg0D6mC58D
	 9js4AiTSQUafiQsdEeK3pExL8uz8CkCVy1/3n3ywRklpbrzWK+txdofkscunJIlp7e
	 1lC5eMujiNqKyyU83TukiRpiHNNF+gCMz2cvBFeDpoEnfrRN0W7EYfdPei/SlxZhI+
	 LrAWP0cyjWaSQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DaIsSjVS8yzA; Thu, 29 Jun 2023 10:51:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 414D781349;
	Thu, 29 Jun 2023 10:51:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 414D781349
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 831F11BF35B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jun 2023 10:51:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 65877401B1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jun 2023 10:51:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 65877401B1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N_urtyNXbn3m for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Jun 2023 10:51:00 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2F84540017
Received: from mail-vs1-xe36.google.com (mail-vs1-xe36.google.com
 [IPv6:2607:f8b0:4864:20::e36])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2F84540017
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jun 2023 10:51:00 +0000 (UTC)
Received: by mail-vs1-xe36.google.com with SMTP id
 ada2fe7eead31-440ac4b44a8so194307137.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jun 2023 03:51:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1688035858; x=1690627858;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=1Bc1SqEnFsskSLnHHMk9CYcfhixRzxz4BpTXdjjVyoI=;
 b=UN7ioeoqt1WA5N1Nf8rTZbQhCFjOzm4MPRTpp3FiczsL/LJz49LsT1ome4DUmV/qV1
 R8HEoiDvQ3bokWHxJOLDhGbQJ67bX/155pNREuHt47qtBoobmhcAm1eYAuzDolIDIX7G
 Lrnrl5K6PU4+9Nf7cCHZZlnCVq/PeqZt4YvMHoN/y7m/qXCklp1/N6EOi0Ee2eb3PavP
 tudsNEPZH2A1HucBVFp0ikNRa4/qq/SCJYlF3a4XIVIMnTks9SuPZbWb8DBkl/pQvnMu
 k0byHwOu0i+3E5M5g28QNYwfr0AnGetC8Ak2Cosk0eTx8VJuCwneSw6qGMkNSfzN32tL
 vtYg==
X-Gm-Message-State: ABy/qLbVZGeP+T3YtK5bHKJBohQjmcwgFXFvgMFY4xpbY/W3KAGKdd+D
 hFQfvhuxklDbNor1efTW6jP7r7OUdYBAARjbZh4=
X-Google-Smtp-Source: APBJJlEI+aDMiN1O2bKvv1N1CDEkTi6TIeFcVBvKGU9Za8J9APmDK/p2ETUabeXwv1eI5gPcw/3jX6FRYrhKDg+O0Ao=
X-Received: by 2002:a05:6102:e55:b0:444:c1f6:5e3a with SMTP id
 p21-20020a0561020e5500b00444c1f65e3amr367807vst.25.1688035857761; Thu, 29 Jun
 2023 03:50:57 -0700 (PDT)
MIME-Version: 1.0
References: <CAA85sZukiFq4A+b9+en_G85eVDNXMQsnGc4o-4NZ9SfWKqaULA@mail.gmail.com>
 <CAA85sZvm1dL3oGO85k4R+TaqBiJsggUTpZmGpH1+dqdC+U_s1w@mail.gmail.com>
 <e7e49ed5-09e2-da48-002d-c7eccc9f9451@intel.com>
 <CAA85sZtyM+X_oHcpOBNSgF=kmB6k32bpB8FCJN5cVE14YCba+A@mail.gmail.com>
 <22aad588-47d6-6441-45b2-0e685ed84c8d@intel.com>
 <CAA85sZti1=ET=Tc3MoqCX0FqthHLf6MSxGNAhJUNiMms1TfoKA@mail.gmail.com>
 <CAA85sZvn04k7=oiTQ=4_C8x7pNEXRWzeEStcaXvi3v63ah7OUQ@mail.gmail.com>
 <ffb554bfa4739381d928406ad24697a4dbbbe4a2.camel@redhat.com>
 <CAA85sZunA=tf0FgLH=MNVYq3Edewb1j58oBAoXE1Tyuy3GJObg@mail.gmail.com>
 <CAA85sZsH1tMwLtL=VDa5=GBdVNWgifvhK+eG-hQg69PeSxBWkg@mail.gmail.com>
 <CAA85sZu=CzJx9QD87-vehOStzO9qHUSWk6DXZg3TzJeqOV5-aw@mail.gmail.com>
 <0a040331995c072c56fce58794848f5e9853c44f.camel@redhat.com>
 <CAA85sZuuwxtAQcMe3LHpFVeF7y-bVoHtO1nukAa2+NyJw3zcyg@mail.gmail.com>
 <CAA85sZurk7-_0XGmoCEM93vu3vbqRgPTH4QVymPR5BeeFw6iFg@mail.gmail.com>
 <486ae2687cd2e2624c0db1ea1f3d6ca36db15411.camel@redhat.com>
 <CAA85sZsJEZK0g0fGfH+toiHm_o4pdN+Wo0Wq9fgsUjHXGxgxQA@mail.gmail.com>
 <CAA85sZs4KkfVojx=vxbDaWhWRpxiHc-RCc2OLD2c+VefRjpTfw@mail.gmail.com>
 <5688456234f5d15ea9ca0f000350c28610ed2639.camel@redhat.com>
 <CAA85sZvT-vAHQooy8+i0-bTxgv4JjkqMorLL1HjkXK6XDKX41w@mail.gmail.com>
In-Reply-To: <CAA85sZvT-vAHQooy8+i0-bTxgv4JjkqMorLL1HjkXK6XDKX41w@mail.gmail.com>
From: Ian Kumlien <ian.kumlien@gmail.com>
Date: Thu, 29 Jun 2023 12:50:45 +0200
Message-ID: <CAA85sZs2biYueZsbDqdrMyYfaqH6hnSMpymgbsk=b3W1B7TNRA@mail.gmail.com>
To: Paolo Abeni <pabeni@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1688035858; x=1690627858;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=1Bc1SqEnFsskSLnHHMk9CYcfhixRzxz4BpTXdjjVyoI=;
 b=H5kYKgzRi3u4fLHhcDn3/9RT2+SXXz1L45No9cl2Up2JuZim36+ixeOpcKNsRrsQpQ
 XVSk4/XTl610ymeWvNNtDYD4icqSqrKzbByxbL1rkL0Xu9li0qynzBnL4czPkzEzh2y4
 rmEnLoJ0IIcW5o64XF9zMkUPb5sMYVr66ni+1R4ryOTyEFsdcByfvUxvbHDiVbrPC57P
 O6OyT4cvRzO3wa/g7tVg2dn4YakPO61TpxpM7+ngc8z4u1dUT0Q8PaLeFUBhcfDi+fzI
 I+G7QuTQro0yQ732af8DTzF3jVE/xkThSFHf2I7bIAZVLk0F9qJt2HrDoqCGN6kvQYCm
 AKxg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=H5kYKgzR
Subject: Re: [Intel-wired-lan] bug with rx-udp-gro-forwarding offloading?
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gV2VkLCBKdW4gMjgsIDIwMjMgYXQgMTA6MTjigK9QTSBJYW4gS3VtbGllbiA8aWFuLmt1bWxp
ZW5AZ21haWwuY29tPiB3cm90ZToKPgo+IE9uIFdlZCwgSnVuIDI4LCAyMDIzIGF0IDU6MTXigK9Q
TSBQYW9sbyBBYmVuaSA8cGFiZW5pQHJlZGhhdC5jb20+IHdyb3RlOgo+ID4KPiA+IE9uIFdlZCwg
MjAyMy0wNi0yOCBhdCAxNDowNCArMDIwMCwgSWFuIEt1bWxpZW4gd3JvdGU6Cj4gPiA+IFNvIGhh
dmUgc29tZSBoaXRzLCB3b3VsZCBpdCBiZSBiZXR0ZXIgd2l0aG91dCB5b3VyIHdhcm4gb24/IC4u
LiBUaGluZ3MKPiA+ID4gYXJlIGEgYml0IHNsb3cgYXRtIC0gbGV0cyBqdXN0IHNheSB0aGF0IGkg
bm90aWNlZCB0aGUgc3RhY2t0cmFjZXMKPiA+ID4gYmVjYXVzZSBhIHN0cmVhbSBzdHV0dGVyZWQg
PSkKPiA+Cj4gPiBTb3JyeSwgSSBzY3Jld2VkLXVwIGNvbXBsZXRlbHkgYSBuZXdseSBhZGRlZCBj
aGVjay4KPgo+IFRoYXRzIG9rCj4KPiA+IElmIHlvdSBoYXZlIEthc2FuIGVuYWJsZWQgeW91IGNh
biBzaW1wbHkgYW5kIG1vcmUgc2FmZWx5IHJlbW92ZSBteSAybmQKPiA+IHBhdGNoLiBLYXNhbiBz
aG91bGQgYmUgYWJsZSB0byBjYXRjaCBhbGwgdGhlIG91dC1vZi1idWZmZXIgc2NlbmFyaW9zCj4g
PiBzdWNoIGNoZWNrcyB3ZXJlIGludGVuZGVkIHRvIHByZXZlbnQuCj4KPiBJIHRob3VnaHQgSSdk
IHJ1biB3aXRob3V0IGFueSBvZiB0aGUgcGF0Y2hlcywgcHJlcGFyaW5nIGZvciB0aGF0IG5vdywK
PiBidXQgaSBoYXZlIHRvIHN0b3AgdGVzdGluZyB0b21vcnJvdyBhbmQgd2lsbCBjb250aW51ZSBv
biBtb25kYXkgaWYgaQo+IGRvbid0IGNhdGNoIGFueXRoaW5nCgpTbywgS0FTQU4gY2F1Z2h0IHRo
ZSBudWxsIHBvaW50ZXIgZGVyZWZzLCBhcyBleHBlY3RlZCwgYnV0IGl0IGNhdWdodAp0d28gb2Yg
dGhlbSB3aGljaCBpIGRpZG4ndCBleHBlY3QuCgpBbnl3YXksIEknbSBvZmYgZm9yIHRoZSB3ZWVr
ZW5kIHNvLCBJIGhvcGUgdG8gYmUgYWJsZSB0byBzZW5kCnNvbWV0aGluZyBiZXR0ZXIgb24gTW9u
ZGF5LCBmeWkKCj4gPiBDaGVlcnMsCj4gPgo+ID4gUGFvbG8KPiA+Cl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxp
c3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
