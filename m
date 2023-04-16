Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 57EBB6E3B77
	for <lists+intel-wired-lan@lfdr.de>; Sun, 16 Apr 2023 21:12:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EB13060EAB;
	Sun, 16 Apr 2023 19:12:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EB13060EAB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681672378;
	bh=13wTTCRfs6BggW7kad7NBEqEuJQXcfrFSxN01KVewDg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KZmHe1tsvn6f3jzUHOTr2fjbj072vgspY7jcgfCAR1Ed0qWovL8/GoYnMysGIUxGO
	 6qWtXue3Vn2tbeg6kQSLImrOtLDpHx/kBVNdTnnnxz+OMlT6E4myZZy1ZPKGqib+Jz
	 oU71TuHcM59n/Jw7HqToGMXZ25l0qXRbY2CbhqQwxJ2lTfoJ+REZx3Rh1PQxEPgzlp
	 R9oheNUAn5F49uks9lGlDzn+TfxIsy84a5WG5p6udV5gL4BdisVDjDw0rz4jWiKXwt
	 pT3INbnAHa/GwFSfTgEpQIzQb9oQEgC1jgC3wsVJe2M53RKOUBEQzKL0mbLJvYN08s
	 /KoXobfjlxiBw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3YVCW5FFYls4; Sun, 16 Apr 2023 19:12:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CF08660BF4;
	Sun, 16 Apr 2023 19:12:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CF08660BF4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 761B21BF425
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Apr 2023 19:12:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4FCAB83F7A
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Apr 2023 19:12:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4FCAB83F7A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L7ryNK98rJmy for <intel-wired-lan@lists.osuosl.org>;
 Sun, 16 Apr 2023 19:12:45 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 16DF783F7F
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com
 [IPv6:2a00:1450:4864:20::636])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 16DF783F7F
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Apr 2023 19:12:45 +0000 (UTC)
Received: by mail-ej1-x636.google.com with SMTP id a5so2233177ejb.6
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Apr 2023 12:12:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681672363; x=1684264363;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=JBI5K6bw4SvoX3pffpUrylhUkU0H5a5frJVHksq/+kw=;
 b=RZ7HJuB8lbvTFO4d/XM/P7l2hW6KwEYNEYwlObQqyHFhMzNEO43ukHyJdxZhZ2P0wH
 mBNsYvNClyX2cv4sBzg5vl/qCbu682wtHvw3tLLNq//3xkr+Tnkq2eZVUMin8/nkbOBA
 lUCaj2FW0A8GOzO+FWYnyRmHYxdRibQuMeevJz8k2Jj/HzreYbc18kQI2JKfwRYZNiuA
 056C7XVDmawHWToxbufM0MF7om0AQu0b6zmQHDca7JOBVasa+VaMZCzNr3JR1EgwSNLv
 67p0zXSzUMEngNfsDdmfNjZYmk1YL+ldeF1Ff/NO37o+WrJ+WVBWj1qy3/37MP5Qsk+d
 ap7A==
X-Gm-Message-State: AAQBX9fIL6eMiox+o66eY5Zn7xilDcRsEHc5dBaHij8yzTv0tAfrPAHV
 Xgh0QoXRj6mhZ57Uh4gt2A1AvU9S5aL/UccK2fIXs7gGUGhNDILmCaOvqucnRPS/ZUpveDtnKHU
 mGPV+UdB42DJyJ1cPciFROOe4mCg+sAr4FMPAl+ywZw+uUYZYot/w3dohoCH8rxxixKld/2RCVu
 tUarkb3RsIFVA=
X-Google-Smtp-Source: AKy350aO+NbcGp82J5fQqKPJh0SAXUZ9bU+rWkTbDMbBelt2yvWkt/E4OrsuqMlme33J2SkphBmKPA==
X-Received: by 2002:a17:906:3e1b:b0:94d:69e0:6098 with SMTP id
 k27-20020a1709063e1b00b0094d69e06098mr6293702eji.45.1681672362984; 
 Sun, 16 Apr 2023 12:12:42 -0700 (PDT)
Received: from perf-sql133-029021.hosts.secretcdn.net
 ([2620:11a:c018:0:ea8:be91:8d1:f59b])
 by smtp.gmail.com with ESMTPSA id
 mp30-20020a1709071b1e00b00947ed087a2csm5463902ejc.154.2023.04.16.12.12.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 16 Apr 2023 12:12:42 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: intel-wired-lan@lists.osuosl.org
Date: Sun, 16 Apr 2023 19:12:23 +0000
Message-Id: <20230416191223.394805-3-jdamato@fastly.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230416191223.394805-1-jdamato@fastly.com>
References: <20230416191223.394805-1-jdamato@fastly.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1681672363; x=1684264363;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=JBI5K6bw4SvoX3pffpUrylhUkU0H5a5frJVHksq/+kw=;
 b=RLsRMBIr1wdOpvh3bolgOXunv2QTYaErelksdF8qUbpzPdEaio5caTPQed6QnqM5V4
 oBwBOvlI4rOpzdi0GvgkqfaaXEKK6jZVZB343Yq5DG8+FlK5XtnK6aVxI21BFhQn8Ksy
 Y9gOaBjsR7UfYQFtzw9fK+iW2FtULNiIJITi0=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com
 header.a=rsa-sha256 header.s=google header.b=RLsRMBIr
Subject: [Intel-wired-lan] [PATCH net v2 2/2] ixgbe: Enable setting RSS
 table to default values
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
Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
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
