Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DEBAC6D2370
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Mar 2023 17:03:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8527560B58;
	Fri, 31 Mar 2023 15:03:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8527560B58
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680275009;
	bh=Ep2yA2WcE7fNsGpRAqSxGjD4iz+jB0OE+7PaEFeUmQA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VHt+UTRMBRLYxPucq0zhKufdZpPZ59oXV9tKObVJIK14zlsHrhBnWO+7CNg3xtUJ5
	 9gW+9yfV7qeqocqaqWzB10XKOV975j0jvoQUgmhx0UhVKDW8EOyQtJLLwufIn6OfWf
	 8GVjKUwsPm73AYwM8d+Hn2Fc2/vSx50xTx0xLxT+CUMtIX8xjsRmZsBrqaqLYXWIT7
	 dKyf8TdnzGEbdEHGrZwk2bvUqZf9ytkeoKWcIWuG65pP0O/Ln935e8Z1ss62PaXxSW
	 J/qtAS0cLxoi1LCFNRu+xzHn7Ubknu8TmcqESzx7FcXC6dIkmgzBS6/jX/V4/lFasR
	 A++KCpt2BhBcg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pZ6GhNXnCR8R; Fri, 31 Mar 2023 15:03:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2BA6D607C9;
	Fri, 31 Mar 2023 15:03:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2BA6D607C9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5E9F11BF33F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Mar 2023 15:03:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 37F77405C7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Mar 2023 15:03:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 37F77405C7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id se50ODYU9T4R for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 Mar 2023 15:03:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4BDD8405C2
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4BDD8405C2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Mar 2023 15:03:22 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-672-coIUvN9vO32002yrnrLncw-1; Fri, 31 Mar 2023 11:03:14 -0400
X-MC-Unique: coIUvN9vO32002yrnrLncw-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
 [10.11.54.9])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 26742857FB2;
 Fri, 31 Mar 2023 15:03:13 +0000 (UTC)
Received: from firesoul.localdomain (unknown [10.45.242.12])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B0BCF492B00;
 Fri, 31 Mar 2023 15:03:12 +0000 (UTC)
Received: from [10.1.1.1] (localhost [IPv6:::1])
 by firesoul.localdomain (Postfix) with ESMTP id 0BD3330736C72;
 Fri, 31 Mar 2023 17:03:12 +0200 (CEST)
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: bpf@vger.kernel.org, Stanislav Fomichev <sdf@google.com>,
 =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Date: Fri, 31 Mar 2023 17:03:12 +0200
Message-ID: <168027499200.3941176.3703177858599376146.stgit@firesoul>
In-Reply-To: <168027495947.3941176.6690238098903275241.stgit@firesoul>
References: <168027495947.3941176.6690238098903275241.stgit@firesoul>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.9
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1680275001;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=BkM5MrtavVWbw9CoSS4MQ+ifDXUPqJk3vfzUVlV46Tw=;
 b=E93e36IMrCq0pAkkLTx4IpJc0SWLrRM33pvc5AxX2+0spbWwa5mnGRAPAYXd4ZULp13XdV
 jclcrU31QAsoHD9t2felzAGUOKnG4MbOsw9PijAKOHLBM0EFMLOuwKL8Z41ASvLruHMpBG
 x5Wfesoyg18/cQ1NkVNzSwRQiDdgPCk=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=E93e36IM
Subject: [Intel-wired-lan] [PATCH bpf V4 2/5] mlx5: bpf_xdp_metadata_rx_hash
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
cCByc3MgaGFzaCB0eXBlCnZpYSBtYXBwaW5nIHRhYmxlLgoKVGhlIG1seDUgaGFyZHdhcmUgY2Fu
IGFsc28gaWRlbnRpZnkgYW5kIFJTUyBoYXNoIElQU0VDLiAgVGhpcyBpbmRpY2F0ZQpoYXNoIGlu
Y2x1ZGVzIFNQSSAoU2VjdXJpdHkgUGFyYW1ldGVycyBJbmRleCkgYXMgcGFydCBvZiBJUFNFQyBo
YXNoLgoKRXh0ZW5kIHhkcCBjb3JlIGVudW0geGRwX3Jzc19oYXNoX3R5cGUgd2l0aCBJUFNFQyBo
YXNoIHR5cGUuCgpGaXhlczogYmM4ZDQwNWIxYmE5ICgibmV0L21seDVlOiBTdXBwb3J0IFJYIFhE
UCBtZXRhZGF0YSIpClNpZ25lZC1vZmYtYnk6IEplc3BlciBEYW5nYWFyZCBCcm91ZXIgPGJyb3Vl
ckByZWRoYXQuY29tPgpBY2tlZC1ieTogVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJl
ZGhhdC5jb20+Ci0tLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVsbGFub3gvbWx4NS9jb3JlL2Vu
L3hkcC5jIHwgICA2MyArKysrKysrKysrKysrKysrKysrKystCiBpbmNsdWRlL2xpbnV4L21seDUv
ZGV2aWNlLmggICAgICAgICAgICAgICAgICAgICAgfCAgIDE0ICsrKystCiBpbmNsdWRlL25ldC94
ZHAuaCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgICAzICsKIDMgZmlsZXMgY2hh
bmdlZCwgNzYgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL25ldC9ldGhlcm5ldC9tZWxsYW5veC9tbHg1L2NvcmUvZW4veGRwLmMgYi9kcml2ZXJzL25l
dC9ldGhlcm5ldC9tZWxsYW5veC9tbHg1L2NvcmUvZW4veGRwLmMKaW5kZXggYzVkYWU0OGI3OTMy
Li4wYWJmZWQwZmYzZTUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L21lbGxhbm94
L21seDUvY29yZS9lbi94ZHAuYworKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9tZWxsYW5veC9t
bHg1L2NvcmUvZW4veGRwLmMKQEAgLTM0LDYgKzM0LDcgQEAKICNpbmNsdWRlIDxuZXQveGRwX3Nv
Y2tfZHJ2Lmg+CiAjaW5jbHVkZSAiZW4veGRwLmgiCiAjaW5jbHVkZSAiZW4vcGFyYW1zLmgiCisj
aW5jbHVkZSA8bGludXgvYml0ZmllbGQuaD4KIAogaW50IG1seDVlX3hkcF9tYXhfbXR1KHN0cnVj
dCBtbHg1ZV9wYXJhbXMgKnBhcmFtcywgc3RydWN0IG1seDVlX3hza19wYXJhbSAqeHNrKQogewpA
QCAtMTY5LDE0ICsxNzAsNzIgQEAgc3RhdGljIGludCBtbHg1ZV94ZHBfcnhfdGltZXN0YW1wKGNv
bnN0IHN0cnVjdCB4ZHBfbWQgKmN0eCwgdTY0ICp0aW1lc3RhbXApCiAJcmV0dXJuIDA7CiB9CiAK
LXN0YXRpYyBpbnQgbWx4NWVfeGRwX3J4X2hhc2goY29uc3Qgc3RydWN0IHhkcF9tZCAqY3R4LCB1
MzIgKmhhc2gpCisvKiBNYXBwaW5nIEhXIFJTUyBUeXBlIGJpdHMgQ1FFX1JTU19IVFlQRV9JUCAr
IENRRV9SU1NfSFRZUEVfTDQgaW50byA0LWJpdHMqLworI2RlZmluZSBSU1NfVFlQRV9NQVhfVEFC
TEUJMTYgLyogNC1iaXRzIG1heCAxNiBlbnRyaWVzICovCisjZGVmaW5lIFJTU19MNAkJR0VOTUFT
SygxLDApCisjZGVmaW5lIFJTU19MMwkJR0VOTUFTSygzLDIpIC8qIFNhbWUgYXMgQ1FFX1JTU19I
VFlQRV9JUCAqLworCisvKiBWYWxpZCBjb21iaW5hdGlvbnMgb2YgQ1FFX1JTU19IVFlQRV9JUCAr
IENRRV9SU1NfSFRZUEVfTDQgc29ydGVkIG51bWVyaWNhbCAqLworZW51bSBtbHg1X3Jzc19oYXNo
X3R5cGUgeworCVJTU19UWVBFX05PX0hBU0gJPSAoRklFTERfUFJFUF9DT05TVChSU1NfTDMsIENR
RV9SU1NfSVBfTk9ORSl8IFwKKwkJCQkgICBGSUVMRF9QUkVQX0NPTlNUKFJTU19MNCwgQ1FFX1JT
U19MNF9OT05FKSksCisJUlNTX1RZUEVfTDNfSVBWNAk9IChGSUVMRF9QUkVQX0NPTlNUKFJTU19M
MywgQ1FFX1JTU19JUFY0KXwgXAorCQkJCSAgIEZJRUxEX1BSRVBfQ09OU1QoUlNTX0w0LCBDUUVf
UlNTX0w0X05PTkUpKSwKKwlSU1NfVFlQRV9MNF9JUFY0X1RDUAk9IChGSUVMRF9QUkVQX0NPTlNU
KFJTU19MMywgQ1FFX1JTU19JUFY0KXwgXAorCQkJCSAgIEZJRUxEX1BSRVBfQ09OU1QoUlNTX0w0
LCBDUUVfUlNTX0w0X1RDUCkpLAorCVJTU19UWVBFX0w0X0lQVjRfVURQCT0gKEZJRUxEX1BSRVBf
Q09OU1QoUlNTX0wzLCBDUUVfUlNTX0lQVjQpfCBcCisJCQkJICAgRklFTERfUFJFUF9DT05TVChS
U1NfTDQsIENRRV9SU1NfTDRfVURQKSksCisJUlNTX1RZUEVfTDRfSVBWNF9JUFNFQwk9IChGSUVM
RF9QUkVQX0NPTlNUKFJTU19MMywgQ1FFX1JTU19JUFY0KXwgXAorCQkJCSAgIEZJRUxEX1BSRVBf
Q09OU1QoUlNTX0w0LCBDUUVfUlNTX0w0X0lQU0VDKSksCisJUlNTX1RZUEVfTDNfSVBWNgk9IChG
SUVMRF9QUkVQX0NPTlNUKFJTU19MMywgQ1FFX1JTU19JUFY2KXwgXAorCQkJCSAgIEZJRUxEX1BS
RVBfQ09OU1QoUlNTX0w0LCBDUUVfUlNTX0w0X05PTkUpKSwKKwlSU1NfVFlQRV9MNF9JUFY2X1RD
UAk9IChGSUVMRF9QUkVQX0NPTlNUKFJTU19MMywgQ1FFX1JTU19JUFY2KXwgXAorCQkJCSAgIEZJ
RUxEX1BSRVBfQ09OU1QoUlNTX0w0LCBDUUVfUlNTX0w0X1RDUCkpLAorCVJTU19UWVBFX0w0X0lQ
VjZfVURQCT0gKEZJRUxEX1BSRVBfQ09OU1QoUlNTX0wzLCBDUUVfUlNTX0lQVjYpfCBcCisJCQkJ
ICAgRklFTERfUFJFUF9DT05TVChSU1NfTDQsIENRRV9SU1NfTDRfVURQKSksCisJUlNTX1RZUEVf
TDRfSVBWNl9JUFNFQwk9IChGSUVMRF9QUkVQX0NPTlNUKFJTU19MMywgQ1FFX1JTU19JUFY2KXwg
XAorCQkJCSAgIEZJRUxEX1BSRVBfQ09OU1QoUlNTX0w0LCBDUUVfUlNTX0w0X0lQU0VDKSksCit9
IG1seDVfcnNzX2hhc2hfdHlwZTsKKworLyogSW52YWxpZCBjb21iaW5hdGlvbnMgd2lsbCBzaW1w
bHkgcmV0dXJuIHplcm8sIGFsbG93cyBubyBib3VuZHJ5IGNoZWNrcyAqLworc3RhdGljIGNvbnN0
IGVudW0geGRwX3Jzc19oYXNoX3R5cGUgbWx4NV94ZHBfcnNzX3R5cGVbUlNTX1RZUEVfTUFYX1RB
QkxFXSA9IHsKKwlbUlNTX1RZUEVfTk9fSEFTSF0JPSBYRFBfUlNTX1RZUEVfTk9ORSwKKwlbMV0J
CQk9IFhEUF9SU1NfVFlQRV9OT05FLCAvKiBJbXBsaWNpdCB6ZXJvICovCisJWzJdCQkJPSBYRFBf
UlNTX1RZUEVfTk9ORSwgLyogSW1wbGljaXQgemVybyAqLworCVszXQkJCT0gWERQX1JTU19UWVBF
X05PTkUsIC8qIEltcGxpY2l0IHplcm8gKi8KKwlbUlNTX1RZUEVfTDNfSVBWNF0JPSBYRFBfUlNT
X1RZUEVfTDNfSVBWNCwKKwlbUlNTX1RZUEVfTDRfSVBWNF9UQ1BdCT0gWERQX1JTU19UWVBFX0w0
X0lQVjRfVENQLAorCVtSU1NfVFlQRV9MNF9JUFY0X1VEUF0JPSBYRFBfUlNTX1RZUEVfTDRfSVBW
NF9VRFAsCisJW1JTU19UWVBFX0w0X0lQVjRfSVBTRUNdPSBYRFBfUlNTX1RZUEVfTDRfSVBWNF9J
UFNFQywKKwlbUlNTX1RZUEVfTDNfSVBWNl0JPSBYRFBfUlNTX1RZUEVfTDNfSVBWNiwKKwlbUlNT
X1RZUEVfTDRfSVBWNl9UQ1BdCT0gWERQX1JTU19UWVBFX0w0X0lQVjZfVENQLAorCVtSU1NfVFlQ
RV9MNF9JUFY2X1VEUF0gID0gWERQX1JTU19UWVBFX0w0X0lQVjZfVURQLAorCVtSU1NfVFlQRV9M
NF9JUFY2X0lQU0VDXT0gWERQX1JTU19UWVBFX0w0X0lQVjZfSVBTRUMsCisJWzEyXQkJCT0gWERQ
X1JTU19UWVBFX05PTkUsIC8qIEltcGxpY2l0IHplcm8gKi8KKwlbMTNdCQkJPSBYRFBfUlNTX1RZ
UEVfTk9ORSwgLyogSW1wbGljaXQgemVybyAqLworCVsxNF0JCQk9IFhEUF9SU1NfVFlQRV9OT05F
LCAvKiBJbXBsaWNpdCB6ZXJvICovCisJWzE1XQkJCT0gWERQX1JTU19UWVBFX05PTkUsIC8qIElt
cGxpY2l0IHplcm8gKi8KK307CisKK3N0YXRpYyBpbnQgbWx4NWVfeGRwX3J4X2hhc2goY29uc3Qg
c3RydWN0IHhkcF9tZCAqY3R4LCB1MzIgKmhhc2gsCisJCQkgICAgIGVudW0geGRwX3Jzc19oYXNo
X3R5cGUgKnJzc190eXBlKQogewogCWNvbnN0IHN0cnVjdCBtbHg1ZV94ZHBfYnVmZiAqX2N0eCA9
ICh2b2lkICopY3R4OworCWNvbnN0IHN0cnVjdCBtbHg1X2NxZTY0ICpjcWUgPSBfY3R4LT5jcWU7
CisJdTMyIGhhc2hfdHlwZSwgbDRfdHlwZSwgaXBfdHlwZSwgbG9va3VwOwogCiAJaWYgKHVubGlr
ZWx5KCEoX2N0eC0+eGRwLnJ4cS0+ZGV2LT5mZWF0dXJlcyAmIE5FVElGX0ZfUlhIQVNIKSkpCiAJ
CXJldHVybiAtRU5PREFUQTsKIAotCSpoYXNoID0gYmUzMl90b19jcHUoX2N0eC0+Y3FlLT5yc3Nf
aGFzaF9yZXN1bHQpOworCSpoYXNoID0gYmUzMl90b19jcHUoY3FlLT5yc3NfaGFzaF9yZXN1bHQp
OworCisJaGFzaF90eXBlID0gY3FlLT5yc3NfaGFzaF90eXBlOworCUJVSUxEX0JVR19PTihDUUVf
UlNTX0hUWVBFX0lQICE9IFJTU19MMyk7IC8qIHNhbWUgbWFzayAqLworCWlwX3R5cGUgPSBoYXNo
X3R5cGUgJiBDUUVfUlNTX0hUWVBFX0lQOworCWw0X3R5cGUgPSBGSUVMRF9HRVQoQ1FFX1JTU19I
VFlQRV9MNCwgaGFzaF90eXBlKTsKKwlsb29rdXAgPSBpcF90eXBlIHwgbDRfdHlwZTsKKwkqcnNz
X3R5cGUgPSBtbHg1X3hkcF9yc3NfdHlwZVtsb29rdXBdOworCiAJcmV0dXJuIDA7CiB9CiAKZGlm
ZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvbWx4NS9kZXZpY2UuaCBiL2luY2x1ZGUvbGludXgvbWx4
NS9kZXZpY2UuaAppbmRleCA3MWIwNmViYWQ0MDIuLjI3YWE5YWUxMDk5NiAxMDA2NDQKLS0tIGEv
aW5jbHVkZS9saW51eC9tbHg1L2RldmljZS5oCisrKyBiL2luY2x1ZGUvbGludXgvbWx4NS9kZXZp
Y2UuaApAQCAtMzYsNiArMzYsNyBAQAogI2luY2x1ZGUgPGxpbnV4L3R5cGVzLmg+CiAjaW5jbHVk
ZSA8cmRtYS9pYl92ZXJicy5oPgogI2luY2x1ZGUgPGxpbnV4L21seDUvbWx4NV9pZmMuaD4KKyNp
bmNsdWRlIDxsaW51eC9iaXRmaWVsZC5oPgogCiAjaWYgZGVmaW5lZChfX0xJVFRMRV9FTkRJQU4p
CiAjZGVmaW5lIE1MWDVfU0VUX0hPU1RfRU5ESUFOTkVTUwkwCkBAIC05ODAsMTQgKzk4MSwyMyBA
QCBlbnVtIHsKIH07CiAKIGVudW0gewotCUNRRV9SU1NfSFRZUEVfSVAJPSAweDMgPDwgMiwKKwlD
UUVfUlNTX0hUWVBFX0lQCT0gR0VOTUFTSygzLDIpLAogCS8qIGNxZS0+cnNzX2hhc2hfdHlwZVsz
OjJdIC0gSVAgZGVzdGluYXRpb24gc2VsZWN0ZWQgZm9yIGhhc2gKIAkgKiAoMDAgPSBub25lLCAg
MDEgPSBJUHY0LCAxMCA9IElQdjYsIDExID0gUmVzZXJ2ZWQpCiAJICovCi0JQ1FFX1JTU19IVFlQ
RV9MNAk9IDB4MyA8PCA2LAorCUNRRV9SU1NfSVBfTk9ORQkJPSAweDAsCisJQ1FFX1JTU19JUFY0
CQk9IDB4MSwKKwlDUUVfUlNTX0lQVjYJCT0gMHgyLAorCUNRRV9SU1NfUkVTRVJWRUQJPSAweDMs
CisKKwlDUUVfUlNTX0hUWVBFX0w0CT0gR0VOTUFTSyg3LDYpLAogCS8qIGNxZS0+cnNzX2hhc2hf
dHlwZVs3OjZdIC0gTDQgZGVzdGluYXRpb24gc2VsZWN0ZWQgZm9yIGhhc2gKIAkgKiAoMDAgPSBu
b25lLCAwMSA9IFRDUC4gMTAgPSBVRFAsIDExID0gSVBTRUMuU1BJCiAJICovCisJQ1FFX1JTU19M
NF9OT05FCQk9IDB4MCwKKwlDUUVfUlNTX0w0X1RDUAkJPSAweDEsCisJQ1FFX1JTU19MNF9VRFAJ
CT0gMHgyLAorCUNRRV9SU1NfTDRfSVBTRUMJPSAweDMsCiB9OwogCiBlbnVtIHsKZGlmZiAtLWdp
dCBhL2luY2x1ZGUvbmV0L3hkcC5oIGIvaW5jbHVkZS9uZXQveGRwLmgKaW5kZXggMjE2ZTkxMGRh
MWNmLi4xNTU2MDJmYzAyNTIgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvbmV0L3hkcC5oCisrKyBiL2lu
Y2x1ZGUvbmV0L3hkcC5oCkBAIC00NjAsMTQgKzQ2MCwxNyBAQCBlbnVtIHhkcF9yc3NfaGFzaF90
eXBlIHsKIAlYRFBfUlNTX1RZUEVfTDRfSVBWNF9UQ1AgICAgID0gWERQX1JTU19MM19JUFY0IHwg
WERQX1JTU19MNCB8IFhEUF9SU1NfTDRfVENQLAogCVhEUF9SU1NfVFlQRV9MNF9JUFY0X1VEUCAg
ICAgPSBYRFBfUlNTX0wzX0lQVjQgfCBYRFBfUlNTX0w0IHwgWERQX1JTU19MNF9VRFAsCiAJWERQ
X1JTU19UWVBFX0w0X0lQVjRfU0NUUCAgICA9IFhEUF9SU1NfTDNfSVBWNCB8IFhEUF9SU1NfTDQg
fCBYRFBfUlNTX0w0X1NDVFAsCisJWERQX1JTU19UWVBFX0w0X0lQVjRfSVBTRUMgICA9IFhEUF9S
U1NfTDNfSVBWNCB8IFhEUF9SU1NfTDQgfCBYRFBfUlNTX0w0X0lQU0VDLAogCiAJWERQX1JTU19U
WVBFX0w0X0lQVjZfVENQICAgICA9IFhEUF9SU1NfTDNfSVBWNiB8IFhEUF9SU1NfTDQgfCBYRFBf
UlNTX0w0X1RDUCwKIAlYRFBfUlNTX1RZUEVfTDRfSVBWNl9VRFAgICAgID0gWERQX1JTU19MM19J
UFY2IHwgWERQX1JTU19MNCB8IFhEUF9SU1NfTDRfVURQLAogCVhEUF9SU1NfVFlQRV9MNF9JUFY2
X1NDVFAgICAgPSBYRFBfUlNTX0wzX0lQVjYgfCBYRFBfUlNTX0w0IHwgWERQX1JTU19MNF9TQ1RQ
LAorCVhEUF9SU1NfVFlQRV9MNF9JUFY2X0lQU0VDICAgPSBYRFBfUlNTX0wzX0lQVjYgfCBYRFBf
UlNTX0w0IHwgWERQX1JTU19MNF9JUFNFQywKIAogCVhEUF9SU1NfVFlQRV9MNF9JUFY2X1RDUF9F
WCAgPSBYRFBfUlNTX1RZUEVfTDRfSVBWNl9UQ1AgfFhEUF9SU1NfTDNfRFlOSERSLAogCVhEUF9S
U1NfVFlQRV9MNF9JUFY2X1VEUF9FWCAgPSBYRFBfUlNTX1RZUEVfTDRfSVBWNl9VRFAgfFhEUF9S
U1NfTDNfRFlOSERSLAogCVhEUF9SU1NfVFlQRV9MNF9JUFY2X1NDVFBfRVggPSBYRFBfUlNTX1RZ
UEVfTDRfSVBWNl9TQ1RQfFhEUF9SU1NfTDNfRFlOSERSLAorCVhEUF9SU1NfVFlQRV9MNF9JUFY2
X0lQU0VDX0VYPSBYRFBfUlNTX1RZUEVfTDRfSVBWNl9JUFNFQ3xYRFBfUlNTX0wzX0RZTkhEUiwK
IH07CiAKICNpZmRlZiBDT05GSUdfTkVUCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJl
ZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC13aXJlZC1sYW4K
