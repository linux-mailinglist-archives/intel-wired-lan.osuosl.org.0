Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C1875685DD
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Jul 2019 11:01:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4A29285CD0;
	Mon, 15 Jul 2019 09:01:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id omJu9lDIabkq; Mon, 15 Jul 2019 09:01:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8698685CBC;
	Mon, 15 Jul 2019 09:01:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5E89C1BF95A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jul 2019 09:01:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 589BA85C9F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jul 2019 09:01:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zd-iyLl_vjqT for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Jul 2019 09:01:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2452B85CA3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jul 2019 09:01:08 +0000 (UTC)
Received: from mail-pg1-f200.google.com ([209.85.215.200])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <kai.heng.feng@canonical.com>)
 id 1hmwr4-0006kw-P9
 for intel-wired-lan@lists.osuosl.org; Mon, 15 Jul 2019 09:01:06 +0000
Received: by mail-pg1-f200.google.com with SMTP id t19so10151026pgh.6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jul 2019 02:01:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=MOsl4AhIsunHwA3k/fkhj25jEpHtngxyDrwZz01koT0=;
 b=hTDvTH62KeRzUB0scPmLOIbGF7Sb+U4jTcB85dDZUbpD//xZKGelVVZoPcRiADzD+h
 77ZgPYsK63hnkr9vuMTIRXyPAWbFbF6ULXRsDWgqQB7j3ck+CqxSZCRR4k0zKJ9HOGDJ
 V4JtWe6NBPWYi8pSqYO3U5od9t19Mm6UDh1KNclVCZoP1JxD9ZFsOcU55apfWvvCSkBg
 qRKIq4+kT2q6B5K1IJ2PD0a1dC3PTExSVQSlpGFL8AVOz5qnch+0wn9VEQ/8Zu+WNujV
 BoxjR6IdA9XrGL2ByoAL3SZ7bB9VHJrTQNnzp+tyw17zMjx8SCmx3bhoanrAByV7kXN5
 T3VQ==
X-Gm-Message-State: APjAAAVmSRf3SwVfHvDwiJnIGGKfrabxN/VN+2WzmPupcjy38BmTjHNO
 xH3eZp3sMjKPu6JQEBhfgbNuqJVbcUggJMijU1mGi0IAULNii/rYTsvI+lv4k/3Sf5bdWo0oimW
 lxfWvkzV6kCeN6O3LVAj/nPzvdadId34GvicK+vVY9LIbUM8=
X-Received: by 2002:a63:3d8f:: with SMTP id
 k137mr26092749pga.337.1563181265429; 
 Mon, 15 Jul 2019 02:01:05 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw0AEvG35y4C+S8NXLLv1mZ8r7lerqI602RiHBwzppSmKP6ahfLaL+QdL1GtKyDJq0iKsYY4g==
X-Received: by 2002:a63:3d8f:: with SMTP id
 k137mr26092703pga.337.1563181264969; 
 Mon, 15 Jul 2019 02:01:04 -0700 (PDT)
Received: from [10.101.46.105] (61-220-137-37.HINET-IP.hinet.net.
 [61.220.137.37])
 by smtp.gmail.com with ESMTPSA id k3sm13854510pgo.81.2019.07.15.02.01.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 02:01:04 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
From: Kai Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <017771d5-f168-493a-46a1-88e513941ba1@molgen.mpg.de>
Date: Mon, 15 Jul 2019 17:00:58 +0800
Message-Id: <F9859C57-4F6D-4685-B4B6-D1D7DCB50D27@canonical.com>
References: <20190715084355.9962-1-kai.heng.feng@canonical.com>
 <017771d5-f168-493a-46a1-88e513941ba1@molgen.mpg.de>
To: Paul Menzel <pmenzel@molgen.mpg.de>
X-Mailer: Apple Mail (2.3445.104.11)
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: Make speed detection on
 hotplugging cable more reliable
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

YXQgNDo1MiBQTSwgUGF1bCBNZW56ZWwgPHBtZW56ZWxAbW9sZ2VuLm1wZy5kZT4gd3JvdGU6Cgo+
IERlYXIgS2FpLUhlbmcsCj4KPgo+IFRoYW5rIHlvdSBmb3IgdGhlIHBhdGNoLgo+Cj4gT24gNy8x
NS8xOSAxMDo0MyBBTSwgS2FpLUhlbmcgRmVuZyB3cm90ZToKPj4gQWZ0ZXIgaG90cGx1Z2dpbmcg
YW4gMUdicHMgZXRoZXJuZXQgY2FibGUgd2l0aCAxR2JwcyBsaW5rIHBhcnRuZXIsIHRoZQo+PiBN
SUlfQk1TUiBtYXkgcmVwb3J0cyAxME1icHMsIHJlbmRlcnMgdGhlIG5ldHdvcmsgcmF0aGVyIHNs
b3cuCj4KPiBzL21heSByZXBvcnRzL21heSByZXBvcnQvCj4gcy9yZW5kZXJzL3JlbmRlcmluZy8K
CkFwcGFyZW50bHkgRW5nbGlzaCBpc27igJl0IG15IG1vdGhlciB0b25ndWUgOykKCj4KPj4gVGhl
IGlzc3VlIGhhcyBtdWNoIGxvd2VyIGZhaWwgcmF0ZSBhZnRlciBjb21taXQgNTk2NTNlNjQ5N2Qx
ICgiZTEwMDBlOgo+PiBNYWtlIHdhdGNoZG9nIHVzZSBkZWxheWVkIHdvcmsiKSwgd2hpY2ggZXNz
c2VudGlhbGx5IGludHJvZHVjZXMgc29tZQo+Cj4gZXNzZW50aWFsbHkKCk9rLgoKPgo+PiBkZWxh
eSBiZWZvcmUgcnVubmluZyB0aGUgd2F0Y2hkb2cgdGFzay4KPj4KPj4gQnV0IHRoZXJlJ3Mgc3Rp
bGwgYSBjaGFuY2UgdGhhdCB0aGUgaG90cGx1Z2dpbmcgZXZlbnQgYW5kIHRoZSBxdWV1ZWQKPj4g
d2F0Y2hkb2cgdGFzayBnZXRzIHJ1biBhdCB0aGUgc2FtZSB0aW1lLCB0aGVuIHRoZSBvcmlnaW5h
bCBpc3N1ZSBjYW4gYmUKPj4gb2JzZXJ2ZWQgb25jZSBhZ2Fpbi4KPj4KPj4gU28gbGV0J3MgdXNl
IG1vZF9kZWxheWVkX3dvcmsoKSB0byBhZGQgYSBkZXRlcm1pbmlzdGljIDEgc2Vjb25kIGRlbGF5
Cj4+IGJlZm9yZSBydW5uaW5nIHdhdGNoZG9nIHRhc2ssIGFmdGVyIGFuIGludGVycnVwdC4KPgo+
IEkgYW0gbm90IGNsZWFyIGFib3V0IHRoZSBlZmZlY3RzIGZvciB0aGUgdXNlci4gQ291bGQgeW91
IGVsYWJvcmF0ZQo+IHBsZWFzZT8gRG9lcyB0aGUgbGluayBub3cgY29tZSB1cCB1cCB0byBvbmUg
c2Vjb25kIGxhdGVyPwoKWWVzLCB0aGUgbGluayB3aWxsIGJlIHVwIG9uIGEgZml4ZWQgb25lIHNl
Y29uZCBsYXRlci4KClRoZSBkZWxheSB2YXJpZXMgYmV0d2VlbiAwIHRvIDIgc2Vjb25kcyB3aXRo
b3V0IHRoaXMgcGF0Y2guCgo+Cj4+IFNpZ25lZC1vZmYtYnk6IEthaS1IZW5nIEZlbmcgPGthaS5o
ZW5nLmZlbmdAY2Fub25pY2FsLmNvbT4KPgo+IEFueSBidWcgVVJMPwoKSWYgbWFpbnRhaW5lcnMg
dGhpbmsgaXTigJlzIG5lY2Vzc2FyeSB0aGVuIEnigJlsbCBmaWxlIG9uZS4KCkthaS1IZW5nCgo+
Cj4+IC0tLQo+PiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL25ldGRldi5jIHwg
MTIgKysrKysrLS0tLS0tCj4+ICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA2IGRl
bGV0aW9ucygtKQo+Cj4KPiBLaW5kIHJlZ2FyZHMsCj4KPiBQYXVsCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcg
bGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
