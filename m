Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99D027CB47E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Oct 2023 22:18:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B0F874031E;
	Mon, 16 Oct 2023 20:18:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B0F874031E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697487481;
	bh=0dyLYniaSTkeEcy2cvsY9nfFFedkJ/RlDPY4LEnF6SQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GZv56IgzVeYq3CgtAzAUpC4gjliATpoyaqHYFtlFGtrPmwduZ+WzOUaHSqAkWsnZT
	 RW1X6juRs6Njo+2aG5+xnZRgoHaooDHnw5ZLF/aGRfY5fD96FRdcxJyZ/fRa9/quqV
	 v2PAUydm7VQSeaA2TvPoNt9wZHTRQo5XtZzMu41DSu1KNYdh2vtYauMGlD63825rUb
	 lOTHmScb2KdB8MYtuf3CyjWdkcBZCQclNIXki2XiUNPDEsgjTQA3s9j+BAg7AHh8rW
	 snKVTMUXcLSdD8mRUEKi63JIeby2grkhVI6O+Vjjs7B1oYXoSp5xKtq/7CH5VOIVsU
	 EJtAwdEl2tBCw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RACfdY5i1p4J; Mon, 16 Oct 2023 20:18:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 19DF3400F9;
	Mon, 16 Oct 2023 20:18:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 19DF3400F9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7274D1BF34A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 20:17:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 499C060586
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 20:17:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 499C060586
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5-Avbf1rHSAR for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Oct 2023 20:17:53 +0000 (UTC)
Received: from mail-oo1-xc2d.google.com (mail-oo1-xc2d.google.com
 [IPv6:2607:f8b0:4864:20::c2d])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E1CE26009C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 20:17:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E1CE26009C
Received: by mail-oo1-xc2d.google.com with SMTP id
 006d021491bc7-57ba5f05395so3038117eaf.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 13:17:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697487472; x=1698092272;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=wFKSeSUN3bGShyHUQ53uFiMZLTFl+8zWBRg9JWuw83k=;
 b=VUYMco2yUaSSBggcZjGa6x/bWYgcEzGfuvTSwBEfZtnvBbAulTrho+Obf/jCFuNOUa
 fYOBe/HfzYG3vlyokIsFpPM5ewvpC/pBjlBpBROhvHEILyoFiSqYQcICPIXZ+6XwjESM
 y4yCXBj9YSCZAKbUn3S0zTCay8wS13m6dAHduEEro7aFBDZlSZeSUOUtHoL7mdN+/bxp
 b/ro1gghFcoFFXYdzu9TyzxKWYhTpR6envY2GfZ1OWId73f8SocSkTJAF9+h07Cxw7fk
 2x4O/uad+WFzd/fClFu30wJ8CnBLHmxNtixgdb1cZ4+Kps3MAfM5iPXb71HGcQaCJTMA
 Aelw==
X-Gm-Message-State: AOJu0YxyavwEMV+C7Y6O11y83qXnSSD0r0FB2gKsO1VGEJiKXy/So8AU
 LQEIFZT/IYOdktrW2T1r9Tk=
X-Google-Smtp-Source: AGHT+IFkKMXvu2nOHGXJjqSGSbnEu4MlQ5Dy/g3yHy0zu1+2lVWxvsrjtB4EiH8q5NNOacZHa5gPug==
X-Received: by 2002:a05:6358:7056:b0:13a:a85b:ce00 with SMTP id
 22-20020a056358705600b0013aa85bce00mr431629rwp.31.1697487471789; 
 Mon, 16 Oct 2023 13:17:51 -0700 (PDT)
Received: from ?IPv6:2605:59c8:448:b800:82ee:73ff:fe41:9a02?
 ([2605:59c8:448:b800:82ee:73ff:fe41:9a02])
 by smtp.googlemail.com with ESMTPSA id
 w1-20020a626201000000b006be2f94e92asm328907pfb.84.2023.10.16.13.17.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Oct 2023 13:17:51 -0700 (PDT)
Message-ID: <8d1b1494cfd733530be887806385cde70e077ed1.camel@gmail.com>
From: Alexander H Duyck <alexander.duyck@gmail.com>
To: Ahmed Zaki <ahmed.zaki@intel.com>, netdev@vger.kernel.org
Date: Mon, 16 Oct 2023 13:17:49 -0700
In-Reply-To: <20231016154937.41224-2-ahmed.zaki@intel.com>
References: <20231016154937.41224-1-ahmed.zaki@intel.com>
 <20231016154937.41224-2-ahmed.zaki@intel.com>
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38) 
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1697487472; x=1698092272; darn=lists.osuosl.org;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
 :date:message-id:reply-to;
 bh=wFKSeSUN3bGShyHUQ53uFiMZLTFl+8zWBRg9JWuw83k=;
 b=SudJWhZ71ml3QJ7sIgBw4B3yWEtgFoX/HqI/7kXmo/7OJ69srXbFXaAcse9LQXH5dx
 L4Ff+1+QK1tFhO6IgNYrvaWB9P5MysvSSpeWr/LL/FSF5W8+dFnlb4YouYZSctb5US/Y
 /oLvB6aNqCHwC3PE5HX/l3elQGQxgfvoHODlQTe58nJ1pnKX2ppXPQQ6TWlkm99PQuKw
 zyX+Vr6hZIS4a1XgSdLwsl39k9SXvvmL9Uo4iVfyGU5rc0wMJUxnzEaXtQVJg40bV6nP
 GR3CCVq7BqWdMFH5zybMqIUDgox+BlhhKz36GicXTuUNaWqy5IcBpfdFh7dn7C3Reoky
 f7wA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=SudJWhZ7
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
 vladimir.oltean@nxp.com, linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 edumazet@google.com, anthony.l.nguyen@intel.com, horms@kernel.org,
 kuba@kernel.org, intel-wired-lan@lists.osuosl.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gTW9uLCAyMDIzLTEwLTE2IGF0IDA5OjQ5IC0wNjAwLCBBaG1lZCBaYWtpIHdyb3RlOgo+IFN5
bW1ldHJpYyBSU1MgaGFzaCBmdW5jdGlvbnMgYXJlIGJlbmVmaWNpYWwgaW4gYXBwbGljYXRpb25z
IHRoYXQgbW9uaXRvcgo+IGJvdGggVHggYW5kIFJ4IHBhY2tldHMgb2YgdGhlIHNhbWUgZmxvdyAo
SURTLCBzb2Z0d2FyZSBmaXJld2FsbHMsIC4uZXRjKS4KPiBHZXR0aW5nIGFsbCB0cmFmZmljIG9m
IHRoZSBzYW1lIGZsb3cgb24gdGhlIHNhbWUgUlggcXVldWUgcmVzdWx0cyBpbgo+IGhpZ2hlciBD
UFUgY2FjaGUgZWZmaWNpZW5jeS4KPiAKPiBBIE5JQyB0aGF0IHN1cHBvcnRzICJzeW1tZXRyaWMt
eG9yIiBjYW4gYWNoaWV2ZSB0aGlzIFJTUyBoYXNoIHN5bW1ldHJ5Cj4gYnkgWE9SaW5nIHRoZSBz
b3VyY2UgYW5kIGRlc3RpbmF0aW9uIGZpZWxkcyBhbmQgcGFzcyB0aGUgdmFsdWVzIHRvIHRoZQo+
IFJTUyBoYXNoIGFsZ29yaXRobS4KPiAKPiBPbmx5IGZpZWxkcyB0aGF0IGhhcyBjb3VudGVycGFy
dHMgaW4gdGhlIG90aGVyIGRpcmVjdGlvbiBjYW4gYmUKPiBhY2NlcHRlZDsgSVAgc3JjL2RzdCBh
bmQgTDQgc3JjL2RzdCBwb3J0cy4KPiAKPiBUaGUgdXNlciBtYXkgcmVxdWVzdCBSU1MgaGFzaCBz
eW1tZXRyeSBmb3IgYSBzcGVjaWZpYyBmbG93IHR5cGUsIHZpYToKPiAKPiAgICAgIyBldGh0b29s
IC1OfC1VIGV0aDAgcngtZmxvdy1oYXNoIDxmbG93X3R5cGU+IHN8ZHxmfG4gc3ltbWV0cmljLXhv
cgo+IAo+IG9yIHR1cm4gc3ltbWV0cnkgb2ZmIChhc3ltbWV0cmljKSBieToKPiAKPiAgICAgIyBl
dGh0b29sIC1OfC1VIGV0aDAgcngtZmxvdy1oYXNoIDxmbG93X3R5cGU+IHN8ZHxmfG4KPiAKPiBS
ZXZpZXdlZC1ieTogV29qY2llY2ggRHJld2VrIDx3b2pjaWVjaC5kcmV3ZWtAaW50ZWwuY29tPgo+
IFNpZ25lZC1vZmYtYnk6IEFobWVkIFpha2kgPGFobWVkLnpha2lAaW50ZWwuY29tPgo+IC0tLQo+
ICBEb2N1bWVudGF0aW9uL25ldHdvcmtpbmcvc2NhbGluZy5yc3QgfCAgNiArKysrKysKPiAgaW5j
bHVkZS91YXBpL2xpbnV4L2V0aHRvb2wuaCAgICAgICAgIHwgMjEgKysrKysrKysrKysrKy0tLS0t
LS0tCj4gIG5ldC9ldGh0b29sL2lvY3RsLmMgICAgICAgICAgICAgICAgICB8IDExICsrKysrKysr
KysrCj4gIDMgZmlsZXMgY2hhbmdlZCwgMzAgaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkK
PiAKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9uZXR3b3JraW5nL3NjYWxpbmcucnN0IGIv
RG9jdW1lbnRhdGlvbi9uZXR3b3JraW5nL3NjYWxpbmcucnN0Cj4gaW5kZXggOTJjOWZiNDZkNmEy
Li42NGYzZDc1NjY0MDcgMTAwNjQ0Cj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9uZXR3b3JraW5nL3Nj
YWxpbmcucnN0Cj4gKysrIGIvRG9jdW1lbnRhdGlvbi9uZXR3b3JraW5nL3NjYWxpbmcucnN0Cj4g
QEAgLTQ0LDYgKzQ0LDEyIEBAIGJ5IG1hc2tpbmcgb3V0IHRoZSBsb3cgb3JkZXIgc2V2ZW4gYml0
cyBvZiB0aGUgY29tcHV0ZWQgaGFzaCBmb3IgdGhlCj4gIHBhY2tldCAodXN1YWxseSBhIFRvZXBs
aXR6IGhhc2gpLCB0YWtpbmcgdGhpcyBudW1iZXIgYXMgYSBrZXkgaW50byB0aGUKPiAgaW5kaXJl
Y3Rpb24gdGFibGUgYW5kIHJlYWRpbmcgdGhlIGNvcnJlc3BvbmRpbmcgdmFsdWUuCj4gIAo+ICtT
b21lIE5JQ3Mgc3VwcG9ydCBzeW1tZXRyaWMgUlNTIGhhc2hpbmcgd2hlcmUsIGlmIHRoZSBJUCAo
c291cmNlIGFkZHJlc3MsCj4gK2Rlc3RpbmF0aW9uIGFkZHJlc3MpIGFuZCBUQ1AvVURQIChzb3Vy
Y2UgcG9ydCwgZGVzdGluYXRpb24gcG9ydCkgdHVwbGVzCj4gK2FyZSBzd2FwcGVkLCB0aGUgY29t
cHV0ZWQgaGFzaCBpcyB0aGUgc2FtZS4gVGhpcyBpcyBiZW5lZmljaWFsIGluIHNvbWUKPiArYXBw
bGljYXRpb25zIHRoYXQgbW9uaXRvciBUQ1AvSVAgZmxvd3MgKElEUywgZmlyZXdhbGxzLCAuLi5l
dGMpIGFuZCBuZWVkCj4gK2JvdGggZGlyZWN0aW9ucyBvZiB0aGUgZmxvdyB0byBsYW5kIG9uIHRo
ZSBzYW1lIFJ4IHF1ZXVlIChhbmQgQ1BVKS4KPiArCj4gIFNvbWUgYWR2YW5jZWQgTklDcyBhbGxv
dyBzdGVlcmluZyBwYWNrZXRzIHRvIHF1ZXVlcyBiYXNlZCBvbgo+ICBwcm9ncmFtbWFibGUgZmls
dGVycy4gRm9yIGV4YW1wbGUsIHdlYnNlcnZlciBib3VuZCBUQ1AgcG9ydCA4MCBwYWNrZXRzCj4g
IGNhbiBiZSBkaXJlY3RlZCB0byB0aGVpciBvd24gcmVjZWl2ZSBxdWV1ZS4gU3VjaCDigJxuLXR1
cGxl4oCdIGZpbHRlcnMgY2FuCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvdWFwaS9saW51eC9ldGh0
b29sLmggYi9pbmNsdWRlL3VhcGkvbGludXgvZXRodG9vbC5oCj4gaW5kZXggZjdmYmEwZGM4N2U1
Li40ZThkMzhmYjU1Y2UgMTAwNjQ0Cj4gLS0tIGEvaW5jbHVkZS91YXBpL2xpbnV4L2V0aHRvb2wu
aAo+ICsrKyBiL2luY2x1ZGUvdWFwaS9saW51eC9ldGh0b29sLmgKPiBAQCAtMjAxOCwxNCArMjAx
OCwxOSBAQCBzdGF0aWMgaW5saW5lIGludCBldGh0b29sX3ZhbGlkYXRlX2R1cGxleChfX3U4IGR1
cGxleCkKPiAgI2RlZmluZQlGTE9XX1JTUwkweDIwMDAwMDAwCj4gIAo+ICAvKiBMMy1MNCBuZXR3
b3JrIHRyYWZmaWMgZmxvdyBoYXNoIG9wdGlvbnMgKi8KPiAtI2RlZmluZQlSWEhfTDJEQQkoMSA8
PCAxKQo+IC0jZGVmaW5lCVJYSF9WTEFOCSgxIDw8IDIpCj4gLSNkZWZpbmUJUlhIX0wzX1BST1RP
CSgxIDw8IDMpCj4gLSNkZWZpbmUJUlhIX0lQX1NSQwkoMSA8PCA0KQo+IC0jZGVmaW5lCVJYSF9J
UF9EU1QJKDEgPDwgNSkKPiAtI2RlZmluZQlSWEhfTDRfQl8wXzEJKDEgPDwgNikgLyogc3JjIHBv
cnQgaW4gY2FzZSBvZiBUQ1AvVURQL1NDVFAgKi8KPiAtI2RlZmluZQlSWEhfTDRfQl8yXzMJKDEg
PDwgNykgLyogZHN0IHBvcnQgaW4gY2FzZSBvZiBUQ1AvVURQL1NDVFAgKi8KPiAtI2RlZmluZQlS
WEhfRElTQ0FSRAkoMSA8PCAzMSkKPiArI2RlZmluZQlSWEhfTDJEQQkJKDEgPDwgMSkKPiArI2Rl
ZmluZQlSWEhfVkxBTgkJKDEgPDwgMikKPiArI2RlZmluZQlSWEhfTDNfUFJPVE8JCSgxIDw8IDMp
Cj4gKyNkZWZpbmUJUlhIX0lQX1NSQwkJKDEgPDwgNCkKPiArI2RlZmluZQlSWEhfSVBfRFNUCQko
MSA8PCA1KQo+ICsjZGVmaW5lCVJYSF9MNF9CXzBfMQkJKDEgPDwgNikgLyogc3JjIHBvcnQgaW4g
Y2FzZSBvZiBUQ1AvVURQL1NDVFAgKi8KPiArI2RlZmluZQlSWEhfTDRfQl8yXzMJCSgxIDw8IDcp
IC8qIGRzdCBwb3J0IGluIGNhc2Ugb2YgVENQL1VEUC9TQ1RQICovCj4gKy8qIFhPUiB0aGUgY29y
cmVzcG9uZGluZyBzb3VyY2UgYW5kIGRlc3RpbmF0aW9uIGZpZWxkcyBvZiBlYWNoIHNwZWNpZmll
ZAo+ICsgKiBwcm90b2NvbC4gQm90aCBjb3BpZXMgb2YgdGhlIFhPUidlZCBmaWVsZHMgYXJlIGZl
ZCBpbnRvIHRoZSBSU1MgYW5kIFJYSEFTSAo+ICsgKiBjYWxjdWxhdGlvbi4KPiArICovCj4gKyNk
ZWZpbmUJUlhIX1NZTU1FVFJJQ19YT1IJKDEgPDwgMzApCj4gKyNkZWZpbmUJUlhIX0RJU0NBUkQJ
CSgxIDw8IDMxKQoKSSBndWVzcyB0aGlzIGhhcyBhbHJlYWR5IGJlZW4gZGlzY3Vzc2VkIGJ1dCBJ
IGFtIG5vdCBhIGZhbiBvZiBsb25nCm5hbWVzIGZvciBkZWZpbmVzLiBJIHdvdWxkIHByZWZlciB0
byBzZWUgdGhpcyBqdXN0IGJlIHNvbWV0aGluZyBsaWtlClJYSF9TWU1NRVRSSUMgb3Igc29tZXRo
aW5nIGxpa2UgdGhhdC4gVGhlIFhPUiBpcyBqdXN0IGFuIGltcGxlbWVudGF0aW9uCmRldGFpbC4g
SSBoYXZlIHNlZW4gdGhlIHNhbWUgdGhpbmcgYWNjb21wbGlzaGVkIGJ5IGp1c3QgcmVvcmRlcmlu
ZyB0aGUKZmllbGRzIGJ5IG1pbi9tYXggYXBwcm9hY2hlcy4KCj4gIAo+ICAjZGVmaW5lCVJYX0NM
U19GTE9XX0RJU0MJMHhmZmZmZmZmZmZmZmZmZmZmVUxMCj4gICNkZWZpbmUgUlhfQ0xTX0ZMT1df
V0FLRQkweGZmZmZmZmZmZmZmZmZmZmVVTEwKPiBkaWZmIC0tZ2l0IGEvbmV0L2V0aHRvb2wvaW9j
dGwuYyBiL25ldC9ldGh0b29sL2lvY3RsLmMKPiBpbmRleCAwYjBjZTRmODFjMDEuLmIxYmQwZDRi
NDhlOCAxMDA2NDQKPiAtLS0gYS9uZXQvZXRodG9vbC9pb2N0bC5jCj4gKysrIGIvbmV0L2V0aHRv
b2wvaW9jdGwuYwo+IEBAIC05ODAsNiArOTgwLDE3IEBAIHN0YXRpYyBub2lubGluZV9mb3Jfc3Rh
Y2sgaW50IGV0aHRvb2xfc2V0X3J4bmZjKHN0cnVjdCBuZXRfZGV2aWNlICpkZXYsCj4gIAlpZiAo
cmMpCj4gIAkJcmV0dXJuIHJjOwo+ICAKPiArCS8qIElmIGEgc3ltbWV0cmljIGhhc2ggaXMgcmVx
dWVzdGVkLCB0aGVuOgo+ICsJICogMSAtIG5vIG90aGVyIGZpZWxkcyBiZXNpZGVzIElQIHNyYy9k
c3QgYW5kL29yIEw0IHNyYy9kc3QKPiArCSAqIDIgLSBJZiBzcmMgaXMgc2V0LCBkc3QgbXVzdCBh
bHNvIGJlIHNldAo+ICsJICovCj4gKwlpZiAoKGluZm8uZGF0YSAmIFJYSF9TWU1NRVRSSUNfWE9S
KSAmJgo+ICsJICAgICgoaW5mby5kYXRhICYgfihSWEhfU1lNTUVUUklDX1hPUiB8IFJYSF9JUF9T
UkMgfCBSWEhfSVBfRFNUIHwKPiArCSAgICAgIFJYSF9MNF9CXzBfMSB8IFJYSF9MNF9CXzJfMykp
IHx8Cj4gKwkgICAgICghIShpbmZvLmRhdGEgJiBSWEhfSVBfU1JDKSBeICEhKGluZm8uZGF0YSAm
IFJYSF9JUF9EU1QpKSB8fAo+ICsJICAgICAoISEoaW5mby5kYXRhICYgUlhIX0w0X0JfMF8xKSBe
ICEhKGluZm8uZGF0YSAmIFJYSF9MNF9CXzJfMykpKSkKPiArCQlyZXR1cm4gLUVJTlZBTDsKPiAr
Cj4gIAlyYyA9IGRldi0+ZXRodG9vbF9vcHMtPnNldF9yeG5mYyhkZXYsICZpbmZvKTsKPiAgCWlm
IChyYykKPiAgCQlyZXR1cm4gcmM7CgpZb3UgYXJlIHB1c2hpbmcgaW1wbGVtZW50YXRpb24gZnJv
bSB5b3VyIGRldmljZSBpbnRvIHRoZSBpbnRlcmZhY2UKZGVzaWduIGhlcmUuIFlvdSBzaG91bGQg
cHJvYmFibHkgcHVzaCB0aGVzZSByZXF1aXJlbWVudHMgZG93biBpbnRvIHRoZQpkcml2ZXIgcmF0
aGVyIHRoYW4gbWFraW5nIGl0IGEgcGFydCBvZiB0aGUgZ2VuZXJpYyBpbXBsZW1lbnRhdGlvbi4K
Ckl0IHdvdWxkIGJlIG5pY2UgdG8gc2VlIGlucHV0IGZyb20gb3RoZXIgTklDIHZlbmRvcnMgb24g
dGhpcyBhcyBJCnN1c3BlY3QgdGhleSBwcm9iYWJseSBoYXZlIHNpbWlsYXIgZnVuY3Rpb25hbGl0
eSBhdmFpbGFibGUgdG8gdGhlbS4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5A
b3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC13aXJlZC1sYW4K
