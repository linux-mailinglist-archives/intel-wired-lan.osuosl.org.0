Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C5816C7DCB
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Mar 2023 13:14:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4285D8213D;
	Fri, 24 Mar 2023 12:14:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4285D8213D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679660081;
	bh=o86N3n6jKogZs0BikxVXCdMDPpmbqBnkVRQ9j/TZQRQ=;
	h=From:Date:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tu5zdABfWzMQpuntHoV5g70Rh5biRunjtEkczsCSQlf7NNftPCDD4C0Q221L5OcRN
	 4uSIkn1MR9tX/ODxeZD0NV/3njCYgwyS6RtfRsIZvPBw44xZ7ionWVUOm6K60deM5g
	 XkVDtvaYbMse9l5NNhhRtvrjGQPegDq9zsTXf8levOGynnRZPWPjIcqT5o9EV1pweM
	 AIqW0WH1kp4gml52pdLgH88I9URXzQjR6A6TUGf2i/5qoGFiqqJbhSY+J5qL/ZJWGf
	 OAIQAw8Fp/f7U6heYXXKSqdCf4YQhpYjBjwu6Scev0cXiBhOypXgfPugeFpSlbzDEQ
	 q/jdfKRGHzBaA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r0UmFS2r0a1l; Fri, 24 Mar 2023 12:14:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D385782077;
	Fri, 24 Mar 2023 12:14:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D385782077
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 264381BF34E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Mar 2023 12:14:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 01F7260B45
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Mar 2023 12:14:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 01F7260B45
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2PTM4V22x8-o for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Mar 2023 12:14:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BD9D360B21
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BD9D360B21
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Mar 2023 12:14:33 +0000 (UTC)
Received: from mail-lj1-f197.google.com (mail-lj1-f197.google.com
 [209.85.208.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-60-IGF_o2QnNoqIokKRaJd_7Q-1; Fri, 24 Mar 2023 08:14:29 -0400
X-MC-Unique: IGF_o2QnNoqIokKRaJd_7Q-1
Received: by mail-lj1-f197.google.com with SMTP id
 d15-20020a05651c088f00b002934e8e57e2so400567ljq.10
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Mar 2023 05:14:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679660067;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :to:subject:cc:user-agent:mime-version:date:message-id:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=pBTZYWuFZuf/Tn0BpTtzc8rxHh/vXia0nkhx33ZjAzM=;
 b=ytDpbPJTGDW/1jj1XtvF83Wuz5Pa9EoSMYX09VMXm74xUcPFzw3ELNssTlqNF3i28l
 rJeT9HFptoKpCzkZMmtCWuR3nrZt6ZM5LjQUi2l9WvYXCwOA4yxEk17Xy7UEKPFFK5jm
 XCvSCxvcIAbZuRHx0901UKZ67yIjzM1eGbahwFfMbEFLhNuDQgnKSiigeeHjKtTAUhvY
 zrRKfy1WVIHxNzZnQxneeO5HCa+HFT2QaKSY74I9ZDjWubsz8S1rbd/QDsvgtxRPQqMT
 cvpP8qTdscfv98v5y/zjCZ3NUWblXkiaCNpFFz6AKdM/t2OmfLrlxuIkD195rfcKRUOS
 JskQ==
X-Gm-Message-State: AAQBX9f/S790DYZt0lnkmaiMggmiViWfd0ZCQNSW99cAYLtIAU8uooGc
 GTrrr+s98vA+7+xD8kY/QQxOY3/cPw/LbiJwW0ETq2fk4PuWKl/OVZRDXM8dOF3HlSe5o/vY5RZ
 Dog71C1cMo27nkWFOOucoOm0GvM2c0g==
X-Received: by 2002:ac2:5628:0:b0:4d8:82d5:f5bc with SMTP id
 b8-20020ac25628000000b004d882d5f5bcmr669130lff.34.1679660067668; 
 Fri, 24 Mar 2023 05:14:27 -0700 (PDT)
X-Google-Smtp-Source: AKy350ZGgrq+m4WPQmmsrlK4MMSv11q3GGWp6SPbTmKMQIY/s+s9AMABuSCGVG9pWmv7/y1UkqIgEg==
X-Received: by 2002:ac2:5628:0:b0:4d8:82d5:f5bc with SMTP id
 b8-20020ac25628000000b004d882d5f5bcmr669105lff.34.1679660067227; 
 Fri, 24 Mar 2023 05:14:27 -0700 (PDT)
Received: from [192.168.42.100] (83-90-141-187-cable.dk.customer.tdc.net.
 [83.90.141.187]) by smtp.gmail.com with ESMTPSA id
 x22-20020a19f616000000b0048a982ad0a8sm3328632lfe.23.2023.03.24.05.14.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 24 Mar 2023 05:14:26 -0700 (PDT)
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Google-Original-From: Jesper Dangaard Brouer <brouer@redhat.com>
Message-ID: <6d9dbeb8-e1e7-8f8e-73eb-8fa66a1323de@redhat.com>
Date: Fri, 24 Mar 2023 13:14:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
To: Stanislav Fomichev <sdf@google.com>,
 Alexei Starovoitov <alexei.starovoitov@gmail.com>
References: <167940634187.2718137.10209374282891218398.stgit@firesoul>
 <167940643669.2718137.4624187727245854475.stgit@firesoul>
 <CAKH8qBuv-9TXAmi0oTbB0atC4f6jzFcFhAgQ3D89VX45vUU9hw@mail.gmail.com>
 <080640fc-5835-26f1-2b20-ff079bd59182@redhat.com>
 <CAADnVQKsxzLTZ2XoLbmKKLAeaSyvf3P+w8V143iZ4cEWWTEUfw@mail.gmail.com>
 <CAKH8qBuHaaqnV-_mb1Roao9ZDrEHm+1Cj77hPZSRgwxoqphvxQ@mail.gmail.com>
 <CAADnVQ+6FeQ97DZLco3OtbtXQvGUAY4nr5tM++6NEDr+u8m7GQ@mail.gmail.com>
 <CAKH8qBvzVASpUu3M=6ohDqJgJjoR33jQ-J44ESD9SdkvFoGAZg@mail.gmail.com>
 <CAADnVQLC7ma7SWPOcjXhsZ2N0OyVtBr7TzCoT-_Dn+zQ2DEyWg@mail.gmail.com>
 <CAKH8qBuqxxVM9fSB43cAvvTnaHkA-JNRy=gufCqYf5GNbRA-8g@mail.gmail.com>
 <d7ac4f80-b65c-5201-086e-3b2645cbe7fe@redhat.com>
 <CAADnVQ+Jc6G78gJOA758bkCt4sgiwaxgC7S0cr9J=XBPfMDUSg@mail.gmail.com>
 <CAKH8qBupRYEg+SPMTMb4h532GESG7P1QdaFJ-+zrbARVN9xrdA@mail.gmail.com>
In-Reply-To: <CAKH8qBupRYEg+SPMTMb4h532GESG7P1QdaFJ-+zrbARVN9xrdA@mail.gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1679660072;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=pBTZYWuFZuf/Tn0BpTtzc8rxHh/vXia0nkhx33ZjAzM=;
 b=dE62xiamMkAKSx8C7hbUmKNRS7oXANeBdrmUsrbR5ScAzxY4az2w9wbwssATKEUfS0jEiU
 ulPsKAoLbyvB+rJlYaP3N++qZU+n5EJ0y50xLgfVOtBIewkBti+QDemgBYys6uwQCy0//j
 6j5fRsB5V86906zmdc8C25NMNMzLN9c=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=dE62xiam
Subject: Re: [Intel-wired-lan] [PATCH bpf-next V2 3/6] selftests/bpf:
 xdp_hw_metadata RX hash return code info
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
Cc: xdp-hints@xdp-project.net, Martin KaFai Lau <martin.lau@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Larysa Zaremba <larysa.zaremba@intel.com>,
 Network Development <netdev@vger.kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 Jesper Dangaard Brouer <jbrouer@redhat.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>, "Song,
 Yoong Siang" <yoong.siang.song@intel.com>, brouer@redhat.com, "Ong,
 Boon Leong" <boon.leong.ong@intel.com>, anthony.l.nguyen@intel.com,
 bpf <bpf@vger.kernel.org>, intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 "David S. Miller" <davem@davemloft.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiAyMy8wMy8yMDIzIDE4LjQ3LCBTdGFuaXNsYXYgRm9taWNoZXYgd3JvdGU6Cj4gT24gVGh1
LCBNYXIgMjMsIDIwMjMgYXQgMTA6MzXigK9BTSBBbGV4ZWkgU3Rhcm92b2l0b3YKPiA8YWxleGVp
LnN0YXJvdm9pdG92QGdtYWlsLmNvbT4gd3JvdGU6Cj4+Cj4+IE9uIFRodSwgTWFyIDIzLCAyMDIz
IGF0IDE6NTHigK9BTSBKZXNwZXIgRGFuZ2FhcmQgQnJvdWVyCj4+IDxqYnJvdWVyQHJlZGhhdC5j
b20+IHdyb3RlOgo+Pj4KPj4+Cj4+PiBPbiAyMi8wMy8yMDIzIDIwLjMzLCBTdGFuaXNsYXYgRm9t
aWNoZXYgd3JvdGU6Cj4+Pj4gT24gV2VkLCBNYXIgMjIsIDIwMjMgYXQgMTI6MzDigK9QTSBBbGV4
ZWkgU3Rhcm92b2l0b3YKPj4+PiA8YWxleGVpLnN0YXJvdm9pdG92QGdtYWlsLmNvbT4gd3JvdGU6
Cj4+Pj4+Cj4+Pj4+IE9uIFdlZCwgTWFyIDIyLCAyMDIzIGF0IDEyOjIz4oCvUE0gU3RhbmlzbGF2
IEZvbWljaGV2IDxzZGZAZ29vZ2xlLmNvbT4gd3JvdGU6Cj4+Pj4+Pgo+Pj4+Pj4gT24gV2VkLCBN
YXIgMjIsIDIwMjMgYXQgMTI6MTfigK9QTSBBbGV4ZWkgU3Rhcm92b2l0b3YKPj4+Pj4+IDxhbGV4
ZWkuc3Rhcm92b2l0b3ZAZ21haWwuY29tPiB3cm90ZToKPj4+Pj4+Pgo+Pj4+Pj4+IE9uIFdlZCwg
TWFyIDIyLCAyMDIzIGF0IDEyOjAw4oCvUE0gU3RhbmlzbGF2IEZvbWljaGV2IDxzZGZAZ29vZ2xl
LmNvbT4gd3JvdGU6Cj4+Pj4+Pj4+Cj4+Pj4+Pj4+IE9uIFdlZCwgTWFyIDIyLCAyMDIzIGF0IDk6
MDfigK9BTSBBbGV4ZWkgU3Rhcm92b2l0b3YKPj4+Pj4+Pj4gPGFsZXhlaS5zdGFyb3ZvaXRvdkBn
bWFpbC5jb20+IHdyb3RlOgo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+IE9uIFdlZCwgTWFyIDIyLCAyMDIz
IGF0IDk6MDXigK9BTSBKZXNwZXIgRGFuZ2FhcmQgQnJvdWVyCj4+Pj4+Pj4+PiA8amJyb3VlckBy
ZWRoYXQuY29tPiB3cm90ZToKPj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4KPj4+Pj4+
Pj4+PiBPbiAyMS8wMy8yMDIzIDE5LjQ3LCBTdGFuaXNsYXYgRm9taWNoZXYgd3JvdGU6Cj4+Pj4+
Pj4+Pj4+IE9uIFR1ZSwgTWFyIDIxLCAyMDIzIGF0IDY6NDfigK9BTSBKZXNwZXIgRGFuZ2FhcmQg
QnJvdWVyCj4+Pj4+Pj4+Pj4+IDxicm91ZXJAcmVkaGF0LmNvbT4gd3JvdGU6Cj4+Pj4+Pj4+Pj4+
Pgo+Pj4+Pj4+Pj4+Pj4gV2hlbiBkcml2ZXIgZGV2ZWxvcGVycyBhZGQgWERQLWhpbnRzIGtmdW5j
cyBmb3IgUlggaGFzaCBpdCBpcwo+Pj4+Pj4+Pj4+Pj4gcHJhY3RpY2FsIHRvIHByaW50IHRoZSBy
ZXR1cm4gY29kZSBpbiBicGZfcHJpbnRrIHRyYWNlIHBpcGUgbG9nLgo+Pj4+Pj4+Pj4+Pj4KPj4+
Pj4+Pj4+Pj4+IFByaW50IGhhc2ggdmFsdWUgYXMgYSBoZXggdmFsdWUsIGJvdGggQUZfWERQIHVz
ZXJzcGFjZSBhbmQgYnBmX3Byb2csCj4+Pj4+Pj4+Pj4+PiBhcyB0aGlzIG1ha2VzIGl0IGVhc2ll
ciB0byBzcG90IHBvb3IgcXVhbGl0eSBoYXNoZXMuCj4+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4g
U2lnbmVkLW9mZi1ieTogSmVzcGVyIERhbmdhYXJkIEJyb3VlciA8YnJvdWVyQHJlZGhhdC5jb20+
Cj4+Pj4+Pj4+Pj4+PiAtLS0KPj4+Pj4+Pj4+Pj4+ICAgICAuLi4vdGVzdGluZy9zZWxmdGVzdHMv
YnBmL3Byb2dzL3hkcF9od19tZXRhZGF0YS5jICB8ICAgIDkgKysrKysrLS0tCj4+Pj4+Pj4+Pj4+
PiAgICAgdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL3hkcF9od19tZXRhZGF0YS5jICAgICAg
fCAgICA1ICsrKystCj4+Pj4+Pj4+Pj4+PiAgICAgMiBmaWxlcyBjaGFuZ2VkLCAxMCBpbnNlcnRp
b25zKCspLCA0IGRlbGV0aW9ucygtKQo+Pj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4+IGRpZmYgLS1n
aXQgYS90b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYvcHJvZ3MveGRwX2h3X21ldGFkYXRhLmMg
Yi90b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYvcHJvZ3MveGRwX2h3X21ldGFkYXRhLmMKPj4+
Pj4+Pj4+Pj4+IGluZGV4IDQwYzE3YWRiZjQ4My4uY2UwNzAxMGU0ZDQ4IDEwMDY0NAo+Pj4+Pj4+
Pj4+Pj4gLS0tIGEvdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL3Byb2dzL3hkcF9od19tZXRh
ZGF0YS5jCj4+Pj4+Pj4+Pj4+PiArKysgYi90b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYvcHJv
Z3MveGRwX2h3X21ldGFkYXRhLmMKPj4+Pj4+Pj4+Pj4+IEBAIC03NywxMCArNzcsMTMgQEAgaW50
IHJ4KHN0cnVjdCB4ZHBfbWQgKmN0eCkKPj4+Pj4+Pj4+Pj4+ICAgICAgICAgICAgICAgICAgICBt
ZXRhLT5yeF90aW1lc3RhbXAgPSAwOyAvKiBVc2VkIGJ5IEFGX1hEUCBhcyBub3QgYXZhaWwgc2ln
bmFsICovCj4+Pj4+Pj4+Pj4+PiAgICAgICAgICAgIH0KPj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+
PiAtICAgICAgIGlmICghYnBmX3hkcF9tZXRhZGF0YV9yeF9oYXNoKGN0eCwgJm1ldGEtPnJ4X2hh
c2gpKQo+Pj4+Pj4+Pj4+Pj4gLSAgICAgICAgICAgICAgIGJwZl9wcmludGsoInBvcHVsYXRlZCBy
eF9oYXNoIHdpdGggJXUiLCBtZXRhLT5yeF9oYXNoKTsKPj4+Pj4+Pj4+Pj4+IC0gICAgICAgZWxz
ZQo+Pj4+Pj4+Pj4+Pj4gKyAgICAgICByZXQgPSBicGZfeGRwX21ldGFkYXRhX3J4X2hhc2goY3R4
LCAmbWV0YS0+cnhfaGFzaCk7Cj4+Pj4+Pj4+Pj4+PiArICAgICAgIGlmIChyZXQgPj0gMCkgewo+
Pj4+Pj4+Pj4+Pj4gKyAgICAgICAgICAgICAgIGJwZl9wcmludGsoInBvcHVsYXRlZCByeF9oYXNo
IHdpdGggMHglMDhYIiwgbWV0YS0+cnhfaGFzaCk7Cj4+Pj4+Pj4+Pj4+PiArICAgICAgIH0gZWxz
ZSB7Cj4+Pj4+Pj4+Pj4+PiArICAgICAgICAgICAgICAgYnBmX3ByaW50aygicnhfaGFzaCBub3Qt
YXZhaWwgZXJybm86JWQiLCByZXQpOwo+Pj4+Pj4+Pj4+Pj4gICAgICAgICAgICAgICAgICAgIG1l
dGEtPnJ4X2hhc2ggPSAwOyAvKiBVc2VkIGJ5IEFGX1hEUCBhcyBub3QgYXZhaWwgc2lnbmFsICov
Cj4+Pj4+Pj4+Pj4+PiArICAgICAgIH0KPj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+PiAgICAgICAg
ICAgIHJldHVybiBicGZfcmVkaXJlY3RfbWFwKCZ4c2ssIGN0eC0+cnhfcXVldWVfaW5kZXgsIFhE
UF9QQVNTKTsKPj4+Pj4+Pj4+Pj4+ICAgICB9Cj4+Pj4+Pj4+Pj4+PiBkaWZmIC0tZ2l0IGEvdG9v
bHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL3hkcF9od19tZXRhZGF0YS5jIGIvdG9vbHMvdGVzdGlu
Zy9zZWxmdGVzdHMvYnBmL3hkcF9od19tZXRhZGF0YS5jCj4+Pj4+Pj4+Pj4+PiBpbmRleCA0MDBi
ZmUxOWFiZmUuLmYzZWMwN2NjZGM5NSAxMDA2NDQKPj4+Pj4+Pj4+Pj4+IC0tLSBhL3Rvb2xzL3Rl
c3Rpbmcvc2VsZnRlc3RzL2JwZi94ZHBfaHdfbWV0YWRhdGEuYwo+Pj4+Pj4+Pj4+Pj4gKysrIGIv
dG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL3hkcF9od19tZXRhZGF0YS5jCj4+Pj4+Pj4+Pj4+
PiBAQCAtMyw2ICszLDkgQEAKPj4+Pj4+Pj4+Pj4+ICAgICAvKiBSZWZlcmVuY2UgcHJvZ3JhbSBm
b3IgdmVyaWZ5aW5nIFhEUCBtZXRhZGF0YSBvbiByZWFsIEhXLiBGdW5jdGlvbmFsIHRlc3QKPj4+
Pj4+Pj4+Pj4+ICAgICAgKiBvbmx5LCBkb2Vzbid0IHRlc3QgdGhlIHBlcmZvcm1hbmNlLgo+Pj4+
Pj4+Pj4+Pj4gICAgICAqCj4+Pj4+Pj4+Pj4+PiArICogQlBGLXByb2cgYnBmX3ByaW50ayBpbmZv
IG91dG91dCBjYW4gYmUgYWNjZXNzIHZpYQo+Pj4+Pj4+Pj4+Pj4gKyAqIC9zeXMva2VybmVsL2Rl
YnVnL3RyYWNpbmcvdHJhY2VfcGlwZQo+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+PiBzL291dG91dC9v
dXRwdXQvCj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+PiBGaXhlZCBpbiBWMwo+Pj4+
Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+IEJ1dCBsZXQncyBtYXliZSBkcm9wIGl0PyBJZiB5b3Ugd2FudCB0
byBtYWtlIGl0IG1vcmUgdXNhYmxlLCBsZXQncwo+Pj4+Pj4+Pj4+PiBoYXZlIGEgc2VwYXJhdGUg
cGF0Y2ggdG8gZW5hYmxlIHRyYWNpbmcgYW5kIHBlcmlvZGljYWxseSBkdW1wIGl0IHRvCj4+Pj4+
Pj4+Pj4+IHRoZSBjb25zb2xlIGluc3RlYWQgKGFzIHByZXZpb3VzbHkgZGlzY3Vzc2VkKS4KPj4+
Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+IENhdCdpbmcgL3N5cy9rZXJuZWwvZGVidWcvdHJhY2luZy90cmFj
ZV9waXBlIHdvcmsgZm9yIG1lIHJlZ2FyZGxlc3Mgb2YKPj4+Pj4+Pj4+PiBzZXR0aW5nIGluCj4+
Pj4+Pj4+Pj4gL3N5cy9rZXJuZWwvZGVidWcvdHJhY2luZy9ldmVudHMvYnBmX3RyYWNlL2JwZl90
cmFjZV9wcmludGsvZW5hYmxlCj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+PiBXZSBsaWtlbHkgbmVlZCBh
IGZvbGxvd3VwIHBhdGNoIHRoYXQgYWRkcyBhIEJQRiBjb25maWcgc3dpdGNoIHRoYXQgY2FuCj4+
Pj4+Pj4+Pj4gZGlzYWJsZSBicGZfcHJpbnRrIGNhbGxzLCBiZWNhdXNlIHRoaXMgYWRkcyBvdmVy
aGVhZCBhbmQgdGh1cyBhZmZlY3RzCj4+Pj4+Pj4+Pj4gdGhlIHRpbWVzdGFtcHMuCj4+Pj4+Pj4+
Pgo+Pj4+Pj4+Pj4gTm8uIFRoaXMgaXMgYnkgZGVzaWduLgo+Pj4+Pj4+Pj4gRG8gbm90IHVzZSBi
cGZfcHJpbnRrKiBpbiBwcm9kdWN0aW9uLgo+Pj4KPj4+IEkgZnVsbHkgYWdyZWUgZG8gbm90IHVz
ZSBicGZfcHJpbnRrIGluICpwcm9kdWN0aW9uKi4KPj4+Cj4+Pj4+Pj4+Cj4+Pj4+Pj4+IEJ1dCB0
aGF0J3Mgbm90IGZvciB0aGUgcHJvZHVjdGlvbj8geGRwX2h3X21ldGFkYXRhIGlzIGEgc21hbGwg
dG9vbCB0bwo+Pj4+Pj4+PiB2ZXJpZnkgdGhhdCB0aGUgbWV0YWRhdGEgYmVpbmcgZHVtcGVkIGlz
IGNvcnJlY3QgKGR1cmluZyB0aGUKPj4+Pj4+Pj4gZGV2ZWxvcG1lbnQpLgo+Pj4+Pj4+PiBXZSBo
YXZlIGEgcHJvcGVyIChsZXNzIHZlcmJvc2UpIHNlbGZ0ZXN0IGluCj4+Pj4+Pj4+IHtwcm9ncyxw
cm9nX3Rlc3RzfS94ZHBfbWV0YWRhdGEuYyAob3ZlciB2ZXRoKS4KPj4+Pj4+Pj4gVGhpcyB4ZHBf
aHdfbWV0YWRhdGEgd2FzIHN1cHBvc2VkIHRvIGJlIHVzZWQgZm9yIHJ1bm5pbmcgaXQgYWdhaW5z
dAo+Pj4+Pj4+PiB0aGUgcmVhbCBoYXJkd2FyZSwgc28gaGF2aW5nIGFzIG11Y2ggZGVidWdnaW5n
IGF0IGhhbmQgYXMgcG9zc2libGUKPj4+Pj4+Pj4gc2VlbXMgaGVscGZ1bD8gKGF0IGxlYXN0IGl0
IHdhcyBoZWxwZnVsIHRvIG1lIHdoZW4gcGxheWluZyB3aXRoIG1seDQpCj4+Pgo+Pj4gTXkgZXhw
ZXJpZW5jZSB3aGVuIGRldmVsb3BpbmcgdGhlc2Uga2Z1bmNzIGZvciBpZ2MgKHJlYWwgaGFyZHdh
cmUpLCB0aGlzCj4+PiAidG9vbCIgeGRwX2h3X21ldGFkYXRhIHdhcyBzdXBlciBoZWxwZnVsLCBi
ZWNhdXNlIGl0IHdhcyB2ZXJ5IHZlcmJvc2UKPj4+IChhbmQgSSB3YXMganVnZ2xpbmcgcmVhZGlu
ZyBjaGlwIHJlZ2lzdGVycyBCRS9MRSBhbmQgc2VlIHBhdGNoMSBhIGJ1Z2d5Cj4+PiBpbXBsZW1l
bnRhdGlvbiBmb3IgUlgtaGFzaCkuCj4+Pgo+Pj4gQXMgSSB3cm90ZSBpbiBjb3Zlci1sZXR0ZXIs
IEkgcmVjb21tZW5kIG90aGVyIGRyaXZlciBkZXZlbG9wZXJzIHRvIGRvCj4+PiB0aGUgc2FtZSwg
YmVjYXVzZSBpdCByZWFsbHkgaGVscCBzcGVlZCB1cCB0aGUgZGV2ZWxvcG1lbnQuIEluIHRoZW9y
eQo+Pj4geGRwX2h3X21ldGFkYXRhIGRvZXNuJ3QgYmVsb25nIGluIHNlbGZ0ZXN0cyBkaXJlY3Rv
cnkgYW5kIElNSE8gaXQgc2hvdWxkCj4+PiBoYXZlIGJlZW4gcGxhY2VkIGluIHNhbXBsZXMvYnBm
LywgYnV0IGdpdmVuIHRoZSByZWxhdGlvbnNoaXAgd2l0aCByZWFsCj4+PiBzZWxmdGVzdCB7cHJv
Z3MscHJvZ190ZXN0c30veGRwX21ldGFkYXRhLmMgSSB0aGluayBpdCBtYWtlcyBzZW5zZSB0bwo+
Pj4ga2VlcCBoZXJlLgo+Pj4KPj4+Cj4+Pj4+Pj4KPj4+Pj4+PiBUaGUgb25seSB1c2Ugb2YgYnBm
X3ByaW50ayBpcyBmb3IgZGVidWdnaW5nIG9mIGJwZiBwcm9ncyB0aGVtc2VsdmVzLgo+Pj4+Pj4+
IEl0IHNob3VsZCBub3QgYmUgdXNlZCBpbiBhbnkgdG9vbC4KPj4+Pj4+Cj4+Pj4+PiBIbW0sIGdv
b2QgcG9pbnQuIEkgZ3Vlc3MgaXQgYWxzbyBtZWFucyB3ZSB3b24ndCBoYXZlIHRvIG1lc3Mgd2l0
aAo+Pj4+Pj4gZW5hYmxpbmcvZHVtcGluZyBmdHJhY2UgKGFuZCBkb24ndCBuZWVkIHRoaXMgY29t
bWVudCBhYm91dCBjYXQnaW5nIHRoZQo+Pj4+Pj4gZmlsZSkuCj4+Pj4+PiBKZXNwZXIsIG1heWJl
IHdlIGNhbiBpbnN0ZWFkIHBhc3MgdGhlIHN0YXR1cyBvZiB0aG9zZQo+Pj4+Pj4gYnBmX3hkcF9t
ZXRhZGF0YV94eHgga2Z1bmNzIHZpYSAnc3RydWN0IHhkcF9tZXRhJz8gQW5kIGR1bXAgdGhpcyBp
bmZvCj4+Pj4+PiBmcm9tIHRoZSB1c2Vyc3BhY2UgaWYgbmVlZGVkLgo+Pj4+Pgo+Pj4+PiBUaGVy
ZSBhcmUgc28gbWFueSBvdGhlciB3YXlzIGZvciBicGYgcHJvZyB0byBjb21tdW5pY2F0ZSB3aXRo
IHVzZXIgc3BhY2UuCj4+Pj4+IFVzZSByaW5nYnVmLCBwZXJmX2V2ZW50IGJ1ZmZlciwgZ2xvYmFs
IHZhcnMsIG1hcHMsIGV0Yy4KPj4+Pj4gdHJhY2VfcGlwZSBpcyBkZWJ1ZyBvbmx5IGJlY2F1c2Ug
aXQncyBnbG9iYWwgYW5kIHdpbGwgY29uZmxpY3Qgd2l0aAo+Pj4+PiBhbGwgb3RoZXIgZGVidWcg
c2Vzc2lvbnMuCj4+Pgo+Pj4gSSB3YW50IHRvIGhpZ2hsaWdodCBhYm92ZSBwYXJhZ3JhcGg6IEl0
IGlzIHZlcnkgdHJ1ZSBmb3IgcHJvZHVjdGlvbgo+Pj4gY29kZS4gKEFueW9uZSBHb29nbGluZyB0
aGlzIHBheSBhdHRlbnRpb24gdG8gYWJvdmUgcGFyYWdyYXBoKS4KPj4+Cj4+Pj4KPj4+PiDwn5GN
IG1ha2VzIHNlbnNlLCB0eSEgaG9wZWZ1bGx5IHdlIHdvbid0IGhhdmUgdG8gYWRkIGEgc2VwYXJh
dGUgY2hhbm5lbAo+Pj4+IGZvciB0aG9zZSBhbmQgY2FuIChhYil1c2UgdGhlIG1ldGFkYXRhIGFy
ZWEuCj4+Pj4KPj4+Cj4+PiBQcm9wb3NlZCBzb2x1dGlvbjogSG93IGFib3V0IGRlZmF1bHQgZGlz
YWJsaW5nIHRoZSBicGZfcHJpbnRrJ3MgdmlhIGEKPj4+IG1hY3JvIGRlZmluZSwgYW5kIHRoZW4g
ZHJpdmVyIGRldmVsb3BlciBjYW4gbWFudWFsbHkgcmVlbmFibGUgdGhlbQo+Pj4gZWFzaWx5IHZp
YSBhIHNpbmdsZSBkZWZpbmUsIHRvIGVuYWJsZSBhIGRlYnVnZ2luZyBtb2RlLgo+Pj4KPj4+IEkg
d2FzIG9ubHkgd2F0Y2hpbmcgL3N5cy9rZXJuZWwvZGVidWcvdHJhY2luZy90cmFjZV9waXBlIHdo
ZW4gSSB3YXMKPj4+IGRlYnVnZ2luZyBhIGRyaXZlciBpc3N1ZS4gIFRodXMsIGFuIGV4dHJhIHN0
ZXAgb2YgbW9kaWZ5aW5nIGEgc2luZ2xlCj4+PiBkZWZpbmUgaW4gQlBGIHNlZW1zIGVhc2llciwg
dGhhbiBpbnN0cnVtZW50aW5nIG15IGRyaXZlciB3aXRoIHByaW50ay4KPj4KPj4gSXQncyBjZXJ0
YWlubHkgZmluZSB0byBoYXZlIGNvbW1lbnRlZCBvdXQgYnBmX3ByaW50ayBpbiBzZWxmdGVzdHMK
Pj4gYW5kIHNhbXBsZSBjb2RlLgo+PiBCdXQgdGhlIHBhdGNoIGRvZXM6Cj4+ICsgICAgICAgaWYg
KHJldCA+PSAwKSB7Cj4+ICsgICAgICAgICAgICAgICBicGZfcHJpbnRrKCJwb3B1bGF0ZWQgcnhf
aGFzaCB3aXRoIDB4JTA4WCIsIG1ldGEtPnJ4X2hhc2gpOwo+PiArICAgICAgIH0gZWxzZSB7Cj4+
ICsgICAgICAgICAgICAgICBicGZfcHJpbnRrKCJyeF9oYXNoIG5vdC1hdmFpbCBlcnJubzolZCIs
IHJldCk7Cj4+ICAgICAgICAgICAgICAgICAgbWV0YS0+cnhfaGFzaCA9IDA7IC8qIFVzZWQgYnkg
QUZfWERQIGFzIG5vdCBhdmFpbCBzaWduYWwgKi8KPj4gKyAgICAgICB9Cj4+Cj4+IEl0IGZlZWxz
IHRoYXQgcHJpbnRrIGlzIHRoZSBvbmx5IHRoaW5nIHRoYXQgcHJvdmlkZXMgdGhlIHNpZ25hbCB0
byB0aGUgdXNlci4KPj4gRG9pbmcgcy9yZXQgPj0gMC90cnVlLyB3b24ndCBtYWtlIGFueSBkaWZm
ZXJlbmNlIHRvIHNlbGZ0ZXN0IGFuZAo+PiB0byB0aGUgY29uc3VtZXIgYW5kIHRoYXQncyBteSBt
YWluIGNvbmNlcm4gd2l0aCBzdWNoIHNlbGZ0ZXN0L3NhbXBsZXMuCj4gCj4gSSBhZ3JlZSwgaGF2
aW5nIHRoaXMgc2lnbmFsIGRlbGl2ZXJlZCB0byB0aGUgdXNlciAod2l0aG91dCB0aGUgaWZkZWZz
KQo+IHNlZW1zIGxpa2UgYSBiZXR0ZXIgd2F5IHRvIGdvLgoKSSBhZ3JlZSB0aGF0IHdlIGhhdmUg
YSBzaWduYWwgdGhhdCB3ZSBhcmUgbm90IGRlbGl2ZXJpbmcgdG8gdGhlIHVzZXIuCgpKdXN0IHNv
IHdlIGFyZSBvbiB0aGUgc2FtZSBwYWdlLCBsZXQgbWUgZXhwbGFpbiBob3cgYWJvdmUgY29kZSBp
cwpwcm9ibGVtYXRpYy4gQXMgdGhlIHJ4X2hhc2ggdmFsdWUgemVybyBoYXZlIHR3byBtZWFuaW5n
czoKCiAgKDEpIE5lZ2F0aXZlICdyZXQnIHNldCByeF9oYXNoPTAgYXMgZXJyIHNpZ25hbCB0byBB
Rl9YRFAgInVzZXIiCiAgKDIpIEhhcmR3YXJlIHNldCByeF9oYXNoPTAsIHdoZW4gaGFzaC10eXBl
ID09IElHQ19SU1NfVFlQRV9OT19IQVNICgpDYXNlICgyKSBoYXBwZW5zIGZvciBhbGwgTDIgcGFj
a2V0cyBlLmcuIEFSUCBwYWNrZXRzLiAgU2VlIGluIHBhdGNoLTEKd2hlcmUgSSBtYXAgSUdDX1JT
U19UWVBFX05PX0hBU0ggdG8gbmV0c3RhY2sgdHlwZSBQS1RfSEFTSF9UWVBFX0wyLgpJIGRpZCBj
b25zaWRlciByZXR1cm4gZXJybm8vbmVnYXRpdmUgbnVtYmVyIGZvciBJR0NfUlNTX1RZUEVfTk9f
SEFTSCwKYnV0IEkgd2FudGVkIHRvIGtlZXAga2Z1bmMgY29kZSBhcyBzaW1wbGUgYXMgcG9zc2li
bGUgKGJvdGggZm9yIHNwZWVkCmFuZCBpZiB3ZSBuZWVkIHRvIHVucm9sbCBhcyBieXRlLWNvZGUg
bGF0ZXIpLiBBcyBpMjI1IGhhcmR3YXJlIHN0aWxsCndyaXRlcyB6ZXJvIGludG8gaGFzaCB3b3Jk
IEkgY2hvb3NlIHRvIGtlZXAgY29kZSBzaW1wbGUuCgoKSU1ITyB0aGlzIHN5bXB0b20gaXMgcmVs
YXRlZCB0byBhbiBBUEkgcHJvYmxlbSBvZiB0aGUga2Z1bmMsIHRoYXQKZG9lc24ndCBwcm92aWRl
IHRoZSBoYXNoLXR5cGUuCgo+IFNlZW1zIHRyaXZpYWwgdG8gZG8gc29tZXRoaW5nIGxpa2UgdGhl
IGZvbGxvd2luZyBiZWxvdz8gKHVudGVzdGVkLAo+IGRvZXNuJ3QgY29tcGlsZSwgZ21haWwtY29w
eS1wYXN0ZWQgc28gZG9uJ3QgdHJ5IHRvIGFwcGx5IGl0KQo+IAoKSWYgdGhlIGtmdW5jIHByb3Zp
ZGVkIHRoZSBoYXNoLXR5cGUsIHdoaWNoIHdpbGwgYmUgYSBwb3NpdGl2ZSBudW1iZXIuClRoZW4g
SSB3b3VsZCBhZGQgYSBzaWduZWQgaW50ZWdlciB0byBtZXRhLCB3aGljaCBjYW4gc3RvcmUgdGhl
IGhhc2gtdHlwZQpvciB0aGUgbmVnYXRpdmUgZXJybm8gbnVtYmVyLgoKCj4gZGlmZiAtLWdpdCBh
L3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9ncy94ZHBfaHdfbWV0YWRhdGEuYwo+IGIv
dG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL3Byb2dzL3hkcF9od19tZXRhZGF0YS5jCj4gaW5k
ZXggNGM1NWI0ZDc5ZDNkLi4wNjFjNDEwZjY4ZWEgMTAwNjQ0Cj4gLS0tIGEvdG9vbHMvdGVzdGlu
Zy9zZWxmdGVzdHMvYnBmL3Byb2dzL3hkcF9od19tZXRhZGF0YS5jCj4gKysrIGIvdG9vbHMvdGVz
dGluZy9zZWxmdGVzdHMvYnBmL3Byb2dzL3hkcF9od19tZXRhZGF0YS5jCj4gQEAgLTEyLDYgKzEy
LDkgQEAgc3RydWN0IHsKPiAgICBfX3R5cGUodmFsdWUsIF9fdTMyKTsKPiAgIH0geHNrIFNFQygi
Lm1hcHMiKTsKPiAKPiAraW50IHJlY2VpdmVkOwo+ICtpbnQgZHJvcHBlZDsKPiArCj4gICBleHRl
cm4gaW50IGJwZl94ZHBfbWV0YWRhdGFfcnhfdGltZXN0YW1wKGNvbnN0IHN0cnVjdCB4ZHBfbWQg
KmN0eCwKPiAgICBfX3U2NCAqdGltZXN0YW1wKSBfX2tzeW07Cj4gICBleHRlcm4gaW50IGJwZl94
ZHBfbWV0YWRhdGFfcnhfaGFzaChjb25zdCBzdHJ1Y3QgeGRwX21kICpjdHgsCj4gQEAgLTUyLDEx
ICs1NSwxMSBAQCBpbnQgcngoc3RydWN0IHhkcF9tZCAqY3R4KQo+ICAgIGlmICh1ZHAtPmRlc3Qg
IT0gYnBmX2h0b25zKDkwOTEpKQo+ICAgIHJldHVybiBYRFBfUEFTUzsKCkl0IHdlIHdhbnRlZCB0
byBtYWtlIHRoaXMgcHJvZ3JhbSB1c2VyICJmcmllbmRseSIsIHdlIHNob3VsZCBhbHNvIGNvdW50
CnBhY2tldHMgdGhhdCBkb2Vzbid0IGdldCByZWRpcmVjdGVkIHRvIEFGX1hEUCAidXNlciIgYW5k
IGluc3RlYWQgc2tpcHBlZC4KCj4gLSBicGZfcHJpbnRrKCJmb3J3YXJkaW5nIFVEUDo5MDkxIHRv
IEFGX1hEUCIpOwo+ICsgX19zeW5jX2ZldGNoX2FuZF9hZGQoJnJlY2VpdmVkLCAxKTsKPiAKPiAg
ICByZXQgPSBicGZfeGRwX2FkanVzdF9tZXRhKGN0eCwgLShpbnQpc2l6ZW9mKHN0cnVjdCB4ZHBf
bWV0YSkpOwo+ICAgIGlmIChyZXQgIT0gMCkgewo+IC0gYnBmX3ByaW50aygiYnBmX3hkcF9hZGp1
c3RfbWV0YSByZXR1cm5lZCAlZCIsIHJldCk7Cj4gKyBfX3N5bmNfZmV0Y2hfYW5kX2FkZCgmZHJv
cHBlZCwgMSk7Cj4gICAgcmV0dXJuIFhEUF9QQVNTOwoKSXMgaXQgYSAiZHJvcHBlZCIgb3IgYSAi
c2tpcHBlZCIgcGFja2V0IChyZXR1cm4gWERQX1BBU1MpPwoKPiAgICB9ClsuLi5dCgotLUplc3Bl
cgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
d2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczov
L2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
