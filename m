Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DEE6B0B486
	for <lists+intel-wired-lan@lfdr.de>; Sun, 20 Jul 2025 11:12:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5BAA841CAD;
	Sun, 20 Jul 2025 09:12:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SbwPIxjASAmR; Sun, 20 Jul 2025 09:12:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B799940C1F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753002720;
	bh=bVTh8scedwT+FOGTHFHCKCjv2dpHDWdPrkAltL4AcWE=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5dzN613uPZg3l9O/FAinLHYhDHGJDdrulo86UwVE5QntgSVBZUHbu1I9OqMJJClRB
	 LTGU500RkFZx0ktnaLimR+uzj6aL9bMpIdlN7l18qMeGra+3WaJXT5RU24dBHIOmAy
	 jylhXru/VdGpElA42dhIr9iXBwoCC24HQ+aLCJ3COOuedXl87Fp9NulEsRBZYjFkrR
	 V9sYaWWUPNuyyxyomdfDLCs/dkM6PE12wQD+hZAr76xuY/OzAcJ5my3x36Tv7NeY3O
	 pDOzCf1B4PvMjq8HvzVJt0yCyDJ3K1KMrcKh1P10BGXjMcn51GJx/+BAhrSiCQRDhS
	 2IbdbV9ZHtZHg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B799940C1F;
	Sun, 20 Jul 2025 09:12:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9E14DDA
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Jul 2025 09:11:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8F01784592
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Jul 2025 09:11:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w34X4YfjCX6d for <intel-wired-lan@lists.osuosl.org>;
 Sun, 20 Jul 2025 09:11:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::434; helo=mail-pf1-x434.google.com;
 envelope-from=kerneljasonxing@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0098881ED9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0098881ED9
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com
 [IPv6:2607:f8b0:4864:20::434])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0098881ED9
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Jul 2025 09:11:58 +0000 (UTC)
Received: by mail-pf1-x434.google.com with SMTP id
 d2e1a72fcca58-7490702fc7cso2096381b3a.1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Jul 2025 02:11:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753002718; x=1753607518;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=bVTh8scedwT+FOGTHFHCKCjv2dpHDWdPrkAltL4AcWE=;
 b=rCWIfHuQBMRAps+5D5gx79gHUVHFYad9QLT0WHH47h1BP+7kYTLAxPG8kdzFQ1QWp0
 uRn/aB9SsjMrNy28rohqOtBqYQXrCWtJHoo+c4gy96ySnGT7pFnWDfIuyuv+a8eJ+vrC
 NxQCZPsW2jKYLYn55CUoLWo/lcW4ur54dUIBbSAAG1NOv2MBs8k4z4rNEzQ2J6tILSOF
 cyAGOmXZEcdBBnTAVUSWRFMdJGL0RBXTwkRM5fgqmwCw4Th3X8dumrwSwH9gzYXIe9fb
 SVhBgNKhpiucyCbxrYL5N98SUj1e7uAuupLqdVoasczfjnMNp98PsO/sQRaLzwwGKQMJ
 mnwA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWncPOnrQA4MtkQwKs2XkbyY+wlhUe+t6AdIMxP5OwY3W0UQ9tZt/QXPKS8cBAWAg4KROr6MsQf4QW6KD2qJME=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwbhZCq6ombpssIOQ4inp0HutEfSDEbR8zwCw/xUKAasj73H/SB
 Jn0lvTzQuoegazGiIdwStux/XKjYP2ZmjXcT5NlEldLi7E3WTFW7iKNE
X-Gm-Gg: ASbGncsUtSNFTc2X7O5td6Hi3GO2hvQfZbdqb2t4S8KSGazyinAiIyQvmf3AMaQXQCm
 cyUv9iJwDvV0QCmQ1HDNSj/mnKLL1FAra3c5PZNtfFToHjaOCv7+kZipVH8DEtvlb1NbDFtpcU/
 k6wCs3Tk4rC9nuyJmc1MpIWV8Ye1gjBvUbHuWv1Qh3WcocsPpSp2mxuHYgEpVj+IUIeQlz1qos8
 HXQMMdJcf5PG80Uf4AA8vOiIr5hswJCiPh49FbTcol/WYbDxyK0gnoKDnSW50rIb3VqSC+/LxJE
 IntDEzSd8tZteu4UkuuJanV9XUSUYaL4PaPse1FvifTyR2Vptt16DFcsmzqeSsATSAt0hf+ivKu
 lAg7uxqz+lWaxg1LLyWwxbkHs2M53cD52B1MaCv96189VCOdydnLgT2KR460=
X-Google-Smtp-Source: AGHT+IGn9znc9ZrKLBsrlOwE9Bg2AnWaL3wLmuxWRd7FltjLlF/qlyzNXzxY+owS9C9xXPp/8i+nJA==
X-Received: by 2002:a05:6a00:92a7:b0:74d:f997:1b45 with SMTP id
 d2e1a72fcca58-756e81a0b16mr29927197b3a.8.1753002718242; 
 Sun, 20 Jul 2025 02:11:58 -0700 (PDT)
Received: from KERNELXING-MC1.tencent.com ([111.201.24.59])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-759cb76d53fsm3902585b3a.105.2025.07.20.02.11.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 20 Jul 2025 02:11:57 -0700 (PDT)
From: Jason Xing <kerneljasonxing@gmail.com>
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, bjorn@kernel.org,
 magnus.karlsson@intel.com, maciej.fijalkowski@intel.com,
 jonathan.lemon@gmail.com, sdf@fomichev.me, ast@kernel.org,
 daniel@iogearbox.net, hawk@kernel.org, john.fastabend@gmail.com
Cc: bpf@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, Jason Xing <kernelxing@tencent.com>
Date: Sun, 20 Jul 2025 17:11:23 +0800
Message-Id: <20250720091123.474-6-kerneljasonxing@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20250720091123.474-1-kerneljasonxing@gmail.com>
References: <20250720091123.474-1-kerneljasonxing@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1753002718; x=1753607518; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=bVTh8scedwT+FOGTHFHCKCjv2dpHDWdPrkAltL4AcWE=;
 b=bVH0RWch3pAN/IaNbPuklCippc7A9Hiw5mY3E+IjssX6QiINFqXe53I0mM+rdnZg0z
 lyyc7ezRKNohx3moBuY9XsAFCpHOZkNv1MxEV8WmR7PH39tSFhxHckS7wokopjhi6wpr
 LjNp4GSzQKig4Mka+RY9QWpHoUxq4royDXPOg9YFWIlXkf0dCRAQPFo2Lq8Z0GvoYFGL
 5hZn5C4R6VNlXA7MG453nyqAcQl8sKpSMt9/srOocR3tmWQ0LlCKFF3LOmC8qktuIPQ5
 ccMUHRdeMMILL352YjW7at9DkqZAj1UUgI5joYI7LOg4NLG0Qh+4i6FCKtmryatviLwJ
 kBHg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=bVH0RWch
Subject: [Intel-wired-lan] [PATCH net-next 5/5] ixgbe: xsk: add TX
 multi-buffer support
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

From: Jason Xing <kernelxing@tencent.com>

Use the common interface to see if the desc is the end of packets. If
so, set IXGBE_TXD_CMD_EOP bit instead of setting for all preceding
descriptors. This is also how i40e driver did in commit a92b96c4ae10
("i40e: xsk: add TX multi-buffer support").

Signed-off-by: Jason Xing <kernelxing@tencent.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 4 ++++
 drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c  | 4 +++-
 2 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index a59fd8f74b5e..c34737065f9e 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -52,6 +52,8 @@
 #include "ixgbe_txrx_common.h"
 #include "devlink/devlink.h"
 
+#define IXGBE_MAX_BUFFER_TXD 4
+
 char ixgbe_driver_name[] = "ixgbe";
 static const char ixgbe_driver_string[] =
 			      "Intel(R) 10 Gigabit PCI Express Network Driver";
@@ -11805,6 +11807,8 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	netdev->xdp_features = NETDEV_XDP_ACT_BASIC | NETDEV_XDP_ACT_REDIRECT |
 			       NETDEV_XDP_ACT_XSK_ZEROCOPY;
 
+	netdev->xdp_zc_max_segs = IXGBE_MAX_BUFFER_TXD;
+
 	/* MTU range: 68 - 9710 */
 	netdev->min_mtu = ETH_MIN_MTU;
 	netdev->max_mtu = IXGBE_MAX_JUMBO_FRAME_SIZE - (ETH_HLEN + ETH_FCS_LEN);
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
index 9fe2c4bf8bc5..3d9fa4f2403e 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
@@ -424,7 +424,9 @@ static void ixgbe_xmit_pkt(struct ixgbe_ring *xdp_ring, struct xdp_desc *desc,
 	cmd_type = IXGBE_ADVTXD_DTYP_DATA |
 		   IXGBE_ADVTXD_DCMD_DEXT |
 		   IXGBE_ADVTXD_DCMD_IFCS;
-	cmd_type |= desc[i].len | IXGBE_TXD_CMD_EOP;
+	cmd_type |= desc[i].len;
+	if (xsk_is_eop_desc(&desc[i]))
+		cmd_type |= IXGBE_TXD_CMD_EOP;
 	tx_desc->read.cmd_type_len = cpu_to_le32(cmd_type);
 	tx_desc->read.olinfo_status =
 		cpu_to_le32(desc[i].len << IXGBE_ADVTXD_PAYLEN_SHIFT);
-- 
2.41.3

