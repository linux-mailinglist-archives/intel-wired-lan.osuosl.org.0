Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEB566EE4B9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Apr 2023 17:27:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id ECE6640CB8;
	Tue, 25 Apr 2023 15:27:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ECE6640CB8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682436425;
	bh=avoIczCxQTDXF5Dt+9I2TNtPvZsQ66SiN8O8NvyKmnw=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=i2SFYyP9JQjPzZ8RA7v/X8wzVwDK5eeRZ8SjXi+d/LDLcgYCeG8yXGKNRxQB51DUL
	 ZDNqtoOhM/UZQRMfZHrqy77Nppv79LGs6gk0+XSvRnQTR7AVGlZvqp+f0DQ+mLN8dk
	 jaNB+XP2fiIXl0yt1+/OHk8WNaTUXYKwJIY9L29wxoqZQqTKnjH+QuIPJBoHkGkQfB
	 Xp6lVIblDdPv5A8XquzErkFxXuMSEzYypGLLIOIV0igVqbPaOL+P6r2jLGYVLDExxu
	 c7yL8NaPlPG15lNRCGBQUI8c3d9k9UO0j+2bdLfpPOb0tou1aGdcbWbCsb59vEBP8k
	 fQFFMneuZr9OA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VDbmTiPSu6JV; Tue, 25 Apr 2023 15:27:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0CA7F40B64;
	Tue, 25 Apr 2023 15:27:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0CA7F40B64
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 180661BF834
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Apr 2023 15:26:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EF0F041796
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Apr 2023 15:26:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EF0F041796
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rF7wgjXHEWSl for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Apr 2023 15:26:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2430B4154D
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2430B4154D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Apr 2023 15:26:57 +0000 (UTC)
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-433-fcVPqtuHNjK0g_2uW5828g-1; Tue, 25 Apr 2023 11:26:55 -0400
X-MC-Unique: fcVPqtuHNjK0g_2uW5828g-1
Received: by mail-ed1-f70.google.com with SMTP id
 4fb4d7f45d1cf-506a4c0af47so5530389a12.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Apr 2023 08:26:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1682436414; x=1685028414;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=5fNJCEabiLtGfgYw9tXVC70Fuu6erYNndNresacEPBw=;
 b=YN3Hvjb9GP+7H/8EAQ0ytd3COGEda87haj0I8WKwuqZ/wCtDX3Fp1mjyo2brh4mnRO
 zSXGmOizHuBEC/8oU6DIeBC2alY4XrV7Mhc1Ltp5yQbmdf/Aujieis7IP6vRz8Ws//7k
 CiQmkNIV4SqOpcPV+8iH7HP+lVxLZNlz3uCSay9YMg+i3sVPQLvQHu+oAJe60Gon7Wv4
 zqlFNMNNAGIBq+gmPwb3i2Y9VcsSxg45ZzMjcn35zXB0XLe/eVDMBJX3T5v7UAc3Gr/5
 8Fw9J6X1GoWtUpBBw+QJg+F8xNSSkKjyD4n2bnk1que4/hxttI2+BqvZBIkuNv0FNtc3
 E4Vw==
X-Gm-Message-State: AAQBX9eLAMSq2CKaSO6NQC9qoWYlzp76/bpA7sLq4ajJ8WV5JaJ0AsGO
 uaZe1abbKLsrElqpmu627p9KNXahSEQ7yxAjZmHP/pvqIbQzf6bZuIkSAUwvZUjVSh/LJv7tZUd
 KKNlCjHhFQ3tMC5+ZT/AlWVFPZ0VRb3FhyRple6V4GLvLcg==
X-Received: by 2002:a05:6402:10cb:b0:506:9f0f:dcaf with SMTP id
 p11-20020a05640210cb00b005069f0fdcafmr13935922edu.37.1682436414209; 
 Tue, 25 Apr 2023 08:26:54 -0700 (PDT)
X-Google-Smtp-Source: AKy350YvKH6fTZE4WMgQyG5NYzx5UK0EANnycRA8tgUlK0TN/48kCUPIhh0Lfy4giK4QSpupOa1Cnb4D8ScVXomi8V0=
X-Received: by 2002:a05:6402:10cb:b0:506:9f0f:dcaf with SMTP id
 p11-20020a05640210cb00b005069f0fdcafmr13935902edu.37.1682436413929; Tue, 25
 Apr 2023 08:26:53 -0700 (PDT)
MIME-Version: 1.0
References: <20230417093412.12161-1-wojciech.drewek@intel.com>
 <20230417093412.12161-3-wojciech.drewek@intel.com>
In-Reply-To: <20230417093412.12161-3-wojciech.drewek@intel.com>
From: Michal Schmidt <mschmidt@redhat.com>
Date: Tue, 25 Apr 2023 17:26:42 +0200
Message-ID: <CADEbmW1Tey8dHN4M-xBsgHBOsQZX_aT9k1=FcL=skT_10GYiWg@mail.gmail.com>
To: Wojciech Drewek <wojciech.drewek@intel.com>,
 Dave Ertman <david.m.ertman@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1682436417;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5fNJCEabiLtGfgYw9tXVC70Fuu6erYNndNresacEPBw=;
 b=PFs1UBQjSjfRWOSQdB6FV5UXPRAShdF/j/iIFAlCW10UXmA5xFsfRYAbetGbIa9P2udd3z
 mRiQUebixfpvWApPPTnFqeVUXSJSlGnBDv0L5ZQcqxuMSzyT5mN6IbQB4t7BsqzvvQx96b
 G3PVIpY6mJKcB4AFI03EiR87ISdkHmg=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=PFs1UBQj
Subject: Re: [Intel-wired-lan] [PATCH net-next 02/12] ice: Remove exclusion
 code for RDMA+SRIOV
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
Cc: netdev@vger.kernel.org,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gTW9uLCBBcHIgMTcsIDIwMjMgYXQgMTE6MzXigK9BTSBXb2pjaWVjaCBEcmV3ZWsKPHdvamNp
ZWNoLmRyZXdla0BpbnRlbC5jb20+IHdyb3RlOgo+Cj4gRnJvbTogRGF2ZSBFcnRtYW4gPGRhdmlk
Lm0uZXJ0bWFuQGludGVsLmNvbT4KPgo+IFRoZXJlIHdhcyBhIGNoYW5nZSBwcmV2aW91c2x5IHRv
IHN0b3AgU1ItSU9WIGFuZCBMQUcgZnJvbSBleGlzdGluZyBvbiB0aGUKPiBzYW1lIGludGVyZmFj
ZS4gIFsuLi5dCgpXaHkgZG9lcyB0aGUgc3ViamVjdCBtZW50aW9uIFJETUE/IFRoZSBwYXRjaCBk
b2VzIG5vdCBjaGFuZ2UgdGhlIGNhbGxzCnRvIGljZV97c2V0LGNsZWFyfV9yZG1hX2NhcC4KRGlk
IHlvdSBtZWFuIHRvIGNhbGwgaXQgImljZTogUmVtb3ZlIGV4Y2x1c2lvbiBjb2RlIGZvciBMQUcr
U1JJT1YiID8KCk1pY2hhbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1
b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13
aXJlZC1sYW4K
