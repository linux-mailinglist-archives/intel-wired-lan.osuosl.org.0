Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0419E797068
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Sep 2023 09:01:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 510FC611F8;
	Thu,  7 Sep 2023 07:01:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 510FC611F8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694070088;
	bh=leL6+NixIDHY7C4ZxnaKWzymhnUI86nikbkNvphYTDU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:Cc:From;
	b=4qO+sVSKmosp2VS08UgX0FQCgkydZd9KcExsXw42XAcg7wOAZ+ofssnegugpjAmLO
	 J41lX/lWh5Plh/elnqd1zPe+L5iNrZvQ5oAc0vcuwQmE5pJIqc2uJtAxsLVmyH0mDf
	 ZuEe8VQlOI8pQM+mJUlslEM14OLiTivxa2SaXeyTi+7l/7Z2eZ5awj53FUYfZ5OqP0
	 sNWb8JygsjLNRF8A89yVXT+mThLhvhLaix74Wl76A3wR28ejYNupW+yAhmr67Hsktj
	 9u5cKD4M7F4zTSRpx+WMadH0ZeOqsCBobokWQOmCSMI4b90zQJYAfeXL1O09/58uCO
	 inCmszqCOg53w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vg0E1Iom6icx; Thu,  7 Sep 2023 07:01:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 320C0611FB;
	Thu,  7 Sep 2023 07:01:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 320C0611FB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6C8B31BF408
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Sep 2023 07:01:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 43EF6611F7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Sep 2023 07:01:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 43EF6611F7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KxKpONOM-zQe for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Sep 2023 07:01:18 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 48BB760BF2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Sep 2023 07:01:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 48BB760BF2
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-471-9l5RflvvNjKuEWBB9MTDaA-1; Thu, 07 Sep 2023 03:01:15 -0400
X-MC-Unique: 9l5RflvvNjKuEWBB9MTDaA-1
Received: by mail-ej1-f69.google.com with SMTP id
 a640c23a62f3a-9a59528f7d2so35087866b.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 07 Sep 2023 00:01:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1694070074; x=1694674874;
 h=mime-version:user-agent:content-transfer-encoding:organization
 :references:in-reply-to:date:cc:to:reply-to:from:subject:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=VTcoIP+BxxdE5HCzwkgXZ5pvDvriKUgCpDo0vVsd7mk=;
 b=WamfvL4HxXFM8rukjH+W916Gpjup1txiubTr975DG3FfI02FpfaaxCIjeNUXtL/T6E
 K9QTrdiind8cR4FzdyMp5rD2T1six8sqC62bUmvxOCKq3EZeIknl8HPZkTh/9n+Lh5D0
 v2mkaSgFzKM/kXudXsAiZtnP6SuoJvnZ5BhZlTG0skHFTOTH9HE3ClSqUc8Ji3JVHwU2
 c+Wl7BYaI+7ovr7XPkDH7KkSgFSQ48E5xz4EkQvkUBghGb383cmeIU5J9xIsbmbj9vlc
 WyTkvT81Mf7XJdmUEuO3/Gh84/GsiiPmiOveZrAx2YRm/7ibw9NFbzxZKD6cTYgsOL42
 m6jw==
X-Gm-Message-State: AOJu0YxVqHgNDRpZpNxwTq/lPOZcBlqc6L/Jn7L+AoJtwcFB3QRVDSLe
 B5s7HzuW6xtbeBKMCKLsH/s5Oa0FdVKm6ouIM0EF34WZzyYgB+Y+v8N4whKTxyULZHKnDsVhYMk
 B5zZdz3ZGQ0bQU34EDSaqlHWh/Yb4LA==
X-Received: by 2002:a17:907:2bd1:b0:9a2:120a:5779 with SMTP id
 gv17-20020a1709072bd100b009a2120a5779mr3861397ejc.60.1694070074675; 
 Thu, 07 Sep 2023 00:01:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEC/WLksUsozPJJzUtAHQVN8tmHoVEXTKyeYuwNnag5MRAgx6Av6BIm0cEM4J/UKhVcOE0/uw==
X-Received: by 2002:a17:907:2bd1:b0:9a2:120a:5779 with SMTP id
 gv17-20020a1709072bd100b009a2120a5779mr3861382ejc.60.1694070074354; 
 Thu, 07 Sep 2023 00:01:14 -0700 (PDT)
Received: from [192.168.2.56] ([46.175.183.46])
 by smtp.gmail.com with ESMTPSA id
 gs10-20020a170906f18a00b00988e953a586sm9992680ejb.61.2023.09.07.00.01.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Sep 2023 00:01:13 -0700 (PDT)
Message-ID: <e461ea2d6134c0f3cfd765d53d6a2228c1bb3677.camel@redhat.com>
From: Petr Oros <poros@redhat.com>
To: Ahmed Zaki <ahmed.zaki@intel.com>, netdev@vger.kernel.org
Date: Thu, 07 Sep 2023 09:01:10 +0200
In-Reply-To: <bbb51ddd-ceb1-63a8-a06a-f365da5ac4b7@intel.com>
References: <20230906141411.121142-1-poros@redhat.com>
 <bbb51ddd-ceb1-63a8-a06a-f365da5ac4b7@intel.com>
Organization: Red Hat
User-Agent: Evolution 3.48.4
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1694070077;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=VTcoIP+BxxdE5HCzwkgXZ5pvDvriKUgCpDo0vVsd7mk=;
 b=iBhle4v5qUnp9ulYtzemKV45bPYiWSWiwgQtwlnXcTCUI/Gfdq21JWNdBo7y6ove+vmfjN
 3RGh5qgG4Qp1jBbuyZScAt3iFDD94CrakOGD6L84/tY1FGFT8aIY0mQDb3fE4SZKm961YB
 DSTRTArkQU9ISSSPE2y8fLsJmSNCUnk=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=iBhle4v5
Subject: Re: [Intel-wired-lan] [PATCH net 1/2] iavf: add
 iavf_schedule_aq_request() helper
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
Cc: ivecera@redhat.com, jesse.brandeburg@intel.com,
 linux-kernel@vger.kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 kuba@kernel.org, intel-wired-lan@lists.osuosl.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

QWhtZWQgWmFraSBww63FoWUgdiBTdCAwNi4gMDkuIDIwMjMgdiAwOTozMiAtMDYwMDoKPiAKPiBP
biAyMDIzLTA5LTA2IDA4OjE0LCBQZXRyIE9yb3Mgd3JvdGU6Cj4gPiBBZGQgaGVscGVyIGZvciBz
ZXQgaWF2ZiBhcSByZXF1ZXN0IEFWRl9GTEFHX0FRXyogYW5kIGltZWRpYXRlbHkKPiA+IHNjaGVk
dWxlIHdhdGNoZG9nX3Rhc2suIEhlbHBlciB3aWxsIGJlIHVzZWQgaW4gY2FzZXMgd2hlcmUgaXQg
aXMKPiA+IG5lY2Vzc2FyeSB0byBydW4gYXEgcmVxdWVzdHMgYXNhcAo+ID4gCj4gPiBTaWduZWQt
b2ZmLWJ5OiBQZXRyIE9yb3MgPHBvcm9zQHJlZGhhdC5jb20+Cj4gPiBDby1kZXZlbG9wZWQtYnk6
IE1pY2hhbCBTY2htaWR0IDxtc2NobWlkdEByZWRoYXQuY29tPgo+ID4gU2lnbmVkLW9mZi1ieTog
TWljaGFsIFNjaG1pZHQgPG1zY2htaWR0QHJlZGhhdC5jb20+Cj4gPiBDby1kZXZlbG9wZWQtYnk6
IEl2YW4gVmVjZXJhIDxpdmVjZXJhQHJlZGhhdC5jb20+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBJdmFu
IFZlY2VyYSA8aXZlY2VyYUByZWRoYXQuY29tPgo+ID4gLS0tCj4gPiDCoCBkcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pYXZmL2lhdmYuaMKgwqDCoMKgwqDCoMKgwqAgfMKgIDIgKy0KPiA+IMKg
IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl9ldGh0b29sLmMgfMKgIDIgKy0K
PiA+IMKgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl9tYWluLmPCoMKgwqAg
fCAxMCArKysrLS0tLS0tCj4gPiDCoCAzIGZpbGVzIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwg
OCBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2lhdmYvaWF2Zi5oCj4gPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYv
aWF2Zi5oCj4gPiBpbmRleCA4NWZiYTg1ZmJiMjMyYi4uZTExMGJhMzQ2MTg1N2IgMTAwNjQ0Cj4g
PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmYuaAo+ID4gKysrIGIv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmLmgKPiA+IEBAIC01MjEsNyArNTIx
LDcgQEAgdm9pZCBpYXZmX2Rvd24oc3RydWN0IGlhdmZfYWRhcHRlciAqYWRhcHRlcik7Cj4gPiDC
oCBpbnQgaWF2Zl9wcm9jZXNzX2NvbmZpZyhzdHJ1Y3QgaWF2Zl9hZGFwdGVyICphZGFwdGVyKTsK
PiA+IMKgIGludCBpYXZmX3BhcnNlX3ZmX3Jlc291cmNlX21zZyhzdHJ1Y3QgaWF2Zl9hZGFwdGVy
ICphZGFwdGVyKTsKPiA+IMKgIHZvaWQgaWF2Zl9zY2hlZHVsZV9yZXNldChzdHJ1Y3QgaWF2Zl9h
ZGFwdGVyICphZGFwdGVyLCB1NjQKPiA+IGZsYWdzKTsKPiA+IC12b2lkIGlhdmZfc2NoZWR1bGVf
cmVxdWVzdF9zdGF0cyhzdHJ1Y3QgaWF2Zl9hZGFwdGVyICphZGFwdGVyKTsKPiA+ICt2b2lkIGlh
dmZfc2NoZWR1bGVfYXFfcmVxdWVzdChzdHJ1Y3QgaWF2Zl9hZGFwdGVyICphZGFwdGVyLCB1NjQK
PiA+IGZsYWdzKTsKPiA+IMKgIHZvaWQgaWF2Zl9zY2hlZHVsZV9maW5pc2hfY29uZmlnKHN0cnVj
dCBpYXZmX2FkYXB0ZXIgKmFkYXB0ZXIpOwo+ID4gwqAgdm9pZCBpYXZmX3Jlc2V0KHN0cnVjdCBp
YXZmX2FkYXB0ZXIgKmFkYXB0ZXIpOwo+ID4gwqAgdm9pZCBpYXZmX3NldF9ldGh0b29sX29wcyhz
dHJ1Y3QgbmV0X2RldmljZSAqbmV0ZGV2KTsKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfZXRodG9vbC5jCj4gPiBiL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2lhdmYvaWF2Zl9ldGh0b29sLmMKPiA+IGluZGV4IGEzNDMwM2FkMDU3ZDAwLi45
MDM5NzI5MzUyNWY3MSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2lhdmYvaWF2Zl9ldGh0b29sLmMKPiA+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2lhdmYvaWF2Zl9ldGh0b29sLmMKPiA+IEBAIC0zNjIsNyArMzYyLDcgQEAgc3RhdGljIHZvaWQg
aWF2Zl9nZXRfZXRodG9vbF9zdGF0cyhzdHJ1Y3QKPiA+IG5ldF9kZXZpY2UgKm5ldGRldiwKPiA+
IMKgwqDCoMKgwqDCoMKgwqB1bnNpZ25lZCBpbnQgaTsKPiA+IMKgIAo+ID4gwqDCoMKgwqDCoMKg
wqDCoC8qIEV4cGxpY2l0bHkgcmVxdWVzdCBzdGF0cyByZWZyZXNoICovCj4gPiAtwqDCoMKgwqDC
oMKgwqBpYXZmX3NjaGVkdWxlX3JlcXVlc3Rfc3RhdHMoYWRhcHRlcik7Cj4gPiArwqDCoMKgwqDC
oMKgwqBpYXZmX3NjaGVkdWxlX2FxX3JlcXVlc3QoYWRhcHRlciwKPiA+IElBVkZfRkxBR19BUV9S
RVFVRVNUX1NUQVRTKTsKPiA+IMKgIAo+ID4gwqDCoMKgwqDCoMKgwqDCoGlhdmZfYWRkX2V0aHRv
b2xfc3RhdHMoJmRhdGEsIGFkYXB0ZXIsCj4gPiBpYXZmX2dzdHJpbmdzX3N0YXRzKTsKPiA+IMKg
IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl9t
YWluLmMKPiA+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX21haW4uYwo+
ID4gaW5kZXggN2IzMDBjODZjZWRhNzMuLjg2ZDQ3MmRmZGJjMTBjIDEwMDY0NAo+ID4gLS0tIGEv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX21haW4uYwo+ID4gKysrIGIvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX21haW4uYwo+ID4gQEAgLTMxNCwxNSAr
MzE0LDEzIEBAIHZvaWQgaWF2Zl9zY2hlZHVsZV9yZXNldChzdHJ1Y3QgaWF2Zl9hZGFwdGVyCj4g
PiAqYWRhcHRlciwgdTY0IGZsYWdzKQo+ID4gwqAgfQo+ID4gwqAgCj4gPiDCoCAvKioKPiA+IC0g
KiBpYXZmX3NjaGVkdWxlX3JlcXVlc3Rfc3RhdHMgLSBTZXQgdGhlIGZsYWdzIGFuZCBzY2hlZHVs
ZQo+ID4gc3RhdGlzdGljcyByZXF1ZXN0Cj4gPiArICogaWF2Zl9zY2hlZHVsZV9hcV9yZXF1ZXN0
IC0gU2V0IHRoZSBmbGFncyBhbmQgc2NoZWR1bGUgYXEKPiA+IHJlcXVlc3QKPiA+IMKgwqAgKiBA
YWRhcHRlcjogYm9hcmQgcHJpdmF0ZSBzdHJ1Y3R1cmUKPiA+IC0gKgo+ID4gLSAqIFNldHMgSUFW
Rl9GTEFHX0FRX1JFUVVFU1RfU1RBVFMgZmxhZyBzbyBpYXZmX3dhdGNoZG9nX3Rhc2soKQo+ID4g
d2lsbCBleHBsaWNpdGx5Cj4gPiAtICogcmVxdWVzdCBhbmQgcmVmcmVzaCBldGh0b29sIHN0YXRz
Cj4gPiArICogQGZsYWdzOiByZXF1ZXN0ZWQgYXEgZmxhZ3MKPiA+IMKgwqAgKiovCj4gPiAtdm9p
ZCBpYXZmX3NjaGVkdWxlX3JlcXVlc3Rfc3RhdHMoc3RydWN0IGlhdmZfYWRhcHRlciAqYWRhcHRl
cikKPiA+ICt2b2lkIGlhdmZfc2NoZWR1bGVfYXFfcmVxdWVzdChzdHJ1Y3QgaWF2Zl9hZGFwdGVy
ICphZGFwdGVyLCB1NjQKPiA+IGZsYWdzKQo+ID4gwqAgewo+ID4gLcKgwqDCoMKgwqDCoMKgYWRh
cHRlci0+YXFfcmVxdWlyZWQgfD0gSUFWRl9GTEFHX0FRX1JFUVVFU1RfU1RBVFM7Cj4gPiArwqDC
oMKgwqDCoMKgwqBhZGFwdGVyLT5hcV9yZXF1aXJlZCB8PSBmbGFnczsKPiA+IMKgwqDCoMKgwqDC
oMKgwqBtb2RfZGVsYXllZF93b3JrKGFkYXB0ZXItPndxLCAmYWRhcHRlci0+d2F0Y2hkb2dfdGFz
aywgMCk7Cj4gPiDCoCB9Cj4gPiDCoCAKPiAKPiBUaGVyZSBhcmUgb3RoZXIgcGxhY2VzIHdoZXJl
IHRoZSBoZWxwZXIgY2FuIGJlIHVzZWQgd2l0aG91dAo+IGZ1bmN0aW9uYWwgCj4gY2hhbmdlcywg
ZS5nLiBpYXZmX2FkZF9mZGlyX2V0aHRvb2woKSAsIGlhdmZfcmVwbGFjZV9wcmltYXJ5X21hYygp
Cj4gYW5kIAo+IGNvdXBsZSBvZiBvdGhlciBwbGFjZXMuIEluIGFsbCBvZiB0aGVtLCBtb2RfZGVs
YXllZF93b3JrKCkgaXMgY2FsbGVkIAo+IGFmdGVyIHNldHRpbmcgdGhlIEFRIGZsYWcuIEZvciB0
aGUgc2FrZSBvZiBjb25zaXN0ZW5jeSwgY2FuIHlvdSB1c2UKPiB0aGUgCj4gaGVscGVyIHRoZXJl
IHRvbz8KClRoZXNlIHR3byBjb21taXRzIGlzIGZpeGVzIGZvciBpc3N1ZSAtPiBuZXQuIEJ1dCBv
bgppYXZmX2FkZF9mZGlyX2V0aHRvb2wgYW5kIGlhdmZfcmVwbGFjZV9wcmltYXJ5X21hYyBpcyBt
b2RfZGVsYXllZF93b3JrCmNhbGxlZCBhZnRlciBzcGluX3VubG9ja19iaCAtPgpsb29rcyBsaWtl
IG5vIGZ1bmN0aW9uYWwgY2hhZ2VzIGJ1dCBpIHdvdWxkIGxpa2UgYmUgc3VyZSBhbmQgYmV0dGVy
CndpbGwgc2VuZCB0aGlzIHRvIG5ldC1uZXh0LiBBcmUgeW91IG9rIHdpdGggdGhpcz8KCj4gCj4g
Cj4gVGhhbmtzLAo+IAo+IEFobWVkCj4gCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdp
cmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLXdpcmVkLWxhbgo=
