Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F9337BC26A
	for <lists+intel-wired-lan@lfdr.de>; Sat,  7 Oct 2023 00:48:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C1B296FAC7;
	Fri,  6 Oct 2023 22:47:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C1B296FAC7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696632479;
	bh=HlGT19zVsipqOWw3g7nAm+LoumdyIl7nJ4GOvzKqzmc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aiLTuKhXoiMyi4od/i3n3bxCjOQjz0uxYkBEigbVL/HDhl1ZuquA6XTT/CBZWuNmi
	 fRg8JrYSsDQXNXY93er/AZT+7ErhAs45vouEq4sDnjSKpu6/v2dyknLePr0Hj54Sme
	 s7KYyu1BJKo7Z8TDEpzkbigSRjNyazsRFzlGd832Lwt73mS89O4lPt/h+HmaXdKJnq
	 n4+KO0rx7AgKiZ/yaTKkzBDS/gla56bOxhlXoZJKP8obCG0TkIVAv9bBk6zupFOyvm
	 wOnbdVqf7apaOOLfbz7Yj33JMSNC2PnVqPcKcRfjbHb0Hxf6sOq89S//BGwckFjNfP
	 6Hyxhnv6w0uoA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wv34l9B7jdx6; Fri,  6 Oct 2023 22:47:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8777860D5F;
	Fri,  6 Oct 2023 22:47:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8777860D5F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 177281BF997
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 22:47:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F1A3840141
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 22:47:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F1A3840141
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q-SaLv4PTfUP for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Oct 2023 22:47:48 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3F3D741694
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 22:47:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3F3D741694
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="363201068"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="363201068"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 15:47:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="1083610304"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="1083610304"
Received: from dianaman-mobl1.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.249.35.113])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 15:47:41 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: netdev@vger.kernel.org
Date: Fri,  6 Oct 2023 16:47:21 -0600
Message-Id: <20231006224726.443836-2-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231006224726.443836-1-ahmed.zaki@intel.com>
References: <20231006224726.443836-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696632468; x=1728168468;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=32akxHSYhb17D+XQtNXel6BwEp9EweKFmYRPZqxIveM=;
 b=iA2kwKeJFAm8amQS4ubrupFnpyAKrboGZsWXI2RvzHiRTs7QIOfHUqVL
 3gSc3cEXtUFW9Oy2uQEQfuLRBFFnWXZUl7o37NyQqfDMms8UsP1MxMpD2
 XPR0AaRRwuwBLH2e1UiZYZt1OVGNhWkOTXCHDDA3crUNC9C1e5xvbaqhU
 u5C8w1+w9Lh7cD8CfP2Ycsp18d2Ovd5RiJzn8MYp+OkRsH5b2SxubcVEn
 btAD4m+97n5zGuKPVKe8uj4I7Q5qUnx4C614pRroF/N3oLKb/Gs4XZ77H
 KyRQ7BuyGIk3UGzb0p1dEEbJxD6D/pqRJJqJXRkITQtDpKVStM6/3YnmQ
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iA2kwKeJ
Subject: [Intel-wired-lan] [PATCH net-next v2 1/6] net: ethtool: allow
 symmetric RSS hash for any flow type
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
Cc: mkubecek@suse.cz, andrew@lunn.ch,
 Wojciech Drewek <wojciech.drewek@intel.com>, corbet@lwn.net,
 vladimir.oltean@nxp.com, linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 Ahmed Zaki <ahmed.zaki@intel.com>, edumazet@google.com,
 anthony.l.nguyen@intel.com, horms@kernel.org, kuba@kernel.org,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

U3ltbWV0cmljIFJTUyBoYXNoIGZ1bmN0aW9ucyBhcmUgYmVuZWZpY2lhbCBpbiBhcHBsaWNhdGlv
bnMgdGhhdCBtb25pdG9yCmJvdGggVHggYW5kIFJ4IHBhY2tldHMgb2YgdGhlIHNhbWUgZmxvdyAo
SURTLCBzb2Z0d2FyZSBmaXJld2FsbHMsIC4uZXRjKS4KR2V0dGluZyBhbGwgdHJhZmZpYyBvZiB0
aGUgc2FtZSBmbG93IG9uIHRoZSBzYW1lIFJYIHF1ZXVlIHJlc3VsdHMgaW4KaGlnaGVyIENQVSBj
YWNoZSBlZmZpY2llbmN5LgoKT25seSBmaWVsZHMgdGhhdCBoYXMgY291bnRlcnBhcnRzIGluIHRo
ZSBvdGhlciBkaXJlY3Rpb24gY2FuIGJlCmFjY2VwdGVkOyBJUCBzcmMvZHN0IGFuZCBMNCBzcmMv
ZHN0IHBvcnRzLgoKVGhlIHVzZXIgbWF5IHJlcXVlc3QgUlNTIGhhc2ggc3ltbWV0cnkgZm9yIGEg
c3BlY2lmaWMgZmxvdyB0eXBlLCB2aWE6CgogICAgIyBldGh0b29sIC1OfC1VIGV0aDAgcngtZmxv
dy1oYXNoIDxmbG93X3R5cGU+IHN8ZHxmfG4gc3ltbWV0cmljCgpvciB0dXJuIHN5bW1ldHJ5IG9m
ZiAoYXN5bW1ldHJpYykgYnk6CgogICAgIyBldGh0b29sIC1OfC1VIGV0aDAgcngtZmxvdy1oYXNo
IDxmbG93X3R5cGU+IHN8ZHxmfG4KClJldmlld2VkLWJ5OiBXb2pjaWVjaCBEcmV3ZWsgPHdvamNp
ZWNoLmRyZXdla0BpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEFobWVkIFpha2kgPGFobWVkLnph
a2lAaW50ZWwuY29tPgotLS0KIERvY3VtZW50YXRpb24vbmV0d29ya2luZy9zY2FsaW5nLnJzdCB8
ICA2ICsrKysrKwogaW5jbHVkZS91YXBpL2xpbnV4L2V0aHRvb2wuaCAgICAgICAgIHwgIDEgKwog
bmV0L2V0aHRvb2wvaW9jdGwuYyAgICAgICAgICAgICAgICAgIHwgMTEgKysrKysrKysrKysKIDMg
ZmlsZXMgY2hhbmdlZCwgMTggaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRp
b24vbmV0d29ya2luZy9zY2FsaW5nLnJzdCBiL0RvY3VtZW50YXRpb24vbmV0d29ya2luZy9zY2Fs
aW5nLnJzdAppbmRleCA5MmM5ZmI0NmQ2YTIuLjY0ZjNkNzU2NjQwNyAxMDA2NDQKLS0tIGEvRG9j
dW1lbnRhdGlvbi9uZXR3b3JraW5nL3NjYWxpbmcucnN0CisrKyBiL0RvY3VtZW50YXRpb24vbmV0
d29ya2luZy9zY2FsaW5nLnJzdApAQCAtNDQsNiArNDQsMTIgQEAgYnkgbWFza2luZyBvdXQgdGhl
IGxvdyBvcmRlciBzZXZlbiBiaXRzIG9mIHRoZSBjb21wdXRlZCBoYXNoIGZvciB0aGUKIHBhY2tl
dCAodXN1YWxseSBhIFRvZXBsaXR6IGhhc2gpLCB0YWtpbmcgdGhpcyBudW1iZXIgYXMgYSBrZXkg
aW50byB0aGUKIGluZGlyZWN0aW9uIHRhYmxlIGFuZCByZWFkaW5nIHRoZSBjb3JyZXNwb25kaW5n
IHZhbHVlLgogCitTb21lIE5JQ3Mgc3VwcG9ydCBzeW1tZXRyaWMgUlNTIGhhc2hpbmcgd2hlcmUs
IGlmIHRoZSBJUCAoc291cmNlIGFkZHJlc3MsCitkZXN0aW5hdGlvbiBhZGRyZXNzKSBhbmQgVENQ
L1VEUCAoc291cmNlIHBvcnQsIGRlc3RpbmF0aW9uIHBvcnQpIHR1cGxlcworYXJlIHN3YXBwZWQs
IHRoZSBjb21wdXRlZCBoYXNoIGlzIHRoZSBzYW1lLiBUaGlzIGlzIGJlbmVmaWNpYWwgaW4gc29t
ZQorYXBwbGljYXRpb25zIHRoYXQgbW9uaXRvciBUQ1AvSVAgZmxvd3MgKElEUywgZmlyZXdhbGxz
LCAuLi5ldGMpIGFuZCBuZWVkCitib3RoIGRpcmVjdGlvbnMgb2YgdGhlIGZsb3cgdG8gbGFuZCBv
biB0aGUgc2FtZSBSeCBxdWV1ZSAoYW5kIENQVSkuCisKIFNvbWUgYWR2YW5jZWQgTklDcyBhbGxv
dyBzdGVlcmluZyBwYWNrZXRzIHRvIHF1ZXVlcyBiYXNlZCBvbgogcHJvZ3JhbW1hYmxlIGZpbHRl
cnMuIEZvciBleGFtcGxlLCB3ZWJzZXJ2ZXIgYm91bmQgVENQIHBvcnQgODAgcGFja2V0cwogY2Fu
IGJlIGRpcmVjdGVkIHRvIHRoZWlyIG93biByZWNlaXZlIHF1ZXVlLiBTdWNoIOKAnG4tdHVwbGXi
gJ0gZmlsdGVycyBjYW4KZGlmZiAtLWdpdCBhL2luY2x1ZGUvdWFwaS9saW51eC9ldGh0b29sLmgg
Yi9pbmNsdWRlL3VhcGkvbGludXgvZXRodG9vbC5oCmluZGV4IGY3ZmJhMGRjODdlNS4uYmY2N2M4
MDk0YWUwIDEwMDY0NAotLS0gYS9pbmNsdWRlL3VhcGkvbGludXgvZXRodG9vbC5oCisrKyBiL2lu
Y2x1ZGUvdWFwaS9saW51eC9ldGh0b29sLmgKQEAgLTIwMjUsNiArMjAyNSw3IEBAIHN0YXRpYyBp
bmxpbmUgaW50IGV0aHRvb2xfdmFsaWRhdGVfZHVwbGV4KF9fdTggZHVwbGV4KQogI2RlZmluZQlS
WEhfSVBfRFNUCSgxIDw8IDUpCiAjZGVmaW5lCVJYSF9MNF9CXzBfMQkoMSA8PCA2KSAvKiBzcmMg
cG9ydCBpbiBjYXNlIG9mIFRDUC9VRFAvU0NUUCAqLwogI2RlZmluZQlSWEhfTDRfQl8yXzMJKDEg
PDwgNykgLyogZHN0IHBvcnQgaW4gY2FzZSBvZiBUQ1AvVURQL1NDVFAgKi8KKyNkZWZpbmUJUlhI
X1NZTU1FVFJJQwkoMSA8PCAzMCkKICNkZWZpbmUJUlhIX0RJU0NBUkQJKDEgPDwgMzEpCiAKICNk
ZWZpbmUJUlhfQ0xTX0ZMT1dfRElTQwkweGZmZmZmZmZmZmZmZmZmZmZVTEwKZGlmZiAtLWdpdCBh
L25ldC9ldGh0b29sL2lvY3RsLmMgYi9uZXQvZXRodG9vbC9pb2N0bC5jCmluZGV4IDBiMGNlNGY4
MWMwMS4uNDQ3NDI2NTNhNGJkIDEwMDY0NAotLS0gYS9uZXQvZXRodG9vbC9pb2N0bC5jCisrKyBi
L25ldC9ldGh0b29sL2lvY3RsLmMKQEAgLTk4MCw2ICs5ODAsMTcgQEAgc3RhdGljIG5vaW5saW5l
X2Zvcl9zdGFjayBpbnQgZXRodG9vbF9zZXRfcnhuZmMoc3RydWN0IG5ldF9kZXZpY2UgKmRldiwK
IAlpZiAocmMpCiAJCXJldHVybiByYzsKIAorCS8qIElmIGEgc3ltbWV0cmljIGhhc2ggaXMgcmVx
dWVzdGVkLCB0aGVuOgorCSAqIDEgLSBubyBvdGhlciBmaWVsZHMgYmVzaWRlcyBJUCBzcmMvZHN0
IGFuZC9vciBMNCBzcmMvZHN0CisJICogMiAtIElmIHNyYyBpcyBzZXQsIGRzdCBtdXN0IGFsc28g
YmUgc2V0CisJICovCisJaWYgKChpbmZvLmRhdGEgJiBSWEhfU1lNTUVUUklDKSAmJgorCSAgICAo
KGluZm8uZGF0YSAmIH4oUlhIX1NZTU1FVFJJQyB8IFJYSF9JUF9TUkMgfCBSWEhfSVBfRFNUIHwK
KwkgICAgICBSWEhfTDRfQl8wXzEgfCBSWEhfTDRfQl8yXzMpKSB8fAorCSAgICAgKCEhKGluZm8u
ZGF0YSAmIFJYSF9JUF9TUkMpIF4gISEoaW5mby5kYXRhICYgUlhIX0lQX0RTVCkpIHx8CisJICAg
ICAoISEoaW5mby5kYXRhICYgUlhIX0w0X0JfMF8xKSBeICEhKGluZm8uZGF0YSAmIFJYSF9MNF9C
XzJfMykpKSkKKwkJcmV0dXJuIC1FSU5WQUw7CisKIAlyYyA9IGRldi0+ZXRodG9vbF9vcHMtPnNl
dF9yeG5mYyhkZXYsICZpbmZvKTsKIAlpZiAocmMpCiAJCXJldHVybiByYzsKLS0gCjIuMzQuMQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2ly
ZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xp
c3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
