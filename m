Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AFE236E4B68
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Apr 2023 16:24:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CC5F041B18;
	Mon, 17 Apr 2023 14:24:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CC5F041B18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681741487;
	bh=j25uyEyiWH0Q+g8arEYBIgoKHhNHpa+G6Dn0lbfRCwo=;
	h=From:Date:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wAxPjpU7pNAgNxN/eT1xf+3oT0sepw2gLw4gk02ATJae+jHGRXMsp29Sai2VrbcsC
	 AsVhl3zi3K/i3SSfKwp8nce2f0tnbXRUkbHB14TJdplIve167sNKd8Oab/dhjYjXYE
	 oqgoBw34q2XFNrX0b/npY5mfUKYBSFTTD2QjA3EWomlAr5PpB8iAG6+feX1oqFH+Mw
	 EGRmhb+mPbvBG/YUKGqQE9ts+z+NHHgS/tXbS2qRSq827U+qpvEr37nOMzYw/pwC9W
	 8vLSwHi4sCWZHDakfIc3X7SA1n6vjmbgPnt/RIdlPeIc9ktDi+NzxhKBMrnRW4BcVW
	 92cmt20kmlFmA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DbA7JLa-8edf; Mon, 17 Apr 2023 14:24:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7C7A94173F;
	Mon, 17 Apr 2023 14:24:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7C7A94173F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DAE8C1BF4DA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 14:24:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B1E9A41D4C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 14:24:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B1E9A41D4C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HrA-mIoKsF6h for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Apr 2023 14:24:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D66D8400D1
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D66D8400D1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 14:24:39 +0000 (UTC)
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-250-eY1MHbODP_qR198F3MBHMA-1; Mon, 17 Apr 2023 10:24:37 -0400
X-MC-Unique: eY1MHbODP_qR198F3MBHMA-1
Received: by mail-ed1-f70.google.com with SMTP id
 4fb4d7f45d1cf-505149e1a4eso10600273a12.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 07:24:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681741476; x=1684333476;
 h=content-transfer-encoding:in-reply-to:references:to
 :content-language:subject:cc:user-agent:mime-version:date:message-id
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Ih22A54IlQcIcpW8AJafH3qjCniWddl0rR6pTvOIfYU=;
 b=kIm9ImWAa38ck0yzeEi6pfdaj7CL+Y0JnkKGt7Il52lp2scxb5fgzSxEB1Mz4ljLI1
 3sV7LoBQwvYyMbCmmR4gFeinun36HvLbcqxI1xrA0WO63TlCuxtV5MBz/Apa33Qqd6+u
 dow88DeUqQR+NIZXMWpYKIZJB+a21K1z6BhsmmR6+Cdxhc7fWfL5tMFX1FKkgvHBr+iM
 9Kyc0HDzdbkP1mmvUePfkJLMCY/QmdAp8Kz6JW5rnePdnIJ5z/0KUmaddEFAOJAXj84p
 Ltw4h0BWrRe+HU+1oWQiNaqPXSRyf+CXO5nCKcWD1JKXXUdeKXeTF4lKj7L8A9O8Boht
 UUOg==
X-Gm-Message-State: AAQBX9cGHyVFH48Gv4ilBgA5xf/y33GnCcESQDnTpxSYhOh0kZv89Id0
 Z4cdk3hWQyKO3/h+vMtdAe5CzxY0/6U87H6TgHloIzPpPzELAPec39D3WI4PAx7TO63p86tWDHh
 amxBZ/x4aafLjXcRgAUPCYHqcIQFayQ==
X-Received: by 2002:a05:6402:510a:b0:504:a336:22d5 with SMTP id
 m10-20020a056402510a00b00504a33622d5mr18020048edd.15.1681741476385; 
 Mon, 17 Apr 2023 07:24:36 -0700 (PDT)
X-Google-Smtp-Source: AKy350ZzCTM4iTY4cjU7RvpTj9V6B1opCLDxjF2En5J3oVG+O+Xu2rEAPmG7p+piBgCrXtL93dXnUA==
X-Received: by 2002:a05:6402:510a:b0:504:a336:22d5 with SMTP id
 m10-20020a056402510a00b00504a33622d5mr18020003edd.15.1681741476043; 
 Mon, 17 Apr 2023 07:24:36 -0700 (PDT)
Received: from [192.168.42.222] (194-45-78-10.static.kviknet.net.
 [194.45.78.10]) by smtp.gmail.com with ESMTPSA id
 n6-20020aa7db46000000b00504b203c4f1sm5879091edt.40.2023.04.17.07.24.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 17 Apr 2023 07:24:35 -0700 (PDT)
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Google-Original-From: Jesper Dangaard Brouer <brouer@redhat.com>
Message-ID: <e7b9cb2c-1c18-7354-8d33-a924b5ae1d5b@redhat.com>
Date: Mon, 17 Apr 2023 16:24:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
To: Song Yoong Siang <yoong.siang.song@intel.com>,
 "Bezdeka, Florian" <florian.bezdeka@siemens.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Vedang Patel <vedang.patel@intel.com>, Jithu Joseph
 <jithu.joseph@intel.com>, Andre Guedes <andre.guedes@intel.com>,
 Stanislav Fomichev <sdf@google.com>, Jacob Keller
 <jacob.e.keller@intel.com>, David Laight <David.Laight@ACULAB.COM>
References: <20230414154902.2950535-1-yoong.siang.song@intel.com>
 <934a4204-1920-f5e1-bcde-89429554d0d6@redhat.com>
In-Reply-To: <934a4204-1920-f5e1-bcde-89429554d0d6@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1681741478;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Ih22A54IlQcIcpW8AJafH3qjCniWddl0rR6pTvOIfYU=;
 b=AxKbK0DfkZDmb1L1zhuJJLKIRnDzBnONFip8TNqQFsHjNE2z/80oib8S6z/fPJX21I7UcL
 wyrJljXoXr2RxtEQhg8KaJn8PezECluv+7V+OQUixEttER5RhoLSt4+6RWQJ9UZpNyk/qI
 XI9Si2wyWv7eS4cymmjYilWTVXwiC94=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=AxKbK0Df
Subject: Re: [Intel-wired-lan] [PATCH net v3 1/1] igc: read before write to
 SRRCTL register
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
Cc: xdp-hints@xdp-project.net, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, brouer@redhat.com, bpf@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ck9uIDE0LzA0LzIwMjMgMjIuMDUsIEplc3BlciBEYW5nYWFyZCBCcm91ZXIgd3JvdGU6Cj4gIAo+
IE9uIDE0LzA0LzIwMjMgMTcuNDksIFNvbmcgWW9vbmcgU2lhbmcgd3JvdGU6Cj4+IGlnY19jb25m
aWd1cmVfcnhfcmluZygpIGZ1bmN0aW9uIHdpbGwgYmUgY2FsbGVkIGFzIHBhcnQgb2YgWERQIHBy
b2dyYW0KPj4gc2V0dXAuIElmIFJ4IGhhcmR3YXJlIHRpbWVzdGFtcCBpcyBlbmFibGVkIHByaW8g
dG8gWERQIHByb2dyYW0gc2V0dXAsCj4+IHRoaXMgdGltZXN0YW1wIGVuYWJsZW1lbnQgd2lsbCBi
ZSBvdmVyd3JpdHRlbiB3aGVuIGJ1ZmZlciBzaXplIGlzCj4+IHdyaXR0ZW4gaW50byBTUlJDVEwg
cmVnaXN0ZXIuCj4+Cj4+IFRodXMsIHRoaXMgY29tbWl0IHJlYWQgdGhlIHJlZ2lzdGVyIHZhbHVl
IGJlZm9yZSB3cml0ZSB0byBTUlJDVEwKPj4gcmVnaXN0ZXIuIFRoaXMgY29tbWl0IGlzIHRlc3Rl
ZCBieSB1c2luZyB4ZHBfaHdfbWV0YWRhdGEgYnBmIHNlbGZ0ZXN0Cj4+IHRvb2wuIFRoZSB0b29s
IGVuYWJsZXMgUnggaGFyZHdhcmUgdGltZXN0YW1wIGFuZCB0aGVuIGF0dGFjaCBYRFAgcHJvZ3Jh
bQo+PiB0byBpZ2MgZHJpdmVyLiBJdCB3aWxsIGRpc3BsYXkgaGFyZHdhcmUgdGltZXN0YW1wIG9m
IFVEUCBwYWNrZXQgd2l0aAo+PiBwb3J0IG51bWJlciA5MDkyLiBCZWxvdyBhcmUgZGV0YWlsIG9m
IHRlc3Qgc3RlcHMgYW5kIHJlc3VsdHMuCj4+ClsuLi5dCj4+Cj4+IEZpeGVzOiBmYzlkZjJhMGI1
MjAgKCJpZ2M6IEVuYWJsZSBSWCB2aWEgQUZfWERQIHplcm8tY29weSIpCj4+IENjOiA8c3RhYmxl
QHZnZXIua2VybmVsLm9yZz4gIyA1LjE0Kwo+PiBTaWduZWQtb2ZmLWJ5OiBTb25nIFlvb25nIFNp
YW5nIDx5b29uZy5zaWFuZy5zb25nQGludGVsLmNvbT4KPj4gUmV2aWV3ZWQtYnk6IEphY29iIEtl
bGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPgo+PiBSZXZpZXdlZC1ieTogSmVzcGVyIERh
bmdhYXJkIEJyb3VlciA8YnJvdWVyQHJlZGhhdC5jb20+Cj4+IC0tLQo+IAo+IExHVE0sIHRoYW5r
IGZvciB0aGUgYWRqdXN0bWVudHMgOi0pCj4gCj4gQWNrZWQtYnk6IEplc3BlciBEYW5nYWFyZCBC
cm91ZXIgPGJyb3VlckByZWRoYXQuY29tPgo+IAoKVGVzdGVkLWJ5OiBKZXNwZXIgRGFuZ2FhcmQg
QnJvdWVyIDxicm91ZXJAcmVkaGF0LmNvbT4KCkkgY2FuIGNvbmZpcm0gdGhhdCB0aGlzIHBhdGNo
IGZpeCB0aGUgaXNzdWUgSSBleHBlcmllbmNlZCB3aXRoIGlnYy4KClRoaXMgcGF0Y2ggY2xlYXJs
eSBmaXhlcyBhIGJ1ZyBpbiBpZ2Mgd2hlbiB3cml0aW5nIHRoZSBTUlJDVEwgcmVnaXN0ZXIuCihh
cyBiaXQgMzAgaW4gcmVnaXN0ZXIgaXMgIlRpbWVzdGFtcCBSZWNlaXZlZCBQYWNrZXQiIHdoaWNo
IGdvdCBjbGVhcmVkIApiZWZvcmUpLgoKRmxvcmlhbiBtaWdodCBoYXZlIGZvdW5kIGFub3RoZXIg
YnVnIGFyb3VuZCBSWCB0aW1lc3RhbXBzLCBidXQgdGhpcwpwYXRjaCBzaG91bGQgYmUgc2FmZSBh
bmQgc2FuZSB0byBhcHBseSBhcyBpcy4KCj4+IHYyIC0+IHYzOiBSZWZhY3RvciBTUlJDVEwgZGVm
aW5pdGlvbnMgdG8gbW9yZSBodW1hbiByZWFkYWJsZSBkZWZpbml0aW9ucwo+PiB2MSAtPiB2Mjog
Rml4IGluZGVudGlvbgo+PiAtLS0KPj4gwqAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdj
L2lnY19iYXNlLmggfCAxMSArKysrKysrKy0tLQo+PiDCoCBkcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pZ2MvaWdjX21haW4uYyB8wqAgNyArKysrKy0tCj4+IMKgIDIgZmlsZXMgY2hhbmdlZCwg
MTMgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50
ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
