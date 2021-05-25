Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4BA7390CE2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 May 2021 01:18:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 80BAE404DE;
	Tue, 25 May 2021 23:18:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KUSmSqITGe1v; Tue, 25 May 2021 23:18:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6AEA240185;
	Tue, 25 May 2021 23:18:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3CCA91BF479
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 May 2021 23:17:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2BCFF60B64
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 May 2021 23:17:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vvPjo3Q0njTg for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 May 2021 23:17:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B61E460636
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 May 2021 23:17:54 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id B5DE86128B;
 Tue, 25 May 2021 23:17:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1621984674;
 bh=bJ4XAZH21tHtmuVTr98seVj7Q79bHvG/8rOCPJR+Jr4=;
 h=Date:From:To:Cc:Subject:From;
 b=bi8dANLjd9cpoUMHMwE1r58G5yZizrELQGJ3PmqOwl9TzPAWFGovmDwLHbhMOwrvW
 nLJvPSVdgAgXTXLIJ1B64RIdXbG1JAZbDyog61i+05nfGWtXA7FxgYv8jCIPKN3gAq
 zZ7tUuhW7d2a/EvDqQN4j6Aq9E5c2iL3SAvYSAtLyzSBlqHmxK7XDMqWBJ7ESnN2CS
 5NrK+F6zvFdnKBRYj61dkLLjcuMWPodJCkd21aJvNJor3j//wHZBL/VSKA2TkCFoQ4
 UOQB8OVfBwyR6LUQRFamAwU7cChB/Ax8GDm3pwp/hCE9wl5OxZpCreIrQnn+zQ+xlh
 Kh25vmgaMDGjg==
Date: Tue, 25 May 2021 18:18:51 -0500
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Message-ID: <20210525231851.GA176647@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [Intel-wired-lan] [PATCH][next] iavf: Replace one-element array in
 struct virtchnl_rss_key
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
Cc: linux-hardening@vger.kernel.org, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>
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
ZXhpYmxlLWFycmF5IG1lbWJlciBpbiBzdHJ1Y3QKdmlydGNobmxfcnNzX2tleSBpbnN0ZWFkIG9m
IG9uZS1lbGVtZW50IGFycmF5LCBhbmQgdXNlIHRoZSBzdHJ1Y3Rfc2l6ZSgpCmhlbHBlci4KClsx
XSBodHRwczovL2VuLndpa2lwZWRpYS5vcmcvd2lraS9GbGV4aWJsZV9hcnJheV9tZW1iZXIKWzJd
IGh0dHBzOi8vd3d3Lmtlcm5lbC5vcmcvZG9jL2h0bWwvdjUuMTAvcHJvY2Vzcy9kZXByZWNhdGVk
Lmh0bWwjemVyby1sZW5ndGgtYW5kLW9uZS1lbGVtZW50LWFycmF5cwoKTGluazogaHR0cHM6Ly9n
aXRodWIuY29tL0tTUFAvbGludXgvaXNzdWVzLzc5ClNpZ25lZC1vZmYtYnk6IEd1c3Rhdm8gQS4g
Ui4gU2lsdmEgPGd1c3Rhdm9hcnNAa2VybmVsLm9yZz4KLS0tCiBkcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pYXZmL2lhdmZfdmlydGNobmwuYyB8IDUgKystLS0KIGluY2x1ZGUvbGludXgvYXZm
L3ZpcnRjaG5sLmggICAgICAgICAgICAgICAgICAgIHwgNiArKystLS0KIDIgZmlsZXMgY2hhbmdl
ZCwgNSBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl92aXJ0Y2hubC5jIGIvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX3ZpcnRjaG5sLmMKaW5kZXggMTY3OTU1MDk0MTcwLi42ZjJh
NGM4YmViMGIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2
Zl92aXJ0Y2hubC5jCisrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl92
aXJ0Y2hubC5jCkBAIC03OTksNyArNzk5LDcgQEAgdm9pZCBpYXZmX3NldF9oZW5hKHN0cnVjdCBp
YXZmX2FkYXB0ZXIgKmFkYXB0ZXIpCiB2b2lkIGlhdmZfc2V0X3Jzc19rZXkoc3RydWN0IGlhdmZf
YWRhcHRlciAqYWRhcHRlcikKIHsKIAlzdHJ1Y3QgdmlydGNobmxfcnNzX2tleSAqdnJrOwotCWlu
dCBsZW47CisJc2l6ZV90IGxlbjsKIAogCWlmIChhZGFwdGVyLT5jdXJyZW50X29wICE9IFZJUlRD
SE5MX09QX1VOS05PV04pIHsKIAkJLyogYmFpbCBiZWNhdXNlIHdlIGFscmVhZHkgaGF2ZSBhIGNv
bW1hbmQgcGVuZGluZyAqLwpAQCAtODA3LDggKzgwNyw3IEBAIHZvaWQgaWF2Zl9zZXRfcnNzX2tl
eShzdHJ1Y3QgaWF2Zl9hZGFwdGVyICphZGFwdGVyKQogCQkJYWRhcHRlci0+Y3VycmVudF9vcCk7
CiAJCXJldHVybjsKIAl9Ci0JbGVuID0gc2l6ZW9mKHN0cnVjdCB2aXJ0Y2hubF9yc3Nfa2V5KSAr
Ci0JICAgICAgKGFkYXB0ZXItPnJzc19rZXlfc2l6ZSAqIHNpemVvZih1OCkpIC0gMTsKKwlsZW4g
PSBzdHJ1Y3Rfc2l6ZSh2cmssIGtleSwgYWRhcHRlci0+cnNzX2tleV9zaXplKTsKIAl2cmsgPSBr
emFsbG9jKGxlbiwgR0ZQX0tFUk5FTCk7CiAJaWYgKCF2cmspCiAJCXJldHVybjsKZGlmZiAtLWdp
dCBhL2luY2x1ZGUvbGludXgvYXZmL3ZpcnRjaG5sLmggYi9pbmNsdWRlL2xpbnV4L2F2Zi92aXJ0
Y2hubC5oCmluZGV4IDliOWQ3OWMyNzBiMS4uZDJmZDg0N2EzODgwIDEwMDY0NAotLS0gYS9pbmNs
dWRlL2xpbnV4L2F2Zi92aXJ0Y2hubC5oCisrKyBiL2luY2x1ZGUvbGludXgvYXZmL3ZpcnRjaG5s
LmgKQEAgLTQ4NCwxMCArNDg0LDEwIEBAIFZJUlRDSE5MX0NIRUNLX1NUUlVDVF9MRU4oNCwgdmly
dGNobmxfcHJvbWlzY19pbmZvKTsKIHN0cnVjdCB2aXJ0Y2hubF9yc3Nfa2V5IHsKIAl1MTYgdnNp
X2lkOwogCXUxNiBrZXlfbGVuOwotCXU4IGtleVsxXTsgICAgICAgICAvKiBSU1MgaGFzaCBrZXks
IHBhY2tlZCBieXRlcyAqLworCXU4IGtleVtdOyAgICAgICAgIC8qIFJTUyBoYXNoIGtleSwgcGFj
a2VkIGJ5dGVzICovCiB9OwogCi1WSVJUQ0hOTF9DSEVDS19TVFJVQ1RfTEVOKDYsIHZpcnRjaG5s
X3Jzc19rZXkpOworVklSVENITkxfQ0hFQ0tfU1RSVUNUX0xFTig0LCB2aXJ0Y2hubF9yc3Nfa2V5
KTsKIAogc3RydWN0IHZpcnRjaG5sX3Jzc19sdXQgewogCXUxNiB2c2lfaWQ7CkBAIC0xMDc5LDcg
KzEwNzksNyBAQCB2aXJ0Y2hubF92Y192YWxpZGF0ZV92Zl9tc2coc3RydWN0IHZpcnRjaG5sX3Zl
cnNpb25faW5mbyAqdmVyLCB1MzIgdl9vcGNvZGUsCiAJCWlmIChtc2dsZW4gPj0gdmFsaWRfbGVu
KSB7CiAJCQlzdHJ1Y3QgdmlydGNobmxfcnNzX2tleSAqdnJrID0KIAkJCQkoc3RydWN0IHZpcnRj
aG5sX3Jzc19rZXkgKiltc2c7Ci0JCQl2YWxpZF9sZW4gKz0gdnJrLT5rZXlfbGVuIC0gMTsKKwkJ
CXZhbGlkX2xlbiArPSB2cmstPmtleV9sZW47CiAJCX0KIAkJYnJlYWs7CiAJY2FzZSBWSVJUQ0hO
TF9PUF9DT05GSUdfUlNTX0xVVDoKLS0gCjIuMjcuMAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRl
bC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
