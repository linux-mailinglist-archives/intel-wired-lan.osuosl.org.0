Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53C1495F8C9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Aug 2024 20:10:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D48BE405E9;
	Mon, 26 Aug 2024 18:10:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9sIo9PTyecrf; Mon, 26 Aug 2024 18:10:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 66B6C405E6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724695845;
	bh=mTr0RusGy/kkC7ALbroZ0gyeKwH4P5QfJnAsXPvr08g=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Ge0ReXs98J4fsTwHpYPMuh7HSW/Hoo0eAMDkyf5w7sSPKobfr3v7PbqcVK0PhPs7D
	 oLiOf28PMt00kcQ5EF9X6VI//ZQCLiG8bhhCDbtT7in0P05igsEHWyNBe5oH10js0D
	 of2KqWcoFrfFSjT8eXWzpmKcivGMbwQ6QNQ9Ru0cKJvZdfaz7IdT/0aw3iK8aRAEg2
	 H5XNO3imIvE2QRtL7xa0ds/usCv3/XSc4jepqixxVRCSswZZDo2pyYpRmzo4htAgB0
	 pyE0zt+BvRwqmxpE0tgnmXhPyURMW9sd9q8Y3+NzGiDBdYK9P7Xwp/B2twIY/gguxU
	 M7Ect7MlNPS0A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 66B6C405E6;
	Mon, 26 Aug 2024 18:10:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AE1211BF2AB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2024 18:10:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9A05F401FE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2024 18:10:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id e0bToI-QKBOX for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Aug 2024 18:10:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1149; helo=mail-yw1-x1149.google.com;
 envelope-from=3g8xmzgokdxy8w9a5h4e3k2aa270.ya849f07-i4d0z-7w974efe.aegae7.ad2@flex--manojvishy.bounces.google.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 14B24401FB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 14B24401FB
Received: from mail-yw1-x1149.google.com (mail-yw1-x1149.google.com
 [IPv6:2607:f8b0:4864:20::1149])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 14B24401FB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2024 18:10:36 +0000 (UTC)
Received: by mail-yw1-x1149.google.com with SMTP id
 00721157ae682-6ad660add0fso62813147b3.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2024 11:10:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1724695836; x=1725300636;
 h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=mTr0RusGy/kkC7ALbroZ0gyeKwH4P5QfJnAsXPvr08g=;
 b=eyXfOzNqJXh9ypTCtNNoNuphrxxecKMujwe1X2aSERVXu5661G/JVJwHmi3sMGJTub
 KfK0aNWjPh9pRefjfExjXrgAjRxqtxVNJxqIgtI5Li+p/njeYbRT5QdTQct0MNfQVCsm
 JuF4hG87ZAmglQ08atgsf9kcWldNjsE2giiRkQKyjy6kt4kTvdxdJYpT5O9nmSK6nKq0
 q/v79kFhcQ+IJgDryTHOdRaBMRUbx9v5jQPRiGHmXtigQ+rM9qJNu89mo5aYmF6esk76
 dwxlZLEqR5BOfHZdpTAg/i7pAODFQctZvEpdQ3vE2wNa+hPHiMGz6BAyYc/2JvFfktzN
 w/4A==
X-Forwarded-Encrypted: i=1;
 AJvYcCXTG37cuLDFMA0JZimjrZFoZvNs2r0wWTOccI+mH37LqCXFGqeXFHA5RfXXBlXM8rkdlzqwQ0VOZChRqKWiSKM=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yw7igHg6J9X0bEVGfb1QL2WEPjP0mODJ+O23rh2Y0bnx/m6IGvt
 Hr2bnfjYgLGoFyg55qxaaOFqFvcNv9pHi4GUy3qBkQbR/5DN9JyfyMfwi2l/nDzIDUtWK/3/1cv
 GAVtNA75g/fwqpsem9w==
X-Google-Smtp-Source: AGHT+IFHyXalfVjOuxjXXsyPmAQk/GYjfxIDGWeV2rNaHSGoyyu+Si9CWtq+Oy8pba0Wr4yolZItnMJDwrKMH1Lf
X-Received: from manojvishy.c.googlers.com
 ([fda3:e722:ac3:cc00:20:ed76:c0a8:413f])
 (user=manojvishy job=sendgmr) by 2002:a05:690c:6981:b0:665:7b0d:ed27 with
 SMTP id 00721157ae682-6cfb27443b6mr274247b3.2.1724695835824; Mon, 26 Aug 2024
 11:10:35 -0700 (PDT)
Date: Mon, 26 Aug 2024 18:10:28 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.46.0.295.g3b9ea8a38a-goog
Message-ID: <20240826181032.3042222-1-manojvishy@google.com>
From: Manoj Vishwanathan <manojvishy@google.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1724695836; x=1725300636; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=mTr0RusGy/kkC7ALbroZ0gyeKwH4P5QfJnAsXPvr08g=;
 b=g8B2yEXd5AsoKX0wnxiJruMtuU+2FnMFgDPFFHedELR+XGy5pR6ihx6bD1XeeFrFVt
 3UiHbdCINjpL62QJMQIHKVBjTyZuXIeWzagur8Z/N7UvjYqITE7QTdW1eaElRXcPb05B
 J0vdX/MkFQaCBnSvYF9O2kCqvni1VQlUMV4eO65f0lGVjWok4kKBvW7NGIyTRRLo8lb2
 YzHUVdb5Kae6LsIjaF4G6NTBETU9M0jcD9n00qHheT9+m1en9jyvT/cOsJnEdjWlUfbY
 NShAV2/VTpsY1i6l+l6vS8N3K/ye6SX7XXxgmvVzQ6DC8nxXlc+iRdqXQBbnIRcmvjul
 m8Eg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=g8B2yEXd
Subject: [Intel-wired-lan] [[PATCH v2 iwl-next] v2 0/4]
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
Cc: netdev@vger.kernel.org, Manoj Vishwanathan <manojvishy@google.com>,
 linux-kernel@vger.kernel.org, google-lan-reviews@googlegroups.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

IDPF Virtchnl: Enhance error reporting & fix locking/workqueue issues

This patch series addresses several IDPF virtchnl issues:

* Improved error reporting for better diagnostics.
* Fixed locking sequence in virtchnl message handling to avoid potential race conditions.
* Converted idpf workqueues to unbound to prevent virtchnl processing delays under heavy load.

Previously, CPU-bound kworkers for virtchnl processing could be starved,
leading to transaction timeouts and connection failures.
This was particularly problematic when IRQ traffic and user space processes contended for the same CPU. 

By making the workqueues unbound, we ensure virtchnl processing is not tied to a specific CPU,
improving responsiveness even under high system load.

---
V2:
 - Dropped patch from Willem
 - RCS/RCT variable naming
 - Improved commit message on feddback
v1: https://lore.kernel.org/netdev/20240813182747.1770032-2-manojvishy@google.com/T/

David Decotigny (1):
  idpf: address an rtnl lock splat in tx timeout recovery path

Manoj Vishwanathan (2):
  idpf: Acquire the lock before accessing the xn->salt
  idpf: add more info during virtchnl transaction time out

Marco Leogrande (1):
  idpf: convert workqueues to unbound

 drivers/net/ethernet/intel/idpf/idpf_main.c     | 15 ++++++++++-----
 drivers/net/ethernet/intel/idpf/idpf_txrx.c     | 14 +++++++++++++-
 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 12 +++++++-----
 3 files changed, 30 insertions(+), 11 deletions(-)

-- 
2.46.0.295.g3b9ea8a38a-goog

