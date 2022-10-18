Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D57CB6032F6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Oct 2022 21:03:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1AB056110E;
	Tue, 18 Oct 2022 19:03:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1AB056110E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666119787;
	bh=Hftjsu2jAMTXB5v8reeqnP2LPgmDObcLu7Kb/WVrid0=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Xawyvqq721Uu94SZug49YXjv4Bn7DJEDm1k/YK34iMH1pU0ocADuR7+89/k9YkVJl
	 fBQdjhpCibPEBHZFUCSE5BX68mLFxgtqRerddrl0cSZmL/gnlp+YvJDcOOUaNZUEx4
	 oLa7LYxfZsLx5E/basQ0GcZ2WH99Pm+LW3Cuzmgx7YrJbltAEC8nx9+vBRknQw+L7O
	 E/cPyn7S10VliNk41qLAd95bosOrQsyQwLuLBD8s6xdUKv6oMT4OIC9rHr1ab5cXf5
	 HGPeYegX2hL+k3Dbih3e7GN6sO9j4zqDIBX4YsFZUdCyF3C3jfoqk0TICGQlNB7H39
	 Gu/ETki3lNQ6Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id viGblkSAdg3H; Tue, 18 Oct 2022 19:03:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2B95E6107E;
	Tue, 18 Oct 2022 19:03:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2B95E6107E
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1A7811BF31A
 for <intel-wired-lan@osuosl.org>; Tue, 18 Oct 2022 19:03:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0195C61001
 for <intel-wired-lan@osuosl.org>; Tue, 18 Oct 2022 19:03:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0195C61001
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IMSLQo_SWdOp for <intel-wired-lan@osuosl.org>;
 Tue, 18 Oct 2022 19:03:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2A1DC60B55
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2A1DC60B55
 for <intel-wired-lan@osuosl.org>; Tue, 18 Oct 2022 19:03:00 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id D6037B82034;
 Tue, 18 Oct 2022 19:02:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 16D02C433C1;
 Tue, 18 Oct 2022 19:02:55 +0000 (UTC)
Date: Tue, 18 Oct 2022 12:02:54 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
Message-ID: <20221018120254.752de264@kernel.org>
In-Reply-To: <20221018010733.4765-1-muhammad.husaini.zulkifli@intel.com>
References: <20221018010733.4765-1-muhammad.husaini.zulkifli@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1666119775;
 bh=39qAuu9VJy/xT3XJ/0K/qJYd+1DdYfUhwfm5pOGaHZM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=sL7nQXKlHKCRSMCRWt+lzizNeh8BoxYVP0ZlO4sfqwxS2+qpgK2t/2v4Y1KcCQUSd
 ViqpiJS8wC1JPdMI4I0oS6NjozuNEMD2uDcy3nrHHVstAI0/KG9qA7ZG0bdSmBiFlo
 pmvi97sXjSlDFqBZ8Hr+HfsX1R104SBl3k6ZOjsoktDVl3zAypWWrFj+ZeQ2afXt2j
 T1dzd1VG1V3hqBPahE+Dq3NI1PCMctSLUHMh2vQecKzTP9dghH+6gVJhqGgmLgH+6l
 QP/G5Z7xEyFm4Lsxh3Xbdcgwt7LMcAmaohGXhjIU4fXv6Dp8i2wKPGLafvOjhE6IWS
 6MQrf9Y3S3ogQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=sL7nQXKl
Subject: Re: [Intel-wired-lan] [PATCH v2 0/5] Add support for DMA timestamp
 for non-PTP packets
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
Cc: leon@kernel.org, intel-wired-lan@osuosl.org, richardcochran@gmail.com,
 saeed@kernel.org, edumazet@google.com, gal@nvidia.com, netdev@vger.kernel.org,
 michael.chan@broadcom.com, davem@davemloft.net, andy@greyhouse.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 18 Oct 2022 09:07:28 +0800 Muhammad Husaini Zulkifli wrote:
> v1 -> v2:
> 	- Move to the end for the new enum.
> 	- Add new HWTSTAMP_FILTER_DMA_TIMESTAMP receive filters.

Did you address my feedback? How do we know if existing
HWTSTAMP_FILTER_ALL is PHC quality of DMA?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
