Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EA1816D0E8E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Mar 2023 21:18:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7AB7C60E2F;
	Thu, 30 Mar 2023 19:18:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7AB7C60E2F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680203928;
	bh=rn7oPRpzhotK7Cjr9uE30MsFiEpD8r66/v9/fmgVdOw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=aEK4IWQKLDzn7rXNn300tllVWoK8n6n1Ow4asv8GeAq2AiK7kKPceRQaHacFW+gmp
	 Es4yyAlF5i6+Ft6+FcYajI+hb2X6c+Q4/3hrXJ2zzDvTuSjIQ/m+AnzfZmrhBH7Pm2
	 jkbj/oVTqELu8DTQLMbWcwBS4MiMLJCzt9+1xg23XRJrpdkSzeBwiVvty0srWwl987
	 XPxW9sX5K5HG3w+6m2xZNOrUaOq1fBU/k/hI/8UA+Aq/G7B8hI4Mfqg7Qe4PwR9WPC
	 DTWiAkMKOatm+VA3zjQBsqPFTKrKNXTggKJzeMrV5qHDZQJ3mHCbF+v2Az/B1UACst
	 Fl7ffrc/1Dxaw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PAtrJL11w14A; Thu, 30 Mar 2023 19:18:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 61C4F60808;
	Thu, 30 Mar 2023 19:18:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 61C4F60808
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 772481BF2A5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 19:18:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4D2D641F0E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 19:18:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4D2D641F0E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ne2-n27eyedz for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Mar 2023 19:18:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 564AB41DD8
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 564AB41DD8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 19:18:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="338766792"
X-IronPort-AV: E=Sophos;i="5.98,305,1673942400"; d="scan'208";a="338766792"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2023 12:18:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="684825868"
X-IronPort-AV: E=Sophos;i="5.98,305,1673942400"; d="scan'208";a="684825868"
Received: from jbrandeb-saw1.jf.intel.com ([10.166.28.102])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2023 12:18:23 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 30 Mar 2023 12:18:13 -0700
Message-Id: <20230330191813.18429-1-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680203921; x=1711739921;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Yh/wpdNc6p0m/2SUUcRsfewJJ4v5jhMKRIyiLiBi1M0=;
 b=KGFvXCRqjLuC358bZOvIJxVrnwAAnQek2orPfw/m1z6xtecOpDaGcWew
 Lk7T9IVARBI1Tk4peb9lk16bsCXJEImKA/F2sgMHAAfaKY7pnokKBpZhd
 tZq0wYmADcJtM71gvQd7RnsNvrOLROS4p6A04NNrg6bRgPQkXzIgD0ONc
 mYOLbvWtGPYxQGD2wD17yrrTKZdLhLYPppkyE7+0E1KZHIucyxC3h7e/+
 CfTnjeaGoo67GqDz0ptaWWhRNaYbDLm5voj8jfrtI256z2wRr4jwwW/Pk
 LRuY870l09j0m3PyVWxkpSPbq0LOQ/nCM1lHxZAOLQj2ZFi11O2p2lzDa
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KGFvXCRq
Subject: [Intel-wired-lan] [PATCH net-next v1] ice: refactor to remove not
 needed packing
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
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

QWZ0ZXIgdGhlIGNoYW5nZXMgdG8gdGhlIHN0cnVjdHVyZXMgdG8gbWFrZSB0aGVtIGZsZXggYXJy
YXkgc2FmZSwKcGFja2luZyBpcyBubyBsb25nZXIgbmVjZXNzYXJ5LgoKdG8gcmVwcm9kdWNlOgpt
YWtlIEVYVFJBX0NGTEFHUz0tV3BhY2tlZCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2Uv
aWNlLmtvCgpJbiBmaWxlIGluY2x1ZGVkIGZyb20gZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWNlL2ljZV9jb250cm9scS5oOjcsCiAgICAgICAgICAgICAgICAgZnJvbSBkcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pY2UvaWNlX3R5cGUuaDoxNCwKICAgICAgICAgICAgICAgICBmcm9tIGRy
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2UuaDo1OToKZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWNlL2ljZV9hZG1pbnFfY21kLmg6NjE4OjE6IHdhcm5pbmc6IHBhY2tlZCBhdHRy
aWJ1dGUgaXMgdW5uZWNlc3NhcnkgZm9yIOKAmGljZV9hcWNfc3dfcnVsZXNfZWxlbV9oZHLigJkg
Wy1XcGFja2VkXQogIDYxOCB8IH0gX19wYWNrZWQgX19hbGlnbmVkKHNpemVvZihfX2xlMTYpKTsK
ICAgICAgfCBeCmRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfYWRtaW5xX2NtZC5o
OjcwNToxOiB3YXJuaW5nOiBwYWNrZWQgYXR0cmlidXRlIGlzIHVubmVjZXNzYXJ5IGZvciDigJhp
Y2Vfc3dfcnVsZV9sa3VwX3J4X3R44oCZIFstV3BhY2tlZF0KICA3MDUgfCB9IF9fcGFja2VkIF9f
YWxpZ25lZChzaXplb2YoX19sZTE2KSk7CiAgICAgIHwgXgpkcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pY2UvaWNlX2FkbWlucV9jbWQuaDo3Njc6MTogd2FybmluZzogcGFja2VkIGF0dHJpYnV0
ZSBpcyB1bm5lY2Vzc2FyeSBmb3Ig4oCYaWNlX3N3X3J1bGVfbGdfYWN04oCZIFstV3BhY2tlZF0K
ICA3NjcgfCB9IF9fcGFja2VkIF9fYWxpZ25lZChzaXplb2YoX19sZTE2KSk7CiAgICAgIHwgXgpk
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2FkbWlucV9jbWQuaDo3Nzk6MTogd2Fy
bmluZzogcGFja2VkIGF0dHJpYnV0ZSBpcyB1bm5lY2Vzc2FyeSBmb3Ig4oCYaWNlX3N3X3J1bGVf
dnNpX2xpc3TigJkgWy1XcGFja2VkXQogIDc3OSB8IH0gX19wYWNrZWQgX19hbGlnbmVkKHNpemVv
ZihfX2xlMTYpKTsKICAgICAgfCBeCgpGaXhlczogNmUxZmY2MTg3MzdhICgiaWNlOiBmaXggYWNj
ZXNzLWJleW9uZC1lbmQgaW4gdGhlIHN3aXRjaCBjb2RlIikKU2lnbmVkLW9mZi1ieTogSmVzc2Ug
QnJhbmRlYnVyZyA8amVzc2UuYnJhbmRlYnVyZ0BpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9hZG1pbnFfY21kLmggfCA4ICsrKystLS0tCiAxIGZpbGUg
Y2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfYWRtaW5xX2NtZC5oIGIvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9hZG1pbnFfY21kLmgKaW5kZXggODM4ZDliMjc0ZDY4
Li43NDYwZGNhZjY0NzMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lj
ZS9pY2VfYWRtaW5xX2NtZC5oCisrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9p
Y2VfYWRtaW5xX2NtZC5oCkBAIC02MTUsNyArNjE1LDcgQEAgc3RydWN0IGljZV9hcWNfc3dfcnVs
ZXNfZWxlbV9oZHIgewogI2RlZmluZSBJQ0VfQVFDX1NXX1JVTEVTX1RfUFJVTkVfTElTVF9TRVQJ
MHg1CiAjZGVmaW5lIElDRV9BUUNfU1dfUlVMRVNfVF9QUlVORV9MSVNUX0NMRUFSCTB4NgogCV9f
bGUxNiBzdGF0dXM7Ci19IF9fcGFja2VkIF9fYWxpZ25lZChzaXplb2YoX19sZTE2KSk7Cit9IF9f
YWxpZ25lZChzaXplb2YoX19sZTE2KSk7CiAKIC8qIEFkZC9VcGRhdGUvR2V0L1JlbW92ZSBsb29r
dXAgUngvVHggY29tbWFuZC9yZXNwb25zZSBlbnRyeQogICogVGhpcyBzdHJ1Y3R1cmVzIGRlc2Ny
aWJlcyB0aGUgbG9va3VwIHJ1bGVzIGFuZCBhc3NvY2lhdGVkIGFjdGlvbnMuICJpbmRleCIKQEAg
LTcwMiw3ICs3MDIsNyBAQCBzdHJ1Y3QgaWNlX3N3X3J1bGVfbGt1cF9yeF90eCB7CiAJICovCiAJ
X19sZTE2IGhkcl9sZW47CiAJdTggaGRyX2RhdGFbXTsKLX0gX19wYWNrZWQgX19hbGlnbmVkKHNp
emVvZihfX2xlMTYpKTsKK30gX19hbGlnbmVkKHNpemVvZihfX2xlMTYpKTsKIAogLyogQWRkL1Vw
ZGF0ZS9SZW1vdmUgbGFyZ2UgYWN0aW9uIGNvbW1hbmQvcmVzcG9uc2UgZW50cnkKICAqICJpbmRl
eCIgaXMgcmV0dXJuZWQgYXMgcGFydCBvZiBhIHJlc3BvbnNlIHRvIGEgc3VjY2Vzc2Z1bCBBZGQg
Y29tbWFuZCwgYW5kCkBAIC03NjQsNyArNzY0LDcgQEAgc3RydWN0IGljZV9zd19ydWxlX2xnX2Fj
dCB7CiAjZGVmaW5lIElDRV9MR19BQ1RfU1RBVF9DT1VOVF9TCQkzCiAjZGVmaW5lIElDRV9MR19B
Q1RfU1RBVF9DT1VOVF9NCQkoMHg3RiA8PCBJQ0VfTEdfQUNUX1NUQVRfQ09VTlRfUykKIAlfX2xl
MzIgYWN0W107IC8qIGFycmF5IG9mIHNpemUgZm9yIGFjdGlvbnMgKi8KLX0gX19wYWNrZWQgX19h
bGlnbmVkKHNpemVvZihfX2xlMTYpKTsKK30gX19hbGlnbmVkKHNpemVvZihfX2xlMTYpKTsKIAog
LyogQWRkL1VwZGF0ZS9SZW1vdmUgVlNJIGxpc3QgY29tbWFuZC9yZXNwb25zZSBlbnRyeQogICog
ImluZGV4IiBpcyByZXR1cm5lZCBhcyBwYXJ0IG9mIGEgcmVzcG9uc2UgdG8gYSBzdWNjZXNzZnVs
IEFkZCBjb21tYW5kLCBhbmQKQEAgLTc3Niw3ICs3NzYsNyBAQCBzdHJ1Y3QgaWNlX3N3X3J1bGVf
dnNpX2xpc3QgewogCV9fbGUxNiBpbmRleDsgLyogSW5kZXggb2YgVlNJL1BydW5lIGxpc3QgKi8K
IAlfX2xlMTYgbnVtYmVyX3ZzaTsKIAlfX2xlMTYgdnNpW107IC8qIEFycmF5IG9mIG51bWJlcl92
c2kgVlNJIG51bWJlcnMgKi8KLX0gX19wYWNrZWQgX19hbGlnbmVkKHNpemVvZihfX2xlMTYpKTsK
K30gX19hbGlnbmVkKHNpemVvZihfX2xlMTYpKTsKIAogLyogUXVlcnkgUEZDIE1vZGUgKGRpcmVj
dCAweDAzMDIpCiAgKiBTZXQgUEZDIE1vZGUgKGRpcmVjdCAweDAzMDMpCi0tIAoyLjM5LjIKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVk
LWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0
cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
