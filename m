Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EFC9B36900B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Apr 2021 12:05:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 96850842A4;
	Fri, 23 Apr 2021 10:05:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o5Yz08iaylQo; Fri, 23 Apr 2021 10:05:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1332C843ED;
	Fri, 23 Apr 2021 10:05:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6F8161BF281
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 10:05:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 55D16404D1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 10:05:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WihcAYYZlnxb for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Apr 2021 10:05:11 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com
 [IPv6:2a00:1450:4864:20::436])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 59CE4404C3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 10:05:11 +0000 (UTC)
Received: by mail-wr1-x436.google.com with SMTP id e7so38794917wrs.11
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 03:05:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qnu8+xANZ9fCEYBDMJeqZXufIm484UwdqLlibJM+xGg=;
 b=gTywlByTY8QOwBs3ivbEvMqShqcmbc4tS9l9NuuXjPrkAexiFBUVJjPIZWN6Pqi2Ek
 ly2V/tpirLtOQD9WJ+jvJ2Sj6Gn3qkCh9idbNI5dBkXGK2lYa7esVN2E5GvOlfJ2mDG0
 i0OiVaFxW6Ij7RpgIF0CqP8TqN5wPdtoHIUvTMuudrupWItd1FrHaV7lqnfebOwumtsy
 p+XHdCPypdhizZI0H413GnC/MvtTWMZ0WirnT1dBwIPviLe3hVLUOv1e4mCEwKUZFqGW
 92wy55YvAlADM4FjY34V+mLELpOI5zbh35QAZeqtLDJGdSvULAbLh20HNlD7vcfY33E9
 4Dog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qnu8+xANZ9fCEYBDMJeqZXufIm484UwdqLlibJM+xGg=;
 b=EzTzzcl/xREOTrQTCNfkF8nr2F5342RZVYTPj+n0CmBoXCU9MJY5dfSP7tj6nFYaZR
 6apyO3IGvgXMkXjDRoPHQ/MfsI75dnNb5YbRbkv5ASa0pdb7aM1Iu/A5imjH8CfTIzh0
 BSfjZGTsgfAgE/ylJlq71y4ZggzxwY/lW7tEqp23CEeU+hgOU+al7qLjQSQPWCNw58GF
 +1MXdA5X6desVmGgMEezy7KL+8GEPJYeYXOj4tHaQoZjesUIFeRdqesQ400Wp9+q9NxR
 3Z0IJFD7lhCGilJBrp0fHfRRSUzRB1eTYrQHJ5Mw3DzKMD+Ngpn2qHiNf8z/b7Mab1Zh
 Pu6g==
X-Gm-Message-State: AOAM532+Ezu+Zj5ZC9cHwrbZs3Y3D35JyHBC00dKImpxuA9RzsfoEEqS
 yGni4r8wPDnPZStfSK3pWlQ=
X-Google-Smtp-Source: ABdhPJzii5OWQkCLiIFA+BGj7w6KHZ66O4nqK+QYLm0i/NTPCGM5wB3mN8Lhidzx/+Dt8uLt6Jxcww==
X-Received: by 2002:a5d:47c1:: with SMTP id o1mr3672237wrc.216.1619172309744; 
 Fri, 23 Apr 2021 03:05:09 -0700 (PDT)
Received: from localhost.localdomain ([188.149.128.194])
 by smtp.gmail.com with ESMTPSA id t12sm8599481wrs.42.2021.04.23.03.05.08
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 23 Apr 2021 03:05:09 -0700 (PDT)
From: Magnus Karlsson <magnus.karlsson@gmail.com>
To: magnus.karlsson@intel.com, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, maciej.fijalkowski@intel.com
Date: Fri, 23 Apr 2021 12:04:46 +0200
Message-Id: <20210423100446.15412-6-magnus.karlsson@gmail.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20210423100446.15412-1-magnus.karlsson@gmail.com>
References: <20210423100446.15412-1-magnus.karlsson@gmail.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH intel-net 5/5] ixgbevf: add correct
 exception tracing for XDP
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
Cc: netdev@vger.kernel.org, brouer@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Magnus Karlsson <magnus.karlsson@intel.com>

Add missing exception tracing to XDP when a number of different
errors can occur. The support was only partial. Several errors
where not logged which would confuse the user quite a lot not
knowing where and why the packets disappeared.

Fixes: 21092e9ce8b1 ("ixgbevf: Add support for XDP_TX action")
Reported-by: Jesper Dangaard Brouer <brouer@redhat.com>
Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>
---
 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
index 449d7d5b280d..b38860c48598 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
+++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
@@ -1067,11 +1067,14 @@ static struct sk_buff *ixgbevf_run_xdp(struct ixgbevf_adapter *adapter,
 	case XDP_TX:
 		xdp_ring = adapter->xdp_ring[rx_ring->queue_index];
 		result = ixgbevf_xmit_xdp_ring(xdp_ring, xdp);
+		if (result == IXGBEVF_XDP_CONSUMED)
+			goto out_failure;
 		break;
 	default:
 		bpf_warn_invalid_xdp_action(act);
 		fallthrough;
 	case XDP_ABORTED:
+out_failure:
 		trace_xdp_exception(rx_ring->netdev, xdp_prog, act);
 		fallthrough; /* handle aborts by dropping packet */
 	case XDP_DROP:
-- 
2.29.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
