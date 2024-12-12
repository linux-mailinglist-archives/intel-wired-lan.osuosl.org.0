Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 67C139F0056
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Dec 2024 00:43:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C169384549;
	Thu, 12 Dec 2024 23:43:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cOnRWjNuMV_D; Thu, 12 Dec 2024 23:43:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CCA3A844E4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734047013;
	bh=gLVftiiQq4akEB+OBVvUaxKCKfRMsg/7Sv0m+78/QB4=;
	h=Date:From:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=9z4flHOytMVYDykWWlC/yU//hHFZKN7En8vY+MlCrlwcheXr/ExW7H7lZw/GavE70
	 XfY/yZWEBvpylItfSqUg6g7cMDrf9ZQrmUOAq4zJKI9NcmY2OY1nFW6XACmyxMngZV
	 dgmDaOXLuG57i2zhtvx0ArpjDg+uSMt+KkM+gW9Ug+4B24CjMRqjBNENs2sWKh9B/X
	 c2txkmujOs6uYziErfgwylC/7jxZ1a+AG9z5w/3+FTxviUb154UeJ/2Rry/17iZC3s
	 VgLjpx//uTDJX7ehbJknNwBke1+VI6YGBET4BZeGZgClxFv76p3U6xmtP/q/Kxyv9w
	 dRfAuZbH1wcuQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CCA3A844E4;
	Thu, 12 Dec 2024 23:43:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 938F21146
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2024 23:33:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7388E40479
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2024 23:33:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dTt6PDGZnJKN for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Dec 2024 23:33:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::44a; helo=mail-pf1-x44a.google.com;
 envelope-from=35xjbzwckd3ozpgylttemmejc.amkglrcj-ugpcb-jyljgqrq.mqsmqj.mpe@flex--brianvv.bounces.google.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5520540127
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5520540127
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com
 [IPv6:2607:f8b0:4864:20::44a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5520540127
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2024 23:33:58 +0000 (UTC)
Received: by mail-pf1-x44a.google.com with SMTP id
 d2e1a72fcca58-727c59ecb9fso1107196b3a.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2024 15:33:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1734046437; x=1734651237;
 h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=gLVftiiQq4akEB+OBVvUaxKCKfRMsg/7Sv0m+78/QB4=;
 b=MaKk/7Hztup0C7nfTloY5w7xcgRl4NM7mLEcuT8TSJ7YZr5QGqhW4v8A6l85v74go3
 mzwtZlZH9jp7oAA4O6JT3a9t4tHrkrhWxZ919ik6u1UhHghIrAoAqBFUmvLfZL0xcXz+
 BqRZIyw5WrML3lMY5I2IO28LzVMjAbcWH9Rx4g1MDbPNmsgjXADgAHiw3MgSOZ7Ir7lY
 b+NNKf0Z9jRNQDq+M2BU9Qd3uTjffvv0MXpVTKEN76gZMD0BIPI9gXMU2DUfySa6YEqk
 tu6vmNd1KdvX18toWKKi/1C0KtyrXCOXptklyRmYK3Zk5vxomCnXuLgdII1IWOGybbho
 VwHQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXgStzHoY7xGBId/4m1SRJFuLolvRb+Wuk7o5E9BtnuxAR5KPUwZ+HfY1+jE97sH1wq1tUTwKq0ATKOk7i4flA=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yzadl9tMKf1KrSF6is9EmQGGtsx5h8iUKu7fvR844gHUK29A8Qm
 MAdD2yEF0mw5rhly/nf5ZNWZaTEc1x2lufCIZL1WYyCMsBB/T/zHFPDKkgqtCylpHgo2Nxw80Ih
 p1nezzg==
X-Google-Smtp-Source: AGHT+IGEXM7+fNeWc2fIXBSFJ8pi3T0k9Tu+WFppiiRiTyRZ3FGf2nCxK3Dn/BUITxXbwDo18e0BTVZea9s3
X-Received: from pfbhs6.prod.google.com ([2002:a05:6a00:6906:b0:725:9e76:b700])
 (user=brianvv job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:6a00:895:b0:725:d9b6:3932
 with SMTP id d2e1a72fcca58-7290c1df088mr644347b3a.15.1734046437615; Thu, 12
 Dec 2024 15:33:57 -0800 (PST)
Date: Thu, 12 Dec 2024 23:33:30 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.47.1.613.gc27f4b7a9f-goog
Message-ID: <20241212233333.3743239-1-brianvv@google.com>
From: Brian Vazquez <brianvv@google.com>
To: Brian Vazquez <brianvv.kernel@gmail.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org
Cc: David Decotigny <decot@google.com>, Vivek Kumar <vivekmr@google.com>, 
 Anjali Singhai <anjali.singhai@intel.com>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>, 
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, 
 emil.s.tantilov@intel.com, Brian Vazquez <brianvv@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Thu, 12 Dec 2024 23:43:32 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1734046437; x=1734651237; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=gLVftiiQq4akEB+OBVvUaxKCKfRMsg/7Sv0m+78/QB4=;
 b=qpwapGPSUOOrZRnNja1KOuHQTon9EE5r6dZ/89HF9FJ+P1V8+XzD+eM/oMoRzM4iTk
 sewYP7NczyAKihvhc9vpVXl4AXN39lLlYqbwVW8PyFRfLfbqJGMIzC9W4qfl6LemHyjN
 ljC0SCDnmAn9Go2zzE/1SqWZbA6u93QYbJtBYxRzA3wxMfEB8p+iq18e6tV1rTWzyqI+
 IbXCIUh0Fv0AAr/2pJUMY0RgUfCyWPOcbQ4eNLOQjccwaTm4DI1zzEQuRPFcupCuz3mj
 256ky6/dVGuLPq49N5RWzKD84A5+L/LeOpm7yM2qxfatvrvAKDySe7EGsrxUDeW/lQDG
 qL6Q==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=qpwapGPS
Subject: [Intel-wired-lan] [iwl-next PATCH v3 0/3] IDPF Virtchnl: Enhance
 error reporting & fix locking/workqueue issues
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

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
V3:
 - Taking over Manoj's v2 series
 - Dropped "idpf: address an rtnl lock splat in tx timeout recovery
   path" it needs more rework and will be submitted later
 - Addresed nit typo
 - Addresed checkpatch.pl errors and warnings
V2:
 - Dropped patch from Willem
 - RCS/RCT variable naming
 - Improved commit message on feedback
v1: https://lore.kernel.org/netdev/20240813182747.1770032-2-manojvishy@google.com/T/


Manoj Vishwanathan (2):
  idpf: Acquire the lock before accessing the xn->salt
  idpf: add more info during virtchnl transaction time out

Marco Leogrande (1):
  idpf: convert workqueues to unbound

 drivers/net/ethernet/intel/idpf/idpf_main.c     | 15 ++++++++++-----
 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 16 +++++++++++-----
 2 files changed, 21 insertions(+), 10 deletions(-)

-- 
2.47.1.613.gc27f4b7a9f-goog

