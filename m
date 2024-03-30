Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D15F1892D92
	for <lists+intel-wired-lan@lfdr.de>; Sat, 30 Mar 2024 22:57:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4483882134;
	Sat, 30 Mar 2024 21:57:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SlJLqWXTMYUD; Sat, 30 Mar 2024 21:57:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A3F978214D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711835831;
	bh=IZ0VCe3iNf6wEVXOTCw6lmBDLZ7NjriGD/YDnR3wMN4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=T33zCrmwdbvv69zWkeDgKCxZYuKZHdIgwHsyhqR9DQfIF2U2JwFaYpYxvCbWevPqT
	 RlXiCXhuDUtfwkRLr14+mn8QVeyoxLz9bW5x3rwjuah4PCsDUDJeqYQcKZKkq0Egbo
	 pSjpA2l/00GMppTvpBphAE2zUORFQ2YlyUqJDlzlmDznKOYtDTEWjXQONaEfMWkS5F
	 COGHLg2cNEc7BImqclJ/HmLUgTgEVLzGbsob0TTuxeBwtaC+XeOLAopwemhLR2QJ65
	 svByTqdMVvcig9SudycCL2FX5rD4cB0MmtX2I0TzDSGi9QUgI7tfwEPfkuO/B8HtM2
	 BWZ1ojUAI5E4w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A3F978214D;
	Sat, 30 Mar 2024 21:57:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E516E1BF283
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Mar 2024 21:57:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CFCA940201
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Mar 2024 21:57:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x7fMQw_QVsin for <intel-wired-lan@lists.osuosl.org>;
 Sat, 30 Mar 2024 21:57:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E9681401FE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E9681401FE
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E9681401FE
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Mar 2024 21:57:08 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1rqghD-00BkPE-0K; Sat, 30 Mar 2024 22:57:03 +0100
Date: Sat, 30 Mar 2024 22:57:02 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Wojciech Drewek <wojciech.drewek@intel.com>
Message-ID: <38d874e3-f25b-4af2-8c1c-946ab74c1925@lunn.ch>
References: <20240329092321.16843-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240329092321.16843-1-wojciech.drewek@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=IZ0VCe3iNf6wEVXOTCw6lmBDLZ7NjriGD/YDnR3wMN4=; b=PBZbgQcqz+Z/9+/z5NNgXvLHao
 y+Z95swHz8k9SInML7Cx6typz+jPac5PQ8x2QOVjZiHrhxDhb6tkgljD806DlPmYqcV54edGZmbCl
 y8BmaRaIJM2yB2pDVuq/vtwhzgL16ybpZWuM+0dzv0/X9Nml7k+SAMK9FfVrBl/aRKLQ=;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=PBZbgQcq
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/3] ethtool: Max power
 support
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
Cc: netdev@vger.kernel.org, idosch@nvidia.com, edumazet@google.com,
 marcin.szycik@linux.intel.com, anthony.l.nguyen@intel.com, kuba@kernel.org,
 simon.horman@corigine.com, intel-wired-lan@lists.osuosl.org, pabeni@redhat.com,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Mar 29, 2024 at 10:23:18AM +0100, Wojciech Drewek wrote:
> Some ethernet modules use nonstandard power levels [1]. Extend ethtool
> module implementation to support new attributes that will allow user
> to change maximum power. Rename structures and functions to be more
> generic. Introduce an example of the new API in ice driver.
> 
> Ethtool examples:
> $ ethtool --show-module enp1s0f0np0
> Module parameters for enp1s0f0np0:
> power-min-allowed: 1000 mW
> power-max-allowed: 3000 mW
> power-max-set: 1500 mW
> 
> $ ethtool --set-module enp1s0f0np0 power-max-set 4000

We have had a device tree property for a long time:

  maximum-power-milliwatt:
    minimum: 1000
    default: 1000
    description:
      Maximum module power consumption Specifies the maximum power consumption
      allowable by a module in the slot, in milli-Watts. Presently, modules can
      be up to 1W, 1.5W or 2W.

Could you flip the name around to be consistent with DT?

> minimum-power-allowed: 1000 mW
> maximum-power-allowed: 3000 mW
> maximum-power-set: 1500 mW

Also, what does minimum-power-allowed actually tell us? Do you imagine
it will ever be below 1W because of bad board design? Do you have a
bad board design which does not allow 1W?

Also, this is about the board, the SFP cage, not the actual SFP
module?  Maybe the word cage needs to be in these names?

Do we want to be able to enumerate what the module itself supports?
If so, we need to include module in the name, to identify the numbers
are about the module, not the cage.

    Andrew
