Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 68826698F16
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Feb 2023 09:54:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F06EA81F5F;
	Thu, 16 Feb 2023 08:54:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F06EA81F5F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676537687;
	bh=lybeqsQeQRb9GzDuJ/zopVDVBNSy8tmGukyt8DujL88=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:Cc:From;
	b=C/0lj0XkMRI+PKuWXAlVfHETpzw360Pj2r14iPHwTP35S2dGKuVrozaMdp63ZCb25
	 Wyx+xSuxy6S4hU5ew6ge7oROwARDi+HUPY/c8gK4ZWemsvZoTGoMdHaH1tiy/It+ZF
	 wN9kQ+fCHnaH/76c9wQ7dR3i/M9hir6erEIu/o4/vt3Wowe8HEfLtTbQSSEGc5G3oM
	 YDcl5Y5F6DyZXxq2jvVClJgRtT534hrTBJG9U0Q/Iv+ttIU/jUmCZYWD2qAIVj6YXM
	 vs1JKHWhdFqzNxCR1pQvTWdanS6VEJcBe0Xtvn6Qk/DXOogAlXw5QFe495yQEvrfXS
	 MQ1Xynksbu/jw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HpF99VARv4wg; Thu, 16 Feb 2023 08:54:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C7DE48141A;
	Thu, 16 Feb 2023 08:54:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C7DE48141A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 529861BF3CD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 08:54:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2ACFF60FA2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 08:54:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2ACFF60FA2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v8WCo9QB6uAA for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Feb 2023 08:54:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C697260F3C
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C697260F3C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 08:54:38 +0000 (UTC)
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-217-mi3KGyF2PkyDlBQQggm2yw-1; Thu, 16 Feb 2023 03:54:35 -0500
X-MC-Unique: mi3KGyF2PkyDlBQQggm2yw-1
Received: by mail-ej1-f69.google.com with SMTP id
 gb21-20020a170907961500b008b107fa657cso1091595ejc.23
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 00:54:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=mime-version:user-agent:content-transfer-encoding:organization
 :references:in-reply-to:date:cc:to:reply-to:from:subject:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=GTF0UXYVHA2JERDBvGB00x2ISBGz2EPrjEGg2PKXGVw=;
 b=BUevQWJw5Yp3IQYjpiJPVjG7PmJe2/CAnGMTz4Il8SrlNBR+5UFFo2cBYP6bcLNVtV
 u1YH2+IYODZ8rd/aYOZDDkqjOqmHCiInn6uXquZSy8HjkUB+kIckP+WLCDso0Q0/Xytx
 BUQwgJjpjq/x15j/AZgVwSh+jGbNglLv6kb6HscuxS8PtitJYIwkriaQIkjqLYj3Lb7h
 EQW4Oihe938HW/OfWx1jiu/lqYrdRr4imp9GNf0PYAcoej0SQcT7FrO2Go7r3cz49vuO
 LRTINJh5XBs4jE49BM1VQL6GD/c1usYwQBZrmOC37PbY+m6ajoPI0vl2fdEDIFi7kpOI
 0s5g==
X-Gm-Message-State: AO0yUKVg5QCriFwl4v3ifemnhfB25GOktt9CUTk/Pql12eufaV9t/al7
 OlE28Lw4rRgLY/2L5kU3sV+G2opdbyufyk0OlzfKxbn4D8w5jST5DDsX3YGUUURTDpO136c+hur
 leFITw4VMjnKxSqjLe8nlk1rp74C+xA==
X-Received: by 2002:a17:907:20b3:b0:8aa:c0d6:2dc6 with SMTP id
 pw19-20020a17090720b300b008aac0d62dc6mr5301023ejb.29.1676537674396; 
 Thu, 16 Feb 2023 00:54:34 -0800 (PST)
X-Google-Smtp-Source: AK7set/3ihKxwE+Q7tfvnK085jB5OPwJdt/u7+zwfRUagcquH4MhnuGCgfPGp3NIBexKCoXg3BMQdQ==
X-Received: by 2002:a17:907:20b3:b0:8aa:c0d6:2dc6 with SMTP id
 pw19-20020a17090720b300b008aac0d62dc6mr5301014ejb.29.1676537674089; 
 Thu, 16 Feb 2023 00:54:34 -0800 (PST)
Received: from [192.168.2.33] (ip4-46-175-183-46.net.iconn.cz. [46.175.183.46])
 by smtp.gmail.com with ESMTPSA id
 i2-20020a170906850200b0087873afb1b4sm532024ejx.41.2023.02.16.00.54.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Feb 2023 00:54:33 -0800 (PST)
Message-ID: <07963577e713b21f27fd972a07ec9a717e7c02bb.camel@redhat.com>
From: Petr Oros <poros@redhat.com>
To: Dave Ertman <david.m.ertman@intel.com>, intel-wired-lan@lists.osuosl.org
Date: Thu, 16 Feb 2023 09:54:33 +0100
In-Reply-To: <20230215191757.1826508-1-david.m.ertman@intel.com>
References: <20230215191757.1826508-1-david.m.ertman@intel.com>
Organization: Red Hat
User-Agent: Evolution 3.46.2
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1676537676;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=GTF0UXYVHA2JERDBvGB00x2ISBGz2EPrjEGg2PKXGVw=;
 b=L2G7BqAJ48r56GjphKDaGbUWD1IKmYQ5chPXiOvnjGUySsEin2vxLNNVwR41SwcTqRi1pi
 NfKnYFgkEFCZ+1f/DvakJRJmQtr1Nf/+qozcz7L91tLWEvTfufqnIENkbGanfS4ohhYUWQ
 F0XaW9Rz/JsK16LiQb9/pCshvYzvmk0=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=L2G7BqAJ
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

SGkgRGF2ZSwKClRoZSBmaXJzdCB2ZXJzaW9uIHdhcyBzZW50IGFuZCBjb21tZW50ZWQgb24gdXBz
dHJlYW0gbWwuCldoeSBkbyB5b3Ugb21pdCBjYyBvbiB1cHN0cmVhbSAobmV0ZGV2QHZnZXIua2Vy
bmVsLm9yZwo8bmV0ZGV2QHZnZXIua2VybmVsLm9yZz4pPwpDYW4geW91IHJlc2VuZCB0aGlzIHRv
IHVwc3RyZWFtIG1sIHRvIHRha2UgdmFsdWFibGUgZmVlZGJhY2sgZm9yIHRoaXMKY3JpdGljYWwg
Zml4PwoKTWFueSBUaGFua3MsClBldHIKCgpEYXZlIEVydG1hbiBww63FoWUgdiBTdCAxNS4gMDIu
IDIwMjMgdiAxMToxNyAtMDgwMDoKPiBSRE1BIGlzIG5vdCBzdXBwb3J0ZWQgaW4gaWNlIG9uIGEg
UEYgdGhhdCBoYXMgYmVlbiBhZGRlZCB0byBhIGJvbmRlZAo+IGludGVyZmFjZS4gVG8gZW5mb3Jj
ZSB0aGlzLCB3aGVuIGFuIGludGVyZmFjZSBlbnRlcnMgYSBib25kLCB3ZQo+IHVucGx1Zwo+IHRo
ZSBhdXhpbGlhcnkgZGV2aWNlIHRoYXQgc3VwcG9ydHMgUkRNQSBmdW5jdGlvbmFsaXR5LsKgIFRo
aXMgdW5wbHVnCj4gY3VycmVudGx5IGhhcHBlbnMgaW4gdGhlIGNvbnRleHQgb2YgaGFuZGxpbmcg
dGhlIG5ldGRldiBib25kaW5nCj4gZXZlbnQuCj4gVGhpcyBldmVudCBpcyBzZW50IHRvIHRoZSBp
Y2UgZHJpdmVyIHVuZGVyIFJUTkwgY29udGV4dC7CoCBUaGlzIGlzCj4gY2F1c2luZwo+IGEgZGVh
ZGxvY2sgd2hlcmUgdGhlIFJETUEgZHJpdmVyIGlzIHdhaXRpbmcgZm9yIHRoZSBSVE5MIGxvY2sg
dG8KPiBjb21wbGV0ZQo+IHRoZSByZW1vdmFsLgo+IAo+IERlZmVyIHRoZSB1bnBsdWdnaW5nL3Jl
LXBsdWdnaW5nIG9mIHRoZSBhdXhpbGlhcnkgZGV2aWNlIHRvIHRoZQo+IHNlcnZpY2UKPiB0YXNr
IHNvIHRoYXQgaXQgaXMgbm90IHBlcmZvcm1lZCB1bmRlciB0aGUgUlROTCBsb2NrIGNvbnRleHQu
Cj4gCj4gUmVwb3J0ZWQtYnk6IEphcm9zbGF2IFB1bGNoYXJ0IDxqYXJvc2xhdi5wdWxjaGFydEBn
b29kZGF0YS5jb20+Cj4gTGluazoKPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1yZG1h
LzY4YjE0YjExLWQwYzctNjVjOS00ZWViLTA0ODdjOTVlMzk1ZEBsZWVtaHVpcy5pbmZvLwo+IEZp
eGVzOiA1Y2IxZWJkYmM0MzQgKCJpY2U6IEZpeCByYWNlIGNvbmRpdGlvbiBkdXJpbmcgaW50ZXJm
YWNlCj4gZW5zbGF2ZSIpCj4gRml4ZXM6IDQyNWM5YmQwNmI3YSAoIlJETUEvaXJkbWE6IFJlcG9y
dCB0aGUgY29ycmVjdCBsaW5rIHNwZWVkIikKPiBTaWduZWQtb2ZmLWJ5OiBEYXZlIEVydG1hbiA8
ZGF2aWQubS5lcnRtYW5AaW50ZWwuY29tPgo+IC0tLQo+IENoYW5nZXMgc2luY2UgdjE6Cj4gUmV2
ZXJzZWQgb3JkZXIgb2YgYml0IHByb2Nlc3NpbmcgaW4gaWNlX3NlcnZpY2VfdGFzayBmb3IgUExV
Ry9VTlBMVUcKPiAKPiDCoGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2UuaMKgwqDC
oMKgwqAgfCAxNCArKysrKy0tLS0tLS0tLQo+IMKgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWNlL2ljZV9tYWluLmMgfCAxOSArKysrKysrKy0tLS0tLS0tLS0tCj4gwqAyIGZpbGVzIGNoYW5n
ZWQsIDEzIGluc2VydGlvbnMoKyksIDIwIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlLmgKPiBiL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2ljZS9pY2UuaAo+IGluZGV4IDJmMGI2MDRhYmM1ZS4uMGFkOWJhYjg0NjE3IDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2UuaAo+ICsrKyBi
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2UuaAo+IEBAIC01MDYsNiArNTA2LDcg
QEAgZW51bSBpY2VfcGZfZmxhZ3Mgewo+IMKgwqDCoMKgwqDCoMKgwqBJQ0VfRkxBR19WRl9WTEFO
X1BSVU5JTkcsCj4gwqDCoMKgwqDCoMKgwqDCoElDRV9GTEFHX0xJTktfTEVOSUVOVF9NT0RFX0VO
QSwKPiDCoMKgwqDCoMKgwqDCoMKgSUNFX0ZMQUdfUExVR19BVVhfREVWLAo+ICvCoMKgwqDCoMKg
wqDCoElDRV9GTEFHX1VOUExVR19BVVhfREVWLAo+IMKgwqDCoMKgwqDCoMKgwqBJQ0VfRkxBR19N
VFVfQ0hBTkdFRCwKPiDCoMKgwqDCoMKgwqDCoMKgSUNFX0ZMQUdfR05TUyzCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAvKiBHTlNTIHN1Y2Nlc3NmdWxseQo+IGluaXRpYWxpemVk
ICovCj4gwqDCoMKgwqDCoMKgwqDCoElDRV9QRl9GTEFHU19OQklUU8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAvKiBtdXN0IGJlIGxhc3QgKi8KPiBAQCAtOTUwLDE2ICs5NTEsMTEgQEAgc3Rh
dGljIGlubGluZSB2b2lkIGljZV9zZXRfcmRtYV9jYXAoc3RydWN0Cj4gaWNlX3BmICpwZikKPiDC
oCAqLwo+IMKgc3RhdGljIGlubGluZSB2b2lkIGljZV9jbGVhcl9yZG1hX2NhcChzdHJ1Y3QgaWNl
X3BmICpwZikKPiDCoHsKPiAtwqDCoMKgwqDCoMKgwqAvKiBXZSBjYW4gZGlyZWN0bHkgdW5wbHVn
IGF1eCBkZXZpY2UgaGVyZSBvbmx5IGlmIHRoZSBmbGFnCj4gYml0Cj4gLcKgwqDCoMKgwqDCoMKg
ICogSUNFX0ZMQUdfUExVR19BVVhfREVWIGlzIG5vdCBzZXQgYmVjYXVzZQo+IGljZV91bnBsdWdf
YXV4X2RldigpCj4gLcKgwqDCoMKgwqDCoMKgICogY291bGQgcmFjZSB3aXRoIGljZV9wbHVnX2F1
eF9kZXYoKSBjYWxsZWQgZnJvbQo+IC3CoMKgwqDCoMKgwqDCoCAqIGljZV9zZXJ2aWNlX3Rhc2so
KS4gSW4gdGhpcyBjYXNlIHdlIG9ubHkgY2xlYXIgdGhhdCBiaXQKPiBub3cgYW5kCj4gLcKgwqDC
oMKgwqDCoMKgICogYXV4IGRldmljZSB3aWxsIGJlIHVucGx1Z2dlZCBsYXRlciBvbmNlCj4gaWNl
X3BsdWdfYXV4X2RldmljZSgpCj4gLcKgwqDCoMKgwqDCoMKgICogY2FsbGVkIGZyb20gaWNlX3Nl
cnZpY2VfdGFzaygpIGZpbmlzaGVzIChzZWUKPiBpY2Vfc2VydmljZV90YXNrKCkpLgo+ICvCoMKg
wqDCoMKgwqDCoC8qIGRlZmVyIHVucGx1ZyB0byBzZXJ2aWNlIHRhc2sgdG8gYXZvaWQgUlROTCBs
b2NrIGFuZAo+ICvCoMKgwqDCoMKgwqDCoCAqIGNsZWFyIFBMVUcgYml0IHNvIHRoYXQgcGVuZGlu
ZyBwbHVncyBkb24ndCBpbnRlcmZlcmUKPiDCoMKgwqDCoMKgwqDCoMKgICovCj4gLcKgwqDCoMKg
wqDCoMKgaWYgKCF0ZXN0X2FuZF9jbGVhcl9iaXQoSUNFX0ZMQUdfUExVR19BVVhfREVWLCBwZi0+
ZmxhZ3MpKQo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpY2VfdW5wbHVnX2F1eF9k
ZXYocGYpOwo+IC0KPiArwqDCoMKgwqDCoMKgwqBjbGVhcl9iaXQoSUNFX0ZMQUdfUExVR19BVVhf
REVWLCBwZi0+ZmxhZ3MpOwo+ICvCoMKgwqDCoMKgwqDCoHNldF9iaXQoSUNFX0ZMQUdfVU5QTFVH
X0FVWF9ERVYsIHBmLT5mbGFncyk7Cj4gwqDCoMKgwqDCoMKgwqDCoGNsZWFyX2JpdChJQ0VfRkxB
R19SRE1BX0VOQSwgcGYtPmZsYWdzKTsKPiDCoH0KPiDCoCNlbmRpZiAvKiBfSUNFX0hfICovCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbWFpbi5jCj4g
Yi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX21haW4uYwo+IGluZGV4IGE5YTdm
OGI1MjE0MC4uYjYyYzJmMThlYjVmIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2ljZS9pY2VfbWFpbi5jCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWNlL2ljZV9tYWluLmMKPiBAQCAtMjI5MCwxOCArMjI5MCwxNSBAQCBzdGF0aWMgdm9pZCBpY2Vf
c2VydmljZV90YXNrKHN0cnVjdAo+IHdvcmtfc3RydWN0ICp3b3JrKQo+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgfQo+IMKgwqDCoMKgwqDCoMKgwqB9Cj4gwqAKPiAtwqDCoMKgwqDC
oMKgwqBpZiAodGVzdF9iaXQoSUNFX0ZMQUdfUExVR19BVVhfREVWLCBwZi0+ZmxhZ3MpKSB7Cj4g
LcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoC8qIFBsdWcgYXV4IGRldmljZSBwZXIgcmVx
dWVzdCAqLwo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpY2VfcGx1Z19hdXhfZGV2
KHBmKTsKPiArwqDCoMKgwqDCoMKgwqAvKiB1bnBsdWcgYXV4IGRldiBwZXIgcmVxdWVzdCwgaWYg
YW4gdW5wbHVnIHJlcXVlc3QgY2FtZSBpbgo+ICvCoMKgwqDCoMKgwqDCoCAqIHdoaWxlIHByb2Nl
c3NpbmcgYSBwbHVnIHJlcXVlc3QsIHRoaXMgd2lsbCBoYW5kbGUgaXQKPiArwqDCoMKgwqDCoMKg
wqAgKi8KPiArwqDCoMKgwqDCoMKgwqBpZiAodGVzdF9hbmRfY2xlYXJfYml0KElDRV9GTEFHX1VO
UExVR19BVVhfREVWLCBwZi0+ZmxhZ3MpKQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBpY2VfdW5wbHVnX2F1eF9kZXYocGYpOwo+IMKgCj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoC8qIE1hcmsgcGx1Z2dpbmcgYXMgZG9uZSBidXQgY2hlY2sgd2hldGhlciB1bnBsdWcg
d2FzCj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqIHJlcXVlc3RlZCBkdXJpbmcg
aWNlX3BsdWdfYXV4X2RldigpIGNhbGwKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
ICogKGUuZy4gZnJvbSBpY2VfY2xlYXJfcmRtYV9jYXAoKSkgYW5kIGlmIHNvIHRoZW4KPiAtwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICogcGx1ZyBhdXggZGV2aWNlLgo+IC3CoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKi8KPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgaWYgKCF0ZXN0X2FuZF9jbGVhcl9iaXQoSUNFX0ZMQUdfUExVR19BVVhfREVWLCBwZi0KPiA+
ZmxhZ3MpKQo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
aWNlX3VucGx1Z19hdXhfZGV2KHBmKTsKPiAtwqDCoMKgwqDCoMKgwqB9Cj4gK8KgwqDCoMKgwqDC
oMKgLyogUGx1ZyBhdXggZGV2aWNlIHBlciByZXF1ZXN0ICovCj4gK8KgwqDCoMKgwqDCoMKgaWYg
KHRlc3RfYW5kX2NsZWFyX2JpdChJQ0VfRkxBR19QTFVHX0FVWF9ERVYsIHBmLT5mbGFncykpCj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGljZV9wbHVnX2F1eF9kZXYocGYpOwo+IMKg
Cj4gwqDCoMKgwqDCoMKgwqDCoGlmICh0ZXN0X2FuZF9jbGVhcl9iaXQoSUNFX0ZMQUdfTVRVX0NI
QU5HRUQsIHBmLT5mbGFncykpIHsKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHN0
cnVjdCBpaWRjX2V2ZW50ICpldmVudDsKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQt
bGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtd2lyZWQtbGFuCg==
