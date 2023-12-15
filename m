Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 996A5814740
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Dec 2023 12:47:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7B1A3418CD;
	Fri, 15 Dec 2023 11:47:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7B1A3418CD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702640856;
	bh=eWboQTZE3MmbnZ3auHdxPhhcgidLiKX19hlDf49wPz4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Q3TqvICQyCawTMSfZwbBdCxDbOCfyEokT8r73XOTd+GOPS+FfBcO/ghf/vsv0jID2
	 +CSSRb2i42TW/xDkr3gk8HPl9EKSWqvv2+ZGDLEGXeenh8c+oux+yX2UkcBBg3yYiX
	 04v+zAZ1s8l1ZnlU0wVxb/G0SCg9B5JJgsSUKS3BPodpzTsCi29AZOa+7aC4NpbGsQ
	 +BJKrFp2g6ltjX7LG2B70T3SUDiKkSFJxQ7LK+ZETZKsLYGDNFjyjNZoBjHPaLwKS4
	 xlXSgcZHrM8PNDfMBvE3vQMh0h4BzLYxt55aVgKzyAKAA3/4VncIOYK4uvSYMq1Acm
	 uZgo2JjcKrZTA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y2lmgwfxOBPI; Fri, 15 Dec 2023 11:47:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 62EC241820;
	Fri, 15 Dec 2023 11:47:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 62EC241820
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0464B1BF404
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 11:47:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C4EF583A8F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 11:47:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C4EF583A8F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6ZolJELNK6Ah for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Dec 2023 11:47:27 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A11118387D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 11:47:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A11118387D
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-480-VxzdFyWWNZK-IT0UD15Kug-1; Fri, 15 Dec 2023 06:47:25 -0500
X-MC-Unique: VxzdFyWWNZK-IT0UD15Kug-1
Received: by mail-ej1-f70.google.com with SMTP id
 a640c23a62f3a-a1ef5c7f80cso12076566b.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 03:47:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1702640844; x=1703245644;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=PV5PO6XaRHGl6j8FZmI00SMb/OM7VurjhwlFY4KX9Mw=;
 b=jSeOICg6O36s67ccNU5xgfvDwz4QtXosxAcSHrfTlelzATCcv906Hpsv7BwwGf5qqp
 a28QK/CcScZOB3p4bdgo9Gzv06nqTT5AiMFBOjC2SOl8zOIPQfUdZSEbt4D/qN2mN8lm
 suSKzpvTOTs4+bvsJOfZ7v6TF2v1N1IRbx3Wa/vaVRiaFRAQYjswR2zGQeJ6azaR7RIn
 IjHMhfxaSHDDCHxvv3Er9JuvPY0Fg+DbxfN5BHaYHn2aE7HQoLuWkbk4I0f09BJpnWD9
 aVP/GuKgHxb2ouEkuLYYhk5FHu9qQxs9cbXLDrn65o4NY5rtytPu2qm55CKPCd3XIfJR
 EtVg==
X-Gm-Message-State: AOJu0YxK0rdQuaKHPz3W1pmL1QwkDYFLmucXErdzdXuXGHcmSBXS7vDj
 +62pJV3fMp0MjwiBPRm0LleboImPPQnNBDBKABturN2N2vmMHH/if8Q9vF03QryIuk57mJHXaJr
 yVzcoRbJu1ju9qHX6nBrxKgRmxdmdWg==
X-Received: by 2002:a17:907:c003:b0:a1d:6d:1392 with SMTP id
 ss3-20020a170907c00300b00a1d006d1392mr13164561ejc.1.1702640843998; 
 Fri, 15 Dec 2023 03:47:23 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFPygyxbOj1lWrl7m8EK2d8BmH++5xkgLBF6oVmiERRiUftAoRmP26PffAgucb8v5DeVeZkxw==
X-Received: by 2002:a17:907:c003:b0:a1d:6d:1392 with SMTP id
 ss3-20020a170907c00300b00a1d006d1392mr13164546ejc.1.1702640843656; 
 Fri, 15 Dec 2023 03:47:23 -0800 (PST)
Received: from gerbillo.redhat.com (146-241-255-162.dyn.eolo.it.
 [146.241.255.162]) by smtp.gmail.com with ESMTPSA id
 so7-20020a170907390700b00a1f747f762asm9976547ejc.112.2023.12.15.03.47.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Dec 2023 03:47:23 -0800 (PST)
Message-ID: <340b7306b5adbdba468c1cf719c912cbeeb12df6.camel@redhat.com>
From: Paolo Abeni <pabeni@redhat.com>
To: Jakub Kicinski <kuba@kernel.org>, Jiri Pirko <jiri@resnulli.us>
Date: Fri, 15 Dec 2023 12:47:21 +0100
In-Reply-To: <7b0c2e0132b71b131fc9a5407abd27bc0be700ee.camel@redhat.com>
References: <20230727021021.961119-1-wenjun1.wu@intel.com>
 <20230822034003.31628-1-wenjun1.wu@intel.com> <ZORRzEBcUDEjMniz@nanopsycho>
 <20230822081255.7a36fa4d@kernel.org> <ZOTVkXWCLY88YfjV@nanopsycho>
 <0893327b-1c84-7c25-d10c-1cc93595825a@intel.com>
 <ZOcBEt59zHW9qHhT@nanopsycho>
 <5aed9b87-28f8-f0b0-67c4-346e1d8f762c@intel.com>
 <bdb0137a-b735-41d9-9fea-38b238db0305@intel.com>
 <20231118084843.70c344d9@kernel.org>
 <3d60fabf-7edf-47a2-9b95-29b0d9b9e236@intel.com>
 <20231122192201.245a0797@kernel.org>
 <e662dca5-84e4-4f7b-bfa3-50bce30c697c@intel.com>
 <20231127174329.6dffea07@kernel.org>
 <55e51b97c29894ebe61184ab94f7e3d8486e083a.camel@redhat.com>
 <20231214174604.1ca4c30d@kernel.org>
 <7b0c2e0132b71b131fc9a5407abd27bc0be700ee.camel@redhat.com>
User-Agent: Evolution 3.46.4 (3.46.4-1.fc37)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1702640846;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=PV5PO6XaRHGl6j8FZmI00SMb/OM7VurjhwlFY4KX9Mw=;
 b=OCsZhha1gWDGBjMZcvdZEw5OZC5ZyDUjF0dDV6yjq78s2zjW0xpXa0frPsdFnRODieWMos
 zdrSXaLNaZ49U/8v2fRlz/6dSH6lOakc/K6JfCEDp1A76UepyWOMl4CwBphPXEYjrQth6o
 0QVSpo9OVAPJnnNh8pDEJlnmmrifdhc=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=OCsZhha1
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
Cc: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>, netdev@vger.kernel.org,
 Simon Horman <simon.horman@redhat.com>, anthony.l.nguyen@intel.com, "Chittim,
 Madhu" <madhu.chittim@intel.com>, maxtram95@gmail.com, qi.z.zhang@intel.com,
 intel-wired-lan@lists.osuosl.org, Wenjun Wu <wenjun1.wu@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gRnJpLCAyMDIzLTEyLTE1IGF0IDEyOjA2ICswMTAwLCBQYW9sbyBBYmVuaSB3cm90ZToKPiAx
KSBBRkFJQ1MgZGV2bGluayAoYW5kL29yIGRldmxpbmtfcG9ydCkgZG9lcyBub3QgaGF2ZSBmaW5l
IGdyYWluZWQsIHBlcgo+IHF1ZXVlIHJlcHJlc2VudGF0aW9uIGFuZCBpbnRlbCB3YW50IHRvIGJl
IGFibGUgdG8gY29uZmlndXJlIHNoYXBpbmcgb24KPiBwZXIgcXVldWUgYmFzaXMuIEkgdGhpbmsv
aG9wZSB3ZSBkb24ndCB3YW50IHRvIGJyaW5nIHRoZSBkaXNjdXNzaW9uIHRvCj4gZXh0ZW5kaW5n
IHRoZSBkZXZsaW5rIGludGVyZmFjZSB3aXRoIHF1ZXVlIHN1cHBvcnQsIEkgZmVhciB0aGF0IHdp
bGwKPiBibG9jayB1cyBmb3IgYSBsb25nIHRpbWUuIFBlcmhhcHMgSeKAmW0gbWlzc2luZyBvciBt
aXN1bmRlcnN0YW5kaW5nCj4gc29tZXRoaW5nIGhlcmUuIE90aGVyd2lzZSBpbiByZXRyb3NwZWN0
IHRoaXMgbG9va3MgbGlrZSBhIHJlYXNvbmFibGUKPiBwb2ludCB0byBjb21wbGV0ZWx5IGF2b2lk
IGRldmxpbmsgaGVyZS4KCk5vdGUgdG8gc2VsZjogbmV2ZXIgc2VuZCBhIG1lc3NhZ2UgdG8gdGhl
IE1MIGJlZm9yZSBteSAzcmQgbW9ybmluZwpjb2ZmZWUuCgpUaGlzIHRocmVhZCBzdGFydGVkIHdp
dGggSW50ZWwgdHJ5aW5nIHRvIHVzaW5nIGRldmxpbmsgcmF0ZSBmb3IgdGhlaXIKdXNlLWNhc2Us
IGFwcGFyZW50bHkgc2xhbW1pbmcgbXkgZG91YnQgYWJvdmUuCgpNeSB1bmRlcnN0YW5kaW5nIGlz
IHRoYXQgaW4gdGhlIHBhdGNoZXMgdGhlIHF1ZXVlIGRldmxpbmsgPD4gcXVldWUKcmVsYXRpb25z
aGlwIHdhcyBrZXB0IGluc2lkZSB0aGUgZHJpdmVyIGFuZCBub3QgZXhwb3NlZCB0byB0aGUgZGV2
bGluawpsZXZlbC4KCklmIHdlIHdhbnQgdG8gdXNlIHRoZSBkZXZsaW5rIHJhdGUgYXBpIHRvIHJl
cGxhY2UgZS5nLgpuZG9fc2V0X3R4X21heHJhdGUsIHdlIHdvdWxkIG5lZWQgYSBkZXZsaW5rIHF1
ZXVlKGlkKSBvciB0aGUgbGlrZSwKaGVuY2UgdGhpcyBwb2ludC4KCkNoZWVyLAoKUGFvbG8KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVk
LWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0
cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
