Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E295A722A10
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jun 2023 16:58:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7964D8220C;
	Mon,  5 Jun 2023 14:58:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7964D8220C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685977096;
	bh=t80bOYyTNF1qBeo1Zl/bRBa2vgf2+2JsU9CYrFJeZ64=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ejH7CO8+d3L8TSbOAoVRl2kHc/zV5v/I2mvMTxS00dv2b3yANdBuJXpxjgtGHeCZf
	 KaoRPLo/RTRFmgVDGJ+K0u/Je20Fa7Wum94oVkecedtLaN16IYqeBzxSyYlgREfZ9i
	 4AqFuAIc1z/b6kCT8OZxvm5zXR+BIMdkLX3QBZFgJIaSAIjaE+HKS5v8eGI59ZNxkH
	 Jioa+u4cdewJHIi5JKE7esex/iidm1uqcALG8/uctKugr9a7FKd5nEinlJERJedwRt
	 Cl7wVZTNpNNnKYBoNm4myROZ6T/KQlH6DabSZI3ZJyVq8L5f+jRmPyZglJbnfSuxlw
	 69FRJvOOgUGVQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZJB_5tujNb4W; Mon,  5 Jun 2023 14:58:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 006E682010;
	Mon,  5 Jun 2023 14:58:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 006E682010
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 102361BF21A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 14:58:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DB23B415C8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 14:57:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DB23B415C8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3QKj8v_ILWlp for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jun 2023 14:57:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6F10E415C0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6F10E415C0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 14:57:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="358836952"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="358836952"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 07:57:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="778589881"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="778589881"
Received: from amlin-018-068.igk.intel.com ([10.102.18.68])
 by fmsmga004.fm.intel.com with ESMTP; 05 Jun 2023 07:57:56 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  5 Jun 2023 10:52:26 -0400
Message-Id: <20230605145226.1222225-6-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20230605145226.1222225-1-mateusz.palczewski@intel.com>
References: <20230605145226.1222225-1-mateusz.palczewski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685977078; x=1717513078;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RkymRmLpvCaouShOLVxX8q/IpD8MsBdkAcYkXWvfEoI=;
 b=XCKSl4C6k/9Q15EMRm3HWRxp/TjNkw3W+yM4KpmnvuuwjtlSyW9RXblf
 13hITbOca9EShfk0LcMk7dBv9m5f8Q0YeTiqBc9UvC2MhIDSujZwoVxyw
 LZzsLbyA2+Y+BYIUmtA/EFjbVWL4LAXA/+KBSl0mydRLd+w/ZCn2kd4vL
 XPFJ7ltyMDSzz8wc446BLI5ACRFtyEqIRcRe1NTdwc34co6nimNrrTg5P
 4ns1pylezgblEF3NO1POgypdG5PiXKm3DL1igHNsOWTtGQEWlEF6WLKks
 mGOD2+OWNb5QtaAdcgeLDYP53xI8KsWa74NwYHcprwndxURvrvPruezQ+
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XCKSl4C6
Subject: [Intel-wired-lan] [PATCH iwl-net v10 5/5] iavf: fix reset task race
 with iavf_remove()
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
Cc: ivecera@redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogQWhtZWQgWmFraSA8YWhtZWQuemFraUBpbnRlbC5jb20+CgpUaGUgcmVzZXQgdGFzayBp
cyBjdXJyZW50bHkgc2NoZWR1bGVkIGZyb20gdGhlIHdhdGNoZG9nIG9yIGFkbWlucSB0YXNrcy4K
Rmlyc3QsIGFsbCBkaXJlY3QgY2FsbHMgdG8gc2NoZWR1bGUgdGhlIHJlc2V0IHRhc2sgYXJlIHJl
cGxhY2VkIHdpdGggdGhlCmlhdmZfc2NoZWR1bGVfcmVzZXQoKSwgd2hpY2ggaXMgbW9kaWZpZWQg
dG8gYWNjZXB0IHRoZSBmbGFnIHNob3dpbmcgdGhlCnR5cGUgb2YgcmVzZXQuCgpUbyBwcmV2ZW50
IHRoZSByZXNldCB0YXNrIGZyb20gc3RhcnRpbmcgb25jZSBpYXZmX3JlbW92ZSgpIHN0YXJ0cywg
d2UgbmVlZAp0byBjaGVjayB0aGUgX19JQVZGX0lOX1JFTU9WRV9UQVNLIGJpdCBiZWZvcmUgd2Ug
c2NoZWR1bGUgaXQuIFRoaXMgaXMgbm93CmVhc2lseSBhZGRlZCB0byBpYXZmX3NjaGVkdWxlX3Jl
c2V0KCkuCgpGaW5hbGx5LCByZW1vdmUgdGhlIGNoZWNrIGZvciBJQVZGX0ZMQUdfUkVTRVRfTkVF
REVEIGluIHRoZSB3YXRjaGRvZyB0YXNrLgpJdCBpcyByZWR1bmRhbnQgc2luY2UgYWxsIGNhbGxl
cnMgd2hvIHNldCB0aGUgZmxhZyBpbW1lZGlhdGVseSBzY2hlZHVsZXMKdGhlIHJlc2V0IHRhc2su
CgpGaXhlczogM2NjZDU0ZWY0NGViICgiaWF2ZjogRml4IGluaXQgc3RhdGUgY2xvc3VyZSBvbiBy
ZW1vdmUiKQpGaXhlczogMTQ3NTZiMmFlMjY1ICgiaWF2ZjogRml4IF9fSUFWRl9SRVNFVFRJTkcg
c3RhdGUgdXNhZ2UiKQpTaWduZWQtb2ZmLWJ5OiBBaG1lZCBaYWtpIDxhaG1lZC56YWtpQGludGVs
LmNvbT4KU2luZ2VkLW9mZi1ieTogTWF0ZXVzeiBQYWxjemV3c2tpIDxtYXRldXN6LnBhbGN6ZXdz
a2lAaW50ZWwuY29tPgotLS0KIHYxMDogQWRkZWQgcGF0Y2gg4oCYaWF2ZjogZml4IHJlc2V0IHRh
c2sgcmFjZSB3aXRoIGlhdmZfcmVtb3ZlKCnigJkKIC0tLQogZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWF2Zi9pYXZmLmggICAgICAgIHwgIDIgKy0KIC4uLi9uZXQvZXRoZXJuZXQvaW50ZWwv
aWF2Zi9pYXZmX2V0aHRvb2wuYyAgICB8ICA4ICsrLS0tCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pYXZmL2lhdmZfbWFpbi5jICAgfCAzMiArKysrKysrLS0tLS0tLS0tLS0tCiAuLi4vbmV0
L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl92aXJ0Y2hubC5jICAgfCAgMyArLQogNCBmaWxlcyBj
aGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspLCAyOSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmYuaCBiL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2lhdmYvaWF2Zi5oCmluZGV4IGQ4Zjk4MzNjZDI4OC4uYzY2YzFhNjliZjY3IDEw
MDY0NAotLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmYuaAorKysgYi9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmYuaApAQCAtNTIwLDcgKzUyMCw3IEBA
IGludCBpYXZmX3VwKHN0cnVjdCBpYXZmX2FkYXB0ZXIgKmFkYXB0ZXIpOwogdm9pZCBpYXZmX2Rv
d24oc3RydWN0IGlhdmZfYWRhcHRlciAqYWRhcHRlcik7CiBpbnQgaWF2Zl9wcm9jZXNzX2NvbmZp
ZyhzdHJ1Y3QgaWF2Zl9hZGFwdGVyICphZGFwdGVyKTsKIGludCBpYXZmX3BhcnNlX3ZmX3Jlc291
cmNlX21zZyhzdHJ1Y3QgaWF2Zl9hZGFwdGVyICphZGFwdGVyKTsKLXZvaWQgaWF2Zl9zY2hlZHVs
ZV9yZXNldChzdHJ1Y3QgaWF2Zl9hZGFwdGVyICphZGFwdGVyKTsKK3ZvaWQgaWF2Zl9zY2hlZHVs
ZV9yZXNldChzdHJ1Y3QgaWF2Zl9hZGFwdGVyICphZGFwdGVyLCB1NjQgZmxhZ3MpOwogdm9pZCBp
YXZmX3NjaGVkdWxlX3JlcXVlc3Rfc3RhdHMoc3RydWN0IGlhdmZfYWRhcHRlciAqYWRhcHRlcik7
CiB2b2lkIGlhdmZfc2NoZWR1bGVfZmluaXNoX2NvbmZpZyhzdHJ1Y3QgaWF2Zl9hZGFwdGVyICph
ZGFwdGVyKTsKIHZvaWQgaWF2Zl9yZXNldChzdHJ1Y3QgaWF2Zl9hZGFwdGVyICphZGFwdGVyKTsK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl9ldGh0b29s
LmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfZXRodG9vbC5jCmluZGV4
IGI3MTQxYzJhOTQxZC4uMmY0N2NmYTdmMDZlIDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pYXZmL2lhdmZfZXRodG9vbC5jCisrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2lhdmYvaWF2Zl9ldGh0b29sLmMKQEAgLTUzMiw4ICs1MzIsNyBAQCBzdGF0aWMgaW50
IGlhdmZfc2V0X3ByaXZfZmxhZ3Moc3RydWN0IG5ldF9kZXZpY2UgKm5ldGRldiwgdTMyIGZsYWdz
KQogCS8qIGlzc3VlIGEgcmVzZXQgdG8gZm9yY2UgbGVnYWN5LXJ4IGNoYW5nZSB0byB0YWtlIGVm
ZmVjdCAqLwogCWlmIChjaGFuZ2VkX2ZsYWdzICYgSUFWRl9GTEFHX0xFR0FDWV9SWCkgewogCQlp
ZiAobmV0aWZfcnVubmluZyhuZXRkZXYpKSB7Ci0JCQlhZGFwdGVyLT5mbGFncyB8PSBJQVZGX0ZM
QUdfUkVTRVRfTkVFREVEOwotCQkJcXVldWVfd29yayhhZGFwdGVyLT53cSwgJmFkYXB0ZXItPnJl
c2V0X3Rhc2spOworCQkJaWF2Zl9zY2hlZHVsZV9yZXNldChhZGFwdGVyLCBJQVZGX0ZMQUdfUkVT
RVRfTkVFREVEKTsKIAkJCXJldCA9IGlhdmZfd2FpdF9mb3JfcmVzZXQoYWRhcHRlcik7CiAJCQlp
ZiAocmV0KQogCQkJCW5ldGRldl93YXJuKG5ldGRldiwgIkNoYW5naW5nIHByaXZhdGUgZmxhZ3Mg
dGltZW91dCBvciBpbnRlcnJ1cHRlZCB3YWl0aW5nIGZvciByZXNldCIpOwpAQCAtNjc2LDggKzY3
NSw3IEBAIHN0YXRpYyBpbnQgaWF2Zl9zZXRfcmluZ3BhcmFtKHN0cnVjdCBuZXRfZGV2aWNlICpu
ZXRkZXYsCiAJfQogCiAJaWYgKG5ldGlmX3J1bm5pbmcobmV0ZGV2KSkgewotCQlhZGFwdGVyLT5m
bGFncyB8PSBJQVZGX0ZMQUdfUkVTRVRfTkVFREVEOwotCQlxdWV1ZV93b3JrKGFkYXB0ZXItPndx
LCAmYWRhcHRlci0+cmVzZXRfdGFzayk7CisJCWlhdmZfc2NoZWR1bGVfcmVzZXQoYWRhcHRlciwg
SUFWRl9GTEFHX1JFU0VUX05FRURFRCk7CiAJCXJldCA9IGlhdmZfd2FpdF9mb3JfcmVzZXQoYWRh
cHRlcik7CiAJCWlmIChyZXQpCiAJCQluZXRkZXZfd2FybihuZXRkZXYsICJDaGFuZ2luZyByaW5n
IHBhcmFtZXRlcnMgdGltZW91dCBvciBpbnRlcnJ1cHRlZCB3YWl0aW5nIGZvciByZXNldCIpOwpA
QCAtMTg2MCw3ICsxODU4LDcgQEAgc3RhdGljIGludCBpYXZmX3NldF9jaGFubmVscyhzdHJ1Y3Qg
bmV0X2RldmljZSAqbmV0ZGV2LAogCiAJYWRhcHRlci0+bnVtX3JlcV9xdWV1ZXMgPSBudW1fcmVx
OwogCWFkYXB0ZXItPmZsYWdzIHw9IElBVkZfRkxBR19SRUlOSVRfSVRSX05FRURFRDsKLQlpYXZm
X3NjaGVkdWxlX3Jlc2V0KGFkYXB0ZXIpOworCWlhdmZfc2NoZWR1bGVfcmVzZXQoYWRhcHRlciwg
SUFWRl9GTEFHX1JFU0VUX05FRURFRCk7CiAKIAlyZXQgPSBpYXZmX3dhaXRfZm9yX3Jlc2V0KGFk
YXB0ZXIpOwogCWlmIChyZXQpCmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pYXZmL2lhdmZfbWFpbi5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZm
X21haW4uYwppbmRleCA1Y2FiMDkzOGFhODcuLjAwYWYyODFkMmY0YiAxMDA2NDQKLS0tIGEvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX21haW4uYworKysgYi9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfbWFpbi5jCkBAIC0zMDksMTIgKzMwOSwxNCBAQCBp
bnQgaWF2Zl9sb2NrX3RpbWVvdXQoc3RydWN0IG11dGV4ICpsb2NrLCB1bnNpZ25lZCBpbnQgbXNl
Y3MpCiAvKioKICAqIGlhdmZfc2NoZWR1bGVfcmVzZXQgLSBTZXQgdGhlIGZsYWdzIGFuZCBzY2hl
ZHVsZSBhIHJlc2V0IGV2ZW50CiAgKiBAYWRhcHRlcjogYm9hcmQgcHJpdmF0ZSBzdHJ1Y3R1cmUK
KyAqIEBmbGFnczogSUFWRl9GTEFHX1JFU0VUX1BFTkRJTkcgb3IgSUFWRl9GTEFHX1JFU0VUX05F
RURFRAogICoqLwotdm9pZCBpYXZmX3NjaGVkdWxlX3Jlc2V0KHN0cnVjdCBpYXZmX2FkYXB0ZXIg
KmFkYXB0ZXIpCit2b2lkIGlhdmZfc2NoZWR1bGVfcmVzZXQoc3RydWN0IGlhdmZfYWRhcHRlciAq
YWRhcHRlciwgdTY0IGZsYWdzKQogewotCWlmICghKGFkYXB0ZXItPmZsYWdzICYKLQkgICAgICAo
SUFWRl9GTEFHX1JFU0VUX1BFTkRJTkcgfCBJQVZGX0ZMQUdfUkVTRVRfTkVFREVEKSkpIHsKLQkJ
YWRhcHRlci0+ZmxhZ3MgfD0gSUFWRl9GTEFHX1JFU0VUX05FRURFRDsKKwlpZiAoIXRlc3RfYml0
KF9fSUFWRl9JTl9SRU1PVkVfVEFTSywgJmFkYXB0ZXItPmNyaXRfc2VjdGlvbikgJiYKKwkgICAg
IShhZGFwdGVyLT5mbGFncyAmCisJICAgIChJQVZGX0ZMQUdfUkVTRVRfUEVORElORyB8IElBVkZf
RkxBR19SRVNFVF9ORUVERUQpKSkgeworCQlhZGFwdGVyLT5mbGFncyB8PSBmbGFnczsKIAkJcXVl
dWVfd29yayhhZGFwdGVyLT53cSwgJmFkYXB0ZXItPnJlc2V0X3Rhc2spOwogCX0KIH0KQEAgLTM0
Miw3ICszNDQsNyBAQCBzdGF0aWMgdm9pZCBpYXZmX3R4X3RpbWVvdXQoc3RydWN0IG5ldF9kZXZp
Y2UgKm5ldGRldiwgdW5zaWduZWQgaW50IHR4cXVldWUpCiAJc3RydWN0IGlhdmZfYWRhcHRlciAq
YWRhcHRlciA9IG5ldGRldl9wcml2KG5ldGRldik7CiAKIAlhZGFwdGVyLT50eF90aW1lb3V0X2Nv
dW50Kys7Ci0JaWF2Zl9zY2hlZHVsZV9yZXNldChhZGFwdGVyKTsKKwlpYXZmX3NjaGVkdWxlX3Jl
c2V0KGFkYXB0ZXIsIElBVkZfRkxBR19SRVNFVF9ORUVERUQpOwogfQogCiAvKioKQEAgLTI0OTIs
NyArMjQ5NCw3IEBAIGludCBpYXZmX3BhcnNlX3ZmX3Jlc291cmNlX21zZyhzdHJ1Y3QgaWF2Zl9h
ZGFwdGVyICphZGFwdGVyKQogCQkJYWRhcHRlci0+dnNpX3Jlcy0+bnVtX3F1ZXVlX3BhaXJzKTsK
IAkJYWRhcHRlci0+ZmxhZ3MgfD0gSUFWRl9GTEFHX1JFSU5JVF9NU0lYX05FRURFRDsKIAkJYWRh
cHRlci0+bnVtX3JlcV9xdWV1ZXMgPSBhZGFwdGVyLT52c2lfcmVzLT5udW1fcXVldWVfcGFpcnM7
Ci0JCWlhdmZfc2NoZWR1bGVfcmVzZXQoYWRhcHRlcik7CisJCWlhdmZfc2NoZWR1bGVfcmVzZXQo
YWRhcHRlciwgSUFWRl9GTEFHX1JFU0VUX05FRURFRCk7CiAKIAkJcmV0dXJuIC1FQUdBSU47CiAJ
fQpAQCAtMjc4OSwxNCArMjc5MSw2IEBAIHN0YXRpYyB2b2lkIGlhdmZfd2F0Y2hkb2dfdGFzayhz
dHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspCiAJaWYgKGFkYXB0ZXItPmZsYWdzICYgSUFWRl9GTEFH
X1BGX0NPTU1TX0ZBSUxFRCkKIAkJaWF2Zl9jaGFuZ2Vfc3RhdGUoYWRhcHRlciwgX19JQVZGX0NP
TU1fRkFJTEVEKTsKIAotCWlmIChhZGFwdGVyLT5mbGFncyAmIElBVkZfRkxBR19SRVNFVF9ORUVE
RUQpIHsKLQkJYWRhcHRlci0+YXFfcmVxdWlyZWQgPSAwOwotCQlhZGFwdGVyLT5jdXJyZW50X29w
ID0gVklSVENITkxfT1BfVU5LTk9XTjsKLQkJbXV0ZXhfdW5sb2NrKCZhZGFwdGVyLT5jcml0X2xv
Y2spOwotCQlxdWV1ZV93b3JrKGFkYXB0ZXItPndxLCAmYWRhcHRlci0+cmVzZXRfdGFzayk7Ci0J
CXJldHVybjsKLQl9Ci0KIAlzd2l0Y2ggKGFkYXB0ZXItPnN0YXRlKSB7CiAJY2FzZSBfX0lBVkZf
U1RBUlRVUDoKIAkJaWF2Zl9zdGFydHVwKGFkYXB0ZXIpOwpAQCAtMjkyNCwxMSArMjkxOCwxMCBA
QCBzdGF0aWMgdm9pZCBpYXZmX3dhdGNoZG9nX3Rhc2soc3RydWN0IHdvcmtfc3RydWN0ICp3b3Jr
KQogCS8qIGNoZWNrIGZvciBodyByZXNldCAqLwogCXJlZ192YWwgPSByZDMyKGh3LCBJQVZGX1ZG
X0FSUUxFTjEpICYgSUFWRl9WRl9BUlFMRU4xX0FSUUVOQUJMRV9NQVNLOwogCWlmICghcmVnX3Zh
bCkgewotCQlhZGFwdGVyLT5mbGFncyB8PSBJQVZGX0ZMQUdfUkVTRVRfUEVORElORzsKIAkJYWRh
cHRlci0+YXFfcmVxdWlyZWQgPSAwOwogCQlhZGFwdGVyLT5jdXJyZW50X29wID0gVklSVENITkxf
T1BfVU5LTk9XTjsKIAkJZGV2X2VycigmYWRhcHRlci0+cGRldi0+ZGV2LCAiSGFyZHdhcmUgcmVz
ZXQgZGV0ZWN0ZWRcbiIpOwotCQlxdWV1ZV93b3JrKGFkYXB0ZXItPndxLCAmYWRhcHRlci0+cmVz
ZXRfdGFzayk7CisJCWlhdmZfc2NoZWR1bGVfcmVzZXQoYWRhcHRlciwgSUFWRl9GTEFHX1JFU0VU
X1BFTkRJTkcpOwogCQltdXRleF91bmxvY2soJmFkYXB0ZXItPmNyaXRfbG9jayk7CiAJCXF1ZXVl
X2RlbGF5ZWRfd29yayhhZGFwdGVyLT53cSwKIAkJCQkgICAmYWRhcHRlci0+d2F0Y2hkb2dfdGFz
aywgSFogKiAyKTsKQEAgLTMzMDMsOSArMzI5Niw3IEBAIHN0YXRpYyB2b2lkIGlhdmZfYWRtaW5x
X3Rhc2soc3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKQogCX0gd2hpbGUgKHBlbmRpbmcpOwogCW11
dGV4X3VubG9jaygmYWRhcHRlci0+Y3JpdF9sb2NrKTsKIAotCWlmICgoYWRhcHRlci0+ZmxhZ3Mg
JgotCSAgICAgKElBVkZfRkxBR19SRVNFVF9QRU5ESU5HIHwgSUFWRl9GTEFHX1JFU0VUX05FRURF
RCkpIHx8Ci0JICAgIGFkYXB0ZXItPnN0YXRlID09IF9fSUFWRl9SRVNFVFRJTkcpCisJaWYgKGlh
dmZfaXNfcmVzZXRfaW5fcHJvZ3Jlc3MoYWRhcHRlcikpCiAJCWdvdG8gZnJlZWRvbTsKIAogCS8q
IGNoZWNrIGZvciBlcnJvciBpbmRpY2F0aW9ucyAqLwpAQCAtNDQwMiw4ICs0MzkzLDcgQEAgc3Rh
dGljIGludCBpYXZmX2NoYW5nZV9tdHUoc3RydWN0IG5ldF9kZXZpY2UgKm5ldGRldiwgaW50IG5l
d19tdHUpCiAJfQogCiAJaWYgKG5ldGlmX3J1bm5pbmcobmV0ZGV2KSkgewotCQlhZGFwdGVyLT5m
bGFncyB8PSBJQVZGX0ZMQUdfUkVTRVRfTkVFREVEOwotCQlxdWV1ZV93b3JrKGFkYXB0ZXItPndx
LCAmYWRhcHRlci0+cmVzZXRfdGFzayk7CisJCWlhdmZfc2NoZWR1bGVfcmVzZXQoYWRhcHRlciwg
SUFWRl9GTEFHX1JFU0VUX05FRURFRCk7CiAJCXJldCA9IGlhdmZfd2FpdF9mb3JfcmVzZXQoYWRh
cHRlcik7CiAJCWlmIChyZXQgPCAwKQogCQkJbmV0ZGV2X3dhcm4obmV0ZGV2LCAiTVRVIGNoYW5n
ZSBpbnRlcnJ1cHRlZCB3YWl0aW5nIGZvciByZXNldCIpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX3ZpcnRjaG5sLmMgYi9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pYXZmL2lhdmZfdmlydGNobmwuYwppbmRleCAwNzNhYzI5ZWQ4NGMuLmJlM2Mw
MDdjZTkwYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZm
X3ZpcnRjaG5sLmMKKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX3Zp
cnRjaG5sLmMKQEAgLTE5NjEsOSArMTk2MSw4IEBAIHZvaWQgaWF2Zl92aXJ0Y2hubF9jb21wbGV0
aW9uKHN0cnVjdCBpYXZmX2FkYXB0ZXIgKmFkYXB0ZXIsCiAJCWNhc2UgVklSVENITkxfRVZFTlRf
UkVTRVRfSU1QRU5ESU5HOgogCQkJZGV2X2luZm8oJmFkYXB0ZXItPnBkZXYtPmRldiwgIlJlc2V0
IGluZGljYXRpb24gcmVjZWl2ZWQgZnJvbSB0aGUgUEZcbiIpOwogCQkJaWYgKCEoYWRhcHRlci0+
ZmxhZ3MgJiBJQVZGX0ZMQUdfUkVTRVRfUEVORElORykpIHsKLQkJCQlhZGFwdGVyLT5mbGFncyB8
PSBJQVZGX0ZMQUdfUkVTRVRfUEVORElORzsKIAkJCQlkZXZfaW5mbygmYWRhcHRlci0+cGRldi0+
ZGV2LCAiU2NoZWR1bGluZyByZXNldCB0YXNrXG4iKTsKLQkJCQlxdWV1ZV93b3JrKGFkYXB0ZXIt
PndxLCAmYWRhcHRlci0+cmVzZXRfdGFzayk7CisJCQkJaWF2Zl9zY2hlZHVsZV9yZXNldChhZGFw
dGVyLCBJQVZGX0ZMQUdfUkVTRVRfUEVORElORyk7CiAJCQl9CiAJCQlicmVhazsKIAkJZGVmYXVs
dDoKLS0gCjIuMzEuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3Ns
Lm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJl
ZC1sYW4K
