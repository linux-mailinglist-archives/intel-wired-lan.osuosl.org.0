Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6664C47434B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Dec 2021 14:19:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C73EF40443;
	Tue, 14 Dec 2021 13:19:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XyvwoUyTuBJr; Tue, 14 Dec 2021 13:19:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 21D514053C;
	Tue, 14 Dec 2021 13:19:09 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F25131BF33F
 for <intel-wired-lan@osuosl.org>; Tue, 14 Dec 2021 13:19:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D706360BA1
 for <intel-wired-lan@osuosl.org>; Tue, 14 Dec 2021 13:19:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cM5pRFvw5R0a for <intel-wired-lan@osuosl.org>;
 Tue, 14 Dec 2021 13:19:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A6BA460BA4
 for <intel-wired-lan@osuosl.org>; Tue, 14 Dec 2021 13:19:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1639487941;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=c4eqNrgbYhzKT3BNT7O1ZxukBP8xtB9ukh5+qPOVcog=;
 b=BUPneUvQbj47KCirQ5+Pz1HLgwJ4Flw80EnYIzaf5qLUFPamxBy70lElOOSns0fuEmSfUz
 TvtgszssNbkv4s/GIZ3sHqAznEzh7/k+zjYY9BI0q5stx324cKdpSy94EDXxRV/MhdW+gE
 i2CFlePhBhfrThVlPTu3oBF/wing4p8=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-494-RUHzPdZYPzKg7K7vES9j1w-1; Tue, 14 Dec 2021 08:18:59 -0500
X-MC-Unique: RUHzPdZYPzKg7K7vES9j1w-1
Received: by mail-qv1-f71.google.com with SMTP id
 jo4-20020a056214500400b003a5cb094fb8so26981647qvb.22
 for <intel-wired-lan@osuosl.org>; Tue, 14 Dec 2021 05:18:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:references:from:in-reply-to
 :content-transfer-encoding;
 bh=c4eqNrgbYhzKT3BNT7O1ZxukBP8xtB9ukh5+qPOVcog=;
 b=ssJcpTSZ28/0s/Ie5E+Uh5sl0txhGvqQmf1iqUCoe/Qec2B+7yH5rx783hRd2voiK4
 eWcyDDXPQa/biJI4JDPr3f3IFACqRnpe8unX12DYm+O2RAN8+kRGlvlaOsq3GcHCe79b
 wAgBg24qtFme05V1u+BS4kzE7chgPmKMBvt2D7HfgbeUibc9x28dmauWJdvWhJ7GYUhK
 Vhxqnfxh87VjNNAfrC0MHz+1ij42ThBaU8VqXep247fHqmOdvpNVjKgfZo9EAodVuAy6
 dOFLeJH+xIk2xOKuq3AVptNHhXqVb3L9H9TGDH1l7rL3eQ8H9HeoBiblQEtC1/IOtlYi
 ll/A==
X-Gm-Message-State: AOAM532B8c+u82mbHJnW9kCaomENNeD6Oz3Ytb9LxZizZLlefbnh542L
 5aKfnVEq53Ef/a2h6L0RXD44NJDUJcCVi9iR8TVubu5GmBh29ieyA6kYBj5H/3DoMQHTNu1pdAR
 zOPOT5XaFUXCZuJvXba8Tdw==
X-Received: by 2002:ac8:7d84:: with SMTP id c4mr5737501qtd.94.1639487938587;
 Tue, 14 Dec 2021 05:18:58 -0800 (PST)
X-Google-Smtp-Source: ABdhPJx5aPXGCO3iaR7HZV5k5m153dQNpI9qNCqC0IojeGo0AAjR10XzwAzbRpPOJRg5v9hx0s/I4w==
X-Received: by 2002:ac8:7d84:: with SMTP id c4mr5737468qtd.94.1639487938261;
 Tue, 14 Dec 2021 05:18:58 -0800 (PST)
Received: from [192.168.1.121] ([69.73.103.33])
 by smtp.gmail.com with ESMTPSA id p1sm7355220qke.109.2021.12.14.05.18.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Dec 2021 05:18:57 -0800 (PST)
Message-ID: <50c30d0c-213d-dd2f-1346-40f92fd315bd@redhat.com>
Date: Tue, 14 Dec 2021 07:18:57 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
References: <20211208102153.669338-1-jkc@redhat.com>
 <20211208102153.669338-2-jkc@redhat.com>
 <5da6e781833ce519a052754a68fde14d8477180b.camel@intel.com>
From: Ken Cox <jkc@redhat.com>
In-Reply-To: <5da6e781833ce519a052754a68fde14d8477180b.camel@intel.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jkc@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [Patch 1/2] iavf: Fix panic in iavf_remove
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiAxMi8xMy8yMSAxMjoyNiwgTmd1eWVuLCBBbnRob255IEwgd3JvdGU6Cj4gT24gV2VkLCAy
MDIxLTEyLTA4IGF0IDA0OjIxIC0wNjAwLCBLZW4gQ294IHdyb3RlOgo+PiBJdCdzIHBvc3NpYmxl
IGZvciB0aGUgY2xpZW50X3Rhc2sgdG8gZ2V0IHNjaGVkdWxlZCBieSB0aGUgd2F0Y2hkb2cKPj4g
YWZ0ZXIgY2FuY2VsX2RlbGF5ZWRfd29ya19zeW5jKCZhZGFwdGVyLT5jbGllbnRfdGFzayk7wqAg
VGhpcyBjYW4KPj4gY2F1c2UKPj4gYSBwYW5pYyBiZWNhdXNlIGZyZWVfbmV0ZGV2KCkgaXMgY2Fs
bGVkIHdpdGggdGhlIGNsaWVudF90YXNrIHN0aWxsCj4+IHF1ZXVlZAo+PiBvbiB0aGUgd29yayBx
dWV1ZS4KPj4KPj4gVGhlIHN0YWNrIGJhY2t0cmFjZSB1c3VhbGx5IGxvb2tzIHNpbWlsYXIgdG86
Cj4+Cj4+IFvCoCAxMjEuMjcyOTYzXSBXb3JrcXVldWU6wqAgMHgwIChpYXZmKQo+PiBbwqAgMTIx
LjI3Mjk2OV0gUklQOiAwMDEwOl9fbGlzdF9kZWxfZW50cnlfdmFsaWQuY29sZC4xKzB4MjAvMHg0
Ywo+PiAuLi4KPj4gW8KgIDEyMS4yNzI5ODBdIENhbGwgVHJhY2U6Cj4+IFvCoCAxMjEuMjcyOTg1
XcKgIG1vdmVfbGlua2VkX3dvcmtzKzB4NDkvMHhhMAo+PiBbwqAgMTIxLjI3Mjk4OF3CoCBwd3Ff
YWN0aXZhdGVfZGVsYXllZF93b3JrKzB4NDMvMHgxMDAKPj4gW8KgIDEyMS4yNzI5OTFdwqAgcHdx
X2RlY19ucl9pbl9mbGlnaHQrMHg1ZC8weDkwCj4+IFvCoCAxMjEuMjcyOTkzXcKgIHdvcmtlcl90
aHJlYWQrMHgzMC8weDM3MAo+PiBbwqAgMTIxLjI3Mjk5NV3CoCA/IHByb2Nlc3Nfb25lX3dvcmsr
MHg0MjAvMHg0MjAKPj4gW8KgIDEyMS4yNzI5OThdwqAga3RocmVhZCsweDE1ZC8weDE4MAo+PiBb
wqAgMTIxLjI3MzAwMF3CoCA/IF9fa3RocmVhZF9wYXJrbWUrMHhhMC8weGEwCj4+IFvCoCAxMjEu
MjczMDAzXcKgIHJldF9mcm9tX2ZvcmsrMHgxZi8weDQwCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEtl
biBDb3ggPGprY0ByZWRoYXQuY29tPgo+PiAtLS0KPj4gIMKgZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWF2Zi9pYXZmX21haW4uYyB8IDIgKy0KPj4gIMKgMSBmaWxlIGNoYW5nZWQsIDEgaW5z
ZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfbWFpbi5jCj4+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWF2Zi9pYXZmX21haW4uYwo+PiBpbmRleCA2YzJhZmJjOGFjYmNkLi42M2VlYzdlZGJm
NjBhIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZf
bWFpbi5jCj4+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl9tYWlu
LmMKPj4gQEAgLTM5NDAsNyArMzk0MCw2IEBAIHN0YXRpYyB2b2lkIGlhdmZfcmVtb3ZlKHN0cnVj
dCBwY2lfZGV2ICpwZGV2KQo+PiAgwqDCoMKgwqDCoMKgwqDCoHNldF9iaXQoX19JQVZGX0lOX1JF
TU9WRV9UQVNLLCAmYWRhcHRlci0+Y3JpdF9zZWN0aW9uKTsKPj4gIMKgwqDCoMKgwqDCoMKgwqBj
YW5jZWxfZGVsYXllZF93b3JrX3N5bmMoJmFkYXB0ZXItPmluaXRfdGFzayk7Cj4+ICDCoMKgwqDC
oMKgwqDCoMKgY2FuY2VsX3dvcmtfc3luYygmYWRhcHRlci0+cmVzZXRfdGFzayk7Cj4+IC3CoMKg
wqDCoMKgwqDCoGNhbmNlbF9kZWxheWVkX3dvcmtfc3luYygmYWRhcHRlci0+Y2xpZW50X3Rhc2sp
Owo+PiAgwqDCoMKgwqDCoMKgwqDCoGlmIChhZGFwdGVyLT5uZXRkZXZfcmVnaXN0ZXJlZCkgewo+
PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB1bnJlZ2lzdGVyX25ldGRldihuZXRk
ZXYpOwo+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBhZGFwdGVyLT5uZXRkZXZf
cmVnaXN0ZXJlZCA9IGZhbHNlOwo+PiBAQCAtMzk3NCw2ICszOTczLDcgQEAgc3RhdGljIHZvaWQg
aWF2Zl9yZW1vdmUoc3RydWN0IHBjaV9kZXYgKnBkZXYpCj4+ICDCoMKgwqDCoMKgwqDCoMKgaWF2
Zl9mcmVlX3FfdmVjdG9ycyhhZGFwdGVyKTsKPj4gICAKPj4gIMKgwqDCoMKgwqDCoMKgwqBjYW5j
ZWxfZGVsYXllZF93b3JrX3N5bmMoJmFkYXB0ZXItPndhdGNoZG9nX3Rhc2spOwo+PiArwqDCoMKg
wqDCoMKgwqBjYW5jZWxfZGVsYXllZF93b3JrX3N5bmMoJmFkYXB0ZXItPmNsaWVudF90YXNrKTsK
Pj4gICAKPj4gIMKgwqDCoMKgwqDCoMKgwqBjYW5jZWxfd29ya19zeW5jKCZhZGFwdGVyLT5hZG1p
bnFfdGFzayk7Cj4+ICAgCj4gCj4gSGkgS2VuLAo+IAo+IFdoYXQgdHJlZSBpcyB0aGlzIHBhdGNo
IGJhc2VkIG9uPyBUaGlzIGRvZXNuJ3QgYXBwbHkgdG8gZWl0aGVyIG9mIHRoZQo+IElXTCB0cmVl
cyBvciB0aGUgbmV0ZGV2IHRyZWVzLgpTb3JyeSwgSSB3YXMgaW4gdGhlIHdyb25nIGJyYW5jaCB3
aGVuIEkgZ2VuZXJhdGVkIHRoZXNlIHBhdGNoZXMuICBQbGVhc2UgCmRpc3JlZ2FyZC4gIEkgd2ls
bCByZS1ldmFsdWF0ZSBhbmQgcmVzZW5kIGlmIG5lY2Vzc2FyeS4KCj4gCj4gVGhlIG9yZGVyaW5n
IGxvb2tzIGNvcnJlY3Qgb24gdGhlIGtlcm5lbCB0cmVlIHdpdGggd2F0Y2hkb2dfdGFzayBiZWlu
Zwo+IGNhbmNlbGxlZCBiZWZvcmUgdGhlIGNsaWVudF90YXNrIFsxXS4gSG93ZXZlciwgd2UgZG8g
aGF2ZSBhbiBleHRyYQo+ICdjYW5jZWxfZGVsYXllZF93b3JrX3N5bmMoJmFkYXB0ZXItPndhdGNo
ZG9nX3Rhc2spJy4gSSdsbCBnZXQgYSBwYXRjaAo+IHRvZ2V0aGVyIHRvIHJlbW92ZSB0aGUgZXh0
cmEgb25lLgo+IAo+IFRoYW5rcywKPiBUb255Cj4gCj4gCj4gWzFdIGh0dHBzOi8vZWxpeGlyLmJv
b3RsaW4uY29tL2xpbnV4L3Y1LjE2LQo+IHJjNS9zb3VyY2UvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWF2Zi9pYXZmX21haW4uYyMzOTc5Cj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVs
LXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
