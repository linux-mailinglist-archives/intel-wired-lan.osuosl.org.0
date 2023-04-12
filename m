Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BD9816DFD9A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Apr 2023 20:35:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 34B8F41F25;
	Wed, 12 Apr 2023 18:35:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 34B8F41F25
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681324554;
	bh=VfWallNmySaxrdsZCx0fJSO6t3755MvvNIBwQeCQWis=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mud66lbJqp0drsbb/I6ptblhANyCDMeGBaRetiv+Nx2VmHInQoGFfrF2NPyKrKuM3
	 Uh2ksCU7RATIFirWsh9scPeVU0/P1ol3u2+tzMIvnYg8Sz2wi7i1xQNuhCUPCwfOWr
	 ttCnM3NQKa9N+vfR+EKKhYT3im9+8F/XA5uzEiNMS8H7BDbosV2dsgPV3wv88cgcye
	 pUHBFi55M9uhbEJt4KDR7FUXvC7WMOS9qsjFgHLT0ByN5wVcmbW7J1NLCALtIZwYpt
	 8SV0EWA9YONXiIdR5iCf+Xky7zg4OepyZ4gknKolFWC2b568EjLnTsi3ToVHkRFxCI
	 /aJbuxejDP1pw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pLzgf2L5d0-a; Wed, 12 Apr 2023 18:35:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F010E41F3E;
	Wed, 12 Apr 2023 18:35:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F010E41F3E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5CD2C1C2E09
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 18:35:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 33A6860F37
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 18:35:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 33A6860F37
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sSwrbBpzPQnK for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Apr 2023 18:35:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7A2BC60B28
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7A2BC60B28
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 18:35:45 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-119-IbczlyyOObSkDDMDQ8yE3Q-1; Wed, 12 Apr 2023 14:35:39 -0400
X-MC-Unique: IbczlyyOObSkDDMDQ8yE3Q-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
 [10.11.54.1])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 92D0D800B23;
 Wed, 12 Apr 2023 18:35:38 +0000 (UTC)
Received: from firesoul.localdomain (unknown [10.45.242.24])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4DB5940C20FA;
 Wed, 12 Apr 2023 18:35:38 +0000 (UTC)
Received: from [10.1.1.1] (localhost [IPv6:::1])
 by firesoul.localdomain (Postfix) with ESMTP id 64F69307372E8;
 Wed, 12 Apr 2023 20:35:37 +0200 (CEST)
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: bpf@vger.kernel.org, Stanislav Fomichev <sdf@google.com>,
 =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Date: Wed, 12 Apr 2023 20:35:37 +0200
Message-ID: <168132453736.317773.2296218934638816233.stgit@firesoul>
In-Reply-To: <168132448251.317773.2526885806604122764.stgit@firesoul>
References: <168132448251.317773.2526885806604122764.stgit@firesoul>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1681324544;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=cSVYWifKD7SQGSjuGFZiN+et2zmCoRo8LLSGhODudbI=;
 b=QrUXI8e8cglF4uzos2XLevuuTilloXluVi9VL4feY7WuaBqBxhKXxwXfnp07h8vBWQmwt0
 LWn6e83zTpCAWZiZYJjIOXTYYhfhY8YjMb+Pc0r6e5W3/HFYLOBHuLqlN5Q5g0h06lOObG
 a9EbIYTe0QAzLan6MB1JDxBLoTc4Qk8=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=QrUXI8e8
Subject: [Intel-wired-lan] [PATCH bpf V9 5/6] mlx4: bpf_xdp_metadata_rx_hash
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
cCByc3MgaGFzaCB0eXBlCnZpYSBtYXRjaGluZyBpbmRpdmlkdWFsIENvbXBsZXRpb24gUXVldWUg
RW50cnkgKENRRSkgc3RhdHVzIGJpdHMuCgpGaXhlczogYWI0NjE4MmQwZGNiICgibmV0L21seDRf
ZW46IFN1cHBvcnQgUlggWERQIG1ldGFkYXRhIikKU2lnbmVkLW9mZi1ieTogSmVzcGVyIERhbmdh
YXJkIEJyb3VlciA8YnJvdWVyQHJlZGhhdC5jb20+CkFja2VkLWJ5OiBUb2tlIEjDuGlsYW5kLUrD
uHJnZW5zZW4gPHRva2VAcmVkaGF0LmNvbT4KQWNrZWQtYnk6IFN0YW5pc2xhdiBGb21pY2hldiA8
c2RmQGdvb2dsZS5jb20+Ci0tLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVsbGFub3gvbWx4NC9l
bl9yeC5jIHwgICAxOSArKysrKysrKysrKysrKysrKystCiAxIGZpbGUgY2hhbmdlZCwgMTggaW5z
ZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L21lbGxhbm94L21seDQvZW5fcnguYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L21lbGxhbm94
L21seDQvZW5fcnguYwppbmRleCA3M2QxMGFhNGM1MDMuLjMzMjQ3MmZlNDk5MCAxMDA2NDQKLS0t
IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVsbGFub3gvbWx4NC9lbl9yeC5jCisrKyBiL2RyaXZl
cnMvbmV0L2V0aGVybmV0L21lbGxhbm94L21seDQvZW5fcnguYwpAQCAtNjg1LDExICs2ODUsMjgg
QEAgaW50IG1seDRfZW5feGRwX3J4X2hhc2goY29uc3Qgc3RydWN0IHhkcF9tZCAqY3R4LCB1MzIg
Kmhhc2gsCiAJCQllbnVtIHhkcF9yc3NfaGFzaF90eXBlICpyc3NfdHlwZSkKIHsKIAlzdHJ1Y3Qg
bWx4NF9lbl94ZHBfYnVmZiAqX2N0eCA9ICh2b2lkICopY3R4OworCXN0cnVjdCBtbHg0X2NxZSAq
Y3FlID0gX2N0eC0+Y3FlOworCWVudW0geGRwX3Jzc19oYXNoX3R5cGUgeGh0ID0gMDsKKwlfX2Jl
MTYgc3RhdHVzOwogCiAJaWYgKHVubGlrZWx5KCEoX2N0eC0+ZGV2LT5mZWF0dXJlcyAmIE5FVElG
X0ZfUlhIQVNIKSkpCiAJCXJldHVybiAtRU5PREFUQTsKIAotCSpoYXNoID0gYmUzMl90b19jcHUo
X2N0eC0+Y3FlLT5pbW1lZF9yc3NfaW52YWxpZCk7CisJKmhhc2ggPSBiZTMyX3RvX2NwdShjcWUt
PmltbWVkX3Jzc19pbnZhbGlkKTsKKwlzdGF0dXMgPSBjcWUtPnN0YXR1czsKKwlpZiAoc3RhdHVz
ICYgY3B1X3RvX2JlMTYoTUxYNF9DUUVfU1RBVFVTX1RDUCkpCisJCXhodCA9IFhEUF9SU1NfTDRf
VENQOworCWlmIChzdGF0dXMgJiBjcHVfdG9fYmUxNihNTFg0X0NRRV9TVEFUVVNfVURQKSkKKwkJ
eGh0ID0gWERQX1JTU19MNF9VRFA7CisJaWYgKHN0YXR1cyAmIGNwdV90b19iZTE2KE1MWDRfQ1FF
X1NUQVRVU19JUFY0IHwgTUxYNF9DUUVfU1RBVFVTX0lQVjRGKSkKKwkJeGh0IHw9IFhEUF9SU1Nf
TDNfSVBWNDsKKwlpZiAoc3RhdHVzICYgY3B1X3RvX2JlMTYoTUxYNF9DUUVfU1RBVFVTX0lQVjYp
KSB7CisJCXhodCB8PSBYRFBfUlNTX0wzX0lQVjY7CisJCWlmIChjcWUtPmlwdjZfZXh0X21hc2sp
CisJCQl4aHQgfD0gWERQX1JTU19MM19EWU5IRFI7CisJfQorCSpyc3NfdHlwZSA9IHhodDsKKwog
CXJldHVybiAwOwogfQogCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1
b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13
aXJlZC1sYW4K
