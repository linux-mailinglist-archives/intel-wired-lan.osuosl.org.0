Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AE72776FF51
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Aug 2023 13:17:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 21E2560F5C;
	Fri,  4 Aug 2023 11:17:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 21E2560F5C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691147848;
	bh=wxIf58WsAIcTKHCCfNTyXZi5QwPHD86jlrBLkUETTPw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:Cc:From;
	b=DN468l27lOncmQ1kI8YySwYoMrMyJPA2hR0NuS8CRC9UQHHxIFP1VpsA3NBh1UhOE
	 7b1QzVTq9C3pUjGIR9P7fVQHArdNyGZ2aCUurPVLjWYtmVBkoidEyYRXQTP9dQ1+mV
	 vdqI7EzajmcHsAUwn54Gi+j/Ni9QbxchZaI97g4p/TMdDt9R1Riq44vZsn5ALNxCUB
	 D8Aueyppol2GB5AnV6UUtfP52CXz7//NCZkmc/3mQLic7/sFKwaxOvkwhupDB4ei3r
	 zOhttpGgW7xrqBvx+iYh619qlVamWyqQm9X3Cfp5xF5Pu1Xuu4+JuGnZ+DUDU9R9mb
	 KN0qK1WPN0FDA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oOuZoSXIhD7S; Fri,  4 Aug 2023 11:17:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 51C2D60A8D;
	Fri,  4 Aug 2023 11:17:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 51C2D60A8D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1E9941BF279
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 11:17:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6BF2741C5E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 11:16:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6BF2741C5E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HMbNQmKuN9Rx for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Aug 2023 11:16:07 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EC48E40360
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 11:16:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EC48E40360
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-497-eHgIgFFDOFm-0I7dR17wXw-1; Fri, 04 Aug 2023 07:16:04 -0400
X-MC-Unique: eHgIgFFDOFm-0I7dR17wXw-1
Received: by mail-qv1-f69.google.com with SMTP id
 6a1803df08f44-63d246654dcso19807126d6.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 04 Aug 2023 04:16:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1691147764; x=1691752564;
 h=mime-version:user-agent:content-transfer-encoding:organization
 :references:in-reply-to:date:cc:to:reply-to:from:subject:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=+Q4WeZUbtj6ZHj4x+JFsY3nS8Bync1i6/SCVMJWJi+o=;
 b=Mphhhgt9nKTh8DvYNJDYfjGXfA8PpxnmVzwG2JVjOucWPOHSi1nC5DAU1AYnvSxoUq
 Aa6mcMX+kWZPEByCA3q7e+R7E3Aa4arzNw9Pb5eFJehAgRYjW6JnnNe892djyzxW+eKs
 ztsaO/Xk+NfCt6RFt6H7S18H6Ni7bfUTGQDQ3hmbfiMId8djAbA0ldODh7rPGqhGJKIi
 fYwkUopE/8FbYiCuJn1Pafb3Ja3ohGUJixHq/ojsV6UASeCRsd/x6LMlgxOuL1/OiWr9
 1sfO5/8TcUqwBahKIcPnolzERxfcJi0qcrZ8W5kaR46+hzVkHjzsLE0QDjGZFLfeFyGP
 YrVQ==
X-Gm-Message-State: AOJu0YxUo/pwLlz3vvq2tODWEUaYt6I31P6IZ2K5LaSEZJtWGmSlQsxb
 HsaA9v8+kT6XKTg+1nkquwMyDhJC16iBOcH7w0yr/FCx/GfutS2N0IeORsu5FRaJ8WlA4TraT7d
 tyAdQEvaci5VKxALmcIEj1lpBM3M3Pw==
X-Received: by 2002:a0c:ac01:0:b0:63d:5e:4f76 with SMTP id
 l1-20020a0cac01000000b0063d005e4f76mr1051836qvb.35.1691147764061; 
 Fri, 04 Aug 2023 04:16:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF07wKdd777GqzT1F7SWIvSX+ZOkKhwWm+ROm7OrNdMc4QNIr3Uv5D5xoWayxRabxMOLAXryg==
X-Received: by 2002:a0c:ac01:0:b0:63d:5e:4f76 with SMTP id
 l1-20020a0cac01000000b0063d005e4f76mr1051829qvb.35.1691147763730; 
 Fri, 04 Aug 2023 04:16:03 -0700 (PDT)
Received: from [192.168.2.56] ([46.175.183.46])
 by smtp.gmail.com with ESMTPSA id
 o11-20020ae9f50b000000b0076cf0c4eecbsm214548qkg.0.2023.08.04.04.16.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Aug 2023 04:16:03 -0700 (PDT)
Message-ID: <6b127b155f81eca324ff5b737831cae39ced47fc.camel@redhat.com>
From: Petr Oros <poros@redhat.com>
To: Kamil Maziarz <kamil.maziarz@intel.com>, intel-wired-lan@lists.osuosl.org
Date: Fri, 04 Aug 2023 13:16:01 +0200
In-Reply-To: <20230418095255.165004-1-kamil.maziarz@intel.com>
References: <20230418095255.165004-1-kamil.maziarz@intel.com>
Organization: Red Hat
User-Agent: Evolution 3.48.1
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1691147765;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=+Q4WeZUbtj6ZHj4x+JFsY3nS8Bync1i6/SCVMJWJi+o=;
 b=VwOVBv3nBEJ+ENa8HjZ0TzansCA8FJ5d9Mwx6F42k/DTCw4vFINtYpgr2uN+JOPMAQZrJ3
 RpWDxE1pb4RNWlFYMw+4pGoWf/HTAMh8GqJM1bNL9tNVv1s4HR360z2LohrErEtPlBaVZS
 GwLbIF/C/d3RMq+b3xuKaaSx+2545MY=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=VwOVBv3n
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
Cc: Dawid Wesierski <dawidx.wesierski@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

S2FtaWwgTWF6aWFyeiBww63FoWUgdiDDmnQgMTguIDA0LiAyMDIzIHYgMTE6NTIgKzAyMDA6Cj4g
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
wqDCoMKgwqDCoMKgwqDCoGNhc2UgVklSVENITkxfT1BfQUREX0VUSF9BRERSOgoKSGkgRGF3aWQs
CgpIb3cgd2FzIHRoaXMgcGF0Y2ggdGVzdGVkPwoKV2h5IGFyZSB3ZSB3YWl0aW5nIGZvciBJQ0Vf
VkZfU1RBVEVfQUNUSVZFPyBBcyBJIHVuZGVyc3RhbmQKSUNFX1ZGX1NUQVRFX0lOSVQgaXMgdGhl
IHN0YXRlIHdoZXJlIHdlIGNhbiBzdGFydCB0aGUgcmVzZXQgYWdhaW4uCgpBZnRlciB0aGlzIHBh
dGNoIHdlIGFyZSBub3QgYWJsZSB0byBhdHRhY2ggVkYgdG8gVk06CgojIHZpcnNoIGF0dGFjaC1p
bnRlcmZhY2UgdjAgaG9zdGRldiAtLW1hbmFnZWQgMDAwMDo0MTowMS4wIC0tbWFjCjUyOjU0OjAw
OmI0OmFhOmJiCiMgZXJyb3I6IEZhaWxlZCB0byBhdHRhY2ggaW50ZXJmYWNlCiMgZXJyb3I6IENh
bm5vdCBzZXQgaW50ZXJmYWNlIE1BQyB0byA1Mjo1NDowMDpiNDphYTpiYiBmb3IgaWZuYW1lCmVu
cDY1czBmMG5wMCB2ZiAwOiBSZXNvdXJjZSB0ZW1wb3JhcmlseSB1bmF2YWlsYWJsZQoKUmVnYXJk
cywKUGV0cgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9y
ZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1s
YW4K
