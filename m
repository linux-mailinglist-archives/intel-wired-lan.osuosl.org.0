Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E361B8C00C8
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 May 2024 17:19:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7050B41A9F;
	Wed,  8 May 2024 15:19:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 76Q-Kxqy5vYJ; Wed,  8 May 2024 15:19:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CF057400B8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715181584;
	bh=yv3lJE2VQ0yuLGVVwgXC/vs5DLX/Pl8uMwFZpj3YohQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VtbyrPNRCkApXOAAnGxkoJblT+IBE84XKDRSdXqLn0fvPZhbBZLVo5CEM1bFpq7ss
	 1oWQq+Wd2+WUhmIDM4rXELaxX5rfnUqzvCDmlgXefLGStU+qbayL0AMMjxk0RG2Q8x
	 0FDUnxA84lQSIEqL/sRQ9JOBpoCOFySsONDMHPrXNgtFOdKtHsHkcrJh3IfBvYyd6u
	 orZeLTRNPqYa1lXJmD5CrNKTj24IygN/7Zv+eylX0ZcphCBAOmxusbSgVaCluO/Rul
	 thVfcpTpACOniW2T/X0Fwxvyuzh1CK3X/+hLrc34TJCpw3dFLSOZBPCbXTwuvjs0+L
	 x+7hsYbZY7vrQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CF057400B8;
	Wed,  8 May 2024 15:19:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 16F331BF2C7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 May 2024 09:23:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F32D2419B5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 May 2024 09:23:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 24q2pn2jHcWY for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 May 2024 09:23:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=sergey.temerkhanov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org ED3A741809
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ED3A741809
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id ED3A741809
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 May 2024 09:23:52 +0000 (UTC)
X-CSE-ConnectionGUID: WdeqHrH1SPGOYMJyuQhk0Q==
X-CSE-MsgGUID: MeAvXR0CR4myDXnjun5Qcw==
X-IronPort-AV: E=McAfee;i="6600,9927,11066"; a="22400625"
X-IronPort-AV: E=Sophos;i="6.08,144,1712646000"; d="scan'208";a="22400625"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 02:23:52 -0700
X-CSE-ConnectionGUID: k2+5WQNTTqSDs1ygAUpEGg==
X-CSE-MsgGUID: XY9dplqeSBiZDn6iO/3hwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,144,1712646000"; d="scan'208";a="33305403"
Received: from unknown (HELO localhost.igk.intel.com) ([10.211.13.141])
 by fmviesa005.fm.intel.com with ESMTP; 08 May 2024 02:23:51 -0700
From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
To: ross.lagerwall@citrix.com
Date: Wed,  8 May 2024 11:23:21 +0200
Message-Id: <20240508092321.83776-1-sergey.temerkhanov@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <CAG7k0ErF+e2vMUYRuh2EBjWmE7iqdOMS1CQv-7r18T1mVbK1aA@mail.gmail.com>
References: <CAG7k0ErF+e2vMUYRuh2EBjWmE7iqdOMS1CQv-7r18T1mVbK1aA@mail.gmail.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Wed, 08 May 2024 15:19:42 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715160233; x=1746696233;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yv3lJE2VQ0yuLGVVwgXC/vs5DLX/Pl8uMwFZpj3YohQ=;
 b=JLoxZ8fhJgF/9283w/Is3x5TJWcG50ZSz4Ktx1z6omzFJFtlkr/Ft3hs
 7t6vuWCJYg9cDrHN0v3U7+CzAGU2IffO9FObCV68Vm7vk2z9ryFikvHDB
 AFkO57qpl+WQCHhjCIAqhVYImbSEYAnPKMbj8pDTmhZWL/xsGh8yE4lHf
 jDAumOptYR2ZjTV9zKlyI9dwWg8zdXNfIyPabYi8zRAbtFpfmKgQ4U1Wo
 wdq1sbBg+gHCvJRHmwBXc4wC7Fd3BAk5I8N7VlFcS6tcm1D68dM6podzM
 nELF/IvZ/Hx+VJINmSfpL3OYREtztZBzafkWhnEi8y88/zfqnA/NUX2TO
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JLoxZ8fh
Subject: Re: [Intel-wired-lan] [PATCH v2] ice: Fix enabling SR-IOV with Xen
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
Cc: intel-wired-lan@lists.osuosl.org, pmenzel@molgen.mpg.de,
 javi.merino@kernel.org, anthony.l.nguyen@intel.com, netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patch makes sense since VFs need to be assigned resources (especially MSI-X interrupt count)
before making these VFs visible, so that the kernel PCI enumeration code reads correct MSI-X
interrupt count for the VFs.

Regards,
Sergey
