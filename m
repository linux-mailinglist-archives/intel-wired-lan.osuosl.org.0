Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D046390CDB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 May 2021 01:16:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id ABEAB404DD;
	Tue, 25 May 2021 23:16:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CFUONneReWWJ; Tue, 25 May 2021 23:16:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9931740185;
	Tue, 25 May 2021 23:16:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 311C31BF479
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 May 2021 23:16:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1F5AC60B64
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 May 2021 23:16:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CzOeknNYcEHL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 May 2021 23:16:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5BEAC60636
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 May 2021 23:16:02 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 798A96128B;
 Tue, 25 May 2021 23:16:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1621984562;
 bh=udTOOSMfJAcXktS3DMEoxFOhpDun8Q7Rx/ntvDo0avw=;
 h=Date:From:To:Cc:Subject:From;
 b=gQeIbFm1KUwviw4anAa3NkYIGfFPZoIuWRxKQnf1yu7UXL9a8lsoYnNcQEfO7ufyD
 l1/3NW7dycXQvXZf3zNV+HbYVyuCifzV6wpfJydb4JwZh4i9K8CIdpE4w5sbkwQgtD
 6yvziORankOno1bXr3dybdZ9vPQ88Yq4mCEzCZvmIstBBI3yEMm1t8yPbpm+sdLcbN
 bD1e5robcYs74VpV2cS9XBZTJ6Xkj6A4y/nzqlAwCpCX7ExapWQBuaw4IpAtPcENBF
 pwmUmxzlEb2KFKwjJRdqcbt6F+TZ2sMfSZCjQtwOdFy2KIj4L24L2xVgeb5YmGEGKw
 Ueaaumt97s7PA==
Date: Tue, 25 May 2021 18:16:58 -0500
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
Message-ID: <20210525231658.GA176466@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [Intel-wired-lan] [PATCH][next] virtchnl: Replace one-element array
 in struct virtchnl_vsi_queue_config_info
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
Cc: linux-hardening@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, "Gustavo A. R. Silva" <gustavoars@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

VGhlcmUgaXMgYSByZWd1bGFyIG5lZWQgaW4gdGhlIGtlcm5lbCB0byBwcm92aWRlIGEgd2F5IHRv
IGRlY2xhcmUgaGF2aW5nIGEKZHluYW1pY2FsbHkgc2l6ZWQgc2V0IG9mIHRyYWlsaW5nIGVsZW1l
bnRzIGluIGEgc3RydWN0dXJlLiBLZXJuZWwgY29kZQpzaG91bGQgYWx3YXlzIHVzZSDigJxmbGV4
aWJsZSBhcnJheSBtZW1iZXJz4oCdWzFdIGZvciB0aGVzZSBjYXNlcy4gVGhlIG9sZGVyCnN0eWxl
IG9mIG9uZS1lbGVtZW50IG9yIHplcm8tbGVuZ3RoIGFycmF5cyBzaG91bGQgbm8gbG9uZ2VyIGJl
IHVzZWRbMl0uCgpSZWZhY3RvciB0aGUgY29kZSBhY2NvcmRpbmcgdG8gdGhlIHVzZSBvZiBhIGZs
ZXhpYmxlLWFycmF5IG1lbWJlciBpbiBzdHJ1Y3QKdmlydGNobmxfdnNpX3F1ZXVlX2NvbmZpZ19p
bmZvIGluc3RlYWQgb2Ygb25lLWVsZW1lbnQgYXJyYXksIGFuZCB1c2UgdGhlCmZsZXhfYXJyYXlf
c2l6ZSgpIGhlbHBlci4KClsxXSBodHRwczovL2VuLndpa2lwZWRpYS5vcmcvd2lraS9GbGV4aWJs
ZV9hcnJheV9tZW1iZXIKWzJdIGh0dHBzOi8vd3d3Lmtlcm5lbC5vcmcvZG9jL2h0bWwvdjUuMTAv
cHJvY2Vzcy9kZXByZWNhdGVkLmh0bWwjemVyby1sZW5ndGgtYW5kLW9uZS1lbGVtZW50LWFycmF5
cwoKTGluazogaHR0cHM6Ly9naXRodWIuY29tL0tTUFAvbGludXgvaXNzdWVzLzc5ClNpZ25lZC1v
ZmYtYnk6IEd1c3Rhdm8gQS4gUi4gU2lsdmEgPGd1c3Rhdm9hcnNAa2VybmVsLm9yZz4KLS0tCiBp
bmNsdWRlL2xpbnV4L2F2Zi92aXJ0Y2hubC5oIHwgOSArKysrLS0tLS0KIDEgZmlsZSBjaGFuZ2Vk
LCA0IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9s
aW51eC9hdmYvdmlydGNobmwuaCBiL2luY2x1ZGUvbGludXgvYXZmL3ZpcnRjaG5sLmgKaW5kZXgg
YjU1NDkxMzgwNGJkLi5lZDljNDk5OGY4YWMgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvbGludXgvYXZm
L3ZpcnRjaG5sLmgKKysrIGIvaW5jbHVkZS9saW51eC9hdmYvdmlydGNobmwuaApAQCAtMzM4LDEw
ICszMzgsMTAgQEAgc3RydWN0IHZpcnRjaG5sX3ZzaV9xdWV1ZV9jb25maWdfaW5mbyB7CiAJdTE2
IHZzaV9pZDsKIAl1MTYgbnVtX3F1ZXVlX3BhaXJzOwogCXUzMiBwYWQ7Ci0Jc3RydWN0IHZpcnRj
aG5sX3F1ZXVlX3BhaXJfaW5mbyBxcGFpclsxXTsKKwlzdHJ1Y3QgdmlydGNobmxfcXVldWVfcGFp
cl9pbmZvIHFwYWlyW107CiB9OwogCi1WSVJUQ0hOTF9DSEVDS19TVFJVQ1RfTEVOKDcyLCB2aXJ0
Y2hubF92c2lfcXVldWVfY29uZmlnX2luZm8pOworVklSVENITkxfQ0hFQ0tfU1RSVUNUX0xFTig4
LCB2aXJ0Y2hubF92c2lfcXVldWVfY29uZmlnX2luZm8pOwogCiAvKiBWSVJUQ0hOTF9PUF9SRVFV
RVNUX1FVRVVFUwogICogVkYgc2VuZHMgdGhpcyBtZXNzYWdlIHRvIHJlcXVlc3QgdGhlIFBGIHRv
IGFsbG9jYXRlIGFkZGl0aW9uYWwgcXVldWVzIHRvCkBAIC05OTcsOSArOTk3LDggQEAgdmlydGNo
bmxfdmNfdmFsaWRhdGVfdmZfbXNnKHN0cnVjdCB2aXJ0Y2hubF92ZXJzaW9uX2luZm8gKnZlciwg
dTMyIHZfb3Bjb2RlLAogCQlpZiAobXNnbGVuID49IHZhbGlkX2xlbikgewogCQkJc3RydWN0IHZp
cnRjaG5sX3ZzaV9xdWV1ZV9jb25maWdfaW5mbyAqdnFjID0KIAkJCSAgICAoc3RydWN0IHZpcnRj
aG5sX3ZzaV9xdWV1ZV9jb25maWdfaW5mbyAqKW1zZzsKLQkJCXZhbGlkX2xlbiArPSAodnFjLT5u
dW1fcXVldWVfcGFpcnMgKgotCQkJCSAgICAgIHNpemVvZihzdHJ1Y3QKLQkJCQkJICAgICB2aXJ0
Y2hubF9xdWV1ZV9wYWlyX2luZm8pKTsKKwkJCXZhbGlkX2xlbiArPSBmbGV4X2FycmF5X3NpemUo
dnFjLCBxcGFpciwKKwkJCQkJCSAgICAgdnFjLT5udW1fcXVldWVfcGFpcnMpOwogCQkJaWYgKHZx
Yy0+bnVtX3F1ZXVlX3BhaXJzID09IDApCiAJCQkJZXJyX21zZ19mb3JtYXQgPSB0cnVlOwogCQl9
Ci0tIAoyLjI3LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5v
cmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQt
bGFuCg==
