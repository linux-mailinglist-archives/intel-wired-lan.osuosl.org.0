Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F288D6D0031
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Mar 2023 11:51:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 87EE341E0B;
	Thu, 30 Mar 2023 09:51:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 87EE341E0B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680169901;
	bh=9fdzf5+efaQag6qZ+HNaTNlVi60jNaPGLyn8GTQLMpg=;
	h=From:Date:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RSNhjfifCj0MHSUcduO32X1rTdS/5DY40y2WiQ1Tibek4KqTZdDFFx6rH5ijXApOm
	 +GxR6R6Bm56MnBHHV1+AY5WUMmjOf1zzy1L061aweLaOUCGZryWAw5FxrasFGY+Plv
	 Wbd04/UmiqkX4KuftjU6k81hxL2w2LQUFtC07ii1S9ldGbmmqO7TtugX7R1/t/WZaj
	 2QD8BcfoknOeOF3ZNM4rOkNhbRlMP56GoMZXElZDszcX5vT1Ro8W7DeD3rcow88BwN
	 t8I1BYH89LThpWzBEjzqoHiSBbT8t3qCwCUpB2ZiuIbj3phSNqO1gwVDdPMG4mYGPQ
	 RIx7MLGk0QpEg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tcuCA_QuBPAu; Thu, 30 Mar 2023 09:51:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 18985401A1;
	Thu, 30 Mar 2023 09:51:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 18985401A1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 133FA1BF84C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 09:51:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DFFE1614C3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 09:51:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DFFE1614C3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N6v9N7U7MaPI for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Mar 2023 09:51:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C356D605A2
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C356D605A2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 09:51:33 +0000 (UTC)
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com
 [209.85.167.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-214-wYmR1vSfMDmyLmamtALZXg-1; Thu, 30 Mar 2023 05:51:28 -0400
X-MC-Unique: wYmR1vSfMDmyLmamtALZXg-1
Received: by mail-lf1-f71.google.com with SMTP id
 e9-20020a196909000000b004cca10c5ae6so7237551lfc.9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 02:51:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680169887;
 h=content-transfer-encoding:in-reply-to:references:to
 :content-language:subject:cc:user-agent:mime-version:date:message-id
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=vARvNHeJ+W89AdgUOlKd7JM+FHzR0dOpHriTAosKSAg=;
 b=7tiXaYsCgFsVTbWg0fB8d+PxTurdnXa2URSKBar3w1VlFbdAs8TFe6PSqY/BIQvVAR
 x+Jo65NEnQUpafUvoI2Av3CG7G5nMedZqiE34UQgmEP6JNDGnjWA8N0VdIMvlEK9b7PP
 RDTPnQ1PuNyH/ZGRzMXNcvNI4zRrEnYbuUlZ18aS61a21jwo/PpBAGt2Aj6UQIKBUglB
 kXCmXi9jWKcD6QFOe9LNs5AxcfkBrWSUU8yoEh0iwS+fFWh/e08l5ZySC2RWcp3Lslk0
 S9s3c63hlP4mn86Rpy7kIzNfc4PyanOsMHJ4NcLSSFcRRL/UEVQW0Uzinp6LsMwCop4+
 iQmA==
X-Gm-Message-State: AAQBX9cUiSxy/doU1IUF6hFoWrXlGXSDp9C+Z8PCtE+blURSyyDG22we
 ytPu92oc7YN08+xVLvHjLhWXAKomRDzHwN5hHZWmzMq6G3Eu48s2SkQ+kL+e46JmQg6ugmhc2PW
 LSAobO52iw3S0el0BoF/tSV6qs9QT6A==
X-Received: by 2002:ac2:4422:0:b0:4dd:9da1:aa82 with SMTP id
 w2-20020ac24422000000b004dd9da1aa82mr7386861lfl.29.1680169887105; 
 Thu, 30 Mar 2023 02:51:27 -0700 (PDT)
X-Google-Smtp-Source: AKy350aYAuHqGLXqNcaucK63lT+y4cBQlu/p1fMHtBQbwRMoCVEpXYJBq5CS5/uG7hjHoGpi3exLyw==
X-Received: by 2002:ac2:4422:0:b0:4dd:9da1:aa82 with SMTP id
 w2-20020ac24422000000b004dd9da1aa82mr7386842lfl.29.1680169886710; 
 Thu, 30 Mar 2023 02:51:26 -0700 (PDT)
Received: from [192.168.42.100] (83-90-141-187-cable.dk.customer.tdc.net.
 [83.90.141.187]) by smtp.gmail.com with ESMTPSA id
 b16-20020a056512025000b004d85316f2d6sm5790721lfo.118.2023.03.30.02.51.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 30 Mar 2023 02:51:26 -0700 (PDT)
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Google-Original-From: Jesper Dangaard Brouer <brouer@redhat.com>
Message-ID: <7ce10be6-bda2-74fc-371b-9791558af5b5@redhat.com>
Date: Thu, 30 Mar 2023 11:51:23 +0200
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
In-Reply-To: <ZCTHc6Dp4RMi1YZ6@google.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1680169892;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=vARvNHeJ+W89AdgUOlKd7JM+FHzR0dOpHriTAosKSAg=;
 b=KtFtfNlZ2MlSNW26GfS5hkzUD6jeSLbFyPT88ZDpqh3K6/cbPyvqz9QEau+MbVpwH7AoQZ
 +M/sLrJIbcoPd2IYAPhwn9uiwfPYWg931wdMlGi9OlcvBJ7AcU6nbk625QgyJQD/aUSrGW
 Rl/nSyjfbeCZtu9yWn8xiQV7ul0C6RY=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=KtFtfNlZ
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

Ck9uIDMwLzAzLzIwMjMgMDEuMTksIFN0YW5pc2xhdiBGb21pY2hldiB3cm90ZToKPiBPbiAwMy8y
OSwgSmVzcGVyIERhbmdhYXJkIEJyb3VlciB3cm90ZToKPiAKPj4gT24gMjkvMDMvMjAyMyAxOS4x
OCwgU3RhbmlzbGF2IEZvbWljaGV2IHdyb3RlOgo+PiA+IE9uIDAzLzI5LCBKZXNwZXIgRGFuZ2Fh
cmQgQnJvdWVyIHdyb3RlOgo+PiA+Cj4+ID4gPiBPbiAyOC8wMy8yMDIzIDIzLjU4LCBTdGFuaXNs
YXYgRm9taWNoZXYgd3JvdGU6Cj4+ID4gPiA+IE9uIDAzLzI4LCBKZXNwZXIgRGFuZ2FhcmQgQnJv
dWVyIHdyb3RlOgo+PiA+ID4gPiA+IFRoZSBSU1MgaGFzaCB0eXBlIHNwZWNpZmllcyB3aGF0IHBv
cnRpb24gb2YgcGFja2V0IGRhdGEgTklDIGhhcmR3YXJlIHVzZWQKPj4gPiA+ID4gPiB3aGVuIGNh
bGN1bGF0aW5nIFJTUyBoYXNoIHZhbHVlLiBUaGUgUlNTIHR5cGVzIGFyZSBmb2N1c2VkIG9uIElu
dGVybmV0Cj4+ID4gPiA+ID4gdHJhZmZpYyBwcm90b2NvbHMgYXQgT1NJIGxheWVycyBMMyBhbmQg
TDQuIEwyIChlLmcuIEFSUCkgb2Z0ZW4gZ2V0IGhhc2gKPj4gPiA+ID4gPiB2YWx1ZSB6ZXJvIGFu
ZCBubyBSU1MgdHlwZS4gRm9yIEwzIGZvY3VzZWQgb24gSVB2NCB2cy4gSVB2NiwgYW5kIEw0Cj4+
ID4gPiA+ID4gcHJpbWFyaWx5IFRDUCB2cyBVRFAsIGJ1dCBzb21lIGhhcmR3YXJlIHN1cHBvcnRz
IFNDVFAuCj4+ID4gPiA+Cj4+ID4gPiA+ID4gSGFyZHdhcmUgUlNTIHR5cGVzIGFyZSBkaWZmZXJl
bnRseSBlbmNvZGVkIGZvciBlYWNoIGhhcmR3YXJlIE5JQy4gTW9zdAo+PiA+ID4gPiA+IGhhcmR3
YXJlIHJlcHJlc2VudCBSU1MgaGFzaCB0eXBlIGFzIGEgbnVtYmVyLiBEZXRlcm1pbmluZyBMMyAg
dnMgTDQgb2Z0ZW4KPj4gPiA+ID4gPiByZXF1aXJlcyBhIG1hcHBpbmcgdGFibGUgYXMgdGhlcmUg
b2Z0ZW4gaXNuJ3QgYSBwYXR0ZXJuIG9yIHNvcnRpbmcKPj4gPiA+ID4gPiBhY2NvcmRpbmcgdG8g
SVNPIGxheWVyLgo+PiA+ID4gPgo+PiA+ID4gPiA+IFRoZSBwYXRjaCBpbnRyb2R1Y2UgYSBYRFAg
UlNTIGhhc2ggdHlwZSAoeGRwX3Jzc19oYXNoX3R5cGUpIHRoYXQgY2FuIGJvdGgKPj4gPiA+ID4g
PiBiZSBzZWVuIGFzIGEgbnVtYmVyIHRoYXQgaXMgb3JkZXJlZCBhY2NvcmRpbmcgYnkgSVNPIGxh
eWVyLCBhbmQgY2FuIGJlIGJpdAo+PiA+ID4gPiA+IG1hc2tlZCB0byBzZXBhcmF0ZSBJUHY0IGFu
ZCBJUHY2IHR5cGVzIGZvciBMNCBwcm90b2NvbHMuIFJvb20gaXMgYXZhaWxhYmxlCj4+ID4gPiA+
ID4gZm9yIGV4dGVuZGluZyBsYXRlciB3aGlsZSBrZWVwaW5nIHRoZXNlIHByb3BlcnRpZXMuIFRo
aXMgbWFwcyBhbmQgdW5pZmllcwo+PiA+ID4gPiA+IGRpZmZlcmVuY2UgdG8gaGFyZHdhcmUgc3Bl
Y2lmaWMgaGFzaGVzLgo+PiA+ID4gPgo+PiA+ID4gPiBMb29rcyBnb29kIG92ZXJhbGwuIEFueSBy
ZWFzb24gd2UncmUgbWFraW5nIHRoaXMgc3BlY2lmaWMgbGF5b3V0Pwo+PiA+Cj4+ID4gPiBPbmUg
aW1wb3J0YW50IGdvYWwgaXMgdG8gaGF2ZSBhIHNpbXBsZS9mYXN0IHdheSB0byBkZXRlcm1pbmlu
ZyBMMyB2cyBMNCwKPj4gPiA+IGJlY2F1c2UgYSBMNCBoYXNoIGNhbiBiZSB1c2VkIGZvciBmbG93
IGhhbmRsaW5nIChlLmcuIGxvYWQtYmFsYW5jaW5nKS4KPj4gPgo+PiA+ID4gV2UgYmVsb3cgbGF5
b3V0IHlvdSBjYW46Cj4+ID4KPj4gPiA+IMKgIGlmIChyc3NfdHlwZSAmIFhEUF9SU1NfVFlQRV9M
NF9NQVNLKQo+PiA+ID4gwqDCoMKgwqBib29sIGh3X2hhc2hfZG9fTEIgPSB0cnVlOwo+PiA+Cj4+
ID4gPiBPciB1c2luZyBpdCBhcyBhIG51bWJlcjoKPj4gPgo+PiA+ID4gwqAgaWYgKHJzc190eXBl
ID4gWERQX1JTU19UWVBFX0w0KQo+PiA+ID4gwqDCoMKgwqBib29sIGh3X2hhc2hfZG9fTEIgPSB0
cnVlOwo+PiA+Cj4+ID4gV2h5IGlzIGl0IHN0cmljdGx5IGJldHRlciB0aGVuIHRoZSBmb2xsb3dp
bmc/Cj4+ID4KPj4gPiBpZiAocnNzX3R5cGUgJiAoVFlQRV9VRFAgfCBUWVBFX1RDUCB8IFRZUEVf
U0NUUCkpIHt9Cj4+ID4KPiAKPj4gU2VlIFYyIEkgZHJvcHBlZCB0aGUgaWRlYSBvZiB0aGlzIGJl
aW5nIGEgbnVtYmVyICh0aGF0IGlkZWEgd2FzIG5vdCBhCj4+IGdvb2QgaWRlYSkuCj4gCj4g8J+R
jQo+IAo+PiA+IElmIHdlIGFkZCBzb21lIG5ldyBMNCBmb3JtYXQsIHRoZSBicGYgcHJvZ3JhbXMg
Y2FuIGJlIHVwZGF0ZWQgdG8gc3VwcG9ydAo+PiA+IGl0Pwo+PiA+Cj4+ID4gPiBJJ20gdmVyeSBv
cGVuIHRvIGNoYW5nZXMgdG8gbXkgInNwZWNpZmljIiBsYXlvdXQuwqAgSSBhbSBpbiBkb3VidCBp
Zgo+PiA+ID4gdXNpbmcgaXQgYXMgYSBudW1iZXIgaXMgdGhlIHJpZ2h0IGFwcHJvYWNoIGFuZCB3
b3J0aCB0aGUgdHJvdWJsZS4KPj4gPgo+PiA+ID4gPiBXaHkgbm90IHNpbXBseSB0aGUgZm9sbG93
aW5nPwo+PiA+ID4gPgo+PiA+ID4gPiBlbnVtIHsKPj4gPiA+ID7CoCDvv73vv73vv73vv71YRFBf
UlNTX1RZUEVfTk9ORSA9IDAsCj4+ID4gPiA+wqAg77+977+977+977+9WERQX1JTU19UWVBFX0lQ
VjQgPSBCSVQoMCksCj4+ID4gPiA+wqAg77+977+977+977+9WERQX1JTU19UWVBFX0lQVjYgPSBC
SVQoMSksCj4+ID4gPiA+wqAg77+977+977+977+9LyogSVB2NiB3aXRoIGV4dGVuc2lvbiBoZWFk
ZXIuICovCj4+ID4gPiA+wqAg77+977+977+977+9LyogbGV0J3Mgbm90ZSBeXl4gaXQgaW4gdGhl
IFVBUEk/ICovCj4+ID4gPiA+wqAg77+977+977+977+9WERQX1JTU19UWVBFX0lQVjZfRVggPSBC
SVQoMiksCj4+ID4gPiA+wqAg77+977+977+977+9WERQX1JTU19UWVBFX1VEUCA9IEJJVCgzKSwK
Pj4gPiA+ID7CoCDvv73vv73vv73vv71YRFBfUlNTX1RZUEVfVENQID0gQklUKDQpLAo+PiA+ID4g
PsKgIO+/ve+/ve+/ve+/vVhEUF9SU1NfVFlQRV9TQ1RQID0gQklUKDUpLAo+PiA+Cj4+ID4gPiBX
ZSBrbm93IHRoZXNlIGJpdHMgZm9yIFVEUCwgVENQLCBTQ1RQIChhbmQgSVBTRUMpIGFyZSBleGNs
dXNpdmUsIHRoZXkKPj4gPiA+IGNhbm5vdCBiZSBzZXQgYXQgdGhlIHNhbWUgdGltZSwgZS5nLiBh
cyBhIHBhY2tldCBjYW5ub3QgYm90aCBiZSBVRFAgYW5kCj4+ID4gPiBUQ1AuwqAgVGh1cywgdXNp
bmcgdGhlc2UgYml0cyBhcyBhIG51bWJlciBtYWtlIHNlbnNlIHRvIG1lLCBhbmQgaXMgbW9yZQo+
PiA+ID4gY29tcGFjdC4KClNlZSBiZWxvdywgd2h5IEknbSB3cm9uZyAoaW4gc3RvcmluZyB0aGlz
IGFzIG51bWJlcnMpLgoKPj4gPgo+PiA+IFsuLl0KPj4gPgo+PiA+ID4gVGhpcyBCSVQoKSBhcHBy
b2FjaCBhbHNvIGhhdmUgdGhlIGlzc3VlIG9mIGV4dGVuZGluZyBpdCBsYXRlciAoZm9yd2FyZAo+
PiA+ID4gY29tcGF0aWJpbGl0eSkuwqAgQXMgbWVudGlvbmVkIGEgY29tbW9uIHRhc2sgd2lsbCBi
ZSB0byBjaGVjayBpZgo+PiA+ID4gaGFzaC10eXBlIGlzIGEgTDQgdHlwZS7CoCBTZWUgbWx4NSBb
cGF0Y2ggNC80XSBuZWVkZWQgdG8gZXh0ZW5kIHdpdGgKPj4gPiA+IElQU0VDLiBOb3RpY2UgaG93
IG15IFhEUF9SU1NfVFlQRV9MNF9NQVNLIGNvdmVycyBhbGwgdGhlIGJpdHMgdGhhdCB0aGlzCj4+
ID4gPiBjYW4gYmUgZXh0ZW5kZWQgd2l0aCBuZXcgTDQgdHlwZXMsIHN1Y2ggdGhhdCBleGlzdGlu
ZyBwcm9ncyB3aWxsIHN0aWxsCj4+ID4gPiB3b3JrIGNoZWNraW5nIGZvciBMNCBjaGVjay7CoCBJ
dCBjYW4gb2YtY2F1c2UgYmUgc29sdmVkIGluIHRoZSBzYW1lIHdheQo+PiA+ID4gZm9yIHRoaXMg
QklUKCkgYXBwcm9hY2ggYnkgcmVzZXJ2aW5nIHNvbWUgYml0cyB1cGZyb250IGluIGEgbWFzay4K
Pj4gPgo+PiA+IFdlJ3JlIHVzaW5nIDYgYml0cyBvdXQgb2YgNjQsIHdlIHNob3VsZCBiZSBnb29k
IGZvciBhd2hpbGU/IElmIHRoZXJlCj4+ID4gaXMgZXZlciBhIGZvcndhcmQgY29tcGF0aWJpbGl0
eSBpc3N1ZSwgd2UgY2FuIGFsd2F5cyBjb21lIHVwIHdpdGgKPj4gPiBhIG5ldyBrZnVuYy4KPiAK
Pj4gSSB3YW50L25lZWQgc3RvcmUgdGhlIFJTUy10eXBlIGluIHRoZSB4ZHBfZnJhbWUsIGZvciBY
RFBfUkVESVJFQ1QgYW5kCj4+IFNLQiB1c2UtY2FzZXMuwqAgVGh1cywgSSBkb24ndCB3YW50IHRv
IHVzZSA2NC1iaXQvOC1ieXRlcywgYXMgeGRwX2ZyYW1lCj4+IHNpemUgaXMgbGltaXRlZCAoZ2l2
ZW4gaXQgcmVkdWNlcyBoZWFkcm9vbSBleHBhbnNpb24pLgo+IAo+PiA+Cj4+ID4gT25lIG90aGVy
IHJlbGF0ZWQgcXVlc3Rpb24gSSBoYXZlIGlzOiBzaG91bGQgd2UgZXhwb3J0IHRoZSB0eXBlCj4+
ID4gb3ZlciBzb21lIGFkZGl0aW9uYWwgbmV3IGtmdW5jIGFyZ3VtZW50PyAoaW5zdGVhZCBvZiBh
YnVzaW5nIHRoZSByZXR1cm4KPj4gPiB0eXBlKQo+IAo+PiBHb29kIHF1ZXN0aW9uLiBJIHdhcyBh
bHNvIHdvbmRlcmluZyBpZiBpdCB3b3VsZG4ndCBiZSBiZXR0ZXIgdG8gYWRkCj4+IGFub3RoZXIg
a2Z1bmMgYXJndW1lbnQgd2l0aCB0aGUgcnNzX2hhc2hfdHlwZT8KPiAKPj4gVGhhdCB3aWxsIGNo
YW5nZSB0aGUgY2FsbCBzaWduYXR1cmUsIHNvIHRoYXQgd2lsbCBub3QgYmUgZWFzeSB0byBoYW5k
bGUKPj4gYmV0d2VlbiBrZXJuZWwgcmVsZWFzZXMuCj4gCj4gQWdyZWUgd2l0aCBUb2tlIG9uIGEg
c2VwYXJhdGUgdGhyZWFkOyBtaWdodCBub3QgYmUgdG9vIGxhdGUgdG8gZml0IGl0Cj4gaW50byBh
biByYy4uCj4gCj4+ID4gTWF5YmUgdGhhdCB3aWxsIGxldCB1cyBkcm9wIHRoZSBleHBsaWNpdCBC
VEZfVFlQRV9FTUlUIGFzIHdlbGw/Cj4gCj4+IFN1cmUsIGlmIHdlIGRlZmluZSBpdCBhcyBhbiBh
cmd1bWVudCwgdGhlbiBpdCB3aWxsIGF1dG9tYXRpY2FsbHkKPj4gZXhwb3J0ZWQgYXMgQlRGLgo+
IAo+PiA+ID4gPiB9Cj4+ID4gPiA+Cj4+ID4gPiA+IEFuZCB0aGVuIHVzaW5nIFhEUF9SU1NfVFlQ
RV9JUFY0fFhEUF9SU1NfVFlQRV9VRFAgdnMKPj4gPiA+ID4gWERQX1JTU19UWVBFX0lQVjZ8WFhY
ID8KPj4gPgo+PiA+ID4gRG8gbm90aWNlLCB0aGF0IEkgYWxyZWFkeSBkb2VzIHNvbWUgbGV2ZWwg
b2Ygb3InaW5nICgifCIpIGluIHRoaXMKPj4gPiA+IHByb3Bvc2FsLsKgIFRoZSBtYWluIGRpZmZl
cmVuY2UgaXMgdGhhdCBJIGhpZGUgdGhpcyBmcm9tIHRoZSAgZHJpdmVyLCBhbmQKPj4gPiA+IGtp
bmQgb2YgcHJlLWNvbWJpbmUgdGhlIHZhbGlkIGNvbWJpbmF0aW9uIChlbnVtJ3MpIGRyaXZlcnMg
Y2FuIHNlbGVjdAo+PiA+ID4gZnJvbS4gSSBkbyBnZXQgdGhlIHBvaW50LCBhbmQgSSB0aGluayBJ
IHdpbGwgY29tZSB1cCB3aXRoIGEgY29tYmluZWQKPj4gPiA+IHNvbHV0aW9uIGJhc2VkIG9uIHlv
dXIgaW5wdXQuCj4+ID4KPj4gPgo+PiA+ID4gVGhlIFJTUyBoYXNoaW5nIHR5cGVzIGFuZCBjb21i
aW5hdGlvbnMgY29tZXMgZnJvbSBNJCBzdGFuZGFyZHM6Cj4+ID4gPiDCoCBbMV0gCj4+IGh0dHBz
Oi8vbGVhcm4ubWljcm9zb2Z0LmNvbS9lbi11cy93aW5kb3dzLWhhcmR3YXJlL2RyaXZlcnMvbmV0
d29yay9yc3MtaGFzaGluZy10eXBlcyNpcHY0LWhhc2gtdHlwZS1jb21iaW5hdGlvbnMKPj4gPgo+
PiA+IE15IG1haW4gY29uY2VybiBoZXJlIGlzIHRoYXQgd2UncmUgb3Zlci1jb21wbGljYXRpbmcg
aXQgd2l0aCB0aGUgbWFza3MKPj4gPiBhbmQgdGhlIGZvcm1hdC4gV2l0aCB0aGUgZXhwbGljaXQg
Yml0cyB3ZSBjYW4gZWFzaWx5IG1hcCB0byB0aGF0Cj4+ID4gc3BlYyB5b3UgbWVudGlvbi4KPiAK
Pj4gU2VlIGlmIHlvdSBsaWtlIG15IFJGQy1WMiBwcm9wb3NhbCBiZXR0ZXIuCj4+IEl0IHNob3Vs
ZCBnbyBtb3JlIGluIHlvdXIgZGlyZWN0aW9uLgo+IAo+IFllYWgsIEkgbGlrZSBpdCBiZXR0ZXIu
IEJ0dywgd2h5IGhhdmUgYSBzZXBhcmF0ZSBiaXQgZm9yIFhEUF9SU1NfQklUX0VYPwoKWWVzLCB3
ZSBjYW4gcmVuYW1lIHRoZSBFWCBiaXQgZGVmaW5lICh3aGljaCBpcyBpbiBWMikuICBJIHJlZHVj
ZWQgdGhlCm5hbWUtbGVuZ3RoLCBiZWNhdXNlIGl0IGFsbG93ZWQgdG8ga2VlcCBjb2RlIG9uLW9u
ZS1saW5lIHdoZW4gT1InaW5nLgoKPiBBbnkgcmVhc29uIGl0J3Mgbm90IGEgWERQX1JTU19MM19J
UFY2X0VYIHdpdGhpbiBYRFBfUlNTX0wzX01BU0s/Cj4gCgpIbW0uLi4gSSBndWVzcyBpdCBiZWxv
bmdzIHdpdGggTDMuCgpEbyBub3RpY2UgdGhhdCBib3RoIElQdjQgYW5kIElQdjYgaGF2ZSBhIGZs
ZXhpYmxlIGhlYWRlciBjYWxsZWQgZWl0aGVyIApvcHRpb25zL2V4dGVuc2lvbnMgaGVhZGVycywg
YWZ0ZXIgdGhlaXIgZml4ZWQgaGVhZGVyLiAoTWx4NCBIVyBjb250YWlucyAKdGhpcyBpbmZvIGZv
ciBJUHY0LCBidXQgSSBkaWRuJ3QgZXh0ZW5kIHhkcF9yc3NfaGFzaF90eXBlIGluIHRoYXQgcGF0
Y2gpLgpUaHVzLCB3ZSBjb3VsZCBoYXZlIGEgc2luZ2xlIEJJVCB0aGF0IGlzIHZhbGlkIGZvciBi
b3RoIElQdjQgYW5kIElQdjYuCihUaGlzIGNhbiBoZWxwIHNwZWVkdXAgcGFja2V0IHBhcnNpbmcg
aGF2aW5nIHRoaXMgaW5mbykuCgpbLi4uXQo+IAo+PiA+IEZvciBleGFtcGxlLCBmb3IgZm9yd2Fy
ZCBjb21wYXQsIEknbSBub3Qgc3VyZSB3ZSBjYW4gYXNzdW1lIHRoYXQgdGhlIHBlb3BsZQo+PiA+
IHdpbGwgZG86Cj4+ID7CoCDCoMKgwqDCoCJyc3NfdHlwZSAmIFhEUF9SU1NfVFlQRV9MNF9NQVNL
Igo+PiA+IGluc3RlYWQgb2Ygc29tZXRoaW5nIGxpa2U6Cj4+ID7CoCDCoMKgwqDCoCJyc3NfdHlw
ZSAmIChYRFBfUlNTX1RZUEVfTDRfSVBWNF9UQ1B8WERQX1JTU19UWVBFX0w0X0lQVjRfVURQKSIK
Pj4gPgo+IAo+PiBUaGlzIGNvZGUgaXMgYWxsb3dlZCBpbiBWMiBhbmQgc2hvdWxkIGJlLiBJdCBp
cyBhIGNob2ljZSBvZgo+PiBCUEYtcHJvZ3JhbW1lciBpbiBsaW5lLTIgdG8gbm90IGJlIGZvcndh
cmQgY29tcGF0aWJsZSB3aXRoIG5ld2VyIEw0IAo+PiB0eXBlcy4KPiAKClRoZSBhYm92ZSBjb2Rl
IG1hZGUgbWUgcmVhbGl6ZSwgSSB3YXMgd3JvbmcgYW5kIHlvdSBhcmUgcmlnaHQsIHdlIHNob3Vs
ZApyZXByZXNlbnQgdGhlIEw0IHR5cGVzIGFzIEJJVHMgKGFuZCBub3QgYXMgbnVtYmVycykuCkV2
ZW4tdGhvdWdoIGEgc2luZ2xlIHBhY2tldCBjYW5ub3QgYmUgYm90aCBVRFAgYW5kIFRDUCBhdCB0
aGUgc2FtZSB0aW1lLAp0aGVuIGl0IGlzIHJlYXNvbmFibGUgdG8gaGF2ZSBhIGNvZGUgcGF0aCB0
aGF0IHdhbnQgdG8gbWF0Y2ggYm90aCBVRFAKYW5kIFRDUC4gIElmIEw0IHR5cGVzIGFyZSBCSVRz
IHRoZW4gY29kZSBjYW4gZG8gYSBzaW5nbGUgY29tcGFyZSAodmlhCk9SaW5nKSwgd2hpbGUgaWYg
dGhleSBhcmUgbnVtYmVycyB0aGVuIHdlIG5lZWQgbW9yZSBjb21wYXJlcy4KVGh1cywgSSdsbCBj
aGFuZ2Ugc2NoZW1lIGluIFYzIHRvIHVzZSBCSVRzLgoKCj4+ID4gPiA+ID4gVGhpcyBwcm9wb3Nh
bCBjaGFuZ2UgdGhlIGtmdW5jIEFQSSBicGZfeGRwX21ldGFkYXRhX3J4X2hhc2goKSAKPj4gPiA+
ID4gPiB0byAgcmV0dXJuIHRoaXMgUlNTIGhhc2ggdHlwZSBvbiBzdWNjZXNzLgo+IAo+PiBUaGlz
IGlzIHRoZSByZWFsIHF1ZXN0aW9uIChhcyBhbHNvIHJhaXNlZCBhYm92ZSkuLi4KPj4gU2hvdWxk
IHdlIHVzZSByZXR1cm4gdmFsdWUgb3IgYWRkIGFuIGFyZ3VtZW50IGZvciB0eXBlPwo+IAo+IExl
dCdzIGZpeCB0aGUgcHJvdG90eXBlIHdoaWxlIGl0J3Mgc3RpbGwgZWFybHkgaW4gdGhlIHJjPwoK
T2theSwgaW4gVjMgSSB3aWxsIHByb3Bvc2UgYWRkaW5nIGFuIGFyZ3VtZW50IGZvciB0aGUgdHlw
ZSB0aGVuLgoKPiBNYXliZSBhbHNvIGV4dGVuZCB0aGUgdGVzdHMgdG8gZHJvcC9kZWNvZGUvdmVy
aWZ5IHRoZSBtYXNrPwoKWWVzLCBJL3dlIG9idmlvdXNseSBuZWVkIHRvIHVwZGF0ZSB0aGUgc2Vs
ZnRlc3RzLgoKT25lIHByb2JsZW0gd2l0aCBzZWxmdGVzdHMgaXMgdGhhdCBpdCdzIHVzaW5nIHZl
dGggU0tCLWJhc2VkIG1vZGUsIGFuZApTS0IncyBoYXZlIGxvc3QgdGhlIFJTUyBoYXNoIGluZm8g
YW5kIGNvbnZlcnRlZCB0aGlzIGludG8gYSBzaW5nbGUgQklUCnRlbGxpbmcgdXMgaWYgdGhpcyB3
YXMgTDQgYmFzZWQuICBUaHVzLCBpdHMgaGFyZCB0byBkbyBzb21lIGUuZy4gVURQCnR5cGUgdmVy
aWZpY2F0aW9uLCBidXQgSSBndWVzcyB3ZSBjYW4gY2hlY2sgaWYgZXhwZWN0ZWQgVURQIHBhY2tl
dCBpcwpSU1MgdHlwZSBMNC4KCkluIHhkcF9od19tZXRhZGF0YSwgSSB3aWxsIGFkZCBzb21ldGhp
bmcgdGhhdCB1c2VzIHRoZSBSU1MgdHlwZSBiaXRzLiAgSQp3YXMgdGhpbmtpbmcgdG8gbWF0Y2gg
YWdhaW5zdCBMNC1VRFAgUlNTIHR5cGUgYXMgcHJvZ3JhbSBvbmx5IEFGX1hEUApyZWRpcmVjdCBV
RFAgcGFja2V0cywgc28gd2UgY2FuIHZlcmlmeSBpdCB3YXMgYSBVRFAgcGFja2V0IGJ5IEhXIGlu
Zm8uCgotLUplc3BlcgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3Ns
Lm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJl
ZC1sYW4K
