Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D0FB6AE45D
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Mar 2023 16:18:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9BD1D6107C;
	Tue,  7 Mar 2023 15:18:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9BD1D6107C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678202316;
	bh=/GBiH4UNtQ7LWpZbHO6gAGFdYj7PuhilO6wN1Oob3tA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yjaZSYYKrCOpln8fA/t701ku/zwfAUhoPpqwv4xm99YejKYN4j2a/OAaYepKznCWB
	 t+DZIfJv4gk/fpXB80L/WynewgCE7dtdKLbQMci5w6NPDq/nbGTRsARM6qbbUfzy6X
	 JP7qR9VFopwmGVNxBRcKUOfYpUeKfoyEBkY2QMvDCBkilJjB7+2XJxQ6TRK2KPtDuV
	 Tx/r8ziXZIwIPfVT36P2XSOHeM+eTX8L6diYp/jS5tb+WDKo9H+fGV40KsX1Kdhwro
	 RqU5qehEjY2r/wEMg+rR5hXIEUsdTULV1+R2knXYUPEg6mp0S5jlb+7JGgz9hbTaxZ
	 oPzxLtMe2hR4g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3LjL6xqOUi6o; Tue,  7 Mar 2023 15:18:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8E5806106E;
	Tue,  7 Mar 2023 15:18:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8E5806106E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6CD521BF5B4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Mar 2023 15:18:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4557C4028B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Mar 2023 15:18:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4557C4028B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eqz0Gq8q3Weu for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Mar 2023 15:18:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 28EF640225
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 28EF640225
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Mar 2023 15:18:28 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id DF75960027689;
 Tue,  7 Mar 2023 16:18:25 +0100 (CET)
Message-ID: <ecd1e81b-f554-9827-4f1c-e1f0dbcf5ad8@molgen.mpg.de>
Date: Tue, 7 Mar 2023 16:18:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Ahmed Zaki <ahmed.zaki@intel.com>
References: <20230307150433.2441989-1-ahmed.zaki@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20230307150433.2441989-1-ahmed.zaki@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH] iavf: do not track VLAN 0 filters
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
Cc: michalx.jaron@intel.com, Michal Kubiak <michal.kubiak@intel.com>,
 intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBBaG1lZCwKCgpUaGFuayB5b3UgZm9yIHlvdXIgcGF0Y2guCgpBbSAwNy4wMy4yMyB1bSAx
NjowNCBzY2hyaWViIEFobWVkIFpha2k6Cj4gV2hlbiBhbiBpbnRlcmZhY2Ugd2l0aCB0aGUgbWF4
aW11bSBudW1iZXIgb2YgVkxBTiBmaWx0ZXJzIGlzIGJyb3VnaHQgdXAsCj4gYSBzcHVyaW91cyBl
cnJvciBpcyBsb2dnZWQ6Cj4gCj4gWyAgMjU3LjQ4MzA4Ml0gODAyMXE6IGFkZGluZyBWTEFOIDAg
dG8gSFcgZmlsdGVyIG9uIGRldmljZSBlbnAwczMKPiBbICAyNTcuNDgzMDk0XSBpYXZmIDAwMDA6
MDA6MDMuMCBlbnAwczM6IE1heCBhbGxvd2VkIFZMQU4gZmlsdGVycyA4LiBSZW1vdmUgZXhpc3Rp
bmcgVkxBTnMgb3IgZGlzYWJsZSBmaWx0ZXJpbmcgdmlhIEV0aHRvb2wgaWYgc3VwcG9ydGVkLgoK
KFlvdSBtaWdodCB3YW50IHRvIGluZGVudCDigJxjb2Rl4oCdIGJsb2NrcyBieSBmb3VyIHNwYWNl
cy4pCgo+IFRoZSBWRiBkcml2ZXIgY29tcGxhaW5zIHRoYXQgaXQgY2Fubm90IGFkZCB0aGUgVkxB
TiAwIGZpbHRlci4KPiAKPiBPbiB0aGUgb3RoZXIgaGFuZCwgdGhlIFBGIGRyaXZlciBhbHdheXMg
YWRkcyBWTEFOIDAgZmlsdGVyIG9uIFZGCj4gaW5pdGlhbGl6YXRpb24uIFRoZSBWRiBkb2VzIG5v
dCBuZWVkIHRvIGFzayB0aGUgUEYgZm9yIHRoYXQgZmlsdGVyIGF0Cj4gYWxsLgo+IAo+IEZpeCB0
aGUgZXJyb3IgYnkgbm90IHRyYWNraW5nIFZMQU4gMCBmaWx0ZXJzIGFsdG9nZXRoZXIuIFdpdGgg
dGhhdCwgdGhlCj4gY2hlY2sgZGRlZCBieSBjb21taXQgMGU3MTBhM2ZmZDBjICgiaWF2ZjogRml4
IFZGIGRyaXZlciBjb3VudGluZyBWTEFOIDAKCiphKmRkZWQKCj4gZmlsdGVycyIpIGluIGlhdmZf
dmlydGNobmwuYyBpcyB1c2VsZXNzIGFuZCBtaWdodCBiZSBjb25mdXNpbmcgaWYgbGVmdCBhcwo+
IGl0IHN1Z2dlc3RzIHRoYXQgd2UgdHJhY2sgVkxBTiAwLgo+IAo+IEZpeGVzOiAwZTcxMGEzZmZk
MGMgKCJpYXZmOiBGaXggVkYgZHJpdmVyIGNvdW50aW5nIFZMQU4gMCBmaWx0ZXJzIikKPiBTaWdu
ZWQtb2ZmLWJ5OiBBaG1lZCBaYWtpIDxhaG1lZC56YWtpQGludGVsLmNvbT4KPiBSZXZpZXdlZC1i
eTogTWljaGFsIEt1YmlhayA8bWljaGFsLmt1Ymlha0BpbnRlbC5jb20+Cj4gLS0tCj4gICBkcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfbWFpbi5jICAgICB8IDQgKysrKwo+ICAg
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX3ZpcnRjaG5sLmMgfCAyIC0tCj4g
ICAyIGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX21haW4uYyBi
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl9tYWluLmMKPiBpbmRleCAzMjcz
YWViOGZhNjcuLmQ0ZTUwZjZlZDE0YiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pYXZmL2lhdmZfbWFpbi5jCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWF2Zi9pYXZmX21haW4uYwo+IEBAIC04OTMsNiArODkzLDEwIEBAIHN0YXRpYyBpbnQgaWF2
Zl92bGFuX3J4X2FkZF92aWQoc3RydWN0IG5ldF9kZXZpY2UgKm5ldGRldiwKPiAgIHsKPiAgIAlz
dHJ1Y3QgaWF2Zl9hZGFwdGVyICphZGFwdGVyID0gbmV0ZGV2X3ByaXYobmV0ZGV2KTsKPiAgIAo+
ICsJLyogVGhlIFBGIGFsd2F5cyBhZGRzIFZMQU4gMCBmaWx0ZXJzIG9uIFZGIGluaXQgKi8KPiAr
CWlmICghdmlkKQo+ICsJCXJldHVybiAwOwo+ICsKPiAgIAlpZiAoIVZMQU5fRklMVEVSSU5HX0FM
TE9XRUQoYWRhcHRlcikpCj4gICAJCXJldHVybiAtRUlPOwo+ICAgCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl92aXJ0Y2hubC5jIGIvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX3ZpcnRjaG5sLmMKPiBpbmRleCA2ZDIzMzM4NjA0
YmIuLjRlMTdkMDA2YzUyZCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pYXZmL2lhdmZfdmlydGNobmwuYwo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2lhdmYvaWF2Zl92aXJ0Y2hubC5jCj4gQEAgLTI0NDYsOCArMjQ0Niw2IEBAIHZvaWQgaWF2Zl92
aXJ0Y2hubF9jb21wbGV0aW9uKHN0cnVjdCBpYXZmX2FkYXB0ZXIgKmFkYXB0ZXIsCj4gICAJCWxp
c3RfZm9yX2VhY2hfZW50cnkoZiwgJmFkYXB0ZXItPnZsYW5fZmlsdGVyX2xpc3QsIGxpc3QpIHsK
PiAgIAkJCWlmIChmLT5pc19uZXdfdmxhbikgewo+ICAgCQkJCWYtPmlzX25ld192bGFuID0gZmFs
c2U7Cj4gLQkJCQlpZiAoIWYtPnZsYW4udmlkKQo+IC0JCQkJCWNvbnRpbnVlOwoKSXMgYSBjb21t
ZW50IHdhcnJhbnRlZCwgdGhhdCBWTEFOIDAgaXMgbm90IHRyYWNrZWQ/Cgo+ICAgCQkJCWlmIChm
LT52bGFuLnRwaWQgPT0gRVRIX1BfODAyMVEpCj4gICAJCQkJCXNldF9iaXQoZi0+dmxhbi52aWQs
Cj4gICAJCQkJCQlhZGFwdGVyLT52c2kuYWN0aXZlX2N2bGFucyk7CgoKS2luZCByZWdhcmRzLAoK
UGF1bApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBz
Oi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
