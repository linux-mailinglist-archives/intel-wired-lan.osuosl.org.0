Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 55FA2AB9944
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 May 2025 11:47:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0AE554154F;
	Fri, 16 May 2025 09:47:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ARxX7YsqoxRh; Fri, 16 May 2025 09:47:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 74E3B415D9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747388857;
	bh=NTYKT/ZNnrUF2nxl5cPc8Yu5IEEXLL1/o9RX7f+x5ns=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3qDXrRdnhprUlyjhOVoHcV0MhSQ9tfUB+EMApEF38WKSrCPlbAeOU1fvsgu4QbMvO
	 FEGzi6lOpjknjhXVl8BkBynMpHe7efxisfOyJoMXtcLnUX5c2/8rLcq+QIBc1IFB63
	 45MFqxEBnBYtvv9HDlte6d9DuXFCSPY9IHgI9FFbITQQeGlTpcnGVh5vHUwOHaam86
	 U/3iOJ8OcqELRReoxx/aM/BeU35SAfECJ8LiKqp8UY2ntACXcahf4fgGew9q6DJK3P
	 ad0nPgHKyF68daCU8X83jhgTcsfVKwvmCFJLqBTnszvr0z5je6NVoxoh9xJWwDnZPZ
	 /Kb4OEpSY7NYg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 74E3B415D9;
	Fri, 16 May 2025 09:47:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 0C6C21AB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 09:47:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F0F4F813F2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 09:47:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4xCKAvQV1jWf for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 May 2025 09:47:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.122;
 helo=smtp-relay-internal-0.canonical.com;
 envelope-from=robert.malz@canonical.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0D5F38136B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0D5F38136B
Received: from smtp-relay-internal-0.canonical.com
 (smtp-relay-internal-0.canonical.com [185.125.188.122])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0D5F38136B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 09:47:34 +0000 (UTC)
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 73CD73F21F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 09:47:32 +0000 (UTC)
Received: by mail-wr1-f71.google.com with SMTP id
 ffacd0b85a97d-3a352250175so808304f8f.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 02:47:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1747388851; x=1747993651;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=NTYKT/ZNnrUF2nxl5cPc8Yu5IEEXLL1/o9RX7f+x5ns=;
 b=m34nSxhV4uDBZrJykwwQ8ov/VUtKpUMGZd00meca2qOokTbazWJo4jHQ6c0t3coIra
 tH/UhO8D/c/zodxvPPRrcE126s2cfqBkfB4SbEThoo8ZqjXz7/3dVbeFhUwwp7QDm7oq
 iX8madpDCjFr9d0/WXVjE074Bn+xp1oRIjVshYKV/mSFGmW9ZrjpHQsByitjtypHjF0g
 CSuCBi8Rv8Rq6Vkr2XfioE7ffcbLZgRaaPkqa6URDJiFVaXWpwdo8otRFZC8OJ8l3iWI
 EgaPpHxwPHuF0ykNGYNv8qDqb/4BxR5R5D3GaiykqyoXGcBRshd7dYG6MHunMFWLx3RP
 IRDA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVGJxcelRJ+28MZ1jvUv6/0MPIffcMj9aKB/lZ9Hgr8w/zgg7Q9gLVi+wlnYh2BQ2AqbXkFdQSJyZuxiVKXf60=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yy5ZZghRanuOqsozrqNjOCef+JL3bkMfHpMLKM8PMvFHpEXx874
 avz5RZrv+pgqFaraFagGqjdyJsGE/V9KIs+HjMWeZzvMI0IKrC0kGSOsF17zykacDkZfci0s0jG
 kHuxchHHZZvTuQSGbSbTMTlYSe0AqATtcooWFGAlGH0eT3GxTCH0wsNUnlCV0rGINt+DharFZLN
 a0Q23+sungs3c=
X-Gm-Gg: ASbGncsevC49D6sg1BPhesYhs2DsqzU+FW24B3bojnH4wxhgU350/MY7r/a6V0IW/NN
 a/jLQ6mhD8eRGMF062inLHOsjvbSV0EYHuXmfFg38lDOmHxHDSuu94SKLgEcPm4yOVKwVgFIXym
 xa3Tv7ZRFPKhQ6NoGDyFWvN82mxDTsOS7JoHLNdbRsE+MDcRgA/H7NYkSyDQOrzg+s6pN6BQHra
 VSXEMTjEd8ZxZtHmqLBh60tF0wsmRyGLgUt2imZg+YWWfTQz6EJX17YWZD8Z/ppTvtnVutkITIP
 h2jZwWiJgUhTPA==
X-Received: by 2002:a5d:64ee:0:b0:397:5de8:6937 with SMTP id
 ffacd0b85a97d-3a35c840cfcmr2436874f8f.41.1747388851612; 
 Fri, 16 May 2025 02:47:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHsVLCp0OAgUC7815/XGK20Z8T28QvsR+G5GV4g/h2gvQcjtasvvILUydm0cm7mwEM5x68ImA==
X-Received: by 2002:a5d:64ee:0:b0:397:5de8:6937 with SMTP id
 ffacd0b85a97d-3a35c840cfcmr2436846f8f.41.1747388851245; 
 Fri, 16 May 2025 02:47:31 -0700 (PDT)
Received: from rmalz.. ([213.157.19.150]) by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3a35ca88990sm2329962f8f.68.2025.05.16.02.47.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 May 2025 02:47:30 -0700 (PDT)
From: Robert Malz <robert.malz@canonical.com>
To: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, sylwesterx.dziedziuch@intel.com,
 mateusz.palczewski@intel.com, jacob.e.keller@intel.com
Date: Fri, 16 May 2025 11:47:26 +0200
Message-Id: <20250516094726.20613-3-robert.malz@canonical.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250516094726.20613-1-robert.malz@canonical.com>
References: <20250516094726.20613-1-robert.malz@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20210705; t=1747388852;
 bh=NTYKT/ZNnrUF2nxl5cPc8Yu5IEEXLL1/o9RX7f+x5ns=;
 h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
 MIME-Version;
 b=OWKJirrqUyzUI3fa9yDwtinjBuPd3Mv1rjVlXPgBpF+MLatbMbTj710+9cfmIzbj8
 I2aEP5dAmtqCwEPRSi2h98GXILEGMT0PgQXNTZXLrioBYRnoBrvfimtR8Av7zkxbQJ
 EZAXuQnucMsnKdWCVanvNnumDfeVM2N2as5+U8xmeVp1c0h1Vhkm4RIfdbVb/Ic+ne
 amSj2EJ69PxR9HCy/0KDkNOue+JkBS4dq9+guzx2KllO/q0f4RvZZ6IUPT6rZjIoo3
 MREATjVv9wHZM5DciMAtXzzQWZNbttmYQ0U6m9+kZOt+YVEmdS4eZGhHtPnc3zMBh1
 UjixEjbHvq/xA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20210705 header.b=OWKJirrq
Subject: [Intel-wired-lan] [PATCH v2 2/2] i40e: retry VFLR handling if there
 is ongoing VF reset
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

When a VFLR interrupt is received during a VF reset initiated from a
different source, the VFLR may be not fully handled. This can
leave the VF in an undefined state.
To address this, set the I40E_VFLR_EVENT_PENDING bit again during VFLR
handling if the reset is not yet complete. This ensures the driver
will properly complete the VF reset in such scenarios.

Fixes: 52424f974bc5 ("i40e: Fix VF hang when reset is triggered on another VF")
Signed-off-by: Robert Malz <robert.malz@canonical.com>
---
 drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 2f1aa18bcfb8..6b13ac85016f 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -4328,7 +4328,10 @@ int i40e_vc_process_vflr_event(struct i40e_pf *pf)
 		reg = rd32(hw, I40E_GLGEN_VFLRSTAT(reg_idx));
 		if (reg & BIT(bit_idx))
 			/* i40e_reset_vf will clear the bit in GLGEN_VFLRSTAT */
-			i40e_reset_vf(vf, true);
+			if (!i40e_reset_vf(vf, true)) {
+				/* At least one VF did not finish resetting, retry next time */
+				set_bit(__I40E_VFLR_EVENT_PENDING, pf->state);
+			}
 	}
 
 	return 0;
-- 
2.34.1

