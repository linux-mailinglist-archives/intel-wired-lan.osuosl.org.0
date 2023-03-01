Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 239B86A6CDD
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Mar 2023 14:13:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CB357417CC;
	Wed,  1 Mar 2023 13:13:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CB357417CC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677676388;
	bh=wzu+f7wUEqu27DzhG53+98IhLlkdIeIj2r53OIjBMvc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:Cc:From;
	b=fG7is4ot0BSqIyVgZGYtuuAL+iFyFjCTQPrXVWTkYPF5Ow+Az1ENOEBiu0+kTqG5E
	 wxsgcGzU+UK0+9R1nc0lwF2r2bCpipqJsXE21KZPNnr/1hncMDI+ZdMkFmaC+qff3h
	 e/NKK7pYP687fZRPcdQfdkkTz8yviGUCDX/oEfgMwLazTmjuJdxNz7EEIJeY8bbRHd
	 yndgXdwuGGlpgfctlM7KdBbuKX3aXyYgHravj6fAdyhZ2X/G4upRh7nQTP6DehSsmY
	 +Itqt6YQ+Yaev23VC3h6g3m+Xio0k5PaNWM3mj2tbEFzMhpS1i3ujNWFhu29xQ83uW
	 E/1WmowNs6vdA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yHQwDOl6GY6W; Wed,  1 Mar 2023 13:13:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8182E41716;
	Wed,  1 Mar 2023 13:13:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8182E41716
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 58EBC1BF4E2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Mar 2023 13:13:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3E81C8145D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Mar 2023 13:13:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3E81C8145D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cXboD8vBV5Va for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Mar 2023 13:13:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 288D081454
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 288D081454
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Mar 2023 13:12:59 +0000 (UTC)
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-464-vZS1v8jYOumsLKFxErPjXA-1; Wed, 01 Mar 2023 08:12:57 -0500
X-MC-Unique: vZS1v8jYOumsLKFxErPjXA-1
Received: by mail-wm1-f70.google.com with SMTP id
 c7-20020a7bc847000000b003e00be23a70so8335569wml.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 01 Mar 2023 05:12:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=mime-version:user-agent:content-transfer-encoding:organization
 :references:in-reply-to:date:cc:to:reply-to:from:subject:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=2kfi2q87Sv7tXUrJrq0FHngWlYJ4Oc0IWmKfAaVnfjU=;
 b=yFiE/ns6KkNCgALfAzfUqOdzCos/9vvCvvTxrmSciPMdCw3SZhmh1OA7bP5oDW6B8B
 Y8k+/CES2JK2CTNjLeQz/UFCAuJpzXNvl803bbJGVAc66s84YaqP8k5DMIvulG/4N9lE
 KxFB32I22He8qatD5ohDVNRmx11UHwmh3q6ywxV0JO9I+/vV/DXFRdTXbxgea5cZW6az
 LuCssRSBa238rK46jpzlBjxCKUM/hqgxvWjpUABlM+6O+cHK3iFXfJeYZLjLF0LC/2E2
 9XOE6WKorwbS42DkWplyFutJw6Ok2MD+VRiYp+HOHJuPjBF+aGHx1McQ2uoicZfFT4wo
 bcEg==
X-Gm-Message-State: AO0yUKVe8Aef8tgds8nYgEAjVfJ8mL2BgOT3XHf4lGaBMh4XG9ypg+b0
 vBlVSHZPBVYCGc7RPUSp/ru/ILTKqLB6N/ugw7cD8IXcnpsu1QWB82towBx9vcNJ8uzRSvn/OZt
 EsnDpdB50vDA7BMNKYkuGKW5MahOZdQ==
X-Received: by 2002:a05:600c:45d2:b0:3e2:1f63:4beb with SMTP id
 s18-20020a05600c45d200b003e21f634bebmr5296021wmo.19.1677676376553; 
 Wed, 01 Mar 2023 05:12:56 -0800 (PST)
X-Google-Smtp-Source: AK7set/t8J7wMw3IwLh04U5JG2woY791Z6BoPWzCigMi9iqtXuggZzKnuafRPgR5tYASnIx9LHo9CQ==
X-Received: by 2002:a05:600c:45d2:b0:3e2:1f63:4beb with SMTP id
 s18-20020a05600c45d200b003e21f634bebmr5295984wmo.19.1677676376099; 
 Wed, 01 Mar 2023 05:12:56 -0800 (PST)
Received: from [192.168.2.33] (ip4-46-175-183-46.net.iconn.cz. [46.175.183.46])
 by smtp.gmail.com with ESMTPSA id
 u6-20020a05600c00c600b003e21dcccf9fsm18833303wmm.16.2023.03.01.05.12.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Mar 2023 05:12:55 -0800 (PST)
Message-ID: <16c393e17c552cbf0c3456194456d32ea8bc826a.camel@redhat.com>
From: Petr Oros <poros@redhat.com>
To: "Ertman, David M" <david.m.ertman@intel.com>, Linus Heckemann
 <git@sphalerite.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Date: Wed, 01 Mar 2023 14:12:54 +0100
In-Reply-To: <MW5PR11MB5811C3D002B5A5FB3A8806F4DDA89@MW5PR11MB5811.namprd11.prod.outlook.com>
References: <20230215191757.1826508-1-david.m.ertman@intel.com>
 <ygay1oxikvo.fsf@localhost>
 <MW5PR11MB5811C3D002B5A5FB3A8806F4DDA89@MW5PR11MB5811.namprd11.prod.outlook.com>
Organization: Red Hat
User-Agent: Evolution 3.46.3
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1677676378;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=2kfi2q87Sv7tXUrJrq0FHngWlYJ4Oc0IWmKfAaVnfjU=;
 b=gMhKoHlcfpSu3FymVDzOQXp22y1cVzvthojMqaPRdUvOPXN+eQDs3YEQfYzPAg5chZ9/OD
 aJx3apiTb7Z6S0GLYm7QZCtop9EZfRpvUpWMCJ6TI2cXY0KrFkHY8kAb2htORRnZUAeFpu
 Pqw5h6rkXH0qWDS3p7oiRHc2jlqUHEg=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=gMhKoHlc
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: avoid bonding causing
 auxiliary plug/unplug under RTNL lock
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
Cc: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RXJ0bWFuLCBEYXZpZCBNIHDDrcWhZSB2IFDDoSAyNC4gMDIuIDIwMjMgdiAxODozMyArMDAwMDoK
PiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gPiBGcm9tOiBMaW51cyBIZWNrZW1hbm4g
PGdpdEBzcGhhbGVyaXRlLm9yZz4KPiA+IFNlbnQ6IFRodXJzZGF5LCBGZWJydWFyeSAxNiwgMjAy
MyA5OjI0IEFNCj4gPiBUbzogRXJ0bWFuLCBEYXZpZCBNIDxkYXZpZC5tLmVydG1hbkBpbnRlbC5j
b20+OyBpbnRlbC13aXJlZC0KPiA+IGxhbkBsaXN0cy5vc3Vvc2wub3JnCj4gPiBDYzogSmFyb3Ns
YXYgUHVsY2hhcnQgPGphcm9zbGF2LnB1bGNoYXJ0QGdvb2RkYXRhLmNvbT4KPiA+IFN1YmplY3Q6
IFJlOiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFUQ0ggbmV0IHYyXSBpY2U6IGF2b2lkIGJvbmRpbmcK
PiA+IGNhdXNpbmcKPiA+IGF1eGlsaWFyeSBwbHVnL3VucGx1ZyB1bmRlciBSVE5MIGxvY2sKPiA+
IAo+ID4gRGF2ZSBFcnRtYW4gPGRhdmlkLm0uZXJ0bWFuQGludGVsLmNvbT4gd3JpdGVzOgo+ID4g
PiBSRE1BIGlzIG5vdCBzdXBwb3J0ZWQgaW4gaWNlIG9uIGEgUEYgdGhhdCBoYXMgYmVlbiBhZGRl
ZCB0byBhCj4gPiA+IGJvbmRlZAo+ID4gPiBpbnRlcmZhY2UuIFRvIGVuZm9yY2UgdGhpcywgd2hl
biBhbiBpbnRlcmZhY2UgZW50ZXJzIGEgYm9uZCwgd2UKPiA+ID4gdW5wbHVnCj4gPiA+IHRoZSBh
dXhpbGlhcnkgZGV2aWNlIHRoYXQgc3VwcG9ydHMgUkRNQSBmdW5jdGlvbmFsaXR5LsKgIFRoaXMK
PiA+ID4gdW5wbHVnCj4gPiA+IGN1cnJlbnRseSBoYXBwZW5zIGluIHRoZSBjb250ZXh0IG9mIGhh
bmRsaW5nIHRoZSBuZXRkZXYgYm9uZGluZwo+ID4gPiBldmVudC4KPiA+ID4gVGhpcyBldmVudCBp
cyBzZW50IHRvIHRoZSBpY2UgZHJpdmVyIHVuZGVyIFJUTkwgY29udGV4dC7CoCBUaGlzIGlzCj4g
PiA+IGNhdXNpbmcKPiA+ID4gYSBkZWFkbG9jayB3aGVyZSB0aGUgUkRNQSBkcml2ZXIgaXMgd2Fp
dGluZyBmb3IgdGhlIFJUTkwgbG9jayB0bwo+ID4gPiBjb21wbGV0ZQo+ID4gPiB0aGUgcmVtb3Zh
bC4KPiA+ID4gCj4gPiA+IERlZmVyIHRoZSB1bnBsdWdnaW5nL3JlLXBsdWdnaW5nIG9mIHRoZSBh
dXhpbGlhcnkgZGV2aWNlIHRvIHRoZQo+ID4gPiBzZXJ2aWNlCj4gPiA+IHRhc2sgc28gdGhhdCBp
dCBpcyBub3QgcGVyZm9ybWVkIHVuZGVyIHRoZSBSVE5MIGxvY2sgY29udGV4dC4KPiA+ID4gCj4g
PiA+IFJlcG9ydGVkLWJ5OiBKYXJvc2xhdiBQdWxjaGFydCA8amFyb3NsYXYucHVsY2hhcnRAZ29v
ZGRhdGEuY29tPgo+ID4gPiBMaW5rOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1yZG1h
LzY4YjE0YjExLWQwYzctNjVjOS00ZWViLQo+ID4gMDQ4N2M5NWUzOTVkQGxlZW1odWlzLmluZm8v
Cj4gPiA+IEZpeGVzOiA1Y2IxZWJkYmM0MzQgKCJpY2U6IEZpeCByYWNlIGNvbmRpdGlvbiBkdXJp
bmcgaW50ZXJmYWNlCj4gPiA+IGVuc2xhdmUiKQo+ID4gPiBGaXhlczogNDI1YzliZDA2YjdhICgi
UkRNQS9pcmRtYTogUmVwb3J0IHRoZSBjb3JyZWN0IGxpbmsgc3BlZWQiKQo+ID4gPiBTaWduZWQt
b2ZmLWJ5OiBEYXZlIEVydG1hbiA8ZGF2aWQubS5lcnRtYW5AaW50ZWwuY29tPgo+ID4gPiAtLS0K
PiA+ID4gQ2hhbmdlcyBzaW5jZSB2MToKPiA+ID4gUmV2ZXJzZWQgb3JkZXIgb2YgYml0IHByb2Nl
c3NpbmcgaW4gaWNlX3NlcnZpY2VfdGFzayBmb3IKPiA+ID4gUExVRy9VTlBMVUcKPiA+IAo+ID4g
SGkgRGF2ZSwKPiA+IAo+ID4gVGhhbmtzIGZvciB5b3VyIGNvbnRpbnVlZCB3b3JrIG9uIHRoaXMh
IFdlJ3ZlIHRlc3RlZCB0aGlzIG9uIGEKPiA+IHN5c3RlbQo+ID4gYWZmZWN0ZWQgYnkgdGhlIG9y
aWdpbmFsIGlzc3VlICh3aXRoIDgwODY6MTU5MyBjYXJkcykgYW5kLCB1bmxpa2UKPiA+IHYxIG9m
Cj4gPiB0aGUgcGF0Y2gsIGl0IGFwcGVhcnMgbm90IHRvIHJlc29sdmUgaXQ6Cj4gCj4gSGkgTGlu
dXMsCj4gCj4gVGhpcyBlcnJvciBjb25mdXNlcyBtZS7CoCBUaGUgb25seSBkaWZmZXJlbmNlIGJl
dHdlZW4gdjEgYW5kIHYyIG9mCj4gdGhpcyBwYXRjaAo+IGlzIHRoZSBvcmRlciBpbiB3aGljaCB3
ZSBwcm9jZXNzIHN0YXRlIGJpdHMgaW4gdGhlIHNlcnZpY2UgdGFzawo+IHRocmVhZC7CoCBUaGV5
IGFyZQo+IHN0aWxsIGJlaW5nIHByb2Nlc3NlZCBvdXRzaWRlIG9mIFJUTkwgY29udGV4dC4KPiAK
PiBDYW4geW91IHByb3ZpZGUgdGhlIHN0ZXBzIHlvdSB1c2VkIHRvIHJlcHJvZHVjZSB0aGlzIGlz
c3VlPyAKSGkgYWxsLAoKSSBoYXZlIHRlc3RlZCB0aGlzIGZpeCBhbmQgaSBjYW4gY29uZmlybSB0
aGF0IHRoZSBpc3N1ZSBpcyByZXNvbHZlZAp3aXRoIHYyLgoKV2l0aCBwYXRjaCAodjEgb3IgdjIp
CiQgbW9kcHJvYmUgLXYgYm9uZGluZyBtb2RlPTEgbWlpbW9uPTEwMCBtYXhfYm9uZHM9MQppbnNt
b2QgL2xpYi9tb2R1bGVzLzYuMi4wKy9rZXJuZWwvbmV0L3Rscy90bHMua28gCmluc21vZCAvbGli
L21vZHVsZXMvNi4yLjArL2tlcm5lbC9kcml2ZXJzL25ldC9ib25kaW5nL2JvbmRpbmcua28KbWF4
X2JvbmRzPTAgbW9kZT0xIG1paW1vbj0xMDAgbWF4X2JvbmRzPTEKJCBpcCBsaW5rIHNldCB1cCBi
b25kMAokIGlmZW5zbGF2ZSBib25kMCBlbnA2NXMwZjBucDAgZW5wNjVzMGYxbnAxCiQgCgpXaXRo
b3V0IHBhdGNoCiQgbW9kcHJvYmUgLXYgYm9uZGluZyBtb2RlPTEgbWlpbW9uPTEwMCBtYXhfYm9u
ZHM9MQppbnNtb2QgL2xpYi9tb2R1bGVzLzYuMi4wKy9rZXJuZWwvbmV0L3Rscy90bHMua28gCmlu
c21vZCAvbGliL21vZHVsZXMvNi4yLjArL2tlcm5lbC9kcml2ZXJzL25ldC9ib25kaW5nL2JvbmRp
bmcua28KbWF4X2JvbmRzPTAgbW9kZT0xIG1paW1vbj0xMDAgbWF4X2JvbmRzPTEKJCBpcCBsaW5r
IHNldCB1cCBib25kMAokIGlmZW5zbGF2ZSBib25kMCBlbnA2NXMwZjBucDAgZW5wNjVzMGYxbnAx
Cl5eXl5eXiBIQU5HCgpSZWdhcmRzLApQZXRyCgo+IAo+IFRoYW5rcywKPiBEYXZlRQo+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtd2lyZWQt
bGFuIG1haWxpbmcgbGlzdAo+IEludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCj4gaHR0cHM6Ly9s
aXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCj4gCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1s
YW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMu
b3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
