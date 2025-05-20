Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AF5AEABD1FF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 May 2025 10:32:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 40FDB60789;
	Tue, 20 May 2025 08:32:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aT2dJ2nq5TyY; Tue, 20 May 2025 08:32:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9F6DC60E2D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747729922;
	bh=UG+Gfq4wk+7rHPVUcE6WcDOxOs2F6wOE7UjEgZb39xo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hR+nPmntbwQVXdLg94T0qz5hll0gujX1ReXqqmLYKlVCvYdO8Pw93cJLwCLiBpJLv
	 W21oVnqbgrKISVqNcZvxkiIUq7CppU1DW6F7EZC4PMlvb5m/eMCtZwW18dwoeFflyO
	 tMQUkEYXCk7My/KotmPj38UDR8yjT98/K0aea5scaVUAyckLklBbboVBYfLk6mJt9p
	 PKbqu2g32cvvaNCmhZ9NORy6xc7uQ4t6C1rGmYlXxGJOujBDwT3hUT8gPiX2FQ60fM
	 AQefzO3liDvDuujdiZpHs+gU0ID6YTmlbOcek8uKTUsiJ6hiFJ61hR8e6AQRuNBpSw
	 HUwbf4q4NaOGw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9F6DC60E2D;
	Tue, 20 May 2025 08:32:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id DB3E9193
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 08:32:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C162B80DC9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 08:32:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OUUpS6v7MzlN for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 May 2025 08:32:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.123;
 helo=smtp-relay-internal-1.canonical.com;
 envelope-from=robert.malz@canonical.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 108F0814C4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 108F0814C4
Received: from smtp-relay-internal-1.canonical.com
 (smtp-relay-internal-1.canonical.com [185.125.188.123])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 108F0814C4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 08:32:00 +0000 (UTC)
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id CC9AE405F4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 08:31:56 +0000 (UTC)
Received: by mail-ed1-f70.google.com with SMTP id
 4fb4d7f45d1cf-601aa0cb934so2080706a12.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 01:31:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1747729916; x=1748334716;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=UG+Gfq4wk+7rHPVUcE6WcDOxOs2F6wOE7UjEgZb39xo=;
 b=D43AeudVA6ztQgIb1vGFDiPV86EATrNYA0m31bpIbygODpj/xsqecmCfpkmPGEDA49
 +zUmyOCgC9zWjeXD+lJ/wfMGLr8BI6KwebHLwKQWU5maPSg6FfIZLJHBkvFkrhih+S+a
 K/ewYWObXmuCvsX2iOyE9wHtUDIEmvh6s8UrSrsQ3N2Xop4PTAX6hrUCkNOsZWSqeqSH
 pRhMfc5w4g1BX9AYJE1w9tybOyIPW1/qzk4hUPRGld5NYy2ByPubMvXu+H41G7k/p8ai
 MvCOux1z+kx5fER5s600xmlC200/yXrO6riFz4Q3Nnv+LWx9eGx6+QJDItC2wleuTvNs
 yOdQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUsdto+/w440G5NTaJpqsRfNCNM/0l6UOC7QXZfvIIOA9g+VDtwV8kWqW87+onMC2gipozxec8R9nsxduTvenQ=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyZNb6qi+cG0ce4LBU0g0GXvdedW/Ak6Lv5YmhQpj6RDS82TiZV
 g3PGlWqY6refsVpmbk3qperT6RVxKWXACUEpfTWttHwFltZPvF1FwqlADpuUMzCTrl9DpMRoRNi
 tUrQupQHbpfPP4A/d3Ezdl4WqpNIy6Gg3Svvl/X3Miz/E7ehvMBdf9vZcFnDyZStlbxHLqzFXbh
 KQagxWS2uxCD0=
X-Gm-Gg: ASbGncvdpT9tCiA5m2e6QqKc83V+ifV05WE8O4bZ7hMpzBO++9d43OtaNnvoQM+ALMz
 TZUQlRFQJpqpQFMyei0HbkJmyZexE6VgOXwWdu61VmhGhwktr4Y+LQyFpoeyW7n3NlMpzoPWZVr
 PAKNmBL/r7GBq+GsLE2CqxljWyafyh/+q3qF4LEYUdes9hkOWqy6CObu48ShcQLwghZyaRe6zcr
 R2HhBm94FPoZ8Ft2a3Ul4tFP3nVYu2D8PHei11tPI341ukhgKGe4IpbUrpzETfaw8MPTAPeZqXH
 +p//kZrpr8o=
X-Received: by 2002:a05:6402:51c9:b0:600:1167:7333 with SMTP id
 4fb4d7f45d1cf-60114099a62mr12345461a12.10.1747729915815; 
 Tue, 20 May 2025 01:31:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFIYx5ZBbx8i29wv+6hI1lmWOArIYxJak/BwCscuYI0qUpO6y+AnyWWSy7UutMwfLndkUZcQg==
X-Received: by 2002:a05:6402:51c9:b0:600:1167:7333 with SMTP id
 4fb4d7f45d1cf-60114099a62mr12345438a12.10.1747729915371; 
 Tue, 20 May 2025 01:31:55 -0700 (PDT)
Received: from rmalz.. ([89.64.24.203]) by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-6005ae3b824sm6857875a12.79.2025.05.20.01.31.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 May 2025 01:31:54 -0700 (PDT)
From: Robert Malz <robert.malz@canonical.com>
To: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, sylwesterx.dziedziuch@intel.com,
 mateusz.palczewski@intel.com, jacob.e.keller@intel.com
Date: Tue, 20 May 2025 10:31:51 +0200
Message-Id: <20250520083152.278979-2-robert.malz@canonical.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250520083152.278979-1-robert.malz@canonical.com>
References: <20250520083152.278979-1-robert.malz@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20210705; t=1747729916;
 bh=UG+Gfq4wk+7rHPVUcE6WcDOxOs2F6wOE7UjEgZb39xo=;
 h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
 MIME-Version;
 b=DkdAKMi7R0HP+Eeo+ixg3HWxHo9p4omVgG52hoTanO3OmdEhEnz/c/djuu1z+IeTZ
 Ri6FXne0XsDQChFikGkjosYJ2hX36CdlK4DPP83jdxgtPtdCnrw04An4QpAKgzqg8B
 25AqN18TSY9UEXQ2Bl6j+Pct1mFMCLdZbLc0GP6GNBkOjwtfzM8ovom1sR8gYcbg8A
 0qRRbu8W0LNARPIscdO/Om+E7lCQoth8h7G+l1srxM+kSo3avOaG5YBjqv1BKygGJZ
 DedhTwatR0eB8YPe/4J177hNHykTXJL9jm1r7cygesZsh/Lz27NjR9/JBNBtuN00oq
 N2CrY5bWAyuwA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20210705 header.b=DkdAKMi7
Subject: [Intel-wired-lan] [PATCH v3 1/2] i40e: return false from
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
index 1120f8e4bb67..22d5b1ec2289 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -1546,8 +1546,8 @@ static void i40e_cleanup_reset_vf(struct i40e_vf *vf)
  * @vf: pointer to the VF structure
  * @flr: VFLR was issued or not
  *
- * Returns true if the VF is in reset, resets successfully, or resets
- * are disabled and false otherwise.
+ * Return: True if reset was performed successfully or if resets are disabled.
+ * False if reset is already in progress.
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

