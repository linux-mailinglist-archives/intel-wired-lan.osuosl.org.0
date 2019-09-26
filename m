Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E01A6BF8E6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Sep 2019 20:11:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8F48587E7D;
	Thu, 26 Sep 2019 18:11:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TLby+ujPGFLq; Thu, 26 Sep 2019 18:11:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4428C87E91;
	Thu, 26 Sep 2019 18:11:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 62C541BF336
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Sep 2019 18:11:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5F4AF861F4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Sep 2019 18:11:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wBNjYsE-bUHe for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Sep 2019 18:11:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A0E00861CE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Sep 2019 18:11:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Sep 2019 11:11:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,552,1559545200"; d="scan'208";a="364882899"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.244.172])
 by orsmga005.jf.intel.com with ESMTP; 26 Sep 2019 11:11:26 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: netdev@vger.kernel.org
Date: Thu, 26 Sep 2019 11:11:06 -0700
Message-Id: <20190926181109.4871-5-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.23.0.245.gf157bbb9169d
In-Reply-To: <20190926181109.4871-1-jacob.e.keller@intel.com>
References: <20190926181109.4871-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next v3 4/7] dp83640: reject unsupported
 external timestamp flags
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
Cc: Richard Cochran <richardcochran@gmail.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 =?UTF-8?q?Stefan=20S=C3=B8rensen?= <stefan.sorensen@spectralink.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Rml4IHRoZSBkcDgzNjQwIFBUUCBzdXBwb3J0IHRvIGV4cGxpY2l0bHkgcmVqZWN0IGFueSBmdXR1
cmUgZmxhZ3MgdGhhdApnZXQgYWRkZWQgdG8gdGhlIGV4dGVybmFsIHRpbWVzdGFtcCByZXF1ZXN0
IGlvY3RsLgoKSW4gb3JkZXIgdG8gbWFpbnRhaW4gY3VycmVudGx5IGZ1bmN0aW9uaW5nIGNvZGUs
IHRoaXMgcGF0Y2ggYWNjZXB0cyBhbGwKdGhyZWUgY3VycmVudCBmbGFncy4gVGhpcyBpcyBiZWNh
dXNlIHRoZSBQVFBfUklTSU5HX0VER0UgYW5kClBUUF9GQUxMSU5HX0VER0UgZmxhZ3MgaGF2ZSB1
bmNsZWFyIHNlbWFudGljcyBhbmQgZWFjaCBkcml2ZXIgc2VlbXMgdG8KaGF2ZSBpbnRlcnByZXRl
ZCB0aGVtIHNsaWdodGx5IGRpZmZlcmVudGx5LgoKQ2M6IFN0ZWZhbiBTw7hyZW5zZW4gPHN0ZWZh
bi5zb3JlbnNlbkBzcGVjdHJhbGluay5jb20+CkNjOiBSaWNoYXJkIENvY2hyYW4gPHJpY2hhcmRj
b2NocmFuQGdtYWlsLmNvbT4KU2lnbmVkLW9mZi1ieTogSmFjb2IgS2VsbGVyIDxqYWNvYi5lLmtl
bGxlckBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9uZXQvcGh5L2RwODM2NDAuYyB8IDUgKysrKysK
IDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL25l
dC9waHkvZHA4MzY0MC5jIGIvZHJpdmVycy9uZXQvcGh5L2RwODM2NDAuYwppbmRleCAwNGFkNzc3
NTg5MjAuLjI3ODFiMGUyZDk0NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9uZXQvcGh5L2RwODM2NDAu
YworKysgYi9kcml2ZXJzL25ldC9waHkvZHA4MzY0MC5jCkBAIC00NjksNiArNDY5LDExIEBAIHN0
YXRpYyBpbnQgcHRwX2RwODM2NDBfZW5hYmxlKHN0cnVjdCBwdHBfY2xvY2tfaW5mbyAqcHRwLAog
CiAJc3dpdGNoIChycS0+dHlwZSkgewogCWNhc2UgUFRQX0NMS19SRVFfRVhUVFM6CisJCS8qIFJl
amVjdCByZXF1ZXN0cyB3aXRoIHVuc3VwcG9ydGVkIGZsYWdzICovCisJCWlmIChycS0+ZXh0dHMu
ZmxhZ3MgJiB+KFBUUF9FTkFCTEVfRkVBVFVSRSB8CisJCQkJCVBUUF9SSVNJTkdfRURHRSB8CisJ
CQkJCVBUUF9GQUxMSU5HX0VER0UpKQorCQkJcmV0dXJuIC1FT1BOT1RTVVBQOwogCQlpbmRleCA9
IHJxLT5leHR0cy5pbmRleDsKIAkJaWYgKGluZGV4ID49IE5fRVhUX1RTKQogCQkJcmV0dXJuIC1F
SU5WQUw7Ci0tIAoyLjIzLjAuMjQ1LmdmMTU3YmJiOTE2OWQKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QK
SW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
