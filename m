Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C9034737EDE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jun 2023 11:24:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6642360F4C;
	Wed, 21 Jun 2023 09:24:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6642360F4C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687339473;
	bh=xrFxlh1HjIAX7/dnfi981q4dBzfmycdMZPX4H3rIW+Q=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jwEYWiHEHzAzXqsvwTLx8uY4t7lmB7lMhwSmNuaXx4MTx6fvIhS5hYtesG97NYVlK
	 /4LlAuH7/ROy5xjgW91rPBcOxSR5RSmlH1wy1F2fWNnt4jzTjWIvVaWnEK7rLJ9kJp
	 ftFEiMuk5bNCjegsfuvUXUQiJzJ7R0NxwlafJmA0XYJ5w+4QcXjb7Z58aqMVKlyFaz
	 181IHcobUyTQf04QMZ+XdCestL8hJ/R2M32svQvFii4voGiGXPpzNABee3nxQ/ZEZY
	 mGZ/SVGgSwBNp519tNdZqj9gayOdQoip3nvrN7BX8EeQYGtgCom/JkgkOO0AqduffS
	 PIbDYH61btdpg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NgYL-MgFBz3G; Wed, 21 Jun 2023 09:24:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5E47260B06;
	Wed, 21 Jun 2023 09:24:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5E47260B06
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 737411BF4E5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 09:24:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4AFFD40641
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 09:24:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4AFFD40641
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J_hGQF4NMA9g for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Jun 2023 09:24:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A2A584019D
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A2A584019D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 09:24:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="426073847"
X-IronPort-AV: E=Sophos;i="6.00,260,1681196400"; d="scan'208";a="426073847"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 02:23:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="888591015"
X-IronPort-AV: E=Sophos;i="6.00,260,1681196400"; d="scan'208";a="888591015"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.13.12.68])
 ([10.13.12.68])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 02:23:56 -0700
Message-ID: <914190c8-20a0-437e-8686-e988ce6e4bf8@linux.intel.com>
Date: Wed, 21 Jun 2023 12:23:54 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Content-Language: en-US
To: Prasad Koya <prasad@arista.com>, intel-wired-lan@lists.osuosl.org
References: <20230605031534.9846-1-prasad@arista.com>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20230605031534.9846-1-prasad@arista.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687339466; x=1718875466;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=jwoI1S5xRQ2oJ2JzwSF/BYTNVabL1Q1kbZL0X9U00Q8=;
 b=AnVbfriJOQPyzCkX4AgXDF1BAkdEN71xC8NY6nwM9JIdX8lFMmg0lfrc
 mQe1QhdE6b60HYKkSkkPrDzlCVtI4n4SVCkW+fVnvfoU49ghjPnRcvln/
 Dt1WEXtu780uomOSnpt/GDwuB9lK97Nkp3yoe2/0WoVBsNM5wWSNlxGO/
 eenqO1faobQtLI9wz2bKXml1QoOp0LJjkCTwfbxi3D9rjsj8lCimYoB1u
 tavw2oJk1XHXWVsgJDZ8ZyFij+FwkKI+IlWuFXILS4xdV7owOzBuKJJL4
 QeiftjIiL+rWLoaBrDmEyt77HbuBLYX6lgNM16bvJzGaj/nThaLzfRw/9
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AnVbfriJ
Subject: Re: [Intel-wired-lan] [PATCH] [iwl-net,
 v2] igc: set TP bit in 'supported' and 'advertising' fields of
 ethtool_link_ksettings
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
Cc: Devora Fuxbrumer <devora.fuxbrumer@intel.com>,
 Salam Noureddine <noureddine@arista.com>,
 Anthony L Nguyen <anthony.l.nguyen@intel.com>,
 Bob Gilligan <gilligan@arista.com>, Dima Ruinskiy <dima.ruinskiy@intel.com>,
 Amir Avivi <amir.avivi@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 6/5/2023 06:15, Prasad Koya wrote:
> set TP bit in the 'supported' and 'advertising' fields. I226 only supports twisted pair copper.
> 
> Fixes: 8c5ad0dae93c9 ("igc: Add ethtool support")
> Signed-off-by: Prasad Koya <prasad@arista.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_ethtool.c | 2 ++
>   1 file changed, 2 insertions(+)

Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
