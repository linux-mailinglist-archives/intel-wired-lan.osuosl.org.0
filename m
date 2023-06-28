Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BB01741968
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jun 2023 22:18:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DE6B88135A;
	Wed, 28 Jun 2023 20:18:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DE6B88135A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687983528;
	bh=7uBNOmPNIHwEV+KYDFKSi7Iv9gpxJzKeudeMZDrwb2M=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=35Xf+PUXPavZU1k7H/cERWHeTMeDLggoOhztmnTp+puaFHTOVwLu5Hap4tRxfP+oD
	 Eyn0gJ64ZEZgaxU4wydS8WZz+r+lW96VJvbPW09FSAeXVxRU/DJ2Fhxy/JrMZZ9J8L
	 mH/zbQkM2fCGDWLthqHgJZDoLrP++Y7u/ytG7e85GG/308ZJhg4GC2pZkA+xPlrQng
	 1IXdU+jIOr4vnROW3lUaZDxn7grmJ0CBg2BmsMxB27ZO3hdELJVXClvN8xvfBY6diP
	 t0fx8jIWPw5MxpPQ+wf4Xf7aB8LR5uMk7WFF0xyItIY3PZfork7kjGIIj1MZ6rkkEw
	 tfpPyIQ6QAb3A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iokwgsrA1RUE; Wed, 28 Jun 2023 20:18:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D91EA81319;
	Wed, 28 Jun 2023 20:18:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D91EA81319
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3F3951BF3E8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jun 2023 20:18:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 167946068F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jun 2023 20:18:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 167946068F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bcMNgO28iwAY for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Jun 2023 20:18:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6613F60594
Received: from mail-ua1-x92b.google.com (mail-ua1-x92b.google.com
 [IPv6:2607:f8b0:4864:20::92b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6613F60594
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jun 2023 20:18:41 +0000 (UTC)
Received: by mail-ua1-x92b.google.com with SMTP id
 a1e0cc1a2514c-791b8500a21so14012241.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jun 2023 13:18:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687983520; x=1690575520;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=pge0xg3Dy7GY8NiUP6kHgHtD5RV0kGRrdoTBXD750rI=;
 b=CWBfv+mTKVSV1BgJKH9x2iuyI92BLdCPWO9noDRJuCkBR/ydPOUB4u+d9lu0IZDxe5
 8WrPm4Xm8frwl8AhJjBiTX4HB2zsmTZFzBIEOAAj5UUQM9ka96r2KltICWHEgrhPHIUw
 3cbs/+tjXAjqUEs2s++jiugnlA39p5BCtkm3htTXuFaGclSAaBasEeFpFlsyfdT2oVQW
 NgvpDBAebESVPkf6GH/hqE/whAQhvetB/BuHsjvZvIVaORzA8rvwc/IBs+KadyA8qM9m
 ehCEzqA8OmC7WxuWtrKmW40jIwqMm6dNtr5azwI6tDwvqirTtfJuxi4F8GNbQTtKQXQa
 DHPQ==
X-Gm-Message-State: ABy/qLZAUrM4hxnDNcjBdA3dddpbbhF50JD+6b28jNg1tFyKny15huNC
 2KdtFq377BReIPat+rMfPtGjxRmqySbmYVNAfjQ=
X-Google-Smtp-Source: APBJJlELLQ0aF3ZB6zFPZmMkPIOWyEVArGwYVTvsJ8IIHALlnCzOcRKU+2UdwRlvJ2VLxhydXqFQcBuyy+/1BeIll3g=
X-Received: by 2002:a05:6102:11ee:b0:444:230e:e1e0 with SMTP id
 e14-20020a05610211ee00b00444230ee1e0mr241936vsg.29.1687983520011; Wed, 28 Jun
 2023 13:18:40 -0700 (PDT)
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
In-Reply-To: <5688456234f5d15ea9ca0f000350c28610ed2639.camel@redhat.com>
From: Ian Kumlien <ian.kumlien@gmail.com>
Date: Wed, 28 Jun 2023 22:18:27 +0200
Message-ID: <CAA85sZvT-vAHQooy8+i0-bTxgv4JjkqMorLL1HjkXK6XDKX41w@mail.gmail.com>
To: Paolo Abeni <pabeni@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1687983520; x=1690575520;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=pge0xg3Dy7GY8NiUP6kHgHtD5RV0kGRrdoTBXD750rI=;
 b=q3gLekqcwhHtKKWm74AP9KdYwthCek5udnq1vVf4deHQ805a5/56gNVv78Yx4eXHMi
 M3973ym+uOHrteChp6z7kSpRDxm3/WVEwR7TfbUoi0LKOWrjnYhUgL4ICdWv39eMJDWo
 E1B1/vVTDyjL6yFUlO0pkZYUQOgKoF62ULE9CrBI4NPwGbpWxU7zIzjHhLW5e0edw5Ib
 hA4kVGphaCTmRS6cordf7ToLCWoBur07+8djZWTYMjc/cYCf9FJBBNYORQArgrkcP2Uz
 7Wd+XxEdzZGrz6GmM3pepZ7L4k4subE/fF/+wMiQ4onuevlEeoA+O5kL2w7KWOqpsi8/
 1qPA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=q3gLekqc
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

T24gV2VkLCBKdW4gMjgsIDIwMjMgYXQgNToxNeKAr1BNIFBhb2xvIEFiZW5pIDxwYWJlbmlAcmVk
aGF0LmNvbT4gd3JvdGU6Cj4KPiBPbiBXZWQsIDIwMjMtMDYtMjggYXQgMTQ6MDQgKzAyMDAsIElh
biBLdW1saWVuIHdyb3RlOgo+ID4gU28gaGF2ZSBzb21lIGhpdHMsIHdvdWxkIGl0IGJlIGJldHRl
ciB3aXRob3V0IHlvdXIgd2FybiBvbj8gLi4uIFRoaW5ncwo+ID4gYXJlIGEgYml0IHNsb3cgYXRt
IC0gbGV0cyBqdXN0IHNheSB0aGF0IGkgbm90aWNlZCB0aGUgc3RhY2t0cmFjZXMKPiA+IGJlY2F1
c2UgYSBzdHJlYW0gc3R1dHRlcmVkID0pCj4KPiBTb3JyeSwgSSBzY3Jld2VkLXVwIGNvbXBsZXRl
bHkgYSBuZXdseSBhZGRlZCBjaGVjay4KClRoYXRzIG9rCgo+IElmIHlvdSBoYXZlIEthc2FuIGVu
YWJsZWQgeW91IGNhbiBzaW1wbHkgYW5kIG1vcmUgc2FmZWx5IHJlbW92ZSBteSAybmQKPiBwYXRj
aC4gS2FzYW4gc2hvdWxkIGJlIGFibGUgdG8gY2F0Y2ggYWxsIHRoZSBvdXQtb2YtYnVmZmVyIHNj
ZW5hcmlvcwo+IHN1Y2ggY2hlY2tzIHdlcmUgaW50ZW5kZWQgdG8gcHJldmVudC4KCkkgdGhvdWdo
dCBJJ2QgcnVuIHdpdGhvdXQgYW55IG9mIHRoZSBwYXRjaGVzLCBwcmVwYXJpbmcgZm9yIHRoYXQg
bm93LApidXQgaSBoYXZlIHRvIHN0b3AgdGVzdGluZyB0b21vcnJvdyBhbmQgd2lsbCBjb250aW51
ZSBvbiBtb25kYXkgaWYgaQpkb24ndCBjYXRjaCBhbnl0aGluZwoKPiBDaGVlcnMsCj4KPiBQYW9s
bwo+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6
Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
