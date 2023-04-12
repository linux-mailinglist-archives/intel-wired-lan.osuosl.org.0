Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F03676DFEFE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Apr 2023 21:49:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8735E41F1F;
	Wed, 12 Apr 2023 19:49:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8735E41F1F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681328943;
	bh=qfG0C8xFZBA9tHUzFVzcQ+0UwGYl57S6dT5xWNYshzA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SPJUgaIUhEeNZLd0LPgG5j/WunetSzo0vJhmxvxGwbk5y67rNpY5xDO/6NZCpVuHG
	 vOQCNEvlFopCSgk7OD5iWmbL6ZrBMXdix4CxUrwG3BcidXJlKQa5V42DJgGd1bWjgb
	 +NJ537qBwNX7yRnje0SQB5mBcC90dk5RaoCYag9cMtmQE9MwuikvHvCNaRDBEN4cdo
	 zs2Q92jQL808SlnF9t87Pv9C6g1AqNsD8na1CGtgq74H7qk5PvJ5YtbJMjOhc65o8h
	 b/LISQbkN7Nz2wARFj6ltYLeYLgA4Gyn9mXdGEu8fNwIi7LuODk2sHilOGfAYCFGRP
	 44yzoF81aQDLA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vOv8Zq3iQLKF; Wed, 12 Apr 2023 19:49:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 39B6141E6E;
	Wed, 12 Apr 2023 19:49:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 39B6141E6E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 257301C3C69
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 19:48:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F320B61132
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 19:48:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F320B61132
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4PdXK23UdMas for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Apr 2023 19:48:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4458B605EC
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4458B605EC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 19:48:56 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-448-f-9wXQd9Nza05UQKUibRKw-1; Wed, 12 Apr 2023 15:48:53 -0400
X-MC-Unique: f-9wXQd9Nza05UQKUibRKw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
 [10.11.54.5])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C0700280BF65;
 Wed, 12 Apr 2023 19:48:51 +0000 (UTC)
Received: from firesoul.localdomain (unknown [10.45.242.24])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7AB22FD6E;
 Wed, 12 Apr 2023 19:48:51 +0000 (UTC)
Received: from [10.1.1.1] (localhost [IPv6:::1])
 by firesoul.localdomain (Postfix) with ESMTP id 93601307372E8;
 Wed, 12 Apr 2023 21:48:50 +0200 (CEST)
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: bpf@vger.kernel.org, Stanislav Fomichev <sdf@google.com>,
 =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Date: Wed, 12 Apr 2023 21:48:50 +0200
Message-ID: <168132893055.340624.16209448340644513469.stgit@firesoul>
In-Reply-To: <168132888942.340624.2449617439220153267.stgit@firesoul>
References: <168132888942.340624.2449617439220153267.stgit@firesoul>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1681328935;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=KMxLHr1nEJDBRCg1B8L488/y3xeAF5pIZJtw2W0lrWE=;
 b=Sxf1zvH9btt92DxvNDngKT+zAWSKT2CoiWoIXC//I7Y2YiS+yFjRo1S8cpPLayLndYjQes
 GLFZSVw8L9P36nCnQNDQAZdQX8jXnBii7+VKrPQADWHX2BbZBVohRQPlbaQ1WPKJbFy941
 Qe1kKqr1al4dTR05y/SSwNUkbVBq6oQ=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Sxf1zvH9
Subject: [Intel-wired-lan] [PATCH bpf V10 4/6] veth:
 bpf_xdp_metadata_rx_hash add xdp rss hash type
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
Cc: ast@kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 boon.leong.ong@intel.com, hawk@kernel.org, xdp-hints@xdp-project.net,
 daniel@iogearbox.net, linux-rdma@vger.kernel.org, john.fastabend@gmail.com,
 jesse.brandeburg@intel.com, intel-wired-lan@lists.osuosl.org,
 Jesper Dangaard Brouer <brouer@redhat.com>, kuba@kernel.org, pabeni@redhat.com,
 martin.lau@kernel.org, larysa.zaremba@intel.com, leon@kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, tariqt@nvidia.com,
 yoong.siang.song@intel.com, saeedm@nvidia.com, davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

VXBkYXRlIEFQSSBmb3IgYnBmX3hkcF9tZXRhZGF0YV9yeF9oYXNoKCkgd2l0aCBhcmcgZm9yIHhk
cCByc3MgaGFzaCB0eXBlLgoKVGhlIHZldGggZHJpdmVyIGN1cnJlbnRseSBvbmx5IHN1cHBvcnQg
WERQLWhpbnRzIGJhc2VkIG9uIFNLQiBjb2RlIHBhdGguClRoZSBTS0IgaGF2ZSBsb3N0IGluZm9y
bWF0aW9uIGFib3V0IHRoZSBSU1MgaGFzaCB0eXBlLCBieSBjb21wcmVzc2luZwp0aGUgaW5mb3Jt
YXRpb24gZG93biB0byBhIHNpbmdsZSBiaXRmaWVsZCBza2ItPmw0X2hhc2gsIHRoYXQgb25seSBr
bm93cwppZiB0aGlzIHdhcyBhIEw0IGhhc2ggdmFsdWUuCgpJbiBwcmVwYXJhdGlvbiBmb3IgdmV0
aCwgdGhlIHhkcF9yc3NfaGFzaF90eXBlIGhhdmUgYW4gTDQgaW5kaWNhdGlvbgpiaXQgdGhhdCBh
bGxvdyB1cyB0byByZXR1cm4gYSBtZWFuaW5nZnVsIEw0IGluZGljYXRpb24gd2hlbiB3b3JraW5n
CndpdGggU0tCIGJhc2VkIHBhY2tldHMuCgpGaXhlczogMzA2NTMxZjAyNDlmICgidmV0aDogU3Vw
cG9ydCBSWCBYRFAgbWV0YWRhdGEiKQpTaWduZWQtb2ZmLWJ5OiBKZXNwZXIgRGFuZ2FhcmQgQnJv
dWVyIDxicm91ZXJAcmVkaGF0LmNvbT4KQWNrZWQtYnk6IFRva2UgSMO4aWxhbmQtSsO4cmdlbnNl
biA8dG9rZUByZWRoYXQuY29tPgpBY2tlZC1ieTogU3RhbmlzbGF2IEZvbWljaGV2IDxzZGZAZ29v
Z2xlLmNvbT4KLS0tCiBkcml2ZXJzL25ldC92ZXRoLmMgfCAgICA3ICsrKysrLS0KIDEgZmlsZSBj
aGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9uZXQvdmV0aC5jIGIvZHJpdmVycy9uZXQvdmV0aC5jCmluZGV4IDQyNGU4ODc2YTE2Yi4u
ZTFiMzhmYmYxZGQ5IDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC92ZXRoLmMKKysrIGIvZHJpdmVy
cy9uZXQvdmV0aC5jCkBAIC0xNjUyLDExICsxNjUyLDE0IEBAIHN0YXRpYyBpbnQgdmV0aF94ZHBf
cnhfaGFzaChjb25zdCBzdHJ1Y3QgeGRwX21kICpjdHgsIHUzMiAqaGFzaCwKIAkJCSAgICBlbnVt
IHhkcF9yc3NfaGFzaF90eXBlICpyc3NfdHlwZSkKIHsKIAlzdHJ1Y3QgdmV0aF94ZHBfYnVmZiAq
X2N0eCA9ICh2b2lkICopY3R4OworCXN0cnVjdCBza19idWZmICpza2IgPSBfY3R4LT5za2I7CiAK
LQlpZiAoIV9jdHgtPnNrYikKKwlpZiAoIXNrYikKIAkJcmV0dXJuIC1FTk9EQVRBOwogCi0JKmhh
c2ggPSBza2JfZ2V0X2hhc2goX2N0eC0+c2tiKTsKKwkqaGFzaCA9IHNrYl9nZXRfaGFzaChza2Ip
OworCSpyc3NfdHlwZSA9IHNrYi0+bDRfaGFzaCA/IFhEUF9SU1NfVFlQRV9MNF9BTlkgOiBYRFBf
UlNTX1RZUEVfTk9ORTsKKwogCXJldHVybiAwOwogfQogCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJ
bnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
