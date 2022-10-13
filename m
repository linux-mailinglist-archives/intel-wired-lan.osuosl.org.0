Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 80AD25FE5AA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Oct 2022 00:55:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BD90041E22;
	Thu, 13 Oct 2022 22:55:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BD90041E22
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665701739;
	bh=S3MSklmIbZ4UC15u/XP4KnnziH+35nc/9wEJHvFrgv0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=atv5q8Vp7hkQ3kJLnzSfbPzosPAMxaoJD1JyIrIz32by6eZevO5NdZvfc0PzwXbb0
	 RZppn2H14ubTiTbWh5RyfiUpGD1G4LtXx2eqpIDabRX56BuM8lnfpPK/Z4Ta78Q+TD
	 3uZD1AU295eNW4ffCcvg+aqnu1NqSu6jWtT7v6r9VFE3eVoBGmBzgOkiA3avQQJzA5
	 XaOC1wXV2u+TFJuZo1wBd29H8WoRlyDMfu+JRqGemSHTyWyPq1Cr7oVkHfJP2WoXjb
	 eS2jbTIyAE1l7+HWyOVfCSmzCcyfogNquwrH+HD5Ic6uzpmfZENrbm9AB/SJBDgtJk
	 Rlj1BdKdQFNGw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kgEJcYvTnBOD; Thu, 13 Oct 2022 22:55:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4EA5241DBD;
	Thu, 13 Oct 2022 22:55:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4EA5241DBD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0FE1D1BF3A6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Oct 2022 22:55:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D2E9441DD3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Oct 2022 22:55:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D2E9441DD3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZoTPXf1U94NZ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Oct 2022 22:55:29 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CC1C641DBD
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com
 [IPv6:2607:f8b0:4864:20::52d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CC1C641DBD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Oct 2022 22:55:28 +0000 (UTC)
Received: by mail-pg1-x52d.google.com with SMTP id 78so2773818pgb.13
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Oct 2022 15:55:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=9xzIvBQboVU6QSJeZ36bSnwTh4/Q/wHVlnO0sL376rQ=;
 b=x0yeCfxakahymtsDGnPPFc+G+uyCdmvgxmP/9wJJawO8TdH70u1iEaFBSLRk4D5Fu9
 LHI8KEoSA2prHuW/rKcKaBxER2cmMO0IHJVcnYjRCynKwFPuFS0pE29lHo2MwNAcu/me
 DuPAZb4CKrqwVTXDGHhyFky0k2I0tQF7uitPZgdYi1CGTKaWOce5w/97Q4vAVEXzq5xB
 0ljglisDkVowUKFWLqlUX3GuTdaUis9uow65DuE37lUJSuZTERCWilP9xpbNvui5EsU+
 pWNM++caNr2KJMZYu6R9OG/Jkzb9rlA+5vM5bcTfnE/vMTKpOjQJ5MMjCbby1ezk8ZCL
 5jTw==
X-Gm-Message-State: ACrzQf3/RJ/NUo31Dwh4WyJ0hSP5i1vvMkhoiD3CNmojSJGbpYP2fxaB
 HiwwPeGy4oc+DVKCjMyw7NX2T6k0vv1JDzpu6wXrsF9c6xJbBHp4NmW7/z8N7Vhyzs+CJWT+eOK
 Nj2NsjnGIBYfg9aveO77y+bRm65LuDWBnBYUFz3Y/0a+lyjZBjpF3tYmIBD1hFbQI/fxLCb1JCF
 ScWFzsFA==
X-Google-Smtp-Source: AMsMyM4bWk5UMVBpYhVx7JHLiBqIpyiiByE5lDDHmJvZKOMsjHJWRw5JtFt3bcHjhhlkcmUsC8i6sg==
X-Received: by 2002:a05:6a00:14c8:b0:564:5e5:8d85 with SMTP id
 w8-20020a056a0014c800b0056405e58d85mr1998375pfu.36.1665701727798; 
 Thu, 13 Oct 2022 15:55:27 -0700 (PDT)
Received: from localhost.localdomain (c-24-6-151-244.hsd1.ca.comcast.net.
 [24.6.151.244]) by smtp.gmail.com with ESMTPSA id
 b14-20020a170902650e00b00174fa8cbf31sm313110plk.303.2022.10.13.15.55.26
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Oct 2022 15:55:27 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 13 Oct 2022 15:54:31 -0700
Message-Id: <1665701671-6353-1-git-send-email-jdamato@fastly.com>
X-Mailer: git-send-email 2.7.4
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google;
 h=message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=9xzIvBQboVU6QSJeZ36bSnwTh4/Q/wHVlnO0sL376rQ=;
 b=inUPe8i3pDgU690g6pKYXdJ+J3eqN19cSvhrQnycfJcOebhPFZqZKPj63H3xdJTUJN
 96WdWngcIk6Hc7/CK1zxnO9TB474LFR3+a2AzswLbIaCMnAZuY6g86oNyqfOtHHr8D1O
 oqH+bp6096+6QoL2ZudSDzEmng63bV2rz4rW8=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com
 header.a=rsa-sha256 header.s=google header.b=inUPe8i3
Subject: [Intel-wired-lan] [net-queue bugfix RFC] i40e: Clear
 IFF_RXFH_CONFIGURED when RSS is reset
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
Cc: netdev@vger.kernel.org, Joe Damato <jdamato@fastly.com>, kuba@kernel.org,
 davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Sending this first as an RFC to ensure that this is the correct and desired
behavior when changing queue counts and flowhashes in i40e.

If this is approved, I can send an official "v1".

Before this change, reconfiguring the queue count using ethtool doesn't
always work, even for queue counts that were previously accepted because
the IFF_RXFH_CONFIGURED bit was not cleared when the flow indirection hash
is cleared by the driver.

For example:

$ sudo ethtool -x eth0
RX flow hash indirection table for eth0 with 34 RX ring(s):
    0:      0     1     2     3     4     5     6     7
    8:      8     9    10    11    12    13    14    15
   16:     16    17    18    19    20    21    22    23
   24:     24    25    26    27    28    29    30    31
   32:     32    33     0     1     2     3     4     5
[...snip...]

As you can see, the flow indirection hash distributes flows to 34 queues.

Increasing the number of queues from 34 to 64 works, and the flow
indirection hash is reset automatically:

$ sudo ethtool -L eth0 combined 64
$ sudo ethtool -x eth0
RX flow hash indirection table for eth0 with 64 RX ring(s):
    0:      0     1     2     3     4     5     6     7
    8:      8     9    10    11    12    13    14    15
   16:     16    17    18    19    20    21    22    23
   24:     24    25    26    27    28    29    30    31
   32:     32    33    34    35    36    37    38    39
   40:     40    41    42    43    44    45    46    47
   48:     48    49    50    51    52    53    54    55
   56:     56    57    58    59    60    61    62    63

However, reducing the queue count back to 34 (which previously worked)
fails:

$ sudo ethtool -L eth0 combined 34
Cannot set device channel parameters: Invalid argument

This happens because the kernel thinks that the user configured the flow
hash (since the IFF_RXFH_CONFIGURED bit is not cleared by the driver when
the driver reset it) and thus returns -EINVAL, presumably to prevent the
driver from resizing the queues and resetting the user-defined flowhash.

With this patch applied, the queue count can be reduced to fewer queues
than the flow indirection hash is set to distribute flows to if the flow
indirection hash was not modified by the user.

For example, with the patch applied:

$ sudo ethtool -L eth0 combined 32
$ sudo ethtool -x eth0
RX flow hash indirection table for eth0 with 32 RX ring(s):
    0:      0     1     2     3     4     5     6     7
    8:      8     9    10    11    12    13    14    15
   16:     16    17    18    19    20    21    22    23
   24:     24    25    26    27    28    29    30    31
[..snip..]

I can now reduce the queue count to below 32 without error (unlike earlier):

$ sudo ethtool -L eth0 combined 24
$ sudo ethtool -x eth0
RX flow hash indirection table for eth0 with 24 RX ring(s):
    0:      0     1     2     3     4     5     6     7
    8:      8     9    10    11    12    13    14    15
   16:     16    17    18    19    20    21    22    23

This works because I was using the default flow hash, so the driver discards
it and regenerates it.

However, if I manually set the flow hash to some user defined value:

$ sudo ethtool -X eth0 equal 20
$ sudo ethtool -x eth0
RX flow hash indirection table for eth0 with 24 RX ring(s):
    0:      0     1     2     3     4     5     6     7
    8:      8     9    10    11    12    13    14    15
   16:     16    17    18    19     0     1     2     3
[..snip..]

I will now not be able to shrink the queue count again:

$ sudo ethtool -L eth0 combined 16
Cannot set device channel parameters: Invalid argument

But, I can increase the queue count and the flow hash is preserved:

$ sudo ethtool -L eth0 combined 64
$ sudo ethtool -x eth0
RX flow hash indirection table for eth0 with 64 RX ring(s):
    0:      0     1     2     3     4     5     6     7
    8:      8     9    10    11    12    13    14    15
   16:     16    17    18    19     0     1     2     3

Fixes: 28c5869f2bc4 ("i40e: add new fields to store user configuration")
Signed-off-by: Joe Damato <jdamato@fastly.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index feabd26..0e8dca7 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -11522,6 +11522,8 @@ static void i40e_clear_rss_config_user(struct i40e_vsi *vsi)
 
 	kfree(vsi->rss_lut_user);
 	vsi->rss_lut_user = NULL;
+
+	vsi->netdev->priv_flags &= ~IFF_RXFH_CONFIGURED;
 }
 
 /**
-- 
2.7.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
