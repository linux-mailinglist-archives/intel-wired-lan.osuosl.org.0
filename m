Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F9B97B832A
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Oct 2023 17:05:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6E380813D5;
	Wed,  4 Oct 2023 15:05:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6E380813D5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696431911;
	bh=sTiVwBWuMb3NFgWlIoAMK0TROm5oiU3KgnQ1TyG1zDM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=C8i/v7TMR12qB4qxDF2SUvKAhMh817BxOG8GqbR04gdcXEHdcdLEgSPzOWo8hf3JH
	 u7Qb9QneoCHcBpCSp5th8OAcBcHHRT74s0odpwkj+SQWWScUq7nw2bOfeGI4fTiume
	 ESLAtO2Ycsk9iOso4KlM0Ini+sE1CfNBvR8HhX1IHK9E4pU+FbxrLp1j7jDhnTKZ8O
	 /uqBCqiXcdS/Go6Ug9cdOKboJp1JFNNfPmOP69KInX04MfX61FxD5BZg69clqtXjnf
	 tGsBQdZANXJCDPUsFDo0o1/thscHR3AiH9SrBjYzhvum93eogfanolWT+dnkgd1/H3
	 +ivDK/9IxQfCw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1lQDLROG0I88; Wed,  4 Oct 2023 15:05:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 43DFF81390;
	Wed,  4 Oct 2023 15:05:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 43DFF81390
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7CC211BF487
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Oct 2023 08:53:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 554926106C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Oct 2023 08:53:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 554926106C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2xieZqHw8oZm for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Oct 2023 08:53:37 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 14B1960C03
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Oct 2023 08:53:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 14B1960C03
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="469375222"
X-IronPort-AV: E=Sophos;i="6.03,199,1694761200"; d="scan'208";a="469375222"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 01:53:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="894850759"
X-IronPort-AV: E=Sophos;i="6.03,199,1694761200"; d="scan'208";a="894850759"
Received: from unknown (HELO paamrpdk12-S2600BPB.aw.intel.com)
 ([10.228.151.145])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 01:52:05 -0700
From: Tirthendu Sarkar <tirthendu.sarkar@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  4 Oct 2023 14:04:54 +0530
Message-Id: <20231004083454.20143-1-tirthendu.sarkar@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 04 Oct 2023 15:05:05 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696409617; x=1727945617;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jOkGAQMfFt/tof6iuDRfEPv3hBtFiBn7WKU34mkhsf0=;
 b=ZszTJwaL8ZHR27HpndDcDyb8oA5YBYVJPspM+PJyu/+YJvwrbvzXUoRZ
 lUJMOJD+nfaz37xcTq8vnLlPf0sNYH5BdUNGLr+XEIj75qRSCA5u8VZMZ
 ISe2rf1QiCU7t/2EBh51UUgcVReHPDezOth/i69nOAd0gQWPKL5gCqNlb
 z7G9fYCxjf2jWZIDRIaIwTu3D7zaMXH0ZXgy2AZZrTWQ9j+n9UTwCyzDH
 oY/HxPRYv7t4uddEDnlnMd/WUDDASHu6NZIV9AZotUt8ijMxvmtLC9/mQ
 I65U4yFTeIoUEtsv28Y8WThpL3KuHVcWNLJDpZtTQocUOxR4TW6wwhHEJ
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZszTJwaL
Subject: [Intel-wired-lan] [PATCH net] i40e: sync next_to_clean and
 next_to_process for programming status desc
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
Cc: maciej.fijalkowski@intel.com, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com, bpf@vger.kernel.org,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

V2hlbiBhIHByb2dyYW1taW5nIHN0YXR1cyBkZXNjIGlzIGVuY291bnRlcmVkIG9uIHRoZSByeF9y
aW5nLApuZXh0X3RvX3Byb2Nlc3MgaXMgYnVtcGVkIGFsb25nIHdpdGggY2xlYW5lZF9jb3VudCBi
dXQgbmV4dF90b19jbGVhbiBpcwpub3QuIFRoaXMgY2F1c2VzIEk0MEVfREVTQ19VTlVTRUQoKSBt
YWNybyB0byBtaXNiZWhhdmUgcmVzdWx0aW5nIGluCm92ZXJ3cml0aW5nIHdob2xlIHJpbmcgd2l0
aCBuZXcgYnVmZmVycy4KClVwZGF0ZSBuZXh0X3RvX2NsZWFuIHRvIHBvaW50IHRvIG5leHRfdG9f
cHJvY2VzcyBvbiBzZWVpbmcgYSBwcm9ncmFtbWluZwpzdGF0dXMgZGVzYyBpZiBub3QgaW4gdGhl
IG1pZGRsZSBvZiBoYW5kbGluZyBhIG11bHRpLWZyYWcgcGFja2V0LiBBbHNvLApidW1wIGNsZWFu
ZWRfY291bnQgb25seSBmb3Igc3VjaCBjYXNlIGFzIG90aGVyd2lzZSBuZXh0X3RvX2NsZWFuIGJ1
ZmZlcgptYXkgYmUgcmV0dXJuZWQgdG8gaGFyZHdhcmUgb24gcmVhY2hpbmcgY2xlYW5fdGhyZXNo
b2xkLgoKRml4ZXM6IGU5MDMxZjJkYTFhZSAoImk0MGU6IGludHJvZHVjZSBuZXh0X3RvX3Byb2Nl
c3MgdG8gaTQwZV9yaW5nIikKU3VnZ2VzdGVkLWJ5OiBNYWNpZWogRmlqYWxrb3dza2kgPG1hY2ll
ai5maWphbGtvd3NraUBpbnRlbC5jb20+ClJlcG9ydGVkLWJ5OiBocS5kZXYra2VybmVsQG1zZGZj
Lnh5egpSZXBvcnRlZCBieTogU29sb21vbiBQZWFjaHkgPHBpenphQHNoYWZ0bmV0Lm9yZz4KQ2xv
c2VzOiBodHRwczovL2J1Z3ppbGxhLmtlcm5lbC5vcmcvc2hvd19idWcuY2dpP2lkPTIxNzY3OApU
ZXN0ZWQtYnk6IGhxLmRlditrZXJuZWxAbXNkZmMueHl6ClRlc3RlZCBieTogSW5kcmVrIErDpHJ2
ZSA8aW5jeEBkdXN0Yml0ZS5uZXQ+ClNpZ25lZC1vZmYtYnk6IFRpcnRoZW5kdSBTYXJrYXIgPHRp
cnRoZW5kdS5zYXJrYXJAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2k0MGUvaTQwZV90eHJ4LmMgfCA5ICsrKysrKysrLQogMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0
aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2k0MGUvaTQwZV90eHJ4LmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBl
L2k0MGVfdHhyeC5jCmluZGV4IDBiM2EyN2YxMThmYi4uNTBjNzBhOGU0NzBhIDEwMDY0NAotLS0g
YS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfdHhyeC5jCisrKyBiL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV90eHJ4LmMKQEAgLTI1NDQsNyArMjU0NCwx
NCBAQCBzdGF0aWMgaW50IGk0MGVfY2xlYW5fcnhfaXJxKHN0cnVjdCBpNDBlX3JpbmcgKnJ4X3Jp
bmcsIGludCBidWRnZXQsCiAJCQlyeF9idWZmZXIgPSBpNDBlX3J4X2JpKHJ4X3JpbmcsIG50cCk7
CiAJCQlpNDBlX2luY19udHAocnhfcmluZyk7CiAJCQlpNDBlX3JldXNlX3J4X3BhZ2Uocnhfcmlu
ZywgcnhfYnVmZmVyKTsKLQkJCWNsZWFuZWRfY291bnQrKzsKKwkJCS8qIFVwZGF0ZSBudGMgYW5k
IGJ1bXAgY2xlYW5lZCBjb3VudCBpZiBub3QgaW4gdGhlCisJCQkgKiBtaWRkbGUgb2YgbWIgcGFj
a2V0LgorCQkJICovCisJCQlpZiAocnhfcmluZy0+bmV4dF90b19jbGVhbiA9PSBudHApIHsKKwkJ
CQlyeF9yaW5nLT5uZXh0X3RvX2NsZWFuID0KKwkJCQkJcnhfcmluZy0+bmV4dF90b19wcm9jZXNz
OworCQkJCWNsZWFuZWRfY291bnQrKzsKKwkJCX0KIAkJCWNvbnRpbnVlOwogCQl9CiAKLS0gCjIu
MzQuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRw
czovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
