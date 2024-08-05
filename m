Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E364094817F
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Aug 2024 20:22:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6CC536077B;
	Mon,  5 Aug 2024 18:22:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HwFSBN3u59Pd; Mon,  5 Aug 2024 18:22:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BE58F6078B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722882132;
	bh=AjfMa5mWYDMjFPxjBHIXRM5aXOfqSsIFPcFyU5WggnY=;
	h=Date:In-Reply-To:References:From:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5I+XXHF7GVuZTGjYu5wAMXgbkI0qsKS/IZaBufJmg5imPpXC8/SqUIB3vCq+MaIc6
	 ucWpiChDxZUu1pDzblmMJJuGIa9Qsjy7Y/OtQZDIFiJpeP/49CDyrWH/1lUv2KIALU
	 59VOZ5fApnMwoKMhA0ko9YNFBs/5cJWUvJCUUFwuojw8grTyxLSnoJ+zhvSy+i1zgN
	 maBXUNKZsmXQQU3WuF3tMXdxTOzRljLtTTi4YcbgqX//u1B+3nSLL5I4aPOFoEL/Y9
	 3mew1d7nrODrYXrE6tNTZ2Fqsdl0kgrIJRUl/0ca3C5bBaCf7jgi6/ouA8VL3jCxmY
	 MvvigoxVyxftg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BE58F6078B;
	Mon,  5 Aug 2024 18:22:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 36E1E1BF34F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Aug 2024 18:22:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 240B480E16
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Aug 2024 18:22:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sPnXMQ3Gi_37 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Aug 2024 18:22:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::b4a; helo=mail-yb1-xb4a.google.com;
 envelope-from=3ubixzgokd4erfsto0nxm3lttlqj.htrnsyjq-1nwji-qfsqnxyx.txztxq.twl@flex--manojvishy.bounces.google.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4418C805B0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4418C805B0
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com
 [IPv6:2607:f8b0:4864:20::b4a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4418C805B0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Aug 2024 18:22:10 +0000 (UTC)
Received: by mail-yb1-xb4a.google.com with SMTP id
 3f1490d57ef6-e05e9e4dfbeso18235719276.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 05 Aug 2024 11:22:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1722882129; x=1723486929;
 h=content-transfer-encoding:cc:to:from:subject:message-id:references
 :mime-version:in-reply-to:date:x-gm-message-state:from:to:cc:subject
 :date:message-id:reply-to;
 bh=AjfMa5mWYDMjFPxjBHIXRM5aXOfqSsIFPcFyU5WggnY=;
 b=dcRWi157l4tX9O+l50pHuy41vrT6zudMaD1N7vUORZtsDf8iCOWYhSn5Kh7GjHPU6Y
 2JlEjdfaKBngsnIx5tr+mbhRAH4Th8zqUhkzhtGLWWH9TMymUPmP1XONSnFrsLYuD6bY
 l/lK4L/FLx0AbyDwjVVLdfcSNkQed+rcgFX8bZvtbcYowJ0x9Se4BUBgaHNTbjwXvT5x
 A3GUrshHuI5tIpWtcShPBTqGBrOW+tHr6M9LEkx96NmEZAU9ldEf5PanpwHjDDD7UqV9
 rw2OdQavP9QZYLNsR8X6xXYs6tYfdImGjrno3xNtEpId2M9TRI2BEez+uF3XpkpUYAxz
 B31g==
X-Forwarded-Encrypted: i=1;
 AJvYcCWPvs5mEDBXfb+pXoJGoY8XRwIiS2sCbeK4cvJTnejjJ+1XvRy5z/EPx18mLFjbogqs3nyhFjOoLGwL+ft5qzoHTTHFkEsYx9kcE4+sx+syVg==
X-Gm-Message-State: AOJu0YxbC0Ta/65X3Ws2NezNYnJ0gYtnGjgzAQuMUD2z6Q9LC0HMU+qO
 +teisTHRufpvm+aMTXi693G217c2ek5S/Hau06zJdOLndN+1rw722OS+nSIeJoESflaf+xyaUGT
 WzQ6yAvEcdCUxjoWKuQ==
X-Google-Smtp-Source: AGHT+IHCPNs9Tiq32TS0Ua7hUS/2gdghbISYZ40wIR/JhPaFTyklM+5Gd2j16SBt7KzmpfHggcEHuQWwCh+QTt7E
X-Received: from manojvishy.c.googlers.com
 ([fda3:e722:ac3:cc00:20:ed76:c0a8:413f])
 (user=manojvishy job=sendgmr) by 2002:a25:9008:0:b0:e0b:f46d:a2bb with SMTP
 id 3f1490d57ef6-e0bf46db4edmr35101276.11.1722882128913; Mon, 05 Aug 2024
 11:22:08 -0700 (PDT)
Date: Mon,  5 Aug 2024 18:21:59 +0000
In-Reply-To: <20240803182548.2932270-1-manojvishy@google.com>
Mime-Version: 1.0
References: <20240803182548.2932270-1-manojvishy@google.com>
X-Mailer: git-send-email 2.46.0.rc2.264.g509ed76dc8-goog
Message-ID: <20240805182159.3547482-1-manojvishy@google.com>
From: Manoj Vishwanathan <manojvishy@google.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1722882129; x=1723486929; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:from:subject:message-id:references
 :mime-version:in-reply-to:date:from:to:cc:subject:date:message-id
 :reply-to;
 bh=AjfMa5mWYDMjFPxjBHIXRM5aXOfqSsIFPcFyU5WggnY=;
 b=Z1+sptGjgshY9XRww1DIJ0lxue2SMdIJve2XFehYOn9PJXPOlXD1SWlJp4XpVk0C+9
 ZbVV8ZJS1LSj/fnZ50OMQ6k4t30WkOvtKaX2ppdOEd0qeYyull9Oe7+OPdANFK0eUuxY
 myNH/V3uCF87ki0uEa/MSOdKVC6Xob2TINHuZocg1wHF9dBub+gRh4Q/J7buwXHLGZuB
 2iUi1N2x1NR4guPvjhL5JWKCVFmgnkRMIq0qeGCVNZfxGlUocsBWQTdJdc4i49Dr5QBz
 yfbuqaOXuuqlxnFs6vN0Zz7FB2HjK9v2OIx/+AroHwcxofDXeC7ty3zP03FVDc0CBSfB
 TDjQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=Z1+sptGj
Subject: [Intel-wired-lan] [PATCH] [PATCH iwl-net] idpf: Acquire the lock
 before accessing the xn->salt
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

The transaction salt was being accessed before acquiring the
idpf_vc_xn_lock when idpf has to forward the virtchnl reply.

Fixes: 34c21fa894a1a (=E2=80=9Cidpf: implement virtchnl transaction manager=
=E2=80=9D)
Signed-off-by: Manoj Vishwanathan <manojvishy@google.com>
---
 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/=
ethernet/intel/idpf/idpf_virtchnl.c
index 70986e12da28..30eec674d594 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -612,14 +612,15 @@ idpf_vc_xn_forward_reply(struct idpf_adapter *adapter=
,
 		return -EINVAL;
 	}
 	xn =3D &adapter->vcxn_mngr->ring[xn_idx];
+	idpf_vc_xn_lock(xn);
 	salt =3D FIELD_GET(IDPF_VC_XN_SALT_M, msg_info);
 	if (xn->salt !=3D salt) {
 		dev_err_ratelimited(&adapter->pdev->dev, "Transaction salt does not matc=
h (%02x !=3D %02x)\n",
 				    xn->salt, salt);
+		idpf_vc_xn_unlock(xn);
 		return -EINVAL;
 	}
=20
-	idpf_vc_xn_lock(xn);
 	switch (xn->state) {
 	case IDPF_VC_XN_WAITING:
 		/* success */
--=20
2.46.0.rc2.264.g509ed76dc8-goog

