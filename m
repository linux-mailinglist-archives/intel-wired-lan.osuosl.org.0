Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A893D2517BF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Aug 2020 13:36:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5F82487F8B;
	Tue, 25 Aug 2020 11:36:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8vpsyESfkUfE; Tue, 25 Aug 2020 11:36:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B77598809D;
	Tue, 25 Aug 2020 11:36:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8BD921BF48D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 11:36:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 87CE788093
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 11:36:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IpgfEKTctR0z for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Aug 2020 11:36:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com
 [209.85.216.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E601887F8B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 11:36:22 +0000 (UTC)
Received: by mail-pj1-f68.google.com with SMTP id kx11so663687pjb.5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 04:36:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0D1IRpXS9A/gM5G1vVZT30mGYc3nb9zLCzTnVKaIp0Q=;
 b=kJ/OjMY/0zKjOsjwXbWe80OaUcrCWI2VaXvSlTeKsqE/pX4FYryY+C6pLo7Zshe01D
 JiL4Yu1reJroYMY0XzsVs52vmfe/eX+AB9pdeJAe7OHpJoZcvD8BWuCbQfA2bKVF3tB6
 mvN1ay89Qqv9RcqMHYEYJoPHZQpStIptLmEzOS3hepeAaBRMp+Pib3AODqBnTPDgGEIK
 AKKJpdXv12RdvewPtJrVhPey/YpwcdPbPz4C8gtk1fPnxeQgs4gAHA8H5Ll16OaR9RwW
 40GQVAaZw0g/Or1vIDEjlbTdK39oAuBHSrrgZvZ+sAWp+hyiTDUtR1K7O8ZQGrs1Sla7
 7kdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0D1IRpXS9A/gM5G1vVZT30mGYc3nb9zLCzTnVKaIp0Q=;
 b=WBpEs4jOkn8a5EUK2uCr9G/07qx++o/iVNVAmDl/qJpyJ4oIN0NohuPjx5FWjgGB/0
 Pzxtb96dNUWlOit3vbQxKNFIOGr886GtcoCvc06PVwDo+uji7zPIcEbVEeujZQriHVfF
 JmWu325bagD3jQGNHQnz3Mr/N++PSuA1XcUTpOml8mNtg0XvCY17I9mbk2rjbQq422zG
 yoT4h3yFtWC/fmzBdnkoCuvhwa12VW2QRfHQHc1ad5wJpN9EGJPbBKgcJ1Raz/8Ouah4
 u9109Sd4yeBVXjvpAFIIClgkkCnkCYLL7T7m8M1LvykzgDs+cI5G+904WYiWfUM64QhB
 mRMw==
X-Gm-Message-State: AOAM532SRYgs8wzf/4yhG2rLbcCYfUfHdUNMpKi9PCDuSw939rC2yZ2s
 oDHn3VPRW8v4B3oM3z6NhGHRdoOsWy24sA==
X-Google-Smtp-Source: ABdhPJxHHZOwCMiCYZq1sRRMNmhU/TdDDnu697pELj/7wX2ML19Au0dKJA6pClE6hVfKwDNZu9wyTA==
X-Received: by 2002:a17:90a:9203:: with SMTP id
 m3mr1266792pjo.148.1598355382229; 
 Tue, 25 Aug 2020 04:36:22 -0700 (PDT)
Received: from btopel-mobl.ger.intel.com ([192.55.54.40])
 by smtp.gmail.com with ESMTPSA id e7sm12699937pgn.64.2020.08.25.04.36.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Aug 2020 04:36:21 -0700 (PDT)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 25 Aug 2020 13:35:56 +0200
Message-Id: <20200825113556.18342-4-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200825113556.18342-1-bjorn.topel@gmail.com>
References: <20200825113556.18342-1-bjorn.topel@gmail.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v2 3/3] i40e,
 xsk: move buffer allocation out of the Rx processing loop
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
 magnus.karlsson@intel.com, kuba@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogQmrDtnJuIFTDtnBlbCA8Ympvcm4udG9wZWxAaW50ZWwuY29tPgoKSW5zdGVhZCBvZiBj
aGVja2luZyBpbiBlYWNoIGl0ZXJhdGlvbiBvZiB0aGUgUnggcGFja2V0IHByb2Nlc3NpbmcKbG9v
cCwgbW92ZSB0aGUgYWxsb2NhdGlvbiBvdXQgb2YgdGhlIGxvb3AgYW5kIGRvIGl0IG9uY2UgZm9y
IGVhY2ggbmFwaQphY3RpdmF0aW9uLgoKRm9yIEFGX1hEUCB0aGUgcnhfZHJvcCBiZW5jaG1hcmsg
d2FzIGltcHJvdmVkIGJ5IDYlLgoKU2lnbmVkLW9mZi1ieTogQmrDtnJuIFTDtnBlbCA8Ympvcm4u
dG9wZWxAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQw
ZV94c2suYyB8IDEyICsrKystLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygr
KSwgOCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pNDBlL2k0MGVfeHNrLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVf
eHNrLmMKaW5kZXggMWYyZGQ1OTFkYmYxLi5hZTQwNTkyYzMxZjkgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV94c2suYworKysgYi9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfeHNrLmMKQEAgLTI3Nyw4ICsyNzcsOCBAQCBpbnQgaTQw
ZV9jbGVhbl9yeF9pcnFfemMoc3RydWN0IGk0MGVfcmluZyAqcnhfcmluZywgaW50IGJ1ZGdldCkK
IAl1bnNpZ25lZCBpbnQgdG90YWxfcnhfYnl0ZXMgPSAwLCB0b3RhbF9yeF9wYWNrZXRzID0gMDsK
IAl1MTYgY2xlYW5lZF9jb3VudCA9IEk0MEVfREVTQ19VTlVTRUQocnhfcmluZyk7CiAJdW5zaWdu
ZWQgaW50IHhkcF9yZXMsIHhkcF94bWl0ID0gMDsKLQlib29sIGZhaWx1cmUgPSBmYWxzZTsKIAlz
dHJ1Y3Qgc2tfYnVmZiAqc2tiOworCWJvb2wgZmFpbHVyZTsKIAogCXdoaWxlIChsaWtlbHkodG90
YWxfcnhfcGFja2V0cyA8ICh1bnNpZ25lZCBpbnQpYnVkZ2V0KSkgewogCQl1bmlvbiBpNDBlX3J4
X2Rlc2MgKnJ4X2Rlc2M7CkBAIC0yODYsMTMgKzI4Niw2IEBAIGludCBpNDBlX2NsZWFuX3J4X2ly
cV96YyhzdHJ1Y3QgaTQwZV9yaW5nICpyeF9yaW5nLCBpbnQgYnVkZ2V0KQogCQl1bnNpZ25lZCBp
bnQgc2l6ZTsKIAkJdTY0IHF3b3JkOwogCi0JCWlmIChjbGVhbmVkX2NvdW50ID49IEk0MEVfUlhf
QlVGRkVSX1dSSVRFKSB7Ci0JCQlmYWlsdXJlID0gZmFpbHVyZSB8fAotCQkJCSAgIWk0MGVfYWxs
b2NfcnhfYnVmZmVyc196YyhyeF9yaW5nLAotCQkJCQkJCSAgICBjbGVhbmVkX2NvdW50KTsKLQkJ
CWNsZWFuZWRfY291bnQgPSAwOwotCQl9Ci0KIAkJcnhfZGVzYyA9IEk0MEVfUlhfREVTQyhyeF9y
aW5nLCByeF9yaW5nLT5uZXh0X3RvX2NsZWFuKTsKIAkJcXdvcmQgPSBsZTY0X3RvX2NwdShyeF9k
ZXNjLT53Yi5xd29yZDEuc3RhdHVzX2Vycm9yX2xlbik7CiAKQEAgLTM2Nyw2ICszNjAsOSBAQCBp
bnQgaTQwZV9jbGVhbl9yeF9pcnFfemMoc3RydWN0IGk0MGVfcmluZyAqcnhfcmluZywgaW50IGJ1
ZGdldCkKIAkJbmFwaV9ncm9fcmVjZWl2ZSgmcnhfcmluZy0+cV92ZWN0b3ItPm5hcGksIHNrYik7
CiAJfQogCisJaWYgKGNsZWFuZWRfY291bnQgPj0gSTQwRV9SWF9CVUZGRVJfV1JJVEUpCisJCWZh
aWx1cmUgPSAhaTQwZV9hbGxvY19yeF9idWZmZXJzX3pjKHJ4X3JpbmcsIGNsZWFuZWRfY291bnQp
OworCiAJaTQwZV9maW5hbGl6ZV94ZHBfcngocnhfcmluZywgeGRwX3htaXQpOwogCWk0MGVfdXBk
YXRlX3J4X3N0YXRzKHJ4X3JpbmcsIHRvdGFsX3J4X2J5dGVzLCB0b3RhbF9yeF9wYWNrZXRzKTsK
IAotLSAKMi4yNS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wu
b3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVk
LWxhbgo=
