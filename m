Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C1B7245D7
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Jun 2023 16:25:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 68E0C418DB;
	Tue,  6 Jun 2023 14:25:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 68E0C418DB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686061534;
	bh=l4Up3z7TlpjimMASD+yrslzROYMieIeOyvLHoKnxVKQ=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IN6uUGb1lg0ti3xyYGN5vnEnmTCdDhXDuDHmAZT1R7B53mEq4amskoPvFtkqErFd3
	 MHiEuYWzIYDqtEczGYet4OgE1WSwca/lmutktduxgGhSn6F6EMU5/fLVwglnpeO3/5
	 CG2N/Pke0uz9c/Z88It7qrzNwpmNoX4O7N++e4sae0ENy+0nAm7YtiPP0nlVwI4mA3
	 WRyBxpKTMQmefYZxWHExJrfLO/Ez0MvK9biMVKn+6kz55BTTNxZwmMncdSl8z2/8SA
	 sLjIRioEx/X2mpi4YN2XSgZfJ5ZH6aELzHQDDZVD//xzqz+YpXtRdb64g4Peg2wXvX
	 EBIE1FKneiqvw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n6gEL7KsqSIo; Tue,  6 Jun 2023 14:25:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C93C7418D3;
	Tue,  6 Jun 2023 14:25:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C93C7418D3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 26BD81BF57C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 14:25:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F2ABC81F34
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 14:25:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F2ABC81F34
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ydmMA_hQ7M5l for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Jun 2023 14:25:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 21C4381F2F
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com
 [IPv6:2607:f8b0:4864:20::52f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 21C4381F2F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 14:25:25 +0000 (UTC)
Received: by mail-pg1-x52f.google.com with SMTP id
 41be03b00d2f7-53fbf2c42bfso5601884a12.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 06 Jun 2023 07:25:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1686061524; x=1688653524;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=/hmEz2MbCDzEXdAiTp6Aa2zyFmyqIvzUtehqc+a8JQM=;
 b=Gi7z78AVidG8aIGaR8+FR0Ht0Oty9LAfb04Sls5hgGa0llWbj1iO9Ekgq6R6qDu34j
 0X5Vyh93N7u7P8ObYUdRuTS1Rg//88VERf2MthjQOEYfkr2Q8JJQgIU0O+IUSutq87Zi
 Pls7FBvBIxOaiWBG2S/KQj/Yt6//yqwiMOnS0EJ4k2xHAJRKe82c9/xQehrDWQA2vLRN
 RjZMHVxy8tH0qT/vW6F+Qd08jd0hGCV//bF0vWwyIemm7oNsi8kVU9f6Q1aT4qGRKdR6
 BIrkpqAuIxSpP/Gqc1WW9u9DoR/nJ6PixokwmsduDWxUrU7J98+JaZY2lBLzl8D5J5hF
 gsvA==
X-Gm-Message-State: AC+VfDyqI3CtQegbq5+2iqWEOxwM0+vPez5RZwnbVsluouBc7+jR3hfC
 oecxsC3dZjoiD2WVo4TYSycB4nDZo/kzwtEG13k=
X-Google-Smtp-Source: ACHHUZ7d+2TaEqKX/qlkdetQq2bn1illhFx2x6aBzSwuTkXTmCZiL6B4FG2rL7icmDKgrCjNKyk9TlvUUPAvcq5qcdE=
X-Received: by 2002:a17:902:e5cd:b0:1b2:28ca:d16 with SMTP id
 u13-20020a170902e5cd00b001b228ca0d16mr2457853plf.44.1686061524285; Tue, 06
 Jun 2023 07:25:24 -0700 (PDT)
MIME-Version: 1.0
References: <20230525125746.553874-1-aleksander.lobakin@intel.com>
 <20230525125746.553874-4-aleksander.lobakin@intel.com>
 <8828262f1c238ab28be9ec87a7701acd791af926.camel@gmail.com>
 <cb7d3479-63a5-31b4-355d-b12a7e1b2878@intel.com>
 <CAKgT0Ud204CiJeB-5zcTKdrv7ODrfP09t73CqRhps7g3qhWU5w@mail.gmail.com>
 <d375fef9-43c4-9f2a-41c9-5247fcb3aa1e@intel.com>
 <CAKgT0Uc4UQ=PpVtjUAP=hjTDrWWkc79PeSwp39T6MSpo1ZyOag@mail.gmail.com>
 <cd88ac7e-fe82-fdc0-3410-0decf57d3c43@intel.com>
 <CAKgT0UeEz2Gqb62sn0pP3_yBMc-LpR0Twmv5_HTREvHBLpCsNw@mail.gmail.com>
 <5aac6822-6fe5-e182-935e-7aa86f1e820d@intel.com>
In-Reply-To: <5aac6822-6fe5-e182-935e-7aa86f1e820d@intel.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Tue, 6 Jun 2023 07:24:47 -0700
Message-ID: <CAKgT0UegFu3LDhwx+ec8q1=c3OFzrKp=mhopzRFr84s4m9Ciug@mail.gmail.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1686061524; x=1688653524;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=/hmEz2MbCDzEXdAiTp6Aa2zyFmyqIvzUtehqc+a8JQM=;
 b=AgA8yJ2qSN0nKfzypklbbkOnFwubsWwLlNS1zuBDIfsGWUgRPxp4sXVz1ygkD7cM6T
 GcGX5fRp3+VQuDz3BG2Z8y3FcONjfMHDwCuxcO+jSaiOomqg5evWMmSjJcP/pA/N6yWY
 +iF9llU8Pu4KC8a/xjGJ7TsC0+wzeHpbwFjgHz2Rd38ed28bikd2JPt3KQE8LmWPb/7R
 xEY6cFSWXiYrvds/eg/8asRjB1q2dSwh4eupWCLOphNRJHKS5rJknVahnHLHZNQnQctd
 cxOzs0SkFVq7yEbHlsVMXSaYF+rU1vxQGuD04MkqqH1ZNTrERJtcPlLTonlhI/AKNzS/
 c0sQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=AgA8yJ2q
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 03/12] iavf: optimize Rx
 buffer allocation a bunch
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, Eric Dumazet <edumazet@google.com>,
 Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>,
 Magnus Karlsson <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlLCBKdW4gNiwgMjAyMyBhdCA1OjQ54oCvQU0gQWxleGFuZGVyIExvYmFraW4KPGFsZWtz
YW5kZXIubG9iYWtpbkBpbnRlbC5jb20+IHdyb3RlOgo+Cj4gRnJvbTogQWxleGFuZGVyIER1eWNr
IDxhbGV4YW5kZXIuZHV5Y2tAZ21haWwuY29tPgo+IERhdGU6IEZyaSwgMiBKdW4gMjAyMyAxMDo1
MDowMiAtMDcwMAo+Cj4gU29ycnkgZm9yIHRoZSBzaWxlbmNlLCBoYWQgc29ydGEgbG9uZyB3ZWVr
ZW5kIDpwCj4KPiA+IE9uIEZyaSwgSnVuIDIsIDIwMjMgYXQgOToxNuKAr0FNIEFsZXhhbmRlciBM
b2Jha2luCj4gPiA8YWxla3NhbmRlci5sb2Jha2luQGludGVsLmNvbT4gd3JvdGU6Cj4KClsuLi5d
Cgo+ID4gVGhlIG90aGVyIHRoaW5nIGlzIHlvdSBtYXkgd2FudCB0byBkb3VibGUgY2hlY2sgQ1BV
KHMpIHlvdSBhcmUKPiA+IGV4cGVjdGVkIHRvIHN1cHBvcnQgYXMgbGFzdCBJIGtuZXcgc3dpdGNo
IHN0YXRlbWVudHMgd2VyZSBzdGlsbAo+ID4gZXhwZW5zaXZlIGR1ZSB0byBhbGwgdGhlIG9sZCBz
cGVjdHJlL21lbHRkb3duIHdvcmthcm91bmRzLgo+IFdhaXQsIGFyZSBzd2l0Y2gtY2FzZXMgYWxz
byBhZmZlY3RlZD8gSSB3YXNuJ3QgYXdhcmUgb2YgdGhhdC4gRm9yIHN1cmUgSQo+IGRpZG4ndCBl
dmVuIGNvbnNpZGVyIHVzaW5nIG9wcy9pbmRpcmVjdCBjYWxscywgYnV0IHN3aXRjaC1jYXNlcy4u
LiBJIHNhdwo+IGxvdHMgbyd0aW1lcyBwZW9wbGUgcmVwbGFjaW5nIGluZGlyZWN0aW9ucyB3aXRo
IHN3aXRjaC1jYXNlcywgd2hhdCdzIHRoZQo+IHBvaW50IG90aGVyd2lzZSA6RAo+Cj4gVGhhbmtz
LAo+IE9sZWsKCkkgdGhpbmsgaXQgYWxsIGRlcGVuZHMgb24gaG93IHRoZSBjb21waWxlciBpbXBs
ZW1lbnRzIHRoZW0uIEkga25vdwpzd2l0Y2ggY2FzZXMgdXNlZCB0byBiZSBkb25lIGFzIGluZGly
ZWN0aW9ucyBpbiBzb21lIGNhc2VzLiBJdCBpcwpwb3NzaWJsZSB0aGV5IGRpZCBhd2F5IHdpdGgg
dGhhdCBpbiB0aGUgY29tcGlsZXJzIHNvbWUgdGltZSBhZ28gb3IKY2FtZSB1cCB3aXRoIGEgZml4
IHRvIHdvcmsgYXJvdW5kIHRoZW0uIEkganVzdCByZW1lbWJlciBiYWNrIHdoZW4gdGhhdApjYW1l
IHVwIHBlb3BsZSB3ZXJlIGdvaW5nIHRocm91Z2ggYW5kIHJlcGxhY2luZyBzd2l0Y2ggY2FzZXMg
d2l0aAppZi9lbHNlIGJsb2NrcyBpbiB0aGUgY2FzZSBvZiBwZXJmb3JtYW5jZSBzZW5zaXRpdmUg
d29ya2xvYWRzLiBPZGRzCmFyZSB0aGVyZSBoYXZlIGJlZW4gd29ya2Fyb3VuZHMgYWRkZWQgdG8g
YWRkcmVzcyB0aGF0LCBidXQgaXQgaXMganVzdApzb21ldGhpbmcgdG8gYmUgYXdhcmUgb2YuCgpU
aGFua3MsCgotIEFsZXgKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3Ns
Lm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJl
ZC1sYW4K
