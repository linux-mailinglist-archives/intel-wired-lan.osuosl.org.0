Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id F31A36E2F35
	for <lists+intel-wired-lan@lfdr.de>; Sat, 15 Apr 2023 07:49:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 840B17001D;
	Sat, 15 Apr 2023 05:49:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 840B17001D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681537769;
	bh=QALFYunArNKXqVeQpn+q4ThdfcOIAajxIA9GfO6YpWI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RKkIURcZ6Pc8fiYP7IlzZXLYsUR4dxaCyVulXsT4jf5XmlNJKFNeIuz+LPcx9Qj38
	 xCQ6WvFQ2cO9sLQYNnMnAooCxkouXs3vA2YEfCzUOItufpxZZjIfq6bNxHwNZPzyVd
	 cdrCvREgYOgu31K30SS0W4x+mMymXGlsfRAjoAZh4DTU0rP35U+4sqNaetr3rfM324
	 L4EPsdhfnF52zdOI9dsuksSNJgE3kMEJziCzJi1/3uId2gvQxl45OVcOr9K82v5lPQ
	 b91VFXHZmg+hABX0l4fQmmQjLfwKSyu/IetCzqFAJOiopfsU/QxT6FbvRH42JkYo9G
	 mRZOFNttn8dgg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w9OZCFOTKtMc; Sat, 15 Apr 2023 05:49:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 36D6170010;
	Sat, 15 Apr 2023 05:49:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 36D6170010
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A9F871C3E9C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Apr 2023 05:49:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7FF9284131
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Apr 2023 05:49:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7FF9284131
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qO9v918H407c for <intel-wired-lan@lists.osuosl.org>;
 Sat, 15 Apr 2023 05:49:16 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 811D5840E0
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com
 [IPv6:2a00:1450:4864:20::630])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 811D5840E0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Apr 2023 05:49:16 +0000 (UTC)
Received: by mail-ej1-x630.google.com with SMTP id jg21so50510220ejc.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Apr 2023 22:49:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681537754; x=1684129754;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=KjriD5FCdH2a/g++1E9APszM1FlDTgYU+lq4VWSvnFA=;
 b=fWS7g9b1Fj4EK/j3vYjD36OBp39r08wzkcTktaZP+wi13Sj1RIAQO0fjwbxCT9Gq30
 lE/lfqlaKCi8NsrevlSMwXCMTYZ6XhZ+rHUivwoS7L18OIj0vgyR+4Pp91JHTtxage/d
 /n3XBirXNpoBSxsSDfArvE8HXWsxnI4DF5AUa1S1cFn+U49H1MqMyEZFdI7tLqHRQvH3
 irbrRcQKQuBdU5E3bbdeHjA9jHNCa2VaaonmujhL8vfhlA0yz/m70gf1oXuZK44zh26N
 qHy5LX1HFOWs/ehaA1YBWQSBLJltUJGO9fZqhlAPjWA70jZc6Izy3LD9E8lLXonEiahG
 896A==
X-Gm-Message-State: AAQBX9cs8QAZxs2WGBJTKgLS3eg+xUE3egFAIWFfp6qegjQ0wuo4JeGp
 5C0QdwXsk2+gAZvVKlUTA828K9QHawn1Tzqbo5hrH6PU8Adt29IrCG9gCckTQwVVKK9j8isniR0
 cYwosG0tf1+AvocLFTwPgCz2vMTK/nvzEGfk31VPYBjrQKx/rn06ylkxmDrioYlmcRLiYSrX5pU
 A1He42LlK0v4DuzQ==
X-Google-Smtp-Source: AKy350YssNhoqlKHwl8NnPvgqpYczYd2nxY8tzFvbqdPBCfbOkUOhKrfzokmXFpYgdzW8DuKepa16g==
X-Received: by 2002:a17:906:6bd0:b0:94e:f969:fb3e with SMTP id
 t16-20020a1709066bd000b0094ef969fb3emr1252290ejs.43.1681537754369; 
 Fri, 14 Apr 2023 22:49:14 -0700 (PDT)
Received: from perf-sql133-029021.hosts.secretcdn.net
 ([2620:11a:c018:0:ea8:be91:8d1:f59b])
 by smtp.gmail.com with ESMTPSA id
 b1-20020a170906038100b00947ccb6150bsm3294856eja.102.2023.04.14.22.49.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 14 Apr 2023 22:49:14 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: intel-wired-lan@lists.osuosl.org
Date: Sat, 15 Apr 2023 05:48:55 +0000
Message-Id: <20230415054855.9293-3-jdamato@fastly.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230415054855.9293-1-jdamato@fastly.com>
References: <20230415054855.9293-1-jdamato@fastly.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1681537754; x=1684129754;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=KjriD5FCdH2a/g++1E9APszM1FlDTgYU+lq4VWSvnFA=;
 b=vF7Xzuua89QO0OMIk2N15uCHG+sJA8D7jU2wjqPck/LO5zW/FNu2UIgOvsuvbvTuNh
 ptF5/2jvcuhM+TXobLpslSfnldvPNZHN5f0r4R7J0weQy+yZS7wVqsamSgFrC8I5RjZf
 09jbk2ojae6rCV8XDIe9UEmXzU8DHuhsv9FXk=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com
 header.a=rsa-sha256 header.s=google header.b=vF7Xzuua
Subject: [Intel-wired-lan] [PATCH net 2/2] ixgbe: Allow ixgbe to reset
 default flow hash
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
 anthony.l.nguyen@intel.com, jesse.brandeburg@intel.com, kuba@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

ethtool uses `ETHTOOL_GRXRINGS` to compute how many queues are supported
by RSS. The driver should return the smaller of either:
  - The maximum number of RSS queues the device supports, OR
  - The number of RX queues configured

Prior to this change, running `ethtool -X $iface default` fails if the
number of queues configured is larger than the number supported by RSS,
even though changing the queue count correctly resets the flowhash to
use all supported queues.

Other drivers (for example, i40e) will succeed but the flow hash will
reset to support the maximum number of queues supported by RSS, even if
that amount is smaller than the configured amount.

Prior to this change:

$ sudo ethtool -L eth1 combined 20
$ sudo ethtool -x eth1
RX flow hash indirection table for eth1 with 20 RX ring(s):
    0:      0     1     2     3     4     5     6     7
    8:      8     9    10    11    12    13    14    15
   16:      0     1     2     3     4     5     6     7
   24:      8     9    10    11    12    13    14    15
   32:      0     1     2     3     4     5     6     7
...

You can see that the flowhash was correctly set to use the maximum
number of queues supported by the driver (16).

However, asking the NIC to reset to "default" fails:

$ sudo ethtool -X eth1 default
Cannot set RX flow hash configuration: Invalid argument

After this change, the flowhash can be reset to default which will use
all of the available RSS queues (16) or the configured queue count,
whichever is smaller.

Starting with eth1 which has 10 queues and a flowhash distributing to
all 10 queues:

$ sudo ethtool -x eth1
RX flow hash indirection table for eth1 with 10 RX ring(s):
    0:      0     1     2     3     4     5     6     7
    8:      8     9     0     1     2     3     4     5
   16:      6     7     8     9     0     1     2     3
...

Increasing the queue count to 48 resets the flowhash to distribute to 16
queues, as it did before this patch:

$ sudo ethtool -L eth1 combined 48
$ sudo ethtool -x eth1
RX flow hash indirection table for eth1 with 16 RX ring(s):
    0:      0     1     2     3     4     5     6     7
    8:      8     9    10    11    12    13    14    15
   16:      0     1     2     3     4     5     6     7
...

Due to the other bugfix in this series, the flowhash can be set to use
queues 0-5:

$ sudo ethtool -X eth1 equal 5
$ sudo ethtool -x eth1
RX flow hash indirection table for eth1 with 16 RX ring(s):
    0:      0     1     2     3     4     0     1     2
    8:      3     4     0     1     2     3     4     0
   16:      1     2     3     4     0     1     2     3
...

Due to this bugfix, the flowhash can be reset to default and use 16
queues:

$ sudo ethtool -X eth1 default
$ sudo ethtool -x eth1
RX flow hash indirection table for eth1 with 16 RX ring(s):
    0:      0     1     2     3     4     5     6     7
    8:      8     9    10    11    12    13    14    15
   16:      0     1     2     3     4     5     6     7
...

Signed-off-by: Joe Damato <jdamato@fastly.com>
---
 .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  | 19 ++++++++++---------
 1 file changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
index 821dfd323fa9..0bbad4a5cc2f 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
@@ -2665,6 +2665,14 @@ static int ixgbe_get_rss_hash_opts(struct ixgbe_adapter *adapter,
 	return 0;
 }
 
+static int ixgbe_rss_indir_tbl_max(struct ixgbe_adapter *adapter)
+{
+	if (adapter->hw.mac.type < ixgbe_mac_X550)
+		return 16;
+	else
+		return 64;
+}
+
 static int ixgbe_get_rxnfc(struct net_device *dev, struct ethtool_rxnfc *cmd,
 			   u32 *rule_locs)
 {
@@ -2673,7 +2681,8 @@ static int ixgbe_get_rxnfc(struct net_device *dev, struct ethtool_rxnfc *cmd,
 
 	switch (cmd->cmd) {
 	case ETHTOOL_GRXRINGS:
-		cmd->data = adapter->num_rx_queues;
+		cmd->data = min_t(int, adapter->num_rx_queues,
+				  ixgbe_rss_indir_tbl_max(adapter));
 		ret = 0;
 		break;
 	case ETHTOOL_GRXCLSRLCNT:
@@ -3075,14 +3084,6 @@ static int ixgbe_set_rxnfc(struct net_device *dev, struct ethtool_rxnfc *cmd)
 	return ret;
 }
 
-static int ixgbe_rss_indir_tbl_max(struct ixgbe_adapter *adapter)
-{
-	if (adapter->hw.mac.type < ixgbe_mac_X550)
-		return 16;
-	else
-		return 64;
-}
-
 static u32 ixgbe_get_rxfh_key_size(struct net_device *netdev)
 {
 	return IXGBE_RSS_KEY_SIZE;
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
