Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 16820947DA3
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Aug 2024 17:06:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 579DD810BB;
	Mon,  5 Aug 2024 15:06:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tmhZRP5AOBEc; Mon,  5 Aug 2024 15:06:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9A7A38109E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722870370;
	bh=BH7TThbnnegkjaOojrrx2d8L5L525Fkrr+r8KP5JObU=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=CwZbczFYfzwkDX2xveTUlRX+vewP3gSYJBJlXcfLKndwZ9jPcWYY9q0VrC+gt7bmA
	 /Zqg67GhM3LwJn9k9ObGHHSFT8tNBPoGF2MsViEg5M+RScSXTGNKirdLIuwSPqi1F4
	 j8dFYo2gc/CHiNfz2kSH1Z7T8q0GyqCqYDlNqX3sYK0lTa35FBAhKzo8O6qnTpttB8
	 yqfJFst7jPfFvBVuP4B72OkynS+Pw5cfqzp0LtHleMcEhWpNLTYCINe4+4ii1FR7m1
	 Z6zttb4SMRCcFEfl0n75SEqalodT9DM7Rf76uHIeSB34J458uiDMK5nRnMhw4wwtI3
	 jX7ozdq25xJxQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9A7A38109E;
	Mon,  5 Aug 2024 15:06:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4A35A1BF364
 for <intel-wired-lan@lists.osuosl.org>; Sat,  3 Aug 2024 18:25:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 41FF98113F
 for <intel-wired-lan@lists.osuosl.org>; Sat,  3 Aug 2024 18:25:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mVqwPPGDHV3U for <intel-wired-lan@lists.osuosl.org>;
 Sat,  3 Aug 2024 18:25:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::549; helo=mail-pg1-x549.google.com;
 envelope-from=3mhauzgokdxm5t672e1b0hz77z4x.v7516cx4-f1axw-4t641bcb.7bd7b4.7az@flex--manojvishy.bounces.google.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7A5058113A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7A5058113A
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com
 [IPv6:2607:f8b0:4864:20::549])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7A5058113A
 for <intel-wired-lan@lists.osuosl.org>; Sat,  3 Aug 2024 18:25:53 +0000 (UTC)
Received: by mail-pg1-x549.google.com with SMTP id
 41be03b00d2f7-5e4df21f22dso4183086a12.0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 03 Aug 2024 11:25:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1722709553; x=1723314353;
 h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=BH7TThbnnegkjaOojrrx2d8L5L525Fkrr+r8KP5JObU=;
 b=op9cJg84Nl9+4pu4y3QgDNbPQ5MOMqnePc/Ak7mEj8+TPnrNuf4x+9BOCErloiiqpX
 69yC6lwOM/6nSAlsGjA8VqY7GFauK3NJMi0RtV1+ziPTqeUuxpU14v0MIJEiqQeDOuis
 OJej+DMxXNAu4Pnu/wUTNVrhB9ApELIa0JM/8yusNkpN+BkpJ5bOjGgVFEngNgahuWK5
 hu88jrai+fqLs+DWtKXvph0SZNmjVI6cwM2lDJJX+LExJiJ/j+yJr1JXmWGOSZReta3v
 sUH0taq9F5B/FNTYFXReqdNJHAYRIUFX+aAmLXq+nWtqEU1hEe8C5UJ8PFdyJ4THuGKm
 hirw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVa4qIzNVi2X5Hjn4uPZUOVXaVz7bueSUo1W57qnqFE5MA1Olrf4iEdX+6w/PyM1vZx0Txn2iVXrypCdfES+XgV9NaCpJj9+JKyXFCZ7iAX5A==
X-Gm-Message-State: AOJu0YwcyW072TuorA/2P9ofWWGPUvm/A/6oBbJi761jMatlrvionnAo
 dyULuW2Cwb1PoP9GY6D/h5Irvut2O4gWMUZYLcC5u1IqrcfwFjaOy3ExbxusOu0Dxe3CEWGS1CD
 Al0Vm1qFbrk42QUVCdw==
X-Google-Smtp-Source: AGHT+IHSIDEbxPmrzSc/pjlYK4UMHUzINsnlYy7PNW5MWeJ9ziiR25nb3zUlEws/rVyc2hSZI00CJMWWoyO5wg4u
X-Received: from manojvishy.c.googlers.com
 ([fda3:e722:ac3:cc00:20:ed76:c0a8:413f])
 (user=manojvishy job=sendgmr) by 2002:a63:25c7:0:b0:7a0:b292:47cb with SMTP
 id 41be03b00d2f7-7b6bb6842ffmr19853a12.0.1722709552310; Sat, 03 Aug 2024
 11:25:52 -0700 (PDT)
Date: Sat,  3 Aug 2024 18:25:48 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.46.0.rc2.264.g509ed76dc8-goog
Message-ID: <20240803182548.2932270-1-manojvishy@google.com>
From: Manoj Vishwanathan <manojvishy@google.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Mon, 05 Aug 2024 15:06:09 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1722709553; x=1723314353; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=BH7TThbnnegkjaOojrrx2d8L5L525Fkrr+r8KP5JObU=;
 b=lOvNQL2TTdQxLVGL09W4NFCp47yI9yheNXXsD57M1Ce8VFIORboSwfa2HWzAWRv30O
 fco7x1SS0J7aSRjwRLFsc6YtEBc6m4xZvzjjkY/2jfvP19yOichj22mbuIaMGpfi1HHg
 DNh8MBfaT0h+yffSwibffCNLH3whR+TDTQuQ9nB5sFOigk/GM3GratkuZQ/yu2O5bYrY
 b9MexyN3YrnQVHxYj9+PO12MCKWgi3ZTG8tPSby2Rd6A2bf+w+7djI2t/329ObTRJMqC
 Jbf6xLMjbAPMDLxrLJiL3y3mklXbMYqemlaqIBC9wB88qmzv7ZA/XUGDq7lWN6JtHFST
 fjBw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=lOvNQL2T
Subject: [Intel-wired-lan] [PATCH] idpf: Acquire the lock before accessing
 the xn->salt
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
Cc: netdev@vger.kernel.org, David Decotigny <decot@google.com>,
 Manoj Vishwanathan <manojvishy@google.com>, linux-kernel@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The transaction salt was being accessed
before acquiring the idpf_vc_xn_lock when idpf has to forward the
virtchnl reply

Signed-off-by: Manoj Vishwanathan <manojvishy@google.com>
---
 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index 70986e12da28..30eec674d594 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -612,14 +612,15 @@ idpf_vc_xn_forward_reply(struct idpf_adapter *adapter,
 		return -EINVAL;
 	}
 	xn = &adapter->vcxn_mngr->ring[xn_idx];
+	idpf_vc_xn_lock(xn);
 	salt = FIELD_GET(IDPF_VC_XN_SALT_M, msg_info);
 	if (xn->salt != salt) {
 		dev_err_ratelimited(&adapter->pdev->dev, "Transaction salt does not match (%02x != %02x)\n",
 				    xn->salt, salt);
+		idpf_vc_xn_unlock(xn);
 		return -EINVAL;
 	}
 
-	idpf_vc_xn_lock(xn);
 	switch (xn->state) {
 	case IDPF_VC_XN_WAITING:
 		/* success */
-- 
2.46.0.rc2.264.g509ed76dc8-goog

