Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 595C86D0E2D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Mar 2023 20:56:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5CC6261689;
	Thu, 30 Mar 2023 18:56:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5CC6261689
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680202593;
	bh=OBAKh4jEKOFYRi+HwHHXs5EilA+gNgj9SbGwZg7aOtw=;
	h=From:Date:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=K07wvucGY/494ZkYX58TpwIa+44CQWPuIATftdapCy2FGrYCoZh8y50QbTcVaMaJt
	 o7MsyHWBo+6l07TIvfnQ/v8NBzVoJc8ayZW6Qtbzfwe4FJ9WYBb/4DnymN99uZPmw2
	 H7uEUKkQI5qtXRk0hKaKetsJ23dAfkdNFDqeVQXASo1b71jrp+tB6jh/8VucETzclf
	 yAMHHe9njqX7eftLkWS5L/8uCSkuz9JnjK5t0wQEXQc2ckkVq1ymnWDK4RUJl/AIy9
	 HfyL3N8injdfhc5u/7PpcT+yJrfryn1Pz9YI8/kJojgGFx86jU8Rk8vNUQYKA8qLFX
	 5VtBgzOThLQwg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xTUfiy4sJqR1; Thu, 30 Mar 2023 18:56:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2E59761682;
	Thu, 30 Mar 2023 18:56:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2E59761682
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D38581BF2AB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 18:56:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A823D409BE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 18:56:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A823D409BE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z78pwFUIqnyI for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Mar 2023 18:56:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 982944043A
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 982944043A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 18:56:25 +0000 (UTC)
Received: from mail-lf1-f70.google.com (mail-lf1-f70.google.com
 [209.85.167.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-180-rTGjl89nPee69nHG8tzegA-1; Thu, 30 Mar 2023 14:56:23 -0400
X-MC-Unique: rTGjl89nPee69nHG8tzegA-1
Received: by mail-lf1-f70.google.com with SMTP id
 p13-20020a056512312d00b004e99d8785f0so7618369lfd.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 11:56:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680202581;
 h=content-transfer-encoding:in-reply-to:references:to
 :content-language:subject:cc:user-agent:mime-version:date:message-id
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=I0okzHNuuHJ7nFnN8RcKBErkj+TCd+hop8cnDkGfnQ8=;
 b=jqBp3rEGlCnxZUyWSP4GxHceOpDs6eWSrGOkQySOdChVJrTqifHpy770TrT5ihND1m
 y+Xj7pZ7buCdb2g2/BEXU1NGHZbz3jptuBlJSnLTLXYVXGVPnhEAhCM665n3V+R1G5Dg
 RvAe8r3YXI4lHz2ujWPyKt4twuUpn0Aw+OWZv/1XfoaB/Z9ecrhNTIrFMzAAvWt6Iw8I
 HTvS+Ljkph2UJHsXrez5dvlJvOL5SW3X9hNomMcaTT9ujFTTLGXipSDenpImroroGziT
 CSoP9bDzAOZx9CpGQ92lnLSO3HgsfU9PLIt5tk1/u7pn49C7PMaIgCq4yRtffrPV4joX
 ioAg==
X-Gm-Message-State: AAQBX9c4RnJPIUHST5PBjbgwQ4msnMoFQhTdozpclxgBETQZHbL/L0Vv
 GQ7aCa2CnflKOL5mX2fokSMJGqcN30EyVhPds1FpCLjvu1sQJbLUvwMdtABwDzxY48PlMue+BgH
 j5X8TNSADs7VAUovyQHMce1zMzRCAV5j87QEv0A==
X-Received: by 2002:a05:6512:250:b0:4e9:ccff:daa6 with SMTP id
 b16-20020a056512025000b004e9ccffdaa6mr7178098lfo.30.1680202581353; 
 Thu, 30 Mar 2023 11:56:21 -0700 (PDT)
X-Google-Smtp-Source: AKy350Zqt3JN5UFdxjITpltBXX6C9yIP1DjUue3LM+nCC5N3ax4dDfLfhxQFL/UiF4ELYpZEKGrQtg==
X-Received: by 2002:a05:6512:250:b0:4e9:ccff:daa6 with SMTP id
 b16-20020a056512025000b004e9ccffdaa6mr7178073lfo.30.1680202581033; 
 Thu, 30 Mar 2023 11:56:21 -0700 (PDT)
Received: from [192.168.42.100] (83-90-141-187-cable.dk.customer.tdc.net.
 [83.90.141.187]) by smtp.gmail.com with ESMTPSA id
 u1-20020a056512040100b004dc53353d15sm48564lfk.281.2023.03.30.11.56.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 30 Mar 2023 11:56:20 -0700 (PDT)
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Google-Original-From: Jesper Dangaard Brouer <brouer@redhat.com>
Message-ID: <04256caf-aa28-7e0a-59b1-ecf2b237c96f@redhat.com>
Date: Thu, 30 Mar 2023 20:56:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
To: Stanislav Fomichev <sdf@google.com>
References: <168019602958.3557870.9960387532660882277.stgit@firesoul>
 <168019606574.3557870.15629824904085210321.stgit@firesoul>
 <ZCXWerysZL1XwVfX@google.com>
In-Reply-To: <ZCXWerysZL1XwVfX@google.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1680202584;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=I0okzHNuuHJ7nFnN8RcKBErkj+TCd+hop8cnDkGfnQ8=;
 b=I0o1SOcOUr79XUU+Iy9R09ElXqumR8SQZterBSJc14Krn7IFdy1vDCuCKCIpEEsMELOD0Y
 EpypO4BphiA+NyF5hsmBv6PHEHH7TcKfDJ45aoJAvZleCBiY59hLCZEZJtH6kn9nId78Mg
 Dr3ne2J7DduiLb9lyi41pwA5huzH7xU=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=I0o1SOcO
Subject: Re: [Intel-wired-lan] [PATCH bpf RFC-V3 1/5] xdp: rss hash types
 representation
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
Cc: xdp-hints@xdp-project.net, martin.lau@kernel.org, daniel@iogearbox.net,
 larysa.zaremba@intel.com, netdev@vger.kernel.org, john.fastabend@gmail.com,
 ast@kernel.org, linux-kernel@vger.kernel.org, jesse.brandeburg@intel.com,
 kuba@kernel.org, pabeni@redhat.com, yoong.siang.song@intel.com,
 brouer@redhat.com, boon.leong.ong@intel.com, anthony.l.nguyen@intel.com,
 bpf@vger.kernel.org, intel-wired-lan@lists.osuosl.org, davem@davemloft.net,
 edumazet@google.com, hawk@kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ck9uIDMwLzAzLzIwMjMgMjAuMzUsIFN0YW5pc2xhdiBGb21pY2hldiB3cm90ZToKPiBPbiAwMy8z
MCwgSmVzcGVyIERhbmdhYXJkIEJyb3VlciB3cm90ZToKPj4gVGhlIFJTUyBoYXNoIHR5cGUgc3Bl
Y2lmaWVzIHdoYXQgcG9ydGlvbiBvZiBwYWNrZXQgZGF0YSBOSUMgaGFyZHdhcmUgdXNlZAo+PiB3
aGVuIGNhbGN1bGF0aW5nIFJTUyBoYXNoIHZhbHVlLiBUaGUgUlNTIHR5cGVzIGFyZSBmb2N1c2Vk
IG9uIEludGVybmV0Cj4+IHRyYWZmaWMgcHJvdG9jb2xzIGF0IE9TSSBsYXllcnMgTDMgYW5kIEw0
LiBMMiAoZS5nLiBBUlApIG9mdGVuIGdldCBoYXNoCj4+IHZhbHVlIHplcm8gYW5kIG5vIFJTUyB0
eXBlLiBGb3IgTDMgZm9jdXNlZCBvbiBJUHY0IHZzLiBJUHY2LCBhbmQgTDQKPj4gcHJpbWFyaWx5
IFRDUCB2cyBVRFAsIGJ1dCBzb21lIGhhcmR3YXJlIHN1cHBvcnRzIFNDVFAuCj4gCj4+IEhhcmR3
YXJlIFJTUyB0eXBlcyBhcmUgZGlmZmVyZW50bHkgZW5jb2RlZCBmb3IgZWFjaCBoYXJkd2FyZSBO
SUMuIE1vc3QKPj4gaGFyZHdhcmUgcmVwcmVzZW50IFJTUyBoYXNoIHR5cGUgYXMgYSBudW1iZXIu
IERldGVybWluaW5nIEwzIHZzIEw0IG9mdGVuCj4+IHJlcXVpcmVzIGEgbWFwcGluZyB0YWJsZSBh
cyB0aGVyZSBvZnRlbiBpc24ndCBhIHBhdHRlcm4gb3Igc29ydGluZwo+PiBhY2NvcmRpbmcgdG8g
SVNPIGxheWVyLgo+IAo+PiBUaGUgcGF0Y2ggaW50cm9kdWNlIGEgWERQIFJTUyBoYXNoIHR5cGUg
KGVudW0geGRwX3Jzc19oYXNoX3R5cGUpIHRoYXQKPj4gY29udGFpbiBjb21iaW5hdGlvbnMgdG8g
YmUgdXNlZCBieSBkcml2ZXJzLCB3aGljaCBnZXRzIGJ1aWxkIHVwIHdpdGggYml0cwo+PiBmcm9t
IGVudW0geGRwX3Jzc190eXBlX2JpdHMuIEJvdGggZW51bSB4ZHBfcnNzX3R5cGVfYml0cyBhbmQK
Pj4geGRwX3Jzc19oYXNoX3R5cGUgZ2V0IGV4cG9zZWQgdG8gQlBGIHZpYSBCVEYsIGFuZCBpdCBp
cyB1cCB0byB0aGUKPj4gQlBGLXByb2dyYW1tZXIgdG8gbWF0Y2ggdXNpbmcgdGhlc2UgZGVmaW5l
cy4KPiAKPj4gVGhpcyBwcm9wb3NhbCBjaGFuZ2UgdGhlIGtmdW5jIEFQSSBicGZfeGRwX21ldGFk
YXRhX3J4X2hhc2goKSBhZGRpbmcKPj4gYSBwb2ludGVyIHZhbHVlIGFyZ3VtZW50IGZvciBwcm92
aWRlIHRoZSBSU1MgaGFzaCB0eXBlLgo+IAo+PiBTaWduZWQtb2ZmLWJ5OiBKZXNwZXIgRGFuZ2Fh
cmQgQnJvdWVyIDxicm91ZXJAcmVkaGF0LmNvbT4KPj4gLS0tCj4+IMKgIGluY2x1ZGUvbGludXgv
bmV0ZGV2aWNlLmggfMKgwqDCoCAzICsrLQo+PiDCoCBpbmNsdWRlL25ldC94ZHAuaMKgwqDCoMKg
wqDCoMKgwqAgfMKgwqAgNDYgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrCj4+IMKgIG5ldC9jb3JlL3hkcC5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDCoCAx
MCArKysrKysrKystCj4+IMKgIDMgZmlsZXMgY2hhbmdlZCwgNTcgaW5zZXJ0aW9ucygrKSwgMiBk
ZWxldGlvbnMoLSkKPiAKClsuLi5dCj4+IGRpZmYgLS1naXQgYS9uZXQvY29yZS94ZHAuYyBiL25l
dC9jb3JlL3hkcC5jCj4+IGluZGV4IDUyOGQ0YjM3OTgzZC4uMzhkMmRlZTE2YjQ3IDEwMDY0NAo+
PiAtLS0gYS9uZXQvY29yZS94ZHAuYwo+PiArKysgYi9uZXQvY29yZS94ZHAuYwo+PiBAQCAtNzM0
LDE0ICs3MzQsMjIgQEAgX19icGZfa2Z1bmMgaW50IAo+PiBicGZfeGRwX21ldGFkYXRhX3J4X3Rp
bWVzdGFtcChjb25zdCBzdHJ1Y3QgeGRwX21kICpjdHgsIHU2NCAqdGltCj4+IMKgwqAgKiBicGZf
eGRwX21ldGFkYXRhX3J4X2hhc2ggLSBSZWFkIFhEUCBmcmFtZSBSWCBoYXNoLgo+PiDCoMKgICog
QGN0eDogWERQIGNvbnRleHQgcG9pbnRlci4KPj4gwqDCoCAqIEBoYXNoOiBSZXR1cm4gdmFsdWUg
cG9pbnRlci4KPj4gKyAqIEByc3NfdHlwZTogUmV0dXJuIHZhbHVlIHBvaW50ZXIgZm9yIFJTUyB0
eXBlLgo+PiArICoKPj4gKyAqIFRoZSBSU1MgaGFzaCB0eXBlIChAcnNzX3R5cGUpIHNwZWNpZmll
cyB3aGF0IHBvcnRpb24gb2YgcGFja2V0IGhlYWRlcnMgTklDCj4+ICsgKiBoYXJkd2FyZSB3ZXJl
IHVzZWQgd2hlbiBjYWxjdWxhdGluZyBSU1MgaGFzaCB2YWx1ZS7CoCBUaGUgdHlwZSBjb21iaW5h
dGlvbnMKPj4gKyAqIGFyZSBkZWZpbmVkIHZpYSAmZW51bSB4ZHBfcnNzX2hhc2hfdHlwZSBhbmQg
aW5kaXZpZHVhbCBiaXRzIGNhbiBiZSBkZWNvZGVkCj4+ICsgKiB2aWEgJmVudW0geGRwX3Jzc190
eXBlX2JpdHMuCj4+IMKgwqAgKgo+PiDCoMKgICogUmV0dXJuOgo+PiDCoMKgICogKiBSZXR1cm5z
IDAgb24gc3VjY2VzcyBvciBgYC1lcnJub2BgIG9uIGVycm9yLgo+PiDCoMKgICogKiBgYC1FT1BO
T1RTVVBQYGAgOiBtZWFucyBkZXZpY2UgZHJpdmVyIGRvZXNuJ3QgaW1wbGVtZW50IGtmdW5jCj4+
IMKgwqAgKiAqIGBgLUVOT0RBVEFgYMKgwqDCoCA6IG1lYW5zIG5vIFJYLWhhc2ggYXZhaWxhYmxl
IGZvciB0aGlzIGZyYW1lCj4+IMKgwqAgKi8KPj4gLV9fYnBmX2tmdW5jIGludCBicGZfeGRwX21l
dGFkYXRhX3J4X2hhc2goY29uc3Qgc3RydWN0IHhkcF9tZCAqY3R4LCAKPj4gdTMyICpoYXNoKQo+
PiArX19icGZfa2Z1bmMgaW50IGJwZl94ZHBfbWV0YWRhdGFfcnhfaGFzaChjb25zdCBzdHJ1Y3Qg
eGRwX21kICpjdHgsIAo+PiB1MzIgKmhhc2gsCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIGVudW0geGRwX3Jzc19oYXNoX3R5cGUgKnJzc190eXBlKQo+PiDCoCB7
Cj4gCj4gWy4uXQo+IAo+PiArwqDCoMKgIEJURl9UWVBFX0VNSVQoZW51bSB4ZHBfcnNzX3R5cGVf
Yml0cyk7Cj4gCj4gbml0OiBEbyB3ZSBzdGlsbCBuZWVkIHRoaXMgd2l0aCBhbiBleHRyYSBhcmd1
bWVudD8KPiAKClllcywgdW5mb3J0dW5hdGVseSAoY29tcGlsZXIgb3B0aW1pemVzIG91dCBlbnVt
IHhkcF9yc3NfdHlwZV9iaXRzKS4KRG8gbm90aWNlIHRoZSBkaWZmZXJlbmNlIHhkcF9yc3NfdHlw
ZV9iaXRzIHZzIHhkcF9yc3NfaGFzaF90eXBlLgpXZSBkb24ndCBuZWVkIGl0IGZvciAieGRwX3Jz
c19oYXNoX3R5cGUiIGJ1dCBuZWVkIGl0IGZvciAKInhkcF9yc3NfdHlwZV9iaXRzIi4KCi0tSmVz
cGVyCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBz
Oi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
