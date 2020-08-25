Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E280A2517BC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Aug 2020 13:36:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CC2E7204A9;
	Tue, 25 Aug 2020 11:36:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kL16rYdUjpxd; Tue, 25 Aug 2020 11:36:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8AF39204DF;
	Tue, 25 Aug 2020 11:36:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 678931BF48D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 11:36:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 63261204B3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 11:36:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YacqoHLUtamy for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Aug 2020 11:36:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com
 [209.85.216.66])
 by silver.osuosl.org (Postfix) with ESMTPS id A82F8204A9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 11:36:13 +0000 (UTC)
Received: by mail-pj1-f66.google.com with SMTP id q1so1103222pjd.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 04:36:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=G5TWazzzMgjC9Slh4n6C2utp132vqwOdTyqnBKUdMpI=;
 b=aA1xYLITkGAScs4a36jGJoqczNTRUpXBf8l/paUBl3mDrZiVkmbdVZ9JXPsoqzzApa
 KBcDqNMM34uEWH524uRt5CnUJOWsM+yCohXl4GJfy9WO8o5x9+oA3pafSxYSewzMrpTB
 gX0Nfm9cIAH9HOFhKuyvKzmIzubCu8hgkQoheStAJ6NlzKCdULx8tA6bjfECWRBWore5
 tYe4cDPurSEU2tAnfo+VTFpLCObr4gXxBKgyfKWCARN/HeEXyg3PPZaFSLWkMI5xmVyY
 0Vu5E4T65scLOem0nF/1auSnfy9rc7/6aoDi3krbd3RBTQRLhUTJMSBUgU/o8ChUHVl7
 zJ1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=G5TWazzzMgjC9Slh4n6C2utp132vqwOdTyqnBKUdMpI=;
 b=ZC/OqDkscHJpoocEusOR5Q05Pe9rt39SHI5N9KogZ8E/4rXKl1ugg3vlHfMb/M2U2b
 9VH51+NQu+XNI9ili7tzbli7KDN+wM6Fl02DdUE8mlztAJyc5Rrn+XSj75KSLFLmL4Xf
 N/kspeVMPjHKX5vrDeaMRVQvgsi2if/qf1zvBhmpodFW3Q0cJY9A4m4PGXVGMyjVaLik
 bOqsFTd+r9a6NMvfOBA5zNzDqRG4N60kW9A79SXAI0G6wrMvyNyDi4/QbpEP2XnBfMqv
 J/7SyxaCnhS/ATaQxZHgwsVF6yhK3KTWd5oDrz5aGm/bppGvdDorEflt07g2n7lT96bU
 MYkA==
X-Gm-Message-State: AOAM531oATXUPpTBjXxPLdSrJR6zUjfavSzTaQiozsPqyW3NAQsmi61S
 xL3/jrBF3ZnlkwD7x2pSaHscqQNL+Rt1Iw==
X-Google-Smtp-Source: ABdhPJzQDPQApDpR0aE4b/lgD3iBQmB+PwT/twzUE45OQ8F7EVRGMnmWWmDM73jv1oTqKpi452tzSg==
X-Received: by 2002:a17:90b:b18:: with SMTP id
 bf24mr1134056pjb.223.1598355372921; 
 Tue, 25 Aug 2020 04:36:12 -0700 (PDT)
Received: from btopel-mobl.ger.intel.com ([192.55.54.40])
 by smtp.gmail.com with ESMTPSA id e7sm12699937pgn.64.2020.08.25.04.36.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Aug 2020 04:36:12 -0700 (PDT)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 25 Aug 2020 13:35:53 +0200
Message-Id: <20200825113556.18342-1-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v2 0/3] i40e driver performance
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
Cc: bpf@vger.kernel.org, kuba@kernel.org, magnus.karlsson@intel.com,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

VGhpcyBzZXJpZXMgY29udGFpbnMgdGhyZWUgcGF0Y2hlcyB3b3J0aCBvZiBkcml2ZXIgdHdlYWtz
IGZvciB0aGUgaTQwZQpBRl9YRFAgUnggcGF0aCwgdGhhdCBpbiB0b3RhbCBpbXByb3ZlcyB0aGUg
UnggcGVyZm9ybWFuY2UgKHJ4X2Ryb3AgNjRCCnBhY2tldHMtcGVyLXNlY29uZCkgd2l0aCA5JS4K
ClBsZWFzZSByZWZlciB0byB0aGUgaW5kaXZpZHVhbCBjb21taXRzIGZvciBtb3JlIGRldGFpbHMu
Cgp2MS0+djI6IFJlbW92ZWQgdGhlIG5hcGkgYnVkZ2V0IGluY3JlYXNlIHBhdGNoIFsxXS4gSW5z
dGVhZCwgdGhhdCB3aWxsCiAgICAgICAgYmUgc2VudCBvdXQgYXMgYSBtb3JlIGdlbmVyaWMgc2Vy
aWVzIHRoYXQgYWRkcmVzc2VzIGFsbCBBRl9YRFAKICAgICAgICB6ZXJvLWNvcHkgY2FwYWJsZSBk
cml2ZXJzLCBhcyBzdWdnZXN0ZWQgYnkgSmFrdWIuIFsyXQoKQ2hlZXJzLApCasO2cm4KClsxXSBo
dHRwczovL2xvcmUua2VybmVsLm9yZy9uZXRkZXYvMjAyMDA3MDIxNTM3MzAuNTc1NzM4LTQtYmpv
cm4udG9wZWxAZ21haWwuY29tLwpbMl0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbmV0ZGV2LzIw
MjAwNzI4MTMxNjUzLjNiOTAzMzZiQGtpY2luc2tpLWZlZG9yYS1wYzFjMGhqbi5kaGNwLnRoZWZh
Y2Vib29rLmNvbS8KCgpCasO2cm4gVMO2cGVsICgzKToKICBpNDBlLCB4c2s6IHJlbW92ZSBIVyBk
ZXNjcmlwdG9yIHByZWZldGNoIGluIEFGX1hEUCBwYXRoCiAgaTQwZTogdXNlIDE2QiBIVyBkZXNj
cmlwdG9ycyBpbnN0ZWFkIG9mIDMyQgogIGk0MGUsIHhzazogbW92ZSBidWZmZXIgYWxsb2NhdGlv
biBvdXQgb2YgdGhlIFJ4IHByb2Nlc3NpbmcgbG9vcAoKIGRyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2k0MGUvaTQwZS5oICAgICAgICB8ICAyICstCiAuLi4vbmV0L2V0aGVybmV0L2ludGVsL2k0
MGUvaTQwZV9kZWJ1Z2ZzLmMgICAgfCAxMCArKysrLS0tLQogZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaTQwZS9pNDBlX21haW4uYyAgIHwgIDQgKystLQogZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaTQwZS9pNDBlX3RyYWNlLmggIHwgIDYgKystLS0KIGRyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2k0MGUvaTQwZV90eHJ4LmMgICB8IDE5ICsrKysrKysrKysrKy0tLQogZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3R4cnguaCAgIHwgIDIgKy0KIC4uLi9ldGhlcm5l
dC9pbnRlbC9pNDBlL2k0MGVfdHhyeF9jb21tb24uaCAgICB8IDEzIC0tLS0tLS0tLS0KIGRyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV90eXBlLmggICB8ICA1ICsrKy0KIGRyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV94c2suYyAgICB8IDI0ICsrKysrKysrKysr
Ky0tLS0tLS0KIDkgZmlsZXMgY2hhbmdlZCwgNDcgaW5zZXJ0aW9ucygrKSwgMzggZGVsZXRpb25z
KC0pCgoKYmFzZS1jb21taXQ6IDA3OWY5MjFlOWY0ZDM5OTI5NjhhMmZjNWRjM2FmMGEzNTQwODUz
Y2MKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3Ns
Lm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJl
ZC1sYW4K
