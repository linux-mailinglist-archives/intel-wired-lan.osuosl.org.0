Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F40427D634
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Sep 2020 20:56:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EB7AA867F8;
	Tue, 29 Sep 2020 18:56:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nKWWl4qKv4I2; Tue, 29 Sep 2020 18:56:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CF5D186566;
	Tue, 29 Sep 2020 18:56:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 99E101BF981
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 18:56:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 942BC870BF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 18:56:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DIk7q6u9pvD8 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Sep 2020 18:56:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0DFAF86FBE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 18:56:16 +0000 (UTC)
Received: from embeddedor (187-162-31-110.static.axtel.net [187.162.31.110])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C9A622076D;
 Tue, 29 Sep 2020 18:56:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1601405775;
 bh=B4LAoCA5W+8yr4Ajd8NMhnc+SSJLU315huDeq+kqHT0=;
 h=Date:From:To:Cc:Subject:From;
 b=K3kaRVQui+deC0532ckd9YNAnVhOcaqYzyqkRIy1t5X9hEm7PTeEMXip/Y0isOHre
 dUXVtpwqhw0FMn56Tj9t/8gSeVLwjY6xrqk7TLaueetVHjsoVMNui6tScT/IO4QTT7
 QBtev1ZKwIOco3iXvT+6s1BvGgR373hV3pMkdw7w=
Date: Tue, 29 Sep 2020 14:01:56 -0500
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Message-ID: <20200929190156.GA25604@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: [Intel-wired-lan] [PATCH][next] ice: Replace one-element array with
 flexible-array member
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
IGRlY2xhcmUgaGF2aW5nCmEgZHluYW1pY2FsbHkgc2l6ZWQgc2V0IG9mIHRyYWlsaW5nIGVsZW1l
bnRzIGluIGEgc3RydWN0dXJlLiBLZXJuZWwgY29kZQpzaG91bGQgYWx3YXlzIHVzZSDigJxmbGV4
aWJsZSBhcnJheSBtZW1iZXJz4oCdWzFdIGZvciB0aGVzZSBjYXNlcy4gVGhlIG9sZGVyCnN0eWxl
IG9mIG9uZS1lbGVtZW50IG9yIHplcm8tbGVuZ3RoIGFycmF5cyBzaG91bGQgbm8gbG9uZ2VyIGJl
IHVzZWRbMl0uCgpSZWZhY3RvciB0aGUgY29kZSBhY2NvcmRpbmcgdG8gdGhlIHVzZSBvZiBhIGZs
ZXhpYmxlLWFycmF5IG1lbWJlciBpbgpzdHJ1Y3QgaWNlX3Jlc190cmFja2VyLCBpbnN0ZWFkIG9m
IGEgb25lLWVsZW1lbnQgYXJyYXkgYW5kIHVzZSB0aGUKc3RydWN0X3NpemUoKSBoZWxwZXIgdG8g
Y2FsY3VsYXRlIHRoZSBzaXplIGZvciB0aGUgYWxsb2NhdGlvbnMuCgpBbHNvLCBub3RpY2UgdGhh
dCB0aGUgY29kZSBiZWxvdyBzdWdnZXN0cyB0aGF0LCBjdXJyZW50bHksIHR3byB0b28gbWFueQpi
eXRlcyBhcmUgYmVpbmcgYWxsb2NhdGVkIHdpdGggZGV2bV9remFsbG9jKCksIGFzIHRoZSB0b3Rh
bCBudW1iZXIgb2YKZW50cmllcyAocGYtPmlycV90cmFja2VyLT5udW1fZW50cmllcykgZm9yIHBm
LT5pcnFfdHJhY2tlci0+bGlzdFtdIGlzCl92ZWN0b3JzXyBhbmQgc2l6ZW9mKCpwZi0+aXJxX3Ry
YWNrZXIpIGFsc28gaW5jbHVkZXMgdGhlIHNpemUgb2YgdGhlCm9uZS1lbGVtZW50IGFycmF5IF9s
aXN0XyBpbiBzdHJ1Y3QgaWNlX3Jlc190cmFja2VyLgoKZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWNlL2ljZV9tYWluLmM6MzUxMToKMzUxMSAgICAgICAgIC8qIHBvcHVsYXRlIFNXIGludGVy
cnVwdHMgcG9vbCB3aXRoIG51bWJlciBvZiBPUyBncmFudGVkIElSUXMuICovCjM1MTIgICAgICAg
ICBwZi0+bnVtX2F2YWlsX3N3X21zaXggPSAodTE2KXZlY3RvcnM7CjM1MTMgICAgICAgICBwZi0+
aXJxX3RyYWNrZXItPm51bV9lbnRyaWVzID0gKHUxNil2ZWN0b3JzOwozNTE0ICAgICAgICAgcGYt
PmlycV90cmFja2VyLT5lbmQgPSBwZi0+aXJxX3RyYWNrZXItPm51bV9lbnRyaWVzOwoKV2l0aCB0
aGlzIGNoYW5nZSwgdGhlIHJpZ2h0IGFtb3VudCBvZiBkeW5hbWljIG1lbW9yeSBpcyBub3cgYWxs
b2NhdGVkCmJlY2F1c2UsIGNvbnRyYXJ5IHRvIG9uZS1lbGVtZW50IGFycmF5cyB3aGljaCBvY2N1
cHkgYXQgbGVhc3QgYXMgbXVjaApzcGFjZSBhcyBhIHNpbmdsZSBvYmplY3Qgb2YgdGhlIHR5cGUs
IGZsZXhpYmxlLWFycmF5IG1lbWJlcnMgZG9uJ3QKb2NjdXB5IHN1Y2ggc3BhY2UgaW4gdGhlIGNv
bnRhaW5pbmcgc3RydWN0dXJlLgoKWzFdIGh0dHBzOi8vZW4ud2lraXBlZGlhLm9yZy93aWtpL0Zs
ZXhpYmxlX2FycmF5X21lbWJlcgpbMl0gaHR0cHM6Ly93d3cua2VybmVsLm9yZy9kb2MvaHRtbC92
NS45LXJjMS9wcm9jZXNzL2RlcHJlY2F0ZWQuaHRtbCN6ZXJvLWxlbmd0aC1hbmQtb25lLWVsZW1l
bnQtYXJyYXlzCgpCdWlsdC10ZXN0ZWQtYnk6IGtlcm5lbCB0ZXN0IHJvYm90IDxsa3BAaW50ZWwu
Y29tPgpTaWduZWQtb2ZmLWJ5OiBHdXN0YXZvIEEuIFIuIFNpbHZhIDxndXN0YXZvYXJzQGtlcm5l
bC5vcmc+Ci0tLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZS5oICAgICAgfCAy
ICstCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX21haW4uYyB8IDYgKysrLS0t
CiAyIGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlLmggYi9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlLmgKaW5kZXggNjU1ODNmMGExNzk3Li5hNGM4NGZhYTM2
ZDYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2UuaAorKysg
Yi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlLmgKQEAgLTE2NCw3ICsxNjQsNyBA
QCBzdHJ1Y3QgaWNlX3RjX2NmZyB7CiBzdHJ1Y3QgaWNlX3Jlc190cmFja2VyIHsKIAl1MTYgbnVt
X2VudHJpZXM7CiAJdTE2IGVuZDsKLQl1MTYgbGlzdFsxXTsKKwl1MTYgbGlzdFtdOwogfTsKIAog
c3RydWN0IGljZV9xc19jZmcgewpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWNlL2ljZV9tYWluLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX21h
aW4uYwppbmRleCAyMjk3ZWU3ZGJhMjYuLmY2YTdhMjM2MTVlYiAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9tYWluLmMKKysrIGIvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWNlL2ljZV9tYWluLmMKQEAgLTM1MDAsOSArMzUwMCw5IEBAIHN0YXRpYyBp
bnQgaWNlX2luaXRfaW50ZXJydXB0X3NjaGVtZShzdHJ1Y3QgaWNlX3BmICpwZikKIAkJcmV0dXJu
IHZlY3RvcnM7CiAKIAkvKiBzZXQgdXAgdmVjdG9yIGFzc2lnbm1lbnQgdHJhY2tpbmcgKi8KLQlw
Zi0+aXJxX3RyYWNrZXIgPQotCQlkZXZtX2t6YWxsb2MoaWNlX3BmX3RvX2RldihwZiksIHNpemVv
ZigqcGYtPmlycV90cmFja2VyKSArCi0JCQkgICAgIChzaXplb2YodTE2KSAqIHZlY3RvcnMpLCBH
RlBfS0VSTkVMKTsKKwlwZi0+aXJxX3RyYWNrZXIgPSBkZXZtX2t6YWxsb2MoaWNlX3BmX3RvX2Rl
dihwZiksCisJCQkJICAgICAgIHN0cnVjdF9zaXplKHBmLT5pcnFfdHJhY2tlciwgbGlzdCwgdmVj
dG9ycyksCisJCQkJICAgICAgIEdGUF9LRVJORUwpOwogCWlmICghcGYtPmlycV90cmFja2VyKSB7
CiAJCWljZV9kaXNfbXNpeChwZik7CiAJCXJldHVybiAtRU5PTUVNOwotLSAKMi4yNy4wCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1s
YW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMu
b3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
