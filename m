Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A828D1DBE1B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 May 2020 21:38:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B3339870A7;
	Wed, 20 May 2020 19:38:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D4z6f76m9DJ3; Wed, 20 May 2020 19:38:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6932B870F9;
	Wed, 20 May 2020 19:38:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 736ED1BF4DA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2020 17:20:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1B0D388A5B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2020 17:20:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Hf7a-o0+9bkf for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 May 2020 17:20:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6AAA988A37
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2020 17:20:28 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id w64so3706729wmg.4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2020 10:20:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=CEEuZC5hZ/NpWe9c3PvjTU8NAaLoEEVby/Q8AvDU89g=;
 b=gmjTGRdN8NvVe03NT4wd+SkIQHVvGxrH5+8sCYSnKRJuWSMINbliQ6f1LCzYjUUMQD
 cuqXcWPHGBo8kol7s63JttvLEl2k7nb7EiHJAm9M3WE0ERQezyX2vdURS9NvTOa/xSq+
 9um7Hh30IU4PCXybyhU0Sy8ujciduNUJlU7YyNnzvY0uFTAi0t2H/NbjvB8ONCHWlFLx
 DrwqYhDVd0zSyQBIj1+WRVggybgRHtvBOitqwtcqJeI4GjckIfxLIkxBDG/vpA+z2zvS
 CjIjuauGYi+Fz5qVejWZUt5vt6V9sXtpgkpuFcO2aw3w40ISXsbZr7ZD8dnSUmxNrIan
 OlqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=CEEuZC5hZ/NpWe9c3PvjTU8NAaLoEEVby/Q8AvDU89g=;
 b=e6xgSCz+5lgIH5J2ep9b0zm571uQD/oWV/vLXmFax6CdleaUiNMFpjs3F/YyxLptEB
 kpsLEh0LZ6zIwkxHN9WpzH78UHKitUjMwEfNs9f9c0/ZNNM6dn3K08kJI7FVrgzBGK8G
 oDD1udYfBqptN5enG91BQhtaofjr0ya1s8sBDh9byzlmU6BulSaC+DgipE5PP5fhy1qJ
 RFjOEkCajbcwjl/7axCIHC1pYQ2C6jk9YAxcBkJk0yIS3NY5eg5Xoek+BjLJsOJmGRM2
 XMBP9oDena2NQcYTGxwCvqdWyZd0yADoMYCn5pCp2nlPZ+MzGIAaar5+1nD3JZBragWb
 UbNw==
X-Gm-Message-State: AOAM531n9LEtRInZYpVyLlwnT7+XI/kq7kMBrEeP/6tLU3LSoby/ej6S
 xW/IBuPDflqbWKsSNd1zYuPLFcRNx+LDeqf2y/A=
X-Google-Smtp-Source: ABdhPJwwZFlKCJNhGnNYLEI9v78F2nO1RxPtZs+6cyULKs3Qp2+VMcs/+0Jb7DyDGAiYkWa1EHE1Uigmw92eXD71z1s=
X-Received: by 2002:a05:600c:d7:: with SMTP id
 u23mr5876073wmm.155.1589995226910; 
 Wed, 20 May 2020 10:20:26 -0700 (PDT)
MIME-Version: 1.0
References: <20200520094742.337678-1-bjorn.topel@gmail.com>
 <20200520094742.337678-10-bjorn.topel@gmail.com>
 <20200520100342.620a0979@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20200520100342.620a0979@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Wed, 20 May 2020 19:20:15 +0200
Message-ID: <CAJ+HfNjeF8fbHuVTg+hT7_-5obMJT_as39LahbM+M2AERmGSiw@mail.gmail.com>
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
Lm9yZz4gd3JvdGU6Cj4KPiBPbiBXZWQsIDIwIE1heSAyMDIwIDExOjQ3OjM2ICswMjAwIEJqw7Zy
biBUw7ZwZWwgd3JvdGU6Cj4gPiBGcm9tOiBCasO2cm4gVMO2cGVsIDxiam9ybi50b3BlbEBpbnRl
bC5jb20+Cj4gPgo+ID4gUmVtb3ZlIE1FTV9UWVBFX1pFUk9fQ09QWSBpbiBmYXZvciBvZiB0aGUg
bmV3IE1FTV9UWVBFX1hTS19CVUZGX1BPT0wKPiA+IEFQSXMuCj4gPgo+ID4gQ2M6IGludGVsLXdp
cmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnCj4gPiBTaWduZWQtb2ZmLWJ5OiBNYWNpZWogRmlqYWxr
b3dza2kgPG1hY2llai5maWphbGtvd3NraUBpbnRlbC5jb20+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBC
asO2cm4gVMO2cGVsIDxiam9ybi50b3BlbEBpbnRlbC5jb20+Cj4KPiBwYXRjaCA4IGFsc28gaGFz
IGEgd2FybmluZyBJIGNhbid0IGZpZ3VyZSBvdXQuCj4KPiBCdXQgaGVyZSAocGF0Y2ggOSkgaXQn
cyBxdWl0ZSBjbGVhcjoKPgo+IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfeHNr
LmM6NDE0OiB3YXJuaW5nOiBFeGNlc3MgZnVuY3Rpb24gcGFyYW1ldGVyICdhbGxvYycgZGVzY3Jp
cHRpb24gaW4gJ2ljZV9hbGxvY19yeF9idWZzX3pjJwo+IGRyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2ljZS9pY2VfeHNrLmM6NDgwOiB3YXJuaW5nOiBFeGNlc3MgZnVuY3Rpb24gcGFyYW1ldGVy
ICd4ZHAnIGRlc2NyaXB0aW9uIGluICdpY2VfY29uc3RydWN0X3NrYl96YycKClRoYW5rcyEgSSds
bCBjbGVhbiB0aGF0IHVwLgoKQmrDtnJuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQt
bGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtd2lyZWQtbGFuCg==
