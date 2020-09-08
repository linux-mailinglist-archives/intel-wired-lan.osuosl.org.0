Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDF4A2619DE
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Sep 2020 20:28:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6766887373;
	Tue,  8 Sep 2020 18:28:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xxRE3Qo4+YwW; Tue,  8 Sep 2020 18:28:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C5E5C87360;
	Tue,  8 Sep 2020 18:28:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 387E51BF470
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Sep 2020 18:28:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 20DC82107F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Sep 2020 18:28:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FaPmOrfyuysF for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Sep 2020 18:28:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by silver.osuosl.org (Postfix) with ESMTPS id E3B5A204EA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Sep 2020 18:28:18 +0000 (UTC)
IronPort-SDR: XSi0Olx3MV0bYPhsBwh/AVu6hySaOYLNHFioSK57Cvh56SfLAT+SBDGmdsn3bhYUPXZj75/7Gw
 P2A/ufl+ZFOw==
X-IronPort-AV: E=McAfee;i="6000,8403,9738"; a="138245908"
X-IronPort-AV: E=Sophos;i="5.76,406,1592895600"; d="scan'208";a="138245908"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2020 11:28:17 -0700
IronPort-SDR: rIk4qiBYBbFqOusR2NS4novT1JNqm7J1bFNOuDpX6Fzl17TOITXUt2bnEVUcysEaTBJaFqXxuw
 PnYgv8M8CM1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,406,1592895600"; d="scan'208";a="284608686"
Received: from pgierasi-mobl.ger.corp.intel.com (HELO
 btopel-mobl.ger.intel.com) ([10.252.39.2])
 by fmsmga007.fm.intel.com with ESMTP; 08 Sep 2020 11:28:14 -0700
To: Jakub Kicinski <kuba@kernel.org>
References: <20200904135332.60259-1-bjorn.topel@gmail.com>
 <20200904162751.632c4443@carbon>
 <27e05518-99c6-15e2-b801-cbc0310630ef@intel.com>
 <20200904165837.16d8ecfd@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <1d2e781e-b26d-4cf0-0178-25b8835dbe26@intel.com>
 <20200907114055.27c95483@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <8f698ac5-916f-9bb0-cce2-f00fba6ba407@intel.com>
 <20200908102438.28351aab@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>
Message-ID: <12536115-3dae-1efa-5c0d-34fc951fca48@intel.com>
Date: Tue, 8 Sep 2020 20:28:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200908102438.28351aab@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 0/6] xsk: exit NAPI loop when
 AF_XDP Rx ring is full
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
Cc: Eric Dumazet <eric.dumazet@gmail.com>, daniel@iogearbox.net,
 Jesper Dangaard Brouer <brouer@redhat.com>, ast@kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, bpf@vger.kernel.org,
 davem@davemloft.net, magnus.karlsson@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMjAyMC0wOS0wOCAxOToyNCwgSmFrdWIgS2ljaW5za2kgd3JvdGU6Cj4+IEknbGwgc3RhcnQg
cGxheWluZyBhcm91bmQgYSBiaXQsIGJ1dCBhZ2FpbiwgSSB0aGluayB0aGlzIHNpbXBsZSBzZXJp
ZXMKPj4gc2hvdWxkIGdvIGluIGp1c3QgdG8gbWFrZSBBRl9YRFAgc2luZ2xlIGNvcmUgdXNhYmxl
KnRvZGF5Ki4KPiBObyBvYmplY3Rpb24gZnJvbSBtZS4KClRoYW5rcyBKYWt1YiwgYnV0IGFzIHlv
dSAocHJvYmFibHkpIG5vdGljZWQgaW4gdGhlIG90aGVyIHRocmVhZCBNYXhpbSAKaGFkIHNvbWUg
dmFsaWQgY29uY2VybnMuIExldCdzIGRyb3AgdGhpcyBmb3Igbm93LCBhbmQgSSdsbCBnZXQgYmFj
ayAKYWZ0ZXIgc29tZSBleHBlcmltZW50YXRpb24vaGFja2luZy4KCgpBZ2FpbiwgdGhhbmtzIGZv
ciB0aGUgaWRlYXMhIFZlcnkgbXVjaCBhcHByZWNpYXRlZCEKQmrDtnJuCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5n
IGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
