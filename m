Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AE26473190A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Jun 2023 14:38:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1F2C841F28;
	Thu, 15 Jun 2023 12:38:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1F2C841F28
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686832685;
	bh=rgBjeGQR9gAuQkAoE1OoOGOmwsQW8hN5274/4yCatPU=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9xKkFVb7TFICGv1lsgkZaHut+rNgQ/NHrbRbe325FZfqFS+hMNCMeHq3OxvND228l
	 qZ82oOYUC49Kwh4c3aSCve/morlwpSWt4tpM8ps/udU+CUlj/vNlPFWBjqxPpk2rkN
	 nhhRqO8UfhWxo8rGmLGASPzKVuwjFYs6IVnJf36sMLPkTa2+vDTuOvjiSNwJY8wxwm
	 KnsOes4BYT6JJ3YRgKLC8W6/MQXb+cbxfIKZx+qzetB4vDmA99m0/M4E4XW+87tk8E
	 0/eUQWafd7iA9aM76WChKQ32YRMKmE+OulvrhjOseZ4sz5yFngDuwvSt96IThOZdDK
	 og/5kOLOql/Lg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p7OGW3d-mXl5; Thu, 15 Jun 2023 12:38:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C414141E94;
	Thu, 15 Jun 2023 12:38:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C414141E94
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C12551BF831
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 12:37:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A4DC141E94
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 12:37:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A4DC141E94
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5v1PC1zys3jP for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Jun 2023 12:37:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B231A41DDE
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B231A41DDE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 12:37:57 +0000 (UTC)
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-418-5uDaxK5dNY-NLY-ZX_kYrw-1; Thu, 15 Jun 2023 08:37:54 -0400
X-MC-Unique: 5uDaxK5dNY-NLY-ZX_kYrw-1
Received: by mail-ej1-f72.google.com with SMTP id
 a640c23a62f3a-94a348facbbso172874566b.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 05:37:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1686832672; x=1689424672;
 h=content-transfer-encoding:mime-version:message-id:date:references
 :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=gTIAUs6tWTx1JxWTYhYUIaHzGBgz21d+mfQ6B/1Bob8=;
 b=kI0DnOEIFJF36vygipjWTQrJHHfSzjubT5Bv6Y5W5Wtufb6Xunm2Z6j5/7dH1HCRqW
 84Ia6goMuAj73nADnMVIvWRQ6ol9LcoF7lG0KdHl7qmOh+OmvfLazoTN3ZYJHI7dXgoY
 mzqhRu2CDwHfFc/QPS3IiW/XV4LEYOHIpN7D+RhFTladYXGt0tgrsMYV42JDNFxTkOoC
 goKueOq4B+u+wQpHqXK4MCoenu6LVj0eTuMjulsmkJ99AnWUJLQME0tRCAC1VzGoDU7h
 QsJRkGwA1cLtWky6kludZeq/ZYCbsw3mQnzSkiSi6QyQ42K27Ec3q0QeSnnYAlfEvcLW
 iOHg==
X-Gm-Message-State: AC+VfDxu9XeWifv+3CSweRWRgpMaLCx1YGIV2C66PBtps1cATDGjX8HR
 NGJjXC6lamwqtEhCT3G92YkiW1KNYigOZAtN87wCEXB596T9IDRdXx7y4qj6y47+j4CJ3Tesh3s
 PBB8aAQ5S/iaiAk2xU93YpEXVZcS3LQ==
X-Received: by 2002:a17:906:58c8:b0:96f:e7cf:5015 with SMTP id
 e8-20020a17090658c800b0096fe7cf5015mr20449710ejs.17.1686832672180; 
 Thu, 15 Jun 2023 05:37:52 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ4yLdrC3Ns33uRvMP1BQdUvRNhpaN9fVe272nbI+nzoGeNbjGmBXTp3+HDcp0B9u0AVYvhhYg==
X-Received: by 2002:a17:906:58c8:b0:96f:e7cf:5015 with SMTP id
 e8-20020a17090658c800b0096fe7cf5015mr20449690ejs.17.1686832671834; 
 Thu, 15 Jun 2023 05:37:51 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
 by smtp.gmail.com with ESMTPSA id
 q15-20020a170906940f00b00977eb9957e9sm9378146ejx.128.2023.06.15.05.37.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 15 Jun 2023 05:37:51 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 68D0ABBEC27; Thu, 15 Jun 2023 14:29:54 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 intel-wired-lan@lists.osuosl.org
In-Reply-To: <20230615113326.347770-1-maciej.fijalkowski@intel.com>
References: <20230615113326.347770-1-maciej.fijalkowski@intel.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Thu, 15 Jun 2023 14:29:54 +0200
Message-ID: <87v8fogb7h.fsf@toke.dk>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1686832676;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=gTIAUs6tWTx1JxWTYhYUIaHzGBgz21d+mfQ6B/1Bob8=;
 b=NtxGeqGaysaPGDRrOe3w/ZEYhnlb/eCZW55qR04dGOp3S5PyEdxBWZwn7b5jFfiEFGtAoS
 xnQjw+6G7CJcPrTeyLOwJJt2Jf9yG8jiQZIQSaQDDhqx7RkbV4SX3FAyxzf1R1aVH/nmob
 E6X/bzB2WXGiMyHfbe0oLuO+DiOtY6I=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=NtxGeqGa
Subject: Re: [Intel-wired-lan] [PATCH v3 iwl-next] ice: allow hot-swapping
 XDP programs
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 magnus.karlsson@intel.com, fred@cloudflare.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

TWFjaWVqIEZpamFsa293c2tpIDxtYWNpZWouZmlqYWxrb3dza2lAaW50ZWwuY29tPiB3cml0ZXM6
Cgo+IEN1cnJlbnRseSBpY2UgZHJpdmVyJ3MgLm5kb19icGYgY2FsbGJhY2sgYnJpbmdzIGludGVy
ZmFjZSBkb3duIGFuZCB1cAo+IGluZGVwZW5kZW50bHkgb2YgWERQIHJlc291cmNlcycgcHJlc2Vu
Y2UuIFRoaXMgaXMgb25seSBuZWVkZWQgd2hlbgo+IGVpdGhlciB0aGVzZSByZXNvdXJjZXMgaGF2
ZSB0byBiZSBjb25maWd1cmVkIG9yIHJlbW92ZWQuIEl0IG1lYW5zIHRoYXQKPiBpZiBvbmUgaXMg
c3dpdGNoaW5nIFhEUCBwcm9ncmFtcyBvbi10aGUtZmx5IHdpdGggcnVubmluZyB0cmFmZmljLAo+
IHBhY2tldHMgd2lsbCBiZSBkcm9wcGVkLgo+Cj4gVG8gYXZvaWQgdGhpcywgY29tcGFyZSBlYXJs
eSBvbiBpY2VfeGRwX3NldHVwX3Byb2coKSBzdGF0ZSBvZiBpbmNvbWluZwo+IGJwZl9wcm9nIHBv
aW50ZXIgdnMgdGhlIGJwZl9wcm9nIHBvaW50ZXIgdGhhdCBpcyBhbHJlYWR5IGFzc2lnbmVkIHRv
Cj4gVlNJLiBEbyB0aGUgc3dhcCBpbiBjYXNlIFZTSSBoYXMgYnBmX3Byb2cgYW5kIGluY29taW5n
IG9uZSBhcmUgbm9uLU5VTEwuCj4KPiBMYXN0bHksIHdoaWxlIGF0IGl0LCBwdXQgb2xkIGJwZl9w
cm9nICphZnRlciogdGhlIHVwZGF0ZSBvZiBSeCByaW5nJ3MKPiBicGZfcHJvZyBwb2ludGVyLiBJ
biB0aGVvcnkgcHJldmlvdXMgY29kZSBjb3VsZCBleHBvc2UgdXMgdG8gYSBzdGF0ZQo+IHdoZXJl
IFJ4IHJpbmcncyBicGZfcHJvZyB3b3VsZCBzdGlsbCBiZSByZWZlcnJpbmcgdG8gb2xkX3Byb2cg
dGhhdCBnb3QKPiByZWxlYXNlZCB3aXRoIGVhcmxpZXIgYnBmX3Byb2dfcHV0KCkuCj4KPiBTaWdu
ZWQtb2ZmLWJ5OiBNYWNpZWogRmlqYWxrb3dza2kgPG1hY2llai5maWphbGtvd3NraUBpbnRlbC5j
b20+CgpBY2tlZC1ieTogVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13
aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8v
bGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
