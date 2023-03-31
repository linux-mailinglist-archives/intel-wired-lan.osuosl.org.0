Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BA4C36D236E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Mar 2023 17:03:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5C643607B4;
	Fri, 31 Mar 2023 15:03:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5C643607B4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680275004;
	bh=Kv5uH0TYvRvKVv+30ZzNUwWI5NVmMYr0NYTAzIgegn8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nurrMk/6YTu24hlQNCUA1FtCoFJHeKp90NF8eu+jF/AH11JZT5nB87Q7womZwyz2D
	 cUC4LYcU6ocJR6mCH/AG/n6jOwME8sevSFV8ECRHCcpzdGvZV5cWJduySL3GftwuAy
	 CvAa2tdjblt2onWmbopFckZJQHTgc1GgqDxaWBpAoZKRRHPJxsbs0rmZFn2jkch/nY
	 K3c5pFlWfg9R2bBZKUgkIecOhcnbVEiwbEGGVr5DvIAJ9uXBZbyqF5/SXx+EenGNNL
	 l3j3qbroqtUGoNlWIgkH90DIWZ6puSrxIPSJrEjupwWfTKfSaAkYmzQCMpzAtGJUyE
	 T1OWwDXRiHEIA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Wz1UvCdS8VTh; Fri, 31 Mar 2023 15:03:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E5F6D607C9;
	Fri, 31 Mar 2023 15:03:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E5F6D607C9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C0EA71BF33F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Mar 2023 15:03:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9A7F984584
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Mar 2023 15:03:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9A7F984584
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xeROogkGoZlx for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 Mar 2023 15:03:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B05F584546
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B05F584546
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Mar 2023 15:03:16 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-611-qftW_ADpO-eMsBjUO8S_yA-1; Fri, 31 Mar 2023 11:03:11 -0400
X-MC-Unique: qftW_ADpO-eMsBjUO8S_yA-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
 [10.11.54.10])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0C8BA185A78B;
 Fri, 31 Mar 2023 15:03:08 +0000 (UTC)
Received: from firesoul.localdomain (unknown [10.45.242.12])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 95E35492C3E;
 Fri, 31 Mar 2023 15:03:07 +0000 (UTC)
Received: from [10.1.1.1] (localhost [IPv6:::1])
 by firesoul.localdomain (Postfix) with ESMTP id EFA2C30736C72;
 Fri, 31 Mar 2023 17:03:06 +0200 (CEST)
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: bpf@vger.kernel.org, Stanislav Fomichev <sdf@google.com>,
 =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Date: Fri, 31 Mar 2023 17:03:06 +0200
Message-ID: <168027498690.3941176.99100635661990098.stgit@firesoul>
In-Reply-To: <168027495947.3941176.6690238098903275241.stgit@firesoul>
References: <168027495947.3941176.6690238098903275241.stgit@firesoul>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.10
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1680274995;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=lhlF87/o7UkqZcPQh1sySISQjrn7d+nfBFInrxnFwFc=;
 b=CbhF+pCSrW8yrNqQxDk48oX+abuSFedUznkcKhojStIetRyBiHin1G6rqLjTqiPQa6Ulmy
 LOvVG18BtrravAYECsR48KAN2FQVd1f2uXNkQ2NM78n315mgaJ3t/kYdP9xAdIE5WpzXZU
 Z/0G5/f2PwUXilWT3tMzL0fF5J5daok=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=CbhF+pCS
Subject: [Intel-wired-lan] [PATCH bpf V4 1/5] xdp: rss hash types
 representation
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

VGhlIFJTUyBoYXNoIHR5cGUgc3BlY2lmaWVzIHdoYXQgcG9ydGlvbiBvZiBwYWNrZXQgZGF0YSBO
SUMgaGFyZHdhcmUgdXNlZAp3aGVuIGNhbGN1bGF0aW5nIFJTUyBoYXNoIHZhbHVlLiBUaGUgUlNT
IHR5cGVzIGFyZSBmb2N1c2VkIG9uIEludGVybmV0CnRyYWZmaWMgcHJvdG9jb2xzIGF0IE9TSSBs
YXllcnMgTDMgYW5kIEw0LiBMMiAoZS5nLiBBUlApIG9mdGVuIGdldCBoYXNoCnZhbHVlIHplcm8g
YW5kIG5vIFJTUyB0eXBlLiBGb3IgTDMgZm9jdXNlZCBvbiBJUHY0IHZzLiBJUHY2LCBhbmQgTDQK
cHJpbWFyaWx5IFRDUCB2cyBVRFAsIGJ1dCBzb21lIGhhcmR3YXJlIHN1cHBvcnRzIFNDVFAuCgpI
YXJkd2FyZSBSU1MgdHlwZXMgYXJlIGRpZmZlcmVudGx5IGVuY29kZWQgZm9yIGVhY2ggaGFyZHdh
cmUgTklDLiBNb3N0CmhhcmR3YXJlIHJlcHJlc2VudCBSU1MgaGFzaCB0eXBlIGFzIGEgbnVtYmVy
LiBEZXRlcm1pbmluZyBMMyB2cyBMNCBvZnRlbgpyZXF1aXJlcyBhIG1hcHBpbmcgdGFibGUgYXMg
dGhlcmUgb2Z0ZW4gaXNuJ3QgYSBwYXR0ZXJuIG9yIHNvcnRpbmcKYWNjb3JkaW5nIHRvIElTTyBs
YXllci4KClRoZSBwYXRjaCBpbnRyb2R1Y2UgYSBYRFAgUlNTIGhhc2ggdHlwZSAoZW51bSB4ZHBf
cnNzX2hhc2hfdHlwZSkgdGhhdApjb250YWluIGNvbWJpbmF0aW9ucyB0byBiZSB1c2VkIGJ5IGRy
aXZlcnMsIHdoaWNoIGdldHMgYnVpbGQgdXAgd2l0aCBiaXRzCmZyb20gZW51bSB4ZHBfcnNzX3R5
cGVfYml0cy4gQm90aCBlbnVtIHhkcF9yc3NfdHlwZV9iaXRzIGFuZAp4ZHBfcnNzX2hhc2hfdHlw
ZSBnZXQgZXhwb3NlZCB0byBCUEYgdmlhIEJURiwgYW5kIGl0IGlzIHVwIHRvIHRoZQpCUEYtcHJv
Z3JhbW1lciB0byBtYXRjaCB1c2luZyB0aGVzZSBkZWZpbmVzLgoKVGhpcyBwcm9wb3NhbCBjaGFu
Z2UgdGhlIGtmdW5jIEFQSSBicGZfeGRwX21ldGFkYXRhX3J4X2hhc2goKSBhZGRpbmcKYSBwb2lu
dGVyIHZhbHVlIGFyZ3VtZW50IGZvciBwcm92aWRlIHRoZSBSU1MgaGFzaCB0eXBlLgoKRml4ZXM6
IDNkNzZhNGQzZDRlNSAoImJwZjogWERQIG1ldGFkYXRhIFJYIGtmdW5jcyIpClNpZ25lZC1vZmYt
Ynk6IEplc3BlciBEYW5nYWFyZCBCcm91ZXIgPGJyb3VlckByZWRoYXQuY29tPgpBY2tlZC1ieTog
VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+Ci0tLQogaW5jbHVkZS9s
aW51eC9uZXRkZXZpY2UuaCB8ICAgIDMgKystCiBpbmNsdWRlL25ldC94ZHAuaCAgICAgICAgIHwg
ICA0NSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKIG5ldC9j
b3JlL3hkcC5jICAgICAgICAgICAgfCAgIDEwICsrKysrKysrKy0KIDMgZmlsZXMgY2hhbmdlZCwg
NTYgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9pbmNsdWRlL2xp
bnV4L25ldGRldmljZS5oIGIvaW5jbHVkZS9saW51eC9uZXRkZXZpY2UuaAppbmRleCA0NzAwODVi
MTIxZDMuLmMzNWYwNGY2MzZmMSAxMDA2NDQKLS0tIGEvaW5jbHVkZS9saW51eC9uZXRkZXZpY2Uu
aAorKysgYi9pbmNsdWRlL2xpbnV4L25ldGRldmljZS5oCkBAIC0xNjI0LDcgKzE2MjQsOCBAQCBz
dHJ1Y3QgbmV0X2RldmljZV9vcHMgewogCiBzdHJ1Y3QgeGRwX21ldGFkYXRhX29wcyB7CiAJaW50
CSgqeG1vX3J4X3RpbWVzdGFtcCkoY29uc3Qgc3RydWN0IHhkcF9tZCAqY3R4LCB1NjQgKnRpbWVz
dGFtcCk7Ci0JaW50CSgqeG1vX3J4X2hhc2gpKGNvbnN0IHN0cnVjdCB4ZHBfbWQgKmN0eCwgdTMy
ICpoYXNoKTsKKwlpbnQJKCp4bW9fcnhfaGFzaCkoY29uc3Qgc3RydWN0IHhkcF9tZCAqY3R4LCB1
MzIgKmhhc2gsCisJCQkgICAgICAgZW51bSB4ZHBfcnNzX2hhc2hfdHlwZSAqcnNzX3R5cGUpOwog
fTsKIAogLyoqCmRpZmYgLS1naXQgYS9pbmNsdWRlL25ldC94ZHAuaCBiL2luY2x1ZGUvbmV0L3hk
cC5oCmluZGV4IDQxYzU3YjhiMTY3MS4uMjE2ZTkxMGRhMWNmIDEwMDY0NAotLS0gYS9pbmNsdWRl
L25ldC94ZHAuaAorKysgYi9pbmNsdWRlL25ldC94ZHAuaApAQCAtOCw2ICs4LDcgQEAKIAogI2lu
Y2x1ZGUgPGxpbnV4L3NrYnVmZi5oPiAvKiBza2Jfc2hhcmVkX2luZm8gKi8KICNpbmNsdWRlIDx1
YXBpL2xpbnV4L25ldGRldi5oPgorI2luY2x1ZGUgPGxpbnV4L2JpdGZpZWxkLmg+CiAKIC8qKgog
ICogRE9DOiBYRFAgUlgtcXVldWUgaW5mb3JtYXRpb24KQEAgLTQyNSw2ICs0MjYsNTAgQEAgWERQ
X01FVEFEQVRBX0tGVU5DX3h4eAogTUFYX1hEUF9NRVRBREFUQV9LRlVOQywKIH07CiAKK2VudW0g
eGRwX3Jzc19oYXNoX3R5cGUgeworCS8qIEZpcnN0IHBhcnQ6IEluZGl2aWR1YWwgYml0cyBmb3Ig
TDMvTDQgdHlwZXMgKi8KKwlYRFBfUlNTX0wzX0lQVjQJCT0gQklUKDApLAorCVhEUF9SU1NfTDNf
SVBWNgkJPSBCSVQoMSksCisKKwkvKiBUaGUgZml4ZWQgKEwzKSBJUHY0IGFuZCBJUHY2IGhlYWRl
cnMgY2FuIGJvdGggYmUgZm9sbG93ZWQgYnkKKwkgKiB2YXJpYWJsZS9keW5hbWljIGhlYWRlcnMs
IElQdjQgY2FsbGVkIE9wdGlvbnMgYW5kIElQdjYgY2FsbGVkCisJICogRXh0ZW5zaW9uIEhlYWRl
cnMuIEhXIFJTUyB0eXBlIGNhbiBjb250YWluIHRoaXMgaW5mby4KKwkgKi8KKwlYRFBfUlNTX0wz
X0RZTkhEUgk9IEJJVCgyKSwKKworCS8qIFdoZW4gUlNTIGhhc2ggY292ZXJzIEw0IHRoZW4gZHJp
dmVycyBNVVNUIHNldCBYRFBfUlNTX0w0IGJpdCBpbgorCSAqIGFkZGl0aW9uIHRvIHRoZSBwcm90
b2NvbCBzcGVjaWZpYyBiaXQuICBUaGlzIGVhc2UgaW50ZXJhY3Rpb24gd2l0aAorCSAqIFNLQnMg
YW5kIGF2b2lkcyByZXNlcnZpbmcgYSBmaXhlZCBtYXNrIGZvciBmdXR1cmUgTDQgcHJvdG9jb2wg
Yml0cy4KKwkgKi8KKwlYRFBfUlNTX0w0CQk9IEJJVCgzKSwgLyogTDQgYmFzZWQgaGFzaCwgcHJv
dG8gY2FuIGJlIHVua25vd24gKi8KKwlYRFBfUlNTX0w0X1RDUAkJPSBCSVQoNCksCisJWERQX1JT
U19MNF9VRFAJCT0gQklUKDUpLAorCVhEUF9SU1NfTDRfU0NUUAkJPSBCSVQoNiksCisJWERQX1JT
U19MNF9JUFNFQwk9IEJJVCg3KSwgLyogTDQgYmFzZWQgaGFzaCBpbmNsdWRlIElQU0VDIFNQSSAq
LworCisJLyogU2Vjb25kIHBhcnQ6IFJTUyBoYXNoIHR5cGUgY29tYmluYXRpb25zIHVzZWQgZm9y
IGRyaXZlciBIVyBtYXBwaW5nICovCisJWERQX1JTU19UWVBFX05PTkUgICAgICAgICAgICA9IDAs
CisJWERQX1JTU19UWVBFX0wyICAgICAgICAgICAgICA9IFhEUF9SU1NfVFlQRV9OT05FLAorCisJ
WERQX1JTU19UWVBFX0wzX0lQVjQgICAgICAgICA9IFhEUF9SU1NfTDNfSVBWNCwKKwlYRFBfUlNT
X1RZUEVfTDNfSVBWNiAgICAgICAgID0gWERQX1JTU19MM19JUFY2LAorCVhEUF9SU1NfVFlQRV9M
M19JUFY0X09QVCAgICAgPSBYRFBfUlNTX0wzX0lQVjQgfCBYRFBfUlNTX0wzX0RZTkhEUiwKKwlY
RFBfUlNTX1RZUEVfTDNfSVBWNl9FWCAgICAgID0gWERQX1JTU19MM19JUFY2IHwgWERQX1JTU19M
M19EWU5IRFIsCisKKwlYRFBfUlNTX1RZUEVfTDRfQU5ZICAgICAgICAgID0gWERQX1JTU19MNCwK
KwlYRFBfUlNTX1RZUEVfTDRfSVBWNF9UQ1AgICAgID0gWERQX1JTU19MM19JUFY0IHwgWERQX1JT
U19MNCB8IFhEUF9SU1NfTDRfVENQLAorCVhEUF9SU1NfVFlQRV9MNF9JUFY0X1VEUCAgICAgPSBY
RFBfUlNTX0wzX0lQVjQgfCBYRFBfUlNTX0w0IHwgWERQX1JTU19MNF9VRFAsCisJWERQX1JTU19U
WVBFX0w0X0lQVjRfU0NUUCAgICA9IFhEUF9SU1NfTDNfSVBWNCB8IFhEUF9SU1NfTDQgfCBYRFBf
UlNTX0w0X1NDVFAsCisKKwlYRFBfUlNTX1RZUEVfTDRfSVBWNl9UQ1AgICAgID0gWERQX1JTU19M
M19JUFY2IHwgWERQX1JTU19MNCB8IFhEUF9SU1NfTDRfVENQLAorCVhEUF9SU1NfVFlQRV9MNF9J
UFY2X1VEUCAgICAgPSBYRFBfUlNTX0wzX0lQVjYgfCBYRFBfUlNTX0w0IHwgWERQX1JTU19MNF9V
RFAsCisJWERQX1JTU19UWVBFX0w0X0lQVjZfU0NUUCAgICA9IFhEUF9SU1NfTDNfSVBWNiB8IFhE
UF9SU1NfTDQgfCBYRFBfUlNTX0w0X1NDVFAsCisKKwlYRFBfUlNTX1RZUEVfTDRfSVBWNl9UQ1Bf
RVggID0gWERQX1JTU19UWVBFX0w0X0lQVjZfVENQIHxYRFBfUlNTX0wzX0RZTkhEUiwKKwlYRFBf
UlNTX1RZUEVfTDRfSVBWNl9VRFBfRVggID0gWERQX1JTU19UWVBFX0w0X0lQVjZfVURQIHxYRFBf
UlNTX0wzX0RZTkhEUiwKKwlYRFBfUlNTX1RZUEVfTDRfSVBWNl9TQ1RQX0VYID0gWERQX1JTU19U
WVBFX0w0X0lQVjZfU0NUUHxYRFBfUlNTX0wzX0RZTkhEUiwKK307CisKICNpZmRlZiBDT05GSUdf
TkVUCiB1MzIgYnBmX3hkcF9tZXRhZGF0YV9rZnVuY19pZChpbnQgaWQpOwogYm9vbCBicGZfZGV2
X2JvdW5kX2tmdW5jX2lkKHUzMiBidGZfaWQpOwpkaWZmIC0tZ2l0IGEvbmV0L2NvcmUveGRwLmMg
Yi9uZXQvY29yZS94ZHAuYwppbmRleCA1MjhkNGIzNzk4M2QuLmZiODVhY2E4MTk2MSAxMDA2NDQK
LS0tIGEvbmV0L2NvcmUveGRwLmMKKysrIGIvbmV0L2NvcmUveGRwLmMKQEAgLTczNCwxMyArNzM0
LDIxIEBAIF9fYnBmX2tmdW5jIGludCBicGZfeGRwX21ldGFkYXRhX3J4X3RpbWVzdGFtcChjb25z
dCBzdHJ1Y3QgeGRwX21kICpjdHgsIHU2NCAqdGltCiAgKiBicGZfeGRwX21ldGFkYXRhX3J4X2hh
c2ggLSBSZWFkIFhEUCBmcmFtZSBSWCBoYXNoLgogICogQGN0eDogWERQIGNvbnRleHQgcG9pbnRl
ci4KICAqIEBoYXNoOiBSZXR1cm4gdmFsdWUgcG9pbnRlci4KKyAqIEByc3NfdHlwZTogUmV0dXJu
IHZhbHVlIHBvaW50ZXIgZm9yIFJTUyB0eXBlLgorICoKKyAqIFRoZSBSU1MgaGFzaCB0eXBlIChA
cnNzX3R5cGUpIHNwZWNpZmllcyB3aGF0IHBvcnRpb24gb2YgcGFja2V0IGhlYWRlcnMgTklDCisg
KiBoYXJkd2FyZSB1c2VkIHdoZW4gY2FsY3VsYXRpbmcgUlNTIGhhc2ggdmFsdWUuICBUaGUgUlNT
IHR5cGUgY2FuIGJlIGRlY29kZWQKKyAqIHZpYSAmZW51bSB4ZHBfcnNzX2hhc2hfdHlwZSBlaXRo
ZXIgbWF0Y2hpbmcgb24gaW5kaXZpZHVhbCBMMy9MNCBiaXRzCisgKiBgYFhEUF9SU1NfTCpgYCBv
ciBieSBjb21iaW5lZCB0cmFkaXRpb25hbCAqUlNTIEhhc2hpbmcgVHlwZXMqCisgKiBgYFhEUF9S
U1NfVFlQRV9MKmBgLgogICoKICAqIFJldHVybjoKICAqICogUmV0dXJucyAwIG9uIHN1Y2Nlc3Mg
b3IgYGAtZXJybm9gYCBvbiBlcnJvci4KICAqICogYGAtRU9QTk9UU1VQUGBgIDogbWVhbnMgZGV2
aWNlIGRyaXZlciBkb2Vzbid0IGltcGxlbWVudCBrZnVuYwogICogKiBgYC1FTk9EQVRBYGAgICAg
OiBtZWFucyBubyBSWC1oYXNoIGF2YWlsYWJsZSBmb3IgdGhpcyBmcmFtZQogICovCi1fX2JwZl9r
ZnVuYyBpbnQgYnBmX3hkcF9tZXRhZGF0YV9yeF9oYXNoKGNvbnN0IHN0cnVjdCB4ZHBfbWQgKmN0
eCwgdTMyICpoYXNoKQorX19icGZfa2Z1bmMgaW50IGJwZl94ZHBfbWV0YWRhdGFfcnhfaGFzaChj
b25zdCBzdHJ1Y3QgeGRwX21kICpjdHgsIHUzMiAqaGFzaCwKKwkJCQkJIGVudW0geGRwX3Jzc19o
YXNoX3R5cGUgKnJzc190eXBlKQogewogCXJldHVybiAtRU9QTk9UU1VQUDsKIH0KCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4g
bWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1
b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
