Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A6EA94EB75
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Aug 2024 12:48:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8018F80F80;
	Mon, 12 Aug 2024 10:48:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jGcVjwJxMv4b; Mon, 12 Aug 2024 10:48:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D19E280E35
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723459733;
	bh=te++Lt4Sf2b7kUvIn9X/n9Hg2SESpJbEXfoTxGYtO1M=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zjwX2Eq23gWdvOPOI3p/KagjXsHVUwB41fFmpWDYMRs21WFD3whqTWIfzhbjrSKrd
	 p5+caNFDUh+zUBweRfukbfHZajIdI6Zl2HdVTjWX6QGfXJm/JKj59LUBBuZrVa+xYm
	 QzwBsfi6vmXkDj5EQ11QvdzVsi4bP3xMHsd0XWUQ4Pfr40zc/hO7ruLhiV8o6ofHy+
	 xYDd8nbzM7ewI3jikjQbn0oV+FMKS9jhjzfDWsEzJYC2cmnWFp0WRin6b6AvPMeCGP
	 tLfMMtJIMaMAncGD0ov2G4/TGy/SGJKGB+hu3NiJk5y605CXBubpij+jskBPj3SAJn
	 m40yFR2WG6xWw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D19E280E35;
	Mon, 12 Aug 2024 10:48:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9CC141BF867
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2024 10:48:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 890E260685
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2024 10:48:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rioSqtMLYvmc for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Aug 2024 10:48:51 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=dawid.osuchowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 97B3460680
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 97B3460680
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 97B3460680
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2024 10:48:50 +0000 (UTC)
X-CSE-ConnectionGUID: kxinmkrnQ1+lU4OXN5UBWQ==
X-CSE-MsgGUID: cofpVpj7SXGGsVdKKfGKPA==
X-IronPort-AV: E=McAfee;i="6700,10204,11161"; a="32139993"
X-IronPort-AV: E=Sophos;i="6.09,282,1716274800"; d="scan'208";a="32139993"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2024 03:48:49 -0700
X-CSE-ConnectionGUID: ojUYh2FvR8GuB4xGEcEyNQ==
X-CSE-MsgGUID: gTU7XxZ7T/aTr3+DzBSdzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,282,1716274800"; d="scan'208";a="58789297"
Received: from dosuchow-mobl2.ger.corp.intel.com (HELO [10.245.130.66])
 ([10.245.130.66])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2024 03:48:48 -0700
Message-ID: <d7df5610-5e8d-45d9-a17f-52463ca3ba3e@linux.intel.com>
Date: Mon, 12 Aug 2024 12:48:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: intel-wired-lan@lists.osuosl.org
References: <20240812102210.61548-1-dawid.osuchowski@linux.intel.com>
Content-Language: pl
From: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
In-Reply-To: <20240812102210.61548-1-dawid.osuchowski@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723459730; x=1754995730;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=eV7lAGb1MJFY+mLPUB4VhgIv6+y05aN3SubrltMv1N8=;
 b=NxDwqN5ijr6C44d7DDesPvO0uVexFhdYTuVFeCuIpvNyDiO2rAptgV11
 FMbjgN7ufy8NjVEs3wei1I/wBuHfaR2qgRuuDGAsgzzhH0A3ShUn4XWHl
 0Mzv8NBA01cWPzYkKVQzCFMFDcqSo0xwjJmhMwXlQ+CmRq3RKNCnGj1S2
 bkjisvoxJkFSPzXsvxd0b183Lkegr+CXaAWwB07A0SkawSZZmTSoHvYmX
 Q6Ksjd+mcEITKrWSdItw3Toj/B0R9ajIKFnqmlMmrBsiB3P2JG5UAUDVx
 0EYkhle58NKqKYztXJG9lVGsf2Ew2nEQ+KAoq+jXzmoWFj2fqGEXM552h
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=NxDwqN5i
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: Add
 netif_device_attach/detach into PF reset flow
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
Cc: netdev@vger.kernel.org, Igor Bagnucki <igor.bagnucki@intel.com>,
 Jakub Kicinski <kuba@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 12.08.2024 12:22, Dawid Osuchowski wrote:
> Ethtool callbacks can be executed while reset is in progress and try to
> access deleted resources, e.g. getting coalesce settings can result in a
> NULL pointer dereference seen below.

Please disregard this submission, I have been made aware of additional 
issues in internal review and will send new version with the changes.

--Dawid

