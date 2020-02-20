Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ADCEC16577F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Feb 2020 07:23:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2276A85EAE;
	Thu, 20 Feb 2020 06:23:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XPOETZULnels; Thu, 20 Feb 2020 06:23:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5616985EAF;
	Thu, 20 Feb 2020 06:23:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5B1391BF2FC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2020 06:23:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4E02485E93
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2020 06:23:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Eufdc6VpUk37 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Feb 2020 06:23:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9AC2485E6B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2020 06:23:06 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id j15so1392792pgm.6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2020 22:23:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xQ2hH1WuA3WIBV0TGGs6V9kr1LqyBnjsbugRrEFt9Ew=;
 b=mqTSY/qAB/RCNO8ZmyzzeSV454kKhoI4MrnzIubx8FG9Hs1YDY8qgkYCOOZ03fnOpj
 M9d3mq2QPbxb8DI9+NencQP10TelM1jX3r75i6nEudJJNC0pyPwTl5Zo70spE5jj6nwC
 RYRBy2U0gZtVNXuoqBFMSLZN6PyqSMEXMIPUo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xQ2hH1WuA3WIBV0TGGs6V9kr1LqyBnjsbugRrEFt9Ew=;
 b=ZbtpTdK7Ct70K3TARgbe3R1GIpheWedj5e4GbPex+XQR0bf3kke30g92FJxYisnlGw
 2E2i1itvWo1eBuVBqcvBAC4WDbU+6R5iIfsRzVAc5RwzacJw/UlTBxyBKOppCIN+TvxV
 lGdi8id35ZShmdd4fqn9A/KQ57VPkgZURD+0tSb4EvCow0njVuhwxvGYJVidnO+aKwyh
 P+FIyyfdvTP07KoZzppM6L4X0TxTlwLREIwBzRACjIOZ6gT/T8Yspb4CB3xsOvP7NCVS
 HLFhBaXfKxrU/Gp1EKtDFHAsDKlAskCgDwS+9anzp0va379c314USP1iYdIXUZ2hlyvi
 AT4Q==
X-Gm-Message-State: APjAAAVneayqmIT9I1C+MuPZKugUWF5pOGfG8t2Zfr+4KykBw4ciW4B7
 YhBw2z0zLgQ9AtQAwsDxjEbBlg==
X-Google-Smtp-Source: APXvYqzAN57Ts+Ho0KQDmWMLWunp5OP1KQlTHt9upDJZGi6oUtxg6xEDyffRcacLKD/SVypLHcvH+Q==
X-Received: by 2002:a63:9251:: with SMTP id s17mr31193888pgn.127.1582179786195; 
 Wed, 19 Feb 2020 22:23:06 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id u126sm1728668pfu.182.2020.02.19.22.23.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 22:23:05 -0800 (PST)
From: Kees Cook <keescook@chromium.org>
To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Date: Wed, 19 Feb 2020 22:23:02 -0800
Message-Id: <20200220062302.68898-1-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH] e1000: Distribute switch variables for
 initialization
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
Cc: intel-wired-lan@lists.osuosl.org, Alexander Potapenko <glider@google.com>,
 Kees Cook <keescook@chromium.org>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

VmFyaWFibGVzIGRlY2xhcmVkIGluIGEgc3dpdGNoIHN0YXRlbWVudCBiZWZvcmUgYW55IGNhc2Ug
c3RhdGVtZW50cwpjYW5ub3QgYmUgYXV0b21hdGljYWxseSBpbml0aWFsaXplZCB3aXRoIGNvbXBp
bGVyIGluc3RydW1lbnRhdGlvbiAoYXMKdGhleSBhcmUgbm90IHBhcnQgb2YgYW55IGV4ZWN1dGlv
biBmbG93KS4gV2l0aCBHQ0MncyBwcm9wb3NlZCBhdXRvbWF0aWMKc3RhY2sgdmFyaWFibGUgaW5p
dGlhbGl6YXRpb24gZmVhdHVyZSwgdGhpcyB0cmlnZ2VycyBhIHdhcm5pbmcgKGFuZCB0aGV5CmRv
bid0IGdldCBpbml0aWFsaXplZCkuIENsYW5nJ3MgYXV0b21hdGljIHN0YWNrIHZhcmlhYmxlIGlu
aXRpYWxpemF0aW9uCih2aWEgQ09ORklHX0lOSVRfU1RBQ0tfQUxMPXkpIGRvZXNuJ3QgdGhyb3cg
YSB3YXJuaW5nLCBidXQgaXQgYWxzbwpkb2Vzbid0IGluaXRpYWxpemUgc3VjaCB2YXJpYWJsZXNb
MV0uIE5vdGUgdGhhdCB0aGVzZSB3YXJuaW5ncyAob3Igc2lsZW50CnNraXBwaW5nKSBoYXBwZW4g
YmVmb3JlIHRoZSBkZWFkLXN0b3JlIGVsaW1pbmF0aW9uIG9wdGltaXphdGlvbiBwaGFzZSwKc28g
ZXZlbiB3aGVuIHRoZSBhdXRvbWF0aWMgaW5pdGlhbGl6YXRpb25zIGFyZSBsYXRlciBlbGlkZWQg
aW4gZmF2b3Igb2YKZGlyZWN0IGluaXRpYWxpemF0aW9ucywgdGhlIHdhcm5pbmdzIHJlbWFpbi4K
ClRvIGF2b2lkIHRoZXNlIHByb2JsZW1zLCBtb3ZlIHN1Y2ggdmFyaWFibGVzIGludG8gdGhlICJj
YXNlIiB3aGVyZQp0aGV5J3JlIHVzZWQgb3IgbGlmdCB0aGVtIHVwIGludG8gdGhlIG1haW4gZnVu
Y3Rpb24gYm9keS4KCmRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwL2UxMDAwX21haW4u
YzogSW4gZnVuY3Rpb24g4oCYZTEwMDBfeG1pdF9mcmFtZeKAmToKZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvZTEwMDAvZTEwMDBfbWFpbi5jOjMxNDM6MTg6IHdhcm5pbmc6IHN0YXRlbWVudCB3
aWxsIG5ldmVyIGJlIGV4ZWN1dGVkIFstV3N3aXRjaC11bnJlYWNoYWJsZV0KIDMxNDMgfCAgICAg
dW5zaWduZWQgaW50IHB1bGxfc2l6ZTsKICAgICAgfCAgICAgICAgICAgICAgICAgIF5+fn5+fn5+
fgoKWzFdIGh0dHBzOi8vYnVncy5sbHZtLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9NDQ5MTYKClNpZ25l
ZC1vZmYtYnk6IEtlZXMgQ29vayA8a2Vlc2Nvb2tAY2hyb21pdW0ub3JnPgotLS0KIGRyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2UxMDAwL2UxMDAwX21haW4uYyB8ICAgIDQgKysrLQogMSBmaWxl
IGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwL2UxMDAwX21haW4uYyBiL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2UxMDAwL2UxMDAwX21haW4uYwppbmRleCAyYmNlZDM0YzE5YmEuLmE1
NDBkMDIwNjEyOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDAv
ZTEwMDBfbWFpbi5jCisrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwL2UxMDAw
X21haW4uYwpAQCAtMzE0MCw4ICszMTQwLDkgQEAgc3RhdGljIG5ldGRldl90eF90IGUxMDAwX3ht
aXRfZnJhbWUoc3RydWN0IHNrX2J1ZmYgKnNrYiwKIAkJaGRyX2xlbiA9IHNrYl90cmFuc3BvcnRf
b2Zmc2V0KHNrYikgKyB0Y3BfaGRybGVuKHNrYik7CiAJCWlmIChza2ItPmRhdGFfbGVuICYmIGhk
cl9sZW4gPT0gbGVuKSB7CiAJCQlzd2l0Y2ggKGh3LT5tYWNfdHlwZSkgeworCQkJY2FzZSBlMTAw
MF84MjU0NDogewogCQkJCXVuc2lnbmVkIGludCBwdWxsX3NpemU7Ci0JCQljYXNlIGUxMDAwXzgy
NTQ0OgorCiAJCQkJLyogTWFrZSBzdXJlIHdlIGhhdmUgcm9vbSB0byBjaG9wIG9mZiA0IGJ5dGVz
LAogCQkJCSAqIGFuZCB0aGF0IHRoZSBlbmQgYWxpZ25tZW50IHdpbGwgd29yayBvdXQgdG8KIAkJ
CQkgKiB0aGlzIGhhcmR3YXJlJ3MgcmVxdWlyZW1lbnRzCkBAIC0zMTYyLDYgKzMxNjMsNyBAQCBz
dGF0aWMgbmV0ZGV2X3R4X3QgZTEwMDBfeG1pdF9mcmFtZShzdHJ1Y3Qgc2tfYnVmZiAqc2tiLAog
CQkJCX0KIAkJCQlsZW4gPSBza2JfaGVhZGxlbihza2IpOwogCQkJCWJyZWFrOworCQkJfQogCQkJ
ZGVmYXVsdDoKIAkJCQkvKiBkbyBub3RoaW5nICovCiAJCQkJYnJlYWs7CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGlu
ZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
