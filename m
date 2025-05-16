Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 43983AB9945
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 May 2025 11:47:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 60AEB81521;
	Fri, 16 May 2025 09:47:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3Ibs5e2ZTBRY; Fri, 16 May 2025 09:47:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C6BD1813F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747388856;
	bh=ROE8L3YaWta5ImjYVCCqyUOCXfZoeYQlhcOMX8bYzao=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=uD6oOd3zq2xxQKVEzS/TGCi71KIrne1IHBjgoDytZ/VogCNNJwOagg0Hx6fvnbiHn
	 RLXpfo22cHzH1Wf0V7nXAMbEzQyUvMtq4Q23aTUcBNYNaIB1J/N5EBNMznkZTGmvg/
	 eLingbTK9L+bapV3DhXWVK8C1FeolUI3iU5PGxzoit2LvYwo1LCtFHTmXgz53Yx6An
	 mq1iLw8TfRmcauW4Vl2AvlaCYyEG4ERu9Ssl/rXXpWnIDT+kKjwkHNkTyNBdWpmjsV
	 eDOT2vYx5AAHAlTB03C8vEh5cef62v79KyF0nGHwn4Mb7VHhl0ObGdNlgc3Bvd88pe
	 vQf8lia0duoBg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C6BD1813F5;
	Fri, 16 May 2025 09:47:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 8BD95185
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 09:47:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 71C3F60641
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 09:47:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nhXL0b1G-clz for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 May 2025 09:47:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.123;
 helo=smtp-relay-internal-1.canonical.com;
 envelope-from=robert.malz@canonical.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org AF5E660687
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AF5E660687
Received: from smtp-relay-internal-1.canonical.com
 (smtp-relay-internal-1.canonical.com [185.125.188.123])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AF5E660687
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 09:47:33 +0000 (UTC)
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id DCF063F2A1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 09:47:30 +0000 (UTC)
Received: by mail-wr1-f69.google.com with SMTP id
 ffacd0b85a97d-3a1f7204d72so1096741f8f.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 02:47:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1747388850; x=1747993650;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=ROE8L3YaWta5ImjYVCCqyUOCXfZoeYQlhcOMX8bYzao=;
 b=mLyVDlPvxdwxaKW9jG0LdkggzZKZ66lNGCiL8z4KFXQTrpSjipfVz9LIb7Npum4vca
 NBjHA3dYW2VGxWVB5rq6V/H0CKApnCWPAk5ob3DqHBaIG9b94zoVxtvRNYgUn038NWWB
 BNc2fObMpv4jLSTALlbEx6rzrMwztACyflecwDUBjcuznt+qYF6zQNxOoyhbY10r8PQK
 WobR8qLUt7F3neIV2RKiOehEl94ouvhD9lKlH8lWkVHNGHcU/ba6f2Um778YsTJcWbj5
 Vp/dxv6dpeCp5Go2HP5uAVxAaMeIdi0LwIAX9pkH51psnfWfI+7AESUpRKtNNN5TPF62
 ojFw==
X-Forwarded-Encrypted: i=1;
 AJvYcCX/F+xvCYtHvJJ6wkp3SSiLXfvP1meO3bJlV9RF5hb1TmAuE2S5arRyRWeSVegTo92zzQHL/WsbqWCML/JZbFI=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzllK8EE2tad5+GF8RijGgTc4kXyxlhxCo9Sc0RtOGUcZ6Vm+nv
 XOIF+q5faV5lc4PeblcHLITrF8owV0LcGsbDTmo428VieFiCTJ8yj57pf11qKYjXE48LwoY6Hdc
 H/vFVDYPc4cIkr1Xn6I3rl+NJ0Jm5EE7nZLItIfw2Dia77REfEI1WD/zbtxAHKHgQPsA00spQit
 gEFZRl2POF0U4=
X-Gm-Gg: ASbGncv8LrDA7/A8uDrcbY97fX9BHtc7KB7NJPdr6uz8PYvvTpxoz/5mpNNReMcec5F
 DQ9sfzxNV0WYLlOYjaQ0SDChLLMtQASnMoXoAvQwwkleWHDM1IOLSddDWbL1t3rKGCx3xX7s2+h
 FDrAmP6zPcsGN0ATci9b07fH4++ZzC/Z0Lvr55KcbcZHgvlMRmQ46gHbIG7fXzF4pdDlEGUpDbK
 UXBZ/1mr2nPUuEiRp0uqPBz4xjSLGbNnST2/mvyOIhAElUweoai/ZWud9pzKRHe6eRKk4bCi1hV
 LQaWxmNeYpftyA==
X-Received: by 2002:a5d:64eb:0:b0:39c:12ce:6a0 with SMTP id
 ffacd0b85a97d-3a35c826787mr2935612f8f.21.1747388850423; 
 Fri, 16 May 2025 02:47:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGW/68AiiOfI1CjkEDC7SYJUC5vYNSXoFLVliIrOwpfKxrpS5HsEpGo+p0XvRgVvW/f68cNeg==
X-Received: by 2002:a5d:64eb:0:b0:39c:12ce:6a0 with SMTP id
 ffacd0b85a97d-3a35c826787mr2935593f8f.21.1747388850077; 
 Fri, 16 May 2025 02:47:30 -0700 (PDT)
Received: from rmalz.. ([213.157.19.150]) by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3a35ca88990sm2329962f8f.68.2025.05.16.02.47.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 May 2025 02:47:28 -0700 (PDT)
From: Robert Malz <robert.malz@canonical.com>
To: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, sylwesterx.dziedziuch@intel.com,
 mateusz.palczewski@intel.com, jacob.e.keller@intel.com
Date: Fri, 16 May 2025 11:47:25 +0200
Message-Id: <20250516094726.20613-2-robert.malz@canonical.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250516094726.20613-1-robert.malz@canonical.com>
References: <20250516094726.20613-1-robert.malz@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20210705; t=1747388850;
 bh=ROE8L3YaWta5ImjYVCCqyUOCXfZoeYQlhcOMX8bYzao=;
 h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
 MIME-Version;
 b=b76jRsm++n0xFb7CwhapxvH0f8nqlyz7GxgC1WN+HLKP83XS6nZCU0fNDJQgPuiVV
 P0kg/kPgKsh4ThwBdY6aS1EdYCRVkcHXnrdLbpwqABjVr02BeEMv/X8ycBPBIb1746
 NPl+WAt1yD0jKqGFQz3Pyb4fX94XRFH9fb3PVNkw6eOXEU74CiDZ2jgX5CKHfieQyj
 SxJXOBOm2zO16X7iWKEiUZMeAK5C87U+bWqUw4cTkFftso7+FNNDq+HAazkSvio6Gl
 cYnQCjiuhIWjjv/dNWffMVxREqwg7MsUSyWmX/Mz1UUT0fnaPxaJxVfhTjkDnxGUYu
 Uf3iNU1alE/bQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20210705 header.b=b76jRsm+
Subject: [Intel-wired-lan] [PATCH v2 1/2] i40e: return false from
 i40e_reset_vf if reset is in progress
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
index 1120f8e4bb67..2f1aa18bcfb8 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -1546,8 +1546,8 @@ static void i40e_cleanup_reset_vf(struct i40e_vf *vf)
  * @vf: pointer to the VF structure
  * @flr: VFLR was issued or not
  *
- * Returns true if the VF is in reset, resets successfully, or resets
- * are disabled and false otherwise.
+ * Returns true if reset was performed successfully or if resets are
+ * disabled. False if reset is already in progress.
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

