Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 58C701DA0DE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 May 2020 21:19:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1895A86E22;
	Tue, 19 May 2020 19:19:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I-JKh09NnSUK; Tue, 19 May 2020 19:19:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4C3B586DF4;
	Tue, 19 May 2020 19:19:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 964CB1BF5A7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 17:06:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 918F886D03
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 17:06:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oRDZt-59enRp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 May 2020 17:06:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D13D086B74
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 17:06:39 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id u1so3030167wmn.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 10:06:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=b0b+DAWsimTwHxmy06gC1qGATqHB41HGKjKMHuwB2uU=;
 b=MfGRtbZZN/6k9+wrlP2zSdODee8Kn2QMUL/8Ac6tS6yHb3r8m6+MdCT9zPTPzeU1bh
 iBaeIRXuJeWmrcRrYr2Ncl75OrlrAjpsKpnhD3i8CWAZhepgZGpfutsOGBg3lLIE0vGb
 6Sj+AbGtcN1W7daBksFLJO2r8GovEcfrwfPUdj+253ep5uVVDZ96wj7Hy92GkDH02Bu/
 c0F2eRV3e9oR49N/mS6eQAST8HlLpI9bycnb06i9dISfkaFo5b+2RZpgWr8p9O8vYUdW
 0fj21SkwZGgas8XZUAY0JS4YGRhjBUMVZhyT2YA73HmIIdtcJeA05E69kFQdG28feQ5J
 ShHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=b0b+DAWsimTwHxmy06gC1qGATqHB41HGKjKMHuwB2uU=;
 b=oTLx7APtEOdfRUZOftkIdPFTZi85MO/lWPhnCiKSeISo6NtzbeixG9ab/ClbZHmj36
 h1WCo7Id4xEF3Xjqa6nJJaAXz5OZ8rFCAIb7I3ihHcx3qHoHnyZfJJT+DgEA23GAjjhh
 8NFXB64CVwpCTVUvqkc3c6OHnfzXGAXR6MA7TNxAWlyGx5XAfkTRu1iAxclmQG9x5nha
 vpProTD5uIzp04Djc3ugOI5saMSZ0Ckb4M+e9qGbEYQAmshevPSjUivV8m8hxPDGuCsN
 BpuWH7bhNR5c9JGhQyx7ixv5TPIl16ZuU/Q06TVQr/S3PW0WmIE2nw5ZRCC5rbizV/dv
 VuIg==
X-Gm-Message-State: AOAM530FUA0EI7ch7hlLRsq7jUZPxu6T7FIoM+RLGoOD2s9jqXpmG4kS
 KiWh3D/HzzDiiG1cjJvHn8cNgn4PH6sHj9CIk8s=
X-Google-Smtp-Source: ABdhPJxy2Vuubx4taPhjA38NN0S65kjz787Mc5Ytyn12i7oNvkxHFWadGOZ8hPI5SvYsnQIOwXmu+TeL1T73xs+taxk=
X-Received: by 2002:a1c:a557:: with SMTP id o84mr358436wme.165.1589907998184; 
 Tue, 19 May 2020 10:06:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200519085724.294949-8-bjorn.topel@gmail.com>
 <202005192351.j1H08VpV%lkp@intel.com>
 <c81b36a0-11dd-4b7f-fad8-85f31dced58c@intel.com>
 <20200519095539.570323c8@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20200519095539.570323c8@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Tue, 19 May 2020 19:06:26 +0200
Message-ID: <CAJ+HfNiunSSR8yY3_wHdxW71kmxMXhsRg2TRv+OVvSg9UZCFWw@mail.gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
X-Mailman-Approved-At: Tue, 19 May 2020 19:19:18 +0000
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v3 07/15] i40e: separate
 kernel allocated rx_bi rings from AF_XDP rings
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
Cc: Maxim Mikityanskiy <maximmi@mellanox.com>, kbuild-all@lists.01.org,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Netdev <netdev@vger.kernel.org>,
 Alexei Starovoitov <ast@kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jonathan Lemon <jonathan.lemon@gmail.com>, "Fijalkowski,
 Maciej" <maciej.fijalkowski@intel.com>, bpf <bpf@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 David Miller <davem@davemloft.net>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlLCAxOSBNYXkgMjAyMCBhdCAxODo1NSwgSmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVs
Lm9yZz4gd3JvdGU6Cj4KWy4uLl0KPgo+IFdoaWxlIGF0IGl0IEkgYWxzbyBnZXQgdGhpcyBvbiBw
YXRjaCAxMSAoZ2NjLTEwLCBXPTEpOgo+Cj4gZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVsbGFub3gv
bWx4NS9jb3JlL2VuX21haW4uYzogSW4gZnVuY3Rpb24gbWx4NWVfYWxsb2NfcnE6Cj4gZHJpdmVy
cy9uZXQvZXRoZXJuZXQvbWVsbGFub3gvbWx4NS9jb3JlL2VuX21haW4uYzozNzY6Njogd2Fybmlu
ZzogdmFyaWFibGUgbnVtX3hza19mcmFtZXMgc2V0IGJ1dCBub3QgdXNlZCBbLVd1bnVzZWQtYnV0
LXNldC12YXJpYWJsZV0KPiAgICAzNzYgfCAgdTMyIG51bV94c2tfZnJhbWVzID0gMDsKPiAgICAg
ICAgfCAgICAgIF5+fn5+fn5+fn5+fn5+CgpBaCwgeWVzLiBUaGFua3MhCgpJJ2xsIHdhaXQgdW50
aWwgdG9tb3Jyb3cgZm9yIG1vcmUgaW5wdXQsIGFuZCB0aGVuIGRvIGEgcmVzcGluLgoKCkJqw7Zy
bgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13
aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8v
bGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
