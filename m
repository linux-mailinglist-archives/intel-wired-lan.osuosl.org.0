Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B70766C5021
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Mar 2023 17:09:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 50DF0822CC;
	Wed, 22 Mar 2023 16:09:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 50DF0822CC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679501365;
	bh=lswdkHnwLj3zT2QrjJ0DRzFHW/q2wl8HmWxyZNQkID0=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TvWHkuou9MQgwBPyp34aHi63VLHecjEzZrnygZSKEv0T+EVSrO9NiM4e5bXYIAzRI
	 Wzp6jY3swgjNA16AkkQpL0/trPgvasT02UT4Y6zPeOtwmAH35VDJW1JVhk6aNXh73s
	 L7iw9k+WSnk9jhNP9+qN3YuP/kTliHsA9pXSwbQ+1qREWW9niBypvW1v+vMTpRGBX2
	 qrWRaUobLOrnYjWXn5TWD8IelP8ZDvsehGZFsouzeBy1tZ4c/OPcxPBwBakOzw/xqW
	 dOQmv6/lXi65uABtCh6NFoJ1f3Qs5Ur7eqEBcOrSiBSujm5MDFVd56PELJWvx3ohn9
	 BId7uEYYs8Ijw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dws60AJDvfHP; Wed, 22 Mar 2023 16:09:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5D075822A5;
	Wed, 22 Mar 2023 16:09:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5D075822A5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 848491BF35F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 16:09:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 68533402A3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 16:09:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 68533402A3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rQv9hWxdOqok for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Mar 2023 16:09:18 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 82C1840286
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com
 [IPv6:2a00:1450:4864:20::531])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 82C1840286
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 16:09:18 +0000 (UTC)
Received: by mail-ed1-x531.google.com with SMTP id cy23so74969306edb.12
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 09:09:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679501356;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=c+t+iJE4CLPR5AX4Mmj+oQLcilezTSlPs5QGLaEKjPg=;
 b=oD99ygKxauuH6zMABuotrHhajw+9yy0vnJO0C+Kgl7jqHT3z5krJJTKfmgQas2+n7K
 Ho+zpO64A1a/jGvxyRhT4CzshjsMgPsP3Y9qNJ7iDfsK2upGLxQdnEve/zp6bi44Fafz
 Liai3eNa3gzOflQnknEEHRoagglxh0WALdT89JAzm0PmiEUfApcT3s+BmB7WRm6gWk7X
 Aq2JcnBGDv+ydU2RAH4dcHO0/SmO+TYaFOxNi6L1xnUTz1z6Aij8CL9ed0RzyRqy9WcX
 ruXYkXbR1MjP5opJEGlLPblKKl06IVX4KX5qa2yMkqCw4fJo2/2F/fRx7xJ/x6rwvC6K
 yYhA==
X-Gm-Message-State: AO0yUKVsXqIm9cwNSAByBmTXz3ZSd33tW0z0bghVghRRbow0D3thKEc3
 MI+dn6oGvrJMJOzjdqY9mqfrPTh1lQzNvVi2ryFdH3y+
X-Google-Smtp-Source: AK7set+6hRWgM2r2QyXMC1iDOqd2nc9ihJLVqRYieEQSLsk32fQ3GJjZeRO4TV3s4vCcCHl3SVMTpdaFn/inIkkzUys=
X-Received: by 2002:a17:906:69d3:b0:88d:ba79:4317 with SMTP id
 g19-20020a17090669d300b0088dba794317mr1543087ejs.7.1679501356297; Wed, 22 Mar
 2023 09:09:16 -0700 (PDT)
MIME-Version: 1.0
References: <167950085059.2796265.16405349421776056766.stgit@firesoul>
 <167950088752.2796265.16037961017301094426.stgit@firesoul>
In-Reply-To: <167950088752.2796265.16037961017301094426.stgit@firesoul>
From: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Date: Wed, 22 Mar 2023 09:09:05 -0700
Message-ID: <CAADnVQJz+E9s1wcR-0t7AeuZMaCKBHezQc54mFCqqQ=7KK1D+Q@mail.gmail.com>
To: Jesper Dangaard Brouer <brouer@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1679501356;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=c+t+iJE4CLPR5AX4Mmj+oQLcilezTSlPs5QGLaEKjPg=;
 b=maaJ1R0tVCWai7p0zz0N16SBmHDyT3mInEhc6OhwwhFqXUK2XbbQXvAkjEarOXoZQZ
 tLTx1WLClV7jWVtS+tbsmBdkXdVoA/sVCEwz7lvyWf9N4ByG6tNpEb0p2vfxyuP5z+oB
 QZPlDkuOU4BTjAPJiWuhvqCMKev7ubWgeLrcBnw58s+ce4cvHFNt1CFtd+4guTtyrAIY
 7mz8a8eOT4CBu3+eU5G7KVGrmvbGnq8l37ic1ImLN9PTJ+zQIDs3SA5DVPazqA5b+JN1
 FZykZ92xXPKI6onLP4XA0uECFwQQ97JClYBYxqRh3vZLOsV+sf4ZHq7tPavGtyxlRusn
 DVcg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=maaJ1R0t
Subject: Re: [Intel-wired-lan] [PATCH bpf-next V3 3/6] selftests/bpf:
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
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Stanislav Fomichev <sdf@google.com>, "Song,
 Yoong Siang" <yoong.siang.song@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 "Ong, Boon Leong" <boon.leong.ong@intel.com>, anthony.l.nguyen@intel.com,
 bpf <bpf@vger.kernel.org>, intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 "David S. Miller" <davem@davemloft.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gV2VkLCBNYXIgMjIsIDIwMjMgYXQgOTowMeKAr0FNIEplc3BlciBEYW5nYWFyZCBCcm91ZXIK
PGJyb3VlckByZWRoYXQuY29tPiB3cm90ZToKPgo+IFdoZW4gZHJpdmVyIGRldmVsb3BlcnMgYWRk
IFhEUC1oaW50cyBrZnVuY3MgZm9yIFJYIGhhc2ggaXQgaXMKPiBwcmFjdGljYWwgdG8gcHJpbnQg
dGhlIHJldHVybiBjb2RlIGluIGJwZl9wcmludGsgdHJhY2UgcGlwZSBsb2cuCj4KPiBQcmludCBo
YXNoIHZhbHVlIGFzIGEgaGV4IHZhbHVlLCBib3RoIEFGX1hEUCB1c2Vyc3BhY2UgYW5kIGJwZl9w
cm9nLAo+IGFzIHRoaXMgbWFrZXMgaXQgZWFzaWVyIHRvIHNwb3QgcG9vciBxdWFsaXR5IGhhc2hl
cy4KPgo+IFNpZ25lZC1vZmYtYnk6IEplc3BlciBEYW5nYWFyZCBCcm91ZXIgPGJyb3VlckByZWRo
YXQuY29tPgo+IEFja2VkLWJ5OiBTdGFuaXNsYXYgRm9taWNoZXYgPHNkZkBnb29nbGUuY29tPgo+
IC0tLQo+ICAuLi4vdGVzdGluZy9zZWxmdGVzdHMvYnBmL3Byb2dzL3hkcF9od19tZXRhZGF0YS5j
ICB8ICAgIDkgKysrKysrLS0tCj4gIHRvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi94ZHBfaHdf
bWV0YWRhdGEuYyAgICAgIHwgICAgNSArKysrLQo+ICAyIGZpbGVzIGNoYW5nZWQsIDEwIGluc2Vy
dGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvdG9vbHMvdGVzdGluZy9z
ZWxmdGVzdHMvYnBmL3Byb2dzL3hkcF9od19tZXRhZGF0YS5jIGIvdG9vbHMvdGVzdGluZy9zZWxm
dGVzdHMvYnBmL3Byb2dzL3hkcF9od19tZXRhZGF0YS5jCj4gaW5kZXggNDBjMTdhZGJmNDgzLi5j
ZTA3MDEwZTRkNDggMTAwNjQ0Cj4gLS0tIGEvdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL3By
b2dzL3hkcF9od19tZXRhZGF0YS5jCj4gKysrIGIvdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBm
L3Byb2dzL3hkcF9od19tZXRhZGF0YS5jCj4gQEAgLTc3LDEwICs3NywxMyBAQCBpbnQgcngoc3Ry
dWN0IHhkcF9tZCAqY3R4KQo+ICAgICAgICAgICAgICAgICBtZXRhLT5yeF90aW1lc3RhbXAgPSAw
OyAvKiBVc2VkIGJ5IEFGX1hEUCBhcyBub3QgYXZhaWwgc2lnbmFsICovCj4gICAgICAgICB9Cj4K
PiAtICAgICAgIGlmICghYnBmX3hkcF9tZXRhZGF0YV9yeF9oYXNoKGN0eCwgJm1ldGEtPnJ4X2hh
c2gpKQo+IC0gICAgICAgICAgICAgICBicGZfcHJpbnRrKCJwb3B1bGF0ZWQgcnhfaGFzaCB3aXRo
ICV1IiwgbWV0YS0+cnhfaGFzaCk7Cj4gLSAgICAgICBlbHNlCj4gKyAgICAgICByZXQgPSBicGZf
eGRwX21ldGFkYXRhX3J4X2hhc2goY3R4LCAmbWV0YS0+cnhfaGFzaCk7Cj4gKyAgICAgICBpZiAo
cmV0ID49IDApIHsKPiArICAgICAgICAgICAgICAgYnBmX3ByaW50aygicG9wdWxhdGVkIHJ4X2hh
c2ggd2l0aCAweCUwOFgiLCBtZXRhLT5yeF9oYXNoKTsKPiArICAgICAgIH0gZWxzZSB7Cj4gKyAg
ICAgICAgICAgICAgIGJwZl9wcmludGsoInJ4X2hhc2ggbm90LWF2YWlsIGVycm5vOiVkIiwgcmV0
KTsKPiAgICAgICAgICAgICAgICAgbWV0YS0+cnhfaGFzaCA9IDA7IC8qIFVzZWQgYnkgQUZfWERQ
IGFzIG5vdCBhdmFpbCBzaWduYWwgKi8KPiArICAgICAgIH0KCkp1c3Qgbm90aWNlZCB0aGlzIG1l
c3Mgb2YgcHJpbnRrcy4KUGxlYXNlIHJlbW92ZSB0aGVtIGFsbC4gc2VsZnRlc3RzIHNob3VsZCBu
b3QgaGF2ZSB0aGVtLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wu
b3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVk
LWxhbgo=
