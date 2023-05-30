Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A59B6716F1A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 May 2023 22:51:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3D56660F4D;
	Tue, 30 May 2023 20:51:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3D56660F4D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685479898;
	bh=TijAdeRusHy5HCU8JfB+jAAN5EIjZ7Dn7BIbel0lsfY=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=a4AAp6RL8Dwvf4yYTDk/HMF6P5L8ImlvE3GpT/U0H+p6y3Cq2zgXcj7cwUWMRloUF
	 gx96+Uf8ZxqiG3vGkiHbDSTIVpt1rDAw85QDN1br65t/piMdIoPHXrwNZxW/vd9BtY
	 NZk0XLBugi074iBLirGxIFM/6JOmY5cIamUbkJ8n8IC0FyytYE0/reZzXEqTzIGIGw
	 RqIapSfPod5GI0uWUyMxTnZUnF8hEY5L8XGljmd9vuC5rXtBKG10/xvRPZr1lyx7OF
	 b5SJwCtBWQeaupKUmxMD2LrF/4Uwn5GMuM8iuBlTLKPqMcXK+nKW1caDenRavmCYyX
	 sY3cgA3MO/9uw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UAUqFcAcMgZI; Tue, 30 May 2023 20:51:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D171560777;
	Tue, 30 May 2023 20:51:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D171560777
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3016C1BF284
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 20:51:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0384B4189D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 20:51:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0384B4189D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xGWexkumuZkh for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 May 2023 20:51:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 87BE441612
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 87BE441612
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 20:51:28 +0000 (UTC)
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-110-cVq0ml3mOC-vBiRbzxhaeQ-1; Tue, 30 May 2023 16:51:25 -0400
X-MC-Unique: cVq0ml3mOC-vBiRbzxhaeQ-1
Received: by mail-ej1-f72.google.com with SMTP id
 a640c23a62f3a-973c42bfc38so424811166b.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 13:51:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685479885; x=1688071885;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=xtEzKG5fSEvz3EO38GXWLStOujfxg4DKwF6bLr+KMZQ=;
 b=cdohZ4ymQfLvXiO/hnkOqXWYPZjdrCV5ot6hywmyncH2gP2ZLsVGal6+QeUvZ6rIpq
 mhcSGMvn6G11oEKuNC/krXk8wjPm2lklOTAPUZt/dI6S39/99dUEs8w2nDJTK0qoilBm
 oX+CD4vgxtyEg88B1MiE5AzRCKxJubSqK5aXx8gM92GCdn+5+0U9AsMF2WWjfECHG/WF
 NEx7aQbT8jg8x1rqtljcPcWGDiePWNlrB4kOl46/j7mQ+tcSj6uOm/De3ptKVkYAw2jk
 4VjE3wQv15fNRv2jV2AZzEY4yswgx1oRK5ZRFTWRZ6poc0f/WKAvqWrJhKBK8jG1N3SM
 NwPw==
X-Gm-Message-State: AC+VfDwVluRWOYPwVeAcyH5cvwmsHud5hMfxkb8EAqe8/BrgqtpyHyTM
 wKbpKVQzGc7DHoUGS7dcD2bATKbf5dqnEfg5M4YpySXSBcr2dijp+0sDPNPe7RZ92LTDe42Md3D
 qPFM6AUxLtta63aMEDgp/eEzBgX1NzvKYODB1SnMSyxbCrg==
X-Received: by 2002:a17:907:1c8d:b0:96a:2acf:61e1 with SMTP id
 nb13-20020a1709071c8d00b0096a2acf61e1mr3399980ejc.64.1685479884828; 
 Tue, 30 May 2023 13:51:24 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ6d2qT2kieH4lKb0TPeADzmuxQ98vtS6ZGu9Nt1RnEzHxGjmChIxeHEbabnOiClRm3ksdVdMIhABUFIcB46wAs=
X-Received: by 2002:a17:907:1c8d:b0:96a:2acf:61e1 with SMTP id
 nb13-20020a1709071c8d00b0096a2acf61e1mr3399966ejc.64.1685479884469; Tue, 30
 May 2023 13:51:24 -0700 (PDT)
MIME-Version: 1.0
References: <20230526221541.2682533-1-jacob.e.keller@intel.com>
In-Reply-To: <20230526221541.2682533-1-jacob.e.keller@intel.com>
From: Michal Schmidt <mschmidt@redhat.com>
Date: Tue, 30 May 2023 22:51:13 +0200
Message-ID: <CADEbmW3xVryU1aK93oEf7Kx3KgSg8_xfoeSQMU-OYm=AeLWotQ@mail.gmail.com>
To: Jacob Keller <jacob.e.keller@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1685479887;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=xtEzKG5fSEvz3EO38GXWLStOujfxg4DKwF6bLr+KMZQ=;
 b=ZFa5Nj3yuVkQ9eBqJwSSB8Bicn1b/fiC7LrDGIYOYPsMa4wNjFMzAZ2sZAdcRKIsLO7SW7
 9mhahF7whkUWaD4PRu6cD4SZUXIYxDZIrtXg353A69SQasjQYxSnPJTTTLqKdRzVV3JZpA
 cCr/8RFlhm/Qrif0yzfNEhfPHtj9oOk=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=ZFa5Nj3y
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: use spin_lock_bh for Tx
 timestamp tracker lock
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
Cc: Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gU2F0LCBNYXkgMjcsIDIwMjMgYXQgMTI6MTbigK9BTSBKYWNvYiBLZWxsZXIgPGphY29iLmUu
a2VsbGVyQGludGVsLmNvbT4gd3JvdGU6Cj4gVGhlIFR4IHRpbWVzdGFtcCB0cmFja2VyIGxvY2sg
aXMgYWNxdWlyZWQgZHVyaW5nIGljZV9wdHBfdHhfdHN0YW1wCj4gd2hpY2ggaXMgbm93IGNhbGxl
ZCBmcm9tIHRoZSBpY2VfbWlzY19pbnRyX3RocmVhZF9mbigpLiBBcyBmYXIgYXMgSSBjYW4KPiB1
bmRlcnN0YW5kLCB0aGlzIHRocmVhZCBmdW5jdGlvbiBpcyBydW4gaW4gc29mdGlycSBjb250ZXh0
LCBzbyBpdCBpcwo+IHBvc3NpYmxlIGZvciB0aGUgdGhyZWFkIHRvIGludGVycnVwdCBhbm90aGVy
IHRocmVhZCB0aGF0IGlzIGN1cnJlbnRseSBpbgo+IHRoZSBjcml0aWNhbCBzZWN0aW9uIG9mIHRo
aXMgbG9jayB3aGVuIHVzaW5nIG9ubHkgc3Bpbl9sb2NrLiBUaGlzIHdvdWxkCj4gcmVzdWx0IGlu
IGEgZGVhZGxvY2suCgpObywgdGhlIHRocmVhZF9mbiBvZiBhIHRocmVhZGVkIElSUSBkb2VzIG5v
dCBydW4gaW4gc29mdGlycSBjb250ZXh0LgpJdCBydW5zIGluIGEga2VybmVsIHRocmVhZCB0aGF0
IGhhcyBpdHMgb3duIFBJRCBhbmQgZXZlcnl0aGluZy4gWW91CmNhbiBzZWUgSVJRIHRocmVhZHMg
aW4gInBzIGF4IiBhcyAiW2lycS88bnVtYmVyPi08bmFtZT5dIiwgeW91IGNhbgptb2RpZnkgdGhl
aXIgc2NoZWR1bGluZyBwcmlvcml0eSwgZXRjLgoKTWljaGFsCgo+IFRoZSB1c2Ugb2Ygc3Bpbl9s
b2NrIHdhcyBoaXN0b3JpY2FsbHkgZnJvbSB3aGVuIFR4IHRpbWVzdGFtcHMgd2VyZQo+IHByb2Nl
c3NlZCB3aXRoaW4gYSBzZXBhcmF0ZSBrdGhyZWFkIHJ1biBpbiBwcm9jZXNzIGNvbnRleHQsIHRo
dXMgbWFraW5nCj4gc3Bpbl9sb2NrIHNhZmUuIFRoaXMgd2FzIGNoYW5nZWQgd2hlbiB3ZSBtb3Zl
ZCB0byB0aGUgdGhyZWFkZWQgSVJRIGluCj4gY29tbWl0IDEyMjliMzM5NzNjNyAoImljZTogQWRk
IGxvdyBsYXRlbmN5IFR4IHRpbWVzdGFtcCByZWFkIikuCj4KPiBGaXggdGhlIGxvY2sgYWNjZXNz
IHRvIHVzZSBzcGluX2xvY2tfYmgoKSB0byBkaXNhYmxlIHNvZnRpcnEgb24gdGhlIGN1cnJlbnQK
PiBDUFUgZHVyaW5nIHRoZSBjcml0aWNhbCBzZWN0aW9ucy4KPgo+IEZpeGVzOiAxMjI5YjMzOTcz
YzcgKCJpY2U6IEFkZCBsb3cgbGF0ZW5jeSBUeCB0aW1lc3RhbXAgcmVhZCIpCj4gU2lnbmVkLW9m
Zi1ieTogSmFjb2IgS2VsbGVyIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+Cj4gUmV2aWV3ZWQt
Ynk6IEplc3NlIEJyYW5kZWJ1cmcgPGplc3NlLmJyYW5kZWJ1cmdAaW50ZWwuY29tPgo+IC0tLQo+
ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3B0cC5jIHwgMzAgKysrKysrKysr
KysrLS0tLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspLCAxNSBk
ZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
Y2UvaWNlX3B0cC5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wdHAuYwo+
IGluZGV4IGFjNmYwNmY5YTJlZC4uMGVhYWRjNTNkYWVkIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcHRwLmMKPiArKysgYi9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pY2UvaWNlX3B0cC5jCj4gQEAgLTc1MSw3ICs3NTEsNyBAQCBzdGF0aWMgYm9v
bCBpY2VfcHRwX3R4X3RzdGFtcChzdHJ1Y3QgaWNlX3B0cF90eCAqdHgpCj4gICAgICAgICAgICAg
ICAgICAgICAgICAgZHJvcF90cyA9IHRydWU7Cj4KPiAgc2tpcF90c19yZWFkOgo+IC0gICAgICAg
ICAgICAgICBzcGluX2xvY2soJnR4LT5sb2NrKTsKPiArICAgICAgICAgICAgICAgc3Bpbl9sb2Nr
X2JoKCZ0eC0+bG9jayk7Cj4gICAgICAgICAgICAgICAgIGlmICh0eC0+dmVyaWZ5X2NhY2hlZCAm
JiByYXdfdHN0YW1wKQo+ICAgICAgICAgICAgICAgICAgICAgICAgIHR4LT50c3RhbXBzW2lkeF0u
Y2FjaGVkX3RzdGFtcCA9IHJhd190c3RhbXA7Cj4gICAgICAgICAgICAgICAgIGNsZWFyX2JpdChp
ZHgsIHR4LT5pbl91c2UpOwo+IEBAIC03NTksNyArNzU5LDcgQEAgc3RhdGljIGJvb2wgaWNlX3B0
cF90eF90c3RhbXAoc3RydWN0IGljZV9wdHBfdHggKnR4KQo+ICAgICAgICAgICAgICAgICB0eC0+
dHN0YW1wc1tpZHhdLnNrYiA9IE5VTEw7Cj4gICAgICAgICAgICAgICAgIGlmICh0ZXN0X2FuZF9j
bGVhcl9iaXQoaWR4LCB0eC0+c3RhbGUpKQo+ICAgICAgICAgICAgICAgICAgICAgICAgIGRyb3Bf
dHMgPSB0cnVlOwo+IC0gICAgICAgICAgICAgICBzcGluX3VubG9jaygmdHgtPmxvY2spOwo+ICsg
ICAgICAgICAgICAgICBzcGluX3VubG9ja19iaCgmdHgtPmxvY2spOwo+Cj4gICAgICAgICAgICAg
ICAgIC8qIEl0IGlzIHVubGlrZWx5IGJ1dCBwb3NzaWJsZSB0aGF0IHRoZSBTS0Igd2lsbCBoYXZl
IGJlZW4KPiAgICAgICAgICAgICAgICAgICogZmx1c2hlZCBhdCB0aGlzIHBvaW50IGR1ZSB0byBs
aW5rIGNoYW5nZSBvciB0ZWFyZG93bi4KPiBAQCAtNzg2LDkgKzc4Niw5IEBAIHN0YXRpYyBib29s
IGljZV9wdHBfdHhfdHN0YW1wKHN0cnVjdCBpY2VfcHRwX3R4ICp0eCkKPiAgICAgICAgIC8qIENo
ZWNrIGlmIHdlIHN0aWxsIGhhdmUgd29yayB0byBkby4gSWYgc28sIHJlLXF1ZXVlIHRoaXMgdGFz
ayB0bwo+ICAgICAgICAgICogcG9sbCBmb3IgcmVtYWluaW5nIHRpbWVzdGFtcHMuCj4gICAgICAg
ICAgKi8KPiAtICAgICAgIHNwaW5fbG9jaygmdHgtPmxvY2spOwo+ICsgICAgICAgc3Bpbl9sb2Nr
X2JoKCZ0eC0+bG9jayk7Cj4gICAgICAgICBtb3JlX3RpbWVzdGFtcHMgPSB0eC0+aW5pdCAmJiAh
Yml0bWFwX2VtcHR5KHR4LT5pbl91c2UsIHR4LT5sZW4pOwo+IC0gICAgICAgc3Bpbl91bmxvY2so
JnR4LT5sb2NrKTsKPiArICAgICAgIHNwaW5fdW5sb2NrX2JoKCZ0eC0+bG9jayk7Cj4KPiAgICAg
ICAgIHJldHVybiAhbW9yZV90aW1lc3RhbXBzOwo+ICB9Cj4gQEAgLTg2MiwxMiArODYyLDEyIEBA
IGljZV9wdHBfZmx1c2hfdHhfdHJhY2tlcihzdHJ1Y3QgaWNlX3BmICpwZiwgc3RydWN0IGljZV9w
dHBfdHggKnR4KQo+ICAgICAgICAgICAgICAgICBpZiAoIWh3LT5yZXNldF9vbmdvaW5nICYmICh0
c3RhbXBfcmVhZHkgJiBCSVRfVUxMKHBoeV9pZHgpKSkKPiAgICAgICAgICAgICAgICAgICAgICAg
ICBpY2VfY2xlYXJfcGh5X3RzdGFtcChodywgdHgtPmJsb2NrLCBwaHlfaWR4KTsKPgo+IC0gICAg
ICAgICAgICAgICBzcGluX2xvY2soJnR4LT5sb2NrKTsKPiArICAgICAgICAgICAgICAgc3Bpbl9s
b2NrX2JoKCZ0eC0+bG9jayk7Cj4gICAgICAgICAgICAgICAgIHNrYiA9IHR4LT50c3RhbXBzW2lk
eF0uc2tiOwo+ICAgICAgICAgICAgICAgICB0eC0+dHN0YW1wc1tpZHhdLnNrYiA9IE5VTEw7Cj4g
ICAgICAgICAgICAgICAgIGNsZWFyX2JpdChpZHgsIHR4LT5pbl91c2UpOwo+ICAgICAgICAgICAg
ICAgICBjbGVhcl9iaXQoaWR4LCB0eC0+c3RhbGUpOwo+IC0gICAgICAgICAgICAgICBzcGluX3Vu
bG9jaygmdHgtPmxvY2spOwo+ICsgICAgICAgICAgICAgICBzcGluX3VubG9ja19iaCgmdHgtPmxv
Y2spOwo+Cj4gICAgICAgICAgICAgICAgIC8qIENvdW50IHRoZSBudW1iZXIgb2YgVHggdGltZXN0
YW1wcyBmbHVzaGVkICovCj4gICAgICAgICAgICAgICAgIHBmLT5wdHAudHhfaHd0c3RhbXBfZmx1
c2hlZCsrOwo+IEBAIC04OTEsOSArODkxLDkgQEAgaWNlX3B0cF9mbHVzaF90eF90cmFja2VyKHN0
cnVjdCBpY2VfcGYgKnBmLCBzdHJ1Y3QgaWNlX3B0cF90eCAqdHgpCj4gIHN0YXRpYyB2b2lkCj4g
IGljZV9wdHBfbWFya190eF90cmFja2VyX3N0YWxlKHN0cnVjdCBpY2VfcHRwX3R4ICp0eCkKPiAg
ewo+IC0gICAgICAgc3Bpbl9sb2NrKCZ0eC0+bG9jayk7Cj4gKyAgICAgICBzcGluX2xvY2tfYmgo
JnR4LT5sb2NrKTsKPiAgICAgICAgIGJpdG1hcF9vcih0eC0+c3RhbGUsIHR4LT5zdGFsZSwgdHgt
PmluX3VzZSwgdHgtPmxlbik7Cj4gLSAgICAgICBzcGluX3VubG9jaygmdHgtPmxvY2spOwo+ICsg
ICAgICAgc3Bpbl91bmxvY2tfYmgoJnR4LT5sb2NrKTsKPiAgfQo+Cj4gIC8qKgo+IEBAIC05MDYs
OSArOTA2LDkgQEAgaWNlX3B0cF9tYXJrX3R4X3RyYWNrZXJfc3RhbGUoc3RydWN0IGljZV9wdHBf
dHggKnR4KQo+ICBzdGF0aWMgdm9pZAo+ICBpY2VfcHRwX3JlbGVhc2VfdHhfdHJhY2tlcihzdHJ1
Y3QgaWNlX3BmICpwZiwgc3RydWN0IGljZV9wdHBfdHggKnR4KQo+ICB7Cj4gLSAgICAgICBzcGlu
X2xvY2soJnR4LT5sb2NrKTsKPiArICAgICAgIHNwaW5fbG9ja19iaCgmdHgtPmxvY2spOwo+ICAg
ICAgICAgdHgtPmluaXQgPSAwOwo+IC0gICAgICAgc3Bpbl91bmxvY2soJnR4LT5sb2NrKTsKPiAr
ICAgICAgIHNwaW5fdW5sb2NrX2JoKCZ0eC0+bG9jayk7Cj4KPiAgICAgICAgIC8qIHdhaXQgZm9y
IHBvdGVudGlhbGx5IG91dHN0YW5kaW5nIGludGVycnVwdCB0byBjb21wbGV0ZSAqLwo+ICAgICAg
ICAgc3luY2hyb25pemVfaXJxKHBmLT5tc2l4X2VudHJpZXNbcGYtPm9pY3JfaWR4XS52ZWN0b3Ip
Owo+IEBAIC0xMzIxLDcgKzEzMjEsNyBAQCBpY2VfcHRwX3BvcnRfcGh5X3Jlc3RhcnQoc3RydWN0
IGljZV9wdHBfcG9ydCAqcHRwX3BvcnQpCj4gICAgICAgICBrdGhyZWFkX2NhbmNlbF9kZWxheWVk
X3dvcmtfc3luYygmcHRwX3BvcnQtPm92X3dvcmspOwo+Cj4gICAgICAgICAvKiB0ZW1wb3Jhcmls
eSBkaXNhYmxlIFR4IHRpbWVzdGFtcHMgd2hpbGUgY2FsaWJyYXRpbmcgUEhZIG9mZnNldCAqLwo+
IC0gICAgICAgc3Bpbl9sb2NrKCZwdHBfcG9ydC0+dHgubG9jayk7Cj4gKyAgICAgICBzcGluX2xv
Y2tfYmgoJnB0cF9wb3J0LT50eC5sb2NrKTsKPiAgICAgICAgIHB0cF9wb3J0LT50eC5jYWxpYnJh
dGluZyA9IHRydWU7Cj4gICAgICAgICBzcGluX3VubG9jaygmcHRwX3BvcnQtPnR4LmxvY2spOwo+
ICAgICAgICAgcHRwX3BvcnQtPnR4X2ZpZm9fYnVzeV9jbnQgPSAwOwo+IEBAIC0xMzMyLDcgKzEz
MzIsNyBAQCBpY2VfcHRwX3BvcnRfcGh5X3Jlc3RhcnQoc3RydWN0IGljZV9wdHBfcG9ydCAqcHRw
X3BvcnQpCj4gICAgICAgICAgICAgICAgIGdvdG8gb3V0X3VubG9jazsKPgo+ICAgICAgICAgLyog
RW5hYmxlIFR4IHRpbWVzdGFtcHMgcmlnaHQgYXdheSAqLwo+IC0gICAgICAgc3Bpbl9sb2NrKCZw
dHBfcG9ydC0+dHgubG9jayk7Cj4gKyAgICAgICBzcGluX2xvY2tfYmgoJnB0cF9wb3J0LT50eC5s
b2NrKTsKPiAgICAgICAgIHB0cF9wb3J0LT50eC5jYWxpYnJhdGluZyA9IGZhbHNlOwo+ICAgICAg
ICAgc3Bpbl91bmxvY2soJnB0cF9wb3J0LT50eC5sb2NrKTsKPgo+IEBAIC0yMzkyLDExICsyMzky
LDExIEBAIHM4IGljZV9wdHBfcmVxdWVzdF90cyhzdHJ1Y3QgaWNlX3B0cF90eCAqdHgsIHN0cnVj
dCBza19idWZmICpza2IpCj4gIHsKPiAgICAgICAgIHU4IGlkeDsKPgo+IC0gICAgICAgc3Bpbl9s
b2NrKCZ0eC0+bG9jayk7Cj4gKyAgICAgICBzcGluX2xvY2tfYmgoJnR4LT5sb2NrKTsKPgo+ICAg
ICAgICAgLyogQ2hlY2sgdGhhdCB0aGlzIHRyYWNrZXIgaXMgYWNjZXB0aW5nIG5ldyB0aW1lc3Rh
bXAgcmVxdWVzdHMgKi8KPiAgICAgICAgIGlmICghaWNlX3B0cF9pc190eF90cmFja2VyX3VwKHR4
KSkgewo+IC0gICAgICAgICAgICAgICBzcGluX3VubG9jaygmdHgtPmxvY2spOwo+ICsgICAgICAg
ICAgICAgICBzcGluX3VubG9ja19iaCgmdHgtPmxvY2spOwo+ICAgICAgICAgICAgICAgICByZXR1
cm4gLTE7Cj4gICAgICAgICB9Cj4KPiBAQCAtMjQxNSw3ICsyNDE1LDcgQEAgczggaWNlX3B0cF9y
ZXF1ZXN0X3RzKHN0cnVjdCBpY2VfcHRwX3R4ICp0eCwgc3RydWN0IHNrX2J1ZmYgKnNrYikKPiAg
ICAgICAgICAgICAgICAgaWNlX3RyYWNlKHR4X3RzdGFtcF9yZXF1ZXN0LCBza2IsIGlkeCk7Cj4g
ICAgICAgICB9Cj4KPiAtICAgICAgIHNwaW5fdW5sb2NrKCZ0eC0+bG9jayk7Cj4gKyAgICAgICBz
cGluX3VubG9ja19iaCgmdHgtPmxvY2spOwo+Cj4gICAgICAgICAvKiByZXR1cm4gdGhlIGFwcHJv
cHJpYXRlIFBIWSB0aW1lc3RhbXAgcmVnaXN0ZXIgaW5kZXgsIC0xIGlmIG5vCj4gICAgICAgICAg
KiBpbmRleGVzIHdlcmUgYXZhaWxhYmxlLgo+Cj4gYmFzZS1jb21taXQ6IDEyNWY5NjVjMjlmMWJh
NzIwNjRmN2Y2ZTljOWFhZDMzMTFiZDJlYjEKPiAtLQo+IDIuNDAuMC40NzEuZ2JkN2YxNGQ5MzUz
Ygo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJ
bnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0Cj4gSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcK
PiBodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1s
YW4KPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRw
czovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
