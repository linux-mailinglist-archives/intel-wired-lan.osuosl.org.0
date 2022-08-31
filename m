Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BB5D85A7BC3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Aug 2022 12:53:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C069D400FA;
	Wed, 31 Aug 2022 10:53:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C069D400FA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661943208;
	bh=xeYjcZ9qEr6adX95xuG9oed9dvpCT57xyPOwoGVAQZg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:From;
	b=JyMJ0DEnwP12bOKMJr8fDpSqscXCXK/uGmU39hlckhkgfdckiOmrOpn9x7jyhiv1v
	 CtvFG0tWNMoaKVAaGfBcks6ef88NTTZH/GFo/FrdnEV4KMaf0d9DmmTYKAUJ3PtIGQ
	 mS+kmpYVQxfIPlFLltm/bt5PYC/W5NlOTzJ+9HtpCzOgWRVX/T5a43kE+DrVXnaKTP
	 eLFbc9KMrlBbNdh3t59axWZfx3dRISsBGwDvNFjTDe9wbJ7CG1g8apmckwCPe+0oTV
	 2/jQx/o5ERpkVuCbtpTe1WSNLbgEGzefLvyJlp7WOszH5HodrJaCzFqtpNS8VRQo0S
	 EO0sQoPRXZN+Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KvFcsIxQAZCj; Wed, 31 Aug 2022 10:53:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6BA6E4187F;
	Wed, 31 Aug 2022 10:53:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6BA6E4187F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 86C761BF48D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Aug 2022 10:53:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5F2C882B97
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Aug 2022 10:53:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5F2C882B97
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lZXw4lTHtf2v for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Aug 2022 10:53:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 23A9382B81
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 23A9382B81
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Aug 2022 10:53:18 +0000 (UTC)
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-226-4WX_cJBSNNulwESljTPXfw-1; Wed, 31 Aug 2022 06:53:16 -0400
X-MC-Unique: 4WX_cJBSNNulwESljTPXfw-1
Received: by mail-ed1-f69.google.com with SMTP id
 v1-20020a056402348100b00448acc79177so4179874edc.23
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Aug 2022 03:53:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=mime-version:user-agent:content-transfer-encoding:organization
 :references:in-reply-to:date:to:reply-to:from:subject:message-id
 :x-gm-message-state:from:to:cc;
 bh=mWoWukNAy5uYlw41aIyp5sIZu7ExjwiK8eW7lSQmnMA=;
 b=YqoDE96fl7va1EULzvXg8LelSLDggaudGkHrx8TQ5c65F/geWJqritjiP4/if8Evzk
 CwcZocayaeJ43P43YfMP+4wwRM4Gu/CyzKEfaPhLMXEK7LJi22ZurHhIP8Ob+PazpuYD
 hBNfbE5Z1whm+ymQxD2ZVkwFiXzXUol+xdvj5/iEWciK4uBqQWr3BtcqEcUw7aFZtBlh
 OJAAohTFtVoJDaXqLcaLdVMVPsw6dbQz240V1Lm9pIyeVUIe0gw8qUzh0K9LXbRHR2Xe
 NpF4UeZSxAxanGIMKH4eobnfr/QH4M4oObMyWSuwg0oZhpgzaz71F0Q0Zhva7aDnw8WQ
 9nyw==
X-Gm-Message-State: ACgBeo2emOJdZKw9s8Pj0JsK+igjbJjI1kT6LDHugR/flEb7vV87ZW3m
 qrlFXVrfDb/OGYHtQCqESEzySOTZUna9Ta8TjVZWrzlaB9+qthrY94NijJxeCVWd7qB2ImsAKs2
 tBWbGqWBhn1vsFFi4qS6XS8DiWVecyA==
X-Received: by 2002:a17:907:1ca9:b0:741:4f9a:5984 with SMTP id
 nb41-20020a1709071ca900b007414f9a5984mr12800024ejc.86.1661943195147; 
 Wed, 31 Aug 2022 03:53:15 -0700 (PDT)
X-Google-Smtp-Source: AA6agR664+71NmRfYMkxTkuHlOzU/zXTZgqzVMlMeTUhURFcvRxH+kntdYeaWbhGKpV9u7gz9bIQHA==
X-Received: by 2002:a17:907:1ca9:b0:741:4f9a:5984 with SMTP id
 nb41-20020a1709071ca900b007414f9a5984mr12800009ejc.86.1661943194892; 
 Wed, 31 Aug 2022 03:53:14 -0700 (PDT)
Received: from [192.168.2.36] (ip4-46-175-183-46.net.iconn.cz. [46.175.183.46])
 by smtp.gmail.com with ESMTPSA id
 i13-20020aa7dd0d000000b0044792480994sm8814306edv.68.2022.08.31.03.53.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 31 Aug 2022 03:53:14 -0700 (PDT)
Message-ID: <808c6c06af006779a131de6b75a328977d3e9d7e.camel@redhat.com>
From: Petr Oros <poros@redhat.com>
To: Mateusz Palczewski <mateusz.palczewski@intel.com>, 
 intel-wired-lan@lists.osuosl.org
Date: Wed, 31 Aug 2022 12:53:13 +0200
In-Reply-To: <20220826083123.3334637-1-mateusz.palczewski@intel.com>
References: <20220826083123.3334637-1-mateusz.palczewski@intel.com>
Organization: Red Hat
User-Agent: Evolution 3.44.3
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1661943197;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=mWoWukNAy5uYlw41aIyp5sIZu7ExjwiK8eW7lSQmnMA=;
 b=VQJJDdmxqgP73cLz+qKFMTB21/mMzy5sTjjkmlOlpy5Q5dIhF6rdZbYO/sYGEcAbaOhwOE
 Pb89Ye4bBllgt7R1JdOHEoMDI3V0kgSDGQt52Go6e1AL+rh5XCs5WyB+YSOVrP83GMquDB
 EOAO+G2jmjzbzrymgyqNZSwQqH64vGU=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=VQJJDdmx
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: Fix interface being down
 after reset with link-down-on-close flag on
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
Reply-To: poros@redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

TWF0ZXVzeiBQYWxjemV3c2tpIHDDrcWhZSB2IFDDoSAyNi4gMDguIDIwMjIgdiAxMDozMSArMDIw
MDoKPiBXaGVuIHBlcmZvcm1pbmcgYSByZXNldCBvbiBpY2UgZHJpdmVyIHdpdGggbGluay1kb3du
LW9uLWNsb3NlIGZsYWcgb24KPiBpbnRlcmZhY2Ugd291bGQgYWx3YXlzIHN0YXkgZG93bi4gRml4
IHRoaXMgYnkgbW92aW5nIGEgY2hlY2sgb2YgdGhpcwo+IGZsYWcgdG8gaWNlX3N0b3AoKSB0aGF0
IGlzIGNhbGxlZCBvbmx5IHdoZW4gdXNlciB3YW50cyB0byBicmluZwo+IGludGVyZmFjZSBkb3du
Lgo+IAo+IEZpeGVzOiBhYjRhYjczZmMxZWMgKCJpY2U6IEFkZCBldGh0b29sIHByaXZhdGUgZmxh
ZyB0byBtYWtlIGZvcmNpbmcKPiBsaW5rIGRvd24gb3B0aW9uYWwiKQo+IFNpZ25lZC1vZmYtYnk6
IE1hdGV1c3ogUGFsY3pld3NraSA8bWF0ZXVzei5wYWxjemV3c2tpQGludGVsLmNvbT4KPiAtLS0K
PiDCoGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbWFpbi5jIHwgMjEgKysrKysr
KysrKysrLS0tLS0tLS0tCj4gwqAxIGZpbGUgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgOSBk
ZWxldGlvbnMoLSkKPiAKClRlc3RlZC1ieTogUGV0ciBPcm9zIDxwb3Jvc0ByZWRoYXQuY29tPgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2ly
ZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xp
c3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
