Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A6A02EEA8E
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Jan 2021 01:50:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C35EE86CE7;
	Fri,  8 Jan 2021 00:50:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2PLHyNa3V3Uk; Fri,  8 Jan 2021 00:50:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9BFDF86CF4;
	Fri,  8 Jan 2021 00:50:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B9EFE1BF9C8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Jan 2021 00:50:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B22AC86CA0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Jan 2021 00:50:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WyZexyUKVxfe for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Jan 2021 00:50:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com
 [209.85.215.180])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 359FE86CE4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Jan 2021 00:50:13 +0000 (UTC)
Received: by mail-pg1-f180.google.com with SMTP id i5so6550948pgo.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 07 Jan 2021 16:50:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pensando.io; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=aV7cj3PKcKgrjSt+F3CvxyD76lss2wpxKzg35jttMAI=;
 b=EOOt6Cjs3cCuAWvRElNB+slmQDg52pnQaK/X+dYj/G7qmVhNvCpqijuWJIX85tvrP8
 m1IiQS2cg55TEwlDHwLmKhGn9uVR0K9qs7FsCYJa39bkFeIOfhmc+7cru+HCTjaivV/R
 wGjnBBPL8mllB+U9ExinWYhJ5CotfykPCpgdHgMo5H1rsbHBRlG0RnEtOEg/9BIXF9mW
 ekvSEHYUAz5wdKQNQdy+QnyJbJML99p3eXgKDd+5H57zANVu8EKwNhbGUPo5GmR/4mAl
 vBka8rTggqp+xhpi2sohgHvgNJH0+nyhnxgdBkTt9susH6sLWlr/fLsTH1QOlmkReB7m
 t7Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=aV7cj3PKcKgrjSt+F3CvxyD76lss2wpxKzg35jttMAI=;
 b=EQLqVhlFcQoJI/cKg3dcypWOkz6eJPvsQxjNn64yv2zJiGbitTFuEIOPVk9/WCDmIZ
 M3LLrPRbnpfUawufIRCWVtibpCPExorK6wO5yj4+G+rX5EenjswQlWu4qoqYjIhGgKxX
 +f8skgAAs/J9FvfVyyoGNB9PqEeZAyGPVeMaHC7Vp/kVlVW0l020J8yhuxw/zeOxx6dz
 pe2pH/UfN4JAH+5rEHWcy4EYBqGaaCkrXqBLiccQzHU/mDAif5qo/8SN/eBvP9Gxw/Bi
 Iw9+9liKdIBOMpduZGI10TRmTeStI8T8z+fbbW5L/xxS2WSrs4kaBYMFE7HnL/0D9Vzd
 +u+w==
X-Gm-Message-State: AOAM531W5cgXZZL6y7yFO0YltGz/8R661v+77U+rAU9cRHpnp0/6Zf0Y
 tk72RvfG8nfqymNyoxyP2x3irw==
X-Google-Smtp-Source: ABdhPJzbgULcbMqjtezmp4QPNzeiCFrUd4tZIYgSjeGxqkrnx9ia+RBpNxlF1ND0wXz1Vrn8L9vIYQ==
X-Received: by 2002:a62:1c16:0:b029:1a6:8b06:68e9 with SMTP id
 c22-20020a621c160000b02901a68b0668e9mr1131328pfc.45.1610067012682; 
 Thu, 07 Jan 2021 16:50:12 -0800 (PST)
Received: from Shannons-MacBook-Pro.local
 (static-50-53-47-17.bvtn.or.frontiernet.net. [50.53.47.17])
 by smtp.gmail.com with ESMTPSA id i6sm7771634pgc.58.2021.01.07.16.50.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 07 Jan 2021 16:50:12 -0800 (PST)
To: Jesse Brandeburg <jesse.brandeburg@intel.com>, netdev@vger.kernel.org
References: <20210106215539.2103688-1-jesse.brandeburg@intel.com>
 <20210106215539.2103688-2-jesse.brandeburg@intel.com>
From: Shannon Nelson <snelson@pensando.io>
Message-ID: <1e4ee1cf-c2b7-8ba3-7cb1-5c5cb3ff1e84@pensando.io>
Date: Thu, 7 Jan 2021 16:50:10 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210106215539.2103688-2-jesse.brandeburg@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 1/2] net: core: count
 drops from GRO
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
Cc: Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Jamal Hadi Salim <jhs@mojatatu.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMS82LzIxIDE6NTUgUE0sIEplc3NlIEJyYW5kZWJ1cmcgd3JvdGU6Cj4gV2hlbiBkcml2ZXJz
IGNhbGwgdGhlIHZhcmlvdXMgcmVjZWl2ZSB1cGNhbGxzIHRvIHJlY2VpdmUgYW4gc2tiCj4gdG8g
dGhlIHN0YWNrLCBzb21ldGltZXMgdGhhdCBzdGFjayBjYW4gZHJvcCB0aGUgcGFja2V0LiBUaGUg
Z29vZAo+IG5ld3MgaXMgdGhhdCB0aGUgcmV0dXJuIGNvZGUgaXMgZ2l2ZW4gdG8gYWxsIHRoZSBk
cml2ZXJzIG9mCj4gTkVUX1JYX0RST1Agb3IgR1JPX0RST1AuIFRoZSBiYWQgbmV3cyBpcyB0aGF0
IG5vIGRyaXZlcnMgZXhjZXB0Cj4gdGhlIG9uZSAiaWNlIiBkcml2ZXIgdGhhdCBJIGNoYW5nZWQs
IGNoZWNrIHRoZSBzdGF0IGFuZCBpbmNyZW1lbnQKCklmIHRoZSBzdGFjayBpcyBkcm9wcGluZyB0
aGUgcGFja2V0LCBpc24ndCBpdCB1cCB0byB0aGUgc3RhY2sgdG8gdHJhY2sgCnRoYXQsIHBlcmhh
cHMgd2l0aCBzb21ldGhpbmcgdGhhdCBzaG93cyB1cCBpbiBuZXRzdGF0IC1zP8KgIFdlIGRvbid0
IApyZWFsbHkgd2FudCB0byBtYWtlIHRoZSBkcml2ZXIgcmVzcG9uc2libGUgZm9yIGFueSBkcm9w
cyB0aGF0IGhhcHBlbiAKYWJvdmUgaXRzIGhlYWQsIGRvIHdlPwoKc2xuCgo+IHRoZSBkcm9wcGVk
IGNvdW50LiBUaGlzIGlzIGN1cnJlbnRseSBsZWFkaW5nIHRvIHBhY2tldHMgdGhhdAo+IGFycml2
ZSBhdCB0aGUgZWRnZSBpbnRlcmZhY2UgYW5kIGFyZSBmdWxseSBoYW5kbGVkIGJ5IHRoZSBkcml2
ZXIKPiBhbmQgdGhlbiBteXN0ZXJpb3VzbHkgZGlzYXBwZWFyLgo+Cj4gUmF0aGVyIHRoYW4gZml4
IGFsbCBkcml2ZXJzIHRvIGluY3JlbWVudCB0aGUgZHJvcCBzdGF0IHdoZW4KPiBoYW5kbGluZyB0
aGUgcmV0dXJuIGNvZGUsIGVtdWxhdGUgdGhlIGFscmVhZHkgZXhpc3Rpbmcgc3RhdGlzdGljCj4g
dXBkYXRlIGZvciBORVRfUlhfRFJPUCBldmVudHMgZm9yIHRoZSB0d28gR1JPX0RST1AgbG9jYXRp
b25zLCBhbmQKPiBpbmNyZW1lbnQgdGhlIGRldi0+cnhfZHJvcHBlZCBhc3NvY2lhdGVkIHdpdGgg
dGhlIHNrYi4KPgo+IFNpZ25lZC1vZmYtYnk6IEplc3NlIEJyYW5kZWJ1cmcgPGplc3NlLmJyYW5k
ZWJ1cmdAaW50ZWwuY29tPgo+IENjOiBFcmljIER1bWF6ZXQgPGVkdW1hemV0QGdvb2dsZS5jb20+
Cj4gQ2M6IEphbWFsIEhhZGkgU2FsaW0gPGpoc0Btb2phdGF0dS5jb20+Cj4gLS0tCj4gICBuZXQv
Y29yZS9kZXYuYyB8IDIgKysKPiAgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKPgo+
IGRpZmYgLS1naXQgYS9uZXQvY29yZS9kZXYuYyBiL25ldC9jb3JlL2Rldi5jCj4gaW5kZXggOGZh
NzM5MjU5MDQxLi5lZjM0MDQzYTk1NTAgMTAwNjQ0Cj4gLS0tIGEvbmV0L2NvcmUvZGV2LmMKPiAr
KysgYi9uZXQvY29yZS9kZXYuYwo+IEBAIC02MDcxLDYgKzYwNzEsNyBAQCBzdGF0aWMgZ3JvX3Jl
c3VsdF90IG5hcGlfc2tiX2ZpbmlzaChzdHJ1Y3QgbmFwaV9zdHJ1Y3QgKm5hcGksCj4gICAJCWJy
ZWFrOwo+ICAgCj4gICAJY2FzZSBHUk9fRFJPUDoKPiArCQlhdG9taWNfbG9uZ19pbmMoJnNrYi0+
ZGV2LT5yeF9kcm9wcGVkKTsKPiAgIAkJa2ZyZWVfc2tiKHNrYik7Cj4gICAJCWJyZWFrOwo+ICAg
Cj4gQEAgLTYxNTksNiArNjE2MCw3IEBAIHN0YXRpYyBncm9fcmVzdWx0X3QgbmFwaV9mcmFnc19m
aW5pc2goc3RydWN0IG5hcGlfc3RydWN0ICpuYXBpLAo+ICAgCQlicmVhazsKPiAgIAo+ICAgCWNh
c2UgR1JPX0RST1A6Cj4gKwkJYXRvbWljX2xvbmdfaW5jKCZza2ItPmRldi0+cnhfZHJvcHBlZCk7
Cj4gICAJCW5hcGlfcmV1c2Vfc2tiKG5hcGksIHNrYik7Cj4gICAJCWJyZWFrOwo+ICAgCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1s
YW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMu
b3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
