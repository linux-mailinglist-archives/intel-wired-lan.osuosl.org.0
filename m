Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 93F866DBC9E
	for <lists+intel-wired-lan@lfdr.de>; Sat,  8 Apr 2023 21:25:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1CEC041E38;
	Sat,  8 Apr 2023 19:25:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1CEC041E38
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680981919;
	bh=qfG0C8xFZBA9tHUzFVzcQ+0UwGYl57S6dT5xWNYshzA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lmfi0GzqPzvH38o5FCvHKH19Bd1cA5n6Sdy6NYwsNAZOm0ZWF7mKBq+3tB/rF+ayG
	 rXPNIrLWm68ayQR2nsOB6+F4gUbAObdeqsgklRBEbKD2mxxOay+fjCAH1+A0SRHg8a
	 9K0uy7/JP4FhJ0oVJtZXA6c0XgOjPZhSjRc4+cu875h6nDdZTQlEYxTsVYrG/dvsqq
	 B1Rnr2iHKhWsYIv5aRGJG2DkIuZYvwOCg3dlS6DTKH1iRFPhVfQLxOmD6MOdm47INU
	 W0nN+lPmun5XTqNJJKHo8twSkjk54iAObe6MBbeTVf1jHexsauG69mnGbtuTVsW3NG
	 GpXIE7GE6wWyg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 82i3DusRqtZ4; Sat,  8 Apr 2023 19:25:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A6C2841DAA;
	Sat,  8 Apr 2023 19:25:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A6C2841DAA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A5FC81C31BE
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Apr 2023 19:25:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7FAC560BA1
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Apr 2023 19:25:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7FAC560BA1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2OL_6ZqxWkWB for <intel-wired-lan@lists.osuosl.org>;
 Sat,  8 Apr 2023 19:25:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CB18660B73
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CB18660B73
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Apr 2023 19:25:06 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-657-qKQ_Wpd7MmG4Nk8i7aLaig-1; Sat, 08 Apr 2023 15:25:03 -0400
X-MC-Unique: qKQ_Wpd7MmG4Nk8i7aLaig-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
 [10.11.54.9])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DC81029AA2E7;
 Sat,  8 Apr 2023 19:25:02 +0000 (UTC)
Received: from firesoul.localdomain (unknown [10.45.242.3])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 912CE492C14;
 Sat,  8 Apr 2023 19:25:02 +0000 (UTC)
Received: from [10.1.1.1] (localhost [IPv6:::1])
 by firesoul.localdomain (Postfix) with ESMTP id A6044307372E8;
 Sat,  8 Apr 2023 21:25:01 +0200 (CEST)
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: bpf@vger.kernel.org, Stanislav Fomichev <sdf@google.com>,
 =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Date: Sat, 08 Apr 2023 21:25:01 +0200
Message-ID: <168098190163.96582.14141656128558792381.stgit@firesoul>
In-Reply-To: <168098183268.96582.7852359418481981062.stgit@firesoul>
References: <168098183268.96582.7852359418481981062.stgit@firesoul>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.9
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1680981905;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=KMxLHr1nEJDBRCg1B8L488/y3xeAF5pIZJtw2W0lrWE=;
 b=KEjE4kHffKcM0HStbu7nfEIDX5/OqDrI6D+5XK+Rpc9GUd1mQPo7bPzb5BmGHAGdsCs9Pk
 M/NJsEMcnsg1O9V4mr23PyrJYw/ru4l1rIKhePb8haJT5SLsngRW/qN/bTiIM6hq2YNrLE
 sw3A/4VrXHt5aC30mVA8vHC/L6caH/o=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=KEjE4kHf
Subject: [Intel-wired-lan] [PATCH bpf V7 5/7] veth: bpf_xdp_metadata_rx_hash
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
