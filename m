Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CF4633B6F0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Mar 2021 15:00:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E21B56F530;
	Mon, 15 Mar 2021 14:00:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Nu1_4ldiIvTs; Mon, 15 Mar 2021 14:00:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EC5DB6F565;
	Mon, 15 Mar 2021 14:00:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F296B1BF966
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 03:52:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DFB628348C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 03:52:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zEtY0GGTzcV3 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Mar 2021 03:52:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A068783459
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 03:52:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1615780343;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=iaINR4+J/WQmMj/Rt87A6ow5gujrBEiTkrmO56nKbXg=;
 b=eWKHsEZF5zIFu0PcZrfAJNRRpjO0xCmZWdM2m8+fFOX9oUkF9DfoCnSib30Zo9Doa0Z//g
 IFEqDda5zIC4gt6nZMFsA73G7lpPekucGe1fCmrgwLXeTAJpehSHG1nkomLPwztjfeRPV9
 DyJlz0BRPKk1vHoboh/L61hSG5HB1aI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-499-n3qRxgpVPRGE2zuO94Et_w-1; Sun, 14 Mar 2021 23:52:19 -0400
X-MC-Unique: n3qRxgpVPRGE2zuO94Et_w-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 075EF19200C0;
 Mon, 15 Mar 2021 03:52:15 +0000 (UTC)
Received: from wangxiaodeMacBook-Air.local (ovpn-13-199.pek2.redhat.com
 [10.72.13.199])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 831B41F07C;
 Mon, 15 Mar 2021 03:52:02 +0000 (UTC)
To: Alexander Duyck <alexander.duyck@gmail.com>, davem@davemloft.net,
 kuba@kernel.org
References: <161557111604.10304.1798900949114188676.stgit@localhost.localdomain>
 <161557132651.10304.9382850626606060019.stgit@localhost.localdomain>
From: Jason Wang <jasowang@redhat.com>
Message-ID: <67ac83a4-10e8-602c-84a7-78ce8cbb5483@redhat.com>
Date: Mon, 15 Mar 2021 11:52:00 +0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.16; rv:78.0)
 Gecko/20100101 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <161557132651.10304.9382850626606060019.stgit@localhost.localdomain>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mailman-Approved-At: Mon, 15 Mar 2021 14:00:10 +0000
Subject: Re: [Intel-wired-lan] [net-next PATCH 07/10] virtio_net: Update
 driver to use ethtool_sprintf
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
Cc: doshir@vmware.com, mst@redhat.com, oss-drivers@netronome.com,
 alexanderduyck@fb.com, akiyano@amazon.com, wei.liu@kernel.org,
 sthemmin@microsoft.com, pv-drivers@vmware.com,
 intel-wired-lan@lists.osuosl.org, Kernel-team@fb.com, yisen.zhuang@huawei.com,
 gtzalik@amazon.com, simon.horman@netronome.com, haiyangz@microsoft.com,
 drivers@pensando.io, salil.mehta@huawei.com, GR-Linux-NIC-Dev@marvell.com,
 rmody@marvell.com, netdev@vger.kernel.org, netanel@amazon.com,
 saeedb@amazon.com, snelson@pensando.io, skalluru@marvell.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CuWcqCAyMDIxLzMvMTMg5LiK5Y2IMTo0OCwgQWxleGFuZGVyIER1eWNrIOWGmemBkzoKPiBGcm9t
OiBBbGV4YW5kZXIgRHV5Y2sgPGFsZXhhbmRlcmR1eWNrQGZiLmNvbT4KPgo+IFVwZGF0ZSB0aGUg
Y29kZSB0byByZXBsYWNlIGluc3RhbmNlcyBvZiBzbnByaW50ZiBhbmQgYSBwb2ludGVyIHVwZGF0
ZSB3aXRoCj4ganVzdCBjYWxsaW5nIGV0aHRvb2xfc3ByaW50Zi4KPgo+IEFsc28gcmVwbGFjZSB0
aGUgY2hhciBwb2ludGVyIHdpdGggYSB1OCBwb2ludGVyIHRvIGF2b2lkIGhhdmluZyB0byByZWNh
c3QKPiB0aGUgcG9pbnRlciB0eXBlLgo+Cj4gU2lnbmVkLW9mZi1ieTogQWxleGFuZGVyIER1eWNr
IDxhbGV4YW5kZXJkdXlja0BmYi5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL25ldC92aXJ0aW9fbmV0
LmMgfCAgIDE4ICsrKysrKystLS0tLS0tLS0tLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0
aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvdmly
dGlvX25ldC5jIGIvZHJpdmVycy9uZXQvdmlydGlvX25ldC5jCj4gaW5kZXggZTk3Mjg4ZGQ2ZTVh
Li43N2JhOGUyZmMxMWMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9uZXQvdmlydGlvX25ldC5jCj4g
KysrIGIvZHJpdmVycy9uZXQvdmlydGlvX25ldC5jCj4gQEAgLTIxMzgsMjUgKzIxMzgsMjEgQEAg
c3RhdGljIGludCB2aXJ0bmV0X3NldF9jaGFubmVscyhzdHJ1Y3QgbmV0X2RldmljZSAqZGV2LAo+
ICAgc3RhdGljIHZvaWQgdmlydG5ldF9nZXRfc3RyaW5ncyhzdHJ1Y3QgbmV0X2RldmljZSAqZGV2
LCB1MzIgc3RyaW5nc2V0LCB1OCAqZGF0YSkKPiAgIHsKPiAgIAlzdHJ1Y3QgdmlydG5ldF9pbmZv
ICp2aSA9IG5ldGRldl9wcml2KGRldik7Cj4gLQljaGFyICpwID0gKGNoYXIgKilkYXRhOwo+ICAg
CXVuc2lnbmVkIGludCBpLCBqOwo+ICsJdTggKnAgPSBkYXRhOwo+ICAgCj4gICAJc3dpdGNoIChz
dHJpbmdzZXQpIHsKPiAgIAljYXNlIEVUSF9TU19TVEFUUzoKPiAgIAkJZm9yIChpID0gMDsgaSA8
IHZpLT5jdXJyX3F1ZXVlX3BhaXJzOyBpKyspIHsKPiAtCQkJZm9yIChqID0gMDsgaiA8IFZJUlRO
RVRfUlFfU1RBVFNfTEVOOyBqKyspIHsKPiAtCQkJCXNucHJpbnRmKHAsIEVUSF9HU1RSSU5HX0xF
TiwgInJ4X3F1ZXVlXyV1XyVzIiwKPiAtCQkJCQkgaSwgdmlydG5ldF9ycV9zdGF0c19kZXNjW2pd
LmRlc2MpOwo+IC0JCQkJcCArPSBFVEhfR1NUUklOR19MRU47Cj4gLQkJCX0KPiArCQkJZm9yIChq
ID0gMDsgaiA8IFZJUlRORVRfUlFfU1RBVFNfTEVOOyBqKyspCj4gKwkJCQlldGh0b29sX3Nwcmlu
dGYoJnAsICJyeF9xdWV1ZV8ldV8lcyIsIGksCj4gKwkJCQkJCXZpcnRuZXRfcnFfc3RhdHNfZGVz
Y1tqXS5kZXNjKTsKPiAgIAkJfQo+ICAgCj4gICAJCWZvciAoaSA9IDA7IGkgPCB2aS0+Y3Vycl9x
dWV1ZV9wYWlyczsgaSsrKSB7Cj4gLQkJCWZvciAoaiA9IDA7IGogPCBWSVJUTkVUX1NRX1NUQVRT
X0xFTjsgaisrKSB7Cj4gLQkJCQlzbnByaW50ZihwLCBFVEhfR1NUUklOR19MRU4sICJ0eF9xdWV1
ZV8ldV8lcyIsCj4gLQkJCQkJIGksIHZpcnRuZXRfc3Ffc3RhdHNfZGVzY1tqXS5kZXNjKTsKPiAt
CQkJCXAgKz0gRVRIX0dTVFJJTkdfTEVOOwo+IC0JCQl9Cj4gKwkJCWZvciAoaiA9IDA7IGogPCBW
SVJUTkVUX1NRX1NUQVRTX0xFTjsgaisrKQo+ICsJCQkJZXRodG9vbF9zcHJpbnRmKCZwLCAidHhf
cXVldWVfJXVfJXMiLCBpLAo+ICsJCQkJCQl2aXJ0bmV0X3NxX3N0YXRzX2Rlc2Nbal0uZGVzYyk7
Cj4gICAJCX0KPiAgIAkJYnJlYWs7Cj4gICAJfQoKCkFja2VkLWJ5OiBKYXNvbiBXYW5nIDxqYXNv
d2FuZ0ByZWRoYXQuY29tPgoKCgo+Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQt
bGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtd2lyZWQtbGFuCg==
