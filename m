Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 529F925FC8B
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Sep 2020 17:02:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 816ED20517;
	Mon,  7 Sep 2020 15:02:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Gi16GU0Q9AIm; Mon,  7 Sep 2020 15:02:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B760F2052A;
	Mon,  7 Sep 2020 15:02:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 38AE31BF964
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Sep 2020 15:02:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1AEB820517
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Sep 2020 15:02:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Qbr6DSoYGELd for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Sep 2020 15:02:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com
 [209.85.216.65])
 by silver.osuosl.org (Postfix) with ESMTPS id BA7AF20513
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Sep 2020 15:02:33 +0000 (UTC)
Received: by mail-pj1-f65.google.com with SMTP id b17so4473747pji.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 07 Sep 2020 08:02:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0rqXxTT69QR+tdQjYDIQPE0Qtp2NoCEa1nO9jCml3jI=;
 b=Aw6nqVXlGQ6/E/S7jAtGuKo1QEUoT6KshOgSWt9tSSZJ1JJGfjFS7Xh+7UjFzJYPDP
 yZ9Huy4s+Fw4sjXauZ+5T7d5NGDs666FcN48Vzh1mHBtNnZ361zIGDILg+5NLL9wj48i
 xWJOlUq7lRb6PAxXcsgs4ykP8AVyWt4UlUloupkGmVMFyHM4UB3d/EpAu3Cm+ETxSQdk
 3YspfnSSGNlRIt2nXDnzEXKEIjgce/n5dBRIyXZv0s/Ca2N3QICB2PqTf+Vy2dbNwILv
 3Gv3JZO3AnstSYHJG8eaH3yf58VjdvUdbPFxG4+P+/WO4aQ84kkmstO+pAdSe6NC8ey6
 EqKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0rqXxTT69QR+tdQjYDIQPE0Qtp2NoCEa1nO9jCml3jI=;
 b=Aa1V8JVtNJ4b/zdRh3UzFEHd9BrGt6lGuwIQWJ4DVwDjf69U4LXoUkPqYRBe78q+r7
 ncL4x3SMqO+Y/6ERY+Vasa4z27rNhYNPNNR10TMFOvJIVzKcsdJ2XbujsflBXiB4OyGn
 DA0Tv2/vWOBIbClObc83qfofJVYje0lihW88PSor54X2nJm5RcnKD2P862LHuFXgWO8H
 zKGZeEkbKTUEj0Ogo6jCkOJDrIqPUgjUtFMGZrXE/R+feALLwIm5Z5kIayFa60ECv5+A
 Sw0RKczH7u121w9Z/0pmf8TqI6Z3onC2TLN4m+8qN9ekFUM+v5aSIetVDolpqSYbq1+I
 9Nfg==
X-Gm-Message-State: AOAM5309ZX77qHQpmo8KOtgDlHHziSGI7C6O7WH/sajxDZFTRciwMyDZ
 dufGDP/Sab7E4Ydi2sn2UxI=
X-Google-Smtp-Source: ABdhPJyvgdPliUEK7HsEk9mwj7waxTAXKzNs8sTmOrMveRoy9NgevilxsWjV3+o89QQxBS0zsH2lfQ==
X-Received: by 2002:a17:90a:49c8:: with SMTP id
 l8mr7140863pjm.24.1599490953163; 
 Mon, 07 Sep 2020 08:02:33 -0700 (PDT)
Received: from btopel-mobl.ger.intel.com ([192.55.55.43])
 by smtp.gmail.com with ESMTPSA id g129sm15436022pfb.33.2020.09.07.08.02.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Sep 2020 08:02:32 -0700 (PDT)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: ast@kernel.org, daniel@iogearbox.net, netdev@vger.kernel.org,
 bpf@vger.kernel.org
Date: Mon,  7 Sep 2020 17:02:13 +0200
Message-Id: <20200907150217.30888-1-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH bpf-next 0/4] xsk: increase NAPI budget
 for AF_XDP zero-copy path
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
Cc: bjorn.topel@intel.com, intel-wired-lan@lists.osuosl.org,
 magnus.karlsson@intel.com, kuba@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

VGhlIE5BUEkgYnVkZ2V0IChOQVBJX1BPTExfV0VJR0hUKSwgbWVhbmluZyB0aGUgbnVtYmVyIG9m
IHJlY2VpdmVkCnBhY2tldHMgdGhhdCBhcmUgYWxsb3dlZCB0byBiZSBwcm9jZXNzZWQgZm9yIGVh
Y2ggTkFQSSBpbnZvY2F0aW9uLAp0YWtlcyBpbnRvIGNvbnNpZGVyYXRpb24gdGhhdCBlYWNoIHJl
Y2VpdmVkIHBhY2tldCBpcyBhaW1lZCBmb3IgdGhlCmtlcm5lbCBuZXR3b3JraW5nIHN0YWNrLgoK
VGhhdCBpcyBub3QgdGhlIGNhc2UgZm9yIHRoZSBBRl9YRFAgcmVjZWl2ZSBwYXRoLCB3aGVyZSB0
aGUgY29zdCBvZgplYWNoIHBhY2tldCBpcyBzaWduaWZpY2FudGx5IGxlc3MuIFRoZXJlZm9yZSwg
dGhpcyBjb21taXQgYWRkcyBhIG5ldwpOQVBJIGJ1ZGdldCwgd2hpY2ggaXMgdGhlIE5BUElfUE9M
TF9XRUlHSFQgc2NhbGVkIGJ5IDQuIFR5cGljYWxseSB0aGF0CndvdWxkIGJlIDI1NiBpbiBtb3N0
IGNvbmZpZ3VyYXRpb24uIEl0IGlzIGVuY291cmFnZWQgdGhhdCBBRl9YRFAKemVyby1jb3B5IGNh
cGFibGUgZHJpdmVycyB1c2UgdGhlIFhTS19OQVBJX1dFSUdIVCwgd2hlbiB6ZXJvLWNvcHkgaXMK
ZW5hYmxlZC4KClByb2Nlc3NpbmcgMjU2IHBhY2tldHMgdGFyZ2V0ZWQgZm9yIEFGX1hEUCBpcyBz
dGlsbCBsZXNzIHdvcmsgdGhhbiA2NAooTkFQSV9QT0xMX1dFSUdIVCkgcGFja2V0cyBnb2luZyB0
byB0aGUga2VybmVsIG5ldHdvcmtpbmcgc3RhY2suCgpKYWt1YiBzdWdnZXN0ZWQgaW4gWzFdIHRo
YXQgYSBtb3JlIGdlbmVyaWMgYXBwcm9hY2ggd2FzIHByZWZlcnJlZCBvdmVyCiJkcml2ZXIgaGFj
a3MiLiBJdCBpcyBhcmd1YWJsZSBpZiBhZGRpbmcgdGhlIGJ1ZGdldCBhcyBhIGRlZmluZSB3aGlj
aAppcyBhIHNjYWxlZCBOQVBJX1BPTExfV0VJR0hUIHdvdWxkIGNsYXNzaWZ5IGFzICJnZW5lcmlj
IiwgYnV0IGl0IGlzIGEKYml0IGZ1cnRoZXIgYXdheSBmcm9tICJkcml2ZXIgaGFja3MiLiA7LSkK
ClRoZSBmaXJzdCBwYXRjaCBhZGRzIHRoZSBhY3R1YWwgZGVmaW5lLCBhbmQgbGFzdCB0aHJlZSBt
YWtlIHRoZSBJbnRlbApkcml2ZXJzIHVzZSBpdC4KClRoZSBBRl9YRFAgUnggcGVyZm9ybWFuY2Ug
Zm9yICJyeGRyb3AiIGlzIHVwIH44JSBvbiBteSBtYWNoaW5lLgoKUm91dGluZyB0aGlzIHNlcmll
cyB2aWEgYnBmLW5leHQgaW5zdGVhZCBvZiBJbnRlbCBXaXJlZC9uZXRkZXYsIHNpbmNlCml0IGlz
IGEgY29yZSBBRl9YRFAgYWRkaXRpb24sIGFuZCBob3BlZnVsbHkgTnZpZGlhIHdpbGwgcGljayB0
aGlzIHVwCmZvciB0aGUgbWx4NSBkcml2ZXIuCgoKQmrDtnJuCgpbMV0gaHR0cHM6Ly9sb3JlLmtl
cm5lbC5vcmcvbmV0ZGV2LzIwMjAwNzI4MTMxNTEyLjE3YzQxNjIxQGtpY2luc2tpLWZlZG9yYS1w
YzFjMGhqbi5kaGNwLnRoZWZhY2Vib29rLmNvbS8KCkJqw7ZybiBUw7ZwZWwgKDQpOgogIHhzazog
YWRkIFhTS19OQVBJX1dFSUdIVCBkZWZpbmUKICBpNDBlLCB4c2s6IHVzZSBYU0tfTkFQSV9XRUlH
SFQgYXMgTkFQSSBwb2xsIGJ1ZGdldAogIGljZSwgeHNrOiB1c2UgWFNLX05BUElfV0VJR0hUIGFz
IE5BUEkgcG9sbCBidWRnZXQKICBpeGdiZSwgeHNrOiB1c2UgWFNLX05BUElfV0VJR0hUIGFzIE5B
UEkgcG9sbCBidWRnZXQKCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfeHNr
LmMgICB8IDIgKy0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfeHNrLmMgICAg
IHwgMiArLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfeHNrLmMgfCAy
ICstCiBpbmNsdWRlL25ldC94ZHBfc29ja19kcnYuaCAgICAgICAgICAgICAgICAgICB8IDMgKysr
CiA0IGZpbGVzIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCgpiYXNl
LWNvbW1pdDogYmMwYjVhMDMwNzliZDc4ZmIzZDVjYmExY2NhYmYwYTdlZmIxZDk5ZgotLSAKMi4y
NS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBz
Oi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
