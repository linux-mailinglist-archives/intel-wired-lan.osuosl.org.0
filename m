Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A6635793CD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Jul 2022 09:06:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0BA13418B8;
	Tue, 19 Jul 2022 07:06:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0BA13418B8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658214362;
	bh=Ac5aHNJBvb/95qSzC9HtYfSTLIJpf3zs01/MpZbEK2A=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=deNR4b/GMyeneMew5rLL3Y+f72lW+usbj2ybsGZ8tKthiXNrR4HTwt8ORH9jXBSdF
	 8hGVqcEJuv4GDtMY9sZA7qkPeyVLVXJ3S2t1eetePNLyGHI7XmgWzLBF4BVIow8ZHH
	 uzkAgeuds7yX622G5I44gKOVz1wDxr53GBq9g/0MMCfgphnJzmRfV/lqIetKdwlq3g
	 YPmVPPvkvVEayPKMDJ9LUXQP1bboSk2BfFs3JG4OWbLuyJAfUN15nR1nRoGF6nosCO
	 RpDvXUwbyhGwusD3nI0mLeoen9bgaGsQnDFL+ebkbRlqvjzH+Hbj9gxI+48OSVOqnD
	 nHqWKmRK2rm4A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LxKs4Jnexhd5; Tue, 19 Jul 2022 07:06:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AC41640908;
	Tue, 19 Jul 2022 07:06:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AC41640908
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 997B91BF355
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jul 2022 07:05:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 723B683E55
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jul 2022 07:05:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 723B683E55
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lwoynuKnxS5s for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Jul 2022 07:05:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CEF1383187
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CEF1383187
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jul 2022 07:05:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10412"; a="269438976"
X-IronPort-AV: E=Sophos;i="5.92,283,1650956400"; d="scan'208";a="269438976"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2022 00:05:53 -0700
X-IronPort-AV: E=Sophos;i="5.92,283,1650956400"; d="scan'208";a="572731166"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.13.11.253])
 ([10.13.11.253])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2022 00:05:51 -0700
Message-ID: <d9233529-4df9-ff17-2f29-3dd5177779e7@linux.intel.com>
Date: Tue, 19 Jul 2022 10:05:49 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Sasha Neftin <sasha.neftin@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20220718095015.3243215-1-sasha.neftin@intel.com>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20220718095015.3243215-1-sasha.neftin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658214353; x=1689750353;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=/BORNexp6wvSpZxaDMR6Po5xoMrA1auTsbTlcxZy7ic=;
 b=SkVizPDcfijeOv2WaxPXDug2/daydO+PwAGVOwyya2bnBmK669hwKsQ2
 swkgrxqmPMFoL9NjzLMlPrJzjyhHRKpSjR8t1QS9UNzYOG+5nfPRF76Ev
 o1ezMRuLvQ5m+TG4CTNcHLgGiq9bkOmz267SZPwHoz22VHEr+pf2Qshrd
 mwQdg8LmglvKso7r7iJn9D/vYq2x9Nzax157s+qQUFjFjV6rPYXHdw9zm
 h7SfVEFGqNWduieim+Hq+Z0F/Y39XzmQgy/lJ4GbfKywteWM0l7xSFGFT
 yU+ivbh/iWXJ81ez9LBCw+8j/dJw4PIOHNDqbp2fyQq0iWsYcVL+HFUsP
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SkVizPDc
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove
 forced_speed_duplex value
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 7/18/2022 12:50, Sasha Neftin wrote:
> u8 forced_speed_duplex from value from igc_mac_info struct is not used.
> This patch comes to tidy up the driver code.
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_hw.h | 2 --
>   1 file changed, 2 deletions(-)
Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
