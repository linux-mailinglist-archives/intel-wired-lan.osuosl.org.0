Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 051D96D2842
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Mar 2023 20:55:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 99FB984725;
	Fri, 31 Mar 2023 18:55:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 99FB984725
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680288931;
	bh=qfG0C8xFZBA9tHUzFVzcQ+0UwGYl57S6dT5xWNYshzA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gDRUer14OgKDer0ZqS+QNAfq0R2sKeOCcxmwMy3sVuCL9lUzdlLtd55uPRDmQLH1B
	 QMQdmPaWAIPV4ugNsVEYDcFVIGB6+LsSXao+DaKxQex5mP5EudHTZEvJ3rHdplWhWd
	 H/s/dl8jMxLShJkF5xrSOvFpjTs/Q3mF2GGu7QCQ9Vk2naKbrTEBuMMH9/Rg+qN4CV
	 gyTvMI0nwOx2m3KTDZE4jXop/xq9qehtizo/oh5Dd1sKh6wCdvpQyP76AACLgOBhrO
	 VgJO8NohFDwgiIL9KD/QfOIqDT67ERl4aY+7L53Fubv3zMeJFVABiQowhp+vIM8b8r
	 YSqKMwFZGd1LQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GGuGhAFXDsgX; Fri, 31 Mar 2023 18:55:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 14CA0846F0;
	Fri, 31 Mar 2023 18:55:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 14CA0846F0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A95BA1BF3D4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Mar 2023 18:55:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8E0974220B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Mar 2023 18:55:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8E0974220B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E55LyV_t5DnU for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 Mar 2023 18:55:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 36D4E421B7
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 36D4E421B7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Mar 2023 18:55:21 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-262-z5kIhVglNmSnvJxlephL-Q-1; Fri, 31 Mar 2023 14:55:16 -0400
X-MC-Unique: z5kIhVglNmSnvJxlephL-Q-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
 [10.11.54.6])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6504B2810C1A;
 Fri, 31 Mar 2023 18:55:15 +0000 (UTC)
Received: from firesoul.localdomain (unknown [10.45.242.12])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1EA5B2166B33;
 Fri, 31 Mar 2023 18:55:15 +0000 (UTC)
Received: from [10.1.1.1] (localhost [IPv6:::1])
 by firesoul.localdomain (Postfix) with ESMTP id 357AB30736C72;
 Fri, 31 Mar 2023 20:55:14 +0200 (CEST)
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: bpf@vger.kernel.org, Stanislav Fomichev <sdf@google.com>,
 =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Date: Fri, 31 Mar 2023 20:55:14 +0200
Message-ID: <168028891417.4030852.6359930131140625813.stgit@firesoul>
In-Reply-To: <168028882260.4030852.1100965689789226162.stgit@firesoul>
References: <168028882260.4030852.1100965689789226162.stgit@firesoul>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1680288920;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=KMxLHr1nEJDBRCg1B8L488/y3xeAF5pIZJtw2W0lrWE=;
 b=Ej7XFocO6xj9ulhAe2suZJ0X8PFXaQlEWw1XCm6Ovxqg31q/y4t3pLHJplD0YyNPxRGSDJ
 qU2YCozbz5UZfb1t2RyVi3+G3pi1r4E3vIbBM62XPtXyi2a8O1yLKb8IIh0ue+Z8YoFhh+
 WaMX6cyiEE47yx1X6N2S/vxItsIK8k8=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Ej7XFocO
Subject: [Intel-wired-lan] [PATCH bpf V5 3/5] veth: bpf_xdp_metadata_rx_hash
 add xdp rss hash type
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
Cc: xdp-hints@xdp-project.net, martin.lau@kernel.org, daniel@iogearbox.net,
 larysa.zaremba@intel.com, netdev@vger.kernel.org, john.fastabend@gmail.com,
 ast@kernel.org, tariqt@nvidia.com, linux-kernel@vger.kernel.org,
 jesse.brandeburg@intel.com, kuba@kernel.org, pabeni@redhat.com,
 yoong.siang.song@intel.com, Jesper Dangaard Brouer <brouer@redhat.com>,
 boon.leong.ong@intel.com, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, davem@davemloft.net, edumazet@google.com,
 hawk@kernel.org
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
