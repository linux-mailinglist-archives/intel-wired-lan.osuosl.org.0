Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87D801F7772
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Jun 2020 13:47:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2FD2E8979D;
	Fri, 12 Jun 2020 11:47:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MTNDJZzWrP5L; Fri, 12 Jun 2020 11:47:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B6D19897D1;
	Fri, 12 Jun 2020 11:47:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id ED90E1BF2E3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jun 2020 11:47:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E49A888A29
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jun 2020 11:47:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id icUL90s4t831 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Jun 2020 11:47:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com
 [209.85.216.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 40CCA889F7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jun 2020 11:47:42 +0000 (UTC)
Received: by mail-pj1-f68.google.com with SMTP id s88so3748328pjb.5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jun 2020 04:47:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HbZcKA6Rhm4nCGMfP9Rvp1r28EhMhEPMy4TrCL8RdRE=;
 b=F7ak+z3ro6mwAOVAPjbpePKPk1HpE4idBe9F7nEJ8IuSytT9FHSrtY2q0ypzgnaKOD
 SxNdViTlOLsFhiAtjY9J+rEU0UgsHhl1B0JZB2+POC4M/V4MZ2dcUAx79NKsBVT9VB1k
 qFT8SVXTrmGZjUqxB1b/g8d9GBBEQtFdVIuZJyLHM9A5YHF7T+/0uDdfnlrXLoqLbi2z
 ddhwEEi8iIOJJwWv7k5yLGnYeujMBfvJxjyZmELN1Prq4qcBLLTNM/vZc7XuK91jA8Wn
 VWyX/rqspi9i5IQFxTvvt+5VF4o0CQtK/bMMxqqCz5BJzE+Pkdxs2veEOZ74YEz1S7bd
 BVbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HbZcKA6Rhm4nCGMfP9Rvp1r28EhMhEPMy4TrCL8RdRE=;
 b=r9kggC5uCPROyzjzyUVQfG44iTDIDyq51ILn2KLHeoggF7BBJ3UratBtx+XJTDn4jY
 Sij+ht848xskl4FHfzTaUuBKenaBGqawruh44qTYc3p6AIDbLtz60FTMzs6y9poPOl6k
 V/fr1xHlUh6B7YNmjaHP11dQie6Npg2hW+mnJpvpO44Xa0J8p87SekIP+EC4wVFcG+wa
 51vBIZlzyks/z8SPAfnvxDyMYPs5dnY1WDtztK0McP8oVRbiOk6KonpzSrjomcOWZyGc
 +DSVbwAHGZU7vf7T3Cf76HLo2MyD/3ggIi0UF2QtspW32BbNqWI8vsxuOcDkIVhpE0FA
 v7TA==
X-Gm-Message-State: AOAM531u7Jv67d/ZYwmu5Ll0LShTmWr7/2jaHDaEA+WvD87Qb5pAftRt
 TEAKAOIYU+jfVLzkvtKadW8oSugfYDQ=
X-Google-Smtp-Source: ABdhPJxpadzLW2w3UQlGH5ka4zIsvW0vagy1Xsm/dkF+Pkm3xn2KQUBOIoAUK2XGhw/Nq9EWCGynnA==
X-Received: by 2002:a17:90a:d3d6:: with SMTP id
 d22mr12533184pjw.184.1591962461401; 
 Fri, 12 Jun 2020 04:47:41 -0700 (PDT)
Received: from btopel-mobl.ger.intel.com (fmdmzpr03-ext.fm.intel.com.
 [192.55.54.38])
 by smtp.gmail.com with ESMTPSA id h9sm3227266pjs.50.2020.06.12.04.47.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Jun 2020 04:47:40 -0700 (PDT)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 12 Jun 2020 13:47:31 +0200
Message-Id: <20200612114731.144630-1-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net] i40e: fix crash when Rx descriptor
 count is changed
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
Cc: netdev@vger.kernel.org, bpf@vger.kernel.org,
 =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@intel.com>,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogQmrDtnJuIFTDtnBlbCA8Ympvcm4udG9wZWxAaW50ZWwuY29tPgoKV2hlbiB0aGUgQUZf
WERQIGJ1ZmZlciBhbGxvY2F0b3Igd2FzIGludHJvZHVjZWQsIHRoZSBSeCBTVyByaW5nCiJyeF9i
aSIgYWxsb2NhdGlvbiB3YXMgbW92ZWQgZnJvbSBpNDBlX3NldHVwX3J4X2Rlc2NyaXB0b3JzKCkK
ZnVuY3Rpb24sIGFuZCB3YXMgaW5zdGVhZCBkb25lIGluIHRoZSBpNDBlX2NvbmZpZ3VyZV9yeF9y
aW5nKCkKZnVuY3Rpb24uCgpUaGlzIGJyb2tlIHRoZSBldGh0b29sIHNldF9yaW5ncGFyYW0oKSBo
b29rIGZvciBjaGFuZ2luZyB0aGUgUngKZGVzY3JpcHRvciBjb3VudCwgd2hpY2ggd2FzIHJlbHlp
bmcgb24gaTQwZV9zZXR1cF9yeF9kZXNjcmlwdG9ycygpIHRvCmhhbmRsZSB0aGUgYWxsb2N0aW9u
LgoKRml4IHRoaXMgYnkgYWRkaW5nIGFuIGV4cGxpY2l0IGk0MGVfYWxsb2NfcnhfYmkoKSBjYWxs
IHRvCmk0MGVfc2V0X3JpbmdwYXJhbSgpLgoKRml4ZXM6IGJlMTIyMmI1ODVmZCAoImk0MGU6IFNl
cGFyYXRlIGtlcm5lbCBhbGxvY2F0ZWQgcnhfYmkgcmluZ3MgZnJvbSBBRl9YRFAgcmluZ3MiKQpT
aWduZWQtb2ZmLWJ5OiBCasO2cm4gVMO2cGVsIDxiam9ybi50b3BlbEBpbnRlbC5jb20+Ci0tLQog
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2V0aHRvb2wuYyB8IDMgKysrCiAx
IGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2V0aHRvb2wuYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2k0MGUvaTQwZV9ldGh0b29sLmMKaW5kZXggYWE4MDI2YjFlYjgxLi42NzgwNmI3YjJm
NDkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9ldGh0
b29sLmMKKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2V0aHRvb2wu
YwpAQCAtMjA3MCw2ICsyMDcwLDkgQEAgc3RhdGljIGludCBpNDBlX3NldF9yaW5ncGFyYW0oc3Ry
dWN0IG5ldF9kZXZpY2UgKm5ldGRldiwKIAkJCSAqLwogCQkJcnhfcmluZ3NbaV0udGFpbCA9IGh3
LT5od19hZGRyICsgSTQwRV9QUlRHRU5fU1RBVFVTOwogCQkJZXJyID0gaTQwZV9zZXR1cF9yeF9k
ZXNjcmlwdG9ycygmcnhfcmluZ3NbaV0pOworCQkJaWYgKGVycikKKwkJCQlnb3RvIHJ4X3Vud2lu
ZDsKKwkJCWVyciA9IGk0MGVfYWxsb2NfcnhfYmkoJnJ4X3JpbmdzW2ldKTsKIAkJCWlmIChlcnIp
CiAJCQkJZ290byByeF91bndpbmQ7CiAKCmJhc2UtY29tbWl0OiAxOGRiZDRjZDliOGM5NTcwMjVj
ZjkwYTNjNTAxMDJiMzFiZGUxNGY3Ci0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50
ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
