Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DBDB7CD781
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Oct 2023 11:05:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A1DA86120F;
	Wed, 18 Oct 2023 09:05:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A1DA86120F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697619952;
	bh=xhn1eArXR/zwCPH6RqfHQUePa1VF5uU9myP38MjwNnI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NBQnx+NhGiXiIGktZnTT+uF+9j+ihi/gSvBtXxxIPvlvw0LILoP9DDedFzRbpuuaC
	 LfBdT3u5Lxj+lUzaYSfGSL83aQW/YGUNft/ARYjJAcCOX/+4Vh3K674vzokavN+Yrn
	 R7Zp4dgwhXcSn6EX7NbyJqm4c0vgo/t8NNEsZMXCKV8ymknX1DKSu6tax0clYxD4uY
	 Go8Ygu0/xvyXTeCuM4AoqErSf2ez7SeV1CAuzlW3G4xyF497WF0mJAXPW9SHDWbiII
	 VdWbVaii945vlLp8Q/5+If4m9E/IIh+eEETjQK086YeLHJmKRvYKx3pXCGjHn7p8aQ
	 YDBhjEwyQ5mIA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pLRJQ3uAKaMG; Wed, 18 Oct 2023 09:05:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4EBBE610B9;
	Wed, 18 Oct 2023 09:05:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4EBBE610B9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 45EEC1BF5F6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 09:05:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0E4CF404B5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 09:05:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0E4CF404B5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kxgBrkCO61al for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Oct 2023 09:05:45 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DB3EF40439
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 09:05:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DB3EF40439
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-454-BTij72K0ObGKHFoDTQTzXQ-1; Wed, 18 Oct 2023 05:05:42 -0400
X-MC-Unique: BTij72K0ObGKHFoDTQTzXQ-1
Received: by mail-qv1-f69.google.com with SMTP id
 6a1803df08f44-66d2fdf80beso11549056d6.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 02:05:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697619941; x=1698224741;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=gEm71X05WQCyygZ0rmv92ezDsyn3wLuZrAD37Y+vW98=;
 b=TdsJLYfWrz6SEHiMU5jrinlDQ+OP5dzcxjGjJpHIevhdoyY0VH3sLB2wbbHwmCdOQ/
 c+zqssC6CH3ehNkK6ibWQvUp4o/GqGveciu+hKFc8cSheRGdEQfN37GfPbfkStoTlRVM
 g57kRlHAx8Et0OtMx0NATyrS6TuV9icJ39r7XF8NV3Z2OBPDZ8NqQf6O98YTx4LThnF0
 DrxwtJkThPgZnhUzPpXVsK3t/4CsNj1eAa/pWz51UGZBiK5y6UCwE36xBZMQuDQKY1gZ
 cIQhiU3f14QYKiU9Bjy6e07GjxHts+f7kpFHqOWSsmd9qsSAh72DwkwzNO1BcMWK8PV6
 O3Ig==
X-Gm-Message-State: AOJu0YwyTY/t2vfgQwlyIbjq6fscIAHuTGDTIfPA2gYImeMP/xLI1qxO
 X6DKl5h/N5V7O+l1PWt8yq7PGyQUXqWw4hmNk/g827/7eYL3Z8ewVRU+wwtpih0awbVjyPCMiKB
 CGm3Qg0Appglz+v9iUDeb8VZqh4CysA==
X-Received: by 2002:a0c:f7c7:0:b0:66d:1bbb:e9f8 with SMTP id
 f7-20020a0cf7c7000000b0066d1bbbe9f8mr4770820qvo.6.1697619941404; 
 Wed, 18 Oct 2023 02:05:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEKS7qvA0SdVIifPNG1JkmCV1vJXnefb9EK4cxDwGzoc929Nn43NfbeAkPWGwCvjkfURYgBIg==
X-Received: by 2002:a0c:f7c7:0:b0:66d:1bbb:e9f8 with SMTP id
 f7-20020a0cf7c7000000b0066d1bbbe9f8mr4770810qvo.6.1697619941068; 
 Wed, 18 Oct 2023 02:05:41 -0700 (PDT)
Received: from gerbillo.redhat.com (146-241-239-50.dyn.eolo.it.
 [146.241.239.50]) by smtp.gmail.com with ESMTPSA id
 mg8-20020a056214560800b0066cf6f202cdsm1207893qvb.122.2023.10.18.02.05.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Oct 2023 02:05:40 -0700 (PDT)
Message-ID: <f586e275750b33feb347e2ba8484a338bc5a8585.camel@redhat.com>
From: Paolo Abeni <pabeni@redhat.com>
To: Jiri Pirko <jiri@resnulli.us>
Date: Wed, 18 Oct 2023 11:05:37 +0200
In-Reply-To: <ZOcBEt59zHW9qHhT@nanopsycho>
References: <20230727021021.961119-1-wenjun1.wu@intel.com>
 <20230822034003.31628-1-wenjun1.wu@intel.com> <ZORRzEBcUDEjMniz@nanopsycho>
 <20230822081255.7a36fa4d@kernel.org> <ZOTVkXWCLY88YfjV@nanopsycho>
 <0893327b-1c84-7c25-d10c-1cc93595825a@intel.com>
 <ZOcBEt59zHW9qHhT@nanopsycho>
User-Agent: Evolution 3.46.4 (3.46.4-1.fc37)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1697619943;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=gEm71X05WQCyygZ0rmv92ezDsyn3wLuZrAD37Y+vW98=;
 b=WXlHpxGb6ScPRMwmInPxXeAfOvsR9xstsUKspY7eE5CGBCAm3nlH1qSe4t+lBXOtLwjALy
 3Uf/0cPFCMOWctn1WyLnXBZgdNkuELquxXAtryuoQhC3fOBB8fI3zIJModx1MsJhCgxHOQ
 o8KWyeM0VllLX9f9YcwMMd0v53fg290=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=WXlHpxGb
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 0/5] iavf: Add devlink and
 devlink rate support'
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
Cc: netdev@vger.kernel.org, "Zhang, Xuejun" <xuejun.zhang@intel.com>,
 anthony.l.nguyen@intel.com, madhu.chittim@intel.com,
 intel-wired-lan@lists.osuosl.org, qi.z.zhang@intel.com,
 Jakub Kicinski <kuba@kernel.org>, Wenjun Wu <wenjun1.wu@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGksCgpwbGVhc2UgYWxsb3cgbWUgdG8gcmV2aXZlIHRoaXMgb2xkIHRocmVhZC4uLgoKT24gVGh1
LCAyMDIzLTA4LTI0IGF0IDA5OjA0ICswMjAwLCBKaXJpIFBpcmtvIHdyb3RlOgo+ID4gV2VkLCBB
dWcgMjMsIDIwMjMgYXQgMDk6MTM6MzRQTSBDRVNULCB4dWVqdW4uemhhbmdAaW50ZWwuY29tIHdy
b3RlOgo+ID4gPiA+IAo+ID4gPiA+IE9uIDgvMjIvMjAyMyA4OjM0IEFNLCBKaXJpIFBpcmtvIHdy
b3RlOgo+ID4gPiA+ID4gPiBUdWUsIEF1ZyAyMiwgMjAyMyBhdCAwNToxMjo1NVBNIENFU1Qsa3Vi
YUBrZXJuZWwub3JnICB3cm90ZToKPiA+ID4gPiA+ID4gPiA+IE9uIFR1ZSwgMjIgQXVnIDIwMjMg
MDg6MTI6MjggKzAyMDAgSmlyaSBQaXJrbyB3cm90ZToKPiA+ID4gPiA+ID4gPiA+ID4gPiBOQUNL
ISBQb3J0IGZ1bmN0aW9uIGlzIHRoZXJlIHRvIGNvbmZpZ3VyZSB0aGUgVkYvU0YgZnJvbSB0aGUg
ZXN3aXRjaAo+ID4gPiA+ID4gPiA+ID4gPiA+IHNpZGUuIFlldCB5b3UgdXNlIGl0IGZvciB0aGUg
Y29uZmlndXJlYXRpb24gb2YgdGhlIGFjdHVhbCBWRiwgd2hpY2ggaXMKPiA+ID4gPiA+ID4gPiA+
ID4gPiBjbGVhciBtaXN1c2UuIFBsZWFzZSBkb24ndAo+ID4gPiA+ID4gPiA+ID4gU3RhdGluZyB3
aGVyZSB0aGV5IGFyZSBzdXBwb3NlZCB0byBjb25maWd1cmUgdGhlIHJhdGUgd291bGQgYmUgaGVs
cGZ1bC4KPiA+ID4gPiA+ID4gVEM/Cj4gPiA+ID4gCj4gPiA+ID4gT3VyIGltcGxlbWVudGF0aW9u
IGlzIGFuIGV4dGVuc2lvbiB0byB0aGlzIGNvbW1pdCA0MmMyZWI2YjFmNDMgaWNlOiBJbXBsZW1l
bnQKPiA+ID4gPiBkZXZsaW5rLXJhdGUgQVBJKS4KPiA+ID4gPiAKPiA+ID4gPiBXZSBhcmUgc2V0
dGluZyB0aGUgVHggbWF4ICYgc2hhcmUgcmF0ZXMgb2YgaW5kaXZpZHVhbCBxdWV1ZXMgaW4gYSBW
RiB1c2luZwo+ID4gPiA+IHRoZSBkZXZsaW5rIHJhdGUgQVBJLgo+ID4gPiA+IAo+ID4gPiA+IEhl
cmUgd2UgYXJlIHVzaW5nIERFVkxJTktfUE9SVF9GTEFWT1VSX1ZJUlRVQUwgYXMgdGhlIGF0dHJp
YnV0ZSBmb3IgdGhlIHBvcnQKPiA+ID4gPiB0byBkaXN0aW5ndWlzaCBpdCBmcm9tIGJlaW5nIGVz
d2l0Y2guCj4gPiAKPiA+IEkgdW5kZXJzdGFuZCwgdGhhdCBpcyBhIHdyb25nIG9iamVjdC4gU28g
YWdhaW4sIHlvdSBzaG91bGQgdXNlCj4gPiAiZnVuY3Rpb24iIHN1Ym9iamVjdCBvZiBkZXZsaW5r
IHBvcnQgdG8gY29uZmlndXJlICJ0aGUgb3RoZXIgc2lkZSBvZiB0aGUKPiA+IHdpcmUiLCB0aGF0
IG1lYW5zIHRoZSBmdW5jdGlvbiByZWxhdGVkIHRvIGEgZXN3aXRjaCBwb3J0LiBIZXJlLCB5b3Ug
YXJlCj4gPiBkb2luZyBpdCBmb3IgdGhlIFZGIGRpcmVjdGx5LCB3aGljaCBpcyB3cm9uZy4gSWYg
eW91IG5lZWQgc29tZSByYXRlCj4gPiBsaW1pdGluZyB0byBiZSBjb25maWd1cmVkIG9uIGFuIGFj
dHVhbCBWRiwgdXNlIHdoYXQgeW91IHVzZSBmb3IgYW55Cj4gPiBvdGhlciBuaWMuIE9mZmxvYWQg
VEMuCgpJIGhhdmUgYSBkb3VidCBXUlQgdGhlIGFib3ZlLiBEb24ndCB3ZSBuZWVkIHNvbWV0aGlu
ZyBtb3JlL2RpZmZlcmVudApoZXJlPyBJIG1lYW46IGEgcG9zc2libGUgaW50ZW50IGlzIGxpbWl0
aW5nIHRoZSBhbW91bnQgb2YgcmVzb3VyY2VzIChCVwppbiB0aGUgVkYgLT4gZXN3IGRpcmVjdGlv
bikgdGhhdCB0aGUgYXBwbGljYXRpb24gb3dpbmcgdGhlIFZGIGNvdWxkCnVzZS4KCklmIHRoYXQg
aXMgZW5mb3JjZWQgdmlhIFRDIG9uIHRoZSBWRiBzaWRlIChzYXksIGEgZGlmZmVyZW50IG5hbWVz
cGFjZQpvciBWTSksIHRoZSBWRiB1c2VyIGNvdWxkIGNpcmN1bXZlbnQgc3VjaCBsaW1pdCAtIGNo
YW5naW5nIHRoZSB0Ywpjb25maWd1cmF0aW9uIC0gZWl0aGVyIGJ5IG1pc3Rha2Ugb3IgbWFsaWNp
b3VzIGFjdGlvbi4gCgpMb29raW5nIGF0IHRoZSB0aGluZyBmcm9tIGEgZGlmZmVyZW50IHBlcnNw
ZWN0aXZlLCB0aGUgVFggQi9XIG9uIHRoZSBWRgpzaWRlIGlzIHRoZSBSWCBCL1cgb24gdGhlIGVz
d2l0Y2ggc2lkZSwgc28gdGhlIHNhbWUgZWZmZWN0IGNvdWxkIGJlCm9idGFpbmVkIHdpdGggYSAo
bmV3L2RpZmZlcmVudCkgQVBJIGZvcm1hbGx5IHRvdWNoaW5nIG9ubHkgZXN3aXRjaCBzaWRlCm9i
amVjdC7CoFdEWVQ/CgpUaGFua3MsCgpQYW9sbwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwt
d2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
