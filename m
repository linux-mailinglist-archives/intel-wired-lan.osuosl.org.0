Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0537A6D1F6C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Mar 2023 13:49:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8FC5B60E0D;
	Fri, 31 Mar 2023 11:49:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8FC5B60E0D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680263369;
	bh=LXmZr1ltTUjQg/9xxa9EjBBQfpItAiXIg5eGrWGXrrQ=;
	h=From:Date:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=p9/cKQtGxYvUUDXfbBvev3huprO5/uzA568joouWoTEEZNAlmzce+TNd6Rivwvp2S
	 4eYPHEyrhD97ds2Z5EzXyUoVDCJiiuviz2mMnn6xVU6A3PaLH6CxdzN9hjEiTA9hXU
	 ZP2ozbLRd2PWHXTCSLJA1mUWXmE8UezghTsz9fN4nhVbynaP4YI0TimpOA8Mcf3ReF
	 O9r75Ho0RJiYo+gTq9et0iAzk6NCjD6UQcYkIZFSupqC9j188nooxTH8pySGSw+cyh
	 tc70sLQ5dhOWESDje1woBMBW2X7tX3i7kPvt+HZepWSjXioVE1kzS+LZYeQbM6QMzI
	 mJSsT1+e4mBog==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2jrQ4Noywjmc; Fri, 31 Mar 2023 11:49:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 67BBC60A8A;
	Fri, 31 Mar 2023 11:49:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 67BBC60A8A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7F9A51BF2F6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Mar 2023 11:49:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 64F5C60A8A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Mar 2023 11:49:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 64F5C60A8A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H8ZMlzQ3fZHc for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 Mar 2023 11:49:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 95EED60598
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 95EED60598
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Mar 2023 11:49:22 +0000 (UTC)
Received: from mail-lj1-f200.google.com (mail-lj1-f200.google.com
 [209.85.208.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-586-iiuv0pGXOl-3FiABOeZh-g-1; Fri, 31 Mar 2023 07:49:19 -0400
X-MC-Unique: iiuv0pGXOl-3FiABOeZh-g-1
Received: by mail-lj1-f200.google.com with SMTP id
 s28-20020a05651c049c00b002a3e6d1594bso4777546ljc.21
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Mar 2023 04:49:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680263358;
 h=content-transfer-encoding:in-reply-to:references:to
 :content-language:subject:cc:user-agent:mime-version:date:message-id
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=zD7Fcr7w9U80vT79GcOoW/MaviXOYk1Az8mLggNbZ00=;
 b=eAlW/dYj0+WTsA30Ek68wdghh8ZDeTFzvJF+E8zg91/Xy0Un49buQ26FchI11rKgZx
 GIC+nH/sFVgX8TTH2XwhEOopoao7hV6uF4L/RAGUwxtSlz3uzy79y3Muxgs7mombcw1H
 pRo1GwpaIvWahiuQz1Bk0bEHOg9Ue5y9a15FueW3m2obj9rlT80ERWtpTa4opt1f47N1
 CXEeDiEJKdfdxgMRV1oiqbfSCCNm09gVoPSs6J/p998tHjMfeSR1o4/YHXIQ6XdOODu0
 5HkL9Blu9BDDWuDQpu8aYhAH/GtHzxBo1ju0767LfF+90t2x3wE4KttsKomN+f63vdUM
 SbMw==
X-Gm-Message-State: AAQBX9cIgyfkI4AhlbiThve1rETZyqtFtyuCi7+aQJvbb3uvGK72OBv7
 Mk9ufmRxq+v+TaWuAX+42pvAIDXsX5AlqldRnwtTaJLTTuONpPWn9pqYqhd8MXt5U38fxgBETuy
 DRFjpH2F25MF9fMkI7nM+dBhebEKbjA==
X-Received: by 2002:a19:550b:0:b0:4e9:c627:195d with SMTP id
 n11-20020a19550b000000b004e9c627195dmr7334176lfe.57.1680263358578; 
 Fri, 31 Mar 2023 04:49:18 -0700 (PDT)
X-Google-Smtp-Source: AKy350YXUZu270+8qjZ4z0+edJ3P9KJHYqAy5QUXqjX7+ncQ8rXhZDHeTQST65e/JzidOlbbZmKR2Q==
X-Received: by 2002:a19:550b:0:b0:4e9:c627:195d with SMTP id
 n11-20020a19550b000000b004e9c627195dmr7334151lfe.57.1680263358254; 
 Fri, 31 Mar 2023 04:49:18 -0700 (PDT)
Received: from [192.168.42.100] (83-90-141-187-cable.dk.customer.tdc.net.
 [83.90.141.187]) by smtp.gmail.com with ESMTPSA id
 f4-20020a19ae04000000b004db3e2d3efesm346623lfc.204.2023.03.31.04.49.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 31 Mar 2023 04:49:16 -0700 (PDT)
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Google-Original-From: Jesper Dangaard Brouer <brouer@redhat.com>
Message-ID: <39b58460-6322-2c07-990a-864dc210ba0a@redhat.com>
Date: Fri, 31 Mar 2023 13:49:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
To: Stanislav Fomichev <sdf@google.com>,
 Jesper Dangaard Brouer <jbrouer@redhat.com>
References: <168019602958.3557870.9960387532660882277.stgit@firesoul>
 <168019606574.3557870.15629824904085210321.stgit@firesoul>
 <ZCXWerysZL1XwVfX@google.com>
 <04256caf-aa28-7e0a-59b1-ecf2b237c96f@redhat.com>
 <CAKH8qBv9QngYcMjcL=sZR8wVCufPSAv-ZW72OJB-LhZF5a_DrQ@mail.gmail.com>
 <c305e8ed-bd2c-3301-3a19-c983ff14a3ed@redhat.com>
In-Reply-To: <c305e8ed-bd2c-3301-3a19-c983ff14a3ed@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1680263361;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=zD7Fcr7w9U80vT79GcOoW/MaviXOYk1Az8mLggNbZ00=;
 b=L9zWYvu/iUn9pYmJEm8kIDk4lAlUJt8bKEX8r8KBY6EDhSxkHIfl7sR6ZWY9e/9cQUf+gV
 zuUSgVzLlxMY5BYbiFQJCli59tAVh3c5Bv3/7KS7TZ3qqV+ve/dvcPf57UYOQhnFGrb1dh
 SJQvABxVW4+hIR7QY7cF3Ham+OfOzCM=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=L9zWYvu/
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

Ck9uIDMwLzAzLzIwMjMgMjEuMDgsIEplc3BlciBEYW5nYWFyZCBCcm91ZXIgd3JvdGU6Cj4gCj4g
T24gMzAvMDMvMjAyMyAyMS4wMiwgU3RhbmlzbGF2IEZvbWljaGV2IHdyb3RlOgo+PiBPbiBUaHUs
IE1hciAzMCwgMjAyMyBhdCAxMTo1NuKAr0FNIEplc3BlciBEYW5nYWFyZCBCcm91ZXIKPj4+Cj4+
PiBPbiAzMC8wMy8yMDIzIDIwLjM1LCBTdGFuaXNsYXYgRm9taWNoZXYgd3JvdGU6Cj4+Pj4gT24g
MDMvMzAsIEplc3BlciBEYW5nYWFyZCBCcm91ZXIgd3JvdGU6Cj4gWy4uLl0KPj4+IFsuLi5dCj4+
Pj4+IGRpZmYgLS1naXQgYS9uZXQvY29yZS94ZHAuYyBiL25ldC9jb3JlL3hkcC5jCj4+Pj4+IGlu
ZGV4IDUyOGQ0YjM3OTgzZC4uMzhkMmRlZTE2YjQ3IDEwMDY0NAo+Pj4+PiAtLS0gYS9uZXQvY29y
ZS94ZHAuYwo+Pj4+PiArKysgYi9uZXQvY29yZS94ZHAuYwo+Pj4+PiBAQCAtNzM0LDE0ICs3MzQs
MjIgQEAgX19icGZfa2Z1bmMgaW50Cj4+Pj4+IGJwZl94ZHBfbWV0YWRhdGFfcnhfdGltZXN0YW1w
KGNvbnN0IHN0cnVjdCB4ZHBfbWQgKmN0eCwgdTY0ICp0aW0KPj4+Pj4gwqDCoMKgICogYnBmX3hk
cF9tZXRhZGF0YV9yeF9oYXNoIC0gUmVhZCBYRFAgZnJhbWUgUlggaGFzaC4KPj4+Pj4gwqDCoMKg
ICogQGN0eDogWERQIGNvbnRleHQgcG9pbnRlci4KPj4+Pj4gwqDCoMKgICogQGhhc2g6IFJldHVy
biB2YWx1ZSBwb2ludGVyLgo+Pj4+PiArICogQHJzc190eXBlOiBSZXR1cm4gdmFsdWUgcG9pbnRl
ciBmb3IgUlNTIHR5cGUuCj4+Pj4+ICsgKgo+Pj4+PiArICogVGhlIFJTUyBoYXNoIHR5cGUgKEBy
c3NfdHlwZSkgc3BlY2lmaWVzIHdoYXQgcG9ydGlvbiBvZiBwYWNrZXQgCj4+Pj4+IGhlYWRlcnMg
TklDCj4+Pj4+ICsgKiBoYXJkd2FyZSB3ZXJlIHVzZWQgd2hlbiBjYWxjdWxhdGluZyBSU1MgaGFz
aCB2YWx1ZS7CoCBUaGUgdHlwZSAKPj4+Pj4gY29tYmluYXRpb25zCj4+Pj4+ICsgKiBhcmUgZGVm
aW5lZCB2aWEgJmVudW0geGRwX3Jzc19oYXNoX3R5cGUgYW5kIGluZGl2aWR1YWwgYml0cyBjYW4g
Cj4+Pj4+IGJlIGRlY29kZWQKPj4+Pj4gKyAqIHZpYSAmZW51bSB4ZHBfcnNzX3R5cGVfYml0cy4K
Pj4+Pj4gwqDCoMKgICoKPj4+Pj4gwqDCoMKgICogUmV0dXJuOgo+Pj4+PiDCoMKgwqAgKiAqIFJl
dHVybnMgMCBvbiBzdWNjZXNzIG9yIGBgLWVycm5vYGAgb24gZXJyb3IuCj4+Pj4+IMKgwqDCoCAq
ICogYGAtRU9QTk9UU1VQUGBgIDogbWVhbnMgZGV2aWNlIGRyaXZlciBkb2Vzbid0IGltcGxlbWVu
dCBrZnVuYwo+Pj4+PiDCoMKgwqAgKiAqIGBgLUVOT0RBVEFgYMKgwqDCoCA6IG1lYW5zIG5vIFJY
LWhhc2ggYXZhaWxhYmxlIGZvciB0aGlzIGZyYW1lCj4+Pj4+IMKgwqDCoCAqLwo+Pj4+PiAtX19i
cGZfa2Z1bmMgaW50IGJwZl94ZHBfbWV0YWRhdGFfcnhfaGFzaChjb25zdCBzdHJ1Y3QgeGRwX21k
ICpjdHgsCj4+Pj4+IHUzMiAqaGFzaCkKPj4+Pj4gK19fYnBmX2tmdW5jIGludCBicGZfeGRwX21l
dGFkYXRhX3J4X2hhc2goY29uc3Qgc3RydWN0IHhkcF9tZCAqY3R4LAo+Pj4+PiB1MzIgKmhhc2gs
Cj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGVudW0geGRw
X3Jzc19oYXNoX3R5cGUgKnJzc190eXBlKQo+Pj4+PiDCoMKgIHsKPj4+PiBbLi5dCj4+Pj4KPj4+
Pj4gK8KgwqDCoCBCVEZfVFlQRV9FTUlUKGVudW0geGRwX3Jzc190eXBlX2JpdHMpOwo+Pj4+IG5p
dDogRG8gd2Ugc3RpbGwgbmVlZCB0aGlzIHdpdGggYW4gZXh0cmEgYXJndW1lbnQ/Cj4+Pj4KPj4+
IFllcywgdW5mb3J0dW5hdGVseSAoY29tcGlsZXIgb3B0aW1pemVzIG91dCBlbnVtIHhkcF9yc3Nf
dHlwZV9iaXRzKS4KPj4+IERvIG5vdGljZSB0aGUgZGlmZmVyZW5jZSB4ZHBfcnNzX3R5cGVfYml0
cyB2cyB4ZHBfcnNzX2hhc2hfdHlwZS4KPj4+IFdlIGRvbid0IG5lZWQgaXQgZm9yICJ4ZHBfcnNz
X2hhc2hfdHlwZSIgYnV0IG5lZWQgaXQgZm9yCj4+PiAieGRwX3Jzc190eXBlX2JpdHMiLgo+ICA+
Cj4+IEFoLCBJIG1pc3NlZCB0aGF0LiBUaGVuIHdoeSBub3QgZXhwb3NlIHhkcF9yc3NfdHlwZV9i
aXRzPwo+PiBLZWVwIHhkcF9yc3NfaGFzaF90eXBlIGZvciBpbnRlcm5hbCBkcml2ZXJzJyB0YWJs
ZXMsIGFuZCBleHBvcnQgdGhlCj4+IGVudW0gd2l0aCB0aGUgYml0cz8KPiAKPiBHcmVhdCBzdWdn
ZXN0aW9uLCB4ZHBfcnNzX2hhc2hfdHlwZSB3aWxsIGJlIGludGVybmFsIGZvciBkcml2ZXJzLgo+
IEkgd2lsbCBkbyB0aGF0IGluIFY0LgoKSSdtIHJ1bm5pbmcgaW50byBhbm5veWluZyBjb21waWxl
ciB3YXJuaW5ncyBbLVdlbnVtLWNvbnZlcnNpb25dCmFib3V0IGVudW0gY29udmVyc2lvbnMuICBJ
J2xsIHRyeSB0byB3b3JrYXJvdW5kIHRoaXMuLi4KVGhlIGVhc2llc3Qgc29sdXRpb24gc2VlbSB0
byBiZSB0byBvbmx5IGhhdmUgYSBzaW5nbGUgZW51bSwgdGhhdCBib3RoIApjb250YWlucyB0aGUg
QklUKClzIGFuZCBjb21iaW5hdGlvbnMgb2YgYml0cyAoZm9yIGRyaXZlciB1c2FnZSkuCgpFLmcu
CiAgd2FybmluZzogaW1wbGljaXQgY29udmVyc2lvbiBmcm9tICdlbnVtIHhkcF9yc3NfdHlwZV9i
aXRzJyB0byAnZW51bSAKeGRwX3Jzc19oYXNoX3R5cGUnIFstV2VudW0tY29udmVyc2lvbl0KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVk
LWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0
cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
