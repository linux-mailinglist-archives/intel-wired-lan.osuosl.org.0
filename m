Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 62F1FA286DB
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Feb 2025 10:44:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0692B41744;
	Wed,  5 Feb 2025 09:44:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V7hj_k_TRCer; Wed,  5 Feb 2025 09:44:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 41BE7415EB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738748690;
	bh=PePV1R2OvgrEW0dRBcae5Kyql0zwWxy3pzrbBKpOPFk=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=npGnhBHhlniJcE53V9vFB5uMoIzrP3JHezLcK7IiL2++eFglvkBpsa48ogi0jQNag
	 FRPZTL6/4scHm7h5jHl+YBmLgrfPFuejNtYkBqnpFJ9o+02tRUpz1crinAQOzgbxc8
	 +eHVEPpty9hx9CIxMhMtWyU9+1uz3ICHNuHXoWQnqbw4r5xHBuWQDrLP/SlGQrG1of
	 d2MxztHboQs4kpZhR49kTVZZv0m3+Dk1R0ANbDUQQs04cTVlmg7RpBzMSxtusqRYbR
	 c5JMADozIWFQ4tCjaM7BQmEfleWXwLj5f5Iq3uGnOUu9G/JVKkWgc6so0kaFkJZD5L
	 Ee6ydl9vburlw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 41BE7415EB;
	Wed,  5 Feb 2025 09:44:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 0523FCD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Feb 2025 09:44:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DD2A04037C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Feb 2025 09:44:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Hp1A9noeEI2q for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Feb 2025 09:44:47 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D47E1400FF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D47E1400FF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D47E1400FF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Feb 2025 09:44:46 +0000 (UTC)
X-CSE-ConnectionGUID: pmHuNRcGTjWNeFs4gLvG/g==
X-CSE-MsgGUID: Mn+1tmDdSDa094NGZWshng==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="39463539"
X-IronPort-AV: E=Sophos;i="6.13,261,1732608000"; d="scan'208";a="39463539"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 01:44:46 -0800
X-CSE-ConnectionGUID: gsJi0kixTue3luxQo5W+OA==
X-CSE-MsgGUID: JKqigt94Szu8N4LOKnQWqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,261,1732608000"; d="scan'208";a="110707699"
Received: from mev-dev.igk.intel.com ([10.237.112.144])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 01:44:43 -0800
Date: Wed, 5 Feb 2025 10:41:11 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: "Zhuo, Qiuxu" <qiuxu.zhuo@intel.com>
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "Knitter, Konrad" <konrad.knitter@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Message-ID: <Z6MyN8U6rt/6Ayye@mev-dev.igk.intel.com>
References: <CY8PR11MB7134BF7A46D71E50D25FA7A989F72@CY8PR11MB7134.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CY8PR11MB7134BF7A46D71E50D25FA7A989F72@CY8PR11MB7134.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738748687; x=1770284687;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=J6AXsn3lH7MBCqC6dF7yAkLsCQbHWrYkDB7bo9+iMlY=;
 b=fUuCAvQK1H9xny/lo4SBZ7vn2djeCn0cjUQvjQdVGNXliVydg8DXSrL0
 6otbPX0dMwdG3l81Ge2JDaSolGbjqQ5RgUoIvBi9jm9lUrEDrAoPYjCcZ
 QTqjunuJUw97Rn8mNsykiY8FlpzAenZTSPNxmMHZf65wJNiPlYbt9P1e9
 RRsOiOnX5EgRk3/raTYQiaI+wb9lusS9C/a3pCT1K7lGqW3gVwYWSPKAS
 dLPXqPRuwGvtnozMJrW6Hjh4qPR8fEWa1Xmvvse1JOtOApbxFt6Eq9fcP
 /zPugS+q285zX5vyg6Q30iNtzBXlnqk6eR+P0jQ4Dpe8o4i1J+1Q8KTQh
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fUuCAvQK
Subject: Re: [Intel-wired-lan] Build error on
 "drivers/net/ethernet/intel/ice/devlink/health.c:35:3: error: initializer
 element is not constant"
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

On Wed, Feb 05, 2025 at 03:18:30AM +0000, Zhuo, Qiuxu wrote:
> Hi,
> 
> I got the build error messages as below:
> My GCC is: gcc (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0.
> 

Try compiling with gcc 8.1 or newer.

Thanks,
Michal

> 
>   CC [M]  drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.o
> drivers/net/ethernet/intel/ice/devlink/health.c:35:3: error: initializer element is not constant
>    ice_common_port_solutions, {ice_port_number_label}},
>    ^~~~~~~~~~~~~~~~~~~~~~~~~
