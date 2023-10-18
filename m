Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F18D7CE3D7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Oct 2023 19:07:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 537FB421A0;
	Wed, 18 Oct 2023 17:07:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 537FB421A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697648830;
	bh=d+7g+v4u9BvJmV3RriGyxh5ToayQOLZWrs2D/A3a/L4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=iIlHZFMlthLjd2G0Q9U28RYgRRY3pl9AyUtxs6Jm1Hc+6imT47aWfx7LmHQn4LgbL
	 xG28/0sqcA33yNcCyatygcIUXjuy4HIKxuqYrnzzktoYVBdt0phyfSh2dadoCpv13o
	 LnTvzYO50WnMcE7dAzXkCSdSVYCKRgIlOzAuBN0CpRX+09NwZMh7C4mXqo94Fav008
	 2sZWZd4kkeu7L/miq0mUxx7jvlVboqX1qvg8dHv1JiaKvwbaaDvHfpXAmU9xI4a6yf
	 vMPH6vA41KbxfkXsxbkZILt9CnqYkZHzUEL6o+NWm1JwC5uwPYiZcnv918C+5+I5PO
	 g91L6kkR/LByA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uYSGyKE_cXE4; Wed, 18 Oct 2023 17:07:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E621642188;
	Wed, 18 Oct 2023 17:07:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E621642188
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5F2201BF27A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 17:07:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 455E682C33
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 17:07:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 455E682C33
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NBPjbSjeOS7E for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Oct 2023 17:07:02 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6B55A82C1E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 17:07:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6B55A82C1E
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="388924829"
X-IronPort-AV: E=Sophos;i="6.03,235,1694761200"; d="scan'208";a="388924829"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 10:06:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="822494116"
X-IronPort-AV: E=Sophos;i="6.03,235,1694761200"; d="scan'208";a="822494116"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.249.38.47])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 10:06:49 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: netdev@vger.kernel.org
Date: Wed, 18 Oct 2023 11:06:30 -0600
Message-Id: <20231018170635.65409-2-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231018170635.65409-1-ahmed.zaki@intel.com>
References: <20231018170635.65409-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697648822; x=1729184822;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=S6bK3yqxagLnrVtyO1LYITBXTjKz3TItWm3er0fL8NM=;
 b=M5r8qyu1yPO+KB23hhyCd4vaRrn5d0HP3FkfR59c+4TjgEfKeRkJGsHS
 3YG0F6Jh9GoC4SY2bjB/NAF518MtAMdQ2VRtUzA0Am00PPTY0Kr8btRJs
 HuCF5+C9lNfs+YpS8spK7+s0/I2XR03Z2hmP7Vs2b3IHzlsj+DvMIXux5
 smCvWYJumtbsUsdGYcTuOVc/1cgO1XOpOVekVBmQeA/9JIB4w4eAwjbXm
 L28OK5i8fnL0N61rruQMB43jClB/BsekkN9ySaDbQy5vkJhSgZHq+vmCJ
 zPgsBcQHepiZlQi5rXyKUKt55+xQP8K5tNxbHd4XqTSJyqCQEF3tcU7fy
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=M5r8qyu1
Subject: [Intel-wired-lan] [PATCH net-next v5 1/6] net: ethtool: allow
 symmetric-xor RSS hash for any flow type
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
Cc: mkubecek@suse.cz, andrew@lunn.ch, willemdebruijn.kernel@gmail.com,
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
YWNoZSBlZmZpY2llbmN5LgoKQSBOSUMgdGhhdCBzdXBwb3J0cyAic3ltbWV0cmljLXhvciIgY2Fu
IGFjaGlldmUgdGhpcyBSU1MgaGFzaCBzeW1tZXRyeQpieSBYT1JpbmcgdGhlIHNvdXJjZSBhbmQg
ZGVzdGluYXRpb24gZmllbGRzIGFuZCBwYXNzIHRoZSB2YWx1ZXMgdG8gdGhlClJTUyBoYXNoIGFs
Z29yaXRobS4KClRoZSB1c2VyIG1heSByZXF1ZXN0IFJTUyBoYXNoIHN5bW1ldHJ5IGZvciBhIHNw
ZWNpZmljIGZsb3cgdHlwZSwgdmlhOgoKICAgICMgZXRodG9vbCAtTnwtVSBldGgwIHJ4LWZsb3ct
aGFzaCA8Zmxvd190eXBlPiBzfGR8ZnxuIHN5bW1ldHJpYy14b3IKCm9yIHR1cm4gc3ltbWV0cnkg
b2ZmIChhc3ltbWV0cmljKSBieToKCiAgICAjIGV0aHRvb2wgLU58LVUgZXRoMCByeC1mbG93LWhh
c2ggPGZsb3dfdHlwZT4gc3xkfGZ8bgoKUmV2aWV3ZWQtYnk6IFdvamNpZWNoIERyZXdlayA8d29q
Y2llY2guZHJld2VrQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogQWhtZWQgWmFraSA8YWhtZWQu
emFraUBpbnRlbC5jb20+Ci0tLQogRG9jdW1lbnRhdGlvbi9uZXR3b3JraW5nL3NjYWxpbmcucnN0
IHwgIDYgKysrKysrCiBpbmNsdWRlL3VhcGkvbGludXgvZXRodG9vbC5oICAgICAgICAgfCAyMSAr
KysrKysrKysrKysrLS0tLS0tLS0KIDIgZmlsZXMgY2hhbmdlZCwgMTkgaW5zZXJ0aW9ucygrKSwg
OCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL25ldHdvcmtpbmcvc2Nh
bGluZy5yc3QgYi9Eb2N1bWVudGF0aW9uL25ldHdvcmtpbmcvc2NhbGluZy5yc3QKaW5kZXggOTJj
OWZiNDZkNmEyLi42NGYzZDc1NjY0MDcgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24vbmV0d29y
a2luZy9zY2FsaW5nLnJzdAorKysgYi9Eb2N1bWVudGF0aW9uL25ldHdvcmtpbmcvc2NhbGluZy5y
c3QKQEAgLTQ0LDYgKzQ0LDEyIEBAIGJ5IG1hc2tpbmcgb3V0IHRoZSBsb3cgb3JkZXIgc2V2ZW4g
Yml0cyBvZiB0aGUgY29tcHV0ZWQgaGFzaCBmb3IgdGhlCiBwYWNrZXQgKHVzdWFsbHkgYSBUb2Vw
bGl0eiBoYXNoKSwgdGFraW5nIHRoaXMgbnVtYmVyIGFzIGEga2V5IGludG8gdGhlCiBpbmRpcmVj
dGlvbiB0YWJsZSBhbmQgcmVhZGluZyB0aGUgY29ycmVzcG9uZGluZyB2YWx1ZS4KIAorU29tZSBO
SUNzIHN1cHBvcnQgc3ltbWV0cmljIFJTUyBoYXNoaW5nIHdoZXJlLCBpZiB0aGUgSVAgKHNvdXJj
ZSBhZGRyZXNzLAorZGVzdGluYXRpb24gYWRkcmVzcykgYW5kIFRDUC9VRFAgKHNvdXJjZSBwb3J0
LCBkZXN0aW5hdGlvbiBwb3J0KSB0dXBsZXMKK2FyZSBzd2FwcGVkLCB0aGUgY29tcHV0ZWQgaGFz
aCBpcyB0aGUgc2FtZS4gVGhpcyBpcyBiZW5lZmljaWFsIGluIHNvbWUKK2FwcGxpY2F0aW9ucyB0
aGF0IG1vbml0b3IgVENQL0lQIGZsb3dzIChJRFMsIGZpcmV3YWxscywgLi4uZXRjKSBhbmQgbmVl
ZAorYm90aCBkaXJlY3Rpb25zIG9mIHRoZSBmbG93IHRvIGxhbmQgb24gdGhlIHNhbWUgUnggcXVl
dWUgKGFuZCBDUFUpLgorCiBTb21lIGFkdmFuY2VkIE5JQ3MgYWxsb3cgc3RlZXJpbmcgcGFja2V0
cyB0byBxdWV1ZXMgYmFzZWQgb24KIHByb2dyYW1tYWJsZSBmaWx0ZXJzLiBGb3IgZXhhbXBsZSwg
d2Vic2VydmVyIGJvdW5kIFRDUCBwb3J0IDgwIHBhY2tldHMKIGNhbiBiZSBkaXJlY3RlZCB0byB0
aGVpciBvd24gcmVjZWl2ZSBxdWV1ZS4gU3VjaCDigJxuLXR1cGxl4oCdIGZpbHRlcnMgY2FuCmRp
ZmYgLS1naXQgYS9pbmNsdWRlL3VhcGkvbGludXgvZXRodG9vbC5oIGIvaW5jbHVkZS91YXBpL2xp
bnV4L2V0aHRvb2wuaAppbmRleCBmN2ZiYTBkYzg3ZTUuLjRlOGQzOGZiNTVjZSAxMDA2NDQKLS0t
IGEvaW5jbHVkZS91YXBpL2xpbnV4L2V0aHRvb2wuaAorKysgYi9pbmNsdWRlL3VhcGkvbGludXgv
ZXRodG9vbC5oCkBAIC0yMDE4LDE0ICsyMDE4LDE5IEBAIHN0YXRpYyBpbmxpbmUgaW50IGV0aHRv
b2xfdmFsaWRhdGVfZHVwbGV4KF9fdTggZHVwbGV4KQogI2RlZmluZQlGTE9XX1JTUwkweDIwMDAw
MDAwCiAKIC8qIEwzLUw0IG5ldHdvcmsgdHJhZmZpYyBmbG93IGhhc2ggb3B0aW9ucyAqLwotI2Rl
ZmluZQlSWEhfTDJEQQkoMSA8PCAxKQotI2RlZmluZQlSWEhfVkxBTgkoMSA8PCAyKQotI2RlZmlu
ZQlSWEhfTDNfUFJPVE8JKDEgPDwgMykKLSNkZWZpbmUJUlhIX0lQX1NSQwkoMSA8PCA0KQotI2Rl
ZmluZQlSWEhfSVBfRFNUCSgxIDw8IDUpCi0jZGVmaW5lCVJYSF9MNF9CXzBfMQkoMSA8PCA2KSAv
KiBzcmMgcG9ydCBpbiBjYXNlIG9mIFRDUC9VRFAvU0NUUCAqLwotI2RlZmluZQlSWEhfTDRfQl8y
XzMJKDEgPDwgNykgLyogZHN0IHBvcnQgaW4gY2FzZSBvZiBUQ1AvVURQL1NDVFAgKi8KLSNkZWZp
bmUJUlhIX0RJU0NBUkQJKDEgPDwgMzEpCisjZGVmaW5lCVJYSF9MMkRBCQkoMSA8PCAxKQorI2Rl
ZmluZQlSWEhfVkxBTgkJKDEgPDwgMikKKyNkZWZpbmUJUlhIX0wzX1BST1RPCQkoMSA8PCAzKQor
I2RlZmluZQlSWEhfSVBfU1JDCQkoMSA8PCA0KQorI2RlZmluZQlSWEhfSVBfRFNUCQkoMSA8PCA1
KQorI2RlZmluZQlSWEhfTDRfQl8wXzEJCSgxIDw8IDYpIC8qIHNyYyBwb3J0IGluIGNhc2Ugb2Yg
VENQL1VEUC9TQ1RQICovCisjZGVmaW5lCVJYSF9MNF9CXzJfMwkJKDEgPDwgNykgLyogZHN0IHBv
cnQgaW4gY2FzZSBvZiBUQ1AvVURQL1NDVFAgKi8KKy8qIFhPUiB0aGUgY29ycmVzcG9uZGluZyBz
b3VyY2UgYW5kIGRlc3RpbmF0aW9uIGZpZWxkcyBvZiBlYWNoIHNwZWNpZmllZAorICogcHJvdG9j
b2wuIEJvdGggY29waWVzIG9mIHRoZSBYT1InZWQgZmllbGRzIGFyZSBmZWQgaW50byB0aGUgUlNT
IGFuZCBSWEhBU0gKKyAqIGNhbGN1bGF0aW9uLgorICovCisjZGVmaW5lCVJYSF9TWU1NRVRSSUNf
WE9SCSgxIDw8IDMwKQorI2RlZmluZQlSWEhfRElTQ0FSRAkJKDEgPDwgMzEpCiAKICNkZWZpbmUJ
UlhfQ0xTX0ZMT1dfRElTQwkweGZmZmZmZmZmZmZmZmZmZmZVTEwKICNkZWZpbmUgUlhfQ0xTX0ZM
T1dfV0FLRQkweGZmZmZmZmZmZmZmZmZmZmVVTEwKLS0gCjIuMzQuMQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcg
bGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
