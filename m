Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C3F6D390CCF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 May 2021 01:11:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 58A2083CC9;
	Tue, 25 May 2021 23:11:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xvP6jXmsHDEx; Tue, 25 May 2021 23:11:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7081A83CBD;
	Tue, 25 May 2021 23:11:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4C36C1BF479
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 May 2021 23:11:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 48050404D6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 May 2021 23:11:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jRkV4RRB4pUg for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 May 2021 23:11:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7E42140185
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 May 2021 23:11:37 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9DC5D61004;
 Tue, 25 May 2021 23:11:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1621984297;
 bh=Uzh0etZChhdTjIEdr3/rkY9HSftUCeqcBhcG8mn+BIQ=;
 h=Date:From:To:Cc:Subject:From;
 b=OB1hfq/rnv76bl5crHxy8InXeSOrh2TEnrau4nPBavXwQ2SHauqOhGa5RFH7B+62M
 cGBVpfiM/TWCLXk/JnovAXjDjxcl1xihjLK9banQIyy/2vEvX2kB3n0vmvxbj1Sh1n
 jgKBWbbE8hjRpkzCmrzgaLqKxBWxQS72/wEr1IcQ2qZw9mgQNyO37AI9CPyMw0Nd+n
 A9+AhCE7QhdMkd7xepQJVv5wK13Ru5H3XCF9Wrgl8DkKr1qJw2VKcuq3HbgOOAqAo9
 j547Ad0hn2PloRQUVSHlYgd2Vsg4IOqpuzV/MIiggq0SVehip3k96clkyrZCwe3fjS
 QCzP3cUcdSNzA==
Date: Tue, 25 May 2021 18:12:33 -0500
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
Message-ID: <20210525231233.GA175955@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [Intel-wired-lan] [PATCH][next] virtchnl: Replace one-element array
 in struct virtchnl_ether_addr_list
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
ZXhpYmxlLWFycmF5IG1lbWJlciBpbiBzdHJ1Y3QKdmlydGNobmxfZXRoZXJfYWRkcl9saXN0IGlu
c3RlYWQgb2Ygb25lLWVsZW1lbnQgYXJyYXksIGFuZCB1c2UgdGhlCmZsZXhfYXJyYXlfc2l6ZSgp
IGhlbHBlci4KClsxXSBodHRwczovL2VuLndpa2lwZWRpYS5vcmcvd2lraS9GbGV4aWJsZV9hcnJh
eV9tZW1iZXIKWzJdIGh0dHBzOi8vd3d3Lmtlcm5lbC5vcmcvZG9jL2h0bWwvdjUuMTAvcHJvY2Vz
cy9kZXByZWNhdGVkLmh0bWwjemVyby1sZW5ndGgtYW5kLW9uZS1lbGVtZW50LWFycmF5cwoKTGlu
azogaHR0cHM6Ly9naXRodWIuY29tL0tTUFAvbGludXgvaXNzdWVzLzc5ClNpZ25lZC1vZmYtYnk6
IEd1c3Rhdm8gQS4gUi4gU2lsdmEgPGd1c3Rhdm9hcnNAa2VybmVsLm9yZz4KLS0tCiBpbmNsdWRl
L2xpbnV4L2F2Zi92aXJ0Y2hubC5oIHwgOCArKysrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5z
ZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2F2
Zi92aXJ0Y2hubC5oIGIvaW5jbHVkZS9saW51eC9hdmYvdmlydGNobmwuaAppbmRleCA3ZGVkMmI0
NTQxMjIuLmMyZTdmZmM4YWRhNyAxMDA2NDQKLS0tIGEvaW5jbHVkZS9saW51eC9hdmYvdmlydGNo
bmwuaAorKysgYi9pbmNsdWRlL2xpbnV4L2F2Zi92aXJ0Y2hubC5oCkBAIC00MjIsMTAgKzQyMiwx
MCBAQCBWSVJUQ0hOTF9DSEVDS19TVFJVQ1RfTEVOKDgsIHZpcnRjaG5sX2V0aGVyX2FkZHIpOwog
c3RydWN0IHZpcnRjaG5sX2V0aGVyX2FkZHJfbGlzdCB7CiAJdTE2IHZzaV9pZDsKIAl1MTYgbnVt
X2VsZW1lbnRzOwotCXN0cnVjdCB2aXJ0Y2hubF9ldGhlcl9hZGRyIGxpc3RbMV07CisJc3RydWN0
IHZpcnRjaG5sX2V0aGVyX2FkZHIgbGlzdFtdOwogfTsKIAotVklSVENITkxfQ0hFQ0tfU1RSVUNU
X0xFTigxMiwgdmlydGNobmxfZXRoZXJfYWRkcl9saXN0KTsKK1ZJUlRDSE5MX0NIRUNLX1NUUlVD
VF9MRU4oNCwgdmlydGNobmxfZXRoZXJfYWRkcl9saXN0KTsKIAogLyogVklSVENITkxfT1BfQURE
X1ZMQU4KICAqIFZGIHNlbmRzIHRoaXMgbWVzc2FnZSB0byBhZGQgb25lIG9yIG1vcmUgVkxBTiB0
YWcgZmlsdGVycyBmb3IgcmVjZWl2ZXMuCkBAIC0xMDI0LDggKzEwMjQsOCBAQCB2aXJ0Y2hubF92
Y192YWxpZGF0ZV92Zl9tc2coc3RydWN0IHZpcnRjaG5sX3ZlcnNpb25faW5mbyAqdmVyLCB1MzIg
dl9vcGNvZGUsCiAJCWlmIChtc2dsZW4gPj0gdmFsaWRfbGVuKSB7CiAJCQlzdHJ1Y3QgdmlydGNo
bmxfZXRoZXJfYWRkcl9saXN0ICp2ZWFsID0KIAkJCSAgICAoc3RydWN0IHZpcnRjaG5sX2V0aGVy
X2FkZHJfbGlzdCAqKW1zZzsKLQkJCXZhbGlkX2xlbiArPSB2ZWFsLT5udW1fZWxlbWVudHMgKgot
CQkJICAgIHNpemVvZihzdHJ1Y3QgdmlydGNobmxfZXRoZXJfYWRkcik7CisJCQl2YWxpZF9sZW4g
Kz0gZmxleF9hcnJheV9zaXplKHZlYWwsIGxpc3QsCisJCQkJCQkgICAgIHZlYWwtPm51bV9lbGVt
ZW50cyk7CiAJCQlpZiAodmVhbC0+bnVtX2VsZW1lbnRzID09IDApCiAJCQkJZXJyX21zZ19mb3Jt
YXQgPSB0cnVlOwogCQl9Ci0tIAoyLjI3LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2ly
ZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtd2lyZWQtbGFuCg==
