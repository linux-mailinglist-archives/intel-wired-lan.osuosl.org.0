Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D7BCA76FF7C
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Aug 2023 13:29:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7429260ABE;
	Fri,  4 Aug 2023 11:29:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7429260ABE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691148588;
	bh=R637Ak9IoRPGZPWkK0keFN7Znw1YfLSYqcSrj+nb00k=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:From;
	b=VN67OCinFdEbBViFBRrmd0jzaCsJTfBIFlQTWoVRiqKYXK9h4no+/y7nCvulnnQWe
	 wH7JO2lNZQ3Lj4aR/zCbDVbvgRoMfDXhRxzPqnJbZaBrDxX/QR0h40P2k9ljAArELv
	 lUs8t2rGJGzEY96Jla2BKAUgmMDLhTawW48giEsBySt9/UARMwVVHF+FLX4Lm0mGx6
	 9ozcSP2TL2nQun/wnI200lMqB6riaIu8dZfqFtAm+qfD8eOlBvZnw2ynbfAR9baWm8
	 omBUZOrQizj5LQLLat3YOFP9uDKmJ27ZEGaxo8bzuGXj2D70Ap0YdN+HMVvaM4bZVT
	 WsndNabygf3jA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tdcCNK4EZnde; Fri,  4 Aug 2023 11:29:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EEBD7606C0;
	Fri,  4 Aug 2023 11:29:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EEBD7606C0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5AECB1BF279
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 11:29:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7BA194010D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 11:29:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7BA194010D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IEOPYpjfWMGZ for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Aug 2023 11:29:39 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9485C4028D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 11:29:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9485C4028D
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-403-Q_CwI4LUPA2EhqZjLNY6VA-1; Fri, 04 Aug 2023 07:29:37 -0400
X-MC-Unique: Q_CwI4LUPA2EhqZjLNY6VA-1
Received: by mail-qv1-f70.google.com with SMTP id
 6a1803df08f44-63cff1f2d20so22180696d6.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 04 Aug 2023 04:29:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1691148576; x=1691753376;
 h=mime-version:user-agent:content-transfer-encoding:organization
 :references:in-reply-to:date:to:reply-to:from:subject:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=8ifjZtIGjVJjBZSaG0B8RANYmxhh3zalGlh6gw2RJjI=;
 b=NiZtelCOthArfscM6K3Dxkax7rW+1pSAJFjmxf3H0YezlqifI5D0gGi6oxs0ogeI/q
 k89LSQWwTF6VJ+Q9je/oyPpg7/tmaVs7FKKEyZqldtJ8ycPBaTDgnvnOmrZKUYzVr2Nz
 wrgq1yg+WCXaAMOgnp3MmYH7TRRPSWk/FwG8OZ8noPhpAGKJInG8xPIx7Y9I1GHTb8jN
 fRsEMI3A98rtG/fSUS5N4xYgarvzatN5jQ84TJpkyaBmD1GKNsEChsFo1NW3Fai7KDat
 WiaDbmQ6xQ5oQKkTwSrdGlNDNVhujUC9Hh52attyJmqPzMRdU5ucU7Wv3EY8SE/AyX4o
 8Mcg==
X-Gm-Message-State: AOJu0YymMZ/QmlWYzPBZKJv+VBOY1l8rgl4PRcmIhd6WXN38ekJCmtGO
 qIVBQD4hY7MWLt8QwlnIs2bQa6OMso0gKzDJXRaPzsFGbIK7AUNyK6nxO+eqZuul9ZW9vEERLsJ
 vVSUAfCBjdANMF2kqOBpoi2wyUbCe/Q==
X-Received: by 2002:a0c:f50c:0:b0:63c:efcf:6001 with SMTP id
 j12-20020a0cf50c000000b0063cefcf6001mr1206417qvm.2.1691148576632; 
 Fri, 04 Aug 2023 04:29:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGVCqNC3RF/HxgFxkyXB8ihpRFvTJwuzpOQFktYZ9dQz39KExoJzfI6eIZC7ZDp2OK+V7b/7w==
X-Received: by 2002:a0c:f50c:0:b0:63c:efcf:6001 with SMTP id
 j12-20020a0cf50c000000b0063cefcf6001mr1206405qvm.2.1691148576308; 
 Fri, 04 Aug 2023 04:29:36 -0700 (PDT)
Received: from [192.168.2.56] ([46.175.183.46])
 by smtp.gmail.com with ESMTPSA id
 m14-20020a0cf18e000000b0063646f1147asm591494qvl.135.2023.08.04.04.29.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Aug 2023 04:29:35 -0700 (PDT)
Message-ID: <e030f8c0b6e650db02bd7fa5bd8f5bde6fa5adee.camel@redhat.com>
From: Petr Oros <poros@redhat.com>
To: Kamil Maziarz <kamil.maziarz@intel.com>, intel-wired-lan@lists.osuosl.org
Date: Fri, 04 Aug 2023 13:29:33 +0200
In-Reply-To: <20230418095255.165004-1-kamil.maziarz@intel.com>
References: <20230418095255.165004-1-kamil.maziarz@intel.com>
Organization: Red Hat
User-Agent: Evolution 3.48.3
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1691148578;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=8ifjZtIGjVJjBZSaG0B8RANYmxhh3zalGlh6gw2RJjI=;
 b=O2ZhDHJTq1qaTKe/Jx4BlRctTs2E8sLZAp1EVVW1JMnvSCwvipbv5a7W06bqFPFQeDJ09z
 eNYilFokr/dz+NCH1N+S7v/1XTUG9uhgrDAB8TBbgi4H8DQDA0zO+kkeic6RqfVfy530KH
 379InqnhHmZiUOxkKqw816Veh+I6sM4=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=O2ZhDHJT
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: Fix ice VF reset during
 iavf initialization
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

S2FtaWwgTWF6aWFyeiBww63FoWUgdiDEjHQgMDEuIDAxLiAxOTcwIHYgMDA6MDAgKzAwMDA6Cj4g
RnJvbTogRGF3aWQgV2VzaWVyc2tpIDxkYXdpZHgud2VzaWVyc2tpQGludGVsLmNvbT4KPiAKPiBG
aXggdGhlIGN1cnJlbnQgaW1wbGVtZW50YXRpb24gdGhhdCBjYXVzZXMgaWNlX3RyaWdnZXJfdmZf
cmVzZXQoKQo+IHRvIHN0YXJ0IHJlc2V0dGluZyB0aGUgVkYgZXZlbiB3aGVuIHRoZSBWRiBpcyBz
dGlsbCByZXNldHRpbmcgaXRzZWxmCj4gYW5kIGluaXRpYWxpemluZyBhZG1pbnEuIFRoaXMgbGVh
ZHMgdG8gYSBzZXJpZXMgb2YgLTUzIGVycm9ycwo+IChmYWlsZWQgdG8gaW5pdCBhZG1pbnEpIGZy
b20gdGhlIElBVkYuCj4gCj4gQ2hhbmdlIHRoZSBzdGF0ZSBvZiB0aGUgdmZfc3RhdGUgZmllbGQg
dG8gYmUgbm90IGFjdGl2ZSB3aGVuIHRoZSBJQVZGCj4gYXNrcyBmb3IgYSByZXNldC4gVG8gYXZv
aWQgaXNzdWVzIGNhdXNlZCBieSB0aGUgVkYgYmVpbmcgcmVzZXQgdG9vCj4gZWFybHksIG1ha2Ug
c3VyZSB0byB3YWl0IHVudGlsIHJlY2VpdmluZyB0aGUgbWVzc2FnZSBvbiB0aGUgbWVzc2FnZQo+
IGJveCB0byBrbm93IHRoZSBleGFjdCBzdGF0ZSBvZiB0aGUgSUFWRiBkcml2ZXIuCj4gCj4gRml4
ZXM6IGM1NGQyMDljNzhiOCAoImljZTogV2FpdCBmb3IgVkYgdG8gYmUgcmVzZXQvcmVhZHkgYmVm
b3JlCj4gY29uZmlndXJhdGlvbiIpCj4gU2lnbmVkLW9mZi1ieTogRGF3aWQgV2VzaWVyc2tpIDxk
YXdpZHgud2VzaWVyc2tpQGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBLYW1pbCBNYXppYXJ6
IDxrYW1pbC5tYXppYXJ6QGludGVsLmNvbT4KPiBBY2tlZC1ieTogSmFjb2IgS2VsbGVyIDxKYWNv
Yi5lLmtlbGxlckBpbnRlbC5jb20+Cj4gLS0tCj4gdjI6IGNoYW5nZWQgInJlc2V0ZWQiIHRvICJy
ZXNldCIsIGNoYW5nZWQgZml4ZXMgdGFnLCByZW1vdmVkIHNwYWNlCj4gLS0tCj4gwqBkcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3NyaW92LmPCoMKgwqAgfMKgIDggKysrKy0tLS0K
PiDCoGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdmZfbGliLmPCoMKgIHwgMTkK
PiArKysrKysrKysrKysrKysrKysrCj4gwqBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2Uv
aWNlX3ZmX2xpYi5owqDCoCB8wqAgMSArCj4gwqBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
Y2UvaWNlX3ZpcnRjaG5sLmMgfMKgIDEgKwo+IMKgNCBmaWxlcyBjaGFuZ2VkLCAyNSBpbnNlcnRp
b25zKCspLCA0IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pY2UvaWNlX3NyaW92LmMKPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2ljZS9pY2Vfc3Jpb3YuYwo+IGluZGV4IDBjYzA1ZTU0YTc4MS4uZDQyMDZkYjdkNmQ1IDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vfc3Jpb3YuYwo+ICsr
KyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vfc3Jpb3YuYwo+IEBAIC0xMTgx
LDcgKzExODEsNyBAQCBpbnQgaWNlX3NldF92Zl9zcG9vZmNoayhzdHJ1Y3QgbmV0X2RldmljZQo+
ICpuZXRkZXYsIGludCB2Zl9pZCwgYm9vbCBlbmEpCj4gwqDCoMKgwqDCoMKgwqDCoGlmICghdmYp
Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gLUVJTlZBTDsKPiDCoAo+
IC3CoMKgwqDCoMKgwqDCoHJldCA9IGljZV9jaGVja192Zl9yZWFkeV9mb3JfY2ZnKHZmKTsKPiAr
wqDCoMKgwqDCoMKgwqByZXQgPSBpY2VfY2hlY2tfdmZfcmVhZHlfZm9yX3Jlc2V0KHZmKTsKPiDC
oMKgwqDCoMKgwqDCoMKgaWYgKHJldCkKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oGdvdG8gb3V0X3B1dF92ZjsKPiDCoAo+IEBAIC0xMjk2LDcgKzEyOTYsNyBAQCBpbnQgaWNlX3Nl
dF92Zl9tYWMoc3RydWN0IG5ldF9kZXZpY2UgKm5ldGRldiwKPiBpbnQgdmZfaWQsIHU4ICptYWMp
Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBnb3RvIG91dF9wdXRfdmY7Cj4gwqDC
oMKgwqDCoMKgwqDCoH0KPiDCoAo+IC3CoMKgwqDCoMKgwqDCoHJldCA9IGljZV9jaGVja192Zl9y
ZWFkeV9mb3JfY2ZnKHZmKTsKPiArwqDCoMKgwqDCoMKgwqByZXQgPSBpY2VfY2hlY2tfdmZfcmVh
ZHlfZm9yX3Jlc2V0KHZmKTsKPiDCoMKgwqDCoMKgwqDCoMKgaWYgKHJldCkKPiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoGdvdG8gb3V0X3B1dF92ZjsKPiDCoAo+IEBAIC0xMzUwLDcg
KzEzNTAsNyBAQCBpbnQgaWNlX3NldF92Zl90cnVzdChzdHJ1Y3QgbmV0X2RldmljZSAqbmV0ZGV2
LAo+IGludCB2Zl9pZCwgYm9vbCB0cnVzdGVkKQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgcmV0dXJuIC1FT1BOT1RTVVBQOwo+IMKgwqDCoMKgwqDCoMKgwqB9Cj4gwqAKPiAtwqDC
oMKgwqDCoMKgwqByZXQgPSBpY2VfY2hlY2tfdmZfcmVhZHlfZm9yX2NmZyh2Zik7Cj4gK8KgwqDC
oMKgwqDCoMKgcmV0ID0gaWNlX2NoZWNrX3ZmX3JlYWR5X2Zvcl9yZXNldCh2Zik7Cj4gwqDCoMKg
wqDCoMKgwqDCoGlmIChyZXQpCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBnb3Rv
IG91dF9wdXRfdmY7Cj4gwqAKPiBAQCAtMTY2Myw3ICsxNjYzLDcgQEAgaWNlX3NldF92Zl9wb3J0
X3ZsYW4oc3RydWN0IG5ldF9kZXZpY2UgKm5ldGRldiwKPiBpbnQgdmZfaWQsIHUxNiB2bGFuX2lk
LCB1OCBxb3MsCj4gwqDCoMKgwqDCoMKgwqDCoGlmICghdmYpCj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqByZXR1cm4gLUVJTlZBTDsKPiDCoAo+IC3CoMKgwqDCoMKgwqDCoHJldCA9
IGljZV9jaGVja192Zl9yZWFkeV9mb3JfY2ZnKHZmKTsKPiArwqDCoMKgwqDCoMKgwqByZXQgPSBp
Y2VfY2hlY2tfdmZfcmVhZHlfZm9yX3Jlc2V0KHZmKTsKPiDCoMKgwqDCoMKgwqDCoMKgaWYgKHJl
dCkKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGdvdG8gb3V0X3B1dF92ZjsKPiDC
oAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3ZmX2xp
Yi5jCj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3ZmX2xpYi5jCj4gaW5k
ZXggMGU1N2JkMWI4NWZkLi45NTg3OGM5NWU5NTMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV92Zl9saWIuYwo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2ljZS9pY2VfdmZfbGliLmMKPiBAQCAtMTg1LDYgKzE4NSwyNSBAQCBpbnQgaWNl
X2NoZWNrX3ZmX3JlYWR5X2Zvcl9jZmcoc3RydWN0IGljZV92Zgo+ICp2ZikKPiDCoMKgwqDCoMKg
wqDCoMKgcmV0dXJuIDA7Cj4gwqB9Cj4gwqAKPiArLyoqCj4gKyAqIGljZV9jaGVja192Zl9yZWFk
eV9mb3JfcmVzZXQgLSBjaGVjayBpZiBWRiBpcyByZWFkeSB0byBiZSByZXNldAo+ICsgKiBAdmY6
IFZGIHRvIGNoZWNrIGlmIGl0J3MgcmVhZHkgdG8gYmUgcmVzZXQKPiArICoKPiArICogVGhlIHB1
cnBvc2Ugb2YgdGhpcyBmdW5jdGlvbiBpcyB0byBlbnN1cmUgdGhhdCB0aGUgVkYgaXMgbm90IGlu
Cj4gcmVzZXQsCj4gKyAqIGRpc2FibGVkLCBhbmQgaXMgYm90aCBpbml0aWFsaXplZCBhbmQgYWN0
aXZlLCB0aHVzIGVuYWJsaW5nIHVzIHRvCj4gc2FmZWx5Cj4gKyAqIGluaXRpYWxpemUgYW5vdGhl
ciByZXNldC4KPiArICovCj4gK2ludCBpY2VfY2hlY2tfdmZfcmVhZHlfZm9yX3Jlc2V0KHN0cnVj
dCBpY2VfdmYgKnZmKQo+ICt7Cj4gK8KgwqDCoMKgwqDCoMKgaW50IHJldDsKPiArCj4gK8KgwqDC
oMKgwqDCoMKgcmV0ID0gaWNlX2NoZWNrX3ZmX3JlYWR5X2Zvcl9jZmcodmYpOwo+ICvCoMKgwqDC
oMKgwqDCoGlmICghcmV0ICYmICF0ZXN0X2JpdChJQ0VfVkZfU1RBVEVfQUNUSVZFLCB2Zi0+dmZf
c3RhdGVzKSkKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0ID0gLUVBR0FJTjsK
PiArCj4gK8KgwqDCoMKgwqDCoMKgcmV0dXJuIHJldDsKPiArfQo+ICsKPiDCoC8qKgo+IMKgICog
aWNlX3RyaWdnZXJfdmZfcmVzZXQgLSBSZXNldCBhIFZGIG9uIEhXCj4gwqAgKiBAdmY6IHBvaW50
ZXIgdG8gdGhlIFZGIHN0cnVjdHVyZQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pY2UvaWNlX3ZmX2xpYi5oCj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
Y2UvaWNlX3ZmX2xpYi5oCj4gaW5kZXggZWYzMGYwNWI1ZDAyLi4zZmM2YTBhOGQ5NTUgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV92Zl9saWIuaAo+ICsr
KyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdmZfbGliLmgKPiBAQCAtMjE1
LDYgKzIxNSw3IEBAIHUxNiBpY2VfZ2V0X251bV92ZnMoc3RydWN0IGljZV9wZiAqcGYpOwo+IMKg
c3RydWN0IGljZV92c2kgKmljZV9nZXRfdmZfdnNpKHN0cnVjdCBpY2VfdmYgKnZmKTsKPiDCoGJv
b2wgaWNlX2lzX3ZmX2Rpc2FibGVkKHN0cnVjdCBpY2VfdmYgKnZmKTsKPiDCoGludCBpY2VfY2hl
Y2tfdmZfcmVhZHlfZm9yX2NmZyhzdHJ1Y3QgaWNlX3ZmICp2Zik7Cj4gK2ludCBpY2VfY2hlY2tf
dmZfcmVhZHlfZm9yX3Jlc2V0KHN0cnVjdCBpY2VfdmYgKnZmKTsKPiDCoHZvaWQgaWNlX3NldF92
Zl9zdGF0ZV9kaXMoc3RydWN0IGljZV92ZiAqdmYpOwo+IMKgYm9vbCBpY2VfaXNfYW55X3ZmX2lu
X3VuaWNhc3RfcHJvbWlzYyhzdHJ1Y3QgaWNlX3BmICpwZik7Cj4gwqB2b2lkCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdmlydGNobmwuYwo+IGIvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV92aXJ0Y2hubC5jCj4gaW5kZXggZTI0ZTNm
NTAxN2NhLi5kOGM2NmJhZjRlYjQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWNlL2ljZV92aXJ0Y2hubC5jCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWNlL2ljZV92aXJ0Y2hubC5jCj4gQEAgLTM5MDgsNiArMzkwOCw3IEBAIHZvaWQgaWNlX3Zj
X3Byb2Nlc3NfdmZfbXNnKHN0cnVjdCBpY2VfcGYgKnBmLAo+IHN0cnVjdCBpY2VfcnFfZXZlbnRf
aW5mbyAqZXZlbnQpCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpY2VfdmNfbm90
aWZ5X3ZmX2xpbmtfc3RhdGUodmYpOwo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
YnJlYWs7Cj4gwqDCoMKgwqDCoMKgwqDCoGNhc2UgVklSVENITkxfT1BfUkVTRVRfVkY6Cj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGNsZWFyX2JpdChJQ0VfVkZfU1RBVEVfQUNUSVZF
LCB2Zi0+dmZfc3RhdGVzKTsKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoG9wcy0+
cmVzZXRfdmYodmYpOwo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgYnJlYWs7Cj4g
wqDCoMKgwqDCoMKgwqDCoGNhc2UgVklSVENITkxfT1BfQUREX0VUSF9BRERSOgoKCkhpLAoKSG93
IHdhcyB0aGlzIHBhdGNoIHRlc3RlZD8KCldoeSBhcmUgd2Ugd2FpdGluZyBmb3IgSUNFX1ZGX1NU
QVRFX0FDVElWRT8gQXMgSSB1bmRlcnN0YW5kCklDRV9WRl9TVEFURV9JTklUIGlzIHRoZSBzdGF0
ZSB3aGVyZSB3ZSBjYW4gc3RhcnQgdGhlIHJlc2V0IGFnYWluLgoKQWZ0ZXIgdGhpcyBwYXRjaCB3
ZSBhcmUgbm90IGFibGUgdG8gYXR0YWNoIFZGIHRvIFZNOgoKIyB2aXJzaCBhdHRhY2gtaW50ZXJm
YWNlIHYwIGhvc3RkZXYgLS1tYW5hZ2VkIDAwMDA6NDE6MDEuMCAtLW1hYwo1Mjo1NDowMDpiNDph
YTpiYgojIGVycm9yOiBGYWlsZWQgdG8gYXR0YWNoIGludGVyZmFjZQojIGVycm9yOiBDYW5ub3Qg
c2V0IGludGVyZmFjZSBNQUMgdG8gNTI6NTQ6MDA6YjQ6YWE6YmIgZm9yIGlmbmFtZQplbnA2NXMw
ZjBucDAgdmYgMDogUmVzb3VyY2UgdGVtcG9yYXJpbHkgdW5hdmFpbGFibGUKClJlZ2FyZHMsClBl
dHIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6
Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
