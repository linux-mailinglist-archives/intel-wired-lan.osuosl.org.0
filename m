Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0122DC820EC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Nov 2025 19:19:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A8204610A5;
	Mon, 24 Nov 2025 18:19:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IwzeTTlkkhRL; Mon, 24 Nov 2025 18:19:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 16B30610C0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764008356;
	bh=gbEeLqMCDoMefCg+D9jqJ+f4KL/vbktt64C5t0GzptE=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1rEBwtDGRFXBOsiv+m7FPES9dbcjikaMxiJ8IHXZYQPe04ocV/o0UQVt85p6vwX70
	 hcmsZs9kC5uOFoIgtq9vusZtm2Q7KMR1RyImujxCAW8iFsxwcLD7GuaYoY5a0thDEe
	 viywzoHyvTaJ8yI0yukRvScUF78vMJO8Rwpu9xx1GOHpaqteDxxsreQ3Uy9NvFdhdy
	 GxHjuC49Q92X1h5ARFZjAOT2WbMhhghQkeL8MB1ndfvFTkFsUDwSDG4DlVhHHwg8Q0
	 w/oaMEC8r0Tj8293RjRvD4Gb5Pq6/xO2gYGRAHyoYFG40oQyQ2AsFaVapQjRx+OLxJ
	 SU5gdWCPdDgvQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 16B30610C0;
	Mon, 24 Nov 2025 18:19:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id D998EE4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 18:19:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CC1C8403CD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 18:19:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I1xaUAaDQFQb for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Nov 2025 18:19:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.160.51;
 helo=mail-oa1-f51.google.com; envelope-from=breno.debian@gmail.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 27DF940241
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 27DF940241
Received: from mail-oa1-f51.google.com (mail-oa1-f51.google.com
 [209.85.160.51])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 27DF940241
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 18:19:13 +0000 (UTC)
Received: by mail-oa1-f51.google.com with SMTP id
 586e51a60fabf-30cce892b7dso1849081fac.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 10:19:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764008352; x=1764613152;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=gbEeLqMCDoMefCg+D9jqJ+f4KL/vbktt64C5t0GzptE=;
 b=ck2rNjfEJCmFvxH0B4HBda0RKiS3pxzC/2k995EUWU9gEpo7GNboaCicgrK4In4t1m
 372I+mAbhZzod11orJka3MHEPae20kqjvpzMb/rkuvUjkWDjlY8fgZFYc1sLZg6TiA7D
 r5c+GY6SZLSzrfqoj6HWxUZTvfDkwZW73MKM/VBkDO2sxk6oIO2mGhcf7eFYQrKV19yD
 /v2JHdFVDfDuOjFQqBVm+pF+QZh7D1Delm8cfAAszWCM8WcFfrdalT8XT4+Zm3izmsOU
 YpOR0IDFagUhfDKXikUb1k48ngqDMJaHoot5euCYYhp85lfUFUHph/NwWUYCP2SyreGu
 +WRQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXOyAGtfgdcJ8MrsIMWviMharPNdqopu7KDGy2HZF9C/z5EKZZ7SPVNn7rUtSjqkBW9qXtBXIfDM4J5nsPWZn8=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yz8ehawCwqhz4Q4Smb6mWXiVcOnBwEegNGAq2Bpsy8/mjdqlY9E
 FE/Qgip4quK15zMEpIOU1p8vv0EV7QQANOwyGEdPZXcUjcWEEu84xZjd
X-Gm-Gg: ASbGncvKvPdpk2f6aJul3s4ZHDrGqpLjN56s6jTnY6NDcPI13hfpqXu+B2QYIemgpCK
 A34FF8Xj1UVxjT22eSbc48MRurfK6GHkmw+NcxDNs8JLcptmY+M5n7mS6EDGjM8TcWeYfJHdgoC
 9qDxfSnmoavYx+UinJTisoQbdJKTFCEFEU/oz0ozErL8T+z7sSGy/VRfZDrhtSulS42XdMz3PXS
 1+MpsL4h70+2TmyqGLBbP1MNYaa0GES9rfKqrfWJlTTn9Tik4kYx+iEelx+hvPSniSFO8KwB3i6
 cjIDA750eG+O6lODFkeG7kdy19TtaipuM+qw3RISBIPgy1YJjp2d9qikjlo8WvqR1OAtBNfNoGU
 sMWyaKG4Xj/Z+XqFP/gJD4P9pHymBVLo/36gaace0wjRiFxEIYyBrRPJcAgKHywev2qUK4czYjj
 tUZlAhkAnJugKJ
X-Google-Smtp-Source: AGHT+IE6Mu3l5ANyvT9QThE8SydVVSYRpMvq+pGBbEfK9IU5hBmSEG/FxTUOjL7wFsByBjmawtmwqw==
X-Received: by 2002:a05:6808:3190:b0:44d:a817:2d72 with SMTP id
 5614622812f47-45115b3f5dbmr4091306b6e.60.1764008351502; 
 Mon, 24 Nov 2025 10:19:11 -0800 (PST)
Received: from localhost ([2a03:2880:10ff:8::])
 by smtp.gmail.com with ESMTPSA id
 5614622812f47-450fffbb78fsm3962205b6e.15.2025.11.24.10.19.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Nov 2025 10:19:11 -0800 (PST)
From: Breno Leitao <leitao@debian.org>
Date: Mon, 24 Nov 2025 10:19:05 -0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251124-gxring_intel-v1-1-89be18d2a744@debian.org>
References: <20251124-gxring_intel-v1-0-89be18d2a744@debian.org>
In-Reply-To: <20251124-gxring_intel-v1-0-89be18d2a744@debian.org>
To: aleksander.lobakin@intel.com, Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Cc: michal.swiatkowski@linux.intel.com, michal.kubiak@intel.com, 
 maciej.fijalkowski@intel.com, intel-wired-lan@lists.osuosl.org, 
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, kernel-team@meta.com, 
 Breno Leitao <leitao@debian.org>
X-Mailer: b4 0.15-dev-a6db3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2090; i=leitao@debian.org;
 h=from:subject:message-id; bh=qyn3+OM6gW+LptphPH5lcjCWQP2TbmlmG+01o20pfas=;
 b=owEBbQKS/ZANAwAIATWjk5/8eHdtAcsmYgBpJKGcksVSeweu7eDKv6ShFxzUvSTfALUH5CVWW
 GfDuy1SeEuJAjMEAAEIAB0WIQSshTmm6PRnAspKQ5s1o5Of/Hh3bQUCaSShnAAKCRA1o5Of/Hh3
 bauaD/4zj5yGV8OcVz5s608QCdT695aPqYXDfWgxXA+RiERkarEXki+rxOZY7N2HFbzrJseRE0V
 2MfqP/024vKVlvRRBMLDhcNmaCz3wiOvvpk8KVjErdu4a6K9ISSakqkW9gcPEz1aYHEVZdafXeZ
 ayeURdiYNVzYQw20ru6sfTVVAjd83bkr7hFZ9E5RL21A0INjiWuHRVb4wgCkU3O7uKtxyJyxV0i
 UeVYTkDnuIcOnQiTNLm9NYapENOeFiFrDY6Ih/AaApLMwtCd74o919jLmxTJ4313AMAccCoNhe+
 qAyDuE+eAbW7FGnPXI747kq+KxCCaHl7k8EL/B4KQ46NeXWtrJ5HY+ZOKrfSMovdudYxRCJeGUR
 qKzZrm/g74UVmz++5lUz+qBHRDsqohjlMi8eM2BIIPICtC7SpAKHGqs5UPp3lovH7ThucoDLbdU
 XjIyxON/wp2z5xOz2JfV/BLzlQv15Yi8T30V6QxTUhA3DMwo6JAMhXgCxzZ5poV8cD8AArm8f6J
 bieaTJmeuILfKai2eHIh7qhlvRsfJJKIUq+pSu5F7EskxMJm33EAOlA0gZn6owLSHwioR8d34lh
 VHFK+jq+TlZsxuyF8KjvdHtqZnBCpFCXOZFk/EhIPVzRrUey7vu4FL0ffU+xszkN9tQ49qtkDW4
 EhUZZ/DRi0oI8qQ==
X-Developer-Key: i=leitao@debian.org; a=openpgp;
 fpr=AC8539A6E8F46702CA4A439B35A3939FFC78776D
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=debian.org
Subject: [Intel-wired-lan] [PATCH net-next 1/8] i40e: extract GRXRINGS from
 .get_rxnfc
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

Commit 84eaf4359c36 ("net: ethtool: add get_rx_ring_count callback to
optimize RX ring queries") added specific support for GRXRINGS callback,
simplifying .get_rxnfc.

Remove the handling of GRXRINGS in .get_rxnfc() by moving it to the new
.get_rx_ring_count().

This simplifies the RX ring count retrieval and aligns i40e with the new
ethtool API for querying RX ring parameters.

Signed-off-by: Breno Leitao <leitao@debian.org>
---
 drivers/net/ethernet/intel/i40e/i40e_ethtool.c | 19 +++++++++++++++----
 1 file changed, 15 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index 86c72596617a..64d0797f5f5e 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -3521,6 +3521,20 @@ static int i40e_get_ethtool_fdir_entry(struct i40e_pf *pf,
 	return 0;
 }
 
+/**
+ * i40e_get_rx_ring_count - get RX ring count
+ * @netdev: network interface device structure
+ *
+ * Returns the number of RX rings.
+ **/
+static u32 i40e_get_rx_ring_count(struct net_device *netdev)
+{
+	struct i40e_netdev_priv *np = netdev_priv(netdev);
+	struct i40e_vsi *vsi = np->vsi;
+
+	return vsi->rss_size;
+}
+
 /**
  * i40e_get_rxnfc - command to get RX flow classification rules
  * @netdev: network interface device structure
@@ -3538,10 +3552,6 @@ static int i40e_get_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd,
 	int ret = -EOPNOTSUPP;
 
 	switch (cmd->cmd) {
-	case ETHTOOL_GRXRINGS:
-		cmd->data = vsi->rss_size;
-		ret = 0;
-		break;
 	case ETHTOOL_GRXCLSRLCNT:
 		cmd->rule_cnt = pf->fdir_pf_active_filters;
 		/* report total rule count */
@@ -5819,6 +5829,7 @@ static const struct ethtool_ops i40e_ethtool_ops = {
 	.set_msglevel		= i40e_set_msglevel,
 	.get_rxnfc		= i40e_get_rxnfc,
 	.set_rxnfc		= i40e_set_rxnfc,
+	.get_rx_ring_count	= i40e_get_rx_ring_count,
 	.self_test		= i40e_diag_test,
 	.get_strings		= i40e_get_strings,
 	.get_eee		= i40e_get_eee,

-- 
2.47.3

