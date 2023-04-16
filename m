Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 85F506E3B64
	for <lists+intel-wired-lan@lfdr.de>; Sun, 16 Apr 2023 21:04:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A125360D76;
	Sun, 16 Apr 2023 19:04:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A125360D76
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681671868;
	bh=pha9apGh9bCdXSYW8odEmlqu9cK8X+REgAMYRFMVqAw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UGPrJqV5SS8k15m8SSHZNDvANMt/oPKc4lqBJkflzV7niXYzdD8BtW4CWc4PlR5Pd
	 cZmieWKhoUKIp+d+ADTnzoEXEpi871chGPTGZYooV1aPsGqLlpQg5u2c6y+MFdK+wK
	 Xm5QAopJA0GxINNLYah3tUbAcKgx/45G59Pp/gbg2MNDM8f2lPepqKnMzVYbwwu1NA
	 gWC7B8S1VR21UrGpavqX2I7EHP9WBwLnL1JcqCWKKjf86fouY4D+2J7KQadL7a/8rX
	 aLv00QPxmv5uZuwlSQ/aO7y2pHxVYPFeDx3+wHqkhRrVRLUAZU54pVdJE769TKI//C
	 xNMUDr8yyHvgw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yR0itG5q3q05; Sun, 16 Apr 2023 19:04:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 730F960C18;
	Sun, 16 Apr 2023 19:04:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 730F960C18
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B531B1BF425
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Apr 2023 19:04:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 855F960C18
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Apr 2023 19:04:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 855F960C18
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eQ7O149jVYfm for <intel-wired-lan@lists.osuosl.org>;
 Sun, 16 Apr 2023 19:04:21 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8817760BF4
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com
 [IPv6:2607:f8b0:4864:20::631])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8817760BF4
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Apr 2023 19:04:21 +0000 (UTC)
Received: by mail-pl1-x631.google.com with SMTP id y6so22333676plp.2
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Apr 2023 12:04:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681671861; x=1684263861;
 h=user-agent:in-reply-to:content-disposition:mime-version:references
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=UbEZeTq9MMgr0QnP6gJ8C3OJs7xVTjb+8LXU9xueXGE=;
 b=dmICb33rnP5xlNpGdaDBAYaqQFWLj8wa/MTY9eQsf5tuylmOxlAjfvqbntF75ljUe9
 sn5pj+r7r3Hdyt+5/LnxIHVZct3vvzIwUypZlx167lYPz7fMcM7/htd0AcREL7EqmLxA
 VrgcaXM/09Vbg/VXWvViODYU067UN1gMGfwcrXRH9IW2Tuy0BHp9yvqA6hJRdIRoQtpS
 geFNBGOGynWqlEg9ZqNfXBr66Ztut85UcOXKz6V8poXWVEq9Rk8sOASJnFzXoFEfdBHG
 PPcePwK9H4Jp4/jBOJIC9knxbWjB3yBUqIL5p9R+tdJBw0XlP8zczYnIbGAq2TmUcD+D
 xMFw==
X-Gm-Message-State: AAQBX9do7HWtZLfMbFyO22dWcxJkST9rl//grCyfX44YEvrN7T95uclS
 4S/whBnKW8DkE2CUMPNlbZt5QGicdkMVyzVm5zc=
X-Google-Smtp-Source: AKy350byUxcWXqSepVMvdbXk04RRaA4WvQkqOhSUtq72YBHzMojGlHyqf8UmcA93JrNBl3IERbw5Mw==
X-Received: by 2002:a17:902:d2d0:b0:1a6:961e:fcfe with SMTP id
 n16-20020a170902d2d000b001a6961efcfemr11829886plc.30.1681671860810; 
 Sun, 16 Apr 2023 12:04:20 -0700 (PDT)
Received: from fastly.com (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
 by smtp.gmail.com with ESMTPSA id
 bj3-20020a170902850300b001a67a37beeesm6171068plb.139.2023.04.16.12.04.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 16 Apr 2023 12:04:20 -0700 (PDT)
Date: Sun, 16 Apr 2023 12:04:18 -0700
From: Joe Damato <jdamato@fastly.com>
To: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
Message-ID: <20230416190417.GA43280@fastly.com>
References: <20230415054855.9293-1-jdamato@fastly.com>
 <20230415054855.9293-3-jdamato@fastly.com>
 <6a477f53-1b63-4e85-0c81-b60aff5fab0c@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6a477f53-1b63-4e85-0c81-b60aff5fab0c@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1681671861; x=1684263861;
 h=user-agent:in-reply-to:content-disposition:mime-version:references
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=UbEZeTq9MMgr0QnP6gJ8C3OJs7xVTjb+8LXU9xueXGE=;
 b=ak6Rr71z9lauYdJHdQnq8+iLPQhOh+jtNc9SIkelzRkyoPL8itGsN9z8PFId9lDQIf
 sxi2ntE5Lyb69NMhAJ9csDgFemblvoDw/V/X8rDWrXw5J69uNM1pY077BTUTdhqfrQS8
 84qjfQdbbA5dCoHm0zbIf1Zx4XUgi71Gw7gY4=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com
 header.a=rsa-sha256 header.s=google header.b=ak6Rr71z
Subject: Re: [Intel-wired-lan] [PATCH net 2/2] ixgbe: Allow ixgbe to reset
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, jesse.brandeburg@intel.com, kuba@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sun, Apr 16, 2023 at 10:29:36AM -0500, Samudrala, Sridhar wrote:
> 
> 
> On 4/15/2023 12:48 AM, Joe Damato wrote:
> >ethtool uses `ETHTOOL_GRXRINGS` to compute how many queues are supported
> >by RSS. The driver should return the smaller of either:
> >   - The maximum number of RSS queues the device supports, OR
> >   - The number of RX queues configured
> >
> >Prior to this change, running `ethtool -X $iface default` fails if the
> >number of queues configured is larger than the number supported by RSS,
> >even though changing the queue count correctly resets the flowhash to
> >use all supported queues.
> >
> >Other drivers (for example, i40e) will succeed but the flow hash will
> >reset to support the maximum number of queues supported by RSS, even if
> >that amount is smaller than the configured amount.
> >
> >Prior to this change:
> >
> >$ sudo ethtool -L eth1 combined 20
> >$ sudo ethtool -x eth1
> >RX flow hash indirection table for eth1 with 20 RX ring(s):
> >     0:      0     1     2     3     4     5     6     7
> >     8:      8     9    10    11    12    13    14    15
> >    16:      0     1     2     3     4     5     6     7
> >    24:      8     9    10    11    12    13    14    15
> >    32:      0     1     2     3     4     5     6     7
> >...
> >
> >You can see that the flowhash was correctly set to use the maximum
> >number of queues supported by the driver (16).
> >
> >However, asking the NIC to reset to "default" fails:
> >
> >$ sudo ethtool -X eth1 default
> >Cannot set RX flow hash configuration: Invalid argument
> >
> >After this change, the flowhash can be reset to default which will use
> >all of the available RSS queues (16) or the configured queue count,
> >whichever is smaller.
> >
> >Starting with eth1 which has 10 queues and a flowhash distributing to
> >all 10 queues:
> >
> >$ sudo ethtool -x eth1
> >RX flow hash indirection table for eth1 with 10 RX ring(s):
> >     0:      0     1     2     3     4     5     6     7
> >     8:      8     9     0     1     2     3     4     5
> >    16:      6     7     8     9     0     1     2     3
> >...
> >
> >Increasing the queue count to 48 resets the flowhash to distribute to 16
> >queues, as it did before this patch:
> >
> >$ sudo ethtool -L eth1 combined 48
> >$ sudo ethtool -x eth1
> >RX flow hash indirection table for eth1 with 16 RX ring(s):
> >     0:      0     1     2     3     4     5     6     7
> >     8:      8     9    10    11    12    13    14    15
> >    16:      0     1     2     3     4     5     6     7
> >...
> >
> >Due to the other bugfix in this series, the flowhash can be set to use
> >queues 0-5:
> >
> >$ sudo ethtool -X eth1 equal 5
> >$ sudo ethtool -x eth1
> >RX flow hash indirection table for eth1 with 16 RX ring(s):
> >     0:      0     1     2     3     4     0     1     2
> >     8:      3     4     0     1     2     3     4     0
> >    16:      1     2     3     4     0     1     2     3
> >...
> >
> >Due to this bugfix, the flowhash can be reset to default and use 16
> >queues:
> >
> >$ sudo ethtool -X eth1 default
> >$ sudo ethtool -x eth1
> >RX flow hash indirection table for eth1 with 16 RX ring(s):
> >     0:      0     1     2     3     4     5     6     7
> >     8:      8     9    10    11    12    13    14    15
> >    16:      0     1     2     3     4     5     6     7
> >...
> >
> >Signed-off-by: Joe Damato <jdamato@fastly.com>
> 
> Thanks for the detailed commit message and steps to reproduce
> and validate the issue.

No worries. Thanks for the review.

> Would suggest changing the title to indicate that this fix is enabling
> setting the RSS indirection table to default value.

OK, sure. I can send a v2 that includes your reviewed tags and changes the
title of this commit (but makes no other changes).

I'll make the new title of this commit ixgbe: Enable setting RSS table to
default values.

Hope that's ok; will send out the v2 shortly.

> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> 
> >---
> >  .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  | 19 ++++++++++---------
> >  1 file changed, 10 insertions(+), 9 deletions(-)
> >
> >diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> >index 821dfd323fa9..0bbad4a5cc2f 100644
> >--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> >+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> >@@ -2665,6 +2665,14 @@ static int ixgbe_get_rss_hash_opts(struct ixgbe_adapter *adapter,
> >  	return 0;
> >  }
> >+static int ixgbe_rss_indir_tbl_max(struct ixgbe_adapter *adapter)
> >+{
> >+	if (adapter->hw.mac.type < ixgbe_mac_X550)
> >+		return 16;
> >+	else
> >+		return 64;
> >+}
> >+
> >  static int ixgbe_get_rxnfc(struct net_device *dev, struct ethtool_rxnfc *cmd,
> >  			   u32 *rule_locs)
> >  {
> >@@ -2673,7 +2681,8 @@ static int ixgbe_get_rxnfc(struct net_device *dev, struct ethtool_rxnfc *cmd,
> >  	switch (cmd->cmd) {
> >  	case ETHTOOL_GRXRINGS:
> >-		cmd->data = adapter->num_rx_queues;
> >+		cmd->data = min_t(int, adapter->num_rx_queues,
> >+				  ixgbe_rss_indir_tbl_max(adapter));
> >  		ret = 0;
> >  		break;
> >  	case ETHTOOL_GRXCLSRLCNT:
> >@@ -3075,14 +3084,6 @@ static int ixgbe_set_rxnfc(struct net_device *dev, struct ethtool_rxnfc *cmd)
> >  	return ret;
> >  }
> >-static int ixgbe_rss_indir_tbl_max(struct ixgbe_adapter *adapter)
> >-{
> >-	if (adapter->hw.mac.type < ixgbe_mac_X550)
> >-		return 16;
> >-	else
> >-		return 64;
> >-}
> >-
> >  static u32 ixgbe_get_rxfh_key_size(struct net_device *netdev)
> >  {
> >  	return IXGBE_RSS_KEY_SIZE;
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
