Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ED3E1DBE1F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 May 2020 21:38:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9B7798833D;
	Wed, 20 May 2020 19:38:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yJBabLXihilf; Wed, 20 May 2020 19:38:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A8FED8832E;
	Wed, 20 May 2020 19:38:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 31D8C1BF414
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2020 18:49:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2DA1686AFF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2020 18:49:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 87zq6sMXFc1K for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 May 2020 18:49:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6DCFF86B9E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2020 18:49:21 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id z72so3989548wmc.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2020 11:49:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=9MAZUaH2FpicdvVI3HcykUlAGlRNDh7OXyxReOax4TM=;
 b=r7zQmQSNU1Fo1td8Pe/7x/xmeyQTZotByhyQ+YR2sGFOX+XK1mWv6zLbGS9yiAbqKX
 W3yhBBrTZCDH2crFbO06NgMNkPYQi/gdUSJghnXgyh/46c43dq3tVyBHY3tlx25CuShI
 TFz77nWTFNazE3FJ0F77apYOLZrDPqLmxEhMcy1LjOJm2qSQX7w0RUdzIYckcV9UnfuG
 amT+0RiM1npCuo6NwH84rXTUrbYQULf2lk4L+l17iOt6rhvdFttdHu4O+LBSvtG1U1f/
 4J7DXaYbLzow59uykTpyPlzEUY97tLd0ZC3Jjqv7pBjOQLTgo0fHK767h6MVbH1RvQyb
 Begw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=9MAZUaH2FpicdvVI3HcykUlAGlRNDh7OXyxReOax4TM=;
 b=SKDgnxGMFj2qU9pLw7tnaBhq087uuriBKwjd5LXGS4nNgKELSe/EYwyTjFDXujnVgL
 Yuf/y6e4bmqsNwHyTrIxS2jNLnQAdqlAKi1oLGx4iaCrbja80J1kF4AAiTIx0E6ZlTrQ
 lyDEXwOsV40WaQfYmkaQh9CinoJbYQxvjm0GSaWbfyYxnSsj3wyck3tbxv3fw+pxF4K7
 0nfr6HWoHrP9YxZDVO3GSEUOA2F8OwNIPZ/u2gTAZjGF039Hgm+zZY253sloSXclaRre
 7cQ00F0C5rhh+zbm+x2FdFBiE6drePUVToGaIYR+aDwtdKMouOTXafX2v9svLPU3EyJe
 yeRw==
X-Gm-Message-State: AOAM5334QIwah6k2RZAAQ7qI5Ng43UWvycv1vHIIy9hTINhkbujb8euG
 9r6i/dewW66ReuxJMwoCfMoy2/d76qdhXa/oR2o=
X-Google-Smtp-Source: ABdhPJxLkp2Xmd8sAvxhzriGAbPzwFmT1KKfc9VIbsXtX2tfnURnEVwfwFYrt1091BD4Y3W3QMHnigOJ5XKZPAFzGsI=
X-Received: by 2002:a7b:cfc9:: with SMTP id f9mr5686176wmm.107.1590000559656; 
 Wed, 20 May 2020 11:49:19 -0700 (PDT)
MIME-Version: 1.0
References: <20200520094742.337678-1-bjorn.topel@gmail.com>
 <20200520094742.337678-10-bjorn.topel@gmail.com>
 <20200520100342.620a0979@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20200520100342.620a0979@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Wed, 20 May 2020 20:49:08 +0200
Message-ID: <CAJ+HfNiy3YQmOEs0OzM+LLU6h0vM40gM7eHrVNoH_PFCOdtSZw@mail.gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
X-Mailman-Approved-At: Wed, 20 May 2020 19:38:45 +0000
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v4 09/15] ice,
 xsk: migrate to new MEM_TYPE_XSK_BUFF_POOL
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
Cc: Maxim Mikityanskiy <maximmi@mellanox.com>, "Fijalkowski,
 Maciej" <maciej.fijalkowski@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Netdev <netdev@vger.kernel.org>,
 Alexei Starovoitov <ast@kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jonathan Lemon <jonathan.lemon@gmail.com>, bpf <bpf@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 David Miller <davem@davemloft.net>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gV2VkLCAyMCBNYXkgMjAyMCBhdCAxOTowMywgSmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVs
Lm9yZz4gd3JvdGU6Cj4KWy4uLl0KPgo+IHBhdGNoIDggYWxzbyBoYXMgYSB3YXJuaW5nIEkgY2Fu
J3QgZmlndXJlIG91dC4KPgoKRm91bmQgYW5kIGZpeGVkLiBUaGFua3MgSmFrdWIhCgoKQmrDtnJu
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdp
cmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9s
aXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
