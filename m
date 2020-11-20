Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1756C2BA77E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Nov 2020 11:35:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C1452870FC;
	Fri, 20 Nov 2020 10:35:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id veRglhu9oPMY; Fri, 20 Nov 2020 10:35:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C81AD870E1;
	Fri, 20 Nov 2020 10:35:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 533211BF9AD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Nov 2020 10:35:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4B9D58757C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Nov 2020 10:35:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DqMTYsIccJVb for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Nov 2020 10:35:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 55C6F872CF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Nov 2020 10:35:54 +0000 (UTC)
IronPort-SDR: tS76/UgPJWSWbDYgJ3oUFzGpGlKckPKr/AQoOkpGhKS2za4lZ4JElDyMNaH2JwMnQS4ljc0aEH
 w6pCsuMCsH4Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9810"; a="189552405"
X-IronPort-AV: E=Sophos;i="5.78,356,1599548400"; d="scan'208";a="189552405"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2020 02:35:53 -0800
IronPort-SDR: PsN+5vkCh1WxoZ9mJv0KO0E5ppuM5bNNRAWah0ynBVhUWOji4M/8QOjtra3BaBvVbc8f3AWpFS
 JfATrYcw9WiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,356,1599548400"; d="scan'208";a="369168558"
Received: from amlin-018-150.igk.intel.com ([10.102.18.150])
 by orsmga007.jf.intel.com with ESMTP; 20 Nov 2020 02:35:52 -0800
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 20 Nov 2020 10:35:37 +0000
Message-Id: <20201120103537.31075-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v1] i40e: Add zero-initialization of
 AQ command structures
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
Cc: Mateusz Palczewski <mateusz.palczewski@intel.com>,
 =?UTF-8?q?Andrzej=20Sawu=C5=82a?= <andrzej.sawula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Clplcm8taW5pdGlhbGl6ZSBBUSBjb21tYW5kIGRhdGEgc3RydWN0dXJlcyB0byBjb21wbHkgd2l0
aApBUEkgc3BlY2lmaWNhdGlvbnMuCgpTaWduZWQtb2ZmLWJ5OiBBbmRyemVqIFNhd3XFgmEgPGFu
ZHJ6ZWouc2F3dWxhQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTWF0ZXVzeiBQYWxjemV3c2tp
IDxtYXRldXN6LnBhbGN6ZXdza2lAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogQXJrYWRpdXN6IEt1
YmFsZXdza2kgPGFya2FkaXVzei5rdWJhbGV3c2tpQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IEFs
ZWtzYW5kciBMb2t0aW9ub3YgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPgoKLS0tCiBk
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfbWFpbi5jIHwgNiArKysrKysKIDEg
ZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfbWFpbi5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaTQwZS9pNDBlX21haW4uYwppbmRleCBkNzQzYmQ3Li4wNTllMGMwIDEwMDY0NAotLS0gYS9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfbWFpbi5jCisrKyBiL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9tYWluLmMKQEAgLTgwNjIsNiArODA2Miw4IEBA
IGludCBpNDBlX2FkZF9kZWxfY2xvdWRfZmlsdGVyKHN0cnVjdCBpNDBlX3ZzaSAqdnNpLAogCWlm
IChmaWx0ZXItPmZsYWdzID49IEFSUkFZX1NJWkUoZmxhZ190YWJsZSkpCiAJCXJldHVybiBJNDBF
X0VSUl9DT05GSUc7CiAKKwltZW1zZXQoJmNsZF9maWx0ZXIsIDAsIHNpemVvZihjbGRfZmlsdGVy
KSk7CisKIAkvKiBjb3B5IGVsZW1lbnQgbmVlZGVkIHRvIGFkZCBjbG91ZCBmaWx0ZXIgZnJvbSBm
aWx0ZXIgKi8KIAlpNDBlX3NldF9jbGRfZWxlbWVudChmaWx0ZXIsICZjbGRfZmlsdGVyKTsKIApA
QCAtODEyOSw2ICs4MTMxLDggQEAgaW50IGk0MGVfYWRkX2RlbF9jbG91ZF9maWx0ZXJfYmlnX2J1
ZihzdHJ1Y3QgaTQwZV92c2kgKnZzaSwKIAkgICAgIWlwdjZfYWRkcl9hbnkoJmZpbHRlci0+aXAu
djYuc3JjX2lwNikpCiAJCXJldHVybiAtRU9QTk9UU1VQUDsKIAorCW1lbXNldCgmY2xkX2ZpbHRl
ciwgMCwgc2l6ZW9mKGNsZF9maWx0ZXIpKTsKKwogCS8qIGNvcHkgZWxlbWVudCBuZWVkZWQgdG8g
YWRkIGNsb3VkIGZpbHRlciBmcm9tIGZpbHRlciAqLwogCWk0MGVfc2V0X2NsZF9lbGVtZW50KGZp
bHRlciwgJmNsZF9maWx0ZXIuZWxlbWVudCk7CiAKQEAgLTEyMjA5LDYgKzEyMjEzLDggQEAgaTQw
ZV9zdGF0dXMgaTQwZV9zZXRfcGFydGl0aW9uX2J3X3NldHRpbmcoc3RydWN0IGk0MGVfcGYgKnBm
KQogCXN0cnVjdCBpNDBlX2FxY19jb25maWd1cmVfcGFydGl0aW9uX2J3X2RhdGEgYndfZGF0YTsK
IAlpNDBlX3N0YXR1cyBzdGF0dXM7CiAKKwltZW1zZXQoJmJ3X2RhdGEsIDAsIHNpemVvZihid19k
YXRhKSk7CisKIAkvKiBTZXQgdGhlIHZhbGlkIGJpdCBmb3IgdGhpcyBQRiAqLwogCWJ3X2RhdGEu
cGZfdmFsaWRfYml0cyA9IGNwdV90b19sZTE2KEJJVChwZi0+aHcucGZfaWQpKTsKIAlid19kYXRh
Lm1heF9id1twZi0+aHcucGZfaWRdID0gcGYtPm1heF9idyAmIEk0MEVfQUxUX0JXX1ZBTFVFX01B
U0s7Ci0tIAoyLjE3LjEKCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpJbnRlbCBUZWNobm9sb2d5IFBvbGFuZCBzcC4g
eiBvLm8uCnVsLiBTb3dhY2tpZWdvIDE3MyB8IDgwLTI5OCBHZGFzayB8IFNkIFJlam9ub3d5IEdk
YXNrIFBub2MgfCBWSUkgV3lkemlhIEdvc3BvZGFyY3p5IEtyYWpvd2VnbyBSZWplc3RydSBTZG93
ZWdvIC0gS1JTIDEwMTg4MiB8IE5JUCA5NTctMDctNTItMzE2IHwgS2FwaXRhIHpha2Fkb3d5IDIw
MC4wMDAgUExOLgpUYSB3aWFkb21vIHdyYXogeiB6YWN6bmlrYW1pIGplc3QgcHJ6ZXpuYWN6b25h
IGRsYSBva3JlbG9uZWdvIGFkcmVzYXRhIGkgbW9lIHphd2llcmEgaW5mb3JtYWNqZSBwb3VmbmUu
IFcgcmF6aWUgcHJ6eXBhZGtvd2VnbyBvdHJ6eW1hbmlhIHRlaiB3aWFkb21vY2ksIHByb3NpbXkg
byBwb3dpYWRvbWllbmllIG5hZGF3Y3kgb3JheiB0cndhZSBqZWogdXN1bmljaWU7IGpha2lla29s
d2llayBwcnplZ2xkYW5pZSBsdWIgcm96cG93c3plY2huaWFuaWUgamVzdCB6YWJyb25pb25lLgpU
aGlzIGUtbWFpbCBhbmQgYW55IGF0dGFjaG1lbnRzIG1heSBjb250YWluIGNvbmZpZGVudGlhbCBt
YXRlcmlhbCBmb3IgdGhlIHNvbGUgdXNlIG9mIHRoZSBpbnRlbmRlZCByZWNpcGllbnQocykuIElm
IHlvdSBhcmUgbm90IHRoZSBpbnRlbmRlZCByZWNpcGllbnQsIHBsZWFzZSBjb250YWN0IHRoZSBz
ZW5kZXIgYW5kIGRlbGV0ZSBhbGwgY29waWVzOyBhbnkgcmV2aWV3IG9yIGRpc3RyaWJ1dGlvbiBi
eSBvdGhlcnMgaXMgc3RyaWN0bHkgcHJvaGliaXRlZC4KIApfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0Cklu
dGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
