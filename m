Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 67F3859176A
	for <lists+intel-wired-lan@lfdr.de>; Sat, 13 Aug 2022 00:46:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C7B03418E2;
	Fri, 12 Aug 2022 22:46:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C7B03418E2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660344393;
	bh=Nab0RoqsUeRSK3kIsTuSWa1CsVdAw8vuHOK7cZX3VcA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:From;
	b=JoJlmuJ2VLmH3turRZnZseFJ/XDAVFg+jQxdQNCez8lhSIKKxPBNXSj7TB26urAvV
	 xbZns+hRiKOx/fXcON72UqjPrLABVSDseoDVHMWMJuRsnAcgcnxPikToCCWIdX1Eoa
	 UbUemNKsici73o4a9QPZVkC3wUVNSniy+TV7Mt78QO/oSoxrziVvNCuROZIqCDKy80
	 v4VCgk8zLmVt0A++XEuTxTJIef/aOXWl6HnEzND85GH4R7Z0Vatqbs/WT46Jxwa7MH
	 yxhzSU0+NJBQf9A7cz6lWcr5zkpoYO2Ep0n4d/vvjqbmpfBkeghqd87jvllPDW/VeU
	 a+zP2UlIg7Q8A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id te_USZR2UsIl; Fri, 12 Aug 2022 22:46:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 67F6E418DD;
	Fri, 12 Aug 2022 22:46:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 67F6E418DD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6727A1BF3EE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Aug 2022 22:46:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4DBD583DFC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Aug 2022 22:46:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4DBD583DFC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xjLCdVD5ZK_Z for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Aug 2022 22:46:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6230983DF7
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6230983DF7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Aug 2022 22:46:25 +0000 (UTC)
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-284-3gXuXciZN_u2hw7tR5NjRA-1; Fri, 12 Aug 2022 18:46:22 -0400
X-MC-Unique: 3gXuXciZN_u2hw7tR5NjRA-1
Received: by mail-ej1-f71.google.com with SMTP id
 qw34-20020a1709066a2200b00730ca5a94bfso655212ejc.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Aug 2022 15:46:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=mime-version:user-agent:content-transfer-encoding:organization
 :references:in-reply-to:date:to:reply-to:from:subject:message-id
 :x-gm-message-state:from:to:cc;
 bh=QuHcMw2XkCql5FPaCI7FLzdlPbV4YG3k3IADktdhkGE=;
 b=0jYL8dSj03cz3udUImqe7MpQYR9VhLXK6Blzef2FyswMU9Mtk8i6W68panJ5jLK8h5
 LBCDzppMmfYeKh51b8zM/SqdA4U3V4EQGqBM/SuxfDvK9iCVOsizWwqm/mgjrTL17XyG
 d/l2DNLs/EZpxx6vsfA35Q8ex8CJ88fBk5FYZJtsdLDWg5feE24bVGBiDAqCtlX8KR86
 uweTHVt/GbFOrAT0zym8Kkj4iBBryp2r7GWGtbwo0pysJ1iWyJs8HVq+16YxZn+t5xKZ
 yngfQfnf88LXSx+Jn/PXD3mej9xkvHpfWejf5Ne6KwlMKJIwvDAl45iTaJ5XzXsqF7ti
 M7Lg==
X-Gm-Message-State: ACgBeo2HIzpcmE2ywV3Ou4v+PiLT2lx6HQj4Gd+xdBdngQSetAoYcDib
 jS97nsqag6jqfIBrAuO7V/EjNOQBOTpUQtV6sle2WVIpcZ5PLPESeKjxxtGR8p5H3EtuU2vfzSQ
 igI49SYS0wPf7LoOcuNLahqo8s73pnA==
X-Received: by 2002:a17:907:7256:b0:730:f074:963c with SMTP id
 ds22-20020a170907725600b00730f074963cmr3988751ejc.201.1660344381441; 
 Fri, 12 Aug 2022 15:46:21 -0700 (PDT)
X-Google-Smtp-Source: AA6agR4UUQ5cvbFFBU3Mua/E8yIJyltPd3UckfPH04VjbmRqtcuG1i/Tt4DLnRVIrLispfvuH8CUIQ==
X-Received: by 2002:a17:907:7256:b0:730:f074:963c with SMTP id
 ds22-20020a170907725600b00730f074963cmr3988740ejc.201.1660344381192; 
 Fri, 12 Aug 2022 15:46:21 -0700 (PDT)
Received: from [192.168.2.36] (ip4-46-175-183-46.net.iconn.cz. [46.175.183.46])
 by smtp.gmail.com with ESMTPSA id
 f24-20020a170906391800b007324aa2ca77sm1238611eje.85.2022.08.12.15.46.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Aug 2022 15:46:20 -0700 (PDT)
Message-ID: <8c54cc2844eecfb61a0a182893f05d071f970424.camel@redhat.com>
From: Petr Oros <poros@redhat.com>
To: Grzegorz Siwik <grzegorz.siwik@intel.com>, 
 intel-wired-lan@lists.osuosl.org
Date: Sat, 13 Aug 2022 00:46:20 +0200
In-Reply-To: <1660310750-290943-1-git-send-email-grzegorz.siwik@intel.com>
References: <1660310750-290943-1-git-send-email-grzegorz.siwik@intel.com>
Organization: Red Hat
User-Agent: Evolution 3.44.3
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1660344383;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=QuHcMw2XkCql5FPaCI7FLzdlPbV4YG3k3IADktdhkGE=;
 b=Mv6t50OZJHVPdyxHTh0OFDc24DaHTU5JgH5Y/0rEyQaZd5C0r/ngHPq7PqFhvy4nc7o80t
 n4WAirGTERnQ9JXmOGfFs6Tv7yvxmozHPZj5jj/fRsSEbm06DO8qgXmzz2MZJI8vrxAf/B
 Oq1MIHv1Lq0g3ItKpLvw04sSrZyH6Xs=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Mv6t50OZ
Subject: Re: [Intel-wired-lan] [PATCH net v5 0/4] ice: Fixes for double vlan
 promiscuous mode
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
Reply-To: poros@redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

R3J6ZWdvcnogU2l3aWsgcMOtxaFlIHYgUMOhIDEyLiAwOC4gMjAyMiB2IDE1OjI1ICswMjAwOgo+
IFRoaXMgc2VyaWVzIGZpeGVzIGtub3duIGlzc3VlcyByZWxhdGVkIHRvIGRvdWJsZSB2bGFuIHBy
b21pc2N1b3VzCj4gbW9kZS4KPiBXaGVuIGF0IGxlYXN0IHR3byBpbnRlcmZhY2VzIGFyZSBib25k
ZWQgYW5kIGEgYnJpZGdlIGlzIGVuYWJsZWQgb24KPiB0aGUKPiBib25kLCBhbiBlcnJvciBjYW4g
b2NjdXIgd2hlbiB0aGUgYnJpZGdlIGlzIHJlbW92ZWQgYW5kIHJlLWFkZGVkLiBUaGUKPiByZWFz
b24gZm9yIHRoZSBlcnJvciBpcyBiZWNhdXNlIHByb21pc2N1b3VzIG1vZGUgd2FzIG5vdCBmdWxs
eQo+IGNsZWFyZWQgZnJvbQo+IHRoZSBWTEFOIFZTSSBpbiB0aGUgaGFyZHdhcmUuCj4gSWdub3Jl
IEVSUl9BTFJFQURZX0VYSVNUUyBlcnJvciB3aGVuIHNldHRpbmcgcHJvbWlzY3VvdXMgbW9kZS4K
PiBUaGlzIGZpeCBpcyBuZWVkZWQgYmVjYXVzZSB0aGUgZHJpdmVyIGNvdWxkIHNldCBwcm9taXNj
dW91cyBtb2RlCj4gd2hlbiBpdCBzdGlsbCBoYXMgbm90IGNsZWFyZWQgcHJvcGVybHkuCj4gSWYg
dGhlIHJlcXVlc3RlZCBwcm9taXNjdW91cyBtb2RlIHNldHRpbmcgYWxyZWFkeSBleGlzdHMsCj4g
YW4gLUVFWElTVCBlcnJvciBtZXNzYWdlIHdvdWxkIGJlIHByaW50ZWQuCj4gVGhpcyBpcyBpbmNv
cnJlY3QgYmVjYXVzZSBwcm9taXNjdW91cyBtb2RlIGlzCj4gZWl0aGVyIG9uL29mZiBhbmQgc2hv
dWxkbid0IHByaW50IGFuIGVycm9yIHdoZW4gdGhlIHJlcXVlc3RlZAo+IGNvbmZpZ3VyYXRpb24g
aXMgYWxyZWFkeSBzZXQuCj4gQXZvaWQgZW5hYmxpbmcgb3IgZGlzYWJsaW5nIHZsYW4gMCB3aGVu
IHRyeWluZyB0byBzZXQgcHJvbWlzY3VvdXMKPiB2bGFuIG1vZGUgaWYgZG91YmxlIHZsYW4gbW9k
ZSBpcyBlbmFibGVkLiBUaGlzIGZpeCBpcyBuZWVkZWQKPiBiZWNhdXNlIHRoZSBkcml2ZXIgdHJp
ZXMgdG8gYWRkIHRoZSB2bGFuIDAgZmlsdGVyIHR3aWNlIChvbmNlIGZvcgo+IGlubmVyIGFuZCBv
bmNlIGZvciBvdXRlcikgd2hlbiBkb3VibGUgVkxBTiBtb2RlIGlzIGVuYWJsZWQuCj4gCj4gLS0t
Cj4gwqB2MjogRml4ZWQgZXJyb3IgbWVzc2FnZSB3aGVuIHNldHRpbmcgc2FtZSBwcm9taXNjdW91
cyBtb2RlCj4gLS0tCj4gwqB2MzogRml4ZWQgc3R5bGUgaXNzdWVzLCBjaGFuZ2VkIHRvIHJldHVy
biBkaXJlY3RseS4KPiAtLS0KPiDCoHY0OiBGaXhlZCBwcm9ibGVtIHdpdGggcGF0Y2ggYXBwbHlp
bmcKPiAtLS0KPiDCoHY1OiBGaXhlZCBpbmNvcnJlY3QgdGl0bGUgcGF0Y2ggaXNzdWUKPiAtLS0K
PiBCZW5qYW1pbiBNaWthaWxlbmtvICgxKToKPiDCoCBpY2U6IElnbm9yZSBlcnJvciBtZXNzYWdl
IHdoZW4gc2V0dGluZyBzYW1lIHByb21pc2N1b3VzIG1vZGUKPiAKPiBHcnplZ29yeiBTaXdpayAo
Myk6Cj4gwqAgaWNlOiBGaXggZG91YmxlIFZMQU4gZXJyb3Igd2hlbiBlbnRlcmluZyBwcm9taXNj
IG1vZGUKPiDCoCBpY2U6IElnbm9yZSBFUlJfQUxSRUFEWV9FWElTVFMgd2hlbiBzZXR0aW5nIHBy
b21pc2MgbW9kZQo+IMKgIGljZTogRml4IGNsZWFyaW5nIG9mIHByb21pc2MgbW9kZSB3aXRoIGJy
aWRnZSBvdmVyIGJvbmQKPiAKPiDCoGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vf
Zmx0ci5jwqDCoCB8wqAgOCArKysrLS0tLQo+IMKgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWNlL2ljZV9saWIuY8KgwqDCoCB8wqAgNiArKysrKy0KPiDCoGRyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2ljZS9pY2VfbWFpbi5jwqDCoCB8IDEzICsrKysrKysrKysrKy0KPiDCoGRyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vfc3dpdGNoLmMgfMKgIDkgKysrKysrKystCj4gwqA0
IGZpbGVzIGNoYW5nZWQsIDI5IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCj4gCgpUZXN0
ZWQtYnk6IFBldHIgT3JvcyA8cG9yb3NAcmVkaGF0LmNvbT4KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QK
SW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
