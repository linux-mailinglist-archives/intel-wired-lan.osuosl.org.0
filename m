Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EC3886DF5CD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Apr 2023 14:43:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 71E096155A;
	Wed, 12 Apr 2023 12:43:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 71E096155A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681303394;
	bh=VRbZegVY8Lfiq2QkBpxmg1X8YZqPl2h56IyT4ZKk9No=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ukeEH43I2MlLoI26QHW3MaD9FVFoQuus8dex6+TUkl5BYOa5aOM3gmQzEfOBFsG7/
	 UTtOf0irEV3jFYZsRjJSVIK0/glw/z66Iq+t+dKxMcIpnuzPgSOHL6sLEkwV2BKyKX
	 6+hmD+BY0JT6ivb9apV2+j7xmOR067LegXEazYZpVSiQKqihzDuHnjl2Oi1MGo+iCH
	 KA6TFTxV7dK8Oocr6m4BwJ/4SL+VQ0iy1sS3fg5bSzrPhdOgxJXOsiBTMvj7jKRybJ
	 HpZyKFhixj30HnIaEy+cGAbR3wSTB6yTNdCKJria+GNMuSJGFAzraoTid6zAcXdhJd
	 kRxwh2q64Crqg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aWACOVIC494I; Wed, 12 Apr 2023 12:43:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4171061543;
	Wed, 12 Apr 2023 12:43:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4171061543
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E25751BF45A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 12:43:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BC4A441D65
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 12:43:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BC4A441D65
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KF64M4UCSzxE for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Apr 2023 12:43:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CE9C74018B
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CE9C74018B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 12:43:04 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-596-hv4gSIDEMy-Ki2tYJWmJBw-1; Wed, 12 Apr 2023 08:43:00 -0400
X-MC-Unique: hv4gSIDEMy-Ki2tYJWmJBw-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
 [10.11.54.10])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C49A18996F2;
 Wed, 12 Apr 2023 12:42:58 +0000 (UTC)
Received: from firesoul.localdomain (unknown [10.45.242.24])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5DD04492B00;
 Wed, 12 Apr 2023 12:42:58 +0000 (UTC)
Received: from [10.1.1.1] (localhost [IPv6:::1])
 by firesoul.localdomain (Postfix) with ESMTP id 796F4307372E8;
 Wed, 12 Apr 2023 14:42:57 +0200 (CEST)
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: bpf@vger.kernel.org, Stanislav Fomichev <sdf@google.com>,
 =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Date: Wed, 12 Apr 2023 14:42:57 +0200
Message-ID: <168130337744.150247.12930444903357087286.stgit@firesoul>
In-Reply-To: <168130333143.150247.11159481574477358816.stgit@firesoul>
References: <168130333143.150247.11159481574477358816.stgit@firesoul>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.10
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1681303383;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=F4P5FHgst54Guyz7AOdIGfebsTZwoSbmDnoCPryHKKQ=;
 b=b0KDpgmOH5X1wLR+0g5EzlLWogbqGla+JGwdFk3ZX6alLCCCyxisPvZ9r6MRzjUsbLT6sl
 V53WaVSMy4kYUgJ2+ctlv8AutEYHxyqTJo6CIG+jm8DC09ScKR5WMNpfxd5jx51Pjtixv/
 fxaqbWtgi2xNm9KkH7a+UJSqZls51CY=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=b0KDpgmO
Subject: [Intel-wired-lan] [PATCH bpf V8 4/7] mlx5: bpf_xdp_metadata_rx_hash
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
bWVsbGFub3gvbWx4NS9jb3JlL2VuL3hkcC5jCmluZGV4IGVmZTYwOWY4ZTNhYS4uZDlkM2I5ZTFm
MTVhIDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9tZWxsYW5veC9tbHg1L2NvcmUv
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
U1NfTDQsIENRRV9SU1NfTDRfSVBTRUMpKSwKK307CisKKy8qIEludmFsaWQgY29tYmluYXRpb25z
IHdpbGwgc2ltcGx5IHJldHVybiB6ZXJvLCBhbGxvd3Mgbm8gYm91bmRhcnkgY2hlY2tzICovCitz
dGF0aWMgY29uc3QgZW51bSB4ZHBfcnNzX2hhc2hfdHlwZSBtbHg1X3hkcF9yc3NfdHlwZVtSU1Nf
VFlQRV9NQVhfVEFCTEVdID0geworCVtSU1NfVFlQRV9OT19IQVNIXQkgPSBYRFBfUlNTX1RZUEVf
Tk9ORSwKKwlbMV0JCQkgPSBYRFBfUlNTX1RZUEVfTk9ORSwgLyogSW1wbGljaXQgemVybyAqLwor
CVsyXQkJCSA9IFhEUF9SU1NfVFlQRV9OT05FLCAvKiBJbXBsaWNpdCB6ZXJvICovCisJWzNdCQkJ
ID0gWERQX1JTU19UWVBFX05PTkUsIC8qIEltcGxpY2l0IHplcm8gKi8KKwlbUlNTX1RZUEVfTDNf
SVBWNF0JID0gWERQX1JTU19UWVBFX0wzX0lQVjQsCisJW1JTU19UWVBFX0w0X0lQVjRfVENQXQkg
PSBYRFBfUlNTX1RZUEVfTDRfSVBWNF9UQ1AsCisJW1JTU19UWVBFX0w0X0lQVjRfVURQXQkgPSBY
RFBfUlNTX1RZUEVfTDRfSVBWNF9VRFAsCisJW1JTU19UWVBFX0w0X0lQVjRfSVBTRUNdID0gWERQ
X1JTU19UWVBFX0w0X0lQVjRfSVBTRUMsCisJW1JTU19UWVBFX0wzX0lQVjZdCSA9IFhEUF9SU1Nf
VFlQRV9MM19JUFY2LAorCVtSU1NfVFlQRV9MNF9JUFY2X1RDUF0JID0gWERQX1JTU19UWVBFX0w0
X0lQVjZfVENQLAorCVtSU1NfVFlQRV9MNF9JUFY2X1VEUF0gICA9IFhEUF9SU1NfVFlQRV9MNF9J
UFY2X1VEUCwKKwlbUlNTX1RZUEVfTDRfSVBWNl9JUFNFQ10gPSBYRFBfUlNTX1RZUEVfTDRfSVBW
Nl9JUFNFQywKKwlbMTJdCQkJID0gWERQX1JTU19UWVBFX05PTkUsIC8qIEltcGxpY2l0IHplcm8g
Ki8KKwlbMTNdCQkJID0gWERQX1JTU19UWVBFX05PTkUsIC8qIEltcGxpY2l0IHplcm8gKi8KKwlb
MTRdCQkJID0gWERQX1JTU19UWVBFX05PTkUsIC8qIEltcGxpY2l0IHplcm8gKi8KKwlbMTVdCQkJ
ID0gWERQX1JTU19UWVBFX05PTkUsIC8qIEltcGxpY2l0IHplcm8gKi8KK307CisKIHN0YXRpYyBp
bnQgbWx4NWVfeGRwX3J4X2hhc2goY29uc3Qgc3RydWN0IHhkcF9tZCAqY3R4LCB1MzIgKmhhc2gs
CiAJCQkgICAgIGVudW0geGRwX3Jzc19oYXNoX3R5cGUgKnJzc190eXBlKQogewogCWNvbnN0IHN0
cnVjdCBtbHg1ZV94ZHBfYnVmZiAqX2N0eCA9ICh2b2lkICopY3R4OworCWNvbnN0IHN0cnVjdCBt
bHg1X2NxZTY0ICpjcWUgPSBfY3R4LT5jcWU7CisJdTMyIGhhc2hfdHlwZSwgbDRfdHlwZSwgaXBf
dHlwZSwgbG9va3VwOwogCiAJaWYgKHVubGlrZWx5KCEoX2N0eC0+eGRwLnJ4cS0+ZGV2LT5mZWF0
dXJlcyAmIE5FVElGX0ZfUlhIQVNIKSkpCiAJCXJldHVybiAtRU5PREFUQTsKIAotCSpoYXNoID0g
YmUzMl90b19jcHUoX2N0eC0+Y3FlLT5yc3NfaGFzaF9yZXN1bHQpOworCSpoYXNoID0gYmUzMl90
b19jcHUoY3FlLT5yc3NfaGFzaF9yZXN1bHQpOworCisJaGFzaF90eXBlID0gY3FlLT5yc3NfaGFz
aF90eXBlOworCUJVSUxEX0JVR19PTihDUUVfUlNTX0hUWVBFX0lQICE9IFJTU19MMyk7IC8qIHNh
bWUgbWFzayAqLworCWlwX3R5cGUgPSBoYXNoX3R5cGUgJiBDUUVfUlNTX0hUWVBFX0lQOworCWw0
X3R5cGUgPSBGSUVMRF9HRVQoQ1FFX1JTU19IVFlQRV9MNCwgaGFzaF90eXBlKTsKKwlsb29rdXAg
PSBpcF90eXBlIHwgbDRfdHlwZTsKKwkqcnNzX3R5cGUgPSBtbHg1X3hkcF9yc3NfdHlwZVtsb29r
dXBdOworCiAJcmV0dXJuIDA7CiB9CiAKZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvbWx4NS9k
ZXZpY2UuaCBiL2luY2x1ZGUvbGludXgvbWx4NS9kZXZpY2UuaAppbmRleCA3MWIwNmViYWQ0MDIu
LjFkYjE5YTlkMjZlMyAxMDA2NDQKLS0tIGEvaW5jbHVkZS9saW51eC9tbHg1L2RldmljZS5oCisr
KyBiL2luY2x1ZGUvbGludXgvbWx4NS9kZXZpY2UuaApAQCAtMzYsNiArMzYsNyBAQAogI2luY2x1
ZGUgPGxpbnV4L3R5cGVzLmg+CiAjaW5jbHVkZSA8cmRtYS9pYl92ZXJicy5oPgogI2luY2x1ZGUg
PGxpbnV4L21seDUvbWx4NV9pZmMuaD4KKyNpbmNsdWRlIDxsaW51eC9iaXRmaWVsZC5oPgogCiAj
aWYgZGVmaW5lZChfX0xJVFRMRV9FTkRJQU4pCiAjZGVmaW5lIE1MWDVfU0VUX0hPU1RfRU5ESUFO
TkVTUwkwCkBAIC05ODAsMTQgKzk4MSwyMyBAQCBlbnVtIHsKIH07CiAKIGVudW0gewotCUNRRV9S
U1NfSFRZUEVfSVAJPSAweDMgPDwgMiwKKwlDUUVfUlNTX0hUWVBFX0lQCT0gR0VOTUFTSygzLCAy
KSwKIAkvKiBjcWUtPnJzc19oYXNoX3R5cGVbMzoyXSAtIElQIGRlc3RpbmF0aW9uIHNlbGVjdGVk
IGZvciBoYXNoCiAJICogKDAwID0gbm9uZSwgIDAxID0gSVB2NCwgMTAgPSBJUHY2LCAxMSA9IFJl
c2VydmVkKQogCSAqLwotCUNRRV9SU1NfSFRZUEVfTDQJPSAweDMgPDwgNiwKKwlDUUVfUlNTX0lQ
X05PTkUJCT0gMHgwLAorCUNRRV9SU1NfSVBWNAkJPSAweDEsCisJQ1FFX1JTU19JUFY2CQk9IDB4
MiwKKwlDUUVfUlNTX1JFU0VSVkVECT0gMHgzLAorCisJQ1FFX1JTU19IVFlQRV9MNAk9IEdFTk1B
U0soNywgNiksCiAJLyogY3FlLT5yc3NfaGFzaF90eXBlWzc6Nl0gLSBMNCBkZXN0aW5hdGlvbiBz
ZWxlY3RlZCBmb3IgaGFzaAogCSAqICgwMCA9IG5vbmUsIDAxID0gVENQLiAxMCA9IFVEUCwgMTEg
PSBJUFNFQy5TUEkKIAkgKi8KKwlDUUVfUlNTX0w0X05PTkUJCT0gMHgwLAorCUNRRV9SU1NfTDRf
VENQCQk9IDB4MSwKKwlDUUVfUlNTX0w0X1VEUAkJPSAweDIsCisJQ1FFX1JTU19MNF9JUFNFQwk9
IDB4MywKIH07CiAKIGVudW0gewpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9uZXQveGRwLmggYi9pbmNs
dWRlL25ldC94ZHAuaAppbmRleCBhNzZjNGVhMjAzZWEuLjc2YWE3NDhlNzkyMyAxMDA2NDQKLS0t
IGEvaW5jbHVkZS9uZXQveGRwLmgKKysrIGIvaW5jbHVkZS9uZXQveGRwLmgKQEAgLTQ2MCwxMCAr
NDYwLDEyIEBAIGVudW0geGRwX3Jzc19oYXNoX3R5cGUgewogCVhEUF9SU1NfVFlQRV9MNF9JUFY0
X1RDUCAgICAgPSBYRFBfUlNTX0wzX0lQVjQgfCBYRFBfUlNTX0w0IHwgWERQX1JTU19MNF9UQ1As
CiAJWERQX1JTU19UWVBFX0w0X0lQVjRfVURQICAgICA9IFhEUF9SU1NfTDNfSVBWNCB8IFhEUF9S
U1NfTDQgfCBYRFBfUlNTX0w0X1VEUCwKIAlYRFBfUlNTX1RZUEVfTDRfSVBWNF9TQ1RQICAgID0g
WERQX1JTU19MM19JUFY0IHwgWERQX1JTU19MNCB8IFhEUF9SU1NfTDRfU0NUUCwKKwlYRFBfUlNT
X1RZUEVfTDRfSVBWNF9JUFNFQyAgID0gWERQX1JTU19MM19JUFY0IHwgWERQX1JTU19MNCB8IFhE
UF9SU1NfTDRfSVBTRUMsCiAKIAlYRFBfUlNTX1RZUEVfTDRfSVBWNl9UQ1AgICAgID0gWERQX1JT
U19MM19JUFY2IHwgWERQX1JTU19MNCB8IFhEUF9SU1NfTDRfVENQLAogCVhEUF9SU1NfVFlQRV9M
NF9JUFY2X1VEUCAgICAgPSBYRFBfUlNTX0wzX0lQVjYgfCBYRFBfUlNTX0w0IHwgWERQX1JTU19M
NF9VRFAsCiAJWERQX1JTU19UWVBFX0w0X0lQVjZfU0NUUCAgICA9IFhEUF9SU1NfTDNfSVBWNiB8
IFhEUF9SU1NfTDQgfCBYRFBfUlNTX0w0X1NDVFAsCisJWERQX1JTU19UWVBFX0w0X0lQVjZfSVBT
RUMgICA9IFhEUF9SU1NfTDNfSVBWNiB8IFhEUF9SU1NfTDQgfCBYRFBfUlNTX0w0X0lQU0VDLAog
CiAJWERQX1JTU19UWVBFX0w0X0lQVjZfVENQX0VYICA9IFhEUF9SU1NfVFlQRV9MNF9JUFY2X1RD
UCAgfCBYRFBfUlNTX0wzX0RZTkhEUiwKIAlYRFBfUlNTX1RZUEVfTDRfSVBWNl9VRFBfRVggID0g
WERQX1JTU19UWVBFX0w0X0lQVjZfVURQICB8IFhEUF9SU1NfTDNfRFlOSERSLAoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBt
YWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vv
c2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
