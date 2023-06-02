Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22B8A71FBD8
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Jun 2023 10:25:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 452A340B6B;
	Fri,  2 Jun 2023 08:25:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 452A340B6B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685694328;
	bh=M58wK5MZ/MFtFlcGVz+caqY9VO2cX5B0uuVilQ9N8Hc=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ObcBB5KXH2vz2Wk/nYl8Z6k8CwG0MknJf7y5pSQsDkqROFq62q3XJovBjVWm1GqP6
	 4re5JQjyqeaIDodCoZJkuCMc3eQIrMtCxRSFFfRQYzFLm3VaPpRP4pyave0I9fyWdF
	 UicSLqgFY8T6f9Xk/pZ3CPEDCr0+PcFQG6CyN9LX/BdjtsNl1e2A3fP98HeisMLpME
	 2rYt2GSKdiNl/K1vSXARjQhn91u7lFDFQoL3i7Z/oh1hfhYRB/wnbxJVPZGn/nJRWq
	 WmAg8G2ncoj2/WpQ4OyYY1mcU5wTad0puxhcEXR4wGJ3GWUgMSD4jACUAKUfxd7rsn
	 IA/VtuXAFGMKg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U7dbGQlN1JJo; Fri,  2 Jun 2023 08:25:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 14F224016B;
	Fri,  2 Jun 2023 08:25:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 14F224016B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2A05D1BF291
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jun 2023 08:25:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F402D424CB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jun 2023 08:25:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F402D424CB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aM-iEt72wtjY for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 Jun 2023 08:25:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BB8E4424C7
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BB8E4424C7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jun 2023 08:25:19 +0000 (UTC)
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-618-BkWKxU3-MDOD4B2_Rp1dpA-1; Fri, 02 Jun 2023 04:25:17 -0400
X-MC-Unique: BkWKxU3-MDOD4B2_Rp1dpA-1
Received: by mail-ed1-f71.google.com with SMTP id
 4fb4d7f45d1cf-514b05895f7so1400269a12.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 02 Jun 2023 01:25:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685694316; x=1688286316;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=7n8dOI38WDJ+weI63ip2iHprHpf48k991cpxizB9Ls4=;
 b=TGrSo+gMleAXw+zqCcMltZutVbKV/V48hCAddqsoZdrqyLEIi1Ibd8qQeAk010Ais8
 x92/6NTRUUEI9LD3q50rQng/G1feGJ+eubTSVeAMI9caXRH5xd2eAu/nNrGrUxKJmx3F
 pJmLcDna5YYbUmN6PK5KE5vdmgnRDWUu0E5c8QzJJoHpvDn4P5j8RrgA6AYDrAIkRE94
 zIXD7plb2IrDnaVpLR0SkcnmHHJ90NtL0aQvQovF9GAecYEDfilewbLA21+jb3kpWg5u
 VsDLlDe/PxmG4tSAdu21tU+F57FlvRImHLJc4Yyc4HK0yQyTLUCu0ZpVJUDA1pXxvdcw
 ZPAw==
X-Gm-Message-State: AC+VfDywTwQEJG09iaOnS+T9UUW+1D95ZkgGnJvrg17DEfOrW8w7iV53
 ik8Ye7zHkSdcHj3wrXpFca3weNXTPeWb8F2X6hZ22NSCBhwrN8sSJ7i9B6wA8AxN+86Db85lpTH
 xy194ZROYCm1SWV/WTbMsRQUnLxGwpp+ITPbXiVy4FHWqGA==
X-Received: by 2002:aa7:d4d3:0:b0:514:94c1:d06a with SMTP id
 t19-20020aa7d4d3000000b0051494c1d06amr1328797edr.30.1685694316334; 
 Fri, 02 Jun 2023 01:25:16 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ5Alk35xZWjxup/gX7R0raxsQzx+DuIRFMUXxkdaXs1YEtJYAVaIGduiFYYLln8sPEAcngRWqyjfxGjE1gxDfE=
X-Received: by 2002:aa7:d4d3:0:b0:514:94c1:d06a with SMTP id
 t19-20020aa7d4d3000000b0051494c1d06amr1328790edr.30.1685694316008; Fri, 02
 Jun 2023 01:25:16 -0700 (PDT)
MIME-Version: 1.0
References: <20230601211507.707619-1-jacob.e.keller@intel.com>
In-Reply-To: <20230601211507.707619-1-jacob.e.keller@intel.com>
From: Michal Schmidt <mschmidt@redhat.com>
Date: Fri, 2 Jun 2023 10:25:04 +0200
Message-ID: <CADEbmW03PibZgtpj+_iqWBD2Z2L5fZr1X5dORKK0o273zeZQxw@mail.gmail.com>
To: Jacob Keller <jacob.e.keller@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1685694318;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=7n8dOI38WDJ+weI63ip2iHprHpf48k991cpxizB9Ls4=;
 b=fVJ/7UhFlXL6SC4MTJxWAQevzJFPdUkUVYezehCWGJ7NLVF8Lgih7iPAZDQLblKYRKFW9b
 wMZO2R9C7bmWy5lIzMXllU8i0TJ4V8K3mmHZ60R33IpTeGX7oUr4BIn9WjGyUTpwhxte4a
 WNzfW2eWm3TsdJ4AQ2Oc7Y7m1Bg+PGg=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=fVJ/7UhF
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 0/5] ice: Improve
 miscellaneous interrupt code
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
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVGh1LCBKdW4gMSwgMjAyMyBhdCAxMToxNeKAr1BNIEphY29iIEtlbGxlciA8amFjb2IuZS5r
ZWxsZXJAaW50ZWwuY29tPiB3cm90ZToKPgo+IFRoaXMgc2VyaWVzIGltcHJvdmVzIHRoZSBkcml2
ZXIncyB1c2Ugb2YgdGhlIHRocmVhZGVkIElSUSBhbmQgdGhlCj4gY29tbXVuaWNhdGlvbiBiZXR3
ZWVuIGljZV9taXNjX2ludHIoKSBhbmQgdGhlIGljZV9taXNjX2ludHJfdGhyZWFkX2ZuKCkKPiB3
aGljaCB3YXMgcHJldmlvdXNseSBpbnRyb2R1Y2VkIGJ5IGNvbW1pdCAxMjI5YjMzOTczYzcgKCJp
Y2U6IEFkZCBsb3cKPiBsYXRlbmN5IFR4IHRpbWVzdGFtcCByZWFkIikuCj4KPiBGaXJzdCwgYSBu
ZXcgY3VzdG9tIGVudW1lcmF0ZWQgcmV0dXJuIHZhbHVlIGlzIHVzZWQgaW5zdGVhZCBvZiBhIGJv
b2xlYW4gZm9yCj4gaWNlX3B0cF9wcm9jZXNzX3RzKCkuIFRoaXMgc2lnbmlmaWNhbnRseSByZWR1
Y2VzIHRoZSBjb2duaXRpdmUgYnVyZGVuIHdoZW4KPiByZXZpZXdpbmcgdGhlIGxvZ2ljIGZvciB0
aGlzIGZ1bmN0aW9uLCBhcyB0aGUgZXhwZWN0ZWQgYWN0aW9uIGlzIGNsZWFyIGZyb20KPiB0aGUg
cmV0dXJuIHZhbHVlIG5hbWUuCj4KPiBTZWNvbmQsIHRoZSB1bmNvbmRpdGlvbmFsIGxvb3AgaW4g
aWNlX21pc2NfaW50cl90aHJlYWRfZm4oKSBpcyByZW1vdmVkLAo+IHJlcGxhY2luZyBpdCB3aXRo
IGEgd3JpdGUgdG8gdGhlIE90aGVyIEludGVycnVwdCBDYXVzZSByZWdpc3Rlci4gVGhpcyBjYXVz
ZXMKPiB0aGUgTUFDIHRvIHRyaWdnZXIgdGhlIFR4IHRpbWVzdGFtcCBpbnRlcnJ1cHQgYWdhaW4u
IFRoaXMgbWFrZXMgaXQgcG9zc2libGUKPiB0byBzYWZlbHkgdXNlIHRoZSBpY2VfbWlzY19pbnRy
X3RocmVhZF9mbigpIHRvIGhhbmRsZSBvdGhlciB0YXNrcyBiZXlvbmQKPiBqdXN0IHRoZSBUeCB0
aW1lc3RhbXBzLiBJdCBpcyBhbHNvIGVhc2llciB0byByZWFzb24gYWJvdXQgc2luY2UgdGhlIHRo
cmVhZAo+IGZ1bmN0aW9uIHdpbGwgZXhpdCBjbGVhbmx5IGlmIHdlIGRvIHNvbWV0aGluZyBsaWtl
IGRpc2FibGUgdGhlIGludGVycnVwdCBhbmQKPiBjYWxsIHN5bmNocm9uaXplX2lycSgpLgo+Cj4g
VGhpcmQsIHJlZmFjdG9yIHRoZSBoYW5kbGluZyBmb3IgZXh0ZXJuYWwgdGltZXN0YW1wIGV2ZW50
cyB0byB1c2UgdGhlCj4gbWlzY2VsbGFuZW91cyB0aHJlYWQgZnVuY3Rpb24uIFRoaXMgcmVzb2x2
ZXMgYW4gaXNzdWUgd2l0aCB0aGUgZXh0ZXJuYWwKPiB0aW1lIHN0YW1wcyBnZXR0aW5nIGJsb2Nr
ZWQgd2hpbGUgcHJvY2Vzc2luZyB0aGUgcGVyaW9kaWMgd29yayBmdW5jdGlvbgo+IHRhc2suCj4K
PiBGb3VydGgsIGEgc2ltcGxpZmljYXRpb24gb2YgdGhlIGljZV9taXNjX2ludHIoKSBmdW5jdGlv
biB0byBhbHdheXMgcmV0dXJuCj4gSVJRX1dBS0VfVEhSRUFELCBhbmQgc2NoZWR1bGUgdGhlIGlj
ZSBzZXJ2aWNlIHRhc2sgaW4gdGhlCj4gaWNlX21pc2NfaW50cl90aHJlYWRfZm4oKSBpbnN0ZWFk
Lgo+Cj4gRmluYWxseSwgdGhlIE90aGVyIEludGVycnVwdCBDYXVzZSBpcyBrZXB0IGRpc2FibGVk
IG92ZXIgdGhlIHRocmVhZCBmdW5jdGlvbgo+IHByb2Nlc3NpbmcsIHJhdGhlciB0aGFuIGltbWVk
aWF0ZWx5IHJlLWVuYWJsZWQuCj4KPiBTcGVjaWFsIHRoYW5rcyB0byBNaWNoYWwgU2NobWlkdCBm
b3IgdGhlIGNhcmVmdWwgcmV2aWV3IG9mIHRoZSBzZXJpZXMgYW5kCj4gcG9pbnRpbmcgb3V0IG15
IG1pc3VuZGVyc3RhbmRpbmdzIG9mIHRoZSBrZXJuZWwgSVJRIGNvZGUuIEl0IGhhcyBiZWVuCj4g
ZGV0ZXJtaW5lZCB0aGF0IHRoZSByYWNlIG91dGxpbmVkIGFzIGJlaW5nIGZpeGVkIGluIHByZXZp
b3VzIHNlcmllcyB3YXMKPiBhY3R1YWxseSBpbnRyb2R1Y2VkIGJ5IHRoaXMgc2VyaWVzIGl0c2Vs
Ziwgd2hpY2ggSSd2ZSBzaW5jZSBjb3JyZWN0ZWQuCj4KPiBDaGFuZ2VzIHNpbmNlIHYyOgo+ICog
aGVhdmlseSByZS1vcmRlcmVkIHBhdGNoZXMgZm9yIGNsYXJpdHkgYW5kIGEgYmV0dGVyIGZsb3cg
b2YgaW1wbGVtZW50YXRpb24KPiAqIHVzZWQgYXRvbWljIGJpdHMgd2hlbiBjb21tdW5pY2F0aW5n
IGJldHdlZW4gaWNlX21pc2NfaW50cigpIGFuZAo+ICAgaWNlX21pc2NfaW50cl90aHJlYWRfZm4o
KQo+ICogcmUtd3JvdGUgY29tbWl0IG1lc3NhZ2VzIHRvIGltcHJvdmUgY2xhcml0eSBhbmQgcmVt
b3ZlIG1pc3Rha2VzIGFib3V0IGhvdwo+ICAgdGhyZWFkZWQgSVJRcyB3b3JrLgo+Cj4gSmFjb2Ig
S2VsbGVyICgzKToKPiAgIGljZTogaW50cm9kdWNlIElDRV9UWF9UU1RBTVBfV09SSyBlbnVtZXJh
dGlvbgo+ICAgaWNlOiB0cmlnZ2VyIFBGSU5UX09JQ1JfVFNZTl9UWCBpbnRlcnJ1cHQgaW5zdGVh
ZCBvZiBwb2xsaW5nCj4gICBpY2U6IGRvIG5vdCByZS1lbmFibGUgbWlzY2VsbGFuZW91cyBpbnRl
cnJ1cHQgdW50aWwgdGhyZWFkX2ZuCj4gICAgIGNvbXBsZXRlcwo+Cj4gS2Fyb2wgS29sYWNpbnNr
aSAoMik6Cj4gICBpY2U6IGhhbmRsZSBleHR0cyBpbiB0aGUgbWlzY2VsbGFuZW91cyBpbnRlcnJ1
cHQgdGhyZWFkCj4gICBpY2U6IGFsd2F5cyByZXR1cm4gSVJRX1dBS0VfVEhSRUFEIGluIGljZV9t
aXNjX2ludHIoKQo+Cj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2UuaCAgICAg
IHwgIDcgKysrCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbWFpbi5jIHwg
NDcgKysrKysrKysrKystLS0tLS0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2lj
ZV9wdHAuYyAgfCA2MiArKysrKysrKysrKystLS0tLS0tLS0tLQo+ICBkcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pY2UvaWNlX3B0cC5oICB8IDE2ICsrKystLQo+ICA0IGZpbGVzIGNoYW5nZWQs
IDg0IGluc2VydGlvbnMoKyksIDQ4IGRlbGV0aW9ucygtKQo+Cj4KPiBiYXNlLWNvbW1pdDogZjA4
ZmYwNTNhNDdhNTFkNGYzOTFkNDA3YmRkYTZhZGI0ZTdlZDQ5OQo+IC0tCj4gMi40MC4wLjQ3MS5n
YmQ3ZjE0ZDkzNTNiCgpUaGFua3MsIGl0IGxvb2tzIGdvb2Qgbm93LiBUbyB0aGUgc2VyaWVzOgoK
UmV2aWV3ZWQtYnk6IE1pY2hhbCBTY2htaWR0IDxtc2NobWlkdEByZWRoYXQuY29tPgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFu
IG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9z
dW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
