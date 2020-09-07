Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8888625FC8D
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Sep 2020 17:02:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3EC6986821;
	Mon,  7 Sep 2020 15:02:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4Nw0-BBG00KZ; Mon,  7 Sep 2020 15:02:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 46DCE8680F;
	Mon,  7 Sep 2020 15:02:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AFBF51BF2EC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Sep 2020 15:02:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A816120518
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Sep 2020 15:02:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aZdEg+aHiSlN for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Sep 2020 15:02:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by silver.osuosl.org (Postfix) with ESMTPS id F033320535
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Sep 2020 15:02:39 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id c196so3281954pfc.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 07 Sep 2020 08:02:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=oCwcXoLsWMukL1+vXt1yI38gQtqXVGiihrBEQpJvTYo=;
 b=Jtd/zKbsueQrBTL7VJ5Slx40lKB2sw3dzum3wsYwe8BUGi4ZRFsOTM/4WGNeZEu5qE
 0s2kLBj/P6fuhzmqQ928pebpR1fUVFTqSdf2Hr/IJIGqVee1MBu3tx1w+p5rtMlH0cD3
 1OUJfHofzV9MBSWdR22VgdLFiQJk1YxoouJ2b9L1iunUB7TlTOYILIbfQ7+YRMuSYHn1
 XZWJQ2Oi7mNgfElOyCXmDuXAw5ErNN3Yx2Z84eE8AUMWnD6XWENsQWHWC8Cn5kSATaSe
 G3zOkE/GjyNRSQH3Gcl0ie2Y54csLZwH9wBh/0uEWuo45b1te7MdjctT8Ih24p44/fdC
 07Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oCwcXoLsWMukL1+vXt1yI38gQtqXVGiihrBEQpJvTYo=;
 b=OjwAt8ZJryxvMRdKw4wZFThU9ftfOuT6ToNNkuSYmaiMPx6VVhQg3UdzC2N/TMUPSz
 HkPs278w19Bopf9eW8c+zv1/g/On5QMRbN9ooqnvYy96d54aWJUR+Rc9QT51YEKd95Qn
 y97Ywgqr0bQVjrNrX0p4QKlj+rE/+1+/PgxkSp4Tv/03hPS9BXeDcLP2evWJ5ubCqZeF
 7jPxeu1CNcCAwGgSjEmBTVufg374tTrfwihVdbDWZ4Lt/7JHxh1Hvt/HaW0YXdpqOORI
 P4gwy39QZzKbz40+m7DRZ6PlZWhkeKWjUi83YI0YMhX7738gDfVdhes5mvJkcEu7zI5m
 Pq6A==
X-Gm-Message-State: AOAM530odxACYMEJF65sAJ9ajzuIWuWnhr/TDIcaiEoGt8+/GFA+b7+C
 m6yZDKZtiyVXlR15afg2jBsRhomB5fPlSQUh
X-Google-Smtp-Source: ABdhPJzlb0YD6IjyVjw81EJMj1W/ABvKa4l/z7cI+rhquS1hPLeA60joniP+Kj27CgcmXo4K4UtJrQ==
X-Received: by 2002:a62:648c:: with SMTP id
 y134mr21292351pfb.114.1599490959561; 
 Mon, 07 Sep 2020 08:02:39 -0700 (PDT)
Received: from btopel-mobl.ger.intel.com ([192.55.55.43])
 by smtp.gmail.com with ESMTPSA id g129sm15436022pfb.33.2020.09.07.08.02.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Sep 2020 08:02:38 -0700 (PDT)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: ast@kernel.org, daniel@iogearbox.net, netdev@vger.kernel.org,
 bpf@vger.kernel.org
Date: Mon,  7 Sep 2020 17:02:14 +0200
Message-Id: <20200907150217.30888-2-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200907150217.30888-1-bjorn.topel@gmail.com>
References: <20200907150217.30888-1-bjorn.topel@gmail.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH bpf-next 1/4] xsk: add XSK_NAPI_WEIGHT
 define
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
Cc: kuba@kernel.org,
 =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@intel.com>,
 intel-wired-lan@lists.osuosl.org, magnus.karlsson@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogQmrDtnJuIFTDtnBlbCA8Ympvcm4udG9wZWxAaW50ZWwuY29tPgoKVGhlIE5BUEkgYnVk
Z2V0IChOQVBJX1BPTExfV0VJR0hUKSwgbWVhbmluZyB0aGUgbnVtYmVyIG9mIHJlY2VpdmVkCnBh
Y2tldHMgdGhhdCBhcmUgYWxsb3dlZCB0byBiZSBwcm9jZXNzZWQgZm9yIGVhY2ggTkFQSSBpbnZv
Y2F0aW9uLAp0YWtlcyBpbnRvIGNvbnNpZGVyYXRpb24gdGhhdCBlYWNoIHJlY2VpdmVkIHBhY2tl
dCBpcyBhaW1lZCBmb3IgdGhlCmtlcm5lbCBuZXR3b3JraW5nIHN0YWNrLgoKVGhhdCBpcyBub3Qg
dGhlIGNhc2UgZm9yIHRoZSBBRl9YRFAgcmVjZWl2ZSBwYXRoLCB3aGVyZSB0aGUgY29zdCBvZgpl
YWNoIHBhY2tldCBpcyBzaWduaWZpY2FudGx5IGxlc3MuIFRoZXJlZm9yZSwgdGhpcyBjb21taXQg
YWRkcyBhIG5ldwpOQVBJIGJ1ZGdldCwgd2hpY2ggaXMgdGhlIE5BUElfUE9MTF9XRUlHSFQgc2Nh
bGVkIGJ5IDQuIFR5cGljYWxseSB0aGF0CndvdWxkIGJlIDI1NiBpbiBtb3N0IGNvbmZpZ3VyYXRp
b24uIEl0IGlzIGVuY291cmFnZWQgdGhhdCBBRl9YRFAKemVyby1jb3B5IGNhcGFibGUgZHJpdmVy
cyB1c2UgdGhlIFhTS19OQVBJX1dFSUdIVCwgd2hlbiB6ZXJvLWNvcHkgaXMKZW5hYmxlZC4KClBy
b2Nlc3NpbmcgMjU2IHBhY2tldHMgdGFyZ2V0ZWQgZm9yIEFGX1hEUCBpcyBzdGlsbCBsZXNzIHdv
cmsgdGhhbiA2NAooTkFQSV9QT0xMX1dFSUdIVCkgcGFja2V0cyBnb2luZyB0byB0aGUga2VybmVs
IG5ldHdvcmtpbmcgc3RhY2suCgpTaWduZWQtb2ZmLWJ5OiBCasO2cm4gVMO2cGVsIDxiam9ybi50
b3BlbEBpbnRlbC5jb20+Ci0tLQogaW5jbHVkZS9uZXQveGRwX3NvY2tfZHJ2LmggfCAzICsrKwog
MSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2luY2x1ZGUvbmV0
L3hkcF9zb2NrX2Rydi5oIGIvaW5jbHVkZS9uZXQveGRwX3NvY2tfZHJ2LmgKaW5kZXggNWIxZWU4
YTk5NzZkLi40ZmM4ZTkzMWQ1NmYgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvbmV0L3hkcF9zb2NrX2Ry
di5oCisrKyBiL2luY2x1ZGUvbmV0L3hkcF9zb2NrX2Rydi5oCkBAIC03LDggKzcsMTEgQEAKICNk
ZWZpbmUgX0xJTlVYX1hEUF9TT0NLX0RSVl9ICiAKICNpbmNsdWRlIDxuZXQveGRwX3NvY2suaD4K
KyNpbmNsdWRlIDxsaW51eC9uZXRkZXZpY2UuaD4KICNpbmNsdWRlIDxuZXQveHNrX2J1ZmZfcG9v
bC5oPgogCisjZGVmaW5lIFhTS19OQVBJX1dFSUdIVCAoTkFQSV9QT0xMX1dFSUdIVCA8PCAyKQor
CiAjaWZkZWYgQ09ORklHX1hEUF9TT0NLRVRTCiAKIHZvaWQgeHNrX3R4X2NvbXBsZXRlZChzdHJ1
Y3QgeHNrX2J1ZmZfcG9vbCAqcG9vbCwgdTMyIG5iX2VudHJpZXMpOwotLSAKMi4yNS4xCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1s
YW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMu
b3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
