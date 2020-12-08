Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E53A52D31FA
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Dec 2020 19:18:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9134787734;
	Tue,  8 Dec 2020 18:18:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Cz8IxKxhjDh5; Tue,  8 Dec 2020 18:18:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 49AC587454;
	Tue,  8 Dec 2020 18:18:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9D6D21BF27E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 18:18:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 99527871D7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 18:18:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sYytafU_TW01 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Dec 2020 18:18:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BBFE5871ED
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 18:18:51 +0000 (UTC)
Date: Tue, 8 Dec 2020 10:18:49 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1607451531;
 bh=rbe/rLwaT+iw+/a/kAhtCx9Bs+M3BMplKpLq931S3ik=;
 h=From:To:Cc:Subject:In-Reply-To:References:From;
 b=GYeuq0TVNdvP60qxpoB8pa6y7uf4ONnRgH/64Q80F7jlM8+qeUsJC84qjSdjV1/JY
 oicbiju9CG5bAGD++JD2DmXF3lCu8fgWwCfyWELsjRR0f0AsY3dH+CoXo/DuSbj5EY
 lXdXDInTQDZfUF0A83qPGyzivhowMA7xSLK7k6X7hCKFVL6U5Hj6B3gqMaiFTA7LJ4
 5kS8tDbsoWi/biWaj+W939ZAXyG5N7Fl9PCy15PoBg4Vvr2XTzRbr+7cptZ4cpfoc1
 KfpUsNhbT6xXNK4GWjJX7HGKzFJen9oBlCO9UoBFGn43io87nvV7HEuvKnrB9BzmVT
 xBFJfbcCbyDhg==
From: Jakub Kicinski <kuba@kernel.org>
To: Mario Limonciello <Mario.Limonciello@dell.com>
Message-ID: <20201208101849.5a17b469@kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com>
In-Reply-To: <354075ae-f605-eb01-4cf9-a66e4eb7b192@dell.com>
References: <20201204200920.133780-1-mario.limonciello@dell.com>
 <20201204200920.133780-2-mario.limonciello@dell.com>
 <354075ae-f605-eb01-4cf9-a66e4eb7b192@dell.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v3 1/7] e1000e: fix S0ix flow to allow
 S0i3.2 subset entry
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
Cc: Linux PM <linux-pm@vger.kernel.org>, Netdev <netdev@vger.kernel.org>,
 Perry.Yuan@dell.com, Yijun.Shen@dell.com, linux-kernel@vger.kernel.org,
 anthony.wong@canonical.com, intel-wired-lan@lists.osuosl.org,
 David Miller <davem@davemloft.net>, Stefan Assmann <sassmann@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlLCA4IERlYyAyMDIwIDExOjI0OjE3IC0wNjAwIE1hcmlvIExpbW9uY2llbGxvIHdyb3Rl
Ogo+IE9uIDEyLzQvMjAgMjowOSBQTSwgTWFyaW8gTGltb25jaWVsbG8gd3JvdGU6Cj4gPiBGcm9t
OiBWaXRhbHkgTGlmc2hpdHMgPHZpdGFseS5saWZzaGl0c0BpbnRlbC5jb20+Cj4gPgo+ID4gQ2hh
bmdlZCBhIGNvbmZpZ3VyYXRpb24gaW4gdGhlIGZsb3dzIHRvIGFsaWduIHdpdGgKPiA+IGFyY2hp
dGVjdHVyZSByZXF1aXJlbWVudHMgdG8gYWNoaWV2ZSBTMGkzLjIgc3Vic3RhdGUuCj4gPgo+ID4g
QWxzbyBmaXhlZCBhIHR5cG8gaW4gdGhlIHByZXZpb3VzIGNvbW1pdCA2MzJmYmQ1ZWI1YjAKPiA+
ICgiZTEwMDBlOiBmaXggUzBpeCBmbG93cyBmb3IgY2FibGUgY29ubmVjdGVkIGNhc2UiKS4KPiA+
Cj4gPiBTaWduZWQtb2ZmLWJ5OiBWaXRhbHkgTGlmc2hpdHMgPHZpdGFseS5saWZzaGl0c0BpbnRl
bC5jb20+Cj4gPiBUZXN0ZWQtYnk6IEFhcm9uIEJyb3duIDxhYXJvbi5mLmJyb3duQGludGVsLmNv
bT4KPiA+IFNpZ25lZC1vZmYtYnk6IFRvbnkgTmd1eWVuIDxhbnRob255Lmwubmd1eWVuQGludGVs
LmNvbT4KPiA+IC0tLQo+ID4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvbmV0
ZGV2LmMgfCA4ICsrKystLS0tCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyks
IDQgZGVsZXRpb25zKC0pICAKPiAKPiBJIHJlYWxpemUgdGhhdCB0aGUgc2VyaWVzIGlzIHN0aWxs
IHVuZGVyIGRpc2N1c3Npb24sIGJ1dCBJIGludGVudGlvbmFsbHkgCj4gbW92ZWQgdGhpcwo+IHBh
dGNoIHRvIHRoZSBmcm9udCBvZiB0aGUgc2VyaWVzIHNvIGl0IGNhbiBiZSBwdWxsZWQgaW4gZXZl
biBpZiB0aGUgCj4gb3RoZXJzIGFyZSBzdGlsbAo+IGRpc2N1c3NlZC4KPiAKPiBARGF2aWQgTWls
bGVyOgo+IFRoaXMgcGFydGljdWxhciBwYXRjaCBpcyBtb3JlIGltcG9ydGFudCB0aGFuIHRoZSBy
ZXN0LsKgIEl0IGFjdHVhbGx5IAo+IGZpeGVzIGlzc3Vlcwo+IG9uIHRoZSBub24tTUUgaTIxOVYg
YXMgd2VsbC7CoCBDYW4gdGhpcyBvbmUgYmUgcXVldWVkIHVwIGFuZCB3ZSBjYW4ga2VlcAo+IGRp
c2N1c3NpbmcgdGhlIHJlc3Q/CgpOb3Qgc3VyZSBEYXZlIHdpbGwgbm90aWNlIHRoaXMgZGlzY3Vz
c2lvbiwgYmVzdCBpZiB5b3UgcmVwb3N0IHRoaXMgcGF0Y2gKc2VwYXJhdGVseS4gSWYgaXQncyBh
IGZpeCB0aGF0IHNob3VsZCBiZSBiYWNrcG9ydGVkIHRvIHN0YWJsZSBtYWtlIHN1cmUKeW91IGFk
ZCBhIEZpeGVzIHRhZy4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3Ns
Lm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJl
ZC1sYW4K
