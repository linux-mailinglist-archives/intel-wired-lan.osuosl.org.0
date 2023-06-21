Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E162737EF3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jun 2023 11:26:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 817D9613D2;
	Wed, 21 Jun 2023 09:26:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 817D9613D2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687339614;
	bh=McIqX8iJlR+1ftv5xQ4KMQU6uJdB+zP0Vs3kcenolOQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZG3dOThDcPEGd2wiHorEelp0pcfevkW9t7/YZvj+D61slFx15WCfVOokyAxG35bE6
	 fvf5gMFk9HtXptw/FHbQ/cMLqGvtfN+79ZJWBoZUQcaIP3ETgV738b8zRttP2UwOLf
	 9+oEagtZ6uG/1WwCsxpOAeNDJ1nP9bTP1I+Hv+87Z91jv9SEyU/AKfs87DjWDYpLKe
	 0f6TxHTQpvsakibeIvVc2POfuGcw/oDPKoFWsaEQz8hbHLSWEac33qg/wgn90uyPnk
	 4fnonCKxcLY45qCC5HAUj1BehwCHEGS2UmRMCTu180EJTAYnq2dM4E22sOG5E9LzTQ
	 qhZ9G1S4up8Jw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IhNYhBtWgsx4; Wed, 21 Jun 2023 09:26:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AC1B9613F0;
	Wed, 21 Jun 2023 09:26:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AC1B9613F0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D360A1BF4E5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 09:26:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 657EA83410
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 09:26:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 657EA83410
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cxUNME-nhkg3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Jun 2023 09:26:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DB93083478
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DB93083478
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 09:26:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="423783754"
X-IronPort-AV: E=Sophos;i="6.00,260,1681196400"; d="scan'208";a="423783754"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 02:26:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="804293624"
X-IronPort-AV: E=Sophos;i="6.00,260,1681196400"; d="scan'208";a="804293624"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.13.12.68])
 ([10.13.12.68])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 02:26:22 -0700
Message-ID: <2d0c169c-cc87-9de7-d62a-9bd239bee962@linux.intel.com>
Date: Wed, 21 Jun 2023 12:26:20 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Content-Language: en-US
To: Prasad Koya <prasad@arista.com>, intel-wired-lan@lists.osuosl.org
References: <20230605180901.12573-1-prasad@arista.com>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20230605180901.12573-1-prasad@arista.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687339602; x=1718875602;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=1hYGaI1TSWiVn64wm+2+S2VTITj8KY83hQI+U/d4r2A=;
 b=NKIdzo4kNjaGCB2lGO4wnvJjSH3C4OTbf/vveEdjLNwwNlkjoEUnEhFy
 QTwdc4EMfJqsfkLn2I6ti/Rs6Iz9lNGw33besrWaqUHMSytWTBMSy53GZ
 hcVh81zcE+woVkwt4V5MT33AX55F8gKQaT5hmWBamCEkma8VM0jjn9rgH
 Aj/lqlGtH7GcWsaH0XZZ/mIx5vOuvwVDwZFI3Dp6z9jE2xQDM2Ft7TY1z
 11ZYzrFpAi5E8OYXhfe9HlaETEZtd9+Z9/x7Mw06nJDPWOPwyLbeK0ILR
 YiWpGG+n/kAE8niT81spQcuMOFJEMnLVfl4Bh/IlOAEx4rl1P3fNocstA
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NKIdzo4k
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

On 6/5/2023 21:09, Prasad Koya wrote:
> set TP bit in the 'supported' and 'advertising' fields. i225/226 parts
> only support twisted pair copper.
> 
> Fixes: 8c5ad0dae93c ("igc: Add ethtool support")
> Signed-off-by: Prasad Koya <prasad@arista.com>
> Acked-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_ethtool.c | 2 ++
>   1 file changed, 2 insertions(+)

Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
