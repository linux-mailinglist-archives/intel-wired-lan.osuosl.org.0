Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 27BF67CE0D7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Oct 2023 17:12:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A70F682A95;
	Wed, 18 Oct 2023 15:12:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A70F682A95
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697641937;
	bh=7ThJ3nNMCDeqKdyEssiK1XXIB5d1e5cs7qiFHaWMk3k=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jEkcqm5rHMp0orpzMkQWlLM2+DQKPwj4AxK+EGmnT91ONPOUfQ3gvuCDtPL+3M7yC
	 WT3zX6D3lHZQ/pVr9GFDiUY7xxR2F1GSDM+fNCJ3bKYFsTDY+8KiffMjZBpmb1jTUI
	 /K4ls4MAmz2tGyiZK6VT1/lbJyn68mlVtYhOIr0lvreb5oo87VosruOMYe6m/Ep1k5
	 kOapvdeDte/fr7VCPqbQiHIIJhrCi3UA2xrqebZ+3m88oaoWG8ZK6LwnsEnK2f26Z/
	 Hvi0SW09b4OHuoZeGTCacmLFH16yU9Sqj4GSY9eMEMkkDa5AeXydSd6U3iUYnwP+uK
	 OaiBFfIRswBpw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q9bgSim7tYkt; Wed, 18 Oct 2023 15:12:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 48D1082A26;
	Wed, 18 Oct 2023 15:12:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 48D1082A26
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CE5211BF342
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 15:12:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B976840960
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 15:12:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B976840960
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o5RjSij7KkF3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Oct 2023 15:12:03 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3EBC24041C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 15:12:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3EBC24041C
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-304-cyKcGkZsNXWIeUpr12tw6w-1; Wed, 18 Oct 2023 11:12:00 -0400
X-MC-Unique: cyKcGkZsNXWIeUpr12tw6w-1
Received: by mail-ed1-f71.google.com with SMTP id
 4fb4d7f45d1cf-531373ea109so5435001a12.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 08:12:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697641919; x=1698246719;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Oknl0tzZjYgfj+FvCflwMFT5Qcpl1UdpPsHz4BEcfKI=;
 b=aBgr5UnEh1DbzkBz0a41nrEw2Hwm9B7jI947wJRolk5KTmK5MHG0wco1WTQS6sq47P
 ymIPeNy/wqrkaJ4wPY7rFQ36pemA31PdIrMVgKPEehlQdEpjixygmgrGANwb4beLpeWf
 hAudZgwJsD+ZCafKHXb30wkrA9Ngotoapp1/4P3yJxoieVQ9wmz6KHq3LDECNyzWErl4
 MsGo5dB7IApj0gpMJio56tqltu2BvU4T75/vpMPJvNXuKzcqPzPMs3dPR9J7qFnu039v
 u3AQ1YPkiauhaUtmllko4TVHL0STtPJ0FIDyo38nLsG55IZXcYIRkljkJO99oFH8MV/+
 s0DA==
X-Gm-Message-State: AOJu0YxYJfU3UgpPx8i91y0Hp4Lorrw3yTNI95t8fb2kNXgjc7b66mM0
 7C0mHRyzEZqUR9eoTC9ZyRmVJyM0nJMunSEwiUdyZ/Xwld5tI1XiUYC66HA820Z7b01Mis7EHUH
 wwRxnDqzT2f20TmSkXRUzhZQpMpUoSJ+Dl5F8RkE/+Cs3Lw==
X-Received: by 2002:aa7:de06:0:b0:53e:1434:25db with SMTP id
 h6-20020aa7de06000000b0053e143425dbmr4141079edv.23.1697641919609; 
 Wed, 18 Oct 2023 08:11:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEZY6bEkCfGGr8PoYsNO6ytD3QdjUKfnwYetqLuukET8Qug2EOJRm0Krk6PXfhzRDqnXCuFmuaQQeo5xsqVTwI=
X-Received: by 2002:aa7:de06:0:b0:53e:1434:25db with SMTP id
 h6-20020aa7de06000000b0053e143425dbmr4141060edv.23.1697641919225; Wed, 18 Oct
 2023 08:11:59 -0700 (PDT)
MIME-Version: 1.0
References: <20231018111527.78194-1-mschmidt@redhat.com>
 <MW4PR11MB577642AB058202687D511502FDD5A@MW4PR11MB5776.namprd11.prod.outlook.com>
In-Reply-To: <MW4PR11MB577642AB058202687D511502FDD5A@MW4PR11MB5776.namprd11.prod.outlook.com>
From: Michal Schmidt <mschmidt@redhat.com>
Date: Wed, 18 Oct 2023 17:11:48 +0200
Message-ID: <CADEbmW34Xu9Hq+LN0WfiYZyjnJ244K970wjn-0p-e1tpBkmsDw@mail.gmail.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 Ivan Vecera <ivecera@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1697641922;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Oknl0tzZjYgfj+FvCflwMFT5Qcpl1UdpPsHz4BEcfKI=;
 b=VF7+jTy+JTrojjd+3cjQgfh24EwLxUHnasG0LpnY+1sQTn3KK+ndDD9tytlwR+XGqqHyTL
 D3YtATemFTsT17lor1dmyyYzohV+0oVcybJZVtqMBmzsO1outuMwpZP16dPgLYIZi7xeRH
 q6KgPPiK5aSxEQD/YWxmBq7oJvU5KQg=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=VF7+jTy+
Subject: Re: [Intel-wired-lan] [PATCH net-next] iavf: delete unused
 iavf_mac_info fields
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
Cc: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gV2VkLCBPY3QgMTgsIDIwMjMgYXQgMToyNuKAr1BNIERyZXdlaywgV29qY2llY2gKPHdvamNp
ZWNoLmRyZXdla0BpbnRlbC5jb20+IHdyb3RlOgo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0t
LS0KPiA+IEZyb206IE1pY2hhbCBTY2htaWR0IDxtc2NobWlkdEByZWRoYXQuY29tPgo+ID4gU2Vu
dDogV2VkbmVzZGF5LCBPY3RvYmVyIDE4LCAyMDIzIDE6MTUgUE0KPiA+IFRvOiBpbnRlbC13aXJl
ZC1sYW5AbGlzdHMub3N1b3NsLm9yZwo+ID4gQ2M6IEtlbGxlciwgSmFjb2IgRSA8amFjb2IuZS5r
ZWxsZXJAaW50ZWwuY29tPjsgRHJld2VrLCBXb2pjaWVjaAo+ID4gPHdvamNpZWNoLmRyZXdla0Bp
bnRlbC5jb20+OyBCcmFuZGVidXJnLCBKZXNzZQo+ID4gPGplc3NlLmJyYW5kZWJ1cmdAaW50ZWwu
Y29tPjsgTmd1eWVuLCBBbnRob255IEwKPiA+IDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT47
IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmcKPiA+IFN1YmplY3Q6IFtQQVRDSCBuZXQtbmV4dF0gaWF2
ZjogZGVsZXRlIHVudXNlZCBpYXZmX21hY19pbmZvIGZpZWxkcwo+ID4KPiA+ICdzYW5fYWRkcicg
YW5kICdtYWNfZmNvZXEnIG1lbWJlcnMgb2Ygc3RydWN0IGlhdmZfbWFjX2luZm8gYXJlIHVudXNl
ZC4KPiA+ICd0eXBlJyBpcyB3cml0ZS1vbmx5LiBEZWxldGUgYWxsIHRocmVlLgo+ID4KPiA+IFRo
ZSBmdW5jdGlvbiBpYXZmX3NldF9tYWNfdHlwZSB0aGF0IHNldHMgJ3R5cGUnIGFsc28gY2hlY2tz
IGlmIHRoZSBQQ0kKPiA+IHZlbmRvciBJRCBpcyBJbnRlbC4gVGhpcyBpcyB1bm5lY2Vzc2FyeS4g
RGVsZXRlIHRoZSB3aG9sZSBmdW5jdGlvbi4KPiA+Cj4gPiBJZiBpbiB0aGUgZnV0dXJlIHRoZXJl
J3MgYSBuZWVkIGZvciB0aGUgTUFDIHR5cGUgKG9yIG90aGVyIFBDSQo+ID4gSUQtZGVwZW5kZW50
IGRhdGEpLCBJIHdvdWxkIHByZWZlciB0byB1c2UgLmRyaXZlcl9kYXRhIGluIGlhdmZfcGNpX3Ri
bFtdCj4gPiBmb3IgdGhpcyBwdXJwb3NlLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IE1pY2hhbCBT
Y2htaWR0IDxtc2NobWlkdEByZWRoYXQuY29tPgo+Cj4gUmV2aWV3ZWQtYnk6IFdvamNpZWNoIERy
ZXdlayA8d29qY2llY2guZHJld2VrQGludGVsLmNvbT4KPgo+IE5pY2UgY2xlYW51cCwgSSd2ZSBz
ZWVuIHNpbWlsYXIgdW51c2VkIGZpZWxkcyBpbiBpNDBlIGFzIHdlbGwuCj4gQW55IHBsYW5zIGZv
ciBpNDBlIGNsZWFudXA/CgpObywgSSBhbSBub3QgcGxhbm5pbmcgdG8gbG9vayBpbnRvIGk0MGUg
Y2xlYW51cHMgaW4gdGhlIG5lYXIgZnV0dXJlLgpJdmFuIG1pZ2h0IHdhbnQgdG8gZG8gdGhhdCB0
aG91Z2guIFtBZGRpbmcgaGltIHRvIHRoZSB0aHJlYWRdCk1pY2hhbAoKPiA+IC0tLQo+ID4gIGRy
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl9jb21tb24uYyB8IDMyIC0tLS0tLS0t
LS0tLS0tLS0tLS0KPiA+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfbWFp
bi5jICAgfCAgNSAtLS0KPiA+ICAuLi4vbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl9wcm90
b3R5cGUuaCAgfCAgMiAtLQo+ID4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2
Zl90eXBlLmggICB8IDEyIC0tLS0tLS0KPiA+ICA0IGZpbGVzIGNoYW5nZWQsIDUxIGRlbGV0aW9u
cygtKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZm
L2lhdmZfY29tbW9uLmMKPiA+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZm
X2NvbW1vbi5jCj4gPiBpbmRleCAxYWZkNzYxZDgwNTIuLjgwOTFlNmZlY2EwMSAxMDA2NDQKPiA+
IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl9jb21tb24uYwo+ID4g
KysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX2NvbW1vbi5jCj4gPiBA
QCAtNiwzOCArNiw2IEBACj4gPiAgI2luY2x1ZGUgImlhdmZfcHJvdG90eXBlLmgiCj4gPiAgI2lu
Y2x1ZGUgPGxpbnV4L2F2Zi92aXJ0Y2hubC5oPgo+ID4KPiA+IC0vKioKPiA+IC0gKiBpYXZmX3Nl
dF9tYWNfdHlwZSAtIFNldHMgTUFDIHR5cGUKPiA+IC0gKiBAaHc6IHBvaW50ZXIgdG8gdGhlIEhX
IHN0cnVjdHVyZQo+ID4gLSAqCj4gPiAtICogVGhpcyBmdW5jdGlvbiBzZXRzIHRoZSBtYWMgdHlw
ZSBvZiB0aGUgYWRhcHRlciBiYXNlZCBvbiB0aGUKPiA+IC0gKiB2ZW5kb3IgSUQgYW5kIGRldmlj
ZSBJRCBzdG9yZWQgaW4gdGhlIGh3IHN0cnVjdHVyZS4KPiA+IC0gKiovCj4gPiAtZW51bSBpYXZm
X3N0YXR1cyBpYXZmX3NldF9tYWNfdHlwZShzdHJ1Y3QgaWF2Zl9odyAqaHcpCj4gPiAtewo+ID4g
LSAgICAgZW51bSBpYXZmX3N0YXR1cyBzdGF0dXMgPSAwOwo+ID4gLQo+ID4gLSAgICAgaWYgKGh3
LT52ZW5kb3JfaWQgPT0gUENJX1ZFTkRPUl9JRF9JTlRFTCkgewo+ID4gLSAgICAgICAgICAgICBz
d2l0Y2ggKGh3LT5kZXZpY2VfaWQpIHsKPiA+IC0gICAgICAgICAgICAgY2FzZSBJQVZGX0RFVl9J
RF9YNzIyX1ZGOgo+ID4gLSAgICAgICAgICAgICAgICAgICAgIGh3LT5tYWMudHlwZSA9IElBVkZf
TUFDX1g3MjJfVkY7Cj4gPiAtICAgICAgICAgICAgICAgICAgICAgYnJlYWs7Cj4gPiAtICAgICAg
ICAgICAgIGNhc2UgSUFWRl9ERVZfSURfVkY6Cj4gPiAtICAgICAgICAgICAgIGNhc2UgSUFWRl9E
RVZfSURfVkZfSFY6Cj4gPiAtICAgICAgICAgICAgIGNhc2UgSUFWRl9ERVZfSURfQURBUFRJVkVf
VkY6Cj4gPiAtICAgICAgICAgICAgICAgICAgICAgaHctPm1hYy50eXBlID0gSUFWRl9NQUNfVkY7
Cj4gPiAtICAgICAgICAgICAgICAgICAgICAgYnJlYWs7Cj4gPiAtICAgICAgICAgICAgIGRlZmF1
bHQ6Cj4gPiAtICAgICAgICAgICAgICAgICAgICAgaHctPm1hYy50eXBlID0gSUFWRl9NQUNfR0VO
RVJJQzsKPiA+IC0gICAgICAgICAgICAgICAgICAgICBicmVhazsKPiA+IC0gICAgICAgICAgICAg
fQo+ID4gLSAgICAgfSBlbHNlIHsKPiA+IC0gICAgICAgICAgICAgc3RhdHVzID0gSUFWRl9FUlJf
REVWSUNFX05PVF9TVVBQT1JURUQ7Cj4gPiAtICAgICB9Cj4gPiAtCj4gPiAtICAgICByZXR1cm4g
c3RhdHVzOwo+ID4gLX0KPiA+IC0KPiA+ICAvKioKPiA+ICAgKiBpYXZmX2FxX3N0ciAtIGNvbnZl
cnQgQVEgZXJyIGNvZGUgdG8gYSBzdHJpbmcKPiA+ICAgKiBAaHc6IHBvaW50ZXIgdG8gdGhlIEhX
IHN0cnVjdHVyZQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lh
dmYvaWF2Zl9tYWluLmMKPiA+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZm
X21haW4uYwo+ID4gaW5kZXggNzY4YmVjNjc4MjVhLi5jODYyZWJjZDJlMzkgMTAwNjQ0Cj4gPiAt
LS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfbWFpbi5jCj4gPiArKysg
Yi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfbWFpbi5jCj4gPiBAQCAtMjM2
MywxMSArMjM2Myw2IEBAIHN0YXRpYyB2b2lkIGlhdmZfc3RhcnR1cChzdHJ1Y3QgaWF2Zl9hZGFw
dGVyCj4gPiAqYWRhcHRlcikKPiA+ICAgICAgIC8qIGRyaXZlciBsb2FkZWQsIHByb2JlIGNvbXBs
ZXRlICovCj4gPiAgICAgICBhZGFwdGVyLT5mbGFncyAmPSB+SUFWRl9GTEFHX1BGX0NPTU1TX0ZB
SUxFRDsKPiA+ICAgICAgIGFkYXB0ZXItPmZsYWdzICY9IH5JQVZGX0ZMQUdfUkVTRVRfUEVORElO
RzsKPiA+IC0gICAgIHN0YXR1cyA9IGlhdmZfc2V0X21hY190eXBlKGh3KTsKPiA+IC0gICAgIGlm
IChzdGF0dXMpIHsKPiA+IC0gICAgICAgICAgICAgZGV2X2VycigmcGRldi0+ZGV2LCAiRmFpbGVk
IHRvIHNldCBNQUMgdHlwZSAoJWQpXG4iLAo+ID4gc3RhdHVzKTsKPiA+IC0gICAgICAgICAgICAg
Z290byBlcnI7Cj4gPiAtICAgICB9Cj4gPgo+ID4gICAgICAgcmV0ID0gaWF2Zl9jaGVja19yZXNl
dF9jb21wbGV0ZShodyk7Cj4gPiAgICAgICBpZiAocmV0KSB7Cj4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX3Byb3RvdHlwZS5oCj4gPiBiL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl9wcm90b3R5cGUuaAo+ID4gaW5kZXggOTQw
Y2I0MjAzZmJlLi40YTQ4ZTYxNzE0MDUgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pYXZmL2lhdmZfcHJvdG90eXBlLmgKPiA+ICsrKyBiL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2lhdmYvaWF2Zl9wcm90b3R5cGUuaAo+ID4gQEAgLTQ1LDggKzQ1LDYgQEAg
ZW51bSBpYXZmX3N0YXR1cyBpYXZmX2FxX3NldF9yc3NfbHV0KHN0cnVjdCBpYXZmX2h3Cj4gPiAq
aHcsIHUxNiBzZWlkLAo+ID4gIGVudW0gaWF2Zl9zdGF0dXMgaWF2Zl9hcV9zZXRfcnNzX2tleShz
dHJ1Y3QgaWF2Zl9odyAqaHcsIHUxNiBzZWlkLAo+ID4gICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBzdHJ1Y3QgaWF2Zl9hcWNfZ2V0X3NldF9yc3Nfa2V5X2RhdGEgKmtleSk7Cj4g
Pgo+ID4gLWVudW0gaWF2Zl9zdGF0dXMgaWF2Zl9zZXRfbWFjX3R5cGUoc3RydWN0IGlhdmZfaHcg
Kmh3KTsKPiA+IC0KPiA+ICBleHRlcm4gc3RydWN0IGlhdmZfcnhfcHR5cGVfZGVjb2RlZCBpYXZm
X3B0eXBlX2xvb2t1cFtdOwo+ID4KPiA+ICBzdGF0aWMgaW5saW5lIHN0cnVjdCBpYXZmX3J4X3B0
eXBlX2RlY29kZWQgZGVjb2RlX3J4X2Rlc2NfcHR5cGUodTggcHR5cGUpCj4gPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX3R5cGUuaAo+ID4gYi9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfdHlwZS5oCj4gPiBpbmRleCA5ZjFmNTIz
ODA3YzQuLjJiNmEyMDdmYTQ0MSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2lhdmYvaWF2Zl90eXBlLmgKPiA+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2lhdmYvaWF2Zl90eXBlLmgKPiA+IEBAIC02OSwxNSArNjksNiBAQCBlbnVtIGlhdmZfZGVi
dWdfbWFzayB7Cj4gPiAgICogdGhlIEZpcm13YXJlIGFuZCBBZG1pblEgYXJlIGludGVuZGVkIHRv
IGluc3VsYXRlIHRoZSBkcml2ZXIgZnJvbSBtb3N0IG9mCj4gPiB0aGUKPiA+ICAgKiBmdXR1cmUg
Y2hhbmdlcywgYnV0IHRoZXNlIHN0cnVjdHVyZXMgd2lsbCBhbHNvIGRvIHBhcnQgb2YgdGhlIGpv
Yi4KPiA+ICAgKi8KPiA+IC1lbnVtIGlhdmZfbWFjX3R5cGUgewo+ID4gLSAgICAgSUFWRl9NQUNf
VU5LTk9XTiA9IDAsCj4gPiAtICAgICBJQVZGX01BQ19YTDcxMCwKPiA+IC0gICAgIElBVkZfTUFD
X1ZGLAo+ID4gLSAgICAgSUFWRl9NQUNfWDcyMiwKPiA+IC0gICAgIElBVkZfTUFDX1g3MjJfVkYs
Cj4gPiAtICAgICBJQVZGX01BQ19HRU5FUklDLAo+ID4gLX07Cj4gPiAtCj4gPiAgZW51bSBpYXZm
X3ZzaV90eXBlIHsKPiA+ICAgICAgIElBVkZfVlNJX01BSU4gICA9IDAsCj4gPiAgICAgICBJQVZG
X1ZTSV9WTURRMSAgPSAxLAo+ID4gQEAgLTExMCwxMSArMTAxLDggQEAgc3RydWN0IGlhdmZfaHdf
Y2FwYWJpbGl0aWVzIHsKPiA+ICB9Owo+ID4KPiA+ICBzdHJ1Y3QgaWF2Zl9tYWNfaW5mbyB7Cj4g
PiAtICAgICBlbnVtIGlhdmZfbWFjX3R5cGUgdHlwZTsKPiA+ICAgICAgIHU4IGFkZHJbRVRIX0FM
RU5dOwo+ID4gICAgICAgdTggcGVybV9hZGRyW0VUSF9BTEVOXTsKPiA+IC0gICAgIHU4IHNhbl9h
ZGRyW0VUSF9BTEVOXTsKPiA+IC0gICAgIHUxNiBtYXhfZmNvZXE7Cj4gPiAgfTsKPiA+Cj4gPiAg
LyogUENJIGJ1cyB0eXBlcyAqLwo+ID4gLS0KPiA+IDIuNDEuMAo+CgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBs
aXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
