Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 90555787440
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Aug 2023 17:32:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0D6CE83323;
	Thu, 24 Aug 2023 15:32:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0D6CE83323
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692891131;
	bh=MvSpsB2nFtrGx4zbQ3MMhi/0h3XTmZnwog61mwDVS3U=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EBDsm8rshvNoFkr8Bio+LcHcIMmo83rtgTponPfZQOaIbAajFBh/wAl3nONbk6ZcQ
	 hHfMMmaYBLCBFmouZ3ruRNwQ9CA1Hp7FKeVw/6v/glEDePvsCk1Gtq914/AqnNG+q9
	 f0TXxBabwsAi3gT4QjT/yb6RIgzxXZ3+rzw/shISUeiBjrMOTw3eyZlwWpdiM3sEh2
	 Xg9AfQhwbsnM9TuUiDCGmsfo3bXahrzGySZtvW1N6wUDYZBEDEh7Ca6FEROQ6JnpOS
	 tOcFy0q/G0SEDSPeasf9k9fsSlRNX45TLNxoCJP/lIGb+T/5W9BURDw6RPXq4xTxNZ
	 ZH1YNyCgIrVIQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TEsFMI6i2_x3; Thu, 24 Aug 2023 15:32:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1284F8316A;
	Thu, 24 Aug 2023 15:32:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1284F8316A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 601FA1BF329
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 15:32:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 37EA58317B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 15:32:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 37EA58317B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZYRa3nyaOGOY for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Aug 2023 15:32:03 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9BDE68316A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 15:32:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9BDE68316A
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id C70EA6588D;
 Thu, 24 Aug 2023 15:32:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7720EC43397;
 Thu, 24 Aug 2023 15:32:02 +0000 (UTC)
Date: Thu, 24 Aug 2023 08:32:01 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Wojciech Drewek <wojciech.drewek@intel.com>
Message-ID: <20230824083201.79f79513@kernel.org>
In-Reply-To: <20230824085459.35998-1-wojciech.drewek@intel.com>
References: <20230824085459.35998-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1692891122;
 bh=shKzP6SBvNhyTSihnulA5HdvC9BRtYV2zw/VbcNU5Ko=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=tbuM6OCjxFAbOLwlHgkqVLhECtj93RdzE+sUtJJwhFGJ5GTDCg9pVcdSLNvcKG6fZ
 bMwXOrY/LDcy2w6tNy/aFcL0sjCK6S1C+7t+drMeeOH5w9w138IXd/rghvBtKGSNSy
 UnuxhP3CQ23CiA1SKDB6lrsRdcnVCV884n9655RZQOB9Jzz81i0k1H+LJjKrGEgqZ7
 5/ng58DcSU/YH8hwzxVUoVM6qqFSH1qmxke7j/P+n5GYF4hiyMxumFg96XHFO3IRN8
 z7IKFwCpX6MH8rWvNaUwd3fP05DK9a+rEZh4hAeqbSZQ4h3miIm4jyoP7PSKrAsPqO
 hiQS2ezVAnipQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=tbuM6OCj
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: Disable Cage Max
 Power override
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 przemyslaw.kitszel@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 24 Aug 2023 10:54:59 +0200 Wojciech Drewek wrote:
> NVM module called "Cage Max Power override" allows to
> change max power in the cage. This can be achieved
> using external tools. The responsibility of the ice driver is to
> go back to the default settings whenever port split is done.
> This is achieved by clearing Override Enable bit in the
> NVM module. Override of the max power is disabled so the
> default value will be used.

Can you say more? We have ETHTOOL_MSG_MODULE_GET / SET, sounds like
something we could quite easily get ethtool to support?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
