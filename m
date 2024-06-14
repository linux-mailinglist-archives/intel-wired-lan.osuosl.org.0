Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B6F40908B0E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Jun 2024 13:50:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 347D3610BF;
	Fri, 14 Jun 2024 11:50:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jZxg7BQSJuV0; Fri, 14 Jun 2024 11:50:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 94749610B2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718365823;
	bh=s/NHgsRPhg79AyLDcm5X+0db5evorzesVrH7Hi4YS4I=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Hu99o70mfrta7IO4alE+6dEBEsa8NUmBYWoR9SCPQpPk4ygYKj6EhTjdyVnEoUMPU
	 x9kjrrOa5r3qRmAegXOgdCDFocw4pS8Cu6Kp1iRtoy+GotZLW2FA3Ov9uqJFLsWqX9
	 DVNCjhzNpAqJAvMj0ndSO1Uoy1MCFHDLUN3voPMNiiy6TQJS0xL1B+eAGJ9pygRSrE
	 uSa9wGH0jeZbRyMC1GY31NWzKNcweGP+NtEGmrDdhMufsFBBcLWJs5L5I3Q5BcS/nx
	 LmlZ980vmErZ7sxwkQVD0n6r1uMjQ5mpKOQx6l1EVRxZUIAZk5IHlim+MW9iLS6C4g
	 zLye+TxszRhAQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 94749610B2;
	Fri, 14 Jun 2024 11:50:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 46BB71BF35C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2024 11:50:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3159440993
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2024 11:50:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iiXXxuQw9OhU for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Jun 2024 11:50:21 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=dawid.osuchowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3A2A8405D8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3A2A8405D8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3A2A8405D8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2024 11:50:20 +0000 (UTC)
X-CSE-ConnectionGUID: r7Ab1+//Qjeb/FYPHYd/gA==
X-CSE-MsgGUID: EDYxL0xnTzezcl1sC3rfgw==
X-IronPort-AV: E=McAfee;i="6700,10204,11102"; a="18167914"
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="18167914"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 04:50:20 -0700
X-CSE-ConnectionGUID: bJre1s3DQk6VgfvXUZvahg==
X-CSE-MsgGUID: /cr7co2sQ0KVG9wtaMnpiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="44848221"
Received: from dosuchow-mobl2.ger.corp.intel.com (HELO [10.245.80.1])
 ([10.245.80.1])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 04:50:18 -0700
Message-ID: <25a9d840-b0c9-4ccc-a663-d975e6e92548@linux.intel.com>
Date: Fri, 14 Jun 2024 13:50:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>
References: <20240607121552.15127-1-dawid.osuchowski@linux.intel.com>
 <20240610194756.5be5be90@kernel.org>
Content-Language: pl
From: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
In-Reply-To: <20240610194756.5be5be90@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718365821; x=1749901821;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=s/NHgsRPhg79AyLDcm5X+0db5evorzesVrH7Hi4YS4I=;
 b=mwhuS9Yfy1fcdO3KKclveVM9otY701djGB15Wk/T76tqGOOO59vdmYbe
 p7gHP4GwnyISjVGilwBCYMdVOgLxtqJDEDr6yfFhitWzoMCoyCjV/ZnUk
 UNHRyDyp1Y2UB4Ay8POh6wXJggPsMwvTzqcfiuL82ImPOO07wlZSeYbJA
 mVfH+CF155yK2ietchP7fmlR75V6kZ34WInNgQ+Cb4JllBhrNhtF/vASG
 MsN2rTg7T+aeZtLPiMB9U7TNbPG70RDalGmPNSOePpQl5uAuXfKa2Kb0g
 12QnG+jr7gJ4A9DIV+s/3nC/pS72gzawOV+tf6RZ8izGv7iNdD2Y/ipoN
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mwhuS9Yf
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v5] ice: Do not get coalesce
 settings while in reset
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
Cc: larysa.zaremba@intel.com, Ngai-Mint Kwan <ngai-mint.kwan@intel.com>,
 netdev@vger.kernel.org, Pawel Chmielewski <pawel.chmielewski@intel.com>,
 intel-wired-lan@lists.osuosl.org, Simon Horman <horms@kernel.org>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 11.06.2024 04:47, Jakub Kicinski wrote:

> Why does the reset not call netif_device_detach()?
> Then core will know not to call the driver.
Will use this approach in new patch, thanks.

--Dawid
