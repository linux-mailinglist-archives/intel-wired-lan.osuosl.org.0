Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 86E5BC57E97
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Nov 2025 15:23:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 20CE540C99;
	Thu, 13 Nov 2025 14:23:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FCr7lnYnKk6c; Thu, 13 Nov 2025 14:23:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3E2CB40CB4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763043819;
	bh=I5iHf7lLF0gP9n63yXvZFud60lOk/rnCTC36lz7B8T0=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=LWqq/BUMhDQ8wfY7N0QldUmI6J1+d1gV9hsDY0vx6ctxLnWZ3E3cB5k0/JthmtU7n
	 Ptd+qMs/e0+PR5JG1ITYrsh71Zsh03S0QGVShK08k5xCqW4Nj972xYQEUd3f532FMK
	 hllxbdlZshgSqfYWOXYV9ClGJ5gspsR4P3GUv/G309DL4lCCjrjflzHo142sNR5PIF
	 PAkJRvjPknr/RpqqDoG7Hnx9/E8VLlPHiI/K3ztsYodxeZ9KYO0zjj55lqSvShvJw6
	 /aoEikVo9VmCms9+c1IUChRcB/in4QVjWlL4FtImww19vBx90/8zUPgBvSIjnf0662
	 pmZ571v6BNa0A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3E2CB40CB4;
	Thu, 13 Nov 2025 14:23:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id C5BFD230
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Nov 2025 14:23:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A882183B54
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Nov 2025 14:23:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wtshtDjTV2VF for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Nov 2025 14:23:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.210.43;
 helo=mail-ot1-f43.google.com; envelope-from=breno.debian@gmail.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 803F483B53
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 803F483B53
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com
 [209.85.210.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 803F483B53
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Nov 2025 14:23:36 +0000 (UTC)
Received: by mail-ot1-f43.google.com with SMTP id
 46e09a7af769-7c6cc366884so278346a34.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Nov 2025 06:23:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1763043815; x=1763648615;
 h=cc:to:message-id:content-transfer-encoding:mime-version:subject
 :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=I5iHf7lLF0gP9n63yXvZFud60lOk/rnCTC36lz7B8T0=;
 b=n7oMxm5w3fucaaoHUINm8YyZECG0ZOF4OzIOvTz8GSURVu6fQhJRpsrXax1nSIMP0x
 Ob1TvDdmmPf+2kbXcuAJtikZsAMYzo/BarZyUCijgdie+GCmEfNDt8lKgn29PejYOyLx
 YumUfoS0mkPu+8IgOCHvboZjb9DcU+y76TUDlLyfKcUzXnRYJ9A/7q1IAB2fY1Fzw5EI
 gEYbg8V+pCgD25vnHBXsZoxANvaYQawm9iWQbqt9dzDNz+WgXhCY8iWqn20ozbzkQ+eT
 JVyc5H2MXiKXBqpLMIq+HVlonBANZITSR9fCu2tkZEsTNyAFKq19rcIq+Ctb2sR0hXjT
 sPog==
X-Gm-Message-State: AOJu0YwBb2pXCYzsWkzK9worE++KvEaNXM0HZZ+U8xk+/XvzUAOGkbd5
 THUAbEzfJCZd1JA+C2ib1Ug1yVrzu5Myg316kpThd0YA7XwZRu3NJPvK
X-Gm-Gg: ASbGnct1Wg95lkqzrF5eY+AnmADAS2SbfShBDBU8qkVpgfGsPfdmwEbgjNmEd+kYZ0W
 DuHHlnlGqz38YvaDgCbn2Z9LWT03TU57VJtUvdhdWCnU9zUAEcYBW2TpU9G9ev/CNSE7i7bxgUV
 Cl5krQTIsfx6IqNSoHLU815dF0g5NhSjjxjOQ7to0Oc5ktkB6RtbyoPRE9XPlsGYE8ktRGUdz1v
 jnJUVXEgqDJdKTT9XX4DFrb/ZVj+clIrg+PpAkNOpzh34T8leUowzPsnXZoRvgm4TXtlMuN/b/O
 Dg+eXlnCokC7fcc5+OqPBLEdvy+qRftKjtbkdCN2PzUhEIqAYpaanF7Yf/O9Y6JbeSxhes/Q6uP
 blSIL25v8nr3uGVFdzEos88GwU/VjFzUvyQPCHvX4V+Gxyd1Fg4QmOONEf6Mj4e1Z6DeB5i+zfb
 ZXDzU=
X-Google-Smtp-Source: AGHT+IEgT8+wwHcUmw+KwdvrC6zpX82dQU5Au6rcvd3OQYcE1aD4NgPaTo8lH5fXD4y/lfrV7Jwu+g==
X-Received: by 2002:a05:6830:410c:b0:7c5:3798:fa52 with SMTP id
 46e09a7af769-7c72e361474mr4284504a34.17.1763043815343; 
 Thu, 13 Nov 2025 06:23:35 -0800 (PST)
Received: from localhost ([2a03:2880:10ff:53::])
 by smtp.gmail.com with ESMTPSA id
 46e09a7af769-7c73a392f65sm1233807a34.17.2025.11.13.06.23.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Nov 2025 06:23:34 -0800 (PST)
From: Breno Leitao <leitao@debian.org>
Date: Thu, 13 Nov 2025 06:23:29 -0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251113-ixgbe_gxrings-v2-1-0ecf57808a78@debian.org>
X-B4-Tracking: v=1; b=H4sIAODpFWkC/3XNQQqDMBBG4auEf22Kk9KIrnqPIkXNGGcTSxIkR
 bx7IfuuH3zvROIonDCoE5EPSbIHDMo0Css2Bc9aHAYF05oHERktxc/89iVK8ElbWuzakevIzGg
 UPpFXKdV7IXDWgUvG2ChskvIev3V0UO1/zIM06d62TPfe9t06PR3PMoXbHj3G67p+2w1edbUAA
 AA=
X-Change-ID: 20251112-ixgbe_gxrings-61c6f71d712b
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, kernel-team@meta.com, 
 Paul Menzel <pmenzel@molgen.mpg.de>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, 
 Breno Leitao <leitao@debian.org>
X-Mailer: b4 0.15-dev-a6db3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2893; i=leitao@debian.org;
 h=from:subject:message-id; bh=z39FuBLfVxg3dxedOWkc+Ia06tLSL22bXsDqvmAO158=;
 b=owEBbQKS/ZANAwAIATWjk5/8eHdtAcsmYgBpFenm/V5RXfe69npzg+IrvANAHPqq3r8iMqJgy
 EdiqapJhV+JAjMEAAEIAB0WIQSshTmm6PRnAspKQ5s1o5Of/Hh3bQUCaRXp5gAKCRA1o5Of/Hh3
 bdqwEACcfIVaC73zFQumgX1I6zM7QPZrgZ0fPnN7CpNKfOP1+P/kBANZvn6BWg9/TjIl8fHGwX0
 IAfdbD2vTfcBg6axmc1U/+ogjVFpN6OaZFihMtypmlafWGhj35oYstjrzEJsuXogQFn+lGa45gP
 l01qTdZ4hkKbIikbQQ/wbjOSPLC0vYwVvdfCkI5DsI6UovrpMIpZvxCbtTrV02R2Z9TGwZB3BPx
 KppudrAGq8NpeTmBTsZaV4nA2zmAzgACfSBoG9t/J/bXYI/nur3aoQ92FzMx2nBWQKSNfD4SoEL
 TRxX0yeVrlnD+H8yOBdTamBfMPl5LdryUacDnzIS7HDAG6G3LxgEvcQAqoEW9h6hCGH0EerIT0D
 gijW6YB0h4nCRHqqjrd4c/ZnaiMhm2vWv+fzQH3L41X+kPhY3KyJApW3Lhe2kf6xuL0b+s14DSJ
 qH51uTzUBgOq4r+7//w6OwD5dpb/3rCr1KbnS7dXmvHyXK0qLTZFpp/Ckvl8mUpfRDawf7xFGXK
 cxC2wBWqQwJCEO9MJgy1kVGd6Pi9+fN2AIbVBRr2IQDxGcIcKtz+49kyRQdWiprW8OI5CJUII5L
 BpMDxrVObPqcdlUfjhPWxauBhvciXpXfGllnV8W2ho5ug+c2Aqt4lFv+Z1E7fl19Uhe3rI4/Vmx
 zk41pITloaoJWvQ==
X-Developer-Key: i=leitao@debian.org; a=openpgp;
 fpr=AC8539A6E8F46702CA4A439B35A3939FFC78776D
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=debian.org
Subject: [Intel-wired-lan] [PATCH net-next v2] net: ixgbe: convert to use
 .get_rx_ring_count
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

Convert the ixgbe driver to use the new .get_rx_ring_count ethtool
operation for handling ETHTOOL_GRXRINGS command. This simplifies the
code by extracting the ring count logic into a dedicated callback.

The new callback provides the same functionality in a more direct way,
following the ongoing ethtool API modernization.

This was compile-tested only.

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Breno Leitao <leitao@debian.org>
---
Changes in v2:
- Explictly describe that the patch was compile-tested only.
- Link to v1: https://patch.msgid.link/20251112-ixgbe_gxrings-v1-1-960e139697fa@debian.org
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
index 2d660e9edb80..2ad81f687a84 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
@@ -2805,6 +2805,14 @@ static int ixgbe_rss_indir_tbl_max(struct ixgbe_adapter *adapter)
 		return 64;
 }
 
+static u32 ixgbe_get_rx_ring_count(struct net_device *dev)
+{
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(dev);
+
+	return min_t(u32, adapter->num_rx_queues,
+		     ixgbe_rss_indir_tbl_max(adapter));
+}
+
 static int ixgbe_get_rxnfc(struct net_device *dev, struct ethtool_rxnfc *cmd,
 			   u32 *rule_locs)
 {
@@ -2812,11 +2820,6 @@ static int ixgbe_get_rxnfc(struct net_device *dev, struct ethtool_rxnfc *cmd,
 	int ret = -EOPNOTSUPP;
 
 	switch (cmd->cmd) {
-	case ETHTOOL_GRXRINGS:
-		cmd->data = min_t(int, adapter->num_rx_queues,
-				  ixgbe_rss_indir_tbl_max(adapter));
-		ret = 0;
-		break;
 	case ETHTOOL_GRXCLSRLCNT:
 		cmd->rule_cnt = adapter->fdir_filter_count;
 		ret = 0;
@@ -3743,6 +3746,7 @@ static const struct ethtool_ops ixgbe_ethtool_ops = {
 	.get_ethtool_stats      = ixgbe_get_ethtool_stats,
 	.get_coalesce           = ixgbe_get_coalesce,
 	.set_coalesce           = ixgbe_set_coalesce,
+	.get_rx_ring_count	= ixgbe_get_rx_ring_count,
 	.get_rxnfc		= ixgbe_get_rxnfc,
 	.set_rxnfc		= ixgbe_set_rxnfc,
 	.get_rxfh_indir_size	= ixgbe_rss_indir_size,
@@ -3791,6 +3795,7 @@ static const struct ethtool_ops ixgbe_ethtool_ops_e610 = {
 	.get_ethtool_stats      = ixgbe_get_ethtool_stats,
 	.get_coalesce           = ixgbe_get_coalesce,
 	.set_coalesce           = ixgbe_set_coalesce,
+	.get_rx_ring_count	= ixgbe_get_rx_ring_count,
 	.get_rxnfc		= ixgbe_get_rxnfc,
 	.set_rxnfc		= ixgbe_set_rxnfc,
 	.get_rxfh_indir_size	= ixgbe_rss_indir_size,

---
base-commit: bde974ef62569a7da12aa71d182a760cd6223c36
change-id: 20251112-ixgbe_gxrings-61c6f71d712b

Best regards,
--  
Breno Leitao <leitao@debian.org>

