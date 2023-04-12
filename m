Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DE3176DFED9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Apr 2023 21:42:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5B7986113E;
	Wed, 12 Apr 2023 19:42:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5B7986113E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681328529;
	bh=QU5gnqEHUOy85temkJKRDkPL2iOSYV/4AZlDVF4bHBQ=;
	h=From:Date:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9FPMa/NN4r+Kq4I/eLidCaHbm2zHTxUIFKj+oKAY4Fw/WbXWnnP+x4m+DMF9rG6S9
	 KovtgC2D6N/o6lfuILKjEBCLQHokD4wQPDU/gyX3UcMUtre4wu+96IK8wB65sPLk9x
	 sCS/k3/rAr0YqzlbxKTBObhVax2B793Iwzz9quu1B1bbPcwnBT3aNWVXg2H+EDWrp7
	 WHh+0/t3pxmVPL1Vq14LNwO9PnIoBnx0++V96OpqMVojk9bS0EswWvef6Fj0/dopPY
	 uG2wEeEe0jpqvYLbx1JIMcq8KrekbDSoKS6svGowJzmC0gIuCAsoiXcyRdt8VU/EIn
	 +S2yFM5Sbh/ug==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GdwM4RHJakT5; Wed, 12 Apr 2023 19:42:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4FD2361140;
	Wed, 12 Apr 2023 19:42:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4FD2361140
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1F70B1C3C44
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 19:42:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EBAA840981
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 19:42:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EBAA840981
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dcHvLIrdZTak for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Apr 2023 19:42:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B73F24074E
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B73F24074E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 19:42:01 +0000 (UTC)
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-628-UJGKRwnJMXa-_SwVe1w-XA-1; Wed, 12 Apr 2023 15:41:57 -0400
X-MC-Unique: UJGKRwnJMXa-_SwVe1w-XA-1
Received: by mail-ed1-f70.google.com with SMTP id
 4fb4d7f45d1cf-50492dcef2eso1883993a12.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 12:41:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681328516; x=1683920516;
 h=content-transfer-encoding:in-reply-to:references:to
 :content-language:subject:cc:user-agent:mime-version:date:message-id
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=PZyE3by71dhptILzoG2mMeMpC2Di8knMI/CBnTBAzKg=;
 b=OFffh4xJ8IeKMlyjOuYKRWcGHC55FX5ICO8ht3A3tgWoADJC/OzA9HC/2ZK42F4D3O
 Ek+Lpkbx7/UWZDJbrz92lGt3MwQRBesT+Kya274qQqZ/igQdUbJtgi7Y6++nwhxe6gWq
 TYOVYAPj45Coa/tEiqJcX7QdJEAxo8JD883McBTJnSDD2oRv2sX6g99Yc0UapdyZ0KdO
 RKm9JmY3jcpOjiwHpkPG6U86WHOBEU0t5rSf89AyyR/XWWgQOpBCDl1z2EytedEDwkTL
 yDpZhnwtdZ0x2TKTO+ILizuS68GUrj2joGBglZrEwkCMqw5P4WVW4+nGsz+xh5VlEFri
 yw8A==
X-Gm-Message-State: AAQBX9febNak4+I9MEQTWVjTHRzqZRwefKnZJcOUkczK6ZxrD/3ew3/p
 GtuCMOdbU5M8l8/vTI96KUtq4pH/0okqvC8D3OE1zavql7ZTXuM9xtieU93qVTHO63SdmtrbGUS
 uU38M+En8Hjf+o1rkHlMyOpaNhGFPdw==
X-Received: by 2002:a05:6402:88b:b0:504:890a:c974 with SMTP id
 e11-20020a056402088b00b00504890ac974mr6138377edy.39.1681328515944; 
 Wed, 12 Apr 2023 12:41:55 -0700 (PDT)
X-Google-Smtp-Source: AKy350bKfHQNnSCcQvfK/hEpOM5f4Blrmw8gI9lq/WNsB4pll8gZApkmKrLoBvdug33QGekyfjyctQ==
X-Received: by 2002:a05:6402:88b:b0:504:890a:c974 with SMTP id
 e11-20020a056402088b00b00504890ac974mr6138342edy.39.1681328515609; 
 Wed, 12 Apr 2023 12:41:55 -0700 (PDT)
Received: from [192.168.42.222] (194-45-78-10.static.kviknet.net.
 [194.45.78.10]) by smtp.gmail.com with ESMTPSA id
 o2-20020a50c282000000b004fd1ee3f723sm7128382edf.67.2023.04.12.12.41.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 12 Apr 2023 12:41:55 -0700 (PDT)
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Google-Original-From: Jesper Dangaard Brouer <brouer@redhat.com>
Message-ID: <7ab3bb4e-e0f0-c35e-9f39-99cbd5ce1ae6@redhat.com>
Date: Wed, 12 Apr 2023 21:41:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
To: Stanislav Fomichev <sdf@google.com>
References: <168132448251.317773.2526885806604122764.stgit@firesoul>
 <168132451707.317773.15960209122204110352.stgit@firesoul>
 <CAKH8qBu0B1tQBKtGp0-n8eet+4rQRTPE3rrCr5Ve0CG6uYR7Kg@mail.gmail.com>
In-Reply-To: <CAKH8qBu0B1tQBKtGp0-n8eet+4rQRTPE3rrCr5Ve0CG6uYR7Kg@mail.gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1681328520;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=PZyE3by71dhptILzoG2mMeMpC2Di8knMI/CBnTBAzKg=;
 b=ILlhxLflaI1sX1Nored1eiAmpr/YgAStiXbxCYhW3FM3vsulkXkrQM+3i/rCJBP1jDLZTf
 Zx3h4bCUTxPmp+GWOjDGYmnxQybHdbSCRMc53e/dUH6O6MDiH15GNA1O9vRH0FFohjwQ8q
 PULFFoyvpAh3t+oVkObMy1esvhbfEk4=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=ILlhxLfl
Subject: Re: [Intel-wired-lan] [PATCH bpf V9 1/6] selftests/bpf:
 xdp_hw_metadata remove bpf_printk and add counters
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
Cc: ast@kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 boon.leong.ong@intel.com, hawk@kernel.org, xdp-hints@xdp-project.net,
 daniel@iogearbox.net, linux-rdma@vger.kernel.org, john.fastabend@gmail.com,
 jesse.brandeburg@intel.com, intel-wired-lan@lists.osuosl.org,
 brouer@redhat.com, kuba@kernel.org, pabeni@redhat.com, martin.lau@kernel.org,
 larysa.zaremba@intel.com, leon@kernel.org, netdev@vger.kernel.org,
 =?UTF-8?Q?Toke_H=c3=b8iland-J=c3=b8rgensen?= <toke@redhat.com>,
 linux-kernel@vger.kernel.org, tariqt@nvidia.com, yoong.siang.song@intel.com,
 bpf@vger.kernel.org, saeedm@nvidia.com, davem@davemloft.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ck9uIDEyLzA0LzIwMjMgMjAuNTYsIFN0YW5pc2xhdiBGb21pY2hldiB3cm90ZToKPiBPbiBXZWQs
IEFwciAxMiwgMjAyMyBhdCAxMTozNeKAr0FNIEplc3BlciBEYW5nYWFyZCBCcm91ZXIKPiA8YnJv
dWVyQHJlZGhhdC5jb20+ICB3cm90ZToKPj4gVGhlIHRvb2wgeGRwX2h3X21ldGFkYXRhIGNhbiBi
ZSB1c2VkIGJ5IGRyaXZlciBkZXZlbG9wZXJzCj4+IGltcGxlbWVudGluZyBYRFAtaGludHMgbWV0
YWRhdGEga2Z1bmNzLgo+Pgo+PiBSZW1vdmUgYWxsIGJwZl9wcmludGsgY2FsbHMsIGFzIHRoZSB0
b29sIGFscmVhZHkgdHJhbnNmZXJzIGFsbCB0aGUKPj4gWERQLWhpbnRzIHJlbGF0ZWQgaW5mb3Jt
YXRpb24gdmlhIG1ldGFkYXRhIGFyZWEgdG8gQUZfWERQCj4+IHVzZXJzcGFjZSBwcm9jZXNzLgo+
Pgo+PiBBZGQgY291bnRlcnMgZm9yIHByb3ZpZGluZyByZW1haW5pbmcgaW5mb3JtYXRpb24gYWJv
dXQgZmFpbHVyZSBhbmQKPj4gc2tpcHBlZCBwYWNrZXQgZXZlbnRzLgo+Pgo+PiBTaWduZWQtb2Zm
LWJ5OiBKZXNwZXIgRGFuZ2FhcmQgQnJvdWVyPGJyb3VlckByZWRoYXQuY29tPgo+IEFja2VkLWJ5
OiBTdGFuaXNsYXYgRm9taWNoZXY8c2RmQGdvb2dsZS5jb20+Cj4gCj4gbml0OiBtYXliZSB0aG9z
ZSArKyBzaG91bGQgYmUgX19zeW5jX2FkZF9hbmRfZmV0Y2ggaW5zdGVhZD8gVGhlbiB5b3UKPiBz
aG91bGQgYmUgYWJsZSB0byBkcm9wIHZvbGF0aWxlLi4KClRoYXQgaXMgYSBnb29kIHN1Z2dlc3Rp
b24uCkkgd2lsbCB1cGRhdGUgdGhlIHBhdGNoIGFuZCBhZGQgeW91ciBBQ0suCgotLUplc3BlcgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2ly
ZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xp
c3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
