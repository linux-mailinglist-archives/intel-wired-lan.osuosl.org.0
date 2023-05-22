Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 684E970BC0A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 May 2023 13:41:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F0E62417D0;
	Mon, 22 May 2023 11:41:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F0E62417D0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684755718;
	bh=co1h0iRxYsExIWfKUFf1mXDI30RhsmvSTGHhnjVfYVs=;
	h=From:Date:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XcDHISh7WjVcSuW9GySV3j1HLYx71GRw7LoBALBbemreUKvdGAL0r+IUn0rOOeDMd
	 NfoIob77zQ0EqnjI+8scMBesswbafcEQgjJ9NVVG9zwM/GfgzEI1sa01qt4Sj0xi71
	 Wg3u0uD2lXXjrOerKENQAeHmRMHcSGNCNI6lYlaTaIhksQacu2swX3kVqBh4aawARL
	 YvUIe5GxOTbUMoL0sD0ZnGsYClaDGg6E8gMViJ6Irf9QfbRV5oO4B+66J4DEZ2EqE0
	 aqJsRoiZZGbYPi871dPJl15c9wKUzjQhGXRwLmihCOlF7QXMqFJbLbyY7ZqsARbzfo
	 +VLrBzHxbYwHQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SXu1Wa-HhRko; Mon, 22 May 2023 11:41:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 596A4417B5;
	Mon, 22 May 2023 11:41:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 596A4417B5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6AC8C1BF39C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 11:41:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 349DA417CB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 11:41:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 349DA417CB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wlOGeWAkQC0D for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 May 2023 11:41:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 395124185A
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 395124185A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 11:41:49 +0000 (UTC)
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-414-bZdFzcTvPsWexSfsM3btUA-1; Mon, 22 May 2023 07:41:47 -0400
X-MC-Unique: bZdFzcTvPsWexSfsM3btUA-1
Received: by mail-ej1-f69.google.com with SMTP id
 a640c23a62f3a-96fe603151eso101888266b.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 04:41:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684755706; x=1687347706;
 h=content-transfer-encoding:in-reply-to:references:to
 :content-language:subject:cc:user-agent:mime-version:date:message-id
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=XCoVn7ppCsfW0w+/vJ+0bLvd9vkfTR1n6Nckl2ntEFY=;
 b=kTfA4BIGxBd3ffzxTuOy46S03jKZxJBpw6AQ5xIgY1uPeKgnUHLVosHS/P9FsZGEW8
 5ZZBaqU4+MgXYa36ZUUuYncPxtLWr6sRq7+8UEAFBtD3MqBYUXwa8/GeAsOSoubfyoQT
 TA6HpADjlHVmd5LFa+u9AhiFVVbMoJHtX/JJAnEIEzTa+OZYRUwu8mvCSL7vkMoCmo6c
 krD6KKfc81e05lWJRKjmR3or0UVQdzHnCLhMct8Rjpm8XKPIjlQAnmCvkIczKEK4b7kW
 kkGeLWR63h7z5flFHUt5+UYgkXy9NutV3zH/C8iMZ3d9IyR6gfIc1+gGy0WBYaMnLRTd
 34NA==
X-Gm-Message-State: AC+VfDztbHv5vA7CJhSeXi5GGfkZ65umXBz+7Aq+15i0ooOuH1V4Mx3Q
 HvuZc18Rffyu05JHoKT3gz8pHThWB6JITAIv+pHJVBSJHQz3EpyTZVQfe3jf0XIE6ezn8G/V76L
 hIvxFdPEB3/rPcKUs7n8hL4dIXfD31g==
X-Received: by 2002:a17:906:db0d:b0:94f:1a23:2f1b with SMTP id
 xj13-20020a170906db0d00b0094f1a232f1bmr8806485ejb.24.1684755706365; 
 Mon, 22 May 2023 04:41:46 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ7kEr9SuDqWiEbnZsnBzZAAHBZaLG94azZPqviwtKlo0EM0qZLnGpvhLrmWW6uacj8eI75lGg==
X-Received: by 2002:a17:906:db0d:b0:94f:1a23:2f1b with SMTP id
 xj13-20020a170906db0d00b0094f1a232f1bmr8806456ejb.24.1684755706071; 
 Mon, 22 May 2023 04:41:46 -0700 (PDT)
Received: from [192.168.42.222] (194-45-78-10.static.kviknet.net.
 [194.45.78.10]) by smtp.gmail.com with ESMTPSA id
 lx19-20020a170906af1300b0094f07545d40sm2980019ejb.220.2023.05.22.04.41.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 22 May 2023 04:41:45 -0700 (PDT)
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Google-Original-From: Jesper Dangaard Brouer <brouer@redhat.com>
Message-ID: <fed6ef09-0f5b-8c3d-0484-bb0995d09282@redhat.com>
Date: Mon, 22 May 2023 13:41:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
To: Alexander Lobakin <aleksander.lobakin@intel.com>,
 Jesper Dangaard Brouer <jbrouer@redhat.com>,
 Daniel Borkmann <daniel@iogearbox.net>
References: <20230512152607.992209-1-larysa.zaremba@intel.com>
 <20230512152607.992209-15-larysa.zaremba@intel.com>
 <ee1ad4f2-34ab-4377-14d5-532cb0687180@redhat.com> <ZGJnFxzDTV2qE4zZ@lincoln>
 <b9a879b2-bb62-ba18-0bdd-5c126a1086a9@intel.com>
 <a37db72f-2e83-c838-7c81-8f01a5a0df32@redhat.com>
 <5b817d49-eefa-51c9-3b51-01f1dba17d42@intel.com>
In-Reply-To: <5b817d49-eefa-51c9-3b51-01f1dba17d42@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1684755708;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=XCoVn7ppCsfW0w+/vJ+0bLvd9vkfTR1n6Nckl2ntEFY=;
 b=SbWRYfGiYC9J5SfGc9zj54tIiE17JCzi2cAcdDQ59iAxu6JN1yLlWNG0SncU0yInX111Nk
 R4bViAmHbq+MB7pt3K9ryuZGWmfqUIKwK85+VmFv7s7zlyWgckgQJIxfNYvSXNwJfM8dhb
 Yr/VrvomBmeWG/O6ob+EvZ2MKYRXqYo=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=SbWRYfGi
Subject: Re: [Intel-wired-lan] [PATCH RESEND bpf-next 14/15] net,
 xdp: allow metadata > 32
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
Cc: Anatoly Burakov <anatoly.burakov@intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Andrii Nakryiko <andrii@kernel.org>,
 Song Liu <song@kernel.org>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Stanislav Fomichev <sdf@google.com>, Maryam Tahhan <mtahhan@redhat.com>,
 xdp-hints@xdp-project.net, John Fastabend <john.fastabend@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 intel-wired-lan@lists.osuosl.org, brouer@redhat.com,
 Yonghong Song <yhs@fb.com>, Larysa Zaremba <larysa.zaremba@intel.com>,
 KP Singh <kpsingh@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jiri Olsa <jolsa@kernel.org>, bpf@vger.kernel.org,
 Martin KaFai Lau <martin.lau@linux.dev>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiAxOS8wNS8yMDIzIDE4LjM1LCBBbGV4YW5kZXIgTG9iYWtpbiB3cm90ZToKPiBGcm9tOiBK
ZXNwZXIgRGFuZ2FhcmQgQnJvdWVyIDxqYnJvdWVyQHJlZGhhdC5jb20+Cj4gRGF0ZTogVHVlLCAx
NiBNYXkgMjAyMyAxNzozNToyNyArMDIwMAo+IAo+Pgo+PiBPbiAxNi8wNS8yMDIzIDE0LjM3LCBB
bGV4YW5kZXIgTG9iYWtpbiB3cm90ZToKPj4+IEZyb206IExhcnlzYSBaYXJlbWJhPGxhcnlzYS56
YXJlbWJhQGludGVsLmNvbT4KPj4+IERhdGU6IE1vbiwgMTUgTWF5IDIwMjMgMTk6MDg6MzkgKzAy
MDAKPj4+Cj4+Pj4gT24gTW9uLCBNYXkgMTUsIDIwMjMgYXQgMDY6MTc6MDJQTSArMDIwMCwgSmVz
cGVyIERhbmdhYXJkIEJyb3VlciB3cm90ZToKPj4+Pj4KPj4+Pj4gT24gMTIvMDUvMjAyMyAxNy4y
NiwgTGFyeXNhIFphcmVtYmEgd3JvdGU6Cj4+Pj4+PiBGcm9tOiBBbGVrc2FuZGVyIExvYmFraW48
YWxla3NhbmRlci5sb2Jha2luQGludGVsLmNvbT4KPj4+Pj4+Cj4+Pj4+PiBXaGVuIHVzaW5nIFhE
UCBoaW50cywgbWV0YWRhdGEgc29tZXRpbWVzIGhhcyB0byBiZSBtdWNoIGJpZ2dlcgo+Pj4+Pj4g
dGhhbiAzMiBieXRlcy4gUmVsYXggdGhlIHJlc3RyaWN0aW9uLCBhbGxvdyBtZXRhZGF0YSBsYXJn
ZXIgdGhhbiAzMgo+Pj4+Pj4gYnl0ZXMKPj4+Pj4+IGFuZCBtYWtlIF9fc2tiX21ldGFkYXRhX2Rp
ZmZlcnMoKSB3b3JrIHdpdGggYmlnZ2VyIGxlbmd0aHMuCj4+Pj4+Pgo+Pj4+Pj4gTm93IHNpemUg
b2YgbWV0YWRhdGEgaXMgb25seSBsaW1pdGVkIGJ5IHRoZSBmYWN0IGl0IGlzIHN0b3JlZCBhcyB1
OAo+Pj4+Pj4gaW4gc2tiX3NoYXJlZF9pbmZvLCBzbyBtYXhpbXVtIHBvc3NpYmxlIHZhbHVlIGlz
IDI1NS4KPj4+Pj4KPj4+Pj4gSSdtIGNvbmZ1c2VkLCBJSVJDIHRoZSBtZXRhZGF0YSBhcmVhIGlz
bid0IHN0b3JlZCAiaW4gc2tiX3NoYXJlZF9pbmZvIi4KPj4+Pj4gVGhlIG1heGltdW0gcG9zc2li
bGUgc2l6ZSBpcyBsaW1pdGVkIGJ5IHRoZSBYRFAgaGVhZHJvb20sIHdoaWNoIGlzIGFsc28KPj4+
Pj4gc2hhcmVkL2xpbWl0ZWQgd2l0aC9ieSB4ZHBfZnJhbWUuwqAgSSBtdXN0IGJlIHJlYWRpbmcg
dGhlIHNlbnRlbmNlCj4+Pj4+IHdyb25nLAo+Pj4+PiBzb21laG93Lgo+Pj4KPj4+IHNrYl9zaGFy
ZWRfaW5mbzo6bWV0YV9zaXplwqAgaXMgdTguIFNpbmNlIG1ldGFkYXRhIGdldHMgY2FycmllZCBm
cm9tCj4+PiB4ZHBfYnVmZiB0byBza2IsIHRoaXMgY2hlY2sgaXMgbmVlZGVkIChpdCdzIGNvbXBp
bGUtdGltZSBjb25zdGFudAo+Pj4gYW55d2F5KS4KPj4+IENoZWNrIGZvciBoZWFkcm9vbSBpcyBk
b25lIHNlcGFyYXRlbHkgYWxyZWFkeSAodHdvIHNlbnRlbmNlcyBiZWxvdykuCj4+Pgo+Pgo+PiBE
YW1uLCBhcmdoLCBmb3IgU0tCcyB0aGUgIm1ldGFfbGVuIiBpcyBzdG9yZWQgaW4gc2tiX3NoYXJl
ZF9pbmZvLCB3aGljaAo+PiBpcyBsb2NhdGVkIG9uIGFub3RoZXIgY2FjaGVsaW5lLgo+PiBUaGF0
IGlzIGEgc3VyZSB3YXkgdG8gS0lMTCBwZXJmb3JtYW5jZSEgOi0oCj4gCj4gSGF2ZSB5b3UgcmVh
ZCB0aGUgY29kZT8gSSB1c2UgdHlwZV9tYXgodHlwZW9mX21lbWJlcihzaGluZm8sIG1ldGFfbGVu
KSksCj4gd2hhdCBwZXJmb3JtYW5jZSBhcmUgeW91IHRhbGtpbmcgYWJvdXQ/Cj4gCgpOb3QgdGFs
a2luZyBhYm91dCB5b3VyIGNoYW5nZXMgKGluIHRoaXMgcGF0Y2gpLgoKSSdtIHJlYWxpemluZyB0
aGF0IFNLQnMgdXNpbmcgbWV0YWRhdGEgYXJlYSB3aWxsIGhhdmUgYSBwZXJmb3JtYW5jZSBoaXQK
ZHVlIHRvIGFjY2Vzc2luZyBhbm90aGVyIGNhY2hlbGluZSAodGhlIG1ldGFfbGVuIGluIHNrYl9z
aGFyZWRfaW5mbykuCgpJSVJDIERhbmllbCBjb21wbGFpbmVkIGFib3V0IHRoaXMgcGVyZm9ybWFu
Y2UgaGl0IChpbiB0aGUgcGFzdCksIEkgZ3Vlc3MKdGhpcyBleHBsYWlucyBpdC4gIElJUkMgQ2ls
aXVtIGNoYW5nZWQgdG8gdXNlIHBlcmNwdSB2YXJpYWJsZXMvZGF0YXN0b3JlCnRvIHdvcmthcm91
bmQgdGhpcy4KCgo+IFRoZSB3aG9sZSB4ZHBfbWV0YWxlbl9pbnZhbGlkKCkgZ2V0cyBleHBhbmRl
ZCBpbnRvOgo+IAo+IAlyZXR1cm4gKG1ldGFsZW4gJSA0KSB8fCBtZXRhbGVuID4gMjU1Owo+IAo+
IGF0IGNvbXBpbGUtdGltZS4gQWxsIHRob3NlIHR5cGVvZiBzaGVuYW5pZ2FucyBhcmUgb25seSB0
byBub3Qgb3Blbi1jb2RlCj4gbWV0YV9sZW4ncyB0eXBlL3NpemUvbWF4Lgo+IAo+Pgo+PiBCdXQg
b25seSB1c2UgZm9yIFNLQnMgdGhhdCBnZXRzIGNyZWF0ZWQgZnJvbSB4ZHAgd2l0aCBtZXRhZGF0
YSwgcmlnaHQ/Cj4+CgpOb3JtYWwgbmV0c3RhY2sgcHJvY2Vzc2luZyBhY3R1YWxseSBhY2Nlc3Mg
dGhpcyBza2Jfc2hpbmZvLT5tZXRhX2xlbiBpbgpncm9fbGlzdF9wcmVwYXJlKCkuICBBcyB0aGUg
Y2FsbGVyIGRldl9ncm9fcmVjZWl2ZSgpIGxhdGVyIGFjY2VzcyBvdGhlcgptZW1vcnkgaW4gc2ti
X3NoYXJlZF9pbmZvLCB0aGVuIHRoZSBHUk8gY29kZSBwYXRoIGFscmVhZHkgdGFrZXMgdGhpcyBo
aXQKdG8gYmVnaW4gd2l0aC4KCi0tSmVzcGVyCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdp
cmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLXdpcmVkLWxhbgo=
