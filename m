Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6CFD79EC32
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Sep 2023 17:10:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5BF3B416A6;
	Wed, 13 Sep 2023 15:10:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5BF3B416A6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694617827;
	bh=9yw3GhIXWTNEt5DuTjdTPkMhoSO/wMJNcsg7t1hPcz0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Fqo5khm4CtbruS30xqDf+ItH5HkGlWgOGAEc6bUvAJcZbBUjFZk57fmmQroJyTn7R
	 JkK/Nic6SWTYqj7L5DzNYkR60q24k3HBCH7NQFPUK/8GqLBXofkiuLAsOTaiSlGL72
	 ekpFHV0z9peglSVDK6e6A6HRkzwuh2fpfYgrN36ltwWmGrnPqR9BOMnr7QkA2UCBIZ
	 U0h1itn1zNWRyrbOrwvsLakzGc1M7uUStNAwvTXxVXWDbVCBXrJQtGSl/ec6Gijjs5
	 uCmkk8W7ihmAGutx8Abrz3TboYNN8FDGGS01MOh6IHSlMfTM+eK2cnZPKeKWKrpMTA
	 Yexpd6wcwMvTA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xk2fWgsxIdpq; Wed, 13 Sep 2023 15:10:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1DA8840635;
	Wed, 13 Sep 2023 15:10:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1DA8840635
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0B9B11BF3B9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Sep 2023 12:31:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D6138400B1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Sep 2023 12:31:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D6138400B1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cG3O6wVkLhok for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Sep 2023 12:31:32 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BC74D4002D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Sep 2023 12:31:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BC74D4002D
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="368912638"
X-IronPort-AV: E=Sophos;i="6.02,143,1688454000"; d="scan'208";a="368912638"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2023 05:28:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="693836688"
X-IronPort-AV: E=Sophos;i="6.02,143,1688454000"; d="scan'208";a="693836688"
Received: from pakurapo-mobl3.ger.corp.intel.com (HELO
 ijarvine-mobl2.ger.corp.intel.com) ([10.249.45.213])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2023 05:28:33 -0700
From: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
To: Jonathan Cameron <Jonathan.Cameron@Huawei.com>, linux-pci@vger.kernel.org,
 Bjorn Helgaas <helgaas@kernel.org>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Wed, 13 Sep 2023 15:27:47 +0300
Message-Id: <20230913122748.29530-10-ilpo.jarvinen@linux.intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230913122748.29530-1-ilpo.jarvinen@linux.intel.com>
References: <20230913122748.29530-1-ilpo.jarvinen@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 13 Sep 2023 15:10:17 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694608291; x=1726144291;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=h23ccGE5WuEhEsJ1piAqm7UfKXwPFLCCzGvyJoEQsXM=;
 b=bWkO0aC09I1gdaes/RX+cM0ugVa/3UYNJWcHpRnDBJKOQIggO0mMpZSL
 9aH6LMHEBeBF/X+qbgwtb5ie3XarYzwXvcOV8sUe1l/mCcKxIFGWWDgUG
 YtcgF4bJMVBI9xz6Iy5ImddTm4Vxn2dROICi4XOfa5JFDRfXOOum/+t0K
 4YVjX+mVXhTto/PF/EmqzNhOzko70nB0r9PM9Eq3kTNCvk5iStdwKUQXe
 g2aRXGFMd7uicibFe61R6BgSF6oSRwZDjNfJTDdGRz/T1RyCWHVLpd8TA
 UZdLdAmLh/zebxSN21vmYj6S3EWxKKF/CqQcDiKABsI64lKDzTTobVUIn
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bWkO0aC0
Subject: [Intel-wired-lan] [PATCH v2 09/10] e1000e: Use PCI_EXP_LNKSTA_NLW &
 FIELD_GET() instead of custom defines/code
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
Cc: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

ZTEwMDBlIGhhcyBvd24gY29weSBvZiBQQ0kgTmVnb3RpYXRlZCBMaW5rIFdpZHRoIGZpZWxkIGRl
ZmluZXMuIFVzZSB0aGUKb25lIGZyb20gaW5jbHVkZS91YXBpL2xpbnV4L3BjaV9yZWdzLmggaW5z
dGVhZCBvZiB0aGUgY3VzdG9tIG9uZXMgYW5kCnJlbW92ZSB0aGUgY3VzdG9tIG9uZXMuIEFsc28g
Y29udmVydCB0byB1c2UgRklFTERfR0VUKCkuCgpTdWdnZXN0ZWQtYnk6IEpvbmF0aGFuIENhbWVy
b24gPEpvbmF0aGFuLkNhbWVyb25AaHVhd2VpLmNvbT4KU2lnbmVkLW9mZi1ieTogSWxwbyBKw6Ry
dmluZW4gPGlscG8uamFydmluZW5AbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2UxMDAwZS9kZWZpbmVzLmggfCAyIC0tCiBkcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9lMTAwMGUvbWFjLmMgICAgIHwgNyArKysrLS0tCiAyIGZpbGVzIGNoYW5nZWQsIDQg
aW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9lMTAwMGUvZGVmaW5lcy5oIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvZTEwMDBlL2RlZmluZXMuaAppbmRleCA2M2MzYzc5MzgwYTEuLmE0ZDI5YzllMDNhNiAxMDA2
NDQKLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL2RlZmluZXMuaAorKysg
Yi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvZGVmaW5lcy5oCkBAIC02ODEsOCAr
NjgxLDYgQEAKICNkZWZpbmUgUENJRV9MSU5LX1NUQVRVUyAgICAgICAgICAgICAweDEyCiAKICNk
ZWZpbmUgUENJX0hFQURFUl9UWVBFX01VTFRJRlVOQyAgICAweDgwCi0jZGVmaW5lIFBDSUVfTElO
S19XSURUSF9NQVNLICAgICAgICAgMHgzRjAKLSNkZWZpbmUgUENJRV9MSU5LX1dJRFRIX1NISUZU
ICAgICAgICA0CiAKICNkZWZpbmUgUEhZX1JFVklTSU9OX01BU0sgICAgICAweEZGRkZGRkYwCiAj
ZGVmaW5lIE1BWF9QSFlfUkVHX0FERFJFU1MgICAgMHgxRiAgLyogNSBiaXQgYWRkcmVzcyBidXMg
KDAtMHgxRikgKi8KZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAw
ZS9tYWMuYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9tYWMuYwppbmRleCA1
ZGY3YWQ5M2YzZDcuLjUzNDBjZjczNzc4ZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvZTEwMDBlL21hYy5jCisrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2Ux
MDAwZS9tYWMuYwpAQCAtMSw2ICsxLDggQEAKIC8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBH
UEwtMi4wCiAvKiBDb3B5cmlnaHQoYykgMTk5OSAtIDIwMTggSW50ZWwgQ29ycG9yYXRpb24uICov
CiAKKyNpbmNsdWRlIDxsaW51eC9iaXRmaWVsZC5oPgorCiAjaW5jbHVkZSAiZTEwMDAuaCIKIAog
LyoqCkBAIC0yNSw5ICsyNyw4IEBAIHMzMiBlMTAwMGVfZ2V0X2J1c19pbmZvX3BjaWUoc3RydWN0
IGUxMDAwX2h3ICpodykKIAkJcGNpX3JlYWRfY29uZmlnX3dvcmQoYWRhcHRlci0+cGRldiwKIAkJ
CQkgICAgIGNhcF9vZmZzZXQgKyBQQ0lFX0xJTktfU1RBVFVTLAogCQkJCSAgICAgJnBjaWVfbGlu
a19zdGF0dXMpOwotCQlidXMtPndpZHRoID0gKGVudW0gZTEwMDBfYnVzX3dpZHRoKSgocGNpZV9s
aW5rX3N0YXR1cyAmCi0JCQkJCQkgICAgIFBDSUVfTElOS19XSURUSF9NQVNLKSA+PgotCQkJCQkJ
ICAgIFBDSUVfTElOS19XSURUSF9TSElGVCk7CisJCWJ1cy0+d2lkdGggPSAoZW51bSBlMTAwMF9i
dXNfd2lkdGgpRklFTERfR0VUKFBDSV9FWFBfTE5LU1RBX05MVywKKwkJCQkJCQkgICAgIHBjaWVf
bGlua19zdGF0dXMpOwogCX0KIAogCW1hYy0+b3BzLnNldF9sYW5faWQoaHcpOwotLSAKMi4zMC4y
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13
aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8v
bGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
