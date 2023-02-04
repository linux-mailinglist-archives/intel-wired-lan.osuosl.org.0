Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F243A68AA41
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 Feb 2023 14:36:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 962C94020B;
	Sat,  4 Feb 2023 13:36:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 962C94020B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675517811;
	bh=LuQQ5cChPh33fzgLhs5k2m11GYaYk68i0vLSD+ybzw0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7L4oS0jMM3NyAkn5YIGuvWk+w/oBfPsl+Jvr8m7KTtT3wprI7oCAHSNKN+SWzKrJV
	 en8GwSBa7S6y8R2vERW5xKbTMWCQqeOF88WXFICMP9Mp46W6t5HEZ/uWuMmXd2Fl6U
	 oBj55F5OMPleavlk/ZS4ri4u0u3p6FBD1JZs7cvr+l7Q1d6Zbgm/ualV7i5vlviY6/
	 g+CR9XFSW5EoJCTAVBKimWF9bAhgKssyXriuUoSulUSQs7mNBGoIQ8o1ztACBhopMb
	 BasXuzA6bIioIXN2ovtCTHh9PxEMQ5fqye4CN5NuabFdD49tJAUb5nVcwbF4YvM/UC
	 aVDuQEZUudhmw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9ciqO5zT_fjE; Sat,  4 Feb 2023 13:36:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8A5EB401AE;
	Sat,  4 Feb 2023 13:36:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8A5EB401AE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0DE431BF362
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Feb 2023 13:36:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DB72D8200F
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Feb 2023 13:36:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DB72D8200F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eUEOpdYK0Lin for <intel-wired-lan@lists.osuosl.org>;
 Sat,  4 Feb 2023 13:36:45 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2E5348200D
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com
 [IPv6:2607:f8b0:4864:20::1030])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2E5348200D
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Feb 2023 13:36:45 +0000 (UTC)
Received: by mail-pj1-x1030.google.com with SMTP id
 f16-20020a17090a9b1000b0023058bbd7b2so6753245pjp.0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 04 Feb 2023 05:36:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=lV+jIwfpIfjlKMz7MBn8qE6oOOJOfnotd/kmF+jUhhM=;
 b=UWcHbx089oS4FXJKUMH1Y0+kS9YGHf6+2G3JHnbWK+oTz2CtjLRrj0ywmvMXdZkG8i
 lMGLVRqDz1KdG405pSTpkDaAftTrMtuYxkM/iqSNL/mQtbaZraKl0hAWCbegN1wSFnll
 BQlCG/AWlk5ONEnarpfNMhG2lB95QJJWvQj5LQG/bpLVjPzD5dDWBrgxwLsB09kYbmZk
 dXKwCBfEygwh5xSSIupZHfcB7fD/JK577KAFS5KovNelVJd2pCcsb37WuRu9j/Q8YIH5
 mxREeG/abpGV/AgUH12a/fRJ9h/173MFI8bI7X/ddPx7d1TFjuo8BdQo0xwtICqSaGCo
 kdQw==
X-Gm-Message-State: AO0yUKU3W4T5IosQZwYBVg9nMY4uTZng6doQS3aq9yTPYoV6GpJfz3J6
 dQQnyfMSKHdCVMP/P+jFork=
X-Google-Smtp-Source: AK7set/9hEnfAU/wUiFJkKlogYqRqEH5TU8hHEUI8KzdRglUpSEDpc8oVQlWd81BxyL5jGimaAn0qg==
X-Received: by 2002:a17:902:f243:b0:198:eaac:464a with SMTP id
 j3-20020a170902f24300b00198eaac464amr2858741plc.42.1675517804585; 
 Sat, 04 Feb 2023 05:36:44 -0800 (PST)
Received: from KERNELXING-MB0.tencent.com ([114.253.32.172])
 by smtp.gmail.com with ESMTPSA id
 21-20020a170902c25500b0019605a51d50sm3463575plg.61.2023.02.04.05.36.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 04 Feb 2023 05:36:44 -0800 (PST)
From: Jason Xing <kerneljasonxing@gmail.com>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, richardcochran@gmail.com, ast@kernel.org,
 daniel@iogearbox.net, hawk@kernel.org, john.fastabend@gmail.com,
 alexandr.lobakin@intel.com, maciej.fijalkowski@intel.com
Date: Sat,  4 Feb 2023 21:35:34 +0800
Message-Id: <20230204133535.99921-3-kerneljasonxing@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20230204133535.99921-1-kerneljasonxing@gmail.com>
References: <20230204133535.99921-1-kerneljasonxing@gmail.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=lV+jIwfpIfjlKMz7MBn8qE6oOOJOfnotd/kmF+jUhhM=;
 b=YMsRv2WzJABVcHWfB8CthUOP1a1+ON3dEke2uXaOnLUc5PxwEBjlYxxUOhUbMBv4/w
 MoIXr4LmyB0eW0YOrUDdpTz3uJIkcHcZCC33DA2Uc4y7YA4oGcJANHOjWGUi2x5y4LCf
 Qpdpgr0j1rufoSGJKF95bdhpEZA4Zc1GyZ+34QVVXG1uMllzmZiPmrBF449GeBU02JqY
 1KsSq0OCVS+T0Cjhe/gVfgq2rKNYjbqk7uZDQJE4r9fqvsuPuO12NB945wFoNomj5gq3
 9/056OPoMhJXdty2jtW0CEJeRPqBIzln/7Xejjk7Cm8zr2Pi1TURmlYe7/Sg+xwUEVpn
 64Ag==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=YMsRv2Wz
Subject: [Intel-wired-lan] [PATCH net 2/3] i40e: add double of VLAN header
 when computing the max MTU
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
Cc: kerneljasonxing@gmail.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.org, Jason Xing <kernelxing@tencent.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jason Xing <kernelxing@tencent.com>

Include the second VLAN HLEN into account when computing the maximum
MTU size as other drivers do.

Fixes: 0c8493d90b6b ("i40e: add XDP support for pass and drop actions")
Signed-off-by: Jason Xing <kernelxing@tencent.com>
---
 drivers/net/ethernet/intel/i40e/i40e.h      | 2 ++
 drivers/net/ethernet/intel/i40e/i40e_main.c | 2 +-
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index 60e351665c70..e03853d3c706 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -107,6 +107,8 @@
 #define I40E_BW_MBPS_DIVISOR		125000 /* rate / (1000000 / 8) Mbps */
 #define I40E_MAX_BW_INACTIVE_ACCUM	4 /* accumulate 4 credits max */
 
+#define I40E_PACKET_HDR_PAD (ETH_HLEN + ETH_FCS_LEN + (VLAN_HLEN * 2))
+
 /* driver state flags */
 enum i40e_state_t {
 	__I40E_TESTING,
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 53d0083e35da..d039928f3646 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -2921,7 +2921,7 @@ static int i40e_change_mtu(struct net_device *netdev, int new_mtu)
 	struct i40e_pf *pf = vsi->back;
 
 	if (i40e_enabled_xdp_vsi(vsi)) {
-		int frame_size = new_mtu + ETH_HLEN + ETH_FCS_LEN + VLAN_HLEN;
+		int frame_size = new_mtu + I40E_PACKET_HDR_PAD;
 
 		if (frame_size > i40e_max_xdp_frame_size(vsi))
 			return -EINVAL;
-- 
2.37.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
