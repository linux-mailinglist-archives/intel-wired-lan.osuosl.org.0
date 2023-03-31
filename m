Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 084D46D2373
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Mar 2023 17:03:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9D3CD617A0;
	Fri, 31 Mar 2023 15:03:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9D3CD617A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680275017;
	bh=oOPMbDwIkxAETgp9oZODbD3OP9C/CwkVjEgTkxLFgGo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0GXnKJEomZmNvXq5cfY8xi5idS73R0yrbJGxpWw5yBom/QEcXDDsqy7YmTQTqlqSA
	 Cqx6+7FCa5KZ8fnobXKgzKCSxCTvOa0O2cocJWqCyHABDEO/dq9onosgNpwsu3NN3G
	 1xpcK6rLfqAbsjBAggC8Jmsw5/y+IiJI2qiIAxD2pzZmwFxKrvPgVI58o1Z5CWlSyK
	 diCXJmHck/pZIlbpdZ0Tw0g+78q7Z114JcC/AznBuisrgQ7NqM8e+3g3X0cIhduwwE
	 GM/qQ+hU2GkjOsbSfQpB+SV3CO6NNcNIFrKrYu2jShGGE8+squdxPWOu1Xj5SLPA/d
	 Gjd+YBDcz9jPg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oeE6mZ_UMt6H; Fri, 31 Mar 2023 15:03:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7B476605D8;
	Fri, 31 Mar 2023 15:03:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7B476605D8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 510A01BF33F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Mar 2023 15:03:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 35E3A41578
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Mar 2023 15:03:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 35E3A41578
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IhqXESEYuICy for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 Mar 2023 15:03:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 33A1B408CA
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 33A1B408CA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Mar 2023 15:03:30 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-210-mn6mANbRMDCMKJJuMr764w-1; Fri, 31 Mar 2023 11:03:24 -0400
X-MC-Unique: mn6mANbRMDCMKJJuMr764w-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
 [10.11.54.6])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5AC1829ABA22;
 Fri, 31 Mar 2023 15:03:23 +0000 (UTC)
Received: from firesoul.localdomain (unknown [10.45.242.12])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 106572166B33;
 Fri, 31 Mar 2023 15:03:23 +0000 (UTC)
Received: from [10.1.1.1] (localhost [IPv6:::1])
 by firesoul.localdomain (Postfix) with ESMTP id 2892630736C72;
 Fri, 31 Mar 2023 17:03:22 +0200 (CEST)
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: bpf@vger.kernel.org, Stanislav Fomichev <sdf@google.com>,
 =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Date: Fri, 31 Mar 2023 17:03:22 +0200
Message-ID: <168027500212.3941176.5689557848062983862.stgit@firesoul>
In-Reply-To: <168027495947.3941176.6690238098903275241.stgit@firesoul>
References: <168027495947.3941176.6690238098903275241.stgit@firesoul>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1680275009;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=bXP0tXFRzIbhwt7NNjSHUamAdNOr9/+KhxsrwNeL4EU=;
 b=fkEVPVN7oSFcIZZNSGcxf3nbRjic310Zmj+sZOK+2NF+xzN+7LkMn7Hj8hCOndrDa6cDUa
 aGrwBPP3yD5I/zKWsRX+dTDIWgpsv51MKd0/aL/PJf7CDekVOt6UB0CDe94ntd7kgC0QoR
 pJghKs7+r++VdopEyUj4NB9MLIw2Ncg=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=fkEVPVN7
Subject: [Intel-wired-lan] [PATCH bpf V4 4/5] mlx4: bpf_xdp_metadata_rx_hash
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
cCByc3MgaGFzaCB0eXBlCnZpYSBtYXRjaGluZyBpbmRpdml1YWwgQ29tcGxldGlvbiBRdWV1ZSBF
bnRyeSAoQ1FFKSBzdGF0dXMgYml0cy4KCkZpeGVzOiBhYjQ2MTgyZDBkY2IgKCJuZXQvbWx4NF9l
bjogU3VwcG9ydCBSWCBYRFAgbWV0YWRhdGEiKQpTaWduZWQtb2ZmLWJ5OiBKZXNwZXIgRGFuZ2Fh
cmQgQnJvdWVyIDxicm91ZXJAcmVkaGF0LmNvbT4KQWNrZWQtYnk6IFRva2UgSMO4aWxhbmQtSsO4
cmdlbnNlbiA8dG9rZUByZWRoYXQuY29tPgotLS0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L21lbGxh
bm94L21seDQvZW5fcnguYyAgIHwgICAyMiArKysrKysrKysrKysrKysrKysrKy0tCiBkcml2ZXJz
L25ldC9ldGhlcm5ldC9tZWxsYW5veC9tbHg0L21seDRfZW4uaCB8ICAgIDMgKystCiAyIGZpbGVz
IGNoYW5nZWQsIDIyIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVsbGFub3gvbWx4NC9lbl9yeC5jIGIvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvbWVsbGFub3gvbWx4NC9lbl9yeC5jCmluZGV4IDRiNWU0NTliNmQ0OS4uZDNmNDZk
OGI0MTYwIDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9tZWxsYW5veC9tbHg0L2Vu
X3J4LmMKKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVsbGFub3gvbWx4NC9lbl9yeC5jCkBA
IC02ODEsMTQgKzY4MSwzMiBAQCBpbnQgbWx4NF9lbl94ZHBfcnhfdGltZXN0YW1wKGNvbnN0IHN0
cnVjdCB4ZHBfbWQgKmN0eCwgdTY0ICp0aW1lc3RhbXApCiAJcmV0dXJuIDA7CiB9CiAKLWludCBt
bHg0X2VuX3hkcF9yeF9oYXNoKGNvbnN0IHN0cnVjdCB4ZHBfbWQgKmN0eCwgdTMyICpoYXNoKQor
aW50IG1seDRfZW5feGRwX3J4X2hhc2goY29uc3Qgc3RydWN0IHhkcF9tZCAqY3R4LCB1MzIgKmhh
c2gsCisJCQllbnVtIHhkcF9yc3NfaGFzaF90eXBlICpyc3NfdHlwZSkKIHsKIAlzdHJ1Y3QgbWx4
NF9lbl94ZHBfYnVmZiAqX2N0eCA9ICh2b2lkICopY3R4OworCXN0cnVjdCBtbHg0X2NxZSAqY3Fl
ID0gX2N0eC0+Y3FlOworCWVudW0geGRwX3Jzc19oYXNoX3R5cGUgeGh0ID0gMDsKKwlfX2JlMTYg
c3RhdHVzOwogCiAJaWYgKHVubGlrZWx5KCEoX2N0eC0+ZGV2LT5mZWF0dXJlcyAmIE5FVElGX0Zf
UlhIQVNIKSkpCiAJCXJldHVybiAtRU5PREFUQTsKIAotCSpoYXNoID0gYmUzMl90b19jcHUoX2N0
eC0+Y3FlLT5pbW1lZF9yc3NfaW52YWxpZCk7CisJKmhhc2ggPSBiZTMyX3RvX2NwdShjcWUtPmlt
bWVkX3Jzc19pbnZhbGlkKTsKKwlzdGF0dXMgPSBjcWUtPnN0YXR1czsKKwlpZiAoc3RhdHVzICYg
Y3B1X3RvX2JlMTYoTUxYNF9DUUVfU1RBVFVTX1RDUCkpCisJCXhodCA9IFhEUF9SU1NfTDRfVENQ
OworCWlmIChzdGF0dXMgJiBjcHVfdG9fYmUxNihNTFg0X0NRRV9TVEFUVVNfVURQKSkKKwkJeGh0
ID0gWERQX1JTU19MNF9VRFA7CisJaWYgKHN0YXR1cyAmIGNwdV90b19iZTE2KE1MWDRfQ1FFX1NU
QVRVU19JUFY0fE1MWDRfQ1FFX1NUQVRVU19JUFY0RikpCisJCXhodCB8PSBYRFBfUlNTX0wzX0lQ
VjQ7CisJaWYgKHN0YXR1cyAmIGNwdV90b19iZTE2KE1MWDRfQ1FFX1NUQVRVU19JUFY2KSkgewor
CQl4aHQgfD0gWERQX1JTU19MM19JUFY2OworCQlpZiAoY3FlLT5pcHY2X2V4dF9tYXNrKQorCQkJ
eGh0IHw9IFhEUF9SU1NfTDNfRFlOSERSOworCX0KKwkqcnNzX3R5cGUgPSB4aHQ7CisKIAlyZXR1
cm4gMDsKIH0KIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVsbGFub3gvbWx4
NC9tbHg0X2VuLmggYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9tZWxsYW5veC9tbHg0L21seDRfZW4u
aAppbmRleCA1NDRlMDliOTc0ODMuLjRhYzRkODgzMDQ3YiAxMDA2NDQKLS0tIGEvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvbWVsbGFub3gvbWx4NC9tbHg0X2VuLmgKKysrIGIvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvbWVsbGFub3gvbWx4NC9tbHg0X2VuLmgKQEAgLTc5OCw3ICs3OTgsOCBAQCBpbnQgbWx4
NF9lbl9uZXRkZXZfZXZlbnQoc3RydWN0IG5vdGlmaWVyX2Jsb2NrICp0aGlzLAogCiBzdHJ1Y3Qg
eGRwX21kOwogaW50IG1seDRfZW5feGRwX3J4X3RpbWVzdGFtcChjb25zdCBzdHJ1Y3QgeGRwX21k
ICpjdHgsIHU2NCAqdGltZXN0YW1wKTsKLWludCBtbHg0X2VuX3hkcF9yeF9oYXNoKGNvbnN0IHN0
cnVjdCB4ZHBfbWQgKmN0eCwgdTMyICpoYXNoKTsKK2ludCBtbHg0X2VuX3hkcF9yeF9oYXNoKGNv
bnN0IHN0cnVjdCB4ZHBfbWQgKmN0eCwgdTMyICpoYXNoLAorCQkJZW51bSB4ZHBfcnNzX2hhc2hf
dHlwZSAqcnNzX3R5cGUpOwogCiAvKgogICogRnVuY3Rpb25zIGZvciB0aW1lIHN0YW1waW5nCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2ly
ZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xp
c3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
