Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6272125FC91
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Sep 2020 17:02:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 166A8867F5;
	Mon,  7 Sep 2020 15:02:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KgHolot00WRj; Mon,  7 Sep 2020 15:02:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 873508680E;
	Mon,  7 Sep 2020 15:02:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 606FA1BF2EC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Sep 2020 15:02:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5539C20517
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Sep 2020 15:02:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I+T5mR8hgUw2 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Sep 2020 15:02:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 2E3AB20513
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Sep 2020 15:02:52 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id d9so2477720pfd.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 07 Sep 2020 08:02:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3ET3VUNIOlD5dN8TA+dzQwxSZyn/UWc2tEMM7JHIWn4=;
 b=ugCGWKI8KcUw37WDjOkTmiW1cE2+Nu8BVZbaQAAXCpUK/0tNLUpnwilxEffBgafPkB
 Y1w98ZQRVEybcL4511troDu4fdkHm6KRoZawr00TnpJUbJiBF28syEbxcIkDLXnEBx9F
 8oEN6MOvjbFX1fdFeCLxGHHQ5kHf+E6Ijyfszvsz3H4RDzmPYUSCZYyTRQmIWqivg95K
 0Pt84dQeoG3v2Lapvmoe9g+bEjzl54FEbnCZ40DaBiAblPkZAandPSeOXt6yygZVm5P9
 pIXr8o7PBcaSNWLCwODthzq2RjII1qI5gKtWqQb41UH/GkwxeMp2hLCHZC1UxX24vsfM
 7lRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3ET3VUNIOlD5dN8TA+dzQwxSZyn/UWc2tEMM7JHIWn4=;
 b=L4yA4Bz/WIQEWXtgUYAQBDlD+WO5q02Jlof87E+XAP3f5fK/SdgbmxVVF/V9x7vP/Z
 eH7u5bddVzj0l6s8ICKN9SusJiv3duP0ytd30VynpKjIG+EOMT9hqB/tSZtErtZlkaX5
 VthvN+ADexmIUd0YaJxczuPVRkZ3III40Aq/GYqYk1KS8bb0D/koOxe1tXeaV9oQvWpf
 YPUo0MDt4hy7x1UrLFPZx587qwpgsZrv1oWttgwvlYOAMd5n55yp79lhvJxzo6IPi9aX
 wcOsBkKnJDJnl63mR6EFDSzz9262NrsGBTKl12zcArX5EwP09s9d3AtGwCQa1MOA/mbG
 cUJg==
X-Gm-Message-State: AOAM533DzHhK8gTmF8sCHL7fRk8I4TCRXRdc00z2n6RlijUJfpLjV4CQ
 bWNzXIA8CXN0ncmvB/c/pt0=
X-Google-Smtp-Source: ABdhPJwvkKI4BSH81v4OuYGJ2RIP0+vpnR/vq1Qx6riZRduGeh8A/zN7Ss0WYYc0Smvx6A1oehQJ3g==
X-Received: by 2002:a62:e404:: with SMTP id r4mr20475633pfh.213.1599490971823; 
 Mon, 07 Sep 2020 08:02:51 -0700 (PDT)
Received: from btopel-mobl.ger.intel.com ([192.55.55.43])
 by smtp.gmail.com with ESMTPSA id g129sm15436022pfb.33.2020.09.07.08.02.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Sep 2020 08:02:51 -0700 (PDT)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: ast@kernel.org, daniel@iogearbox.net, netdev@vger.kernel.org,
 bpf@vger.kernel.org
Date: Mon,  7 Sep 2020 17:02:17 +0200
Message-Id: <20200907150217.30888-5-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200907150217.30888-1-bjorn.topel@gmail.com>
References: <20200907150217.30888-1-bjorn.topel@gmail.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH bpf-next 4/4] ixgbe,
 xsk: use XSK_NAPI_WEIGHT as NAPI poll budget
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

RnJvbTogQmrDtnJuIFTDtnBlbCA8Ympvcm4udG9wZWxAaW50ZWwuY29tPgoKU3RhcnQgdXNpbmcg
WFNLX05BUElfV0VJR0hUIGFzIE5BUEkgcG9sbCBidWRnZXQgZm9yIHRoZSBBRl9YRFAgUngKemVy
by1jb3B5IHBhdGguCgpTaWduZWQtb2ZmLWJ5OiBCasO2cm4gVMO2cGVsIDxiam9ybi50b3BlbEBp
bnRlbC5jb20+Ci0tLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfeHNr
LmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV94c2su
YyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX3hzay5jCmluZGV4IDM3
NzE4NTdjZjg4Ny4uZjMyYzFiYTBkMjM3IDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9peGdiZS9peGdiZV94c2suYworKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9peGdiZS9peGdiZV94c2suYwpAQCAtMjM5LDcgKzIzOSw3IEBAIGludCBpeGdiZV9jbGVhbl9y
eF9pcnFfemMoc3RydWN0IGl4Z2JlX3FfdmVjdG9yICpxX3ZlY3RvciwKIAlib29sIGZhaWx1cmUg
PSBmYWxzZTsKIAlzdHJ1Y3Qgc2tfYnVmZiAqc2tiOwogCi0Jd2hpbGUgKGxpa2VseSh0b3RhbF9y
eF9wYWNrZXRzIDwgYnVkZ2V0KSkgeworCXdoaWxlIChsaWtlbHkodG90YWxfcnhfcGFja2V0cyA8
IFhTS19OQVBJX1dFSUdIVCkpIHsKIAkJdW5pb24gaXhnYmVfYWR2X3J4X2Rlc2MgKnJ4X2Rlc2M7
CiAJCXN0cnVjdCBpeGdiZV9yeF9idWZmZXIgKmJpOwogCQl1bnNpZ25lZCBpbnQgc2l6ZTsKLS0g
CjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpo
dHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
