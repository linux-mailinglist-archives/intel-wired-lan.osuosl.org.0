Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 89C1EA91E37
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Apr 2025 15:39:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4B48D84B11;
	Thu, 17 Apr 2025 13:39:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v1FX_hCHOypX; Thu, 17 Apr 2025 13:39:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C8A9584B0C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744897164;
	bh=C7wAWc8APSL79TtUAcTI7txGwu3TsmVXYyy8u8T2vb8=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fCGyUIJ58EZcHTkTwYc0OJ2JVSrDfTN4E4riFY68jkOCdUZHQNdUwO8NKJa04dqCn
	 1Wdx2XbrEqRZNCA6/W+dKMMUcNM+xZQ8zLvJ1I+Bk7ZQ1/ICeowUSiqqdqtWxjYEkD
	 NNCdeFN5aGVDVZVmoXxOO+Nt+uBxK3f++m01qH0RcSlSvxdF0zm95WQy6clrpyOgfN
	 iHGjAp1Zpeec/bjubuaPiWtu1v3wPYLeFH2l4LpjG7JuUR6Ka1PwH2lMZwhxWGtObZ
	 oQ89E2QdWVrffibZCoQAbaWTq8ucJ+R8abUy3wq/Tu1hFJ74NLBGuhwajZTnWdewjU
	 o+V8m50VmcfRg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C8A9584B0C;
	Thu, 17 Apr 2025 13:39:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id F3F191F3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Apr 2025 13:39:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D951E405C6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Apr 2025 13:39:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gf2NVyXT0XYl for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Apr 2025 13:39:22 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=dawid.osuchowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1194D4056F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1194D4056F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1194D4056F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Apr 2025 13:39:21 +0000 (UTC)
X-CSE-ConnectionGUID: KCMtTl+zQYuWJtIUtBnoUw==
X-CSE-MsgGUID: h3Mr5GhLTSiyJnffHjmZcw==
X-IronPort-AV: E=McAfee;i="6700,10204,11405"; a="50133117"
X-IronPort-AV: E=Sophos;i="6.15,219,1739865600"; d="scan'208";a="50133117"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 06:39:21 -0700
X-CSE-ConnectionGUID: p3dR8Pc/TZ2ZAuqpm3aYyg==
X-CSE-MsgGUID: Gu+8ZZ8pRdOS/0xCVRwXtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,219,1739865600"; d="scan'208";a="161758340"
Received: from soc-5cg4396xfb.clients.intel.com (HELO [172.28.180.99])
 ([172.28.180.99])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 06:39:16 -0700
Message-ID: <4918f292-46b5-491f-a8da-5d42432bde56@linux.intel.com>
Date: Thu, 17 Apr 2025 15:39:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Thomas_Wei=C3=9Fschuh?= <thomas.weissschuh@linutronix.de>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>,
 Tariq Toukan <tariqt@nvidia.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rdma@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20250417-restricted-pointers-net-v2-0-94cf7ef8e6ae@linutronix.de>
Content-Language: pl, en-US
From: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
In-Reply-To: <20250417-restricted-pointers-net-v2-0-94cf7ef8e6ae@linutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744897162; x=1776433162;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=C7wAWc8APSL79TtUAcTI7txGwu3TsmVXYyy8u8T2vb8=;
 b=bN2HJ9+wYeHy1VKMFb9QEvX343X8j0moTLYaMv1VvageG4S2YNgmtmio
 iuRmK0ye4UcHYTnM3DsrSzs+GR5bZ8Ke0Z1zNSAAZo99Fg3QVJAfH8gHx
 fGDuEJ+0ewuZ0g4aVIqbsFG2IP5ghmFLZrAzN3jIxu2XEpKqEm0Osfz/Z
 tXIM2BpRNuxYO6BlSenccYaEz5U15MgUSi66AUo66nxvoges30/2sp+LP
 ggXdKg3o1D2fYsM7NK0vc4eNt7KqDqLpRizN6KF5FlZEMwglNKYmdnJZE
 26HNBDSI1/zpsj9ONQKK3TggyZNPNEYQO3BlfAs1l0fyQqROLlu/MNmOo
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=bN2HJ9+w
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 0/2] net: Don't use %pK
 through printk
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

On 2025-04-17 3:24 PM, Thomas Weißschuh wrote:
> acquire sleeping looks in atomic contexts.

typo? s/sleeping looks/sleeping locks/

present in patch descriptions as well
