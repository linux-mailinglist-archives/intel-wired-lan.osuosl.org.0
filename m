Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B95B21280B
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Jul 2020 17:37:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2238788CED;
	Thu,  2 Jul 2020 15:37:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VcrlNgxBsmJE; Thu,  2 Jul 2020 15:37:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D10C788CF2;
	Thu,  2 Jul 2020 15:37:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9E75A1BF4E6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2020 15:37:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 92A9924E36
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2020 15:37:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UeVBfWCDYHbx for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Jul 2020 15:37:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com
 [209.85.216.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 7D8F524E00
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2020 15:37:42 +0000 (UTC)
Received: by mail-pj1-f65.google.com with SMTP id cv18so6442347pjb.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 02 Jul 2020 08:37:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NG6nRg89R1RTOY/FF9lOS8GN5LVk4HsmPxWUfy7XLmI=;
 b=g7VsKvp8FXum8US9gHHaSOSGexp+ckPF6Bwl+qHQeCal8wKWrrsVFwl4hLerBHqB6L
 /JT/+17SiHskJCLmhLLAJcZXL7BdhKzRJ1/UvrSyBEHoSNDpN+XfXQS1SC73SeWTDnTK
 8sEoBXFje6urCtG0ZXS5iwh3xrsNOYK5YJXflEm6v3zLWXgIHzCvRLza1jZCbRLQXUkJ
 9gEFcNqFFxyrH+pPYg41f1t8gwZ0YI13cEfDzPlkIMHNBqnDiQaN1xK1FzTAsQoMF3ij
 KRtAVrkFU6V55aHYtTQS6rNiJjs5S0cR260c5GQ8vXovHQ8FQqEzyHnnbU71STZPk/oq
 iq9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NG6nRg89R1RTOY/FF9lOS8GN5LVk4HsmPxWUfy7XLmI=;
 b=XSjk6VNMN5S9+3ER/I+4kcaD6MYSnlB4KfkMEp1Qu8+J3I6P231r7O+R3O/eqpgKZ5
 qSQlF6ap5W1cGLashRtBVTwtNU3j9KVNF6m1SvlAV/DhZu1ESDzZSPzOCsqKSzGxD+hj
 jm4diPpbFUkh/GkdOLnY8fyJAFOJ2/0WSs70iuztiKeSQT/l7w7+pKoL69JnuJs57VAc
 MHitTLxN2YdIhBXmb4OlOmXJKlM1gzNxYTPtDHWwLLHT9vfKo9mVHICX9XZq80tkrD0w
 16ijQBGtGDBOt2nsgsNWX/K/hTIK7fH8fGYfr40Rvp7XtFcoJKQS0JZjfhCXH8jjDqmv
 S9xg==
X-Gm-Message-State: AOAM530XshlzWw/YZ+1KmiJbg0c1JiL1ZdPLjszl2EWw0R+HmKDOfJa0
 KvgSd2Z/mNFoNwm31qS3urIcL/C3YyE=
X-Google-Smtp-Source: ABdhPJzBHPhl5MaEB9Orc8RqilFIVY+AZGsroL6+k3iiHySgZlKJBYtexJtojY+2/MQyRaON0w5jSQ==
X-Received: by 2002:a17:902:c391:: with SMTP id
 g17mr27343301plg.330.1593704261634; 
 Thu, 02 Jul 2020 08:37:41 -0700 (PDT)
Received: from btopel-mobl.ger.intel.com (jfdmzpr04-ext.jf.intel.com.
 [134.134.137.73])
 by smtp.gmail.com with ESMTPSA id r6sm552651pgn.65.2020.07.02.08.37.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Jul 2020 08:37:40 -0700 (PDT)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  2 Jul 2020 17:37:26 +0200
Message-Id: <20200702153730.575738-1-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 0/4] i40e driver performance
 tweaks for AF_XDP
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
Cc: bpf@vger.kernel.org, magnus.karlsson@intel.com, netdev@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

VGhpcyBzZXJpZXMgY29udGFpbnMgZm91ciBwYXRjaGVzIHdvcnRoIG9mIGRyaXZlciB0d2Vha3Mg
Zm9yIHRoZSBpNDBlCkFGX1hEUCBSeCBwYXRoLCB0aGF0IGluIHRvdGFsIGltcHJvdmVzIHRoZSBS
eCBwZXJmb3JtYW5jZSAocnhfZHJvcCA2NEIKcGFja2V0cy1wZXItc2Vjb25kKSB3aXRoIDE3JS4K
ClBsZWFzZSByZWZlciB0byB0aGUgaW5kaXZpZHVhbCBjb21taXRzIGZvciBtb3JlIGRldGFpbHMu
CgoKQ2hlZXJzLApCasO2cm4KCgpCasO2cm4gVMO2cGVsICg0KToKICBpNDBlLCB4c2s6IHJlbW92
ZSBIVyBkZXNjcmlwdG9yIHByZWZldGNoIGluIEFGX1hEUCBwYXRoCiAgaTQwZTogdXNlIDE2QiBI
VyBkZXNjcmlwdG9ycyBpbnN0ZWFkIG9mIDMyQgogIGk0MGUsIHhzazogaW5jcmVhc2UgYnVkZ2V0
IGZvciBBRl9YRFAgcGF0aAogIGk0MGUsIHhzazogbW92ZSBidWZmZXIgYWxsb2NhdGlvbiBvdXQg
b2YgdGhlIFJ4IHByb2Nlc3NpbmcgbG9vcAoKIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0
MGUvaTQwZS5oICAgICAgICB8ICAyICstCiAuLi4vbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQw
ZV9kZWJ1Z2ZzLmMgICAgfCAxMCArKystLS0tCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
NDBlL2k0MGVfbWFpbi5jICAgfCAgNCArLS0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0
MGUvaTQwZV90cmFjZS5oICB8ICA2ICsrLS0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0
MGUvaTQwZV90eHJ4LmMgICB8IDE5ICsrKysrKysrKysrLS0KIGRyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2k0MGUvaTQwZV90eHJ4LmggICB8ICAyICstCiAuLi4vZXRoZXJuZXQvaW50ZWwvaTQw
ZS9pNDBlX3R4cnhfY29tbW9uLmggICAgfCAxMyAtLS0tLS0tLS0KIGRyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2k0MGUvaTQwZV90eXBlLmggICB8ICA1ICsrKy0KIGRyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2k0MGUvaTQwZV94c2suYyAgICB8IDI4ICsrKysrKysrKysrKystLS0tLS0KIDkg
ZmlsZXMgY2hhbmdlZCwgNTAgaW5zZXJ0aW9ucygrKSwgMzkgZGVsZXRpb25zKC0pCgoKYmFzZS1j
b21taXQ6IDIzMjEyYTcwMDc3MzExMzk2Y2RhMjgyM2Q2MjczMTdjMjVlNmU1ZDEKLS0gCjIuMjUu
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
d2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczov
L2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
