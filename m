Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 728B278A053
	for <lists+intel-wired-lan@lfdr.de>; Sun, 27 Aug 2023 18:59:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 40B814037C;
	Sun, 27 Aug 2023 16:59:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 40B814037C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693155581;
	bh=EgSjWltI7lMVoHbeh+XJGtMBShif0KQN/VK0yi8Gpzo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=E/FUFS7u5rhI2UB8BbXcrgqVokVQ5wyFwbG3ALxbkOvjRnL+p9DEo6HpsnGZH22AV
	 wKVBdNMANq/jduS6nw+4eAMN5Y80tOTG/0FlWURjjO6N0kfgjpmOl0HGJYDFlwhLUg
	 HO5V5DLSNg1PC8HNaqj706TPTqIQ0itpUlmDIRKU32P9d76ocqueaRAcAkPXMd0cPk
	 bX85bYNFstO1BeM5VE7E26qfUyd8Nr7MKx390sPLdQx/cOzo6kHSeBT4isZ0yLyh0c
	 iBx7sVn7IdConf4KfeXteWUOBnU2Lo6DAKX35wDWYsICBvQlTo3XjuvHSffy+/XK1D
	 /04d1DnnvTgIw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eCnAPy-qgIRo; Sun, 27 Aug 2023 16:59:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2793340272;
	Sun, 27 Aug 2023 16:59:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2793340272
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 217071BF27C
 for <intel-wired-lan@osuosl.org>; Sun, 27 Aug 2023 16:59:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EA3AB81DF5
 for <intel-wired-lan@osuosl.org>; Sun, 27 Aug 2023 16:59:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EA3AB81DF5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ESumRZem7HdP for <intel-wired-lan@osuosl.org>;
 Sun, 27 Aug 2023 16:59:32 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BE4CD81D4D
 for <intel-wired-lan@osuosl.org>; Sun, 27 Aug 2023 16:59:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BE4CD81D4D
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 04E8060FD7;
 Sun, 27 Aug 2023 16:59:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 82B79C433C7;
 Sun, 27 Aug 2023 16:59:27 +0000 (UTC)
Date: Sun, 27 Aug 2023 18:59:17 +0200
From: Simon Horman <horms@kernel.org>
To: Pawel Chmielewski <pawel.chmielewski@intel.com>
Message-ID: <20230827165917.GW3523530@kernel.org>
References: <20230823180633.2450617-1-pawel.chmielewski@intel.com>
 <20230823180633.2450617-3-pawel.chmielewski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230823180633.2450617-3-pawel.chmielewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1693155571;
 bh=RfF4ljjHOVMaY0QZ0564BYSxWXYZ+w9xsoCJaHZciXA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=V7VnrVJi0+BZZrZXtEG9y1tAkd74UBHUsr33bVVixCy0r01j7Veor5k5v89ecmrX1
 C4pWV3+5RpkHbRtAKU4/K8W9Ifetul1Ef2Zc6f2aJrG9b0QpWX+UbBFaZn/sOXgN5G
 pvx8npofo3dgJZ4eySKYi0k6ghQRCrPuFdoNooD1RpU/CspnuJEXamXDxJqcgntOQc
 hMI13CnOhLuab/yB8vapLuRcRd4ScBQV6T2mZYVJFceoMWkxuHUwNiVoB3+p2PF0eg
 ITezmXGbPfPSHv4gxWwPFGkpM58xafzbZx1SdrEPEnYtGo3sTI4lWOWa5nXEQs6wmV
 02RM+QF7rDYOw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=V7VnrVJi
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 2/8] ethtool: Add forced
 speed to supported link modes maps
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
Cc: andrew@lunn.ch, aelior@marvell.com, manishc@marvell.com,
 intel-wired-lan@osuosl.org, netdev@vger.kernel.org,
 Paul Greenwalt <paul.greenwalt@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Aug 23, 2023 at 08:06:26PM +0200, Pawel Chmielewski wrote:
> From: Paul Greenwalt <paul.greenwalt@intel.com>
> 
> The need to map Ethtool forced speeds to Ethtool supported link modes is
> common among drivers. To support this, add a common structure for forced
> speed maps and a function to init them.  This is solution was originally
> introduced in commit 1d4e4ecccb11 ("qede: populate supported link modes
> maps on module init") for qede driver.
> 
> ethtool_forced_speed_maps_init() should be called during driver init
> with an array of struct ethtool_forced_speed_map to populate the mapping.
> 
> Definitions for maps themselves are left in the driver code, as the sets
> of supported link modes may vary betwen the devices.

Hi Pawel,

a minor nit from my side is that checkpatch.pl --codespell
suggests betwen -> between

> 
> The qede driver was compile tested only.
> 
> Suggested-by: Andrew Lunn <andrew@lunn.ch>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>

...
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
