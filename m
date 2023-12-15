Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A022814631
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Dec 2023 12:07:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0247E822CF;
	Fri, 15 Dec 2023 11:07:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0247E822CF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702638429;
	bh=eE3ZOX73ow4WZ1LYXguVpyU+7+pcXw9xMTUFUYRRjcI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XgjkXGukucCI7MoOYFb63s6BWrBx+qFh2so2YM4xcjqfChyxBwdVs7PbnXzPzY4Z2
	 tTyK2HM1z4g6AAZGIrFHyFxvT2wO8uWHoE/dM7aDgLlXQUn8hGAgWG+pAJACeRxE8O
	 pLoumvgWyWFrDRUyrQg/BS9vgym8ZPMKOnov2JptWAeA/q8gF7aNH6pL1COhL95s2U
	 6J+BJubWL1OnWBk7xRD7EchRKTGFP5nVBNFdKA2SAGdq37t//b10qOJqXMIviwPKZ5
	 5CEKBYmCaO9LY5JX3rZ6AuGvDiVL56gjwGR0L1yAN5mGqO6BzsYYRkmfZvTh8UMt39
	 HL7z+gQzyFsRQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HswZEddUS7_O; Fri, 15 Dec 2023 11:07:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B731380B0E;
	Fri, 15 Dec 2023 11:07:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B731380B0E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E09EB1BF404
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 11:07:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BA077401C2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 11:07:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BA077401C2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rRCd4AzCGOvq for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Dec 2023 11:07:01 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 437E94011A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 11:07:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 437E94011A
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-478-C6yt4rebMHCvS06JD4n2eg-1; Fri, 15 Dec 2023 06:06:58 -0500
X-MC-Unique: C6yt4rebMHCvS06JD4n2eg-1
Received: by mail-ej1-f69.google.com with SMTP id
 a640c23a62f3a-a1d3a7dbb81so12429466b.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 03:06:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1702638417; x=1703243217;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=+SBrpdDFNUNV9rPT9NLwnq0LGAxyDiW4IAOIo/k6GdI=;
 b=KIAdOJwSG6aLPVO6pO/XNCnsjihpzB7ODSI0D2SQ9Pn3Bvk8OqLFAPpROsO8O0em7L
 WyEwd3AWkjMBXEIjvwtTRDZh5j4hMQvjkeLQW0Z1+Ba3XM70jpQ4DQ8wP2eO324MEpxa
 UsSt4QJQeDB6a55TTADB25TA9ogK48yVqQhDTyFhkPzJLYh7/Yl5GwJixpAU+AZzTFAL
 eIXSdBPIeia4i1NPfrMZynBpAv43MVO1p6+wjv1iU1tKAZ5zBzdW76bjSIBZRUDTyYIV
 2LpoSXqJeIGOHp3S14QaZ2uYsFoH5ZCv4OlLjySW3rP4dcs2LO5iU1+xpX25uEaNwP1r
 gxHw==
X-Gm-Message-State: AOJu0Yw4QXLhSaGBd4xrTLmw+zoLg5LdyqFhasjvMYp5X6J2S5KQzXhi
 ejA+gM/oj7y1q4kXnVG9fME7TX0T8fTelqZ0m28HOLMcIymCkiZJRvwTR8LjTqiAAA+PsrRkP+K
 CyCZgzl5ql/y9ASVJg6UfLgkmkL37qA==
X-Received: by 2002:a17:907:c312:b0:a01:ae7b:d19b with SMTP id
 tl18-20020a170907c31200b00a01ae7bd19bmr13400105ejc.7.1702638416815; 
 Fri, 15 Dec 2023 03:06:56 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGqpkcw+CXAIe9OcjU9a+jALwDiPC7w1Lq9B7//FnjoXl2yypFOCqn4E0ZWOM64gx9WBsXmQw==
X-Received: by 2002:a17:907:c312:b0:a01:ae7b:d19b with SMTP id
 tl18-20020a170907c31200b00a01ae7bd19bmr13400093ejc.7.1702638416441; 
 Fri, 15 Dec 2023 03:06:56 -0800 (PST)
Received: from gerbillo.redhat.com (146-241-255-162.dyn.eolo.it.
 [146.241.255.162]) by smtp.gmail.com with ESMTPSA id
 st10-20020a170907c08a00b00a1cd0794696sm10590739ejc.53.2023.12.15.03.06.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Dec 2023 03:06:55 -0800 (PST)
Message-ID: <7b0c2e0132b71b131fc9a5407abd27bc0be700ee.camel@redhat.com>
From: Paolo Abeni <pabeni@redhat.com>
To: Jakub Kicinski <kuba@kernel.org>, Jiri Pirko <jiri@resnulli.us>
Date: Fri, 15 Dec 2023 12:06:52 +0100
In-Reply-To: <20231214174604.1ca4c30d@kernel.org>
References: <20230727021021.961119-1-wenjun1.wu@intel.com>
 <20230822034003.31628-1-wenjun1.wu@intel.com> <ZORRzEBcUDEjMniz@nanopsycho>
 <20230822081255.7a36fa4d@kernel.org> <ZOTVkXWCLY88YfjV@nanopsycho>
 <0893327b-1c84-7c25-d10c-1cc93595825a@intel.com>
 <ZOcBEt59zHW9qHhT@nanopsycho>
 <5aed9b87-28f8-f0b0-67c4-346e1d8f762c@intel.com>
 <bdb0137a-b735-41d9-9fea-38b238db0305@intel.com>
 <20231118084843.70c344d9@kernel.org>
 <3d60fabf-7edf-47a2-9b95-29b0d9b9e236@intel.com>
 <20231122192201.245a0797@kernel.org>
 <e662dca5-84e4-4f7b-bfa3-50bce30c697c@intel.com>
 <20231127174329.6dffea07@kernel.org>
 <55e51b97c29894ebe61184ab94f7e3d8486e083a.camel@redhat.com>
 <20231214174604.1ca4c30d@kernel.org>
User-Agent: Evolution 3.46.4 (3.46.4-1.fc37)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1702638419;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=+SBrpdDFNUNV9rPT9NLwnq0LGAxyDiW4IAOIo/k6GdI=;
 b=c4jQJRL9pSlhHb4Ac3mktdYA91ZY1fLOsqrdipv8HUn0BZzLjpkkGgUW1l+1y1a/7awYpV
 IJx/IUAtV9X74r7gOEY9OAj7gqpmCooEVQFoimoJJOLk4TeKYVmcWGw2C8X+CtwXJnDRCi
 BEOVWbsl8tadLjio2MZilSCEeYKq/S8=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=c4jQJRL9
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 0/5] iavf: Add devlink and
 devlink rate support'
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
Cc: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>, netdev@vger.kernel.org,
 Simon Horman <simon.horman@redhat.com>, anthony.l.nguyen@intel.com, "Chittim,
 Madhu" <madhu.chittim@intel.com>, maxtram95@gmail.com, qi.z.zhang@intel.com,
 intel-wired-lan@lists.osuosl.org, Wenjun Wu <wenjun1.wu@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVGh1LCAyMDIzLTEyLTE0IGF0IDE3OjQ2IC0wODAwLCBKYWt1YiBLaWNpbnNraSB3cm90ZToK
PiBPbiBUaHUsIDE0IERlYyAyMDIzIDIxOjI5OjUxICswMTAwIFBhb2xvIEFiZW5pIHdyb3RlOgo+
ID4gVG9nZXRoZXIgd2l0aCBTaW1vbiwgSSBzcGVudCBzb21lIHRpbWUgb24gdGhlIGFib3ZlLiBX
ZSB0aGluayB0aGUKPiA+IG5kb19zZXR1cF90YyhUQ19TRVRVUF9RRElTQ19UQkYpIGhvb2sgY291
bGQgYmUgdXNlZCBhcyBjb21tb24gYmFzaXMgZm9yCj4gPiB0aGlzIG9mZmxvYWRzLCB3aXRoIHNv
bWUgc21hbGwgZXh0ZW5zaW9ucyAoYWRkaW5nIGEgJ21heF9yYXRlJyBwYXJhbSwKPiA+IHRvbyku
Cj4gCj4gdUFQSSBhc2lkZSwgd2h5IHdvdWxkIHdlIHVzZSBuZG9fc2V0dXBfdGMoVENfU0VUVVBf
UURJU0NfVEJGKQo+IHRvIGltcGxlbWVudCBjb21tb24gYmFzaXM/Cj4gCj4gSXMgaXQgbm90IGNs
ZWFuZXIgdG8gaGF2ZSBhIHNlcGFyYXRlIGRyaXZlciBBUEksIHdpdGggaXRzIG9wcwo+IGFuZCBj
YXBhYmlsaXRpZXM/CgpXZSB1bmRlcnN0YW5kIG9uZSBvZiB0aGUgZW5kIGdvYWwgaXMgY29uc29s
aWRhdGluZyB0aGUgZXhpc3RpbmcgcmF0ZS0KcmVsYXRlZCBpbiBrZXJuZWwgaW50ZXJmYWNlcy4g
IEFkZGluZyBhIG5ldyBvbmUgZG9lcyBub3QgZmVlbCBhIGdvb2QKc3RhcnRpbmcgdG8gcmVhY2gg
dGhhdCBnb2FsLCBzZWUgWzFdICYgWzJdIDspLiBuZG9fc2V0dXBfdGMoKSBmZWVscwpsaWtlIHRo
ZSBuYXR1cmFsIGNob2ljZSBmb3IgSC9XIG9mZmxvYWQgYW5kIFRCRiBpcyB0aGUgZXhpc3RpbmcK
aW50ZXJmYWNlIElNSE8gbmVhcmVzdCB0byB0aGUgcmVxdWlyZW1lbnRzIGhlcmUuCgpUaGUgZGV2
bGluayByYXRlIEFQSSBjb3VsZCBiZSBhIHBvc3NpYmxlIGFsdGVybmF0aXZlLi4uCgo+ID4gVGhl
IGlkZWEgd291bGQgYmU6Cj4gPiAtICdmaXhpbmcnIHNjaF9idGYgc28gdGhhdCB0aGUgcy93IHBh
dGggYmVjYW1lIGEgbm8tb3Agd2hlbiBoL3cgb2ZmbG9hZAo+ID4gaXMgZW5hYmxlZAo+ID4gLSBl
eHRlbmQgc2NoX2J0ZiB0byBzdXBwb3J0IG1heCByYXRlCj4gPiAtIGRvIHRoZSByZWxldmFudCBp
Y2UgaW1wbGVtZW50YXRpb24KPiA+IC0gbmRvX3NldF90eF9tYXhyYXRlIGNvdWxkIGJlIHJlcGxh
Y2VkIHdpdGggdGhlIG1lbnRpb25lZCBuZG8gY2FsbCAodGhlCj4gPiBsYXR0ZXIgaW50ZXJmYWNl
IGlzIGEgc3RyaWN0IHN1cGVyLXNldCBvZiBmb3JtZXIpCj4gPiAtIG5kb19zZXRfdmZfcmF0ZSBj
b3VsZCBhbHNvIGJlIHJlcGxhY2VkIHdpdGggdGhlIG1lbnRpb25lZCBuZG8gY2FsbAo+ID4gKHdp
dGggYW5vdGhlciBzbWFsbCBleHRlbnNpb24gdG8gdGhlIG9mZmxvYWQgZGF0YSkKPiA+IAo+ID4g
SSB0aGluayBtcXByaW8gZGVzZXJ2ZXMgaXQncyBvd24gc2VwYXJhdGUgb2ZmbG9hZCBpbnRlcmZh
Y2UsIGFzIGl0Cj4gPiBjb3ZlcnMgbXVsdGlwbGUgdGFza3Mgb3RoZXIgdGhhbiBzaGFwaW5nIChn
cm91cGluZyBxdWV1ZXMgYW5kIG1hcHBpbmcKPiA+IHByaW9yaXR5IHRvIGNsYXNzZXMpCj4gPiAK
PiA+IEluIHRoZSBsb25nIHJ1biB3ZSBjb3VsZCBoYXZlIGEgZ2VuZXJpYyBpbXBsZW1lbnRhdGlv
biBvZiB0aGUKPiA+IG5kb19zZXR1cF90YyhUQ19TRVRVUF9RRElTQ19UQkYpIGluIHRlcm0gb2Yg
ZGV2bGluayByYXRlIGFkZGluZyBhCj4gPiBnZW5lcmljIHdheSB0byBmZXRjaCB0aGUgZGV2bGlu
a19wb3J0IGluc3RhbmNlIGNvcnJlc3BvbmRpbmcgdG8gdGhlCj4gPiBnaXZlbiBuZXRkZXYgYW5k
IG1hcHBpbmcgdGhlIFRCRiBmZWF0dXJlcyB0byB0aGUgZGV2bGlua19yYXRlIEFQSS4KPiA+IAo+
ID4gTm90IHN0YXJ0aW5nIHRoaXMgZHVlIHRvIHdoYXQgSmlyaSBtZW50aW9uZWQgWzFdLgo+IAo+
IEppcmksIEFGQUlVLCBpcyBhZ2FpbnN0IHVzaW5nIGRldmxpbmsgcmF0ZSAqdUFQSSogdG8gY29u
ZmlndXJlIG5ldHdvcmsKPiByYXRlIGxpbWl0aW5nLiBUaGF0J3Mgc2VwYXJhdGUgZnJvbSB0aGUg
aW50ZXJuYWwgcmVwcmVzZW50YXRpb24uCgouLi4gd2l0aCBhIGNvdXBsZXMgb2YgY2F2ZWF0czoK
CjEpIEFGQUlDUyBkZXZsaW5rIChhbmQvb3IgZGV2bGlua19wb3J0KSBkb2VzIG5vdCBoYXZlIGZp
bmUgZ3JhaW5lZCwgcGVyCnF1ZXVlIHJlcHJlc2VudGF0aW9uIGFuZCBpbnRlbCB3YW50IHRvIGJl
IGFibGUgdG8gY29uZmlndXJlIHNoYXBpbmcgb24KcGVyIHF1ZXVlIGJhc2lzLiBJIHRoaW5rL2hv
cGUgd2UgZG9uJ3Qgd2FudCB0byBicmluZyB0aGUgZGlzY3Vzc2lvbiB0bwpleHRlbmRpbmcgdGhl
IGRldmxpbmsgaW50ZXJmYWNlIHdpdGggcXVldWUgc3VwcG9ydCwgSSBmZWFyIHRoYXQgd2lsbApi
bG9jayB1cyBmb3IgYSBsb25nIHRpbWUuIFBlcmhhcHMgSeKAmW0gbWlzc2luZyBvciBtaXN1bmRl
cnN0YW5kaW5nCnNvbWV0aGluZyBoZXJlLiBPdGhlcndpc2UgaW4gcmV0cm9zcGVjdCB0aGlzIGxv
b2tzIGxpa2UgYSByZWFzb25hYmxlCnBvaW50IHRvIGNvbXBsZXRlbHkgYXZvaWQgZGV2bGluayBo
ZXJlLgoKMikgTXkgdW5kZXJzdGFuZGluZyBvZiBKaXJpIHN0YXRlbWVudCB3YXMgbW9yZSByZXN0
cmljdGl2ZS4gQEppcmkgaXQKd291bGQgZ3JlYXQgaWYgY291bGQgc2hhcmUgeW91ciBnZW51aW5l
IGludGVycHJldGF0aW9uOiBhcmUgeW91IG9rIHdpdGgKdXNpbmcgdGhlIGRldmxpbmtfcG9ydCBy
YXRlIEFQSSBhcyBhIGJhc2lzIHRvIHJlcGxhY2UKbmRvX3NldF90eF9tYXhyYXRlKCkgKHZpYSBk
ZXYtPmRldmxpbmtfcG9ydC0+ZGV2bGluay0+KSBhbmQgcG9zc2libHkKbmRvX3NldF92Zl9yYXRl
KCkuIE5vdGUgdGhlIGdpdmVuIHRoZSBwcmV2aW91cyBwb2ludCwgdGhpcyBvcHRpb24gd291bGQK
c3RpbGwgZmVlbCBwcm9ibGVtYXRpYy4KCkNoZWVycywKClBhb2xvCgpbMV0gaHR0cHM6Ly94a2Nk
LmNvbS85MjcvClsyXSBodHRwczovL3d3dy55b3V0dWJlLmNvbS93YXRjaD92PWY4a09fTC1wRHdv
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13
aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8v
bGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
