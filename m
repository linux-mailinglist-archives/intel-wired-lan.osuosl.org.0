Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 689C06D0E56
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Mar 2023 21:08:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E7F9460B19;
	Thu, 30 Mar 2023 19:08:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E7F9460B19
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680203323;
	bh=4kjPP89bUixtvKRs5kVh7vud/J54idqBUBGsJ60tijs=;
	h=From:Date:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fcZgFZjv4W08sykMUgVxmW4nKmE5Rsfw5/sG7xl/IIibtpaezbiy4c6aYrQaYzRPE
	 9OrTj2p89LWSJX4YRqNc/WrmpMgx8bhMZUujM7Y5eYPcpmQellwyb7FWAZP6dqUxUt
	 FWGEkOVT16NbdGTnolK5f5BY52+rI/3e1RBG2BTYNSYPFfAzihXySGJoxQ3v3w86Ly
	 NAnnvWkysmL3WjU/hS+mxt/eMZ6txf9MEpr8lxDZ80cJI+porROZE1+S84nBQXwTvH
	 S4IbC2Rob/FvhSzbXINMu22XzuEEEOEhcIBQwcffV1zChTqvY7xSD+k8GodnnWqxML
	 XMghvY709CcQQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cVfOwoI_vEwG; Thu, 30 Mar 2023 19:08:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E604F607C7;
	Thu, 30 Mar 2023 19:08:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E604F607C7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EFC0E1BF2A5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 19:08:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C8767607F1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 19:08:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C8767607F1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OZHNen4sawMd for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Mar 2023 19:08:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ED9A3607C7
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id ED9A3607C7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 19:08:35 +0000 (UTC)
Received: from mail-lj1-f199.google.com (mail-lj1-f199.google.com
 [209.85.208.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-321-ztxM4eBEPPeWsQ2vgBUJLw-1; Thu, 30 Mar 2023 15:08:31 -0400
X-MC-Unique: ztxM4eBEPPeWsQ2vgBUJLw-1
Received: by mail-lj1-f199.google.com with SMTP id
 k4-20020a05651c10a400b0029a95d83debso4555356ljn.23
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 12:08:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680203310;
 h=content-transfer-encoding:in-reply-to:references:to
 :content-language:subject:cc:user-agent:mime-version:date:message-id
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=QIyaaupty9iH5e8okKyS4faQPVv+h3/KYTHOe9P8lNM=;
 b=n6Ig7cZ2XAiEtzRUFBxJnb9tpigNr1p2uhHzdyD51p4+YhBDQENvioXSEgHWpPV3oI
 d/ZcqUAdtNbPgQpv29oGKBHA48siM6Cv6c4Q7o/rVSnq/8svVVCbMbrIMif3NY/Y0bgC
 TzxcbybMAT2QiHR7ty5WxShMJVOGKeQQlFEQ73m2GDE8q6NwcS0dmhhHx3mkAvQey5QV
 HQXTGTGAQy3YPWanM2a+4U6XM3KxJ3NR4giBJVin23bgVHtlC9VPpLTWzVsreMp2OJu0
 XpEw0n8JjceLR37AvDzYhv0TKgbqtjasmlCtRsyx/Ke6ry/Ke1P0nkFwx2rr2F3dPs6U
 nfpw==
X-Gm-Message-State: AAQBX9cR9+bhwTYhq7OjPauglSRebjl/4Rx9uYINvhLgEck0IGnDgWSv
 YcGaPIz4tiRyBVaNXFaGZKm7MX75aCu809aKJSmFOsVWiMknzH7uUb1L2ST8mB0U5YdNxk9oS1I
 SRicIotpEBfn8oFBnjLMnmzBxQlQRqw==
X-Received: by 2002:ac2:52a7:0:b0:4e9:67ee:6383 with SMTP id
 r7-20020ac252a7000000b004e967ee6383mr7447707lfm.2.1680203310053; 
 Thu, 30 Mar 2023 12:08:30 -0700 (PDT)
X-Google-Smtp-Source: AKy350bKvSvkdF6fNAH+wrbQaLQufyKmJaCZnmEVpXJ2b/BW3Wbguqu1eLX/GMUXXgVjiD0k4RvRbw==
X-Received: by 2002:ac2:52a7:0:b0:4e9:67ee:6383 with SMTP id
 r7-20020ac252a7000000b004e967ee6383mr7447700lfm.2.1680203309722; 
 Thu, 30 Mar 2023 12:08:29 -0700 (PDT)
Received: from [192.168.42.100] (83-90-141-187-cable.dk.customer.tdc.net.
 [83.90.141.187]) by smtp.gmail.com with ESMTPSA id
 h3-20020a2e9ec3000000b00293d7c95df1sm33830ljk.78.2023.03.30.12.08.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 30 Mar 2023 12:08:29 -0700 (PDT)
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Google-Original-From: Jesper Dangaard Brouer <brouer@redhat.com>
Message-ID: <c305e8ed-bd2c-3301-3a19-c983ff14a3ed@redhat.com>
Date: Thu, 30 Mar 2023 21:08:27 +0200
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
In-Reply-To: <CAKH8qBv9QngYcMjcL=sZR8wVCufPSAv-ZW72OJB-LhZF5a_DrQ@mail.gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1680203314;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=QIyaaupty9iH5e8okKyS4faQPVv+h3/KYTHOe9P8lNM=;
 b=N9dCfcbyw323rjrZ8j15LKOzdFOTHJCJmSnCzzVdhTvV8ptGoq6YFSPVpPYEy2uFABn7N4
 kevaVpZ7d55V6K5rKpe9/8JptIDNfZC3e6n0fh6+JkUKXKkm2jfI+0gTyEnaqmf04WJUQl
 P88JoipLz1tUuLQYNVwxYRWVFqfgiG0=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=N9dCfcby
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

Ck9uIDMwLzAzLzIwMjMgMjEuMDIsIFN0YW5pc2xhdiBGb21pY2hldiB3cm90ZToKPiBPbiBUaHUs
IE1hciAzMCwgMjAyMyBhdCAxMTo1NuKAr0FNIEplc3BlciBEYW5nYWFyZCBCcm91ZXIKPj4KPj4g
T24gMzAvMDMvMjAyMyAyMC4zNSwgU3RhbmlzbGF2IEZvbWljaGV2IHdyb3RlOgo+Pj4gT24gMDMv
MzAsIEplc3BlciBEYW5nYWFyZCBCcm91ZXIgd3JvdGU6ClsuLi5dCj4+IFsuLi5dCj4+Pj4gZGlm
ZiAtLWdpdCBhL25ldC9jb3JlL3hkcC5jIGIvbmV0L2NvcmUveGRwLmMKPj4+PiBpbmRleCA1Mjhk
NGIzNzk4M2QuLjM4ZDJkZWUxNmI0NyAxMDA2NDQKPj4+PiAtLS0gYS9uZXQvY29yZS94ZHAuYwo+
Pj4+ICsrKyBiL25ldC9jb3JlL3hkcC5jCj4+Pj4gQEAgLTczNCwxNCArNzM0LDIyIEBAIF9fYnBm
X2tmdW5jIGludAo+Pj4+IGJwZl94ZHBfbWV0YWRhdGFfcnhfdGltZXN0YW1wKGNvbnN0IHN0cnVj
dCB4ZHBfbWQgKmN0eCwgdTY0ICp0aW0KPj4+PiAgICAgKiBicGZfeGRwX21ldGFkYXRhX3J4X2hh
c2ggLSBSZWFkIFhEUCBmcmFtZSBSWCBoYXNoLgo+Pj4+ICAgICAqIEBjdHg6IFhEUCBjb250ZXh0
IHBvaW50ZXIuCj4+Pj4gICAgICogQGhhc2g6IFJldHVybiB2YWx1ZSBwb2ludGVyLgo+Pj4+ICsg
KiBAcnNzX3R5cGU6IFJldHVybiB2YWx1ZSBwb2ludGVyIGZvciBSU1MgdHlwZS4KPj4+PiArICoK
Pj4+PiArICogVGhlIFJTUyBoYXNoIHR5cGUgKEByc3NfdHlwZSkgc3BlY2lmaWVzIHdoYXQgcG9y
dGlvbiBvZiBwYWNrZXQgaGVhZGVycyBOSUMKPj4+PiArICogaGFyZHdhcmUgd2VyZSB1c2VkIHdo
ZW4gY2FsY3VsYXRpbmcgUlNTIGhhc2ggdmFsdWUuICBUaGUgdHlwZSBjb21iaW5hdGlvbnMKPj4+
PiArICogYXJlIGRlZmluZWQgdmlhICZlbnVtIHhkcF9yc3NfaGFzaF90eXBlIGFuZCBpbmRpdmlk
dWFsIGJpdHMgY2FuIGJlIGRlY29kZWQKPj4+PiArICogdmlhICZlbnVtIHhkcF9yc3NfdHlwZV9i
aXRzLgo+Pj4+ICAgICAqCj4+Pj4gICAgICogUmV0dXJuOgo+Pj4+ICAgICAqICogUmV0dXJucyAw
IG9uIHN1Y2Nlc3Mgb3IgYGAtZXJybm9gYCBvbiBlcnJvci4KPj4+PiAgICAgKiAqIGBgLUVPUE5P
VFNVUFBgYCA6IG1lYW5zIGRldmljZSBkcml2ZXIgZG9lc24ndCBpbXBsZW1lbnQga2Z1bmMKPj4+
PiAgICAgKiAqIGBgLUVOT0RBVEFgYCAgICA6IG1lYW5zIG5vIFJYLWhhc2ggYXZhaWxhYmxlIGZv
ciB0aGlzIGZyYW1lCj4+Pj4gICAgICovCj4+Pj4gLV9fYnBmX2tmdW5jIGludCBicGZfeGRwX21l
dGFkYXRhX3J4X2hhc2goY29uc3Qgc3RydWN0IHhkcF9tZCAqY3R4LAo+Pj4+IHUzMiAqaGFzaCkK
Pj4+PiArX19icGZfa2Z1bmMgaW50IGJwZl94ZHBfbWV0YWRhdGFfcnhfaGFzaChjb25zdCBzdHJ1
Y3QgeGRwX21kICpjdHgsCj4+Pj4gdTMyICpoYXNoLAo+Pj4+ICsgICAgICAgICAgICAgICAgICAg
ICBlbnVtIHhkcF9yc3NfaGFzaF90eXBlICpyc3NfdHlwZSkKPj4+PiAgICB7Cj4+PiBbLi5dCj4+
Pgo+Pj4+ICsgICAgQlRGX1RZUEVfRU1JVChlbnVtIHhkcF9yc3NfdHlwZV9iaXRzKTsKPj4+IG5p
dDogRG8gd2Ugc3RpbGwgbmVlZCB0aGlzIHdpdGggYW4gZXh0cmEgYXJndW1lbnQ/Cj4+Pgo+PiBZ
ZXMsIHVuZm9ydHVuYXRlbHkgKGNvbXBpbGVyIG9wdGltaXplcyBvdXQgZW51bSB4ZHBfcnNzX3R5
cGVfYml0cykuCj4+IERvIG5vdGljZSB0aGUgZGlmZmVyZW5jZSB4ZHBfcnNzX3R5cGVfYml0cyB2
cyB4ZHBfcnNzX2hhc2hfdHlwZS4KPj4gV2UgZG9uJ3QgbmVlZCBpdCBmb3IgInhkcF9yc3NfaGFz
aF90eXBlIiBidXQgbmVlZCBpdCBmb3IKPj4gInhkcF9yc3NfdHlwZV9iaXRzIi4KID4KPiBBaCwg
SSBtaXNzZWQgdGhhdC4gVGhlbiB3aHkgbm90IGV4cG9zZSB4ZHBfcnNzX3R5cGVfYml0cz8KPiBL
ZWVwIHhkcF9yc3NfaGFzaF90eXBlIGZvciBpbnRlcm5hbCBkcml2ZXJzJyB0YWJsZXMsIGFuZCBl
eHBvcnQgdGhlCj4gZW51bSB3aXRoIHRoZSBiaXRzPwoKR3JlYXQgc3VnZ2VzdGlvbiwgeGRwX3Jz
c19oYXNoX3R5cGUgd2lsbCBiZSBpbnRlcm5hbCBmb3IgZHJpdmVycy4KSSB3aWxsIGRvIHRoYXQg
aW4gVjQuCgotLUplc3BlcgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9z
dW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
d2lyZWQtbGFuCg==
