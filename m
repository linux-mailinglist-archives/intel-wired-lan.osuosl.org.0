Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EC2721D7A0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Jul 2020 15:56:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BB6A02288E;
	Mon, 13 Jul 2020 13:56:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lRFmdWDonBNM; Mon, 13 Jul 2020 13:56:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C831A227D1;
	Mon, 13 Jul 2020 13:56:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CD8F71BF86D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jul 2020 02:55:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BFBFF2441E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jul 2020 02:55:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yOF-hAwjyMlA for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Jul 2020 02:55:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
 [209.85.222.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 4635D242F3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jul 2020 02:55:49 +0000 (UTC)
Received: by mail-qk1-f194.google.com with SMTP id 80so10912061qko.7
 for <intel-wired-lan@lists.osuosl.org>; Sun, 12 Jul 2020 19:55:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=bNXPF6+Om5R3sQ6XjurA2+A7JrWXO8Ws/6EvEMQiNak=;
 b=k1zPbJAzQYunqh3hpt/60sDyTPewxs8cn1cTgb+LBOV5hLQqh9BcF17XeFIzi+swrq
 YUR36iLZYKdhzbPpofJ6tnebgpFwx1iV97LKc+yjF8LgF1NQt3MgWUH8Jpz/nZmrLDeV
 T39vGvXfofOK/BZ1aXK3XxTaHk8GNNJ1k+IA51rG6cdco03nriGDsU89VkORRHoqetAf
 opVoc/Oc1ne1/nKaZjsWsqTfFVa5ZZA5KsDv3ugbSucRopzGIM66OX1+Eg+aLDqwxE80
 dMOESV71ADGgNDlsThGdTWo6xzRQ26K6ZTHmYZjDSJo8/19Q/styLObXA1jvokXfb7Zu
 azQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=bNXPF6+Om5R3sQ6XjurA2+A7JrWXO8Ws/6EvEMQiNak=;
 b=ghIC2B/YET+hkrQtDmpv9LzwaTHZiRefMaiLmrSBzJYkfIz2eWw7JTBn+TYB0wtUdD
 WoABnAEGfADWEZYXK3KaBoKTj8t8kXrzm+RdpakOMp0fgqrgX4rtCzUC+2+qjB4y5Yqh
 fhb4isgM+UXnTje6/h6WRaOmlZ9kFz5Q7exmcx4mXWMSnd5PJ6hdtC5tCcCSD3eV3Hgf
 doZVqDqVGi9J7z/eJ2HqwSR6KLNYtjXksOEAGMPDc8ql7c3FxgC4i1uqkNQZZm+8dVYy
 4wYjyWAiG1NPMyu7cqhUKtS66dDTDEEo7MBlpe915rm+ELBjptbuQThDA96UXB/kmQUL
 bALw==
X-Gm-Message-State: AOAM530T+NEhk+PrvB3ewMnUG/V28T9wcaFCwssBbsmL2nskckZVAd5e
 EiZsTPEKAWGxsR3R8zaV7vD+iM+u4wpvTCkdANc=
X-Google-Smtp-Source: ABdhPJy8XJNQbmL4ru60bEfVwykiVPcjm1GCJHy12OlbDD2DK8UGXnsaVrGNSnOOoXWe3VMMbY0mspgwiIiBpJBfwCo=
X-Received: by 2002:ae9:f803:: with SMTP id x3mr75827914qkh.488.1594608948228; 
 Sun, 12 Jul 2020 19:55:48 -0700 (PDT)
MIME-Version: 1.0
References: <1594462239-19596-1-git-send-email-goodluckwillcomesoon@gmail.com>
 <20200711111421.0db76fa9@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20200711111421.0db76fa9@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
From: Yahui Chen <goodluckwillcomesoon@gmail.com>
Date: Mon, 13 Jul 2020 10:55:36 +0800
Message-ID: <CAPydje9rv2cR2YZvOcYT_w4E7cvERi0cEbs7hiwLKk4Bqhk+RA@mail.gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
X-Mailman-Approved-At: Mon, 13 Jul 2020 13:56:43 +0000
Subject: Re: [Intel-wired-lan] [PATCH] xsk: ixgbe: solve the soft interrupt
 100% CPU usage when xdp rx traffic congestion
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Alexei Starovoitov <ast@kernel.org>, linux-kernel@vger.kernel.org,
 steven.zou@intel.com, intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

eGRwIHNrYi1tb2RlIGRvZXMgbm90IGhhdmUgdGhpcyBwcm9ibGVtIGJlY2F1c2UgYGl4Z2JlX2Fs
bG9jX3J4X2J1ZmZlcnNgCmFsd2F5cyByZXR1cm5zIHN1Y2Nlc3MgYW5kIGNhbiBhbHdheXMgZ2V0
IHRoZSBETUEgYWRkcmVzcyBmb3IgcGFja2V0cy4gSQp0aGluayBkcnYtbW9kZSBzaG91bGQgZG8g
dGhlIHNhbWUuCgpJZiB0aGUgZHJ2LW1vZGUgYXBwIGRvZXMgbm90IHVzZSB0aGUgd2FrZXVwIGZs
YWcsIHRoZSB4ZHAgcXVldWUncyBzb2Z0CmludGVycnVwdCBoYW5kbGVzIGZld2VyIHBhY2tldHMg
YnV0IG1heSBvY2N1cHkgMTAwJSBvZiB0aGUgQ1BVLAphY2NvcmRpbmcgdG8gdGhlIGFuYWx5c2lz
IG9mIHRoZSBwcmV2aW91cyBlbWFpbC4KCklmIHRoZSB1c2VyIEFQUCB1c2VzIHRoZSB3YWtldXAg
ZmxhZywgaXQgbWF5YmUgc2VyaW91c2x5IGFmZmVjdCBvdGhlcgpxdWV1ZXMganVzdCBiZWNhdXNl
IHRoZSBBUFAgaXMgbm90IHByb2Nlc3NpbmcgdGhlIHBhY2tldCBmYXN0IGVub3VnaC4KSW4gZXh0
cmVtZSBjYXNlcywgdGhlIEFQUCBjYW4gbm8gbG9uZ2VyIHJlY2VpdmUgcGFja2V0cywgYW5kIHBv
cnQtbGV2ZWwKZmxvdyBjb250cm9sIHdpbGwgY2F1c2Ugbm8gcGFja2V0cyB0byBiZSByZWNlaXZl
ZCBpbiBhbGwgcXVldWVzIG9mIHRoZQpuZXR3b3JrIGNhcmQuCgpBcyBhIHJlc3VsdCwgdGhlIHVz
ZXIgbmVlZHMgdG8gZXhwbGljaXRseSB0dXJuIG9mZiBmbG93IGNvbnRyb2wgb2YgbmV0d29yawpj
YXJkLCB3aGljaCBpcyB1bmZyaWVuZGx5IHRvIHVzZXJzLgoKSmFrdWIgS2ljaW5za2kgPGt1YmFA
a2VybmVsLm9yZz4g5LqOMjAyMOW5tDfmnIgxMuaXpeWRqOaXpSDkuIrljYgyOjE05YaZ6YGT77ya
Cj4KPiBPbiBTYXQsIDExIEp1bCAyMDIwIDE4OjEwOjM4ICswODAwIFlhaHVpIENoZW4gd3JvdGU6
Cj4gPiAyLiBJZiB0aGUgd2FrZXVwIG1lY2hhbmlzbSBpcyB1c2VkLCB0aGF0IGlzLCB1c2UgdGhl
Cj4gPiBgWERQX1VNRU1fVVNFU19ORUVEX1dBS0VVUGAgZmxhZy4gVGhpcyBtZXRob2QgdGFrZXMg
YWR2YW50YWdlIG9mIHRoZQo+ID4gaW50ZXJydXB0IGRlbGF5IGZ1bmN0aW9uIG9mIGl4Z2JlIHNr
aWxsZnVsbHksIHRodXMgc29sdmluZyB0aGUgcHJvYmxlbQo+ID4gdGhhdCB0aGUgc2kgQ1BVIGlz
IGFsd2F5cyAxMDAlLiBIb3dldmVyLCBpdCB3aWxsIGNhdXNlIG90aGVyIHByb2JsZW1zLgo+ID4g
VGhlIHBvcnQtbGV2ZWwgZmxvdyBjb250cm9sIHdpbGwgYmUgdHJpZ2dlcmVkIG9uIDgyNTk5LCBh
bmQgdGhlIHBhdXNlCj4gPiBmcmFtZSB3aWxsIGJlIHNlbnQgdG8gdGhlIHVwc3RyZWFtIHNlbmRl
ci4gVGhpcyB3aWxsIGFmZmVjdCB0aGUgb3RoZXIKPiA+IHBhY2tldCByZWNlaXZpbmcgcXVldWVz
IG9mIHRoZSBuZXR3b3JrIGNhcmQsIHJlc3VsdGluZyBpbiB0aGUgcGFja2V0Cj4gPiByZWNlaXZp
bmcgcmF0ZSBvZiBhbGwgcXVldWVzIGRyb3BwaW5nIHRvIDEwS3Bwcy4KPgo+IFRvIG1lIHRoZSBj
dXJyZW50IGJlaGF2aW9yIHNvdW5kcyBjb3JyZWN0Li4gaWYgeW91IGRvbid0IHdhbnQgcGF1c2UK
PiBmcmFtZXMgdG8gYmUgZ2VuZXJhdGVkIHlvdSBoYXZlIHRvIGRpc2FibGUgdGhlbSBjb21wbGV0
ZWx5LiBUaGUgcG9pbnQKPiBvZiBwYXVzZSBmcmFtZXMgaXMgdG8gcHJldmVudCBkcm9wcy4KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQt
bGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3Rz
Lm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
