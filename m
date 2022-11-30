Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2528663D522
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Nov 2022 13:00:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6A20E40338;
	Wed, 30 Nov 2022 12:00:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6A20E40338
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669809634;
	bh=n5ekdy6xpfARCjVLiJqelZwUEI9C6XSRqAn+6i3WGQ0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=l/hQ7QBD0ag2qwLgvDED0NMJdP542CNE9LGhIpx3Z8P+7V8CIU73LaGb2PN0VeBq7
	 EwIuSnB2BgH5jmStTqzcWHgWT632fMZg93YrH2Dm/vw6F/KPIOeRowkpSU1SDCJU7n
	 56eh+ninPuTsxPqgbks/lFsqCOqWyNrxPdx4ZTZD+/6r3/z3B7LHC5ed/r9OoO1g6A
	 UgPf3j3D7GPDmUZ40D2bbSLdPweSm2RefpE/76++9kJv7L1pdNVNH8mqYBFxTmMF4y
	 MmDC7CHZfRzQHWELgBvTtEXf8y3P+0RUYvkoX8GZP10l+NYnyAptv/42o3+YMXuoXs
	 WusTpnkjqaKLw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4-9jNR2u6xv5; Wed, 30 Nov 2022 12:00:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6309F401DF;
	Wed, 30 Nov 2022 12:00:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6309F401DF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1CCB41BF2FC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Nov 2022 12:00:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C56524089F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Nov 2022 12:00:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C56524089F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id scDdVC7daA0L for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Nov 2022 12:00:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B3088406E0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B3088406E0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Nov 2022 12:00:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="302981106"
X-IronPort-AV: E=Sophos;i="5.96,206,1665471600"; d="scan'208";a="302981106"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 04:00:22 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="621858800"
X-IronPort-AV: E=Sophos;i="5.96,206,1665471600"; d="scan'208";a="621858800"
Received: from unknown (HELO ocsbesrhlrepo01.amr.corp.intel.com)
 ([10.237.94.20])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 04:00:16 -0800
From: Radoslaw Tyl <radoslawx.tyl@intel.com>
To: yangyicong@huawei.com
Date: Wed, 30 Nov 2022 13:00:03 +0100
Message-Id: <20221130120003.88695-1-radoslawx.tyl@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <9f37e68c-e960-5188-f52a-4761866c37ad@huawei.com>
References: <9f37e68c-e960-5188-f52a-4761866c37ad@huawei.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669809624; x=1701345624;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NngERSQQm2PI/lvOc14nEOde3ssUcI30Njv4YH5aweI=;
 b=CGTkpS0uD4rnNrLlSKLg91OXM64eMnCDyXy/l84SMLHNPXw6xpLBxU9p
 RGlq/YqcFqMnY9qPC7WwIqXOKbuvFENBIFaI7ifcj/xQE9dFJ5rJLT4bc
 NtvLvqGI3VTrFE/Eyqgf1A7TtbxR7wsTN7LWqJDbB7514zDhawPoF3Ilp
 O1alWl9OrmcxLQQLSvnebqaF0kuaFuQ6IR0l9ms/MhJBKK3ofr5T1cB+a
 5zXv+R7U0iLUNrr8U2uQTzkB0nBDtEEeLyQwjOufd2609x5B6bmKDqJkq
 P437HMClIRy4pqToYbS/TGLGLCLv5bwzd5nfUdSKQfjgxIhHeRNYOnAWz
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CGTkpS0u
Subject: [Intel-wired-lan] [ISSUE] Cannot enable VF after remove/rescan
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
Cc: netdev@vger.kernel.org, zhoulei154@h-partners.com, linuxarm@huawei.com,
 intel-wired-lan@lists.osuosl.org, yangyicong@hisilicon.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGkgWWljb25nLAoKVkYgb2Zmc2V0IGRlcGVuZHMgb24gc2V0IG9mIEFSSUhlaXJhcmNoeSgrLy0p
IGluIHRoZSBQQ0kgY29uZmlnLgpBZnRlciBQb3dlciBjeWNsZSB0aGlzIGJpdCBpcyBzZXQgdG8g
KCspLiBXaGVuIHdlIGZvcmNlIHRoZSBwb3J0IHJlbW92YWwKCiAgICAjIGVjaG8gMSA+IC9zeXMv
YnVzL3BjaS9kZXZpY2VzLzAwMDBcOjA0XDowMC4wL3JlbW92ZQoKYW5kIHBvcnQgcmVzY2FuCgog
ICAgIyBlY2hvIDEgPiAvc3lzL2J1cy9wY2kvcmVzY2FuCgp0aGlzIGNhdXNlIHRoYXQgdGhlIEFS
SUhpZXJhcmNoeSBpcyBzZXQgdG8gKC0pIGFuZCB0aGUgb2ZmZXQgaXMgc2V0IHRvIDM4NC4KTG9v
ayBpbnRvIHRoZSAiSW50ZWzCriA4MjU5OSAxMCBHYkUgQ29udHJvbGxlciBEYXRhc2hlZXQiLApj
aGFwdGVyIDcuMTAuMi42LjEuMSBBUkkgTW9kZS4gSW4gbW9kZSBub24tQVJJICIxIiBpcyBhZGRl
ZCB0byB0aGUgYnVzIGFuZAp0aGF0IGNhdXNlIHlvdSd2ZSBnb3QgYW4gZXJyb3IuCgpEdXJpbmcg
Ym9vdCBzZXF1ZW5jZSB3aGVuIGFsbCBwaHlzaWNhbCBmdW5jdGlvbiAoUEYpIGFyZSBpbml0aWFs
aXplZCwKcGNpIGRyaXZlciBpbiBmaXJzdCBhdHRlbXB0IHNldCBBUkkgb24gdGhlIGZpcnN0IGVu
Y291bnRlcmVkIFBGIGFuZCBpZ25vcmUKb3RoZXIuIFdoZW4gd2UgcmVtb3ZlIHRoYXQgZmlyc3Qg
ZW5jb3VudGVyZWQgUEYgd2hpY2ggaGFzIEFSSSBlbmFibGVkCmluIGluaXRpYWxpemFpb24gc3Rh
Z2UsIHBlcmZvcm1pbmcgcmVzY2FuIGNhdXNlcyB0aGF0IHRoZSBwY2kgZHJpdmVyIG9ubHkKdGFr
ZSBpbnRvIGFjY291bnQgZXhpc3RpbmcgZWFybGllciBQRi4gSW4gcmVzdWx0IHBjaSBkcml2ZXIg
ZG9lc24ndCBzZXQgQVJJCm9uIGFueSBvZiB0aGVtIGFuZCB0aGUgb2Zmc2V0IGlzIHNldCB0byAz
ODQuCgoKICAgIHN0YXRpYyBpbnQgc3Jpb3ZfaW5pdChzdHJ1Y3QgcGNpX2RldiAqZGV2LCBpbnQg
cG9zKQogICAgewogICAgICAgIGN0cmwgPSAwOwogICAgICAgIGxpc3RfZm9yX2VhY2hfZW50cnko
cGRldiwgJmRldi0+YnVzLT5kZXZpY2VzLCBidXNfbGlzdCkKICAgICAgICAgICAgaWYgKHBkZXYt
PmlzX3BoeXNmbikgICAgICA8LS0tLS0tCiAgICAgICAgICAgICAgICBnb3RvIGZvdW5kOwogICAg
ICAgIHBkZXYgPSBOVUxMOwogICAgICAgIGlmIChwY2lfYXJpX2VuYWJsZWQoZGV2LT5idXMpKQog
ICAgICAgICAgICBjdHJsIHw9IFBDSV9TUklPVl9DVFJMX0FSSTsKICAgIAogICAgZm91bmQ6CiAg
ICAKICAgIC4uLgoKCkl0IGlzIG5vdCB0aGUgcHJvYmxlbSByZWxhdGVkIHRvIHRoZSBkZXZpY2Ug
ZHJpdmVyLCBidXQgd2l0aCBwY2kgZHJpdmVyLAphcyBhIHdvcmthcm91bmQgeW91IG1heSB1c2Ug
b25lIG9mIHRoZXNlIG9wdGlvbnM6CgoxLiByZW1vdmUgYWxsIFBGIGJlbG9uZ2luZyB0byBidXMs
IGJlZm9yZSBhdHRlbXB0IHRvIHJlc2Nhbi4KMi4gZGlzYWJsZSBBUkkgaW4gZ3J1YiBhZGQgIm5v
YXJpIiB0byB0aGUga2VybmVsIHBhcmFtZXRlcnMuCiAgICMgbm9hcmkgICAgICAgICAgIGRvIG5v
dCB1c2UgUENJZSBBUkkuCgoKLS0KQlIsClJhZGVrCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwt
d2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
