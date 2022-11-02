Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57343617323
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Nov 2022 00:59:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D4F5840A8E;
	Wed,  2 Nov 2022 23:59:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D4F5840A8E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667433597;
	bh=JgzhzeGZofjTtrLJd6Zr5pKZiEO415Jz1Wx6gcXAKvA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=N0qSTi4VLfKndTgYaOQ6lKkhit+9DkXsY/DjqKmgPZYqgr7rWUJNnEIMjJi6btgM8
	 3WW98XQKN+v3i8nqzd6LjhxgStt7HAZFjQOBBPNjep8kSRMOaQ29nBJUErTGfuEy2S
	 S7WoBsf7MPkOl1lEEJkdiYSBHNRk2dzg9WMYypjDaWWqtU3mghgXehIzlerWw6dgoZ
	 1VKAECzz8dHdeU6P2DbHD+v57YEciux4cKWZLO4TufONFJucY1lRfxawLXgjSVRXcw
	 3d31kej+YjH6aDZ5015NKHYiTuox9twJGCrSYsVG/o/z1CDLk33s3T1lSYf0JS2C6a
	 SC15ger5rK99A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K9JviUhy573Q; Wed,  2 Nov 2022 23:59:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C5D8840112;
	Wed,  2 Nov 2022 23:59:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C5D8840112
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CE4D81BF294
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Nov 2022 23:59:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A79934170B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Nov 2022 23:59:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A79934170B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T2RF9XRdcDPb for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Nov 2022 23:59:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D15EE416D4
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D15EE416D4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Nov 2022 23:59:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="309545693"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="309545693"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 16:59:50 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="667768118"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="667768118"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.7])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 16:59:49 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed,  2 Nov 2022 16:59:35 -0700
Message-Id: <20221102235935.1170170-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.38.0.83.gd420dda05763
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667433590; x=1698969590;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Rqj4kwpKqLXA46hXjpzh+BbROyx73GF6M3BnpJC7a0c=;
 b=hTi7Kf27WoDh0oZMqvXlgJUJ/+pt+x4pHfKvjcY2dg9eLh7s9EJWuxML
 lY/LJJq1ClME/nNFr1ZUGVMJ1loBAMQ7U6jKGJwozqXuyUmChcTzCqlfy
 CB12QW1U+VQsBsce7v0mMsb72/xmTQW9LmKCs7NsXeaYswCpKgMo1XuCV
 RjtRNjC3L9EdkmNanuNWrWEGR554Uvb/ruK2I72L0rNejUs/9FB4dz9+T
 Jft4jAG9V/sDW0rx3uSXJik7VxPxKOpmhjDHsWBzde++4JXXMR73jpahF
 CEwBpnUHPswe32KasIjgnAc8JQpYNcOoSybtKZOwW04gohs/ifIKQdsA0
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hTi7Kf27
Subject: [Intel-wired-lan] [PATCH net] ice: use int for n_per_out loop
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SW4gaWNlX3B0cF9lbmFibGVfYWxsX2Nsa291dCBhbmQgaWNlX3B0cF9kaXNhYmxlX2FsbF9jbGtv
dXQgd2UgdXNlIGEgdWludApmb3IgYSBmb3IgbG9vcCBpdGVyYXRpbmcgb3ZlciB0aGUgbl9wZXJf
b3V0IHZhbHVlIGZyb20gdGhlIHN0cnVjdApwdHBfY2xvY2tfaW5mby4gVGhlIHN0cnVjdCBtZW1i
ZXIgaXMgYSBzaWduZWQgaW50LCBhbmQgdGhlIHVzZSBvZiB1aW50CmdlbmVyYXRlcyBhIC1Xc2ln
bi1jb21wYXJlIHdhcm5pbmc6CgogIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vf
cHRwLmM6IEluIGZ1bmN0aW9uIOKAmGljZV9wdHBfZW5hYmxlX2FsbF9jbGtvdXTigJk6CiAgZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wdHAuYzoxNzEwOjIzOiBlcnJvcjogY29t
cGFyaXNvbiBvZiBpbnRlZ2VyIGV4cHJlc3Npb25zIG9mIGRpZmZlcmVudCBzaWduZWRuZXNzOiDi
gJh1aW504oCZIHtha2Eg4oCYdW5zaWduZWQgaW504oCZfSBhbmQg4oCYaW504oCZIFstV2Vycm9y
PXNpZ24tY29tcGFyZV0KICAgMTcxMCB8ICAgICAgICAgZm9yIChpID0gMDsgaSA8IHBmLT5wdHAu
aW5mby5uX3Blcl9vdXQ7IGkrKykKICAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICBeCiAg
Y2MxOiBhbGwgd2FybmluZ3MgYmVpbmcgdHJlYXRlZCBhcyBlcnJvcnMKCldoaWxlIHdlIGRvbid0
IGdlbmVyYWxseSBjb21waWxlIHdpdGggLVdzaWduLWNvbXBhcmUsIGl0cyBzdGlsbCBhIGdvb2Qg
aWRlYQpub3QgdG8gbWl4IHR5cGVzLiBGaXggdGhlIHR3byBmdW5jdGlvbnMgdG8gdXNlIGEgcGxh
aW4gc2lnbmVkIGludGVnZXIuCgpGaXhlczogOWVlMzEzNDMzYzQ4ICgiaWNlOiByZXN0YXJ0IHBl
cmlvZGljIG91dHB1dHMgYXJvdW5kIHRpbWUgY2hhbmdlcyIpClNpZ25lZC1vZmYtYnk6IEphY29i
IEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2ljZS9pY2VfcHRwLmMgfCA0ICsrLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2Vy
dGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWNlL2ljZV9wdHAuYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9p
Y2VfcHRwLmMKaW5kZXggMDExYjcyN2FiMTkwLi5iZTE0N2ZiNjQxYWUgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcHRwLmMKKysrIGIvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wdHAuYwpAQCAtMTY4OCw3ICsxNjg4LDcgQEAgc3RhdGlj
IGludCBpY2VfcHRwX2NmZ19jbGtvdXQoc3RydWN0IGljZV9wZiAqcGYsIHVuc2lnbmVkIGludCBj
aGFuLAogICovCiBzdGF0aWMgdm9pZCBpY2VfcHRwX2Rpc2FibGVfYWxsX2Nsa291dChzdHJ1Y3Qg
aWNlX3BmICpwZikKIHsKLQl1aW50IGk7CisJaW50IGk7CiAKIAlmb3IgKGkgPSAwOyBpIDwgcGYt
PnB0cC5pbmZvLm5fcGVyX291dDsgaSsrKQogCQlpZiAocGYtPnB0cC5wZXJvdXRfY2hhbm5lbHNb
aV0uZW5hKQpAQCAtMTcwNSw3ICsxNzA1LDcgQEAgc3RhdGljIHZvaWQgaWNlX3B0cF9kaXNhYmxl
X2FsbF9jbGtvdXQoc3RydWN0IGljZV9wZiAqcGYpCiAgKi8KIHN0YXRpYyB2b2lkIGljZV9wdHBf
ZW5hYmxlX2FsbF9jbGtvdXQoc3RydWN0IGljZV9wZiAqcGYpCiB7Ci0JdWludCBpOworCWludCBp
OwogCiAJZm9yIChpID0gMDsgaSA8IHBmLT5wdHAuaW5mby5uX3Blcl9vdXQ7IGkrKykKIAkJaWYg
KHBmLT5wdHAucGVyb3V0X2NoYW5uZWxzW2ldLmVuYSkKCmJhc2UtY29tbWl0OiBjNzBlODk4NTM2
NWJhODRkOGQ2NjhhMjdhNDVjMjFkMWZjMjZmODE4Ci0tIAoyLjM4LjAuODMuZ2Q0MjBkZGEwNTc2
MwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
d2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczov
L2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
