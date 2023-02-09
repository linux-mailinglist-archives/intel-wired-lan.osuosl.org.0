Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D606B68FD40
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Feb 2023 03:42:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F341482081;
	Thu,  9 Feb 2023 02:42:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F341482081
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675910548;
	bh=nv1s25TsRayWXFymDntag0Q9/J7y2EhHHBzF1dFksf0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=E4BRyNp8oo852kZNAuzdkC5+LMfelFpTbWbMpW1354+BI858rTt+wzoAsegclA+9W
	 3of64B3Vbxhy6PgWk+eAfXpUoKfxo/+XK97PI1tT/KNzQeuGQqS2IyXXnNDEMKY9zs
	 BHbpxPPfzTENsfb2ot2Lf8qppOvldkkvOJaQbP6TwMYK9UN7C1FpdfpewX3+Uzj14q
	 dN31VPhvipoDzJvVYm7JrAxROXgnhartrRPhTkByFLov/KEFYQjWC+ExdXgER2JU8J
	 bYxfaFiZEu+i4AjQpXK/rECKOonYVwi+yilGUH29OXXeZB+o5z5RGOJ0eVOxs9mbMa
	 +Tbf845hSfIqg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xd0FaDhYFSKg; Thu,  9 Feb 2023 02:42:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E934A8202A;
	Thu,  9 Feb 2023 02:42:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E934A8202A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 74F481BF31B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Feb 2023 02:42:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5A49F61056
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Feb 2023 02:42:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5A49F61056
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id caA7JznQh8Hs for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Feb 2023 02:42:20 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1A7B760F2F
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com
 [IPv6:2607:f8b0:4864:20::436])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1A7B760F2F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Feb 2023 02:42:20 +0000 (UTC)
Received: by mail-pf1-x436.google.com with SMTP id ay1so436475pfb.7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 08 Feb 2023 18:42:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=YwyVoI4Z6gSEgdiik3NvZJTmr5o1kD+IT2yiCTwHCu4=;
 b=Jb2HYTlxYjldkd89nXYQaPfhAOInJXGH7TEciFvRe3NxO5lIaAfKnnAvrulPM+ZBYw
 PZ9yrPlvyDLCjv8WRyLoKvIubts51z7lnSVkmEg9EPWCXCjquCbsXYPjmvD7P2iW7YIl
 YFjkW9l5Q67V67fbbWCg/N2iuIxk5ffkv8DtTSMJl/uViGh8JC1YNHMWBINYt0rgwZWc
 KynRK6ApgErupZPv4fCu+afVH5V1jdfnxj9UqKAThZX5xU7POxXbAesGzzBUHhHcJrr0
 caZqhM1Nb63fS1KHU3MgvA/TsEjDYC0ycAAqdc37nFDvBt6/+YxJJ86iLEMh7wW4iCGH
 ANjA==
X-Gm-Message-State: AO0yUKXXKlgo999+NDo0X8n1e/AbE0HB1R8rfuwbc3/QoJnFggfrmWym
 42guqKcxefTNVNS3F3XGh7U=
X-Google-Smtp-Source: AK7set9DUTP8YMTdiY3P82E80fZ2YE4bBm5y04IAl6FhAq6TRgHtyLSB+KIbFsz0H7dafUNupr3/nA==
X-Received: by 2002:aa7:8bdd:0:b0:5a8:5424:d12f with SMTP id
 s29-20020aa78bdd000000b005a85424d12fmr646119pfd.21.1675910539477; 
 Wed, 08 Feb 2023 18:42:19 -0800 (PST)
Received: from KERNELXING-MB0.tencent.com ([103.7.29.31])
 by smtp.gmail.com with ESMTPSA id
 f15-20020aa782cf000000b005a84de344a6sm165538pfn.14.2023.02.08.18.42.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Feb 2023 18:42:19 -0800 (PST)
From: Jason Xing <kerneljasonxing@gmail.com>
To: alexander.duyck@gmail.com, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, richardcochran@gmail.com,
 ast@kernel.org, daniel@iogearbox.net, hawk@kernel.org,
 john.fastabend@gmail.com, alexandr.lobakin@intel.com,
 maciej.fijalkowski@intel.com
Date: Thu,  9 Feb 2023 10:41:28 +0800
Message-Id: <20230209024128.4695-1-kerneljasonxing@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=YwyVoI4Z6gSEgdiik3NvZJTmr5o1kD+IT2yiCTwHCu4=;
 b=dD+5Wo8qKJ+aYIFvRi2FocY3k8H1Y47OfiqwD3r8eJ1Kzc5icSgAMNxDdaFnA4Qegl
 wIpncp6VGKKL7/uiI/T93YnnO41JK1FC2LWZ54liJhZPe11aGXMydfgMQyD+UKCelUzM
 cci0afAQSaUOFGiSEz6rga66CznxgWZXb+OJ/ugK9cXCJUmkednXa3meKnhGsh4hNaxP
 60LP+y6Um0vNYThUDyoK6HBp9nvzJ7UyLU6nPd3MdoLFoFhYrFjus8EbbtMxKTCq8etg
 qUzTeOrg8B+kxFXaOnv2l1e0VmCAkEp3WyDwjmjzvCo+4gIPatuy7L7HW4GJ8FREV/CZ
 17Sw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=dD+5Wo8q
Subject: [Intel-wired-lan] [PATCH net v2 3/3] ixgbe: add double of VLAN
 header when computing the max MTU
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
 Alexander Duyck <alexanderduyck@fb.com>, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org,
 Jason Xing <kernelxing@tencent.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jason Xing <kernelxing@tencent.com>

Include the second VLAN HLEN into account when computing the maximum
MTU size as other drivers do.

Fixes: fabf1bce103a ("ixgbe: Prevent unsupported configurations with XDP")
Signed-off-by: Jason Xing <kernelxing@tencent.com>
Reviewed-by: Alexander Duyck <alexanderduyck@fb.com>
---
v2: add reviewed-by label.
---
 drivers/net/ethernet/intel/ixgbe/ixgbe.h      | 2 ++
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 3 +--
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
index bc68b8f2176d..8736ca4b2628 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
@@ -73,6 +73,8 @@
 #define IXGBE_RXBUFFER_4K    4096
 #define IXGBE_MAX_RXBUFFER  16384  /* largest size for a single descriptor */
 
+#define IXGBE_PKT_HDR_PAD   (ETH_HLEN + ETH_FCS_LEN + (VLAN_HLEN * 2))
+
 /* Attempt to maximize the headroom available for incoming frames.  We
  * use a 2K buffer for receives and need 1536/1534 to store the data for
  * the frame.  This leaves us with 512 bytes of room.  From that we need
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 25ca329f7d3c..4507fba8747a 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -6801,8 +6801,7 @@ static int ixgbe_change_mtu(struct net_device *netdev, int new_mtu)
 	struct ixgbe_adapter *adapter = netdev_priv(netdev);
 
 	if (ixgbe_enabled_xdp_adapter(adapter)) {
-		int new_frame_size = new_mtu + ETH_HLEN + ETH_FCS_LEN +
-				     VLAN_HLEN;
+		int new_frame_size = new_mtu + IXGBE_PKT_HDR_PAD;
 
 		if (new_frame_size > ixgbe_max_xdp_frame_size(adapter)) {
 			e_warn(probe, "Requested MTU size is not supported with XDP\n");
-- 
2.37.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
