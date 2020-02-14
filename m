Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 571F115DFF3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Feb 2020 17:11:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0F52184407;
	Fri, 14 Feb 2020 16:11:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YWgqpYhOq4Ua; Fri, 14 Feb 2020 16:11:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5E3B1845D7;
	Fri, 14 Feb 2020 16:11:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 543AC1BF5EA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2020 16:11:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4F07F87662
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2020 16:11:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1vnHBCrGbSaP for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Feb 2020 16:11:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D558287647
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2020 16:11:28 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B67E9222C2;
 Fri, 14 Feb 2020 16:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581696688;
 bh=vCOwDC4HiMKfA9asIcQGpE8w0AH9BpB7uecmviq9Qsc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=mZE6dLUMmNUHYgS9l8DrV9xh/EocV/pq54xwKnbsE7NMykE6hd+TkcixLfYmrQUXq
 dBZEGylGTZuc+66NRw3zzywNjM63Y3WdbeFy5S3qcwoeqTlUCI0CPLEZ6zkGBybf3m
 M8IKqf16lrkg+DJu2FmLAyKM0bVweDdeM2yHTEHc=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Fri, 14 Feb 2020 11:01:45 -0500
Message-Id: <20200214160149.11681-455-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214160149.11681-1-sashal@kernel.org>
References: <20200214160149.11681-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
Subject: [Intel-wired-lan] [PATCH AUTOSEL 5.4 455/459] i40e: Relax
 i40e_xsk_wakeup's return value when PF is busy
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
Cc: Sasha Levin <sashal@kernel.org>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org,
 =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogTWFjaWVqIEZpamFsa293c2tpIDxtYWNpZWouZmlqYWxrb3dza2lAaW50ZWwuY29tPgoK
WyBVcHN0cmVhbSBjb21taXQgYzc3ZTlmMDkxNDM4MjI2MjNkZDcxYTBmZGM4NDMzMTEyOWU5N2Mz
YSBdCgpSZXR1cm4gLUVBR0FJTiBpbnN0ZWFkIG9mIC1FTkVURE9XTiB0byBwcm92aWRlIGEgc2xp
Z2h0bHkgbWlsZGVyCmluZm9ybWF0aW9uIHRvIHVzZXIgc3BhY2Ugc28gdGhhdCBhbiBhcHBsaWNh
dGlvbiB3aWxsIGtub3cgdG8gcmV0cnkgdGhlCnN5c2NhbGwgd2hlbiBfX0k0MEVfQ09ORklHX0JV
U1kgYml0IGlzIHNldCBvbiBwZi0+c3RhdGUuCgpGaXhlczogYjM4NzNhNWJlNzU3ICgibmV0L2k0
MGU6IEZpeCBjb25jdXJyZW5jeSBpc3N1ZXMgYmV0d2VlbiBjb25maWcgZmxvdyBhbmQgWFNLIikK
U2lnbmVkLW9mZi1ieTogTWFjaWVqIEZpamFsa293c2tpIDxtYWNpZWouZmlqYWxrb3dza2lAaW50
ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgQm9ya21hbm4gPGRhbmllbEBpb2dlYXJib3gu
bmV0PgpBY2tlZC1ieTogQmrDtnJuIFTDtnBlbCA8Ympvcm4udG9wZWxAaW50ZWwuY29tPgpMaW5r
OiBodHRwczovL2xvcmUua2VybmVsLm9yZy9icGYvMjAyMDAyMDUwNDU4MzQuNTY3OTUtMi1tYWNp
ZWouZmlqYWxrb3dza2lAaW50ZWwuY29tClNpZ25lZC1vZmYtYnk6IFNhc2hhIExldmluIDxzYXNo
YWxAa2VybmVsLm9yZz4KLS0tCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVf
eHNrLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24o
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfeHNr
LmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfeHNrLmMKaW5kZXggZjcz
Y2Q5MTdjNDRmNy4uMzE1NmRlNzg2ZDk1NSAxMDA2NDQKLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaTQwZS9pNDBlX3hzay5jCisrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2k0MGUvaTQwZV94c2suYwpAQCAtNzkxLDcgKzc5MSw3IEBAIGludCBpNDBlX3hza193YWtldXAo
c3RydWN0IG5ldF9kZXZpY2UgKmRldiwgdTMyIHF1ZXVlX2lkLCB1MzIgZmxhZ3MpCiAJc3RydWN0
IGk0MGVfcmluZyAqcmluZzsKIAogCWlmICh0ZXN0X2JpdChfX0k0MEVfQ09ORklHX0JVU1ksIHBm
LT5zdGF0ZSkpCi0JCXJldHVybiAtRU5FVERPV047CisJCXJldHVybiAtRUFHQUlOOwogCiAJaWYg
KHRlc3RfYml0KF9fSTQwRV9WU0lfRE9XTiwgdnNpLT5zdGF0ZSkpCiAJCXJldHVybiAtRU5FVERP
V047Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9z
bC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2ly
ZWQtbGFuCg==
