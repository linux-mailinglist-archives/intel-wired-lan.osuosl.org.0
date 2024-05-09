Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 41B3D8C0EAA
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 May 2024 13:05:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 65D2260E52;
	Thu,  9 May 2024 11:05:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EbPMjQ7fKz2b; Thu,  9 May 2024 11:05:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C283F60EA5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715252739;
	bh=jJBrUyJRx3flMbtQK1f27B9Cnoq1xnWSdJJLHDoI9/I=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=H9jPigioKQG2xMA4j9UCiuZ9bDmcEQwj+iYzv7wTvCixy83tIowotBI2lyplkquua
	 DY32luhbcY6i4aBW0hg7zJEeJBKVDIXzT+GhxudtotdRI6J2DElqU4UbtQoh8fDYwW
	 zTSBDphzNT5KxQ7H/dtu950ixdHJc6OoW+OixUoFD5PGI8xo+V3dhnXFZKOeGJ3sVb
	 9axVZlAPoIfztI+g23gDrLlBJNRSjn0s8SxWdqSNUh4n331Sc5ODey2oKM52sZPBxv
	 NAjz5oxk6oX0iDfghLE2yEy8TH+zFOpB14QVcQdeofCEBSAdi9fESjgwALa+tGGSUl
	 P0BppFpdZguHA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C283F60EA5;
	Thu,  9 May 2024 11:05:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 60E921BF361
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 May 2024 11:05:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4BBCF410E5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 May 2024 11:05:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kdnWaMjOFsX1 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 May 2024 11:05:36 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=naamax.meir@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5A48B410C7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5A48B410C7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5A48B410C7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 May 2024 11:05:35 +0000 (UTC)
X-CSE-ConnectionGUID: /zrNf48IQGy79QOlu9f9Aw==
X-CSE-MsgGUID: U1tZ3n7yTM6bS/cIF7sWvQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11067"; a="21734849"
X-IronPort-AV: E=Sophos;i="6.08,147,1712646000"; d="scan'208";a="21734849"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2024 04:05:35 -0700
X-CSE-ConnectionGUID: p23PnoRtTJimDnIwNKL7DQ==
X-CSE-MsgGUID: 3BwFLlMLTkywxR016Ypzmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,147,1712646000"; d="scan'208";a="34004994"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.245.136.172])
 ([10.245.136.172])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2024 04:05:31 -0700
Message-ID: <8ae42170-060d-4f35-a79b-18110e9477ff@linux.intel.com>
Date: Thu, 9 May 2024 14:05:28 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240423144100.76522-1-ilpo.jarvinen@linux.intel.com>
Content-Language: en-US
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20240423144100.76522-1-ilpo.jarvinen@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715252737; x=1746788737;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=8yZ5G/9SKrfBR+Zy97Nerwaq32t4U8fT298esodEx/w=;
 b=eUmvR/xHUxMDZRpZC76Mht0qG1AOdq2TandjgO0G7/GzVFSUXBSSdUQt
 ZXzgK8xGzR1Es9coFYsTEHLl3Bbp7lea0dsYS3eY+P71POB/p8cMjDRub
 OdHl1acwzff1vJo6e1rw4V2ByP8LfIy8lvk9CV32eVcdGDjI7qPTiRj2J
 RqQlH0dG3+ozT/o7aqTQ27NWh9sfjxYGairEP16tHmfUclXpzEkOENr/w
 p84cgiPy9DAwSLHHH1j2ZvfSEUt7SJGME149SmOq7Dczqi6v5A8lf+NDS
 29PdjvRs/HVdwzCaS+ljtHeCFbryoNDgmCNw4R8gTuUJStGNnUs0Qx9m0
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=eUmvR/xH
Subject: Re: [Intel-wired-lan] [PATCH 1/1] net: e1000e & ixgbe: Remove
 PCI_HEADER_TYPE_MFD duplicates
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 4/23/2024 17:40, Ilpo Järvinen wrote:
> PCI_HEADER_TYPE_MULTIFUNC is define by e1000e and ixgbe and both are
> unused. There is already PCI_HEADER_TYPE_MFD in pci_regs.h anyway which
> should be used instead so remove the duplicated defines of it.
> 
> Signed-off-by: Ilpo Järvinen <ilpo.jarvinen@linux.intel.com>
> ---
>   drivers/net/ethernet/intel/e1000e/defines.h   | 2 --
>   drivers/net/ethernet/intel/ixgbe/ixgbe_type.h | 1 -
>   2 files changed, 3 deletions(-)

Tested-by: Naama Meir <naamax.meir@linux.intel.com>
