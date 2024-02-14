Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DB4B854728
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Feb 2024 11:31:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BA91A60F09;
	Wed, 14 Feb 2024 10:31:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C_VQeN1YLthf; Wed, 14 Feb 2024 10:31:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D163060F00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707906694;
	bh=dgS43uAgDQ5bcDa7RjEAmxiGOZaby5fhT4GCUPz9LT0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wadCsVqOwyFJ/royPn4sBE3WmCteboGH7wbToeGWJbTcIixNFWXoDuKhtpG+/Wh/i
	 QYP1/HBFPlg2hq48w4uqsLpcomMeOQh+yVKuzPYHzwc8kAW7p4GM9boxX9yEqSHv9R
	 4wKG4ai4OUiERlp03X3fORt3jV9utWhFP4ms72lvH6wPq6W4fhWUeSalns//57HNeg
	 SmVsucP5DEcxajx1Pq8unA4KBV9u7qTshH8KY/AwjNkO1L60DLhNKLCxb6lITiLb5O
	 s6q2xMvsLGa5I1zQplV5R3K4KOvlAz97CBQclVLUbaV/IlVLDTE4Kmdk7ELrppQpnl
	 5basKFEgw7Tmg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D163060F00;
	Wed, 14 Feb 2024 10:31:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DBBF41BF5B4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 10:31:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D2E5B60BC1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 10:31:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TJSTorF-HSD6 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Feb 2024 10:31:32 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=naamax.meir@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org CBEF160B57
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CBEF160B57
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CBEF160B57
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 10:31:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="5775340"
X-IronPort-AV: E=Sophos;i="6.06,159,1705392000"; 
   d="scan'208";a="5775340"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2024 02:31:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,159,1705392000"; 
   d="scan'208";a="3472428"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.12.48.215])
 ([10.12.48.215])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2024 02:31:28 -0800
Message-ID: <4faf7765-18f7-417c-8269-2a14ec95c36b@linux.intel.com>
Date: Wed, 14 Feb 2024 12:31:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Vitaly Lifshits <vitaly.lifshits@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20240104193402.675593-1-vitaly.lifshits@intel.com>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20240104193402.675593-1-vitaly.lifshits@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707906693; x=1739442693;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=kN/Up1dK/s6tOixGbjNO+buLm/X8b+UWtiQDBITBCtg=;
 b=SHAaQ8v20gEBnKPVUXtWtcED1w3mdS0B1ErX3zGlZuw7orC4mmKTgTUm
 ubXrOzkj87MKSQPhetQOV7Fjb1opS0sYWExJnZIWFDF06IBRuIVOgy1cJ
 +XnJZ5r1CZaKqIMfAF8b/XMYY+q0Ee30O4A7JHTKGBwJaxhDhcDpi1S+0
 4pYr9hxxS+wYd0KDbiGK4DN5lWaBGVQFsFwNJUWPonauDDdVGnt2k04cK
 gVURXEuMzAxdRJCYGux60Cz9I7puefrgL0gSJf3lvPChYXFNZF1L1GABA
 DvZLmibwN7AlL5P/OHPFF/Jl0iG84xjM7R5asdSAWvksvx5dfKLE52SHa
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SHAaQ8v2
Subject: Re: [Intel-wired-lan] [PATH iwl-next v2 1/1] e1000e: Minor flow
 correction in e1000_shutdown function
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
Cc: david.m.ertman@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 1/4/2024 21:34, Vitaly Lifshits wrote:
> Add curly braces to avoid entering to an if statement where it is not
> always required in e1000_shutdown function.
> This improves code readability and might prevent a non-deterministic
> behaviour in the future.
> 
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> ---
> v2: fix commit message
> v1: initial version
> ---
>   drivers/net/ethernet/intel/e1000e/netdev.c | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)

Tested-by: Naama Meir <naamax.meir@linux.intel.com>
