Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 972162A65E8
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Nov 2020 15:09:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 344AB87560;
	Wed,  4 Nov 2020 14:09:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id biylCHkjm46D; Wed,  4 Nov 2020 14:09:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 996B287516;
	Wed,  4 Nov 2020 14:09:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8EC501BF2CE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Nov 2020 14:09:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8B647857C1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Nov 2020 14:09:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jUYUggUJycBM for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Nov 2020 14:09:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 07193810B6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Nov 2020 14:09:47 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id w4so6487762pgg.13
 for <intel-wired-lan@lists.osuosl.org>; Wed, 04 Nov 2020 06:09:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=YzZ/wVl7IVpa6qekpbqcxmPtcuUgeOFQO5frBo5Xdhk=;
 b=S+f8J1BLMMB2KLffbLNDm3H2iEhiqrofNTZMdAIHgyAZTWE5+4lZap6IBaHV0YHHbO
 r1HX/6xG4F4e7/gcil+Zz/zn4tMVMb36GNIYuBDwfBWEDHPMaXkL4yrMprN4a7B6kFsa
 KTaouOc3GsDSdhdYA7rmj5uRc3BnwW/oTQEZNHKnjrocE8aUzkJNuXJXXC2txlGCqiEp
 t74ZVW1XQDLKFWUiPdmUxZscbk+QDIUbYh2lSVZ7rlNyksyb8N/nLMAt/Oms0lZJnrx6
 JRgRkyYSIooMayxIUtMdVRrNR8iATdXjXjO5U2D/+Er6z9ABYVibR7p2Gwgk2RugtQpA
 S/Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=YzZ/wVl7IVpa6qekpbqcxmPtcuUgeOFQO5frBo5Xdhk=;
 b=MQ4IZcECNRZg9uWrGyAzW7byjtN+nZLhBg+ciZoVnc2NbwcglwMwmOpiLy+nc8yNay
 HES1v9jjqiiBkrRRPb3UoNUS5dPqxlloeP1K7b8JIdOG5C8ebRgrcwMb+Q4609q/64J5
 jcMKfuxFlIf0PF/5N7Ohrhe5Hzz056NuexEbOHTaTakC5Zz/qWeG/XoMTuROhvVZ44lK
 oHWwESsW9P0TYRxvqvx/Ibwc5We6q9ppd3e5TamU62p8SuUitxCOU9n4cImmVV3AwfEN
 3Og8vmZzAT83/rKr4xeLNwn3M5yep7QIZhKcvuboREpnCK+J7ncdtqXakz2l9tz0zGdS
 QPOg==
X-Gm-Message-State: AOAM533mbetrH2sk2QgqxLk+ry9Pq63ycvIqsUTZvGmVUWiJHt27g8hM
 xiFvvRGcgaiSQKj/pXvtZpc=
X-Google-Smtp-Source: ABdhPJxXLDKaUdff+0Jfv4EqzSjr4mGB/LwOQjUs0rs4hf2CocTMEUfHXdUUN58KhXCOFZopjGo9pQ==
X-Received: by 2002:a17:90a:e996:: with SMTP id
 v22mr4816309pjy.170.1604498986698; 
 Wed, 04 Nov 2020 06:09:46 -0800 (PST)
Received: from VM.ger.corp.intel.com ([192.55.55.43])
 by smtp.gmail.com with ESMTPSA id q123sm2724818pfq.56.2020.11.04.06.09.42
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 04 Nov 2020 06:09:46 -0800 (PST)
From: Magnus Karlsson <magnus.karlsson@gmail.com>
To: magnus.karlsson@intel.com, bjorn.topel@intel.com, ast@kernel.org,
 daniel@iogearbox.net, netdev@vger.kernel.org, jonathan.lemon@gmail.com
Date: Wed,  4 Nov 2020 15:08:59 +0100
Message-Id: <1604498942-24274-4-git-send-email-magnus.karlsson@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1604498942-24274-1-git-send-email-magnus.karlsson@gmail.com>
References: <1604498942-24274-1-git-send-email-magnus.karlsson@gmail.com>
Subject: [Intel-wired-lan] [PATCH bpf-next 3/6] i40e: remove unnecessary
 sw_ring access from xsk Tx
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
Cc: maciejromanfijalkowski@gmail.com, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Magnus Karlsson <magnus.karlsson@intel.com>

Remove the unnecessary access to the software ring for the AF_XDP
zero-copy driver. This was used to record the length of the packet so
that the driver Tx completion code could sum this up to produce the
total bytes sent. This is now performed during the transmission of the
packet, so no need to record this in the software ring.

Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_xsk.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
index f8815b3..eabe1a3 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
@@ -394,7 +394,6 @@ static bool i40e_xmit_zc(struct i40e_ring *xdp_ring, unsigned int budget)
 {
 	unsigned int sent_frames = 0, total_bytes = 0;
 	struct i40e_tx_desc *tx_desc = NULL;
-	struct i40e_tx_buffer *tx_bi;
 	struct xdp_desc desc;
 	dma_addr_t dma;
 
@@ -406,9 +405,6 @@ static bool i40e_xmit_zc(struct i40e_ring *xdp_ring, unsigned int budget)
 		xsk_buff_raw_dma_sync_for_device(xdp_ring->xsk_pool, dma,
 						 desc.len);
 
-		tx_bi = &xdp_ring->tx_bi[xdp_ring->next_to_use];
-		tx_bi->bytecount = desc.len;
-
 		tx_desc = I40E_TX_DESC(xdp_ring, xdp_ring->next_to_use);
 		tx_desc->buffer_addr = cpu_to_le64(dma);
 		tx_desc->cmd_type_offset_bsz =
@@ -417,7 +413,7 @@ static bool i40e_xmit_zc(struct i40e_ring *xdp_ring, unsigned int budget)
 				   0, desc.len, 0);
 
 		sent_frames++;
-		total_bytes += tx_bi->bytecount;
+		total_bytes += desc.len;
 
 		xdp_ring->next_to_use++;
 		if (xdp_ring->next_to_use == xdp_ring->count)
-- 
2.7.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
