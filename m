Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4448580B36A
	for <lists+intel-wired-lan@lfdr.de>; Sat,  9 Dec 2023 10:21:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8D984826E7;
	Sat,  9 Dec 2023 09:21:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8D984826E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702113683;
	bh=Y+ZnYWqtRncR6cq+lOyg0+1GFTZqwlwjDAiadcmUMds=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=fZUiTajj+4RrrfQdnEKk9GY4n6+7McxwBDkw2w8UY+qo8sgunvm04QKWqJBQXrpmU
	 OrGj6+wfLRbv47xlDfcyFXNXpP7adkEE8FnWlDKZeMWv1U5+whABm7ZW4iKPXNYVhc
	 I5JvRMyGFcZC1N2bL7QQmhqLHZ1J20MCsMm8d/RKU5dALg9oxOjGQvjaF3G7TYjJub
	 TICX+u8Pvd06g+9pZVHB+BzMSyTo+6J0KQOOx8QwqD+74p8WSqlwU17rZbm7H1CglD
	 Om3XjdPG0TSLOasB6MyGu7GY4F1igGsYcvVoOUHyoSw/8HbcHD387TCpxMUqOYCBkv
	 3wtGyO6CsJTrw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J67yJZ9pSGuY; Sat,  9 Dec 2023 09:21:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5FC7982660;
	Sat,  9 Dec 2023 09:21:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5FC7982660
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2DC691BF5A7
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Dec 2023 09:21:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 063D140198
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Dec 2023 09:21:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 063D140198
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Hv3fADoa_3no for <intel-wired-lan@lists.osuosl.org>;
 Sat,  9 Dec 2023 09:21:14 +0000 (UTC)
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com
 [IPv6:2607:f8b0:4864:20::62e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 182D14013C
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Dec 2023 09:21:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 182D14013C
Received: by mail-pl1-x62e.google.com with SMTP id
 d9443c01a7336-1d098b87eeeso26114885ad.0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 09 Dec 2023 01:21:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1702113673; x=1702718473;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=bblvwmXoSojziLcRhLwTRwHqvOAy0kdN8M7lX+Jxd5M=;
 b=A1vFfLSu3PhW/E3wNdTFSxBpvCFKxjYCOaqv07+W7rogaTDSochvLkGS1Fqw57wPyl
 ph36NsQZXme8wAw/97lWtvt8aB2GCx4fKv82L1Pl6ILPBJNFwJjTbzb6Z4wIu2vVGPYQ
 DF2UtTY6TgF111P+2W5sgnqbBRLfHp9g1HXZmwrgMd9ufD8eZLP95iqYu9MdW9vvg7RM
 /TkLpOeihqjGInUgLV9/9FOQm+5iXHiy7lYzXJIB7UQUVfTfFupa4soORip8sHpDo/yZ
 Oj/qmUsOfkqrwD8okQ5An1cWk41ec7sUNDnfPWSkyCBf+9kkK+iWE6uJOT/B+Zruhrmo
 iRNg==
X-Gm-Message-State: AOJu0YzdN0x/3IfvPx/4egPaZuPn+f5sxWRjhG48mIydOmKaC1V0plBH
 0Whwsqywq7MR2/SLlKnZ9C4=
X-Google-Smtp-Source: AGHT+IH4yx6pDxp/SMKIA9w78JG3/EcKyybmaFR7EE+OJm+nQ+almJ/er2zPN+uFjBiBOCZcl3c5kw==
X-Received: by 2002:a17:902:ce84:b0:1d0:9201:5335 with SMTP id
 f4-20020a170902ce8400b001d092015335mr1438142plg.13.1702113673325; 
 Sat, 09 Dec 2023 01:21:13 -0800 (PST)
Received: from KERNELXING-MB0.tencent.com ([114.253.37.67])
 by smtp.gmail.com with ESMTPSA id
 q3-20020a170902f78300b001d083fed5f3sm3023978pln.60.2023.12.09.01.21.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 09 Dec 2023 01:21:12 -0800 (PST)
From: Jason Xing <kerneljasonxing@gmail.com>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com
Date: Sat,  9 Dec 2023 17:20:51 +0800
Message-Id: <20231209092051.43875-1-kerneljasonxing@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1702113673; x=1702718473; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=bblvwmXoSojziLcRhLwTRwHqvOAy0kdN8M7lX+Jxd5M=;
 b=HNLl/9MQRoMAL6JqglvRlpfVd2vC9FqbCpPicJ+Pw5jIYCGTDMZzMsiY7ul6XeOfn+
 ZhmNH7vDflSkK7ueIcvi9EZHtBCSytDy+OvCXQ/GhZ/UMFEx3W2cOL6Zb1uoo8A5emY1
 LK4oFjZ1ClrBcE5ZWqPJgln1GfBlmYlJZzZtToKihsFcIn6tL/lbcuM+HFYwkokWSbas
 Wsdjy26uqZcVeuP5nb+ledkMNqdHs7Q303cPl+YQVvqjyC6UGPXDr74q2ODGOaoJHs4u
 /grTzCjbFSvfbjelhm/n+Etk+bSCR1tzGB+41Hnuly+UwSsUvhG4ZYXZiphgMTQ7Gx1m
 wPAA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=HNLl/9MQ
Subject: [Intel-wired-lan] [PATCH iwl-next v2] i40e: remove fake support of
 rx-frames-irq
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
Cc: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com>,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 kerneljasonxing@gmail.com, Jason Xing <kernelxing@tencent.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jason Xing <kernelxing@tencent.com>

Since we never support this feature for I40E driver, we don't have to
display the value when using 'ethtool -c eth0'.

Before this patch applied, the rx-frames-irq is 256 which is consistent
with tx-frames-irq. Apparently it could mislead users.

Signed-off-by: Jason Xing <kernelxing@tencent.com>
Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
v2: use the correct params in i40e_ethtool.c file as suggested by Jakub.
---
 drivers/net/ethernet/intel/i40e/i40e_ethtool.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index eb9a7b32af73..bf7ebc561d09 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -2895,7 +2895,6 @@ static int __i40e_get_coalesce(struct net_device *netdev,
 	struct i40e_vsi *vsi = np->vsi;
 
 	ec->tx_max_coalesced_frames_irq = vsi->work_limit;
-	ec->rx_max_coalesced_frames_irq = vsi->work_limit;
 
 	/* rx and tx usecs has per queue value. If user doesn't specify the
 	 * queue, return queue 0's value to represent.
@@ -3029,7 +3028,7 @@ static int __i40e_set_coalesce(struct net_device *netdev,
 	struct i40e_pf *pf = vsi->back;
 	int i;
 
-	if (ec->tx_max_coalesced_frames_irq || ec->rx_max_coalesced_frames_irq)
+	if (ec->tx_max_coalesced_frames_irq)
 		vsi->work_limit = ec->tx_max_coalesced_frames_irq;
 
 	if (queue < 0) {
@@ -5788,7 +5787,7 @@ static const struct ethtool_ops i40e_ethtool_recovery_mode_ops = {
 
 static const struct ethtool_ops i40e_ethtool_ops = {
 	.supported_coalesce_params = ETHTOOL_COALESCE_USECS |
-				     ETHTOOL_COALESCE_MAX_FRAMES_IRQ |
+				     ETHTOOL_COALESCE_TX_MAX_FRAMES_IRQ |
 				     ETHTOOL_COALESCE_USE_ADAPTIVE |
 				     ETHTOOL_COALESCE_RX_USECS_HIGH |
 				     ETHTOOL_COALESCE_TX_USECS_HIGH,
-- 
2.37.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
