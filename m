Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 989046D2844
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Mar 2023 20:55:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C2CE684726;
	Fri, 31 Mar 2023 18:55:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C2CE684726
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680288939;
	bh=6pl35mEKB9Wx/hTaNwn/B7/8kBnlaC+EdpWivAxkmF8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hbyTtB6ept85dwzS+B4zk9OUd7Cr++o8//Y9lAXQUOYC7urcgWiRLHbeETzIfENp3
	 ucA2fmGJ2bXXFU3jm+RT7bCmBCXAtzgxbP+5ZXDDFaAZLRFkAhMcLCA5Ghc/Ems6xc
	 02C3QoT0AsjV73O967FUrY28LsQqren1p8zbpSInF29KAMEI3Ico1BXBhwZcA31Ux/
	 fV7XWJMprtmuqTm/Ea0q8Nw67PpZzOOtZYp/FJ/i0DU7evlHJQv6oVNNiScTCJKZ/L
	 0fM/PlQBCUN1fO6uN8Htf/he4AVjgC7JSMsZucYOauMDtnTayyn2FIDlIJG89+sH9g
	 XdPKR5xFp8RAA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zIx2v5wQZ-CG; Fri, 31 Mar 2023 18:55:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A5E0084711;
	Fri, 31 Mar 2023 18:55:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A5E0084711
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0F0F71BF3D4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Mar 2023 18:55:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E9693408F1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Mar 2023 18:55:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E9693408F1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bEXYIY82LQiI for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 Mar 2023 18:55:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 34A0E401E1
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 34A0E401E1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Mar 2023 18:55:33 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-240-v4-GH0L9OTuxc76d_jjTmQ-1; Fri, 31 Mar 2023 14:55:23 -0400
X-MC-Unique: v4-GH0L9OTuxc76d_jjTmQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
 [10.11.54.6])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3F445185A78F;
 Fri, 31 Mar 2023 18:55:20 +0000 (UTC)
Received: from firesoul.localdomain (unknown [10.45.242.12])
 by smtp.corp.redhat.com (Postfix) with ESMTP id F38472166B33;
 Fri, 31 Mar 2023 18:55:19 +0000 (UTC)
Received: from [10.1.1.1] (localhost [IPv6:::1])
 by firesoul.localdomain (Postfix) with ESMTP id 4360E30736C72;
 Fri, 31 Mar 2023 20:55:19 +0200 (CEST)
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: bpf@vger.kernel.org, Stanislav Fomichev <sdf@google.com>,
 =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Date: Fri, 31 Mar 2023 20:55:19 +0200
Message-ID: <168028891923.4030852.4939492113139299611.stgit@firesoul>
In-Reply-To: <168028882260.4030852.1100965689789226162.stgit@firesoul>
References: <168028882260.4030852.1100965689789226162.stgit@firesoul>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1680288931;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=X2qMh1719XPTmN3fL+GQW8KuUqpmNliiESfRG6QrFt4=;
 b=E9+6YQmzyRSdIVFX+S6Vn47n1prHW+NcCgYZ64DVQoSEueWUYk9DN4JrtmnmiKzkr3vlQv
 2eMDQZiN7KsQ36UroNzdgk9GPi31ZCgdhwzRsd+ESf46mjYttT/9PiHfnzDGy9SIMEFsq9
 34XwOyOMTd6fGkMs4SWrkfto1CYYOfc=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=E9+6YQmz
Subject: [Intel-wired-lan] [PATCH bpf V5 4/5] mlx4: bpf_xdp_metadata_rx_hash
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
cmdlbnNlbiA8dG9rZUByZWRoYXQuY29tPgpBY2tlZC1ieTogU3RhbmlzbGF2IEZvbWljaGV2IDxz
ZGZAZ29vZ2xlLmNvbT4KLS0tCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9tZWxsYW5veC9tbHg0L2Vu
X3J4LmMgICB8ICAgMTkgKysrKysrKysrKysrKysrKysrLQogZHJpdmVycy9uZXQvZXRoZXJuZXQv
bWVsbGFub3gvbWx4NC9tbHg0X2VuLmggfCAgICAzICsrLQogMiBmaWxlcyBjaGFuZ2VkLCAyMCBp
bnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0
aGVybmV0L21lbGxhbm94L21seDQvZW5fcnguYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L21lbGxh
bm94L21seDQvZW5fcnguYwppbmRleCA3M2QxMGFhNGM1MDMuLjMzMjQ3MmZlNDk5MCAxMDA2NDQK
LS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVsbGFub3gvbWx4NC9lbl9yeC5jCisrKyBiL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L21lbGxhbm94L21seDQvZW5fcnguYwpAQCAtNjg1LDExICs2ODUs
MjggQEAgaW50IG1seDRfZW5feGRwX3J4X2hhc2goY29uc3Qgc3RydWN0IHhkcF9tZCAqY3R4LCB1
MzIgKmhhc2gsCiAJCQllbnVtIHhkcF9yc3NfaGFzaF90eXBlICpyc3NfdHlwZSkKIHsKIAlzdHJ1
Y3QgbWx4NF9lbl94ZHBfYnVmZiAqX2N0eCA9ICh2b2lkICopY3R4OworCXN0cnVjdCBtbHg0X2Nx
ZSAqY3FlID0gX2N0eC0+Y3FlOworCWVudW0geGRwX3Jzc19oYXNoX3R5cGUgeGh0ID0gMDsKKwlf
X2JlMTYgc3RhdHVzOwogCiAJaWYgKHVubGlrZWx5KCEoX2N0eC0+ZGV2LT5mZWF0dXJlcyAmIE5F
VElGX0ZfUlhIQVNIKSkpCiAJCXJldHVybiAtRU5PREFUQTsKIAotCSpoYXNoID0gYmUzMl90b19j
cHUoX2N0eC0+Y3FlLT5pbW1lZF9yc3NfaW52YWxpZCk7CisJKmhhc2ggPSBiZTMyX3RvX2NwdShj
cWUtPmltbWVkX3Jzc19pbnZhbGlkKTsKKwlzdGF0dXMgPSBjcWUtPnN0YXR1czsKKwlpZiAoc3Rh
dHVzICYgY3B1X3RvX2JlMTYoTUxYNF9DUUVfU1RBVFVTX1RDUCkpCisJCXhodCA9IFhEUF9SU1Nf
TDRfVENQOworCWlmIChzdGF0dXMgJiBjcHVfdG9fYmUxNihNTFg0X0NRRV9TVEFUVVNfVURQKSkK
KwkJeGh0ID0gWERQX1JTU19MNF9VRFA7CisJaWYgKHN0YXR1cyAmIGNwdV90b19iZTE2KE1MWDRf
Q1FFX1NUQVRVU19JUFY0IHwgTUxYNF9DUUVfU1RBVFVTX0lQVjRGKSkKKwkJeGh0IHw9IFhEUF9S
U1NfTDNfSVBWNDsKKwlpZiAoc3RhdHVzICYgY3B1X3RvX2JlMTYoTUxYNF9DUUVfU1RBVFVTX0lQ
VjYpKSB7CisJCXhodCB8PSBYRFBfUlNTX0wzX0lQVjY7CisJCWlmIChjcWUtPmlwdjZfZXh0X21h
c2spCisJCQl4aHQgfD0gWERQX1JTU19MM19EWU5IRFI7CisJfQorCSpyc3NfdHlwZSA9IHhodDsK
KwogCXJldHVybiAwOwogfQogCmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9tZWxs
YW5veC9tbHg0L21seDRfZW4uaCBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L21lbGxhbm94L21seDQv
bWx4NF9lbi5oCmluZGV4IDU0NGUwOWI5NzQ4My4uNGFjNGQ4ODMwNDdiIDEwMDY0NAotLS0gYS9k
cml2ZXJzL25ldC9ldGhlcm5ldC9tZWxsYW5veC9tbHg0L21seDRfZW4uaAorKysgYi9kcml2ZXJz
L25ldC9ldGhlcm5ldC9tZWxsYW5veC9tbHg0L21seDRfZW4uaApAQCAtNzk4LDcgKzc5OCw4IEBA
IGludCBtbHg0X2VuX25ldGRldl9ldmVudChzdHJ1Y3Qgbm90aWZpZXJfYmxvY2sgKnRoaXMsCiAK
IHN0cnVjdCB4ZHBfbWQ7CiBpbnQgbWx4NF9lbl94ZHBfcnhfdGltZXN0YW1wKGNvbnN0IHN0cnVj
dCB4ZHBfbWQgKmN0eCwgdTY0ICp0aW1lc3RhbXApOwotaW50IG1seDRfZW5feGRwX3J4X2hhc2go
Y29uc3Qgc3RydWN0IHhkcF9tZCAqY3R4LCB1MzIgKmhhc2gpOworaW50IG1seDRfZW5feGRwX3J4
X2hhc2goY29uc3Qgc3RydWN0IHhkcF9tZCAqY3R4LCB1MzIgKmhhc2gsCisJCQllbnVtIHhkcF9y
c3NfaGFzaF90eXBlICpyc3NfdHlwZSk7CiAKIC8qCiAgKiBGdW5jdGlvbnMgZm9yIHRpbWUgc3Rh
bXBpbmcKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0
dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
