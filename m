Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A6302D784B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Dec 2020 15:57:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5C39C87324;
	Fri, 11 Dec 2020 14:57:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id opOHNrwWSf0a; Fri, 11 Dec 2020 14:57:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C2B228732E;
	Fri, 11 Dec 2020 14:57:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E6AD71BF286
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Dec 2020 14:57:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E300387324
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Dec 2020 14:57:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xpLEhJlcgHsU for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Dec 2020 14:57:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4610A87322
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Dec 2020 14:57:31 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id c79so7151613pfc.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Dec 2020 06:57:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QBp1qTybeH98RpRF+PA2xVajeq4l+q8xrL0O38yJ++k=;
 b=buwXBmHERsmpLFrozn8Izd7nIUr+sMxVjJUjZ1BRixxJGWxVq/KVZS3G2CAAr/rjMQ
 Y6xhJKCp2E2JeRrCXVJvoKGsf+UchTw0Q0469KnIHHvOteRXjURiUMgf9UQA0DoBMvGw
 s1KGCeqnaGk4suL0J9cGYF9AXRKqu+i8Ztyvz8gpvHzxmQRx3Z106I26DGbMmGupSDmK
 Q8lEMw7cmUbTAv055xFBihr3S4ttoGoslaRQje2fqp7rrG79p/hrjkARiwkJRpAADlXd
 N9Iv547IK/8OD2yn0q/pXp8CQuApAVKUb58X9MM3Ui5x0kBcLskQoVviz1zdjiuqFSmm
 1bFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QBp1qTybeH98RpRF+PA2xVajeq4l+q8xrL0O38yJ++k=;
 b=QOZ0oetBK3aV2coayvShoY+NrknlswyEMc0yTddfm6isKys0S14HoK66lp6cDSNavi
 O8glVvLjNm6Cvy8tcJdeY/RntNBsaz2Cj/XmvV15PMkORwQWbCGTt3ZnrT12hP6RtgWn
 7VJq0ubkWgpUWOSL3CCp+rn7Br8pdNc17svmuuJ/X09ipwYZnbPpu7qyugJNd+BTMSkT
 pdS08S/P0LC2rDe1NoJ7Av6LTN7vj9M8+o/Cy1H58eIRy4nkF1gX3FXw7G+mJS032Mua
 CnrxkPjB2vR1puADOpapwxIN9BLCtQMQ2zx369mFoA6L4kY/puvdKweFilpxFgDCUqPC
 haPA==
X-Gm-Message-State: AOAM531uRFFS3wpt+Ov2mJNOypRMXF+G9oajlXSEz3HgZMmZn8oKRFQq
 84fSYgoeIgOtQt4itrMW37O5N+K9Kq/NQMp7
X-Google-Smtp-Source: ABdhPJyIgRqePZTspps6rp7bR77VU4ydPAxuVrWUzPlmn86AfcT4yk5A6eYQ4Bl7hgfQ24XTJcfoJQ==
X-Received: by 2002:a63:d45:: with SMTP id 5mr11992116pgn.424.1607698650349;
 Fri, 11 Dec 2020 06:57:30 -0800 (PST)
Received: from btopel-mobl.ger.intel.com ([192.55.54.40])
 by smtp.gmail.com with ESMTPSA id k23sm10583085pfk.50.2020.12.11.06.57.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Dec 2020 06:57:29 -0800 (PST)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 11 Dec 2020 15:57:11 +0100
Message-Id: <20201211145712.72957-2-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201211145712.72957-1-bjorn.topel@gmail.com>
References: <20201211145712.72957-1-bjorn.topel@gmail.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net 1/2] ice,
 xsk: clear the status bits for the next_to_use descriptor
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

RnJvbTogQmrDtnJuIFTDtnBlbCA8Ympvcm4udG9wZWxAaW50ZWwuY29tPgoKT24gdGhlIFJ4IHNp
ZGUsIHRoZSBuZXh0X3RvX3VzZSBpbmRleCBwb2ludHMgdG8gdGhlIG5leHQgaXRlbSBpbiB0aGUK
SFcgcmluZyB0byBiZSByZWZpbGxlZC9hbGxvY2F0ZWQsIGFuZCBuZXh0X3RvX2NsZWFuIHBvaW50
cyB0byB0aGUgbmV4dAppdGVtIHRvIHBvdGVudGlhbGx5IGJlIHByb2Nlc3NlZC4KCldoZW4gdGhl
IEhXIFJ4IHJpbmcgaXMgZnVsbHkgcmVmaWxsZWQsIGkuZS4gbm8gcGFja2V0cyBoYXMgYmVlbgpw
cm9jZXNzZWQsIHRoZSBuZXh0X3RvX3VzZSB3aWxsIGJlIG5leHRfdG9fY2xlYW4gLSAxLiBXaGVu
IHRoZSByaW5nIGlzCmZ1bGx5IHByb2Nlc3NlZCBuZXh0X3RvX2NsZWFuIHdpbGwgYmUgZXF1YWwg
dG8gbmV4dF90b191c2UuIFRoZSBsYXR0ZXIKY2FzZSBpcyB3aGVyZSBhIGJ1ZyBpcyB0cmlnZ2Vy
ZWQuCgpJZiB0aGUgbmV4dF90b191c2UgYml0cyBhcmUgbm90IGNsZWFyZWQsIGFuZCB0aGUgImZ1
bGx5IHByb2Nlc3NlZCIKc3RhdGUgaXMgZW50ZXJlZCwgYSBzdGFsZSBkZXNjcmlwdG9yIGNhbiBi
ZSBwcm9jZXNzZWQuCgpUaGUgc2tiLXBhdGggY29ycmVjdGx5IGNsZWFyIHRoZSBzdGF0dXMgYml0
IGZvciB0aGUgbmV4dF90b191c2UKZGVzY3JpcHRvciwgYnV0IHRoZSBBRl9YRFAgemVyby1jb3B5
IHBhdGggZGlkIG5vdCBkbyB0aGF0LgoKVGhpcyBjaGFuZ2UgYWRkcyB0aGUgc3RhdHVzIGJpdHMg
Y2xlYXJpbmcgb2YgdGhlIG5leHRfdG9fdXNlCmRlc2NyaXB0b3IuCgpGaXhlczogMmQ0MjM4ZjU1
Njk3ICgiaWNlOiBBZGQgc3VwcG9ydCBmb3IgQUZfWERQIikKU2lnbmVkLW9mZi1ieTogQmrDtnJu
IFTDtnBlbCA8Ympvcm4udG9wZWxAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2ljZS9pY2VfeHNrLmMgfCA1ICsrKystCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRp
b25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWNlL2ljZV94c2suYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vf
eHNrLmMKaW5kZXggNzk3ODg2NTI0MDU0Li45ODEwMWE4ZTI5NTIgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfeHNrLmMKKysrIGIvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWNlL2ljZV94c2suYwpAQCAtNDQ2LDggKzQ0NiwxMSBAQCBib29sIGljZV9h
bGxvY19yeF9idWZzX3pjKHN0cnVjdCBpY2VfcmluZyAqcnhfcmluZywgdTE2IGNvdW50KQogCQl9
CiAJfSB3aGlsZSAoLS1jb3VudCk7CiAKLQlpZiAocnhfcmluZy0+bmV4dF90b191c2UgIT0gbnR1
KQorCWlmIChyeF9yaW5nLT5uZXh0X3RvX3VzZSAhPSBudHUpIHsKKwkJLyogY2xlYXIgdGhlIHN0
YXR1cyBiaXRzIGZvciB0aGUgbmV4dF90b191c2UgZGVzY3JpcHRvciAqLworCQlyeF9kZXNjLT53
Yi5zdGF0dXNfZXJyb3IwID0gMDsKIAkJaWNlX3JlbGVhc2VfcnhfZGVzYyhyeF9yaW5nLCBudHUp
OworCX0KIAogCXJldHVybiByZXQ7CiB9Ci0tIAoyLjI3LjAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QK
SW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
