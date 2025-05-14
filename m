Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EF4BAB6EBE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 May 2025 17:03:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DF52B61006;
	Wed, 14 May 2025 15:03:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V6P5ofwWAKhf; Wed, 14 May 2025 15:03:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4EF2760BBD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747234992;
	bh=7+7k1tpsS3eWwO2wsFgDxbEabEFibI3m3NNh5VfQoPs=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=a7jTMC2iO0Nd94EUb8shvM3rzQCNYWp9gwzYNYb3410iRAloQQ56RRJB9EsPGr5p0
	 Od8n7PU/nCnonPh1OfYPA17BDTuumyS+UuDsWb/9dQTh+/cO+cvNqwCqlqqtngjoEr
	 7MBec2VWDWKmAVjlcaVJzpehgSoDO8F9hBQCIFex4rO2JwwtPfQopTB195uMmeg8HX
	 XVD4gCLCUH38NIOgrEy+zq8E++tb6A9ESkZi2FuiTn0wA4ldFUnGARfJY+pJko6qhW
	 pWk1Nd7mVngFGCHhf/tmxryj09XfXU5W0aSuc+rehqFqgwIdqDBADiF/QyezdiF3+V
	 Tk4yus80eVqYg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4EF2760BBD;
	Wed, 14 May 2025 15:03:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id D1F2A153
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 15:03:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B81E84045D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 15:03:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pnvacBEzOGW7 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 May 2025 15:03:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.122;
 helo=smtp-relay-internal-0.canonical.com;
 envelope-from=robert.malz@canonical.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A860E401CB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A860E401CB
Received: from smtp-relay-internal-0.canonical.com
 (smtp-relay-internal-0.canonical.com [185.125.188.122])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A860E401CB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 15:03:08 +0000 (UTC)
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 6F13E3F529
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 14:57:23 +0000 (UTC)
Received: by mail-wr1-f71.google.com with SMTP id
 ffacd0b85a97d-3a0b9bbfb0fso3907493f8f.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 07:57:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1747234643; x=1747839443;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=7+7k1tpsS3eWwO2wsFgDxbEabEFibI3m3NNh5VfQoPs=;
 b=CWuuSj9T4kz3oB9brYKf8uSAHOfAh3WhNS5XqzHzOt1an8Nh8FqtxnfFcO4W0QUXZr
 PH+zajc50fEigBO0tpzat/T8UB7QIJVQc9rWBMf14HjNwSEgA7vYqEffnvWMT9pfZu08
 gOWHpBcimBIBS3XEBS9aK3UfSeXT2YmYEx1/FIUBtUQh2zjsJphMOD1jeGhKKybJbc2C
 NDwdOVgARbU/blI4qzGSGvWh1IF4kGqodIm60s0wejUG6Ki0UoXaI/32Q+cchuKIBDel
 XwWO/z6ldIni5rDubsPIR811Sl3bbn7e5/PqFx7maYBKpsq7jG6w0LloJJhPPIHPVByz
 I7yA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWB8Pj1qUMMlhBEvfbRYLUEmNvahxSk+qlt1kvOid+k5ZXq7lBgx0Gm8MinyANlsI8su2BGmjPGSJS8//yB+PY=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yx4Vo8eNrBB6RYLnrlVPoS/x30BcZzwHdrFUtCYMEFWkJD00ODW
 Jo607tGX+j7m4lm+LKMgGPcZ7RTcPbt2rSapqE5zgJI1uVDFsA5YX6PTbeT7xjdEwAYAGMuI2xQ
 FoyMRYcojQgBpoRBe3d6M9cjQNivc2kNW5kkzcU7WGLUPn79/KGHNMATz35Rc2vIwSRAkmZnnqz
 W0t/6ppqQ=
X-Gm-Gg: ASbGnctrRIp9qQk4OKdd84f0lxM6aS/pX+MoXFyYx0lT7ccgQkmKNVGWfaR4e15GVk3
 3wOa7dBdgsF0i93++OIIQRkRJQTaJAq+vuqexSXC2gZ53i4Mp6u9d4y0IXaGnnOYOhyar8Mt4rl
 zaV1CJAOZPaJj0SvxOiTUt8Pze01TwM7wD2a/vS2RGp+vxial1nmZCHLCltJAIqh7R1nPDHwuim
 smvjGrzaw9TFSLL5Nf2o0qlsjklv5/qmb1CHjEnbLL8bK506u3mPh2uPVpclV2Wog5m/62WkNRe
 LEdxYcnWP+LrMg==
X-Received: by 2002:a05:6000:40dc:b0:3a2:561a:41f1 with SMTP id
 ffacd0b85a97d-3a349694f8dmr3043179f8f.12.1747234642926; 
 Wed, 14 May 2025 07:57:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHminhm62LGKa+8/9+h6U7bzvFx00HLLSMbMxtl8md8kiB2vmbRohsStRKKdb1jsuX7VdAa8A==
X-Received: by 2002:a05:6000:40dc:b0:3a2:561a:41f1 with SMTP id
 ffacd0b85a97d-3a349694f8dmr3043141f8f.12.1747234642367; 
 Wed, 14 May 2025 07:57:22 -0700 (PDT)
Received: from rmalz.. ([213.157.19.150]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-442f3369293sm34512765e9.6.2025.05.14.07.57.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 May 2025 07:57:22 -0700 (PDT)
From: Robert Malz <robert.malz@canonical.com>
To: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, sylwesterx.dziedziuch@intel.com,
 mateusz.palczewski@intel.com, jacob.e.keller@intel.com
Date: Wed, 14 May 2025 16:57:19 +0200
Message-Id: <20250514145720.91675-2-robert.malz@canonical.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250514145720.91675-1-robert.malz@canonical.com>
References: <20250514145720.91675-1-robert.malz@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20210705; t=1747234643;
 bh=7+7k1tpsS3eWwO2wsFgDxbEabEFibI3m3NNh5VfQoPs=;
 h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
 MIME-Version;
 b=T0nCXOtlLN/alS61IQzRVIo/WYU6z7sDBVHJ/CN+7fNfUXtcw/77+ShCrY5pec32u
 yNkQlLCU/yAzWfb7bUo368b/F6/JxiOdrHpRDnZLyepSxS7jToQeB9TNkoEhJLzL+p
 B81KDvYMNXkjl6GKigiHfB7jDVx57Q66Adc4ZJtdnDrxvw1s+9z7HEl8sqnt3oiI1Q
 OkNEdJo8DmK2bcqJe2k0p3cCzO1BgxWwd1NU3SuSj/K+KIfMPJlWNmFY+JTyuQvWrd
 7EaqqK+mhUEi6pEf9mfcouEP5eKXjcWBaiP6J7n45gus7ZQGyd8nhZcdPHdobP2tmg
 B0uPsv3YqFZQA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20210705 header.b=T0nCXOtl
Subject: [Intel-wired-lan] [PATCH 1/2] i40e: return false from i40e_reset_vf
 if reset is in progress
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

The function i40e_vc_reset_vf attempts, up to 20 times, to handle a
VF reset request, using the return value of i40e_reset_vf as an indicator
of whether the reset was successfully triggered. Currently, i40e_reset_vf
always returns true, which causes new reset requests to be ignored if a
different VF reset is already in progress.

This patch updates the return value of i40e_reset_vf to reflect when
another VF reset is in progress, allowing the caller to properly use
the retry mechanism.

Fixes: 52424f974bc5 ("i40e: Fix VF hang when reset is triggered on another VF")
Signed-off-by: Robert Malz <robert.malz@canonical.com>
---
 drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 1120f8e4bb67..abd72ab36af7 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -1546,8 +1546,8 @@ static void i40e_cleanup_reset_vf(struct i40e_vf *vf)
  * @vf: pointer to the VF structure
  * @flr: VFLR was issued or not
  *
- * Returns true if the VF is in reset, resets successfully, or resets
- * are disabled and false otherwise.
+ * Returns true if resets are disabled or was performed successfully,
+ * false if reset is already in progress.
  **/
 bool i40e_reset_vf(struct i40e_vf *vf, bool flr)
 {
@@ -1566,7 +1566,7 @@ bool i40e_reset_vf(struct i40e_vf *vf, bool flr)
 
 	/* If VF is being reset already we don't need to continue. */
 	if (test_and_set_bit(I40E_VF_STATE_RESETTING, &vf->vf_states))
-		return true;
+		return false;
 
 	i40e_trigger_vf_reset(vf, flr);
 
-- 
2.34.1

