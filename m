Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C4CA390CC1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 May 2021 01:08:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3422583CC6;
	Tue, 25 May 2021 23:08:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dKfmcg-PsLHH; Tue, 25 May 2021 23:08:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3934683CBD;
	Tue, 25 May 2021 23:08:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BFBCA1BF479
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 May 2021 23:08:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A77C4404DB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 May 2021 23:08:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rCKILvH07fh2 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 May 2021 23:08:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EE51C404D6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 May 2021 23:08:15 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id DBCEF613E1;
 Tue, 25 May 2021 23:08:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1621984095;
 bh=P/O96sEoZD/i9afxf4LVHuo7otwPSQxMbZL4rpYOsnM=;
 h=Date:From:To:Cc:Subject:From;
 b=VpTdiaER6/Mt8BMGfOi6m/6p6xpatPcWkn9ZthOllaZP3s9o1osewY/uNO+SBjhk7
 qZkhmHEhd/UYjCFakdagFCfJbNK+SxLOxfU4ynf+ApkDCkulyKrz4/Rnr8MDz4SaDA
 lyqc4R12BUWQbxQkImBa+UTbg9sK4SGgixaA5I2N9yMUtgFDeOV6uL0AcRRHrqSFor
 Va1SFC7AikpbprGY0G6Qa0d9KAWEr6OXqi6kAAntktCtvlXHc3w66ZH9fPThPbA3iU
 2XFnkEve0z9grz3WPSiw1QNluFJJ2YeRNoTz7v+ZlYUL5HN895ppdse/nsyMRQi9I6
 TK7RrltH1JWQA==
Date: Tue, 25 May 2021 18:09:12 -0500
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Message-ID: <20210525230912.GA175802@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [Intel-wired-lan] [PATCH][next] iavf: Replace one-element array in
 struct virtchnl_rss_lut
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
ZXhpYmxlLWFycmF5IG1lbWJlciBpbiBzdHJ1Y3QKdmlydGNobmxfcnNzX2x1dCBpbnN0ZWFkIG9m
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
ZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX3ZpcnRjaG5sLmMKaW5kZXggNmYyYTRjOGJlYjBiLi4xMjNh
NzM3ZjY5NTUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2
Zl92aXJ0Y2hubC5jCisrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl92
aXJ0Y2hubC5jCkBAIC04MzAsNyArODMwLDcgQEAgdm9pZCBpYXZmX3NldF9yc3Nfa2V5KHN0cnVj
dCBpYXZmX2FkYXB0ZXIgKmFkYXB0ZXIpCiB2b2lkIGlhdmZfc2V0X3Jzc19sdXQoc3RydWN0IGlh
dmZfYWRhcHRlciAqYWRhcHRlcikKIHsKIAlzdHJ1Y3QgdmlydGNobmxfcnNzX2x1dCAqdnJsOwot
CWludCBsZW47CisJc2l6ZV90IGxlbjsKIAogCWlmIChhZGFwdGVyLT5jdXJyZW50X29wICE9IFZJ
UlRDSE5MX09QX1VOS05PV04pIHsKIAkJLyogYmFpbCBiZWNhdXNlIHdlIGFscmVhZHkgaGF2ZSBh
IGNvbW1hbmQgcGVuZGluZyAqLwpAQCAtODM4LDggKzgzOCw3IEBAIHZvaWQgaWF2Zl9zZXRfcnNz
X2x1dChzdHJ1Y3QgaWF2Zl9hZGFwdGVyICphZGFwdGVyKQogCQkJYWRhcHRlci0+Y3VycmVudF9v
cCk7CiAJCXJldHVybjsKIAl9Ci0JbGVuID0gc2l6ZW9mKHN0cnVjdCB2aXJ0Y2hubF9yc3NfbHV0
KSArCi0JICAgICAgKGFkYXB0ZXItPnJzc19sdXRfc2l6ZSAqIHNpemVvZih1OCkpIC0gMTsKKwls
ZW4gPSBzdHJ1Y3Rfc2l6ZSh2cmwsIGx1dCwgYWRhcHRlci0+cnNzX2x1dF9zaXplKTsKIAl2cmwg
PSBremFsbG9jKGxlbiwgR0ZQX0tFUk5FTCk7CiAJaWYgKCF2cmwpCiAJCXJldHVybjsKZGlmZiAt
LWdpdCBhL2luY2x1ZGUvbGludXgvYXZmL3ZpcnRjaG5sLmggYi9pbmNsdWRlL2xpbnV4L2F2Zi92
aXJ0Y2hubC5oCmluZGV4IGQyZmQ4NDdhMzg4MC4uY2RhMGM5OGNhOTc4IDEwMDY0NAotLS0gYS9p
bmNsdWRlL2xpbnV4L2F2Zi92aXJ0Y2hubC5oCisrKyBiL2luY2x1ZGUvbGludXgvYXZmL3ZpcnRj
aG5sLmgKQEAgLTQ5MiwxMCArNDkyLDEwIEBAIFZJUlRDSE5MX0NIRUNLX1NUUlVDVF9MRU4oNCwg
dmlydGNobmxfcnNzX2tleSk7CiBzdHJ1Y3QgdmlydGNobmxfcnNzX2x1dCB7CiAJdTE2IHZzaV9p
ZDsKIAl1MTYgbHV0X2VudHJpZXM7Ci0JdTggbHV0WzFdOyAgICAgICAgLyogUlNTIGxvb2t1cCB0
YWJsZSAqLworCXU4IGx1dFtdOyAgICAgICAgLyogUlNTIGxvb2t1cCB0YWJsZSAqLwogfTsKIAot
VklSVENITkxfQ0hFQ0tfU1RSVUNUX0xFTig2LCB2aXJ0Y2hubF9yc3NfbHV0KTsKK1ZJUlRDSE5M
X0NIRUNLX1NUUlVDVF9MRU4oNCwgdmlydGNobmxfcnNzX2x1dCk7CiAKIC8qIFZJUlRDSE5MX09Q
X0dFVF9SU1NfSEVOQV9DQVBTCiAgKiBWSVJUQ0hOTF9PUF9TRVRfUlNTX0hFTkEKQEAgLTEwODcs
NyArMTA4Nyw3IEBAIHZpcnRjaG5sX3ZjX3ZhbGlkYXRlX3ZmX21zZyhzdHJ1Y3QgdmlydGNobmxf
dmVyc2lvbl9pbmZvICp2ZXIsIHUzMiB2X29wY29kZSwKIAkJaWYgKG1zZ2xlbiA+PSB2YWxpZF9s
ZW4pIHsKIAkJCXN0cnVjdCB2aXJ0Y2hubF9yc3NfbHV0ICp2cmwgPQogCQkJCShzdHJ1Y3Qgdmly
dGNobmxfcnNzX2x1dCAqKW1zZzsKLQkJCXZhbGlkX2xlbiArPSB2cmwtPmx1dF9lbnRyaWVzIC0g
MTsKKwkJCXZhbGlkX2xlbiArPSB2cmwtPmx1dF9lbnRyaWVzOwogCQl9CiAJCWJyZWFrOwogCWNh
c2UgVklSVENITkxfT1BfR0VUX1JTU19IRU5BX0NBUFM6Ci0tIAoyLjI3LjAKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWls
aW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wu
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
