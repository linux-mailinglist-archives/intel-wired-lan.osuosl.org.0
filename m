Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 79A1F6D0E1E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Mar 2023 20:52:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D18BE61689;
	Thu, 30 Mar 2023 18:52:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D18BE61689
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680202348;
	bh=F/S4dbLyFhX/uPt6oo63MP595l1LON9fmbAej7Z13Is=;
	h=From:Date:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1quPntljFfKc5RXCYcNmkSNiKmrwxIb9csN9yqgA8s9GBEklLGfK004vYq5qX8uwG
	 7MMnebxrw6U4dtN1H0sHHm7kRgK2PBwUbckHW6WD1UKLaVhEIIxBCDtAj5Q+yiNgjy
	 NWCW/dZ8SRFW8szFIdaHGFbW9xRHYk+77p4s3d01Egq2K44eRF5cOaM57MVxtpb0f8
	 83CKn9Yu703GFk9mZCSOi7UPz19XThoGROrDFRudA8fQaqGrtXkUBWfB+WEwMfWuwS
	 MbBl4hSCmsRy6QRwCOD8Iz4YYcGASR2MP5rbdTCK0LuOIMuJHvEVHt0l8o9AHiTPd+
	 VB95hyIA51ceQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bDPsM0Av_LCl; Thu, 30 Mar 2023 18:52:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B50AC61682;
	Thu, 30 Mar 2023 18:52:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B50AC61682
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 844D81BF2AB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 18:52:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5DE5E420AF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 18:52:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5DE5E420AF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Vb3HbN1-YK3s for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Mar 2023 18:52:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 01C42420AA
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 01C42420AA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 18:52:21 +0000 (UTC)
Received: from mail-lf1-f70.google.com (mail-lf1-f70.google.com
 [209.85.167.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-479-3X8O7M03MVuEL0j-fqn5JQ-1; Thu, 30 Mar 2023 14:52:19 -0400
X-MC-Unique: 3X8O7M03MVuEL0j-fqn5JQ-1
Received: by mail-lf1-f70.google.com with SMTP id
 e12-20020a19674c000000b004e9af173e04so7678073lfj.14
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 11:52:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680202338;
 h=content-transfer-encoding:in-reply-to:references:to
 :content-language:subject:cc:user-agent:mime-version:date:message-id
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=4YBDK9oa7IRSnGDsV6eC1sZG+Y0J3aQFUW2e3I1262Q=;
 b=TheOM3QNT7DxhXO9AEHQfgX9KCz6rB6skEdw6Zw5hLp4z5A55ofDVr+aDe5nTvNDkx
 btdeOnB2uj0FL3VLLKJBYv3kiZddsCoBYnzudljW45fV8Mqjcidv3Hz/juGn/bc8Sbg4
 a6bYyGKyeSSSSvHBhsU9ENNS6awE/SIz3s0Fqwz8+3MvNWiAbTOxHNhGajF5BCK2gmNA
 bo5kgH7iLm9gLMwB3i/UojGx59lCxsGpxhdtGi1TnB0pQx4ZklU8CnWtaTf9Ht+Xsnv7
 hfVNAozOIq7gNaYa1VFF/Ein5gxtLRTS9+ex2qFyv+BJqsnI4fEcRZwCbaeRIzzZG/Kv
 ilBw==
X-Gm-Message-State: AAQBX9cmBzEVpJjfIdTX00BQbeG0AfbP/iNuVgkoBkqDlQCAd98ndpga
 z1W9X+nxqLRrckAE7TLjCSxslO8jP7djlU2PgdYq8xgYEmeRlaMEu1VWe+NOrkk/GmoS8sAEBc6
 HLlbvAwUw+dz9GVwJlhp5tLJHbKC/ZA==
X-Received: by 2002:ac2:4219:0:b0:4db:28ce:e5ef with SMTP id
 y25-20020ac24219000000b004db28cee5efmr6695652lfh.0.1680202337876; 
 Thu, 30 Mar 2023 11:52:17 -0700 (PDT)
X-Google-Smtp-Source: AKy350ZEG6X1LBEENo7FPVYgXURXiHltW2Oz5D1+hNuhYNjG0DAXLBytpTSBkNusr0t4A1SO/5Oneg==
X-Received: by 2002:ac2:4219:0:b0:4db:28ce:e5ef with SMTP id
 y25-20020ac24219000000b004db28cee5efmr6695639lfh.0.1680202337545; 
 Thu, 30 Mar 2023 11:52:17 -0700 (PDT)
Received: from [192.168.42.100] (83-90-141-187-cable.dk.customer.tdc.net.
 [83.90.141.187]) by smtp.gmail.com with ESMTPSA id
 d1-20020ac24c81000000b004d85789cef1sm53324lfl.49.2023.03.30.11.52.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 30 Mar 2023 11:52:16 -0700 (PDT)
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Google-Original-From: Jesper Dangaard Brouer <brouer@redhat.com>
Message-ID: <d34fe8e9-39de-2b6b-3cce-fe6bc339eb0b@redhat.com>
Date: Thu, 30 Mar 2023 20:52:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
To: Stanislav Fomichev <sdf@google.com>,
 Jesper Dangaard Brouer <jbrouer@redhat.com>
References: <168003451121.3027256.13000250073816770554.stgit@firesoul>
 <168003455815.3027256.7575362149566382055.stgit@firesoul>
 <ZCNjHAY81gS02FVW@google.com>
 <811724e2-cdd6-15fe-b176-9dfcdbd98bad@redhat.com>
 <ZCRy2f170FQ+fXsp@google.com>
 <b9e5077f-fbc4-8904-74a8-cda94d91cfbf@redhat.com>
 <ZCTHc6Dp4RMi1YZ6@google.com>
 <7ce10be6-bda2-74fc-371b-9791558af5b5@redhat.com>
 <ZCXCrWhJqXjHTV54@google.com>
In-Reply-To: <ZCXCrWhJqXjHTV54@google.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1680202340;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=4YBDK9oa7IRSnGDsV6eC1sZG+Y0J3aQFUW2e3I1262Q=;
 b=TPyzlF64SKTrVky1PJygK378xFWnbmVFgsJKp9p3R86VL61AX3C+9APFPPGTd4Wywk4K46
 mmYA0flS1oZxYOJzDQqE1P4V0EK0B802He7d84nchAw7VhB01yC4vRVTE9uXr1CO+sGTNf
 pelfoo++NYy4Cst2y1Z+e6kaVoEl7bg=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=TPyzlF64
Subject: Re: [Intel-wired-lan] [PATCH bpf RFC 1/4] xdp: rss hash types
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
 ast@kernel.org, jesse.brandeburg@intel.com, kuba@kernel.org,
 edumazet@google.com, pabeni@redhat.com, yoong.siang.song@intel.com,
 brouer@redhat.com, boon.leong.ong@intel.com, anthony.l.nguyen@intel.com,
 bpf@vger.kernel.org, intel-wired-lan@lists.osuosl.org, davem@davemloft.net,
 hawk@kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiAzMC8wMy8yMDIzIDE5LjExLCBTdGFuaXNsYXYgRm9taWNoZXYgd3JvdGU6Cj4gT24gMDMv
MzAsIEplc3BlciBEYW5nYWFyZCBCcm91ZXIgd3JvdGU6Cj4gCj4+IE9uIDMwLzAzLzIwMjMgMDEu
MTksIFN0YW5pc2xhdiBGb21pY2hldiB3cm90ZToKPj4gPiBPbiAwMy8yOSwgSmVzcGVyIERhbmdh
YXJkIEJyb3VlciB3cm90ZToKPj4gPgo+PiA+ID4gT24gMjkvMDMvMjAyMyAxOS4xOCwgU3Rhbmlz
bGF2IEZvbWljaGV2IHdyb3RlOgo+PiA+ID4gPiBPbiAwMy8yOSwgSmVzcGVyIERhbmdhYXJkIEJy
b3VlciB3cm90ZToKPj4gPiA+ID4KPj4gPiA+ID4gPiBPbiAyOC8wMy8yMDIzIDIzLjU4LCBTdGFu
aXNsYXYgRm9taWNoZXYgd3JvdGU6Cj4+ID4gPiA+ID4gPiBPbiAwMy8yOCwgSmVzcGVyIERhbmdh
YXJkIEJyb3VlciB3cm90ZToKPj4gPiA+ID4gPiA+ID4gVGhlIFJTUyBoYXNoIHR5cGUgc3BlY2lm
aWVzIHdoYXQgcG9ydGlvbiBvZiBwYWNrZXQgZGF0YSAgTklDIGhhcmR3YXJlIHVzZWQKPj4gPiA+
ID4gPiA+ID4gd2hlbiBjYWxjdWxhdGluZyBSU1MgaGFzaCB2YWx1ZS4gVGhlIFJTUyB0eXBlcyBh
cmUgZm9jdXNlZCBvbiBJbnRlcm5ldAo+PiA+ID4gPiA+ID4gPiB0cmFmZmljIHByb3RvY29scyBh
dCBPU0kgbGF5ZXJzIEwzIGFuZCBMNC4gTDIgKGUuZy4gQVJQKSBvZnRlbiBnZXQgaGFzaAo+PiA+
ID4gPiA+ID4gPiB2YWx1ZSB6ZXJvIGFuZCBubyBSU1MgdHlwZS4gRm9yIEwzIGZvY3VzZWQgb24g
SVB2NCB2cy4gSVB2NiwgYW5kIEw0Cj4+ID4gPiA+ID4gPiA+IHByaW1hcmlseSBUQ1AgdnMgVURQ
LCBidXQgc29tZSBoYXJkd2FyZSBzdXBwb3J0cyBTQ1RQLgo+PiA+ID4gPiA+ID4KPj4gPiA+ID4g
PiA+ID4gSGFyZHdhcmUgUlNTIHR5cGVzIGFyZSBkaWZmZXJlbnRseSBlbmNvZGVkIGZvciBlYWNo
ICBoYXJkd2FyZSBOSUMuIE1vc3QKPj4gPiA+ID4gPiA+ID4gaGFyZHdhcmUgcmVwcmVzZW50IFJT
UyBoYXNoIHR5cGUgYXMgYSBudW1iZXIuIERldGVybWluaW5nIEwzIHZzIEw0IG9mdGVuCj4+ID4g
PiA+ID4gPiA+IHJlcXVpcmVzIGEgbWFwcGluZyB0YWJsZSBhcyB0aGVyZSBvZnRlbiBpc24ndCBh
IHBhdHRlcm4gb3Igc29ydGluZwo+PiA+ID4gPiA+ID4gPiBhY2NvcmRpbmcgdG8gSVNPIGxheWVy
Lgo+PiA+ID4gPiA+ID4KWy4uLl0KPj4gPiBBbnkgcmVhc29uIGl0J3Mgbm90IGEgWERQX1JTU19M
M19JUFY2X0VYIHdpdGhpbiBYRFBfUlNTX0wzX01BU0s/Cj4+ID4KPiAKPj4gSG1tLi4uIEkgZ3Vl
c3MgaXQgYmVsb25ncyB3aXRoIEwzLgo+IAo+PiBEbyBub3RpY2UgdGhhdCBib3RoIElQdjQgYW5k
IElQdjYgaGF2ZSBhIGZsZXhpYmxlIGhlYWRlciBjYWxsZWQgZWl0aGVyCj4+IG9wdGlvbnMvZXh0
ZW5zaW9ucyBoZWFkZXJzLCBhZnRlciB0aGVpciBmaXhlZCBoZWFkZXIuIChNbHg0IEhXIGNvbnRh
aW5zIHRoaXMKPj4gaW5mbyBmb3IgSVB2NCwgYnV0IEkgZGlkbid0IGV4dGVuZCB4ZHBfcnNzX2hh
c2hfdHlwZSBpbiB0aGF0IHBhdGNoKS4KPj4gVGh1cywgd2UgY291bGQgaGF2ZSBhIHNpbmdsZSBC
SVQgdGhhdCBpcyB2YWxpZCBmb3IgYm90aCBJUHY0IGFuZCBJUHY2Lgo+PiAoVGhpcyBjYW4gaGVs
cCBzcGVlZHVwIHBhY2tldCBwYXJzaW5nIGhhdmluZyB0aGlzIGluZm8pLgo+IAo+IEEgc2VwYXJh
dGUgYml0IGZvciBib3RoIHY0L3Y2IHNvdW5kcyBnb29kLiBCdXQgdGhpbmtpbmcgbW9yZSBhYm91
dCBpdCwKPiBub3Qgc3VyZSB3aGF0IHRoZSB1c2VycyBhcmUgc3VwcG9zZWQgdG8gZG8gd2l0aCBp
dC4gV2hldGhlciB0aGUgZmxvdyBpcyAKPiBoYXNoZWQgb3ZlciB0aGUgZXh0ZW5zaW9uIGhlYWRl
ciBzaG91bGQgYSBjb25maWcgb3B0aW9uLCBub3QgYSBwZXItcGFja2V0IHNpZ25hbD8KPiAKCk1p
Y3Jvc29mdCBkZWZpbmVzIHdoaWNoIHBhcnQgb2YgdGhlIElQdjYgRXh0ZW5zaW9ucyBoZWFkZXJz
IHdpbGwgYmUgdXNlZCAKZm9yIHJlcGxhY2luZyBlaXRoZXIgdGhlIFNvdXJjZSAoSG9tZSBhZGRy
ZXNzKSBhbmQgRGVzdCAKKFJvdXRpbmctSGVhZGVyLVR5cGUtMikgSVB2NiBBZGRyZXNzZXMsIGlu
IHRoZSBoYXNoIGNhbGMsIGhlcmVbMV06CgogIFsxXSAKaHR0cHM6Ly9sZWFybi5taWNyb3NvZnQu
Y29tL2VuLXVzL3dpbmRvd3MtaGFyZHdhcmUvZHJpdmVycy9uZXR3b3JrL3Jzcy1oYXNoaW5nLXR5
cGVzI25kaXNfaGFzaF9pcHY2X2V4CgpUaGUgaWdjL2kyMjUgY2hpcCByZXR1cm5zIHBlci1wYWNr
ZXQgdGhlIFJTUyBUeXBlJ3Mgd2l0aCBfRVggYWRkZWQuClRodXMsIEkgaW1wbGVtZW50ZWQgdGhp
cyBwZXItcGFja2V0IGJhc2lzLgoKCj4+IFsuLi5dCj4+ID4KPj4gPiA+ID4gRm9yIGV4YW1wbGUs
IGZvciBmb3J3YXJkIGNvbXBhdCwgSSdtIG5vdCBzdXJlIHdlIGNhbiBhc3N1bWUgdGhhdCAKPj4g
dGhlIHBlb3BsZQo+PiA+ID4gPiB3aWxsIGRvOgo+PiA+ID4gPsKgIMKgwqDCoMKgInJzc190eXBl
ICYgWERQX1JTU19UWVBFX0w0X01BU0siCj4+ID4gPiA+IGluc3RlYWQgb2Ygc29tZXRoaW5nIGxp
a2U6Cj4+ID4gPiA+wqAgwqDCoMKgwqAicnNzX3R5cGUgJiAKPj4gKFhEUF9SU1NfVFlQRV9MNF9J
UFY0X1RDUHxYRFBfUlNTX1RZUEVfTDRfSVBWNF9VRFApIgo+PiA+ID4gPgo+PiA+Cj4+ID4gPiBU
aGlzIGNvZGUgaXMgYWxsb3dlZCBpbiBWMiBhbmQgc2hvdWxkIGJlLiBJdCBpcyBhIGNob2ljZSBv
Zgo+PiA+ID4gQlBGLXByb2dyYW1tZXIgaW4gbGluZS0yIHRvIG5vdCBiZSBmb3J3YXJkIGNvbXBh
dGlibGUgd2l0aCBuZXdlciBMNAo+PiA+ID4gdHlwZXMuCj4+ID4KPiAKPj4gVGhlIGFib3ZlIGNv
ZGUgbWFkZSBtZSByZWFsaXplLCBJIHdhcyB3cm9uZyBhbmQgeW91IGFyZSByaWdodCwgd2Ugc2hv
dWxkCj4+IHJlcHJlc2VudCB0aGUgTDQgdHlwZXMgYXMgQklUcyAoYW5kIG5vdCBhcyBudW1iZXJz
KS4KPj4gRXZlbi10aG91Z2ggYSBzaW5nbGUgcGFja2V0IGNhbm5vdCBiZSBib3RoIFVEUCBhbmQg
VENQIGF0IHRoZSBzYW1lIHRpbWUsCj4+IHRoZW4gaXQgaXMgcmVhc29uYWJsZSB0byBoYXZlIGEg
Y29kZSBwYXRoIHRoYXQgd2FudCB0byBtYXRjaCBib3RoIFVEUAo+PiBhbmQgVENQLsKgIElmIEw0
IHR5cGVzIGFyZSBCSVRzIHRoZW4gY29kZSBjYW4gZG8gYSBzaW5nbGUgY29tcGFyZSAodmlhCj4+
IE9SaW5nKSwgd2hpbGUgaWYgdGhleSBhcmUgbnVtYmVycyB0aGVuIHdlIG5lZWQgbW9yZSBjb21w
YXJlcy4KPj4gVGh1cywgSSdsbCBjaGFuZ2Ugc2NoZW1lIGluIFYzIHRvIHVzZSBCSVRzLgo+IAo+
IFNvIHlvdSBhcmUgc2F5aW5nIHRoYXQgdGhlIGZvbGxvd2luZzoKPiAgwqDCoMKgwqBpZiAocnNz
X3R5cGUgJiAoVENQfFVEUCkKPiAKPiBpcyBtdWNoIGZhc3RlciB0aGFuIHRoZSBmb2xsb3dpbmc6
Cj4gIMKgwqDCoMKgcHJvdG8gPSByc3NfdHlwZSAmIEw0X01BU0s7Cj4gIMKgwqDCoMKgaWYgKHBy
b3RvID09IFRDUCB8fCBwcm90byA9PSBVRFApCj4gCj4gPwoKRm9yIFhEUCBldmVyeSBpbnN0cnVj
dGlvbi9jeWNsZSBjb3VudHMuCkp1c3QgdG8gbWFrZSBzdXJlLCBJIHRlc3RlZCBpdCB3aXRoIGdv
ZGJvbHQub3JnLCAzIHZzIDQgaW5zdC4KCj4gCj4gaWRrLCBhcyBsb25nIGFzIHdlIGhhdmUgZW5v
dWdoIGJpdHMgdG8gcmVwcmVzZW50IGV2ZXJ5dGhpbmcsIEknbSBmaW5lCj4gd2l0aCBlaXRoZXIg
d2F5LCB1cCB0byB5b3UuIChub3Qgc3VyZSBob3cgbXVjaCB5b3Ugd2FudCB0byBjb25zdHJhaW4g
dGhlIAo+IGRhdGEKPiB0byBmaXQgaXQgaW50byB4ZHBfZnJhbWU7IGFzc3VtaW5nIHUxNiBpcyBm
aW5lPykKClllcywgdTE2IGlzIGZpbmUuCgo+IAo+IAo+PiA+ID4gPiA+ID4gPiBUaGlzIHByb3Bv
c2FsIGNoYW5nZSB0aGUga2Z1bmMgQVBJCj4+ID4gPiBicGZfeGRwX21ldGFkYXRhX3J4X2hhc2go
KSA+ID4gPiA+IHRvwqAgcmV0dXJuIHRoaXMgUlNTIGhhc2ggdHlwZSBvbgo+PiA+ID4gc3VjY2Vz
cy4KPj4gPgo+PiA+ID4gVGhpcyBpcyB0aGUgcmVhbCBxdWVzdGlvbiAoYXMgYWxzbyByYWlzZWQg
YWJvdmUpLi4uCj4+ID4gPiBTaG91bGQgd2UgdXNlIHJldHVybiB2YWx1ZSBvciBhZGQgYW4gYXJn
dW1lbnQgZm9yIHR5cGU/Cj4+ID4KPj4gPiBMZXQncyBmaXggdGhlIHByb3RvdHlwZSB3aGlsZSBp
dCdzIHN0aWxsIGVhcmx5IGluIHRoZSByYz8KPiAKPj4gT2theSwgaW4gVjMgSSB3aWxsIHByb3Bv
c2UgYWRkaW5nIGFuIGFyZ3VtZW50IGZvciB0aGUgdHlwZSB0aGVuLgo+IAo+IFNHLCB0aHghCgo+
IAo+PiA+IE1heWJlIGFsc28gZXh0ZW5kIHRoZSB0ZXN0cyB0byBkcm9wL2RlY29kZS92ZXJpZnkg
dGhlIG1hc2s/Cj4gCj4+IFllcywgSS93ZSBvYnZpb3VzbHkgbmVlZCB0byB1cGRhdGUgdGhlIHNl
bGZ0ZXN0cy4KPiAKPj4gT25lIHByb2JsZW0gd2l0aCBzZWxmdGVzdHMgaXMgdGhhdCBpdCdzIHVz
aW5nIHZldGggU0tCLWJhc2VkIG1vZGUsIGFuZAo+PiBTS0IncyBoYXZlIGxvc3QgdGhlIFJTUyBo
YXNoIGluZm8gYW5kIGNvbnZlcnRlZCB0aGlzIGludG8gYSBzaW5nbGUgQklUCj4+IHRlbGxpbmcg
dXMgaWYgdGhpcyB3YXMgTDQgYmFzZWQuwqAgVGh1cywgaXRzIGhhcmQgdG8gZG8gc29tZSBlLmcu
IFVEUAo+PiB0eXBlIHZlcmlmaWNhdGlvbiwgYnV0IEkgZ3Vlc3Mgd2UgY2FuIGNoZWNrIGlmIGV4
cGVjdGVkIFVEUCBwYWNrZXQgaXMKPj4gUlNTIHR5cGUgTDQuCj4gCj4gWWVhaCwgc291bmRzIGZh
aXIuCj4gCj4+IEluIHhkcF9od19tZXRhZGF0YSwgSSB3aWxsIGFkZCBzb21ldGhpbmcgdGhhdCB1
c2VzIHRoZSBSU1MgdHlwZSBiaXRzLsKgIEkKPj4gd2FzIHRoaW5raW5nIHRvIG1hdGNoIGFnYWlu
c3QgTDQtVURQIFJTUyB0eXBlIGFzIHByb2dyYW0gb25seSBBRl9YRFAKPj4gcmVkaXJlY3QgVURQ
IHBhY2tldHMsIHNvIHdlIGNhbiB2ZXJpZnkgaXQgd2FzIGEgVURQIHBhY2tldCBieSBIVyBpbmZv
Lgo+IAo+IE9yIG1heWJlIGp1c3QgZHVtcCBpdCwgaWRrLgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QK
SW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
