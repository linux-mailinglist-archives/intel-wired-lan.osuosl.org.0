Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D55995F8CB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Aug 2024 20:10:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 72A5B405ED;
	Mon, 26 Aug 2024 18:10:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x-_YdMw_pBqq; Mon, 26 Aug 2024 18:10:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7E72A40520
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724695846;
	bh=XaxxGv7jFfJqyIYiIuAizJBdptFEUd7hS9a99HmhF8g=;
	h=Date:In-Reply-To:References:From:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yogvgOubl4ifbFVRrJ5epNcX9OU/DFboLAihll5Q/cu+2fyzBsWKbkAMg9RM6e1GY
	 q5kAUD57Y1bq9yCnt6TxUAAJGZPVdBUH+icvpeD4oMDVHiX/lpU9fT6J5taxAa2oGt
	 nWgiMmZpMTZWNWrKoPLhHxmghe5xafGRqmgIY+bP3XHlkBqSfeljknoIIrfZ19eFjX
	 6BKzIRwM7D+25EH/iBUaef1ocpdoBNfVD8fvIYkfbh97mq+gl3OPRnq44dItjfD9d8
	 uGHZ5ICMtN/G0CdGGswQWeI8lXc+uCHhFk6+s5GgGGTWsyNWktoaTLTD8ni3SVG5z3
	 XfGIpAp33efiw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7E72A40520;
	Mon, 26 Aug 2024 18:10:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 052A41BF2AB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2024 18:10:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B5ADB40541
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2024 18:10:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X2_tuMLeVmRT for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Aug 2024 18:10:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1149; helo=mail-yw1-x1149.google.com;
 envelope-from=3imxmzgokdxsd1efam9j8p7ff7c5.3fd9ek5c-n9i54-c1ec9jkj.fjlfjc.fi7@flex--manojvishy.bounces.google.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org AE8C9405C7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AE8C9405C7
Received: from mail-yw1-x1149.google.com (mail-yw1-x1149.google.com
 [IPv6:2607:f8b0:4864:20::1149])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AE8C9405C7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2024 18:10:41 +0000 (UTC)
Received: by mail-yw1-x1149.google.com with SMTP id
 00721157ae682-6b43e6b9c82so109655137b3.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2024 11:10:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1724695840; x=1725300640;
 h=content-transfer-encoding:cc:to:from:subject:message-id:references
 :mime-version:in-reply-to:date:x-gm-message-state:from:to:cc:subject
 :date:message-id:reply-to;
 bh=XaxxGv7jFfJqyIYiIuAizJBdptFEUd7hS9a99HmhF8g=;
 b=dTpytIrnJIWrL/+fg7/+P30cz3vrDuH5ULNSBGp1FK58wJs7E0xxKJnotHjYETQ/PX
 NMP/jpRs1VB0vFs2GEbnBkGLuW7I2AX5HlCjBiMIasn+t+ge9nbFiAsMIJAAkMAyRFwT
 BxZVtnJ3DMuOdVsFJToYo8FKED2ShyBsmH49176xHz2ykm4h/I6Ghoz4nx28wzn3+GvD
 jQKcXscHCnEUeldvHdkJ7PAtUNloc9/WBMGDeEgKPMaG2dM78nnR5xsNkCcTCbhGqvnY
 O0x1XRbd5q6Kd8cjHj2sMjlDe1UkqJK3MnUkQv1lc1kJFfew2cSOUALyDv9fWUQi8SXy
 n0cg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXvovDPHQYj0udKn9jfE8i/2CjybUooFq2LADzDhzx0Th6AmkOnWFSH0xrsACtiNBZJQ49ikyh4Tut5zPggY78=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzN2i4BmzXxt51x401BFWA5WreIRRX5HaxeJw5asM8k5Re1Wk2C
 6qXtUBv6vz/3kEGSw6UKcz1iSdgTJ/HCbE5VJoiaV/awaCYSNbEXRAgya2Q4N3A905WyjuZT01i
 Ao9+wQMPXUOOX4h/0xg==
X-Google-Smtp-Source: AGHT+IF8ZV8FsZbdR4VjcVdwhThUJ+yFCGwm3hwa2GL7dij+a+kUwRzolQFuh8av8q6i/+SntdPLY+t9PpMbMqR9
X-Received: from manojvishy.c.googlers.com
 ([fda3:e722:ac3:cc00:20:ed76:c0a8:413f])
 (user=manojvishy job=sendgmr) by 2002:a05:690c:4a05:b0:6b0:57ec:c5f9 with
 SMTP id 00721157ae682-6c61eed1562mr4756357b3.0.1724695840610; Mon, 26 Aug
 2024 11:10:40 -0700 (PDT)
Date: Mon, 26 Aug 2024 18:10:30 +0000
In-Reply-To: <20240826181032.3042222-1-manojvishy@google.com>
Mime-Version: 1.0
References: <20240826181032.3042222-1-manojvishy@google.com>
X-Mailer: git-send-email 2.46.0.295.g3b9ea8a38a-goog
Message-ID: <20240826181032.3042222-3-manojvishy@google.com>
From: Manoj Vishwanathan <manojvishy@google.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1724695840; x=1725300640; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:from:subject:message-id:references
 :mime-version:in-reply-to:date:from:to:cc:subject:date:message-id
 :reply-to;
 bh=XaxxGv7jFfJqyIYiIuAizJBdptFEUd7hS9a99HmhF8g=;
 b=BPaFoMU+P5TCbf8aYgq5xgpaDqUYDXNwdVPcTR2X0sQsMYX9no7vF/X+IvvRXVk0Pb
 iCdqwD8YaQES16Gr29q/f3DPnvc0m1iRqvKHWInaXGa5uVgx+llZIy5tayRitC2v9m0g
 JpTuzymZYGjFFIA+7kvu/yZAIfeFI9xXrrPlNSE59SYFuaGjwDxbv8XdsXbdcoC7Blkv
 1NxkaD7DTMlc4L7IAFxIpfPiqHXNxEDxMauFVitvSuOu42TEXsmOcWfxCdTLbNR83isy
 Fd9LEQNt1DORv1C2pkMN7g0w3Y58qTrpm41uVTuc7/S/8ud+WqN54WjfTqPBCtd6LUbr
 SPag==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=BPaFoMU+
Subject: [Intel-wired-lan] [[PATCH v2 iwl-next] v2 2/4] idpf: Acquire the
 lock before accessing the xn->salt
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
2.46.0.295.g3b9ea8a38a-goog

