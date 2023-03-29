Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 20F926CF20C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Mar 2023 20:20:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A45236156D;
	Wed, 29 Mar 2023 18:20:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A45236156D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680114014;
	bh=WMsQRwBnKGUio3qCaiSjiyr+AFpwmV8YddHLdpz5rWA=;
	h=From:Date:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=f8ZCTU/7rCmRIQNFruU5PJ5vsPLaHB9t3OP6kMLMNM5cKYF+A+4lWqVe3PSASuXEG
	 yKXQuNKiiQn0cB9fRkiMt7OP8LTYsmka9V4JwjDwDb3/alwWwbH/Y2pCNmfQG4kld+
	 /9hjIqCrIzY6/tPA5aJK/omeDGlyOonpVOQbsDVPdVAayFnaUYUFKsI1LaNzpt32K8
	 2y+/71lICDzkMmMFK5+9r8hnv8fR1HwcCFKgSXe1mtL21ckFUHgp0XiZVy7C7XtIXr
	 3oTE/NnoUyyLR7uEZ0IJ0cJnSCphOrE5tJSa6EGMSqxSYwa6dub5TfLlHhEYydeNrN
	 wzCF1gT48oanw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FwYTsHsFazPm; Wed, 29 Mar 2023 18:20:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 713FB61563;
	Wed, 29 Mar 2023 18:20:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 713FB61563
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 252CE1BF33B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 18:20:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0AF378425A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 18:20:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0AF378425A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LrD9H8pq6y9r for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Mar 2023 18:20:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9CAF184251
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9CAF184251
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 18:20:06 +0000 (UTC)
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-582-cmJSqNW6MB6-hjHPiFvyHQ-1; Wed, 29 Mar 2023 14:20:02 -0400
X-MC-Unique: cmJSqNW6MB6-hjHPiFvyHQ-1
Received: by mail-ed1-f71.google.com with SMTP id
 b1-20020aa7dc01000000b004ad062fee5eso23299406edu.17
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 11:20:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680114001;
 h=content-transfer-encoding:in-reply-to:references:to
 :content-language:subject:cc:user-agent:mime-version:date:message-id
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=gQJesUxnFKqgiarOkDz2JwDNpFkGj1zpEAjUJlQpgaY=;
 b=SIx8VWe/Fh+D5NDHfF2u09ppla2t/V4Fg/kuVtakonOU+X1koZBrkYz4W8GO8uxJ+Z
 uBIHApkhTVWel4g/zdmtDRLQXqsheM1go1crz+xY6n1smBSq2h9ZXIGSFyd1ccR16HnL
 XhyFayUwKBwNRpw8N8sW19CoHaya8Q3M8nViXS46JWHuKgby3Dwzk3LUsrluEW4NkqYi
 qARgeXMLhhS7u1WcqdN0ZgMfLAx6wWl+AGofHROA8o5CD+5gkpBWA0/QC5Nn6cddW7+M
 5tVJO71twF4xVdGUix1y2wKSimWA7F+vsBfZiaEbSu/JsdEPRDc73Pcm3vb76ipf5TAc
 o4mw==
X-Gm-Message-State: AAQBX9ftpB0CD/hYRnKPhTLVdxGx7SOiFooTOLeR+EgZf8rTSAyGZX1R
 mjL5ofGK5RTP6NuR35aKNRZYKU+zIxZf5aT8/apsv2UGvyd85HGxzFA1bjqvGmql+ikJdLdSv6f
 NDrGU4bGdBwcRTEv7Wlb74cADF13qAw==
X-Received: by 2002:a17:906:d117:b0:93b:a0c8:1cec with SMTP id
 b23-20020a170906d11700b0093ba0c81cecmr22268592ejz.32.1680114001210; 
 Wed, 29 Mar 2023 11:20:01 -0700 (PDT)
X-Google-Smtp-Source: AKy350ZUWaOjgV1IE1t9AH5dAFmEEVhMdzH2/G4HwhCRXgJx0Hh4qa1/fFlOoCH37s5FCywLH99t6w==
X-Received: by 2002:a17:906:d117:b0:93b:a0c8:1cec with SMTP id
 b23-20020a170906d11700b0093ba0c81cecmr22268560ejz.32.1680114000870; 
 Wed, 29 Mar 2023 11:20:00 -0700 (PDT)
Received: from [192.168.42.100] (194-45-78-10.static.kviknet.net.
 [194.45.78.10]) by smtp.gmail.com with ESMTPSA id
 gx24-20020a170906f1d800b0092d16623eeasm16798089ejb.138.2023.03.29.11.19.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 29 Mar 2023 11:20:00 -0700 (PDT)
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Google-Original-From: Jesper Dangaard Brouer <brouer@redhat.com>
Message-ID: <b9e5077f-fbc4-8904-74a8-cda94d91cfbf@redhat.com>
Date: Wed, 29 Mar 2023 20:19:59 +0200
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
In-Reply-To: <ZCRy2f170FQ+fXsp@google.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1680114005;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=gQJesUxnFKqgiarOkDz2JwDNpFkGj1zpEAjUJlQpgaY=;
 b=ebcxHfIo+HnWojOs670owurdlAgbBcZvU+WsbuQFo999dHcYwmkXkK0IWgkAPT+E/fQGtY
 QQvmR9i07lvk+lNyQJy7kedATsV4O6cGXqjjTSGiKSznEuR4FUmeK0Kzi1uyVExlCv0FbX
 xr41D9ikQoBeaG+9L7uMfo4aoXGy944=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=ebcxHfIo
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

Ck9uIDI5LzAzLzIwMjMgMTkuMTgsIFN0YW5pc2xhdiBGb21pY2hldiB3cm90ZToKPiBPbiAwMy8y
OSwgSmVzcGVyIERhbmdhYXJkIEJyb3VlciB3cm90ZToKPiAKPj4gT24gMjgvMDMvMjAyMyAyMy41
OCwgU3RhbmlzbGF2IEZvbWljaGV2IHdyb3RlOgo+PiA+IE9uIDAzLzI4LCBKZXNwZXIgRGFuZ2Fh
cmQgQnJvdWVyIHdyb3RlOgo+PiA+ID4gVGhlIFJTUyBoYXNoIHR5cGUgc3BlY2lmaWVzIHdoYXQg
cG9ydGlvbiBvZiBwYWNrZXQgZGF0YSBOSUMgaGFyZHdhcmUgdXNlZAo+PiA+ID4gd2hlbiBjYWxj
dWxhdGluZyBSU1MgaGFzaCB2YWx1ZS4gVGhlIFJTUyB0eXBlcyBhcmUgZm9jdXNlZCBvbiBJbnRl
cm5ldAo+PiA+ID4gdHJhZmZpYyBwcm90b2NvbHMgYXQgT1NJIGxheWVycyBMMyBhbmQgTDQuIEwy
IChlLmcuIEFSUCkgb2Z0ZW4gZ2V0IGhhc2gKPj4gPiA+IHZhbHVlIHplcm8gYW5kIG5vIFJTUyB0
eXBlLiBGb3IgTDMgZm9jdXNlZCBvbiBJUHY0IHZzLiBJUHY2LCBhbmQgTDQKPj4gPiA+IHByaW1h
cmlseSBUQ1AgdnMgVURQLCBidXQgc29tZSBoYXJkd2FyZSBzdXBwb3J0cyBTQ1RQLgo+PiA+Cj4+
ID4gPiBIYXJkd2FyZSBSU1MgdHlwZXMgYXJlIGRpZmZlcmVudGx5IGVuY29kZWQgZm9yIGVhY2gg
aGFyZHdhcmUgTklDLiBNb3N0Cj4+ID4gPiBoYXJkd2FyZSByZXByZXNlbnQgUlNTIGhhc2ggdHlw
ZSBhcyBhIG51bWJlci4gRGV0ZXJtaW5pbmcgTDMgdnMgTDQgb2Z0ZW4KPj4gPiA+IHJlcXVpcmVz
IGEgbWFwcGluZyB0YWJsZSBhcyB0aGVyZSBvZnRlbiBpc24ndCBhIHBhdHRlcm4gb3Igc29ydGlu
Zwo+PiA+ID4gYWNjb3JkaW5nIHRvIElTTyBsYXllci4KPj4gPgo+PiA+ID4gVGhlIHBhdGNoIGlu
dHJvZHVjZSBhIFhEUCBSU1MgaGFzaCB0eXBlICh4ZHBfcnNzX2hhc2hfdHlwZSkgdGhhdCBjYW4g
Ym90aAo+PiA+ID4gYmUgc2VlbiBhcyBhIG51bWJlciB0aGF0IGlzIG9yZGVyZWQgYWNjb3JkaW5n
IGJ5IElTTyBsYXllciwgYW5kIGNhbiBiZSBiaXQKPj4gPiA+IG1hc2tlZCB0byBzZXBhcmF0ZSBJ
UHY0IGFuZCBJUHY2IHR5cGVzIGZvciBMNCBwcm90b2NvbHMuIFJvb20gaXMgYXZhaWxhYmxlCj4+
ID4gPiBmb3IgZXh0ZW5kaW5nIGxhdGVyIHdoaWxlIGtlZXBpbmcgdGhlc2UgcHJvcGVydGllcy4g
VGhpcyBtYXBzIGFuZCB1bmlmaWVzCj4+ID4gPiBkaWZmZXJlbmNlIHRvIGhhcmR3YXJlIHNwZWNp
ZmljIGhhc2hlcy4KPj4gPgo+PiA+IExvb2tzIGdvb2Qgb3ZlcmFsbC4gQW55IHJlYXNvbiB3ZSdy
ZSBtYWtpbmcgdGhpcyBzcGVjaWZpYyBsYXlvdXQ/Cj4gCj4+IE9uZSBpbXBvcnRhbnQgZ29hbCBp
cyB0byBoYXZlIGEgc2ltcGxlL2Zhc3Qgd2F5IHRvIGRldGVybWluaW5nIEwzIHZzIEw0LAo+PiBi
ZWNhdXNlIGEgTDQgaGFzaCBjYW4gYmUgdXNlZCBmb3IgZmxvdyBoYW5kbGluZyAoZS5nLiBsb2Fk
LWJhbGFuY2luZykuCj4gCj4+IFdlIGJlbG93IGxheW91dCB5b3UgY2FuOgo+IAo+PiDCoCBpZiAo
cnNzX3R5cGUgJiBYRFBfUlNTX1RZUEVfTDRfTUFTSykKPj4gwqDCoMKgwqBib29sIGh3X2hhc2hf
ZG9fTEIgPSB0cnVlOwo+IAo+PiBPciB1c2luZyBpdCBhcyBhIG51bWJlcjoKPiAKPj4gwqAgaWYg
KHJzc190eXBlID4gWERQX1JTU19UWVBFX0w0KQo+PiDCoMKgwqDCoGJvb2wgaHdfaGFzaF9kb19M
QiA9IHRydWU7Cj4gCj4gV2h5IGlzIGl0IHN0cmljdGx5IGJldHRlciB0aGVuIHRoZSBmb2xsb3dp
bmc/Cj4gCj4gaWYgKHJzc190eXBlICYgKFRZUEVfVURQIHwgVFlQRV9UQ1AgfCBUWVBFX1NDVFAp
KSB7fQo+IAoKU2VlIFYyIEkgZHJvcHBlZCB0aGUgaWRlYSBvZiB0aGlzIGJlaW5nIGEgbnVtYmVy
ICh0aGF0IGlkZWEgd2FzIG5vdCBhCmdvb2QgaWRlYSkuCgo+IElmIHdlIGFkZCBzb21lIG5ldyBM
NCBmb3JtYXQsIHRoZSBicGYgcHJvZ3JhbXMgY2FuIGJlIHVwZGF0ZWQgdG8gc3VwcG9ydAo+IGl0
Pwo+IAo+PiBJJ20gdmVyeSBvcGVuIHRvIGNoYW5nZXMgdG8gbXkgInNwZWNpZmljIiBsYXlvdXQu
wqAgSSBhbSBpbiBkb3VidCBpZgo+PiB1c2luZyBpdCBhcyBhIG51bWJlciBpcyB0aGUgcmlnaHQg
YXBwcm9hY2ggYW5kIHdvcnRoIHRoZSB0cm91YmxlLgo+IAo+PiA+IFdoeSBub3Qgc2ltcGx5IHRo
ZSBmb2xsb3dpbmc/Cj4+ID4KPj4gPiBlbnVtIHsKPj4gPsKgIO+/ve+/ve+/ve+/vVhEUF9SU1Nf
VFlQRV9OT05FID0gMCwKPj4gPsKgIO+/ve+/ve+/ve+/vVhEUF9SU1NfVFlQRV9JUFY0ID0gQklU
KDApLAo+PiA+wqAg77+977+977+977+9WERQX1JTU19UWVBFX0lQVjYgPSBCSVQoMSksCj4+ID7C
oCDvv73vv73vv73vv70vKiBJUHY2IHdpdGggZXh0ZW5zaW9uIGhlYWRlci4gKi8KPj4gPsKgIO+/
ve+/ve+/ve+/vS8qIGxldCdzIG5vdGUgXl5eIGl0IGluIHRoZSBVQVBJPyAqLwo+PiA+wqAg77+9
77+977+977+9WERQX1JTU19UWVBFX0lQVjZfRVggPSBCSVQoMiksCj4+ID7CoCDvv73vv73vv73v
v71YRFBfUlNTX1RZUEVfVURQID0gQklUKDMpLAo+PiA+wqAg77+977+977+977+9WERQX1JTU19U
WVBFX1RDUCA9IEJJVCg0KSwKPj4gPsKgIO+/ve+/ve+/ve+/vVhEUF9SU1NfVFlQRV9TQ1RQID0g
QklUKDUpLAo+IAo+PiBXZSBrbm93IHRoZXNlIGJpdHMgZm9yIFVEUCwgVENQLCBTQ1RQIChhbmQg
SVBTRUMpIGFyZSBleGNsdXNpdmUsIHRoZXkKPj4gY2Fubm90IGJlIHNldCBhdCB0aGUgc2FtZSB0
aW1lLCBlLmcuIGFzIGEgcGFja2V0IGNhbm5vdCBib3RoIGJlIFVEUCBhbmQKPj4gVENQLsKgIFRo
dXMsIHVzaW5nIHRoZXNlIGJpdHMgYXMgYSBudW1iZXIgbWFrZSBzZW5zZSB0byBtZSwgYW5kIGlz
IG1vcmUKPj4gY29tcGFjdC4KPiAKPiBbLi5dCj4gCj4+IFRoaXMgQklUKCkgYXBwcm9hY2ggYWxz
byBoYXZlIHRoZSBpc3N1ZSBvZiBleHRlbmRpbmcgaXQgbGF0ZXIgKGZvcndhcmQKPj4gY29tcGF0
aWJpbGl0eSkuwqAgQXMgbWVudGlvbmVkIGEgY29tbW9uIHRhc2sgd2lsbCBiZSB0byBjaGVjayBp
Zgo+PiBoYXNoLXR5cGUgaXMgYSBMNCB0eXBlLsKgIFNlZSBtbHg1IFtwYXRjaCA0LzRdIG5lZWRl
ZCB0byBleHRlbmQgd2l0aAo+PiBJUFNFQy4gTm90aWNlIGhvdyBteSBYRFBfUlNTX1RZUEVfTDRf
TUFTSyBjb3ZlcnMgYWxsIHRoZSBiaXRzIHRoYXQgdGhpcwo+PiBjYW4gYmUgZXh0ZW5kZWQgd2l0
aCBuZXcgTDQgdHlwZXMsIHN1Y2ggdGhhdCBleGlzdGluZyBwcm9ncyB3aWxsIHN0aWxsCj4+IHdv
cmsgY2hlY2tpbmcgZm9yIEw0IGNoZWNrLsKgIEl0IGNhbiBvZi1jYXVzZSBiZSBzb2x2ZWQgaW4g
dGhlIHNhbWUgd2F5Cj4+IGZvciB0aGlzIEJJVCgpIGFwcHJvYWNoIGJ5IHJlc2VydmluZyBzb21l
IGJpdHMgdXBmcm9udCBpbiBhIG1hc2suCj4gCj4gV2UncmUgdXNpbmcgNiBiaXRzIG91dCBvZiA2
NCwgd2Ugc2hvdWxkIGJlIGdvb2QgZm9yIGF3aGlsZT8gSWYgdGhlcmUKPiBpcyBldmVyIGEgZm9y
d2FyZCBjb21wYXRpYmlsaXR5IGlzc3VlLCB3ZSBjYW4gYWx3YXlzIGNvbWUgdXAgd2l0aAo+IGEg
bmV3IGtmdW5jLgoKSSB3YW50L25lZWQgc3RvcmUgdGhlIFJTUy10eXBlIGluIHRoZSB4ZHBfZnJh
bWUsIGZvciBYRFBfUkVESVJFQ1QgYW5kClNLQiB1c2UtY2FzZXMuICBUaHVzLCBJIGRvbid0IHdh
bnQgdG8gdXNlIDY0LWJpdC84LWJ5dGVzLCBhcyB4ZHBfZnJhbWUKc2l6ZSBpcyBsaW1pdGVkIChn
aXZlbiBpdCByZWR1Y2VzIGhlYWRyb29tIGV4cGFuc2lvbikuCgo+IAo+IE9uZSBvdGhlciByZWxh
dGVkIHF1ZXN0aW9uIEkgaGF2ZSBpczogc2hvdWxkIHdlIGV4cG9ydCB0aGUgdHlwZQo+IG92ZXIg
c29tZSBhZGRpdGlvbmFsIG5ldyBrZnVuYyBhcmd1bWVudD8gKGluc3RlYWQgb2YgYWJ1c2luZyB0
aGUgcmV0dXJuCj4gdHlwZSkgCgpHb29kIHF1ZXN0aW9uLiBJIHdhcyBhbHNvIHdvbmRlcmluZyBp
ZiBpdCB3b3VsZG4ndCBiZSBiZXR0ZXIgdG8gYWRkCmFub3RoZXIga2Z1bmMgYXJndW1lbnQgd2l0
aCB0aGUgcnNzX2hhc2hfdHlwZT8KClRoYXQgd2lsbCBjaGFuZ2UgdGhlIGNhbGwgc2lnbmF0dXJl
LCBzbyB0aGF0IHdpbGwgbm90IGJlIGVhc3kgdG8gaGFuZGxlCmJldHdlZW4ga2VybmVsIHJlbGVh
c2VzLgoKCj4gTWF5YmUgdGhhdCB3aWxsIGxldCB1cyBkcm9wIHRoZSBleHBsaWNpdCBCVEZfVFlQ
RV9FTUlUIGFzIHdlbGw/CgpTdXJlLCBpZiB3ZSBkZWZpbmUgaXQgYXMgYW4gYXJndW1lbnQsIHRo
ZW4gaXQgd2lsbCBhdXRvbWF0aWNhbGx5CmV4cG9ydGVkIGFzIEJURi4KCj4+ID4gfQo+PiA+Cj4+
ID4gQW5kIHRoZW4gdXNpbmcgWERQX1JTU19UWVBFX0lQVjR8WERQX1JTU19UWVBFX1VEUCB2cwo+
PiA+IFhEUF9SU1NfVFlQRV9JUFY2fFhYWCA/Cj4gCj4+IERvIG5vdGljZSwgdGhhdCBJIGFscmVh
ZHkgZG9lcyBzb21lIGxldmVsIG9mIG9yJ2luZyAoInwiKSBpbiB0aGlzCj4+IHByb3Bvc2FsLsKg
IFRoZSBtYWluIGRpZmZlcmVuY2UgaXMgdGhhdCBJIGhpZGUgdGhpcyBmcm9tIHRoZSBkcml2ZXIs
IGFuZAo+PiBraW5kIG9mIHByZS1jb21iaW5lIHRoZSB2YWxpZCBjb21iaW5hdGlvbiAoZW51bSdz
KSBkcml2ZXJzIGNhbiBzZWxlY3QKPj4gZnJvbS4gSSBkbyBnZXQgdGhlIHBvaW50LCBhbmQgSSB0
aGluayBJIHdpbGwgY29tZSB1cCB3aXRoIGEgY29tYmluZWQKPj4gc29sdXRpb24gYmFzZWQgb24g
eW91ciBpbnB1dC4KPiAKPiAKPj4gVGhlIFJTUyBoYXNoaW5nIHR5cGVzIGFuZCBjb21iaW5hdGlv
bnMgY29tZXMgZnJvbSBNJCBzdGFuZGFyZHM6Cj4+IMKgIFsxXSAKPj4gaHR0cHM6Ly9sZWFybi5t
aWNyb3NvZnQuY29tL2VuLXVzL3dpbmRvd3MtaGFyZHdhcmUvZHJpdmVycy9uZXR3b3JrL3Jzcy1o
YXNoaW5nLXR5cGVzI2lwdjQtaGFzaC10eXBlLWNvbWJpbmF0aW9ucwo+IAo+IE15IG1haW4gY29u
Y2VybiBoZXJlIGlzIHRoYXQgd2UncmUgb3Zlci1jb21wbGljYXRpbmcgaXQgd2l0aCB0aGUgbWFz
a3MKPiBhbmQgdGhlIGZvcm1hdC4gV2l0aCB0aGUgZXhwbGljaXQgYml0cyB3ZSBjYW4gZWFzaWx5
IG1hcCB0byB0aGF0Cj4gc3BlYyB5b3UgbWVudGlvbi4KClNlZSBpZiB5b3UgbGlrZSBteSBSRkMt
VjIgcHJvcG9zYWwgYmV0dGVyLgpJdCBzaG91bGQgZ28gbW9yZSBpbiB5b3VyIGRpcmVjdGlvbi4K
Cj4gCj4gRm9yIGV4YW1wbGUsIGZvciBmb3J3YXJkIGNvbXBhdCwgSSdtIG5vdCBzdXJlIHdlIGNh
biBhc3N1bWUgdGhhdCB0aGUgcGVvcGxlCj4gd2lsbCBkbzoKPiAgwqDCoMKgwqAicnNzX3R5cGUg
JiBYRFBfUlNTX1RZUEVfTDRfTUFTSyIKPiBpbnN0ZWFkIG9mIHNvbWV0aGluZyBsaWtlOgo+ICDC
oMKgwqDCoCJyc3NfdHlwZSAmIChYRFBfUlNTX1RZUEVfTDRfSVBWNF9UQ1B8WERQX1JTU19UWVBF
X0w0X0lQVjRfVURQKSIKPiAKClRoaXMgY29kZSBpcyBhbGxvd2VkIGluIFYyIGFuZCBzaG91bGQg
YmUuIEl0IGlzIGEgY2hvaWNlIG9mCkJQRi1wcm9ncmFtbWVyIGluIGxpbmUtMiB0byBub3QgYmUg
Zm9yd2FyZCBjb21wYXRpYmxlIHdpdGggbmV3ZXIgTDQgdHlwZXMuCgo+PiA+ID4gVGhpcyBwcm9w
b3NhbCBjaGFuZ2UgdGhlIGtmdW5jIEFQSSBicGZfeGRwX21ldGFkYXRhX3J4X2hhc2goKSB0byAg
cmV0dXJuCj4+ID4gPiB0aGlzIFJTUyBoYXNoIHR5cGUgb24gc3VjY2Vzcy4KClRoaXMgaXMgdGhl
IHJlYWwgcXVlc3Rpb24gKGFzIGFsc28gcmFpc2VkIGFib3ZlKS4uLgpTaG91bGQgd2UgdXNlIHJl
dHVybiB2YWx1ZSBvciBhZGQgYW4gYXJndW1lbnQgZm9yIHR5cGU/CgotLUplc3BlcgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFu
IG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9z
dW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
