Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF1B1390CB9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 May 2021 01:05:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5725B404DD;
	Tue, 25 May 2021 23:05:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ebUS4XCNioPq; Tue, 25 May 2021 23:05:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 151EA404DB;
	Tue, 25 May 2021 23:05:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 63AE91BF479
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 May 2021 23:05:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5FAC2404DB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 May 2021 23:05:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E4Svb_j-lNuX for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 May 2021 23:05:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 95354404DA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 May 2021 23:05:16 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 63C7361284;
 Tue, 25 May 2021 23:05:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1621983916;
 bh=b1HbG9gO/n2Kw+qzIDWeTSUI5+koRLkUNAVzcuTYL5U=;
 h=Date:From:To:Cc:Subject:From;
 b=Kn7LShhbWAVTlmkXyoU0yBVi7DfQxowhMUXT4K+fnxG4VIVFaP6Y6gmyOuprBzdpl
 RXL3gcFYKOxpF5zcvk6hfwDNYgdFZkANHbdLpYYKLMyLGMSKG+44zAJ3hvfdXqxPhH
 5LyY/5SPRk8iwfE/e5Lv16zU1eOjs+raoWj0l+NN4Nrz1zcRxvtmebykdStxPPm58+
 /ywvXD7XXXdVzeb9lmByy2itxQiz6fqlLQ2+olkp84SgypjmqgVnHT798GLZsBg/o3
 xPV+l86+0yrRm0Vd5+xbhGsG1Qq0iEutk52gg/Ih+aVmWsPvR2EzrQopLwuhbhE+fD
 3WmeQo4QfY5LQ==
Date: Tue, 25 May 2021 18:06:12 -0500
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Message-ID: <20210525230612.GA175718@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [Intel-wired-lan] [PATCH][next] iavf: Replace one-element array in
 struct virtchnl_vlan_filter_list
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
ZXhpYmxlLWFycmF5IG1lbWJlciBpbiBzdHJ1Y3QKdmlydGNobmxfdmxhbl9maWx0ZXJfbGlzdCBp
bnN0ZWFkIG9mIG9uZS1lbGVtZW50IGFycmF5LCBhbmQgdXNlIHRoZQpzdHJ1Y3Rfc2l6ZSgpIGFu
ZCBmbGV4X2FycmF5X3NpemUoKSBoZWxwZXJzLgoKWzFdIGh0dHBzOi8vZW4ud2lraXBlZGlhLm9y
Zy93aWtpL0ZsZXhpYmxlX2FycmF5X21lbWJlcgpbMl0gaHR0cHM6Ly93d3cua2VybmVsLm9yZy9k
b2MvaHRtbC92NS4xMC9wcm9jZXNzL2RlcHJlY2F0ZWQuaHRtbCN6ZXJvLWxlbmd0aC1hbmQtb25l
LWVsZW1lbnQtYXJyYXlzCgpMaW5rOiBodHRwczovL2dpdGh1Yi5jb20vS1NQUC9saW51eC9pc3N1
ZXMvNzkKU2lnbmVkLW9mZi1ieTogR3VzdGF2byBBLiBSLiBTaWx2YSA8Z3VzdGF2b2Fyc0BrZXJu
ZWwub3JnPgotLS0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl92aXJ0Y2hu
bC5jIHwgMTIgKysrKy0tLS0tLS0tCiBpbmNsdWRlL2xpbnV4L2F2Zi92aXJ0Y2hubC5oICAgICAg
ICAgICAgICAgICAgICB8ICA3ICsrKystLS0KIDIgZmlsZXMgY2hhbmdlZCwgOCBpbnNlcnRpb25z
KCspLCAxMSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pYXZmL2lhdmZfdmlydGNobmwuYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lh
dmYvaWF2Zl92aXJ0Y2hubC5jCmluZGV4IGIyMzkyYWY0ZTA0OC4uMTY3OTU1MDk0MTcwIDEwMDY0
NAotLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfdmlydGNobmwuYwor
KysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfdmlydGNobmwuYwpAQCAt
NTczLDE1ICs1NzMsMTMgQEAgdm9pZCBpYXZmX2FkZF92bGFucyhzdHJ1Y3QgaWF2Zl9hZGFwdGVy
ICphZGFwdGVyKQogCX0KIAlhZGFwdGVyLT5jdXJyZW50X29wID0gVklSVENITkxfT1BfQUREX1ZM
QU47CiAKLQlsZW4gPSBzaXplb2Yoc3RydWN0IHZpcnRjaG5sX3ZsYW5fZmlsdGVyX2xpc3QpICsK
LQkgICAgICAoY291bnQgKiBzaXplb2YodTE2KSk7CisJbGVuID0gc3RydWN0X3NpemUodnZmbCwg
dmxhbl9pZCwgY291bnQpOwogCWlmIChsZW4gPiBJQVZGX01BWF9BUV9CVUZfU0laRSkgewogCQlk
ZXZfd2FybigmYWRhcHRlci0+cGRldi0+ZGV2LCAiVG9vIG1hbnkgYWRkIFZMQU4gY2hhbmdlcyBp
biBvbmUgcmVxdWVzdFxuIik7CiAJCWNvdW50ID0gKElBVkZfTUFYX0FRX0JVRl9TSVpFIC0KIAkJ
CSBzaXplb2Yoc3RydWN0IHZpcnRjaG5sX3ZsYW5fZmlsdGVyX2xpc3QpKSAvCiAJCQlzaXplb2Yo
dTE2KTsKLQkJbGVuID0gc2l6ZW9mKHN0cnVjdCB2aXJ0Y2hubF92bGFuX2ZpbHRlcl9saXN0KSAr
Ci0JCSAgICAgIChjb3VudCAqIHNpemVvZih1MTYpKTsKKwkJbGVuID0gc3RydWN0X3NpemUodnZm
bCwgdmxhbl9pZCwgY291bnQpOwogCQltb3JlID0gdHJ1ZTsKIAl9CiAJdnZmbCA9IGt6YWxsb2Mo
bGVuLCBHRlBfQVRPTUlDKTsKQEAgLTY0MywxNSArNjQxLDEzIEBAIHZvaWQgaWF2Zl9kZWxfdmxh
bnMoc3RydWN0IGlhdmZfYWRhcHRlciAqYWRhcHRlcikKIAl9CiAJYWRhcHRlci0+Y3VycmVudF9v
cCA9IFZJUlRDSE5MX09QX0RFTF9WTEFOOwogCi0JbGVuID0gc2l6ZW9mKHN0cnVjdCB2aXJ0Y2hu
bF92bGFuX2ZpbHRlcl9saXN0KSArCi0JICAgICAgKGNvdW50ICogc2l6ZW9mKHUxNikpOworCWxl
biA9IHN0cnVjdF9zaXplKHZ2ZmwsIHZsYW5faWQsIGNvdW50KTsKIAlpZiAobGVuID4gSUFWRl9N
QVhfQVFfQlVGX1NJWkUpIHsKIAkJZGV2X3dhcm4oJmFkYXB0ZXItPnBkZXYtPmRldiwgIlRvbyBt
YW55IGRlbGV0ZSBWTEFOIGNoYW5nZXMgaW4gb25lIHJlcXVlc3RcbiIpOwogCQljb3VudCA9IChJ
QVZGX01BWF9BUV9CVUZfU0laRSAtCiAJCQkgc2l6ZW9mKHN0cnVjdCB2aXJ0Y2hubF92bGFuX2Zp
bHRlcl9saXN0KSkgLwogCQkJc2l6ZW9mKHUxNik7Ci0JCWxlbiA9IHNpemVvZihzdHJ1Y3Qgdmly
dGNobmxfdmxhbl9maWx0ZXJfbGlzdCkgKwotCQkgICAgICAoY291bnQgKiBzaXplb2YodTE2KSk7
CisJCWxlbiA9IHN0cnVjdF9zaXplKHZ2ZmwsIHZsYW5faWQsIGNvdW50KTsKIAkJbW9yZSA9IHRy
dWU7CiAJfQogCXZ2ZmwgPSBremFsbG9jKGxlbiwgR0ZQX0FUT01JQyk7CmRpZmYgLS1naXQgYS9p
bmNsdWRlL2xpbnV4L2F2Zi92aXJ0Y2hubC5oIGIvaW5jbHVkZS9saW51eC9hdmYvdmlydGNobmwu
aAppbmRleCAxNWI5ODI5MTEzMjEuLjliOWQ3OWMyNzBiMSAxMDA2NDQKLS0tIGEvaW5jbHVkZS9s
aW51eC9hdmYvdmlydGNobmwuaAorKysgYi9pbmNsdWRlL2xpbnV4L2F2Zi92aXJ0Y2hubC5oCkBA
IC00NDQsMTAgKzQ0NCwxMCBAQCBWSVJUQ0hOTF9DSEVDS19TVFJVQ1RfTEVOKDEyLCB2aXJ0Y2hu
bF9ldGhlcl9hZGRyX2xpc3QpOwogc3RydWN0IHZpcnRjaG5sX3ZsYW5fZmlsdGVyX2xpc3Qgewog
CXUxNiB2c2lfaWQ7CiAJdTE2IG51bV9lbGVtZW50czsKLQl1MTYgdmxhbl9pZFsxXTsKKwl1MTYg
dmxhbl9pZFtdOwogfTsKIAotVklSVENITkxfQ0hFQ0tfU1RSVUNUX0xFTig2LCB2aXJ0Y2hubF92
bGFuX2ZpbHRlcl9saXN0KTsKK1ZJUlRDSE5MX0NIRUNLX1NUUlVDVF9MRU4oNCwgdmlydGNobmxf
dmxhbl9maWx0ZXJfbGlzdCk7CiAKIC8qIFZJUlRDSE5MX09QX0NPTkZJR19QUk9NSVNDVU9VU19N
T0RFCiAgKiBWRiBzZW5kcyBWU0kgaWQgYW5kIGZsYWdzLgpAQCAtMTAzNyw3ICsxMDM3LDggQEAg
dmlydGNobmxfdmNfdmFsaWRhdGVfdmZfbXNnKHN0cnVjdCB2aXJ0Y2hubF92ZXJzaW9uX2luZm8g
KnZlciwgdTMyIHZfb3Bjb2RlLAogCQlpZiAobXNnbGVuID49IHZhbGlkX2xlbikgewogCQkJc3Ry
dWN0IHZpcnRjaG5sX3ZsYW5fZmlsdGVyX2xpc3QgKnZmbCA9CiAJCQkgICAgKHN0cnVjdCB2aXJ0
Y2hubF92bGFuX2ZpbHRlcl9saXN0ICopbXNnOwotCQkJdmFsaWRfbGVuICs9IHZmbC0+bnVtX2Vs
ZW1lbnRzICogc2l6ZW9mKHUxNik7CisJCQl2YWxpZF9sZW4gKz0gZmxleF9hcnJheV9zaXplKHZm
bCwgdmxhbl9pZCwKKwkJCQkJCSAgICAgdmZsLT5udW1fZWxlbWVudHMpOwogCQkJaWYgKHZmbC0+
bnVtX2VsZW1lbnRzID09IDApCiAJCQkJZXJyX21zZ19mb3JtYXQgPSB0cnVlOwogCQl9Ci0tIAoy
LjI3LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0
cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
