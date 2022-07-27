Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 84FC1582380
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Jul 2022 11:53:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1430A60B0A;
	Wed, 27 Jul 2022 09:53:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1430A60B0A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658915631;
	bh=d5WS73tM6TYl1ZUpL9UzVv5ZPo+C2XFIGbAXFCVslCw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:From;
	b=MAzXalkOt0YBUComkdCA4G1/B5NHwITrP722Rh041OtBlWJ00sdpHv/xOkTltY9HW
	 K5iYYkilx/FCrp3JwBAROHxRv72o/OY93j0y6VDHIEX4qoaEMNZQOLYGpuZOPkWzbC
	 4Q7+2JsPfln1NEIad+UQc7iuO7LZLv1fwdsem6HCf9wPZgOAJIAheIIT9V985InHSx
	 6ZntX/ICrKGSUgdWiY5izGZS3mkmPFPlW92Kfo2kWVZSYbqqCmkLd9VmnHmZtaGkpJ
	 scOf43VAOAVOqdQSz65nUCBjiHHI2i1hqVwZz7NnrKQcdrlrL2rpsxWM4aTpsqO5pd
	 GcwIrzpvfi+sg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id osTmNl5n6VzF; Wed, 27 Jul 2022 09:53:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F395860B64;
	Wed, 27 Jul 2022 09:53:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F395860B64
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DF32B1BF57F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 09:53:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C20EF81320
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 09:53:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C20EF81320
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id txH9TaI6li_u for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Jul 2022 09:53:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A04DA81321
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A04DA81321
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 09:53:42 +0000 (UTC)
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-103-O8epb_DhMamJrPm7hOgyxQ-1; Wed, 27 Jul 2022 05:53:40 -0400
X-MC-Unique: O8epb_DhMamJrPm7hOgyxQ-1
Received: by mail-ej1-f71.google.com with SMTP id
 ne36-20020a1709077ba400b0072b64ce28aaso4935617ejc.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 02:53:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:reply-to:to:date
 :in-reply-to:references:organization:content-transfer-encoding
 :user-agent:mime-version;
 bh=MdPSFWR6VJSJnQdNxMVgAmt95G1OyHE2RSeDHprm8S4=;
 b=JYmLhTtc4uY4KKi2B2YWJ6cce93SH3aZDigOYX/AdDYKpkZ9sFcwG2FjjPJv32mdEd
 NCZJc1LNnHiPhMNXao9LbMZbaIvcBKNiAPLbrdZWMkjwR7bOe/uQ62HxUXg5aga1Cdxf
 BzhJn7KC/VHRhdtX7jHG2l3g3Czux9lfSfRBZkk4bnn/xzEh4rnYz/vT4nS6ZvX5q7fU
 QxPY/Z7GNFTGiOdjRlGJPGda42bsNz8RcsxWSPqWCwo9Frz1yQ47J8IMHn67hVf6L2Nj
 X+p87EWVU77K1JWNtWq69GtPZCzk6jPgcNrhqPPWUpQI3X9u1fIiwlUadBYb3vBei8F5
 hoVg==
X-Gm-Message-State: AJIora85m5IJhl1smmOAlumTgrS6kBWmDUJ8KvEh8YWhnLnmtWr0fZ4/
 vBsLA23QMB5z+kP5K0Y06wogPmS2cjz+5vxeLUFQsEVnXL8MEZEi2J1Cfh9MhtSQvrJcpkYHgp9
 KzhP9vVASgmlOp3OOGp7LezMT9jDXKg==
X-Received: by 2002:a17:906:8479:b0:72b:83cf:4cf3 with SMTP id
 hx25-20020a170906847900b0072b83cf4cf3mr16788638ejc.90.1658915618889; 
 Wed, 27 Jul 2022 02:53:38 -0700 (PDT)
X-Google-Smtp-Source: AGRyM1uCi8NMGoTh92RYRF/6u79xYHxVBE8UOzMrxhMfigQl0HSCcdnYPedIUfN75hP1W8ek4u7ruA==
X-Received: by 2002:a17:906:8479:b0:72b:83cf:4cf3 with SMTP id
 hx25-20020a170906847900b0072b83cf4cf3mr16788618ejc.90.1658915618542; 
 Wed, 27 Jul 2022 02:53:38 -0700 (PDT)
Received: from [192.168.2.36] (ip4-46-175-183-46.net.iconn.cz. [46.175.183.46])
 by smtp.gmail.com with ESMTPSA id
 s25-20020a056402165900b0043bc19efc15sm9796297edx.28.2022.07.27.02.53.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Jul 2022 02:53:37 -0700 (PDT)
Message-ID: <668ad644d03b30975b88ac84c9e4a1263115095f.camel@redhat.com>
From: Petr Oros <poros@redhat.com>
To: "G, GurucharanX" <gurucharanx.g@intel.com>, "Siwik, Grzegorz"
 <grzegorz.siwik@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Date: Wed, 27 Jul 2022 11:53:35 +0200
In-Reply-To: <BYAPR11MB3367E7DA6E06013CAC612C91FC949@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <1657199751-256188-1-git-send-email-grzegorz.siwik@intel.com>
 <1657199751-256188-2-git-send-email-grzegorz.siwik@intel.com>
 <BYAPR11MB3367E7DA6E06013CAC612C91FC949@BYAPR11MB3367.namprd11.prod.outlook.com>
Organization: Red Hat
User-Agent: Evolution 3.44.2
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1658915621;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=MdPSFWR6VJSJnQdNxMVgAmt95G1OyHE2RSeDHprm8S4=;
 b=iwv4iF5cbM2w2KQwC+N49tTbBoAHkSF2NBl1gy5/CMT8nhUblRvklMDoq1N32B3T0r7Gx7
 IQBcMO9cGtl9R3p8xh/7AQwrQxsguaAOzH6cokyT3XgW0Jz/1sjJEkW26LecB4WnsQ+vUx
 k6TC/Uq2pEmFe1zOslTKR4msKSJ5q/Q=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=iwv4iF5c
X-Mailman-Original-Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=poros@redhat.com
Subject: Re: [Intel-wired-lan] [PATCH net v1 1/3] ice: Fix double VLAN error
 when entering promisc mode
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

RywgR3VydWNoYXJhblggcMOtxaFlIHYgw5p0IDI2LiAwNy4gMjAyMiB2IDA1OjMzICswMDAwOgo+
IAo+IAo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPiA+IEZyb206IEludGVsLXdpcmVk
LWxhbiA8aW50ZWwtd2lyZWQtbGFuLWJvdW5jZXNAb3N1b3NsLm9yZz4gT24KPiA+IEJlaGFsZiBP
Zgo+ID4gR3J6ZWdvcnogU2l3aWsKPiA+IFNlbnQ6IFRodXJzZGF5LCBKdWx5IDcsIDIwMjIgNjo0
NiBQTQo+ID4gVG86IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnCj4gPiBDYzogU2l3
aWssIEdyemVnb3J6IDxncnplZ29yei5zaXdpa0BpbnRlbC5jb20+Cj4gPiBTdWJqZWN0OiBbSW50
ZWwtd2lyZWQtbGFuXSBbUEFUQ0ggbmV0IHYxIDEvM10gaWNlOiBGaXggZG91YmxlIFZMQU4KPiA+
IGVycm9yCj4gPiB3aGVuIGVudGVyaW5nIHByb21pc2MgbW9kZQo+ID4gCj4gPiBBdm9pZCBlbmFi
bGluZyBvciBkaXNhYmxpbmcgdmxhbiAwIHdoZW4gdHJ5aW5nIHRvIHNldCBwcm9taXNjdW91cwo+
ID4gdmxhbiBtb2RlCj4gPiBpZiBkb3VibGUgdmxhbiBtb2RlIGlzIGVuYWJsZWQuIFRoaXMgZml4
IGlzIG5lZWRlZCBiZWNhdXNlIHRoZQo+ID4gZHJpdmVyIHRyaWVzIHRvCj4gPiBhZGQgdGhlIHZs
YW4gMCBmaWx0ZXIgdHdpY2UgKG9uY2UgZm9yIGlubmVyIGFuZCBvbmNlIGZvciBvdXRlcikKPiA+
IHdoZW4gZG91YmxlCj4gPiBWTEFOIG1vZGUgaXMgZW5hYmxlZC4gVGhlIGZpbHRlciBwcm9ncmFt
IGlzIHJlamVjdGVkIGJ5IHRoZQo+ID4gZmlybXdhcmUgd2hlbgo+ID4gZG91YmxlIHZsYW4gaXMg
ZW5hYmxlZCwgYmVjYXVzZSB0aGUgcHJvbWlzY3VvdXMgZmlsdGVyIG9ubHkgbmVlZHMKPiA+IHRv
IGJlIHNldAo+ID4gb25jZS4KPiA+IAo+ID4gVGhpcyBpc3N1ZSB3YXMgbWlzc2VkIGluIHRoZSBp
bml0aWFsIGltcGxlbWVudGF0aW9uIG9mIGRvdWJsZSB2bGFuCj4gPiBtb2RlLgo+ID4gCj4gPiBG
aXhlczogNWVkYThhZmQ2YmNjICgiaWNlOiBBZGQgc3VwcG9ydCBmb3IgUEYvVkYgcHJvbWlzY3Vv
dXMgbW9kZSIpCj4gPiBTaWduZWQtb2ZmLWJ5OiBHcnplZ29yeiBTaXdpayA8Z3J6ZWdvcnouc2l3
aWtAaW50ZWwuY29tPgo+ID4gVGVzdGVkLWJ5OiBKYXJvc2xhdiBQdWxjaGFydCA8amFyb3NsYXYu
cHVsY2hhcnRAZ29vZGRhdGEuY29tPgo+ID4gVGVzdGVkLWJ5OiBJZ29yIFJhaXRzIDxpZ29yQGdv
b2RkYXRhLmNvbT4KPiA+IExpbms6Cj4gPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvQ0FL
OGZGWjdtLQo+ID4gS1I1N01fcllYNnhaTjM5Szg5Tz1MR29vWWtLc3U2SEt0MEJzK3g2eFFAbWFp
bC5nbWFpbC5jb20vCj4gPiAtLS0KPiA+IMKgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNl
L2ljZV9zd2l0Y2guYyB8IDcgKysrKysrKwo+ID4gwqAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRp
b25zKCspCj4gPiAKPiAKPiBJIGNvdWxkIHN0aWxsIG9ic2VydmUgdGhlIGlzc3VlIHdoZW4gdGhl
IGljZSBkcml2ZXIgaGFzIGJlZW4gcmVtb3ZlZAo+IGZyb20gdGhlIHN5c3RlbSBvbmNlIGFmdGVy
IGV4ZWN1dGluZwo+IGNyZWF0aW5nIGJyaWRnZSBvdmVyIGJvbmQgYW5kIHRoZW4gZG91YmxlIHZs
YW4KCkhpLAoKSXMgaXQgcmVncmVzc2lvbiBpbnRyb2R1Y2VkIGJ5IHRoaXMgcGF0Y2ggb3IgdGhp
cyBmaXggaXMgcGFydGlhbCBhbmQKbWVudGlvbmVkIGlzc3VlIGlzIHVuZml4ZWQgcmVncmVzc2lv
biBmcm9tIHBhc3QuIEkgYXNraW5nIGJlY2F1c2UKcHJvbWlzYyBtb2RlIGlzc3VlcyBpcyB2ZXJ5
IHBhaW4gZm9yIHVzIGFuZCBpbiBzZWNvbmQgY2FzZSB3aWxsIGJlCihtYXliZSkgZ29vZCB0byBt
b3ZlIHRoaXMgZm9yd2FyZCBhbmQgbWVudGlvbmVkIGlzc3VlIHdpbGwgZml4IGluIG5leHQKcGF0
Y2guCgpNYW55IHRoYW5rcywKUGV0cgoKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+IEludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKPiBJbnRlbC13
aXJlZC1sYW5Ab3N1b3NsLm9yZwo+IGh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLXdpcmVkLWxhbgo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJl
ZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC13aXJlZC1sYW4K
