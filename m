Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA95A6D45EE
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Apr 2023 15:37:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4484440922;
	Mon,  3 Apr 2023 13:37:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4484440922
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680529037;
	bh=8UdHR0tIbLrZN8CPIFADJQ8beX70ZZhqtnnjA52izfw=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mgo7pUyCronC+g6EHm4nF/9RUMqZ6Q6Rvbjxb2C/kSRfHVkmZuQ542zxp7GwND6wq
	 oaFUDxUJvSFw+Zad+dTsasAxT+td7tcqyi5TcmxJqUrGj7/KzM7WZfNjT0AixJJp3s
	 Y8RALhDovwUd80oZbkTXqPxD9xBMG1pX9e1paoN2PnPFDpiuIVpTQ3/ZXhBGUcAP4/
	 tZG1BPN+bEIjz9TzvEdlPmrUBnEoaM1aZVT21UuiJ1IMLIhM/Wg1wAMuWB0z8kauj6
	 FfklIXuK/Dp8FwtwqNWzdVTY6KUjSt1FvH7PpRArw3oQ55bsUlMPXkv7aEKBN5YTvO
	 GttE9rPGm6fyg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rshaqTMB5mOS; Mon,  3 Apr 2023 13:37:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 501EA40604;
	Mon,  3 Apr 2023 13:37:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 501EA40604
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 873C31BF97E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Apr 2023 13:37:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6D1C081E69
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Apr 2023 13:37:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6D1C081E69
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7UlXcS6lsyp5 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Apr 2023 13:37:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1DCB281E82
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1DCB281E82
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Apr 2023 13:37:09 +0000 (UTC)
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-206-F3SYn49uOcSKR9qRW-lcFw-1; Mon, 03 Apr 2023 09:37:05 -0400
X-MC-Unique: F3SYn49uOcSKR9qRW-lcFw-1
Received: by mail-ed1-f69.google.com with SMTP id
 f15-20020a50a6cf000000b0050050d2326aso40902909edc.18
 for <intel-wired-lan@lists.osuosl.org>; Mon, 03 Apr 2023 06:37:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680529024;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=bqVGEYwOHd6PhdUY1FDcopFk+fgKL+rug15aKzHniyw=;
 b=vu9Lnk+hs4Q0GA1YJB6sZP4wn3nggnNkXDo0uxoXvzTlWb016gns+Q6kSGe68CIpDq
 yFtI4gEr2DrY27EW+0LcqrBmKDNoIVvWrBas7uYwCOrZgW+14NP2aihh2fzbNjUqgUfk
 CGtUjNtXvY2ER/1QStdNw68Qn0f6TVNcK1J700E6I74XS3vHELQ+b5FHSo9Kr1zE4I+z
 MRderneUCu736u/5U1iHBVVUQtm6um3WEkW0eXuRvwGCEr/qwnfKQlCqPEJyBXrabNFR
 7Smw4jrOmUS5TPK5rgEcIaBriTHFJl13JapJmRMtE84E+tH0+NJ2vvYPtr2D699KMecz
 N0eg==
X-Gm-Message-State: AAQBX9fR6WXlC69ACzlP8K6WtJtt97cFfcmp2gWeSdS6iqZipb8AqmLe
 NSYdo3YgNkxsrNzJvYQAyJPuVpyIjMbnnShzqYWI3OWGRGCHIy+eFBS0X44xXxXK7FJsSMw0H1u
 YO9rJYwWqfk+/gsowoszkws3INcqBZGuyMtv0wZNHBeDZ8g==
X-Received: by 2002:a17:906:ee8b:b0:93e:739f:b0b8 with SMTP id
 wt11-20020a170906ee8b00b0093e739fb0b8mr16254808ejb.3.1680529023917; 
 Mon, 03 Apr 2023 06:37:03 -0700 (PDT)
X-Google-Smtp-Source: AKy350b5/Bec/crBjlO6IL7EBuXgg8MSv3NWM+r4IdSoORQwjc+yIysiRXsIHyYHsw5FOV7c609mBFyk47tURnc5cBU=
X-Received: by 2002:a17:906:ee8b:b0:93e:739f:b0b8 with SMTP id
 wt11-20020a170906ee8b00b0093e739fb0b8mr16254795ejb.3.1680529023686; Mon, 03
 Apr 2023 06:37:03 -0700 (PDT)
MIME-Version: 1.0
References: <20230401172659.38508-1-mschmidt@redhat.com>
 <20230401172659.38508-2-mschmidt@redhat.com>
 <d8de0d9c-6ccb-4fce-a954-177e6603cb46@lunn.ch>
In-Reply-To: <d8de0d9c-6ccb-4fce-a954-177e6603cb46@lunn.ch>
From: Michal Schmidt <mschmidt@redhat.com>
Date: Mon, 3 Apr 2023 15:36:52 +0200
Message-ID: <CADEbmW0knbPw7R5_Z+GYs2-QkEP4tU4iXw6RtsnXvAFxJZ4GRg@mail.gmail.com>
To: Andrew Lunn <andrew@lunn.ch>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1680529028;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=bqVGEYwOHd6PhdUY1FDcopFk+fgKL+rug15aKzHniyw=;
 b=WuXO85+RRAV6ikMf7ib0p/queaTpBoXL4OoZ/Km7Q3TFArENokPDU6htxBP4IGu1OuDkZP
 uegDN2ozW2iyKJz+ddG4DEqWxvSZj3bzS0r01YLLeptYSqqumDQNsO7275Hu9FiT3Jg6zB
 xEpOE+9rzD11xtZmly0/XxquTs9sHU4=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=WuXO85+R
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/4] ice: lower CPU usage of
 the GNSS read thread
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
Cc: netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gU2F0LCBBcHIgMSwgMjAyMyBhdCA4OjMx4oCvUE0gQW5kcmV3IEx1bm4gPGFuZHJld0BsdW5u
LmNoPiB3cm90ZToKPgo+IE9uIFNhdCwgQXByIDAxLCAyMDIzIGF0IDA3OjI2OjU2UE0gKzAyMDAs
IE1pY2hhbCBTY2htaWR0IHdyb3RlOgo+ID4gVGhlIGljZS1nbnNzLTxkZXZfbmFtZT4ga2VybmVs
IHRocmVhZCwgd2hpY2ggcmVhZHMgZGF0YSBmcm9tIHRoZSB1LWJsb3gKPiA+IEdOU1MgbW9kdWxl
LCBrZWVwIGEgQ1BVIGNvcmUgYWxtb3N0IDEwMCUgYnVzeS4gVGhlIG1haW4gcmVhc29uIGlzIHRo
YXQKPiA+IGl0IGJ1c3ktd2FpdHMgZm9yIGRhdGEgdG8gYmVjb21lIGF2YWlsYWJsZS4KPgo+IEhp
IE1pY2hhbAo+Cj4gUGxlYXNlIGNvdWxkIHlvdSBjaGFuZ2UgdGhlIHBhdGNoIHN1YmplY3QuIE1h
eWJlIHNvbWV0aGluZyBsaWtlICJEbwo+IG5vdCBidXN5IHdhaXQgaW4gcmVhZCIgVGhhdCBnaXZl
cyBhIGJldHRlciBpZGVhIHdoYXQgdGhlIHBhdGNoIGRvZXMuCgpBbmQgSSB0aG91Z2h0IEkgd2Fz
IGRvaW5nIHNvIHdlbGwgd2l0aCB0aGUgc3ViamVjdHMgOikKT0ssIEkgd2lsbCBjaGFuZ2UgaXQu
CkJlZm9yZSByZXNlbmRpbmcsIEkgd291bGQgbGlrZSB0byBnZXQgYSBjb21tZW50IGZyb20gSW50
ZWwgYWJvdXQgdGhhdApzcGVjaWFsIDAuMSBzIGludGVydmFsLiBJZiBpdCB0dXJucyBvdXQgaXQg
aXMgbm90IG5lY2Vzc2FyeSwgSSB3b3VsZApzaW1wbGlmeSB0aGUgcGF0Y2ggZnVydGhlci4KClRo
YW5rcyEKTWljaGFsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wu
b3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVk
LWxhbgo=
