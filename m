Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 99B19A4FD5B
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Mar 2025 12:16:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 193B981B99;
	Wed,  5 Mar 2025 11:16:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oZNz27mnfyKH; Wed,  5 Mar 2025 11:16:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6794F819F3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741173366;
	bh=1DI4xe6ev0C8Vg26nmOS2rEQ0D+xLQLYQngmbnquA/U=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jPFAuh7VKu3ApNHcjL+wIrsvcwX9qRrWmqoDGeWfkdNZqyc26Hwwec8G3UjV6tb2y
	 uuEjFgwVSf64QPRrV0AtJKt7Hw4t1Z4I0kaA7Un4AoPT0oVxtL3qmtWfQEhD4J/+oN
	 ZUCtNAvCgTQGsC8NxJ31xSQJh4WLcpD8xju0nN7Edef9/eZGD+7kbrHts54u5iLdKB
	 KB7RNp8vNQYsDg+Eg6zfu2jv29q456SfUDe4PR22+OkWiUqUZBxcUSvwZAxSr9mnz6
	 tooGNBCj6Z+vaE0FWE58+xAyXx1VkpruDRmCIJAnjm/azZppA2P/GbqdpCo/kbXdqe
	 PrmkrYP/b315Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6794F819F3;
	Wed,  5 Mar 2025 11:16:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id BC507E2E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 11:16:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9BCB940452
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 11:16:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v08H6s09h9wq for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Mar 2025 11:16:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4BCD740163
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4BCD740163
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4BCD740163
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 11:16:02 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 44D995C4C37;
 Wed,  5 Mar 2025 11:13:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 49137C4CEE2;
 Wed,  5 Mar 2025 11:15:59 +0000 (UTC)
Date: Wed, 5 Mar 2025 11:15:56 +0000
From: Simon Horman <horms@kernel.org>
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, andrew@lunn.ch, pmenzel@molgen.mpg.de,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <20250305111556.GJ3666230@kernel.org>
References: <20250303120630.226353-1-jedrzej.jagielski@intel.com>
 <20250303120630.226353-2-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250303120630.226353-2-jedrzej.jagielski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1741173360;
 bh=v7LI38xkeWG6cVSpqp+6pXrepcB4JMdiHdJj+5c1pVY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Exo0sgyWuqwGBxyDDDt3idnRA0JH4ZFcMXiyp9c97HznqwJvMBaZGRtDcRPShKRyE
 gtIkTF2jrKNyY3xSdTpBb2YsmDcqcqaEgjgSOvZBdmDcCBckwgoQgEJnWaSRFZfWuZ
 J9A3QbJRSUYTTnFdnFoOyWvGsD3ocrjS0kMQeW6Q5s4Lc1B4iPjw6QFEZ/Zv1rATzK
 dzC1cuzVq7QY5pLbG165TJao1IY2GGRpGFRa1OdVt5HV8aq2kbyq5LFIfZW32MMP/e
 zyo1OKcIqfeXGRMoyASl7Ng0zbeWQQbJAzcUzYS58RPHZKPLbwQX9YDVqo6g07mraS
 mURtYAClOl0CQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=Exo0sgyW
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 1/4] ixgbe: create E610
 specific ethtool_ops structure
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

On Mon, Mar 03, 2025 at 01:06:27PM +0100, Jedrzej Jagielski wrote:
> E610's implementation of various ethtool ops is different than
> the ones corresponding to ixgbe legacy products. Therefore create
> separate E610 ethtool_ops struct which will be filled out in the
> forthcoming patches.
> 
> Add adequate ops struct basing on MAC type. This step requires
> changing a bit the flow of probing by placing ixgbe_set_ethtool_ops
> after hw.mac.type is assigned. So move the whole netdev assignment
> block after hw.mac.type is known. This step doesn't have any additional
> impact on probing sequence.
> 
> Suggested-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
> v3: correct the commit msg

Reviewed-by: Simon Horman <horms@kernel.org>

