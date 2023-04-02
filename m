Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CD3426D3636
	for <lists+intel-wired-lan@lfdr.de>; Sun,  2 Apr 2023 10:30:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6C53B81F2D;
	Sun,  2 Apr 2023 08:30:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6C53B81F2D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680424203;
	bh=ALUGANFhC0vNr/tTK5lSwQ58lB2ZLPrRHRCUciy6loo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JbTDoOdQ7XXLepGm1ERZ+lzgiv0P71wKzI+uilzdFsTkuhLJzJ9KNpzKPzOCnLgxb
	 C3LR8KQXXlvWObEOImrTSNPOt473azu5beFne1umNPAtxrqtlCsO/mP3IwVFW/BaHA
	 yHTj6n/4KeJp9vrUvDUkbWrALaU1Pd/RZAyN0tKQU9jhIsXmqAma0bv/w9XAruTSK9
	 nA4pmyfTUniIC+trV1tch4tKgslMswWQVh18Sl/fWeUIIyJMcmrbnXYoTCjMbx5Yml
	 wWcnZHWOb3vzrHX2zWuh1XHy8HQ+L2uLpE+YsCTyEzUycfbgj3J+mhceYWyRXcS1YL
	 GXZE2/XHwvkfA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id THqRALYLqgI5; Sun,  2 Apr 2023 08:30:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3B2C381F6A;
	Sun,  2 Apr 2023 08:30:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3B2C381F6A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 411F81BF57B
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Apr 2023 08:29:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1B79B81F75
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Apr 2023 08:29:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1B79B81F75
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id myBle2eBMFVG for <intel-wired-lan@lists.osuosl.org>;
 Sun,  2 Apr 2023 08:29:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 36F7881F2D
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 36F7881F2D
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Apr 2023 08:29:56 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-547-t8L6YBCzMbatZ6VmBXwqTg-1; Sun, 02 Apr 2023 04:29:51 -0400
X-MC-Unique: t8L6YBCzMbatZ6VmBXwqTg-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
 [10.11.54.10])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6AAE429ABA07;
 Sun,  2 Apr 2023 08:29:50 +0000 (UTC)
Received: from firesoul.localdomain (unknown [10.45.242.12])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3317D400F4F;
 Sun,  2 Apr 2023 08:29:49 +0000 (UTC)
Received: from [10.1.1.1] (localhost [IPv6:::1])
 by firesoul.localdomain (Postfix) with ESMTP id 4BAEA30736C72;
 Sun,  2 Apr 2023 10:29:48 +0200 (CEST)
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: bpf@vger.kernel.org, Stanislav Fomichev <sdf@google.com>,
 =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Date: Sun, 02 Apr 2023 10:29:48 +0200
Message-ID: <168042418826.4051476.17501531513091177668.stgit@firesoul>
In-Reply-To: <168042409059.4051476.8176861613304493950.stgit@firesoul>
References: <168042409059.4051476.8176861613304493950.stgit@firesoul>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.10
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1680424195;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=i3MHHqoOS7n/QXgQznavf8gFNBnx4z6OXd+WEJfItp8=;
 b=B8k42PrV/ZefCYWv7cmols/Y9hwDTsHq/MlcuXhxiIUf/zmq26Bnb2tzKbLXjIGcocbGu9
 Nnn6sjW7Qhb3CHkht/1D/b1Ia1fr6ePx6g+jgUlz8yc+WT5rjSWgBf4Ue01y6mW20papFC
 5bQIAblS7brdN61hyx6X0u6MddlJ9Nk=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=B8k42PrV
Subject: [Intel-wired-lan] [PATCH bpf V6 2/5] mlx5: bpf_xdp_metadata_rx_hash
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
cCByc3MgaGFzaCB0eXBlCnZpYSBtYXBwaW5nIHRhYmxlLgoKVGhlIG1seDUgaGFyZHdhcmUgY2Fu
IGFsc28gaWRlbnRpZnkgYW5kIFJTUyBoYXNoIElQU0VDLiAgVGhpcyBpbmRpY2F0ZQpoYXNoIGlu
Y2x1ZGVzIFNQSSAoU2VjdXJpdHkgUGFyYW1ldGVycyBJbmRleCkgYXMgcGFydCBvZiBJUFNFQyBo
YXNoLgoKRXh0ZW5kIHhkcCBjb3JlIGVudW0geGRwX3Jzc19oYXNoX3R5cGUgd2l0aCBJUFNFQyBo
YXNoIHR5cGUuCgpGaXhlczogYmM4ZDQwNWIxYmE5ICgibmV0L21seDVlOiBTdXBwb3J0IFJYIFhE
UCBtZXRhZGF0YSIpClNpZ25lZC1vZmYtYnk6IEplc3BlciBEYW5nYWFyZCBCcm91ZXIgPGJyb3Vl
ckByZWRoYXQuY29tPgpBY2tlZC1ieTogVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJl
ZGhhdC5jb20+CkFja2VkLWJ5OiBTdGFuaXNsYXYgRm9taWNoZXYgPHNkZkBnb29nbGUuY29tPgot
LS0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L21lbGxhbm94L21seDUvY29yZS9lbi94ZHAuYyB8ICAg
NjAgKysrKysrKysrKysrKysrKysrKysrKwogaW5jbHVkZS9saW51eC9tbHg1L2RldmljZS5oICAg
ICAgICAgICAgICAgICAgICAgIHwgICAxNCArKysrLQogaW5jbHVkZS9uZXQveGRwLmggICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgMiArCiAzIGZpbGVzIGNoYW5nZWQsIDczIGlu
c2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvbWVsbGFub3gvbWx4NS9jb3JlL2VuL3hkcC5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQv
bWVsbGFub3gvbWx4NS9jb3JlL2VuL3hkcC5jCmluZGV4IGVmZTYwOWY4ZTNhYS4uOTdlZjFkZjk0
ZDUwIDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9tZWxsYW5veC9tbHg1L2NvcmUv
ZW4veGRwLmMKKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVsbGFub3gvbWx4NS9jb3JlL2Vu
L3hkcC5jCkBAIC0zNCw2ICszNCw3IEBACiAjaW5jbHVkZSA8bmV0L3hkcF9zb2NrX2Rydi5oPgog
I2luY2x1ZGUgImVuL3hkcC5oIgogI2luY2x1ZGUgImVuL3BhcmFtcy5oIgorI2luY2x1ZGUgPGxp
bnV4L2JpdGZpZWxkLmg+CiAKIGludCBtbHg1ZV94ZHBfbWF4X210dShzdHJ1Y3QgbWx4NWVfcGFy
YW1zICpwYXJhbXMsIHN0cnVjdCBtbHg1ZV94c2tfcGFyYW0gKnhzaykKIHsKQEAgLTE2OSwxNSAr
MTcwLDcyIEBAIHN0YXRpYyBpbnQgbWx4NWVfeGRwX3J4X3RpbWVzdGFtcChjb25zdCBzdHJ1Y3Qg
eGRwX21kICpjdHgsIHU2NCAqdGltZXN0YW1wKQogCXJldHVybiAwOwogfQogCisvKiBNYXBwaW5n
IEhXIFJTUyBUeXBlIGJpdHMgQ1FFX1JTU19IVFlQRV9JUCArIENRRV9SU1NfSFRZUEVfTDQgaW50
byA0LWJpdHMqLworI2RlZmluZSBSU1NfVFlQRV9NQVhfVEFCTEUJMTYgLyogNC1iaXRzIG1heCAx
NiBlbnRyaWVzICovCisjZGVmaW5lIFJTU19MNAkJR0VOTUFTSygxLCAwKQorI2RlZmluZSBSU1Nf
TDMJCUdFTk1BU0soMywgMikgLyogU2FtZSBhcyBDUUVfUlNTX0hUWVBFX0lQICovCisKKy8qIFZh
bGlkIGNvbWJpbmF0aW9ucyBvZiBDUUVfUlNTX0hUWVBFX0lQICsgQ1FFX1JTU19IVFlQRV9MNCBz
b3J0ZWQgbnVtZXJpY2FsICovCitlbnVtIG1seDVfcnNzX2hhc2hfdHlwZSB7CisJUlNTX1RZUEVf
Tk9fSEFTSAk9IChGSUVMRF9QUkVQX0NPTlNUKFJTU19MMywgQ1FFX1JTU19JUF9OT05FKSB8CisJ
CQkJICAgRklFTERfUFJFUF9DT05TVChSU1NfTDQsIENRRV9SU1NfTDRfTk9ORSkpLAorCVJTU19U
WVBFX0wzX0lQVjQJPSAoRklFTERfUFJFUF9DT05TVChSU1NfTDMsIENRRV9SU1NfSVBWNCkgfAor
CQkJCSAgIEZJRUxEX1BSRVBfQ09OU1QoUlNTX0w0LCBDUUVfUlNTX0w0X05PTkUpKSwKKwlSU1Nf
VFlQRV9MNF9JUFY0X1RDUAk9IChGSUVMRF9QUkVQX0NPTlNUKFJTU19MMywgQ1FFX1JTU19JUFY0
KSB8CisJCQkJICAgRklFTERfUFJFUF9DT05TVChSU1NfTDQsIENRRV9SU1NfTDRfVENQKSksCisJ
UlNTX1RZUEVfTDRfSVBWNF9VRFAJPSAoRklFTERfUFJFUF9DT05TVChSU1NfTDMsIENRRV9SU1Nf
SVBWNCkgfAorCQkJCSAgIEZJRUxEX1BSRVBfQ09OU1QoUlNTX0w0LCBDUUVfUlNTX0w0X1VEUCkp
LAorCVJTU19UWVBFX0w0X0lQVjRfSVBTRUMJPSAoRklFTERfUFJFUF9DT05TVChSU1NfTDMsIENR
RV9SU1NfSVBWNCkgfAorCQkJCSAgIEZJRUxEX1BSRVBfQ09OU1QoUlNTX0w0LCBDUUVfUlNTX0w0
X0lQU0VDKSksCisJUlNTX1RZUEVfTDNfSVBWNgk9IChGSUVMRF9QUkVQX0NPTlNUKFJTU19MMywg
Q1FFX1JTU19JUFY2KSB8CisJCQkJICAgRklFTERfUFJFUF9DT05TVChSU1NfTDQsIENRRV9SU1Nf
TDRfTk9ORSkpLAorCVJTU19UWVBFX0w0X0lQVjZfVENQCT0gKEZJRUxEX1BSRVBfQ09OU1QoUlNT
X0wzLCBDUUVfUlNTX0lQVjYpIHwKKwkJCQkgICBGSUVMRF9QUkVQX0NPTlNUKFJTU19MNCwgQ1FF
X1JTU19MNF9UQ1ApKSwKKwlSU1NfVFlQRV9MNF9JUFY2X1VEUAk9IChGSUVMRF9QUkVQX0NPTlNU
KFJTU19MMywgQ1FFX1JTU19JUFY2KSB8CisJCQkJICAgRklFTERfUFJFUF9DT05TVChSU1NfTDQs
IENRRV9SU1NfTDRfVURQKSksCisJUlNTX1RZUEVfTDRfSVBWNl9JUFNFQwk9IChGSUVMRF9QUkVQ
X0NPTlNUKFJTU19MMywgQ1FFX1JTU19JUFY2KSB8CisJCQkJICAgRklFTERfUFJFUF9DT05TVChS
U1NfTDQsIENRRV9SU1NfTDRfSVBTRUMpKSwKK30gbWx4NV9yc3NfaGFzaF90eXBlOworCisvKiBJ
bnZhbGlkIGNvbWJpbmF0aW9ucyB3aWxsIHNpbXBseSByZXR1cm4gemVybywgYWxsb3dzIG5vIGJv
dW5kYXJ5IGNoZWNrcyAqLworc3RhdGljIGNvbnN0IGVudW0geGRwX3Jzc19oYXNoX3R5cGUgbWx4
NV94ZHBfcnNzX3R5cGVbUlNTX1RZUEVfTUFYX1RBQkxFXSA9IHsKKwlbUlNTX1RZUEVfTk9fSEFT
SF0JID0gWERQX1JTU19UWVBFX05PTkUsCisJWzFdCQkJID0gWERQX1JTU19UWVBFX05PTkUsIC8q
IEltcGxpY2l0IHplcm8gKi8KKwlbMl0JCQkgPSBYRFBfUlNTX1RZUEVfTk9ORSwgLyogSW1wbGlj
aXQgemVybyAqLworCVszXQkJCSA9IFhEUF9SU1NfVFlQRV9OT05FLCAvKiBJbXBsaWNpdCB6ZXJv
ICovCisJW1JTU19UWVBFX0wzX0lQVjRdCSA9IFhEUF9SU1NfVFlQRV9MM19JUFY0LAorCVtSU1Nf
VFlQRV9MNF9JUFY0X1RDUF0JID0gWERQX1JTU19UWVBFX0w0X0lQVjRfVENQLAorCVtSU1NfVFlQ
RV9MNF9JUFY0X1VEUF0JID0gWERQX1JTU19UWVBFX0w0X0lQVjRfVURQLAorCVtSU1NfVFlQRV9M
NF9JUFY0X0lQU0VDXSA9IFhEUF9SU1NfVFlQRV9MNF9JUFY0X0lQU0VDLAorCVtSU1NfVFlQRV9M
M19JUFY2XQkgPSBYRFBfUlNTX1RZUEVfTDNfSVBWNiwKKwlbUlNTX1RZUEVfTDRfSVBWNl9UQ1Bd
CSA9IFhEUF9SU1NfVFlQRV9MNF9JUFY2X1RDUCwKKwlbUlNTX1RZUEVfTDRfSVBWNl9VRFBdICAg
PSBYRFBfUlNTX1RZUEVfTDRfSVBWNl9VRFAsCisJW1JTU19UWVBFX0w0X0lQVjZfSVBTRUNdID0g
WERQX1JTU19UWVBFX0w0X0lQVjZfSVBTRUMsCisJWzEyXQkJCSA9IFhEUF9SU1NfVFlQRV9OT05F
LCAvKiBJbXBsaWNpdCB6ZXJvICovCisJWzEzXQkJCSA9IFhEUF9SU1NfVFlQRV9OT05FLCAvKiBJ
bXBsaWNpdCB6ZXJvICovCisJWzE0XQkJCSA9IFhEUF9SU1NfVFlQRV9OT05FLCAvKiBJbXBsaWNp
dCB6ZXJvICovCisJWzE1XQkJCSA9IFhEUF9SU1NfVFlQRV9OT05FLCAvKiBJbXBsaWNpdCB6ZXJv
ICovCit9OworCiBzdGF0aWMgaW50IG1seDVlX3hkcF9yeF9oYXNoKGNvbnN0IHN0cnVjdCB4ZHBf
bWQgKmN0eCwgdTMyICpoYXNoLAogCQkJICAgICBlbnVtIHhkcF9yc3NfaGFzaF90eXBlICpyc3Nf
dHlwZSkKIHsKIAljb25zdCBzdHJ1Y3QgbWx4NWVfeGRwX2J1ZmYgKl9jdHggPSAodm9pZCAqKWN0
eDsKKwljb25zdCBzdHJ1Y3QgbWx4NV9jcWU2NCAqY3FlID0gX2N0eC0+Y3FlOworCXUzMiBoYXNo
X3R5cGUsIGw0X3R5cGUsIGlwX3R5cGUsIGxvb2t1cDsKIAogCWlmICh1bmxpa2VseSghKF9jdHgt
PnhkcC5yeHEtPmRldi0+ZmVhdHVyZXMgJiBORVRJRl9GX1JYSEFTSCkpKQogCQlyZXR1cm4gLUVO
T0RBVEE7CiAKLQkqaGFzaCA9IGJlMzJfdG9fY3B1KF9jdHgtPmNxZS0+cnNzX2hhc2hfcmVzdWx0
KTsKKwkqaGFzaCA9IGJlMzJfdG9fY3B1KGNxZS0+cnNzX2hhc2hfcmVzdWx0KTsKKworCWhhc2hf
dHlwZSA9IGNxZS0+cnNzX2hhc2hfdHlwZTsKKwlCVUlMRF9CVUdfT04oQ1FFX1JTU19IVFlQRV9J
UCAhPSBSU1NfTDMpOyAvKiBzYW1lIG1hc2sgKi8KKwlpcF90eXBlID0gaGFzaF90eXBlICYgQ1FF
X1JTU19IVFlQRV9JUDsKKwlsNF90eXBlID0gRklFTERfR0VUKENRRV9SU1NfSFRZUEVfTDQsIGhh
c2hfdHlwZSk7CisJbG9va3VwID0gaXBfdHlwZSB8IGw0X3R5cGU7CisJKnJzc190eXBlID0gbWx4
NV94ZHBfcnNzX3R5cGVbbG9va3VwXTsKKwogCXJldHVybiAwOwogfQogCmRpZmYgLS1naXQgYS9p
bmNsdWRlL2xpbnV4L21seDUvZGV2aWNlLmggYi9pbmNsdWRlL2xpbnV4L21seDUvZGV2aWNlLmgK
aW5kZXggNzFiMDZlYmFkNDAyLi4xZGIxOWE5ZDI2ZTMgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvbGlu
dXgvbWx4NS9kZXZpY2UuaAorKysgYi9pbmNsdWRlL2xpbnV4L21seDUvZGV2aWNlLmgKQEAgLTM2
LDYgKzM2LDcgQEAKICNpbmNsdWRlIDxsaW51eC90eXBlcy5oPgogI2luY2x1ZGUgPHJkbWEvaWJf
dmVyYnMuaD4KICNpbmNsdWRlIDxsaW51eC9tbHg1L21seDVfaWZjLmg+CisjaW5jbHVkZSA8bGlu
dXgvYml0ZmllbGQuaD4KIAogI2lmIGRlZmluZWQoX19MSVRUTEVfRU5ESUFOKQogI2RlZmluZSBN
TFg1X1NFVF9IT1NUX0VORElBTk5FU1MJMApAQCAtOTgwLDE0ICs5ODEsMjMgQEAgZW51bSB7CiB9
OwogCiBlbnVtIHsKLQlDUUVfUlNTX0hUWVBFX0lQCT0gMHgzIDw8IDIsCisJQ1FFX1JTU19IVFlQ
RV9JUAk9IEdFTk1BU0soMywgMiksCiAJLyogY3FlLT5yc3NfaGFzaF90eXBlWzM6Ml0gLSBJUCBk
ZXN0aW5hdGlvbiBzZWxlY3RlZCBmb3IgaGFzaAogCSAqICgwMCA9IG5vbmUsICAwMSA9IElQdjQs
IDEwID0gSVB2NiwgMTEgPSBSZXNlcnZlZCkKIAkgKi8KLQlDUUVfUlNTX0hUWVBFX0w0CT0gMHgz
IDw8IDYsCisJQ1FFX1JTU19JUF9OT05FCQk9IDB4MCwKKwlDUUVfUlNTX0lQVjQJCT0gMHgxLAor
CUNRRV9SU1NfSVBWNgkJPSAweDIsCisJQ1FFX1JTU19SRVNFUlZFRAk9IDB4MywKKworCUNRRV9S
U1NfSFRZUEVfTDQJPSBHRU5NQVNLKDcsIDYpLAogCS8qIGNxZS0+cnNzX2hhc2hfdHlwZVs3OjZd
IC0gTDQgZGVzdGluYXRpb24gc2VsZWN0ZWQgZm9yIGhhc2gKIAkgKiAoMDAgPSBub25lLCAwMSA9
IFRDUC4gMTAgPSBVRFAsIDExID0gSVBTRUMuU1BJCiAJICovCisJQ1FFX1JTU19MNF9OT05FCQk9
IDB4MCwKKwlDUUVfUlNTX0w0X1RDUAkJPSAweDEsCisJQ1FFX1JTU19MNF9VRFAJCT0gMHgyLAor
CUNRRV9SU1NfTDRfSVBTRUMJPSAweDMsCiB9OwogCiBlbnVtIHsKZGlmZiAtLWdpdCBhL2luY2x1
ZGUvbmV0L3hkcC5oIGIvaW5jbHVkZS9uZXQveGRwLmgKaW5kZXggYTc2YzRlYTIwM2VhLi43NmFh
NzQ4ZTc5MjMgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvbmV0L3hkcC5oCisrKyBiL2luY2x1ZGUvbmV0
L3hkcC5oCkBAIC00NjAsMTAgKzQ2MCwxMiBAQCBlbnVtIHhkcF9yc3NfaGFzaF90eXBlIHsKIAlY
RFBfUlNTX1RZUEVfTDRfSVBWNF9UQ1AgICAgID0gWERQX1JTU19MM19JUFY0IHwgWERQX1JTU19M
NCB8IFhEUF9SU1NfTDRfVENQLAogCVhEUF9SU1NfVFlQRV9MNF9JUFY0X1VEUCAgICAgPSBYRFBf
UlNTX0wzX0lQVjQgfCBYRFBfUlNTX0w0IHwgWERQX1JTU19MNF9VRFAsCiAJWERQX1JTU19UWVBF
X0w0X0lQVjRfU0NUUCAgICA9IFhEUF9SU1NfTDNfSVBWNCB8IFhEUF9SU1NfTDQgfCBYRFBfUlNT
X0w0X1NDVFAsCisJWERQX1JTU19UWVBFX0w0X0lQVjRfSVBTRUMgICA9IFhEUF9SU1NfTDNfSVBW
NCB8IFhEUF9SU1NfTDQgfCBYRFBfUlNTX0w0X0lQU0VDLAogCiAJWERQX1JTU19UWVBFX0w0X0lQ
VjZfVENQICAgICA9IFhEUF9SU1NfTDNfSVBWNiB8IFhEUF9SU1NfTDQgfCBYRFBfUlNTX0w0X1RD
UCwKIAlYRFBfUlNTX1RZUEVfTDRfSVBWNl9VRFAgICAgID0gWERQX1JTU19MM19JUFY2IHwgWERQ
X1JTU19MNCB8IFhEUF9SU1NfTDRfVURQLAogCVhEUF9SU1NfVFlQRV9MNF9JUFY2X1NDVFAgICAg
PSBYRFBfUlNTX0wzX0lQVjYgfCBYRFBfUlNTX0w0IHwgWERQX1JTU19MNF9TQ1RQLAorCVhEUF9S
U1NfVFlQRV9MNF9JUFY2X0lQU0VDICAgPSBYRFBfUlNTX0wzX0lQVjYgfCBYRFBfUlNTX0w0IHwg
WERQX1JTU19MNF9JUFNFQywKIAogCVhEUF9SU1NfVFlQRV9MNF9JUFY2X1RDUF9FWCAgPSBYRFBf
UlNTX1RZUEVfTDRfSVBWNl9UQ1AgIHwgWERQX1JTU19MM19EWU5IRFIsCiAJWERQX1JTU19UWVBF
X0w0X0lQVjZfVURQX0VYICA9IFhEUF9SU1NfVFlQRV9MNF9JUFY2X1VEUCAgfCBYRFBfUlNTX0wz
X0RZTkhEUiwKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3Jn
Cmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxh
bgo=
