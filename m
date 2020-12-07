Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 251652D1001
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Dec 2020 13:04:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C7ADC8734F;
	Mon,  7 Dec 2020 12:04:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vvmPA3UJFn1v; Mon,  7 Dec 2020 12:04:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 24D8C872FE;
	Mon,  7 Dec 2020 12:04:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4840E1BF3D0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Dec 2020 12:04:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3DB4686CD2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Dec 2020 12:04:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mA35ec_Yd4KP for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Dec 2020 12:04:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 736AB85F18
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Dec 2020 12:04:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1607342675;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=xKBc/kacQmGGn7XlTj/M2VBB1nEwApl9gm6N8sl35Jo=;
 b=QwIfIXqobkoNIViX0eHUKOguIt7n8ZWaXeNITtH4SPkkIoi6kuIC22rauChrJjcDnr02Dl
 6iikyYD6TtqzUcYre/uURuTt5XEwV5yrKIR7aPXQMQjjUYx9oi6Ajp8AoTzBKLjyDJrur/
 M21S/TNC//MVUhQA/3sZWTfqN4eOCdk=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-94-2USqZNqcOYipUx84JZkVXA-1; Mon, 07 Dec 2020 07:04:33 -0500
X-MC-Unique: 2USqZNqcOYipUx84JZkVXA-1
Received: by mail-wr1-f70.google.com with SMTP id i4so1398250wrm.21
 for <intel-wired-lan@lists.osuosl.org>; Mon, 07 Dec 2020 04:04:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=nlAEFvUMokOg0a4hoz6sBDTY3/sieYinmp5t9vlfqFw=;
 b=Q5FxdfrjA9DoB4nH8ZOynckLhqLd/j/+jY9CMPrqxhun59ZX9phCD8QpWtp11WKiEP
 +OWKjTm+fSXDzjYseBl942f6XZJyLiiK97RY1oE7Ax4lQsriKuMzZLJqAdWjsYzuXMte
 74z7UaWc6DK4zJKRd+u661HMbLrKzmHHgWyYhk3xGz8G8gT+9SL/66L+/AYSZhczAWDp
 OljPIHSbA92GzhFXWDUPlFkBgSxctA2LWXCcxzlj28In5MTaY3Ccg28td3sciEU3jJ+s
 1pTqAv6xehIq2zYMdoLGyJ4da+NSSbLG1iXe1GH5EYDX8H7ntN6GOe4Y7GrE/cX79Yhm
 aRqA==
X-Gm-Message-State: AOAM531o4asDxxCUnWLg5k48Jox7B080eMY10RwXvCFboK3asQAlfce0
 L4uRxPdtzwS0r7n6wUnJ204fffDhElWwQZOa5Ppj/Q0w6U58aMIcsVmqDSsc2ccv+/jm33I/7i/
 mqfS1c5nCEAO2sHhl4bw103pGnXRD5A==
X-Received: by 2002:a5d:488d:: with SMTP id g13mr19054306wrq.274.1607342672439; 
 Mon, 07 Dec 2020 04:04:32 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzkE97umJrIjk5fQmH4C/2ZWdQyq7TxQSVYWyo/ZFQmsbfNtoEhiAj2EV6sbSopor8jcG3epQ==
X-Received: by 2002:a5d:488d:: with SMTP id g13mr19054259wrq.274.1607342672089; 
 Mon, 07 Dec 2020 04:04:32 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
 by smtp.gmail.com with ESMTPSA id a65sm13974526wmc.35.2020.12.07.04.04.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Dec 2020 04:04:31 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 070881843F5; Mon,  7 Dec 2020 13:04:31 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Jakub Kicinski <kuba@kernel.org>
In-Reply-To: <20201204112259.7f769952@kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com>
References: <20201204102901.109709-1-marekx.majtyka@intel.com>
 <20201204092012.720b53bf@kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com>
 <87k0tx7aa5.fsf@toke.dk>
 <20201204112259.7f769952@kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Mon, 07 Dec 2020 13:04:30 +0100
Message-ID: <87tusx6cvl.fsf@toke.dk>
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=toke@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-wired-lan] [PATCH v2 bpf 0/5] New netdev feature flags
 for XDP
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
Cc: maciejromanfijalkowski@gmail.com, andrii.nakryiko@gmail.com,
 hawk@kernel.org, daniel@iogearbox.net, netdev@vger.kernel.org, ast@kernel.org,
 Marek Majtyka <marekx.majtyka@intel.com>, alardam@gmail.com,
 intel-wired-lan@lists.osuosl.org, jonathan.lemon@gmail.com,
 bpf@vger.kernel.org, bjorn.topel@intel.com, davem@davemloft.net,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz4gd3JpdGVzOgoKPiBPbiBGcmksIDA0IERl
YyAyMDIwIDE4OjI2OjEwICswMTAwIFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiB3cm90ZToKPj4g
SmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz4gd3JpdGVzOgo+PiAKPj4gPiBPbiBGcmks
ICA0IERlYyAyMDIwIDExOjI4OjU2ICswMTAwIGFsYXJkYW1AZ21haWwuY29tIHdyb3RlOiAgCj4+
ID4+ICAqIEV4dGVuZCBldGh0b29sIG5ldGxpbmsgaW50ZXJmYWNlIGluIG9yZGVyIHRvIGdldCBh
Y2Nlc3MgdG8gdGhlIFhEUAo+PiA+PiAgICBiaXRtYXAgKFhEUF9QUk9QRVJUSUVTX0dFVCkuIFtU
b2tlXSAgCj4+ID4KPj4gPiBUaGF0J3MgYSBnb29kIGRpcmVjdGlvbiwgYnV0IEkgZG9uJ3Qgc2Vl
IHdoeSBYRFAgY2FwcyBiZWxvbmcgaW4gZXRodG9vbAo+PiA+IGF0IGFsbD8gV2UgdXNlIHJ0bmV0
bGluayB0byBtYW5hZ2UgdGhlIHByb2dzLi4uICAKPj4gCj4+IFlvdSBub3JtYWxseSB1c2UgZXRo
dG9vbCB0byBnZXQgYWxsIHRoZSBvdGhlciBmZWF0dXJlcyBhIGRldmljZSBzdXBwb3J0LAo+PiBk
b24ndCB5b3U/Cj4KPiBOb3QgcmVhbGx5LCBwbGVhc2UgdGFrZSBhIGxvb2sgYXQgYWxsIHRoZSBJ
RkxBIGF0dHJpYnV0ZXMuIFRoZXJlJ3MgCj4gYSBidW5jaCBvZiBjYXBhYmlsaXRpZXMgdGhlcmUu
CgpBaCwgcmlnaHQsIFRJTC4gV2VsbCwgcHV0dGluZyB0aGlzIG5ldyBwcm9wZXJ0eSBpbiBydG5l
dGxpbmsgaW5zdGVhZCBvZgpldGh0b29sIGlzIGZpbmUgYnkgbWUgYXMgd2VsbCA6KQoKLVRva2UK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdp
cmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9s
aXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
