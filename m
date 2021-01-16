Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4465C2F8BD4
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 Jan 2021 07:14:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EF5A32E1A7;
	Sat, 16 Jan 2021 06:14:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Duplicate header field: "References"
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cWpFScvjJKu8; Sat, 16 Jan 2021 06:14:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 20AE92E1A4;
	Sat, 16 Jan 2021 06:14:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 18CB71BF861
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Jan 2021 06:14:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 150F885BAE
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Jan 2021 06:14:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Duplicate header field: "References"
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lhL1o9tn5G9A for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 Jan 2021 06:14:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com
 [209.85.215.172])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F244386B46
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Jan 2021 06:14:38 +0000 (UTC)
Received: by mail-pg1-f172.google.com with SMTP id v19so7398769pgj.12
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Jan 2021 22:14:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=tdERieQxHdGfwIbBa+vBjrBhMvCQN0KrezwB3bCvhCI=;
 b=AjcIgbmspBRodbPF6HCP12RUDlCEdUblG8XgtE6rAarmbJbtnjqyW9JxUvl2IJYV1e
 F6SJBjnt5ofo5gojJxy4deiqtVaQUguzqUpeQF4D0+gDroeYtpC+ecQ86SKT9Vb3NOy/
 eIJ+SisYel2+kYCVsbNNT70NJ2ny5P5mzNtfNHibf+rDppRbGGupUZUDDcsnPxpl085U
 EGb+O7JpM+uD76HSJuBKLBA0zh8Q0jc75fCC/LRWCPEXgAif69mx8VQVsEMGuotoAvSN
 JSvV8CDACiLR6GGHsNZYteuY03NTiWAa6ka0WyS6CQVe/EqZzHYmAgmpeiu+iCsfpu6R
 PiNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=tdERieQxHdGfwIbBa+vBjrBhMvCQN0KrezwB3bCvhCI=;
 b=PVn5RSdgS6cM6KELdpIb9RKdEpatcuP2b4RTIjV5c7k9cIVQHMEQpdWJJn48a5LrjE
 19Z9gjx/ubIyu8iNGYuRKoz/Ao6l080K/iLLOasnw4H00IES7ksdkYGPFTnl7iDNUfa2
 wBJJgc505a0gWL5Kin1IPhJI17lBvnnldrNbIBl9oC8L+xQSx77W4nQWAnJwufTa7FM+
 v0whBAR624fiGh3nmC+sFea/4fOf4wZ8YjHmtr7BcvQsMpiJP77hWYqyiLEUa9CS3H+d
 1PX1EXWUz86CYYHO6TkUSvBPi2HpBmMwRmjNBh4Ufo6eW6GT3Tuq1cqX1N5yfz1azgse
 LZew==
X-Gm-Message-State: AOAM531NI59nqY234givN/ZWuMZlvYacU8m6pG4fID6KDbp5an0eBxQ2
 UFjE2cGH4fRYVtA6CqeZG60=
X-Google-Smtp-Source: ABdhPJyHhkO2bjdkIB45X0LnolVIdaFq4kG082tSkw1Um22ir/+9vGKKnuz4igyhIXt4mGN0dy7uKg==
X-Received: by 2002:a05:6a00:a88:b029:19e:4ba8:bbe4 with SMTP id
 b8-20020a056a000a88b029019e4ba8bbe4mr16769998pfl.41.1610777678637; 
 Fri, 15 Jan 2021 22:14:38 -0800 (PST)
Received: from localhost ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id y189sm9593875pfb.155.2021.01.15.22.14.37
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 15 Jan 2021 22:14:38 -0800 (PST)
From: Xin Long <lucien.xin@gmail.com>
To: network dev <netdev@vger.kernel.org>,
	linux-sctp@vger.kernel.org
Date: Sat, 16 Jan 2021 14:13:42 +0800
Message-Id: <c7cd3ae7df46d579a11c277f9cb258b7955415b2.1610777159.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <f58d50ef96eb1504f4a952cc75a19d21dcf85827.1610777159.git.lucien.xin@gmail.com>
References: <cover.1610777159.git.lucien.xin@gmail.com>
 <34c9f5b8c31610687925d9db1f151d5bc87deba7.1610777159.git.lucien.xin@gmail.com>
 <aa69157e286b0178bf115124f4b2da254e07a291.1610777159.git.lucien.xin@gmail.com>
 <c1a1972ea509a7559a8900e1a33212d09f58f3c9.1610777159.git.lucien.xin@gmail.com>
 <7b4d84fe32d588884fcd75c2f6f84eb8cd052622.1610777159.git.lucien.xin@gmail.com>
 <f58d50ef96eb1504f4a952cc75a19d21dcf85827.1610777159.git.lucien.xin@gmail.com>
In-Reply-To: <cover.1610777159.git.lucien.xin@gmail.com>
References: <cover.1610777159.git.lucien.xin@gmail.com>
Subject: [Intel-wired-lan] [PATCH net-next 6/6] net: ixgbevf: use
 skb_csum_is_sctp instead of protocol check
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
Cc: Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>,
 Neil Horman <nhorman@tuxdriver.com>, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Using skb_csum_is_sctp is a easier way to validate it's a SCTP CRC
checksum offload packet, and yet it also makes ixgbevf support SCTP
CRC checksum offload for UDP and GRE encapped packets, just as it
does in igb driver.

Signed-off-by: Xin Long <lucien.xin@gmail.com>
---
 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c | 14 +-------------
 1 file changed, 1 insertion(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
index 4061cd7..cd9d79f 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
+++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
@@ -3844,15 +3844,6 @@ static int ixgbevf_tso(struct ixgbevf_ring *tx_ring,
 	return 1;
 }
 
-static inline bool ixgbevf_ipv6_csum_is_sctp(struct sk_buff *skb)
-{
-	unsigned int offset = 0;
-
-	ipv6_find_hdr(skb, &offset, IPPROTO_SCTP, NULL, NULL);
-
-	return offset == skb_checksum_start_offset(skb);
-}
-
 static void ixgbevf_tx_csum(struct ixgbevf_ring *tx_ring,
 			    struct ixgbevf_tx_buffer *first,
 			    struct ixgbevf_ipsec_tx_data *itd)
@@ -3873,10 +3864,7 @@ static void ixgbevf_tx_csum(struct ixgbevf_ring *tx_ring,
 		break;
 	case offsetof(struct sctphdr, checksum):
 		/* validate that this is actually an SCTP request */
-		if (((first->protocol == htons(ETH_P_IP)) &&
-		     (ip_hdr(skb)->protocol == IPPROTO_SCTP)) ||
-		    ((first->protocol == htons(ETH_P_IPV6)) &&
-		     ixgbevf_ipv6_csum_is_sctp(skb))) {
+		if (skb_csum_is_sctp(skb)) {
 			type_tucmd = IXGBE_ADVTXD_TUCMD_L4T_SCTP;
 			break;
 		}
-- 
2.1.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
