Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 490E480B565
	for <lists+intel-wired-lan@lfdr.de>; Sat,  9 Dec 2023 18:08:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C2AEC81F38;
	Sat,  9 Dec 2023 17:08:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C2AEC81F38
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702141683;
	bh=8of7N9j55OMSfZZ62wHkeoNY9bIladp7zv8GIgtEhcc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=aK7HSPKHYYqIiYP/k6Kv5i5QNsvlIL3xDZn6f7G8e4Lj5q0UtiqhekrT6xwQX0yfS
	 FlcucFFm+8czB0B83Nk9XEih39q6RTgaILd+iOiLVWKR1rom/BxhTiAAI5YYhiGuPq
	 l5xm6H4Lkg/hxZbmRADUXHtA/8Rr55yours5K7iJQ28lNHawaN2dAolGjxnt53eJla
	 MOWB9SB11km10euzTLf6m5p1ZjoL/GLcMYCuWdtlsMYRvrMXnTKNWQfJTAudXSY25m
	 rxTL5p/fD1C9WkQJLeGdFZxfyjvTDDoEcGY+/LBvCEQsbjiiXK6p/elkXaq8D8Lp31
	 iqnFblQuzVEIg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TIoJoei6MQlU; Sat,  9 Dec 2023 17:08:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9264B81DEE;
	Sat,  9 Dec 2023 17:08:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9264B81DEE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BF1601BF20D
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Dec 2023 17:07:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8C8C381DEE
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Dec 2023 17:07:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8C8C381DEE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hNaVyQqaCMF4 for <intel-wired-lan@lists.osuosl.org>;
 Sat,  9 Dec 2023 17:07:56 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AFD79814B1
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Dec 2023 17:07:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AFD79814B1
X-IronPort-AV: E=McAfee;i="6600,9927,10919"; a="458833652"
X-IronPort-AV: E=Sophos;i="6.04,264,1695711600"; d="scan'208";a="458833652"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2023 09:07:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,264,1695711600"; d="scan'208";a="20455610"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.160.232])
 by orviesa001.jf.intel.com with ESMTP; 09 Dec 2023 09:07:54 -0800
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Sat,  9 Dec 2023 19:07:53 +0200
Message-Id: <20231209170753.168989-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702141676; x=1733677676;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CSTjm2L8ZvHcFsg/Ofaa0H6lBSvPaETcgpslOwcFg1o=;
 b=VYB85t8kZbI2b/Gj/+bIYPyOmPNg7ZNriSkUzED52uCxSXg20DBYFNfD
 hBleCjpO2jp1OgHV03+1reB6gaPRSFG/mMkGhJnnwdISNCgDtvqqvjXlX
 Lia7u9NT8gTHOTY3mEpSWTReFPui5S7JbkmZmFHzq3EeAR8j7/PWXlJsg
 ODpUFfeMbGcULh5nARKwXNy6H5iajf+Z9kP/mHphKDwAYvviPUrF9r0iU
 Q0fvLuL0I6r0iyOr5egfLZOrUMZQEp3QR0NiMqFKzpbkO0zheUofEilDg
 yIBA3e32Pm74wGb76scdxYRBgLDrVgp3P8vVucA2X9eC18HQFGUvLmrPN
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VYB85t8k
Subject: [Intel-wired-lan] [PATCH iwl-net v1 1/1] e1000e: Correct the
 maximum frequency adjustment
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
Cc: Sasha Neftin <sasha.neftin@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

VGhlIGxhdGVzdCBJbnRlbCBwbGF0Zm9ybSB1c2VkIHR3byBjbG9ja3MgZm9yIDE1ODggdGltZSBz
eW5jaHJvbml6YXRpb24KZGVwZW5kZW50IG9uIHRoZSBIVyBzdHJhcDogMjQgTUh6IGFuZCAzOC40
IE1Iei4gVGhlIG1heGltdW0gcG9zc2libGUKZnJlcXVlbmN5IGFkanVzdG1lbnQsIGluIHBhcnRz
IHBlciBiaWxsaW9uLCBjYWxjdWxhdGVkIGFzIGZvbGxvd3M6Cm1heCBwcGIgPSAoKE1BWF9JTkNW
QUwg4oCTIEJBU0VfSU5DVkFMKSoxYmlsbGlvbikgLyBCQVNFX0lOQ1ZBTC4KV2hlcmUgTUFYX0lO
Q1ZBTCBpcyBUSU1JTkNBIHJlc29sdXRpb24gKDJeMjQgLTEpIGFuZCBCQVNFX0lOQ1ZBTCBpcwpk
ZXBlbmRzIG9uIHRoZSBjbG9jay4KRm9yIDI0IE1IeiB0aGUgbWF4IHBwYiB2YWx1ZSBzaG91bGQg
YmUgNjAwLDAwMCwwMDAgYW5kIGZvciB0aGUgMzguNE1Iegp0aGUgbWF4IHBwYiB2YWx1ZSBpcyAy
MzAsMDAwLDAwMC4KClJlcG9ydGVkLWJ5OiBUcmV5IEhhcnJpc29uIDxoYXJyaXNvbmRpZ2l0YWxt
ZWRpYUBnbWFpbC5jb20+CkZpeGVzOiBkODk3NzdiZjBlNDIgKCJlMTAwMGU6IGFkZCBzdXBwb3J0
IGZvciBJRUVFLTE1ODggUFRQIikKUmV2aWV3ZWQtYnk6IEphY29iIEtlbGxlciA8amFjb2IuZS5r
ZWxsZXJAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBTYXNoYSBOZWZ0aW4gPHNhc2hhLm5lZnRp
bkBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL3B0cC5j
IHwgMTcgKysrKysrKysrKysrLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCsp
LCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2UxMDAwZS9wdHAuYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9wdHAuYwpp
bmRleCAwMmQ4NzFiYzExMmEuLjc5MmRmZTYwMmNhMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvZTEwMDBlL3B0cC5jCisrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2UxMDAwZS9wdHAuYwpAQCAtMjgzLDE3ICsyODMsMjQgQEAgdm9pZCBlMTAwMGVfcHRwX2lu
aXQoc3RydWN0IGUxMDAwX2FkYXB0ZXIgKmFkYXB0ZXIpCiAJY2FzZSBlMTAwMF9wY2hfbHB0Ogog
CWNhc2UgZTEwMDBfcGNoX3NwdDoKIAljYXNlIGUxMDAwX3BjaF9jbnA6CisJCWlmIChody0+bWFj
LnR5cGUgPCBlMTAwMF9wY2hfbHB0IHx8CisJCSAgICAoZXIzMihUU1lOQ1JYQ1RMKSAmIEUxMDAw
X1RTWU5DUlhDVExfU1lTQ0ZJKSkgeworCQkJYWRhcHRlci0+cHRwX2Nsb2NrX2luZm8ubWF4X2Fk
aiA9IDI0MDAwMDAwIC0gMTsKKwkJCWJyZWFrOworCQl9CisJCWZhbGx0aHJvdWdoOwogCWNhc2Ug
ZTEwMDBfcGNoX3RncDoKIAljYXNlIGUxMDAwX3BjaF9hZHA6CiAJY2FzZSBlMTAwMF9wY2hfbXRw
OgogCWNhc2UgZTEwMDBfcGNoX2xucDoKIAljYXNlIGUxMDAwX3BjaF9wdHA6CiAJY2FzZSBlMTAw
MF9wY2hfbnZwOgotCQlpZiAoKGh3LT5tYWMudHlwZSA8IGUxMDAwX3BjaF9scHQpIHx8Ci0JCSAg
ICAoZXIzMihUU1lOQ1JYQ1RMKSAmIEUxMDAwX1RTWU5DUlhDVExfU1lTQ0ZJKSkgewotCQkJYWRh
cHRlci0+cHRwX2Nsb2NrX2luZm8ubWF4X2FkaiA9IDI0MDAwMDAwIC0gMTsKLQkJCWJyZWFrOwot
CQl9CisJCWlmIChody0+bWFjLnR5cGUgPCBlMTAwMF9wY2hfbHB0IHx8CisJCSAgICAoZXIzMihU
U1lOQ1JYQ1RMKSAmIEUxMDAwX1RTWU5DUlhDVExfU1lTQ0ZJKSkKKwkJCWFkYXB0ZXItPnB0cF9j
bG9ja19pbmZvLm1heF9hZGogPSA2MDAwMDAwMDAgLSAxOworCQllbHNlCisJCQlhZGFwdGVyLT5w
dHBfY2xvY2tfaW5mby5tYXhfYWRqID0gMjMwMDAwMDAwIC0gMTsKKwkJYnJlYWs7CiAJCWZhbGx0
aHJvdWdoOwogCWNhc2UgZTEwMDBfODI1NzQ6CiAJY2FzZSBlMTAwMF84MjU4MzoKLS0gCjIuMzQu
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
d2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczov
L2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
