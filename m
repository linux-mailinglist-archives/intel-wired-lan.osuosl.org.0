Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 37FFB7CCADE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Oct 2023 20:38:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DA25E41E7D;
	Tue, 17 Oct 2023 18:38:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DA25E41E7D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697567918;
	bh=bzewVfK2zqLT+PQI/Ol1Gea5pcbgzw5ZoGV35NLQ2IA=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wEVd29ogdcogVY/S36EWl1A6sNpSG2Xw4m1Glm05QgdblVVCZ8fhp8ZymgMisUjNm
	 /G2uCj7/xx9BHuZ7PWFdIrWtuz7DDxnAOQiRUpEF2kyBDOxcJHuYvyoVMSJQ0cX6o8
	 pLI4WOxFARmTBI+H6iVb61pDn0rldlttfnwaSTdcxJShlhQ+1h6mAyqBLd1aucEx17
	 qiGgfKQNTTCWlr5B9+hytjOOICy6enkd2tkudjuBGzPOS1ZycQS0rarbUYepw2uuWB
	 gGOxRW0T54b4cVd+24/2TM98yd2lYQqZbSa43br8ClvYQCTTdXkntc2xbQUOyetJ3n
	 huSjLUbSn72CA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7Yy5WPod2D9v; Tue, 17 Oct 2023 18:38:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AE55841E6B;
	Tue, 17 Oct 2023 18:38:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AE55841E6B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7CF741BF300
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 18:38:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5102B4025D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 18:38:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5102B4025D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KKxmbiJhEgp2 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Oct 2023 18:38:30 +0000 (UTC)
Received: from mail-oo1-xc33.google.com (mail-oo1-xc33.google.com
 [IPv6:2607:f8b0:4864:20::c33])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 107C8400F3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 18:38:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 107C8400F3
Received: by mail-oo1-xc33.google.com with SMTP id
 006d021491bc7-581de3e691dso458028eaf.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 11:38:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697567909; x=1698172709;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=wJtwSVEQlll1Ac78s7VWrKKMPrlMY5ewqkcx5HFvIho=;
 b=gl5IG+27zNVi+rovdtt3g3bjTOz0DdkLsv3GeMC2WW8RcqW4hq3MVeDtejsLS2+6MA
 WKUTUk3NVTvatL1ZFc42NeGYzIhIDG27AAXGbArXkSDS29PD5HMmmBW1vtCaC8/0Ledd
 qBFDxveWAOB6wgYmnfNebXLukkaWJycD08G3e2bkk+Ycs8CM6RkrWEpkIVn9u26KkgfT
 ItTr8twmM8R0bfQPD1E+gdLA16JhBjYK73lzfa292130fsftdDx3V65AslmOyJfy0xpw
 oLlWFD35FGqmg7NuftYQPNNJZJzrw/Vvcrz3UmZcfFIgvploPsDBhp1RbGcg7CSjO0T4
 z29g==
X-Gm-Message-State: AOJu0YxiGHkS11Eml8uxEbYR1KEgJEo9NXi9uS/fZBNYL3BT+yk2WdQd
 IiEWOAqunOiiz1Y+RTQ4gZxYGZJ3373rglRNdnE=
X-Google-Smtp-Source: AGHT+IGhB46ZnnksIceehl/eZ4OJS5WI52FwMdLrh/SbBZ5dRqQOLhaiq9/8nFZ5GRB/iNQdISWXdRc0mMZtgRSmlu8=
X-Received: by 2002:a05:6870:1708:b0:1e9:8ab9:11cd with SMTP id
 h8-20020a056870170800b001e98ab911cdmr3815915oae.45.1697567909015; Tue, 17 Oct
 2023 11:38:29 -0700 (PDT)
MIME-Version: 1.0
References: <20231016154937.41224-1-ahmed.zaki@intel.com>
 <20231016154937.41224-2-ahmed.zaki@intel.com>
 <8d1b1494cfd733530be887806385cde70e077ed1.camel@gmail.com>
 <26812a57-bdd8-4a39-8dd2-b0ebcfd1073e@intel.com>
 <CAKgT0Ud7JjUiE32jJbMbBGVexrndSCepG54PcGYWHJ+OC9pOtQ@mail.gmail.com>
 <14feb89d-7b4a-40c5-8983-5ef331953224@intel.com>
 <CAKgT0UfcT5cEDRBzCxU9UrQzbBEgFt89vJZjz8Tow=yAfEYERw@mail.gmail.com>
 <20231016163059.23799429@kernel.org>
In-Reply-To: <20231016163059.23799429@kernel.org>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Tue, 17 Oct 2023 11:37:52 -0700
Message-ID: <CAKgT0Udyvmxap_F+yFJZiY44sKi+_zOjUjbVYO=TqeW4p0hxrA@mail.gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1697567909; x=1698172709; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=wJtwSVEQlll1Ac78s7VWrKKMPrlMY5ewqkcx5HFvIho=;
 b=Qem/7rN7axwY0fuIZHJ6R1gSDj1KGwomiw+1t2yosnsNQgI7jd/ZirXzsahDMWBivP
 3xnhxmTg/5d05cP2ptqFmc/3g/Akc1dj5Zc15gtrl5NkpNEVbLZl3QeEk3A1PDTtDZoc
 RbQ1tDfI4VjG3Oib1Y4sh+gxku2UltKDw/QnJ/T9nuZL9JdOoyRB/JHFTiMyP62qaYmF
 q5d+5qPZn/+Vrntd+zarBFK2E/tNve+gvc2No/nEgpE/reDqT138OeYqR+m3/y8vNV+r
 xH/wJ+0PRYS1OORGYR7HLomckcqmCNGQwPX79Zj3qgWRQogH+tM4Z4v70xcIDTn+ohkB
 SYnA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=Qem/7rN7
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 1/6] net: ethtool: allow
 symmetric-xor RSS hash for any flow type
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
Cc: mkubecek@suse.cz, andrew@lunn.ch, willemdebruijn.kernel@gmail.com,
 Wojciech Drewek <wojciech.drewek@intel.com>, corbet@lwn.net,
 netdev@vger.kernel.org, linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 Ahmed Zaki <ahmed.zaki@intel.com>, edumazet@google.com,
 anthony.l.nguyen@intel.com, horms@kernel.org, vladimir.oltean@nxp.com,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gTW9uLCBPY3QgMTYsIDIwMjMgYXQgNDozMeKAr1BNIEpha3ViIEtpY2luc2tpIDxrdWJhQGtl
cm5lbC5vcmc+IHdyb3RlOgo+Cj4gT24gTW9uLCAxNiBPY3QgMjAyMyAxNTo1NToyMSAtMDcwMCBB
bGV4YW5kZXIgRHV5Y2sgd3JvdGU6Cj4gPiBJdCB3b3VsZCBtYWtlIG1vcmUgc2Vuc2UgdG8ganVz
dCBhZGQgaXQgYXMgYSB2YXJpYW50IGhhc2ggZnVuY3Rpb24gb2YKPiA+IHRvZXBsaXR6LiBJZiB5
b3UgZGlkIGl0IHJpZ2h0IHlvdSBjb3VsZCBwcm9iYWJseSBtYWtlIHRoZSBmb3JtYXR0aW5nCj4g
PiBwcmV0dHksIHNvbWV0aGluZyBsaWtlOgo+ID4gUlNTIGhhc2ggZnVuY3Rpb246Cj4gPiAgICAg
dG9lcGxpdHo6IG9uCj4gPiAgICAgICAgIHN5bW1ldHJpYyB4b3I6IG9uCj4gPiAgICAgeG9yOiBv
ZmYKPiA+ICAgICBjcmMzMjogb2ZmCj4gPgo+ID4gSXQgZG9lc24ndCBtYWtlIHNlbnNlIHRvIHBs
YWNlIGl0IGluIHRoZSBpbnB1dCBmbGFncyBhbmQgd2lsbCBqdXN0Cj4gPiBjYXVzZSBxdWljayBj
b25nZXN0aW9uIGFzIHRoaW5ncyBnZXQgYWRkZWQgdGhlcmUuIFRoaXMgaXMgYW4gYWxnb3JpdGht
Cj4gPiBjaGFuZ2Ugc28gaXQgbWFrZXMgbW9yZSBzZW5zZSB0byBwbGFjZSBpdCB0aGVyZS4KPgo+
IEFsZ28gaXMgYWxzbyBhIGJpdCBjb25mdXNpbmcsIGl0J3MgbW9yZSBsaWtlIGtleSBwcmUtcHJv
Y2Vzc2luZz8KPiBUaGVyZSdzIG5vdGhpbmcgdG9lcGxpdHogYWJvdXQgeG9yaW5nIGlucHV0IGZp
ZWxkcy4gV29ya3MgYXMgd2VsbAo+IGZvciBDUkMzMi4uIG9yIFhPUi4KCkkgYWdyZWUgdGhhdCB0
aGUgY2hhbmdlIHRvIHRoZSBhbGdvcml0aG0gZG9lc24ndCBuZWNlc3NhcmlseSBoYXZlCmFueXRo
aW5nIHRvIGRvIHdpdGggdG9lcGxpdHosIGhvd2V2ZXIgaXQgaXMgc3RpbGwgYSBjaGFuZ2UgdG8g
dGhlCmFsZ29yaXRobSBieSBwZXJmb3JtaW5nIHRoZSBleHRyYSBYT1Igb24gdGhlIGlucHV0cyBw
cmlvciB0bwpwcm9jZXNzaW5nLiBUaGF0IGlzIHdoeSBJIGZpZ3VyZWQgaXQgbWlnaHQgbWFrZSBz
ZW5zZSB0byBqdXN0IGFkZCBhCm5ldyBoZnVuYyB2YWx1ZSB0aGF0IHdvdWxkIG1lYW4gdG9lcGxp
dHogdy8gc3ltbWV0cmljIFhPUi4KCj4gV2UgY2FuIHVzZSBvbmUgb2YgdGhlIHJlc2VydmVkIGZp
ZWxkcyBvZiBzdHJ1Y3QgZXRodG9vbF9yeGZoIHRvIGNhcnJ5Cj4gdGhpcyBleHRlbnNpb24uIEkg
dGhpbmsgSSBhc2tlZCBmb3IgdGhpcyBhdCBzb21lIHBvaW50LCBidXQgdGhlcmUncwo+IG9ubHkg
c28gbXVjaCByZXBlYXRlZCBmZWVkYmFjayBvbmUgY2FuIHNlbmQgaW4gYSBkYXkgOigKCldoeSBh
ZGQgYW4gZXh0cmEgcmVzZXJ2ZWQgZmllbGQgd2hlbiB0aGlzIGlzIGp1c3QgYSB2YXJpYW50IG9u
IGEgaGFzaApmdW5jdGlvbj8gSSB2aWV3IGl0IGFzIG5vdCBiZWluZyBkaXNzaW1pbGFyIHRvIGhv
dyB3ZSBoYW5kbGUgVFNPIG9yCnR4LWNoZWNrc3VtbWluZy4gSXQgd291bGQgbWFrZSBzZW5zZSB0
byBtZSB0byBqdXN0IHNldCBzb21ldGhpbmcgbGlrZQp0b2VwbGl0ei1zeW1tZXRyaWMteG9yIHRv
IG9uIGluIG9yZGVyIHRvIHR1cm4gdGhpcyBvbi4KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13
aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC13aXJlZC1sYW4K
