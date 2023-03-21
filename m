Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79A356C3A4C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Mar 2023 20:21:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D21A74102E;
	Tue, 21 Mar 2023 19:21:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D21A74102E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679426471;
	bh=ZR+itNRgl5MFx96Bufwjue5LRxQUCrfY7bE0tDU0ggU=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HIK4zKdkemltXaU9Jfxk1D+E6rDVX9eRvHB8JcP1bjtNorDLsQ5l0g/p2fIJwdehA
	 vuWMCrpCJyBcPJqe04drjLiuRHo8MX5MMEVmxkv5Bpmlc/JMS2AubLKvMEbwz0QFGL
	 eRagi990jv+R9Li8g1vJTXsFE4yzloNM8PHrigD0PNXS/kM/gQJbz6F7T1PChJNPpV
	 8SD2MME67kqsXaMbn9EMqZhuWoaaKLibGSUBsah1CZcgAYyDe92iMkkgkJgyBEmbku
	 q4//Fgvynm/syC1Wq3ON1rDvIP4ufVGYQqtnhumYF+GziGTJaFS9DKv4rDb+H9bggb
	 y9gr4Sk6buxIw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s7WRcudg-44T; Tue, 21 Mar 2023 19:21:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BA3A840CC9;
	Tue, 21 Mar 2023 19:21:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BA3A840CC9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3CFC01BF3E3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 19:21:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 16B1640CC9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 19:21:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 16B1640CC9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NMmIH2nCfL1Z for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Mar 2023 19:21:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AC80C400F2
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AC80C400F2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 19:21:02 +0000 (UTC)
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-487-jhAKuF5xONOfdEU_cPkk6w-1; Tue, 21 Mar 2023 15:21:00 -0400
X-MC-Unique: jhAKuF5xONOfdEU_cPkk6w-1
Received: by mail-ed1-f70.google.com with SMTP id
 k30-20020a50ce5e000000b00500544ebfb1so13854799edj.7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 12:20:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679426459;
 h=content-transfer-encoding:mime-version:message-id:date:references
 :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=rB+PzEgnKkqk2k+vvj3p24uGcCixq7dziCTji95CjO8=;
 b=n2QK1JnLA7145hXddD7otnQCL5oy1x//n4D6QiAqnq1UtAoYTfQRah09xgNHi5C25O
 iWDBT96edP9KcjvMYtwwj0ju9e+pjdYW45rOUme/jKpzTCjznmuzVqTkbIyD9e+lueB5
 29scfUZejfwR4Ezd/hW67StzmsIbsUygK0ERKwFWCn6jXMscz/Tvdh3OYEg/Pvp3tjBa
 z7Dtsm/aBFmQpq3Uh3DzSKH/J765Y4hIb++6tq6/7C8e498OMr/sBB5JlvNKR/zqGUJj
 VB2E39PzdQIqyDTLs9nVo3AEJ5bLQrdTHk1nWpWp0t+vhm4vI2EZOYcqd2ezLcnRfcAO
 wsBw==
X-Gm-Message-State: AO0yUKXZIk6zJjYTknflt4Op4dXGs4xWJo4WDmE87ikrXYbdL8v+VGwd
 oCbzUGjLXjEKWS7AIKbMh5X7JDuVAohXKtH5diTCy6OKSHa6qTrqM+cCPiIkl1N5wY16NO6+3Mp
 rmpHgHae/FJ1//C7Jhf0dfQK9BqlUJg==
X-Received: by 2002:a17:906:fad5:b0:931:5630:a23 with SMTP id
 lu21-20020a170906fad500b0093156300a23mr3658971ejb.50.1679426458390; 
 Tue, 21 Mar 2023 12:20:58 -0700 (PDT)
X-Google-Smtp-Source: AK7set9PAjldqIVfgFwiw/sf3tp8nVNBWfUz5CMSnpL+CdmdP5wxKPXBBH2ukPUBvKl8JW297p5lsg==
X-Received: by 2002:a17:906:fad5:b0:931:5630:a23 with SMTP id
 lu21-20020a170906fad500b0093156300a23mr3658943ejb.50.1679426457816; 
 Tue, 21 Mar 2023 12:20:57 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
 by smtp.gmail.com with ESMTPSA id
 b17-20020a17090630d100b009300424a2fdsm6180946ejb.144.2023.03.21.12.20.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Mar 2023 12:20:57 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id D24AC9E34C5; Tue, 21 Mar 2023 20:20:56 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Jesper Dangaard Brouer <brouer@redhat.com>, bpf@vger.kernel.org
In-Reply-To: <167940675120.2718408.8176058626864184420.stgit@firesoul>
References: <167940675120.2718408.8176058626864184420.stgit@firesoul>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Tue, 21 Mar 2023 20:20:56 +0100
Message-ID: <87ttyd7vxj.fsf@toke.dk>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1679426461;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=rB+PzEgnKkqk2k+vvj3p24uGcCixq7dziCTji95CjO8=;
 b=JZTM2TcenXgYefXqY/9urk03qu7mr1Tha+D35ixYMkKLjwMz8U3OsSXrcU1EfjSxT2xGjO
 u+ej/kn1cdOz7wbPi2NMShYlJomNuAtBoz8MjYLp0BUTub65mgM2ANXJ8Cz68ZTrcB1QCn
 mOXx9AKtZERQTVjYRA8ve4FV6URUTl8=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=JZTM2Tce
Subject: Re: [Intel-wired-lan] [xdp-hints] [PATCH bpf V2] xdp:
 bpf_xdp_metadata use EOPNOTSUPP for no driver support
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
Cc: xdp-hints@xdp-project.net, martin.lau@kernel.org, daniel@iogearbox.net,
 larysa.zaremba@intel.com, netdev@vger.kernel.org, john.fastabend@gmail.com,
 ast@kernel.org, jesse.brandeburg@intel.com, kuba@kernel.org,
 edumazet@google.com, pabeni@redhat.com, Stanislav Fomichev <sdf@google.com>,
 yoong.siang.song@intel.com, Jesper Dangaard Brouer <brouer@redhat.com>,
 boon.leong.ong@intel.com, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, davem@davemloft.net, hawk@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SmVzcGVyIERhbmdhYXJkIEJyb3VlciA8YnJvdWVyQHJlZGhhdC5jb20+IHdyaXRlczoKCj4gV2hl
biBkcml2ZXIgZG9lc24ndCBpbXBsZW1lbnQgYSBicGZfeGRwX21ldGFkYXRhIGtmdW5jIHRoZSBm
YWxsYmFjawo+IGltcGxlbWVudGF0aW9uIHJldHVybnMgRU9QTk9UU1VQUCwgd2hpY2ggaW5kaWNh
dGUgZGV2aWNlIGRyaXZlciBkb2Vzbid0Cj4gaW1wbGVtZW50IHRoaXMga2Z1bmMuCj4KPiBDdXJy
ZW50bHkgbWFueSBkcml2ZXJzIGFsc28gcmV0dXJuIEVPUE5PVFNVUFAgd2hlbiB0aGUgaGludCBp
c24ndAo+IGF2YWlsYWJsZSwgd2hpY2ggaXMgYW1iaWd1b3VzIGZyb20gYW4gQVBJIHBvaW50IG9m
IHZpZXcuIEluc3RlYWQKPiBjaGFuZ2UgZHJpdmVycyB0byByZXR1cm4gRU5PREFUQSBpbiB0aGVz
ZSBjYXNlcy4KPgo+IFRoZXJlIGNhbiBiZSBuYXR1cmFsIGNhc2VzIHdoeSBhIGRyaXZlciBkb2Vz
bid0IHByb3ZpZGUgYW55IGhhcmR3YXJlCj4gaW5mbyBmb3IgYSBzcGVjaWZpYyBoaW50LCBldmVu
IG9uIGEgZnJhbWUgdG8gZnJhbWUgYmFzaXMgKGUuZy4gUFRQKS4KPiBMZXRzIGtlZXAgdGhlc2Ug
Y2FzZXMgYXMgc2VwYXJhdGUgcmV0dXJuIGNvZGVzLgo+Cj4gV2hlbiBkZXNjcmliaW5nIHRoZSBy
ZXR1cm4gdmFsdWVzLCBhZGp1c3QgdGhlIGZ1bmN0aW9uIGtlcm5lbC1kb2MgbGF5b3V0Cj4gdG8g
Z2V0IHByb3BlciByZW5kZXJpbmcgZm9yIHRoZSByZXR1cm4gdmFsdWVzLgo+Cj4gRml4ZXM6IGFi
NDYxODJkMGRjYiAoIm5ldC9tbHg0X2VuOiBTdXBwb3J0IFJYIFhEUCBtZXRhZGF0YSIpCj4gRml4
ZXM6IGJjOGQ0MDViMWJhOSAoIm5ldC9tbHg1ZTogU3VwcG9ydCBSWCBYRFAgbWV0YWRhdGEiKQo+
IEZpeGVzOiAzMDY1MzFmMDI0OWYgKCJ2ZXRoOiBTdXBwb3J0IFJYIFhEUCBtZXRhZGF0YSIpCj4g
Rml4ZXM6IDNkNzZhNGQzZDRlNSAoImJwZjogWERQIG1ldGFkYXRhIFJYIGtmdW5jcyIpCj4gU2ln
bmVkLW9mZi1ieTogSmVzcGVyIERhbmdhYXJkIEJyb3VlciA8YnJvdWVyQHJlZGhhdC5jb20+CgpB
Y2tlZC1ieTogVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1s
YW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMu
b3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
