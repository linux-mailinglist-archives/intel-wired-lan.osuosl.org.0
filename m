Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B899E6995CB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Feb 2023 14:30:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8EF07418CB;
	Thu, 16 Feb 2023 13:30:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8EF07418CB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676554202;
	bh=p/5yI3myJ2kbNJapBegprv9voriDAzorV4VcCdPgu7o=;
	h=From:Date:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=x16aIfUdh9hl5bEaYWoS2RLbZe0tnQ/Eyjd/3b8rCEX3vFDHwoH/Ihs3GEyk+7P6V
	 29jlAQWJqrc1M8DZ5BFaSy5uFyMS5g3g0naGLfBgE4LLbA9/C1JeGhxCbGw4YbAUTb
	 37Ckor6S1i/i8g+mJFlAI8mxkKPhu4YNp8T2fBBPCal5heBinHBO8t3kcwESBLHf/C
	 eHSxRu8eo7n45/iaN0sDsbvEmQf0HLAqHb4ij5HkBY1QVEPpFfVjUza20ijPmhG+k5
	 62SPnmW60c+N3XFaNp04P+EtXqa8rI7rSBC/BJgQjbpS1XMPg13W5k2txThgUQ2MWw
	 f+i98/S0YXPTA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S7l1GWIY1WP4; Thu, 16 Feb 2023 13:29:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 83866418BD;
	Thu, 16 Feb 2023 13:29:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 83866418BD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B87071BF3DA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 13:29:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8AC2540390
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 13:29:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8AC2540390
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VX5vEfL5Nlvv for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Feb 2023 13:29:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B458040339
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B458040339
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 13:29:49 +0000 (UTC)
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-46-35ISE30bNzOHGK_Vn4puXg-1; Thu, 16 Feb 2023 08:29:46 -0500
X-MC-Unique: 35ISE30bNzOHGK_Vn4puXg-1
Received: by mail-ej1-f72.google.com with SMTP id
 ga33-20020a1709070c2100b008b11f37b9c6so1542791ejc.14
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 05:29:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:references:to
 :content-language:subject:cc:user-agent:mime-version:date:message-id
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=sz//L1El2Opn1dz+ci3fGP9Fc6Go64iupeUlUG/RMd4=;
 b=PBCLetJXQ3x1Px91ymQJcYJB8G6sRsbrFnSbU6Fb6ya9lyZw7+TuGSYKu1NKU78hcB
 37cCzk27ffCigdMajDiFWT1HR/DlI0xqNlnAt8dicyXMb6Dfx5Zp0h680fve1FvCtuwI
 LwnWHG4/P6pXiNyiFqY0oQ7PkOefSqv7+K5Zjm+sBbIwYdx2BPesHuo5OMd532pFHgRR
 fO0nsE8i84kExcqciPjA/c1L7m/vbWhJjX9kByd21biOIBdH4IJnv8ZWOF9QPYQc6BIn
 U/2f/njwVWttfUY90YqHXIdJe6liVBIG8+d6/7c9shDQ3s1z1yeUfd7Ya/0/z6jQbK+N
 tMIg==
X-Gm-Message-State: AO0yUKXHqbhAJP+xN3mJuW5WjbsQIgkBp/63wy4lKyBgTZauZE1ITiZl
 J8MQ7rpZWkRWUshSB0OL5uEb2NeX5ZoMCkV26HJGv5ucQj+o8aoCW+llrYQEcEKEd/TtwyzUYkr
 6UprhcbGHxZ85P9ddnZwIN5/+Xd8xNA==
X-Received: by 2002:a17:906:4750:b0:878:42af:aa76 with SMTP id
 j16-20020a170906475000b0087842afaa76mr6836247ejs.54.1676554185657; 
 Thu, 16 Feb 2023 05:29:45 -0800 (PST)
X-Google-Smtp-Source: AK7set/WfnsQWHXHhLv72NFdkNfTntbKlY/vDmqk3nHG/xh7pKFkqClgitPqxQd+pnKHF5dU3t9vKg==
X-Received: by 2002:a17:906:4750:b0:878:42af:aa76 with SMTP id
 j16-20020a170906475000b0087842afaa76mr6836226ejs.54.1676554185350; 
 Thu, 16 Feb 2023 05:29:45 -0800 (PST)
Received: from [192.168.42.100] (nat-cgn9-185-107-15-52.static.kviknet.net.
 [185.107.15.52]) by smtp.gmail.com with ESMTPSA id
 gz17-20020a170907a05100b00882f9130eb3sm794276ejc.223.2023.02.16.05.29.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 16 Feb 2023 05:29:44 -0800 (PST)
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Google-Original-From: Jesper Dangaard Brouer <brouer@redhat.com>
Message-ID: <88e5c6b2-8acc-6585-100d-7b62320e5555@redhat.com>
Date: Thu, 16 Feb 2023 14:29:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
To: Paul Menzel <pmenzel@molgen.mpg.de>,
 Alexander Lobakin <alexandr.lobakin@intel.com>
References: <167604167956.1726972.7266620647404438534.stgit@firesoul>
 <6a5ded96-2425-ff9b-c1b1-eca1c103164c@molgen.mpg.de>
In-Reply-To: <6a5ded96-2425-ff9b-c1b1-eca1c103164c@molgen.mpg.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1676554188;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=sz//L1El2Opn1dz+ci3fGP9Fc6Go64iupeUlUG/RMd4=;
 b=ZRTocHnmxirPmjaHOol1S+IFU2Y/P6NwFGtcyaTe85ArMvOxia/JprFnBjc+u+niBZ6BFf
 V0FNCF40lVXNPR5MTq+lLrRt/YkXYLFeNWTW+hgjEt0oeu1JA8dPHolFA5xxpdcG+qlD8i
 zoFjBaH9KCtZqRn8K+Ejb5L/y/2QbSU=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=ZRTocHnm
Subject: Re: [Intel-wired-lan] [xdp-hints] Re: [PATCH bpf-next V1] igc:
 enable and fix RX hash usage by netstack
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
 netdev@vger.kernel.org, ast@kernel.org, anthony.l.nguyen@intel.com,
 Stanislav Fomichev <sdf@google.com>, yoong.siang.song@intel.com,
 brouer@redhat.com, intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ck9uIDE0LzAyLzIwMjMgMTYuMDAsIFBhdWwgTWVuemVsIHdyb3RlOgo+IAo+IFRoYW5rIHlvdSB2
ZXJ5IG11Y2ggZm9yIHlvdXIgcGF0Y2guCgpUaGFua3MgZm9yIHlvdXIgcmV2aWV3IDotKQoKPiBB
bSAxMC4wMi4yMyB1bSAxNjowNyBzY2hyaWViIEplc3BlciBEYW5nYWFyZCBCcm91ZXI6Cj4+IFdo
ZW4gZnVuY3Rpb24gaWdjX3J4X2hhc2goKSB3YXMgaW50cm9kdWNlZCBpbiB2NC4yMCB2aWEgY29t
bWl0IAo+PiAwNTA3ZWY4YTAzNzIKPj4gKCJpZ2M6IEFkZCB0cmFuc21pdCBhbmQgcmVjZWl2ZSBm
YXN0cGF0aCBhbmQgaW50ZXJydXB0IGhhbmRsZXJzIiksIHRoZQo+PiBoYXJkd2FyZSB3YXNuJ3Qg
Y29uZmlndXJlZCB0byBwcm92aWRlIFJTUyBoYXNoLCB0aHVzIGl0IG1hZGUgc2Vuc2UgdG8gbm90
Cj4+IGVuYWJsZSBuZXRfZGV2aWNlIE5FVElGX0ZfUlhIQVNIIGZlYXR1cmUgYml0Lgo+Pgo+PiBU
aGUgTklDIGhhcmR3YXJlIHdhcyBjb25maWd1cmVkIHRvIGVuYWJsZSBSU1MgaGFzaCBpbmZvIGlu
IHY1LjIgdmlhIAo+PiBjb21taXQKPj4gMjEyMWMyNzEyZjgyICgiaWdjOiBBZGQgbXVsdGlwbGUg
cmVjZWl2ZSBxdWV1ZXMgY29udHJvbCBzdXBwb3J0aW5nIiksIGJ1dAo+PiBmb3Jnb3QgdG8gc2V0
IHRoZSBORVRJRl9GX1JYSEFTSCBmZWF0dXJlIGJpdC4KPj4KPj4gVGhlIG9yaWdpbmFsIGltcGxl
bWVudGF0aW9uIG9mIGlnY19yeF9oYXNoKCkgZGlkbid0IGV4dHJhY3QgdGhlIGFzc29jaWF0ZWQK
Pj4gcGt0X2hhc2hfdHlwZSwgYnV0IHN0YXRpY2FsbHkgc2V0IFBLVF9IQVNIX1RZUEVfTDMuIFRo
ZSBsYXJnZXN0IHBvcnRpb25zIG9mCj4+IHRoaXMgcGF0Y2ggYXJlIGFib3V0IGV4dHJhY3Rpbmcg
dGhlIFJTUyBUeXBlIGZyb20gdGhlIGhhcmR3YXJlIGFuZCBtYXBwaW5nCj4+IHRoaXMgdG8gZW51
bSBwa3RfaGFzaF90eXBlcy4gVGhpcyB3ZXJlIGJhc2VkIG9uIEZveHZpbGxlIGkyMjUgc29mdHdh
cmUgCj4+IHVzZXIKPiAKPiBzL1RoaXMgd2VyZS9UaGlzIHdhcy8KCkZpeGVkIGZvciBWMgoKPj4g
bWFudWFsIHJldi0xLjMuMSBhbmQgdGVzdGVkIG9uIEludGVsIEV0aGVybmV0IENvbnRyb2xsZXIg
STIyNS1MTSAocmV2IAo+PiAwMykuCj4+Cj4+IEZvciBVRFAgaXQncyB3b3J0aCBub3RpbmcgdGhh
dCBSU1MgKHR5cGUpIGhhc2hpbmcgaGF2ZSBiZWVuIGRpc2FibGVkIGJvdGggZm9yCj4+IElQdjQg
YW5kIElQdjYgKHNlZSBJR0NfTVJRQ19SU1NfRklFTERfSVBWNF9VRFAgKyBJR0NfTVJRQ19SU1Nf
RklFTERfSVBWNl9VRFApCj4+IGJlY2F1c2UgaGFyZHdhcmUgUlNTIGRvZXNuJ3QgaGFuZGxlIGZy
YWdtZW50ZWQgcGt0cyB3ZWxsIHdoZW4gZW5hYmxlZCAKPj4gKGNhbiBjYXVzZSBvdXQtb2Ytb3Jk
ZXIpLiBUaGlzIHJlc3VsdCBpbiBQS1RfSEFTSF9UWVBFX0wzIGZvciBVRFAgcGFja2V0cywgYW5k
Cj4gCj4gcmVzdWx0KnMqCgpGaXhlZCBmb3IgVjIKCj4gCj4+IGhhc2ggdmFsdWUgZG9lc24ndCBp
bmNsdWRlIFVEUCBwb3J0IG51bWJlcnMuIE5vdCBiZWluZyBQS1RfSEFTSF9UWVBFX0w0LCBoYXZl
Cj4+IHRoZSBlZmZlY3QgdGhhdCBuZXRzdGFjayB3aWxsIGRvIGEgc29mdHdhcmUgYmFzZWQgaGFz
aCBjYWxjIGNhbGxpbmcgaW50bwo+PiBmbG93X2Rpc3NlY3QsIGJ1dCBvbmx5IHdoZW4gY29kZSBj
YWxscyBza2JfZ2V0X2hhc2goKSwgd2hpY2ggZG9lc24ndAo+PiBuZWNlc3NhcnkgaGFwcGVuIGZv
ciBsb2NhbCBkZWxpdmVyeS4KPiAKPiBFeGN1c2UgbXkgaWdub3JhbmNlLCBidXQgaXMgdGhhdCBi
dWcgdmlzaWJsZSBpbiBwcmFjdGljZSBieSB1c2VycyAKPiAocGVyZm9ybWFuY2U/KSBvciBpcyB0
aGF0IGZpeCBuZWVkZWQgZm9yIGZ1dHVyZSB3b3JrPwo+IAo+PiBGaXhlczogMjEyMWMyNzEyZjgy
ICgiaWdjOiBBZGQgbXVsdGlwbGUgcmVjZWl2ZSBxdWV1ZXMgY29udHJvbCBzdXBwb3J0aW5nIikK
Pj4gU2lnbmVkLW9mZi1ieTogSmVzcGVyIERhbmdhYXJkIEJyb3VlciA8YnJvdWVyQHJlZGhhdC5j
b20+Cj4+IC0tLQo+PiDCoCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjLmjCoMKg
wqDCoMKgIHzCoMKgIDUyIAo+PiArKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+PiDCoCBk
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX21haW4uYyB8wqDCoCAzNSArKysrKysr
KysrKysrKysrKy0tLQo+PiDCoCAyIGZpbGVzIGNoYW5nZWQsIDgzIGluc2VydGlvbnMoKyksIDQg
ZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pZ2MvaWdjLmggCj4+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnYy5oCj4+
IGluZGV4IGRmM2UyNmMwY2YwMS4uYTExMmVlYjU5NTI1IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjLmgKPj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWdjL2lnYy5oCj4+IEBAIC0zMTEsNiArMzExLDU4IEBAIGV4dGVybiBjaGFyIGln
Y19kcml2ZXJfbmFtZVtdOwo+PiDCoCAjZGVmaW5lIElHQ19NUlFDX1JTU19GSUVMRF9JUFY0X1VE
UMKgwqDCoCAweDAwNDAwMDAwCj4+IMKgICNkZWZpbmUgSUdDX01SUUNfUlNTX0ZJRUxEX0lQVjZf
VURQwqDCoMKgIDB4MDA4MDAwMDAKPj4gKy8qIFJYLWRlc2MgV3JpdGUtQmFjayBmb3JtYXQgUlNT
IFR5cGUncyAqLwo+PiArZW51bSBpZ2NfcnNzX3R5cGVfbnVtIHsKPj4gK8KgwqDCoCBJR0NfUlNT
X1RZUEVfTk9fSEFTSMKgwqDCoMKgwqDCoMKgID0gMCwKPj4gK8KgwqDCoCBJR0NfUlNTX1RZUEVf
SEFTSF9UQ1BfSVBWNMKgwqDCoCA9IDEsCj4+ICvCoMKgwqAgSUdDX1JTU19UWVBFX0hBU0hfSVBW
NMKgwqDCoMKgwqDCoMKgID0gMiwKPj4gK8KgwqDCoCBJR0NfUlNTX1RZUEVfSEFTSF9UQ1BfSVBW
NsKgwqDCoCA9IDMsCj4+ICvCoMKgwqAgSUdDX1JTU19UWVBFX0hBU0hfSVBWNl9FWMKgwqDCoCA9
IDQsCj4+ICvCoMKgwqAgSUdDX1JTU19UWVBFX0hBU0hfSVBWNsKgwqDCoMKgwqDCoMKgID0gNSwK
Pj4gK8KgwqDCoCBJR0NfUlNTX1RZUEVfSEFTSF9UQ1BfSVBWNl9FWMKgwqDCoCA9IDYsCj4+ICvC
oMKgwqAgSUdDX1JTU19UWVBFX0hBU0hfVURQX0lQVjTCoMKgwqAgPSA3LAo+PiArwqDCoMKgIElH
Q19SU1NfVFlQRV9IQVNIX1VEUF9JUFY2wqDCoMKgID0gOCwKPj4gK8KgwqDCoCBJR0NfUlNTX1RZ
UEVfSEFTSF9VRFBfSVBWNl9FWMKgwqDCoCA9IDksCj4+ICvCoMKgwqAgSUdDX1JTU19UWVBFX01B
WMKgwqDCoMKgwqDCoMKgID0gMTAsCj4+ICt9Owo+PiArI2RlZmluZSBJR0NfUlNTX1RZUEVfTUFY
X1RBQkxFwqDCoMKgwqDCoMKgwqAgMTYKPj4gKyNkZWZpbmUgSUdDX1JTU19UWVBFX01BU0vCoMKg
wqDCoMKgwqDCoCAweEYKPj4gKwo+PiArLyogaWdjX3Jzc190eXBlIC0gUnggZGVzY3JpcHRvciBS
U1MgdHlwZSBmaWVsZCAqLwo+PiArc3RhdGljIGlubGluZSB1OCBpZ2NfcnNzX3R5cGUodW5pb24g
aWdjX2Fkdl9yeF9kZXNjICpyeF9kZXNjKQo+PiArewo+PiArwqDCoMKgIC8qIFJTUyBUeXBlIDQt
Yml0IG51bWJlcjogMC05IChhYm92ZSA5IGlzIHJlc2VydmVkKSAqLwo+PiArwqDCoMKgIHJldHVy
biByeF9kZXNjLT53Yi5sb3dlci5sb19kd29yZC5oc19yc3MucGt0X2luZm8gJiBJR0NfUlNTX1RZ
UEVfTUFTSzsKPj4gK30KPiAKPiBJcyBpdCBuZWNlc3NhcnkgdG8gc3BlY2ZpY3kgdGhlIGxlbmd0
aCBvZiB0aGUgcmV0dXJuIHZhbHVlLCBvciBjb3VsZCBpdCAKPiBiZSBgdW5zaWduZWQgaW50YC4g
VXNpbmcg4oCcbmF0aXZl4oCdIHR5cGVzIGlzIG5vcm1hbGx5IG1vcmUgcGVyZm9ybWFudCBbMV0u
IAo+IGBzY3JpcHRzL2Jsb2F0LW8tbWV0ZXJgIG1pZ2h0IGhlbHAgdG8gdmVyaWZ5IHRoYXQuCj4g
CgpUaGFua3MgZm9yIHRoZSBsaW5rWzFdLgpBbGV4L09sZWsgYWxzbyBwb2ludGVkIHRoaXMgb3V0
LgoKVGhlIEFnbmVyJ3MgaW5zdHJ1Y3Rpb24gbGF0ZW5jeSB0YWJsZXNbMl0gZG8gaW5kaWNhdGUg
dGhlIGxhdGVuY3kgaXMKc2xpZ2h0bHkgaGlnaGVyIGZvciByOCBhbmQgcjE2IChhbmQgbTgvbTE2
KS4gIEFuZCB3ZSBsaWtlbHkgbmVlZCB0byBsb29rIAphdCB0aGUgemVyby1leHRlbmQgdmFyaWFu
dHMgbW92enguCgpJIHRoaW5rIHdlIHNob3VsZCBpbnZlc3RpZ2F0ZSB0aGlzIHdpdGggInRvb2wi
IGdvZGJvbHQub3JnIGFzCnNjcmlwdHMvYmxvYXQtby1tZXRlciB3aWxsIG9ubHkgdGVsbCB1cyBh
Ym91dCBjb2RlIHNpemUuCkkgd2lsbCBleHBlcmltZW50IGEgYml0IGFuZCByZXBvcnQgYmFjayA6
LSkKClsyXSBodHRwczovL3d3dy5hZ25lci5vcmcvb3B0aW1pemUvaW5zdHJ1Y3Rpb25fdGFibGVz
LnBkZgoKPiBb4oCmXQo+IAo+PiDCoCBzdGF0aWMgaW5saW5lIHZvaWQgaWdjX3J4X2hhc2goc3Ry
dWN0IGlnY19yaW5nICpyaW5nLAo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHVuaW9uIGlnY19hZHZfcnhfZGVzYyAqcnhfZGVzYywKPj4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3Qgc2tfYnVmZiAqc2tiKQo+PiDCoCB7Cj4+
IC3CoMKgwqAgaWYgKHJpbmctPm5ldGRldi0+ZmVhdHVyZXMgJiBORVRJRl9GX1JYSEFTSCkKPj4g
LcKgwqDCoMKgwqDCoMKgIHNrYl9zZXRfaGFzaChza2IsCj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBsZTMyX3RvX2NwdShyeF9kZXNjLT53Yi5sb3dlci5oaV9kd29yZC5yc3Mp
LAo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgUEtUX0hBU0hfVFlQRV9MMyk7
Cj4+ICvCoMKgwqAgaWYgKHJpbmctPm5ldGRldi0+ZmVhdHVyZXMgJiBORVRJRl9GX1JYSEFTSCkg
ewo+PiArwqDCoMKgwqDCoMKgwqAgdTMyIHJzc19oYXNoID0gbGUzMl90b19jcHUocnhfZGVzYy0+
d2IubG93ZXIuaGlfZHdvcmQucnNzKTsKPj4gK8KgwqDCoMKgwqDCoMKgIHU4wqAgcnNzX3R5cGUg
PSBpZ2NfcnNzX3R5cGUocnhfZGVzYyk7Cj4gCj4gQW1vbmdzdCBvdGhlcnMsIGFsc28gaGVyZS4K
CkRvIG5vdGljZSBJIGV4cGVjdCBjb21waWxlciB0byBvcHRpbWl6ZSB0aGlzLCBzdWNoIHRoYXQg
aXMgZG9lc24ndCBwbGFjZSAKdGhpcyB2YXJpYWJsZSBvbiB0aGUgc3RhY2suCgo+PiArwqDCoMKg
wqDCoMKgwqAgZW51bSBwa3RfaGFzaF90eXBlcyBoYXNoX3R5cGU7Cj4+ICsKPj4gK8KgwqDCoMKg
wqDCoMKgIGhhc2hfdHlwZSA9IGlnY19yc3NfdHlwZV90YWJsZVtyc3NfdHlwZV0uaGFzaF90eXBl
Owo+PiArwqDCoMKgwqDCoMKgwqAgc2tiX3NldF9oYXNoKHNrYiwgcnNzX2hhc2gsIGhhc2hfdHlw
ZSk7Cj4+ICvCoMKgwqAgfQo+PiDCoCB9Cj4+IMKgIHN0YXRpYyB2b2lkIGlnY19yeF92bGFuKHN0
cnVjdCBpZ2NfcmluZyAqcnhfcmluZywKPj4gQEAgLTY1MDEsNiArNjUyNyw3IEBAIHN0YXRpYyBp
bnQgaWdjX3Byb2JlKHN0cnVjdCBwY2lfZGV2ICpwZGV2LAo+PiDCoMKgwqDCoMKgIG5ldGRldi0+
ZmVhdHVyZXMgfD0gTkVUSUZfRl9UU087Cj4+IMKgwqDCoMKgwqAgbmV0ZGV2LT5mZWF0dXJlcyB8
PSBORVRJRl9GX1RTTzY7Cj4+IMKgwqDCoMKgwqAgbmV0ZGV2LT5mZWF0dXJlcyB8PSBORVRJRl9G
X1RTT19FQ047Cj4+ICvCoMKgwqAgbmV0ZGV2LT5mZWF0dXJlcyB8PSBORVRJRl9GX1JYSEFTSDsK
Pj4gwqDCoMKgwqDCoCBuZXRkZXYtPmZlYXR1cmVzIHw9IE5FVElGX0ZfUlhDU1VNOwo+PiDCoMKg
wqDCoMKgIG5ldGRldi0+ZmVhdHVyZXMgfD0gTkVUSUZfRl9IV19DU1VNOwo+PiDCoMKgwqDCoMKg
IG5ldGRldi0+ZmVhdHVyZXMgfD0gTkVUSUZfRl9TQ1RQX0NSQzsKPiAKPiAKPiBLaW5kIHJlZ2Fy
ZHMsCj4gCj4gUGF1bAo+IAo+IAo+IFsxXTogaHR0cHM6Ly9ub3RhYnMub3JnL2NvZGluZy9zbWFs
bEludHNCaWdQZW5hbHR5Lmh0bQo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1s
YW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC13aXJlZC1sYW4K
