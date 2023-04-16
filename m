Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 570D36E3B76
	for <lists+intel-wired-lan@lfdr.de>; Sun, 16 Apr 2023 21:12:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D8FF960E55;
	Sun, 16 Apr 2023 19:12:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D8FF960E55
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681672373;
	bh=RC1Cgb2cDCOiluuj+XOdB+KOg8w3LKxReCWWVjmUFWw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=C9rRw7Nn8eGyMYn/Xon9HSW4iA2mIVrARTWKl74ewJxhQb5AQlQD8l2TG95X7HpQ8
	 l4FmVvYOdYvRTmtoKjCAhnM/tRsM//TKaqURFbf/eO8C/PcncTm5F8loTsLr0fwZ9o
	 zhDfk1lORib0ti1orat7EgYSTDoFxqdNQMGaJj40MQB8EkMZQrelbYWkVYJReIeNW9
	 7Flr4ugyAd9x1r+7+GGTM6eq3mPmbw0mhC43v1QFf5gRUtoIUFfRg+5sSX6q7vOIYt
	 YTE4imAELrP6NmKVE1Kl7/z7ZbLvSKtcCBP9Hw3lpLA2WfDDwYVdSM0r90Dt8gzfSv
	 p5FsH6CmbmniA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LwzoJq8AnSAI; Sun, 16 Apr 2023 19:12:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CC7A660BF4;
	Sun, 16 Apr 2023 19:12:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CC7A660BF4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A260A1C3E41
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Apr 2023 19:12:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 892BF83F83
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Apr 2023 19:12:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 892BF83F83
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vxuAEAroh1Sl for <intel-wired-lan@lists.osuosl.org>;
 Sun, 16 Apr 2023 19:12:43 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 96E0883F7A
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com
 [IPv6:2a00:1450:4864:20::62d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 96E0883F7A
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Apr 2023 19:12:43 +0000 (UTC)
Received: by mail-ej1-x62d.google.com with SMTP id kt6so20607050ejb.0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Apr 2023 12:12:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681672361; x=1684264361;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=PWA/HXzUdJz0H+XyZalEsfv+ELOZVQCrtHlubc/pGGk=;
 b=PDF0DEgghj9M5OPPO1WdxlyT7qdq7xweKc72DOgaLkd0E42KqdY+a1M3g9ibi7yvcF
 lvgoy9cKOe+rDixlkj+fBggH8AA40S7La7V4PnKg+WnYAcm0MRu+FtnO4C8VNAUt3zfK
 +7DlncSeo8YCGdP5bQR1NXujnI3R65S0JSyK78rPlFqnCtH5AMv8i6YkL34hb1HAnZtG
 xnMTJEESz1SUaarDR3SXt/bYvOB+0+ixLr7e27W1WwnwTNiwABGf6uL/IhArw8b1w/8U
 POplNj1xEnwIA62Z1ozQgGojuBpzx4cLmLUPiNT8iwyr+YFyYWR9e/P4Q0QgTtEDBxhj
 EEHg==
X-Gm-Message-State: AAQBX9cZivqpv+U3D9yHP6gZvri5iD8U0pvECfSBB0+1aoKq3rhQd09y
 TJsCH9+RY+jhhuJlVUvShHpeKQy/UDCvnGAwcfmRn+uQf6C9P5ivi2iJfDFfaYODsHGtfsK95EK
 POX0CQkA0U+Sgsp8Ccl7OvL1avywSfrC2cLnt+KE3ozYOwy5u4AOlwMHt0EEMkcf6UAJ9/rpdB+
 2ag3fhY5Lxots=
X-Google-Smtp-Source: AKy350Y/ztfBTpaxswzpYlhnRokanjnwvwIKpEEbNey2UIY/AnxQ9CpItZN+i4lMBZeuvNLmPEPCUw==
X-Received: by 2002:a17:906:fa18:b0:928:796d:71e8 with SMTP id
 lo24-20020a170906fa1800b00928796d71e8mr5343112ejb.3.1681672361270; 
 Sun, 16 Apr 2023 12:12:41 -0700 (PDT)
Received: from perf-sql133-029021.hosts.secretcdn.net
 ([2620:11a:c018:0:ea8:be91:8d1:f59b])
 by smtp.gmail.com with ESMTPSA id
 mp30-20020a1709071b1e00b00947ed087a2csm5463902ejc.154.2023.04.16.12.12.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 16 Apr 2023 12:12:41 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: intel-wired-lan@lists.osuosl.org
Date: Sun, 16 Apr 2023 19:12:22 +0000
Message-Id: <20230416191223.394805-2-jdamato@fastly.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230416191223.394805-1-jdamato@fastly.com>
References: <20230416191223.394805-1-jdamato@fastly.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1681672361; x=1684264361;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=PWA/HXzUdJz0H+XyZalEsfv+ELOZVQCrtHlubc/pGGk=;
 b=EhtLWp8bAj3+4DQEtWBmbwW3pMm5Niq1GLUU5LK/4TgCbLiNIF+JkwbO5Sruaq1TIJ
 euf3f8UBh8u1GgCADAc/+TO7Ke8H8XSy85Os95KcuVbrYcTpKX6nlV5Ge42FxzXSVw3T
 mfd2+aR3PDKkfeImiEVXsnLwUEcarQfRzahr8=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com
 header.a=rsa-sha256 header.s=google header.b=EhtLWp8b
Subject: [Intel-wired-lan] [PATCH net v2 1/2] ixgbe: Allow flow hash to be
 set via ethtool
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
Cc: netdev@vger.kernel.org, Joe Damato <jdamato@fastly.com>,
 jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com, kuba@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

ixgbe currently returns `EINVAL` whenever the flowhash it set by ethtool
because the ethtool code in the kernel passes a non-zero value for hfunc
that ixgbe should allow.

When ethtool is called with `ETHTOOL_SRXFHINDIR`,
`ethtool_set_rxfh_indir` will call ixgbe's set_rxfh function
with `ETH_RSS_HASH_NO_CHANGE`. This value should be accepted.

When ethtool is called with `ETHTOOL_SRSSH`, `ethtool_set_rxfh` will
call ixgbe's set_rxfh function with `rxfh.hfunc`, which appears to be
hardcoded in ixgbe to always be `ETH_RSS_HASH_TOP`. This value should
also be accepted.

Before this patch:

$ sudo ethtool -L eth1 combined 10
$ sudo ethtool -X eth1 default
Cannot set RX flow hash configuration: Invalid argument

After this patch:

$ sudo ethtool -L eth1 combined 10
$ sudo ethtool -X eth1 default
$ sudo ethtool -x eth1
RX flow hash indirection table for eth1 with 10 RX ring(s):
    0:      0     1     2     3     4     5     6     7
    8:      8     9     0     1     2     3     4     5
   16:      6     7     8     9     0     1     2     3
   24:      4     5     6     7     8     9     0     1
   ...

Signed-off-by: Joe Damato <jdamato@fastly.com>
Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
index 6cfc9dc16537..821dfd323fa9 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
@@ -3131,8 +3131,8 @@ static int ixgbe_set_rxfh(struct net_device *netdev, const u32 *indir,
 	int i;
 	u32 reta_entries = ixgbe_rss_indir_tbl_entries(adapter);
 
-	if (hfunc)
-		return -EINVAL;
+	if (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP)
+		return -EOPNOTSUPP;
 
 	/* Fill out the redirection table */
 	if (indir) {
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
