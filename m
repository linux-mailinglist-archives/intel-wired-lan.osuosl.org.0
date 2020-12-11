Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E30E42D784C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Dec 2020 15:57:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 89F4F8733A;
	Fri, 11 Dec 2020 14:57:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o5-lJ62E0+u3; Fri, 11 Dec 2020 14:57:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 28BBA8734C;
	Fri, 11 Dec 2020 14:57:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3BF451BF286
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Dec 2020 14:57:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 359C82E0E4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Dec 2020 14:57:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sbLuA-o4YBCa for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Dec 2020 14:57:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 4BB412E0DB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Dec 2020 14:57:35 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id f17so7279205pge.6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Dec 2020 06:57:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0zHk7EvBmUvHalVg3tJqPcBK4UoTwgMaJQ6bNwcn394=;
 b=iEjrBYlAAonFO9lBncbMDK/ImhO/uYrR1YIQh9Y3ATTXqJTN4jmBNXS/iaw/h9NqdL
 O0TtBXV0Gsl1xCi5caEs5oX9NmdqMQWcBchNbfAdLpS7YdXyfY7bqONMQegG4fHPistl
 s7ihmm2vJw+RgSnNXfBdgHwJyhVYu7IbY+mw3cF138gPv+eQ1hu02khftCy5SbmAJEtc
 f/mcd4NQQ0TLl3+jNle4PQRET/DkegRRKScTXu9RtpvuPqpe+3UfHLeKnPAagYPrjbl0
 UTUdsyAs1xuB8CK2YDPB2kEHzCZku0sVFPHuVmBZTF9jWDP8TIq02EzlNHwt7BAo6VIX
 B2nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0zHk7EvBmUvHalVg3tJqPcBK4UoTwgMaJQ6bNwcn394=;
 b=hB8LZtNlg5Ux6MnWs4E1pmjXAznVYrNcu+iyH+bc+aeit9USQzXoVdYZ7aUffHpu5D
 Mw7airm50olYJCWI08JltA3Cv96q3ds7vIXTCosVef3juJg5lxIHHMKKRUrnkiGMDXvC
 GHP8bHfDynmPL1R7AXy8yBy0wyHySHZVTHA54FGXwjLCuNyPoHe+sTnDFY9XVlQuaJ8p
 qXMr2fkUrLv4+2Bzta2nqL2Xf+QZo/p/5hf4LXBOtq7BPkAi3xY8SskPPKbqjid2tuKS
 7FWrr0G8JxPeS28yRXxfcomnOB5UATsO2HcqsWzCH4cq5vAOJalw3DVLeR/vZFWTzclq
 U6NQ==
X-Gm-Message-State: AOAM532sBlJ8TJZtzhDwY79w1rokyEYczfpEFlBSQoMXtRmnk/7xtL3Z
 Q1+KGVy1AAeV7Sthvb1V/TdIluhk1nJq/Gap
X-Google-Smtp-Source: ABdhPJy+oMtVfQNttQdM8jLOQcNcy6+vYzX4kdWFd3yoHOPWfwAPklr/0SUDdMDmH+JIrVT4a7Pagg==
X-Received: by 2002:a63:1764:: with SMTP id 36mr12095932pgx.177.1607698654288; 
 Fri, 11 Dec 2020 06:57:34 -0800 (PST)
Received: from btopel-mobl.ger.intel.com ([192.55.54.40])
 by smtp.gmail.com with ESMTPSA id k23sm10583085pfk.50.2020.12.11.06.57.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Dec 2020 06:57:33 -0800 (PST)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 11 Dec 2020 15:57:12 +0100
Message-Id: <20201211145712.72957-3-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201211145712.72957-1-bjorn.topel@gmail.com>
References: <20201211145712.72957-1-bjorn.topel@gmail.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net 2/2] i40e,
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
Y2xlYXJpbmcgb2YgdGhlIG5leHRfdG9fdXNlCmRlc2NyaXB0b3IuCgpGaXhlczogM2I0ZjBiNjZj
MmIzICgiaTQwZSwgeHNrOiBNaWdyYXRlIHRvIG5ldyBNRU1fVFlQRV9YU0tfQlVGRl9QT09MIikK
U2lnbmVkLW9mZi1ieTogQmrDtnJuIFTDtnBlbCA8Ympvcm4udG9wZWxAaW50ZWwuY29tPgotLS0K
IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV94c2suYyB8IDUgKysrKy0KIDEg
ZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfeHNrLmMgYi9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfeHNrLmMKaW5kZXggNTY3ZmQ2N2U5MDBlLi5lNDAy
YzYyZWIzMTMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQw
ZV94c2suYworKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfeHNrLmMK
QEAgLTIxOSw4ICsyMTksMTEgQEAgYm9vbCBpNDBlX2FsbG9jX3J4X2J1ZmZlcnNfemMoc3RydWN0
IGk0MGVfcmluZyAqcnhfcmluZywgdTE2IGNvdW50KQogCX0gd2hpbGUgKGNvdW50KTsKIAogbm9f
YnVmZmVyczoKLQlpZiAocnhfcmluZy0+bmV4dF90b191c2UgIT0gbnR1KQorCWlmIChyeF9yaW5n
LT5uZXh0X3RvX3VzZSAhPSBudHUpIHsKKwkJLyogY2xlYXIgdGhlIHN0YXR1cyBiaXRzIGZvciB0
aGUgbmV4dF90b191c2UgZGVzY3JpcHRvciAqLworCQlyeF9kZXNjLT53Yi5xd29yZDEuc3RhdHVz
X2Vycm9yX2xlbiA9IDA7CiAJCWk0MGVfcmVsZWFzZV9yeF9kZXNjKHJ4X3JpbmcsIG50dSk7CisJ
fQogCiAJcmV0dXJuIG9rOwogfQotLSAKMi4yNy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVs
LXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
