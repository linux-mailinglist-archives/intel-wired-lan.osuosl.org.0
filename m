Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0951689BE2C
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Apr 2024 13:32:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AD2AB40737;
	Mon,  8 Apr 2024 11:32:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ue9WcabAlEPQ; Mon,  8 Apr 2024 11:32:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 954F340739
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712575954;
	bh=CgmS0INMAkZ3b7JOfbw/vTTQ/ejXhwbhucoyVu13XtY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LFKLECfo3s6EHP7OHWxcyvHsMtHFsGlWxt90OqX74k5xxoMh38MWOh2Z6v0X/duA1
	 e7fZ9iy6B5ZV22tVaNBWuySJV7+uEShYY2eWBAlBivJLJeahwWmqQfHvwWJWrbVwvL
	 Ti2+WJrlTDybxvcHV9shnaPaeCDWSQTrg7FdCtajMpv5AGlm5FWyVrBssoMm9f0JGR
	 FhbQgXMSfTuImbEOPzlVWEY6JeIbsQwpMyoeVvbW+cvENuMXFXnQKkuUt/GXr0S/sb
	 bbI1b9UcJd5FEChEe7SAR5XtoGrCtgz1gsMVMYdlCs5r31i8XCvHih8O66r4z6y1Je
	 Iff4h2lV7CJ6g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 954F340739;
	Mon,  8 Apr 2024 11:32:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 768DC1BF340
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Apr 2024 11:32:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 61FD6401B1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Apr 2024 11:32:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1m_kKICC7t-2 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Apr 2024 11:32:31 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=naamax.meir@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org ABECB40012
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ABECB40012
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id ABECB40012
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Apr 2024 11:32:31 +0000 (UTC)
X-CSE-ConnectionGUID: QhJX/r94ToOntnH6d4UHpw==
X-CSE-MsgGUID: FGwXdDCQRAGi6XFKKA1XLA==
X-IronPort-AV: E=McAfee;i="6600,9927,11037"; a="7719782"
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; 
   d="scan'208";a="7719782"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 04:32:31 -0700
X-CSE-ConnectionGUID: YFNNf0xYSsqa5EBoqvlKtQ==
X-CSE-MsgGUID: faB8glgyQ5WMfqxdzjvOfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="20294427"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.12.48.215])
 ([10.12.48.215])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 04:32:27 -0700
Message-ID: <8ac80d7b-340b-4b3f-b854-98a6a3c1fe41@linux.intel.com>
Date: Mon, 8 Apr 2024 14:32:24 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Bjorn Helgaas <helgaas@kernel.org>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
References: <20240325222951.1460656-1-helgaas@kernel.org>
 <20240325222951.1460656-4-helgaas@kernel.org>
Content-Language: en-US
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20240325222951.1460656-4-helgaas@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712575952; x=1744111952;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=r4cliyGIwQDyX7Z9XcP+g//foiYQAn/zmPh0DKaJH7s=;
 b=KkprdfwSOFCBIjO5U180C2GaxW8SrAfzCwEdbltIzRkKSJX1L1boEuMc
 Iud+W7yp7a/EmgNj4OiJKknB/fr9Rw9AFiFCRdvz/bIWQfomk2NiMlcTC
 z1+HNK0rQ6CzVQnUezhT4Q+qF3rvEaco3LPtegqNndttAh5p3og+MAvX1
 bEaqcWa9I4uI4fqRZT8eAnREeJp+8JEAiewJL3qGGHOUnB8tjCghV7FvP
 DPHTOBzTaQeAm+GdckQDk/bNnOK7K56bPVuYtEdL/dcqv6AVgT4QGrMf3
 cCCpjZ0VVZclVBQdbQc777nyaXaA38gZWz3C71HkbGOCMnRV3uMXIsZHM
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KkprdfwS
Subject: Re: [Intel-wired-lan] [PATCH 3/3] igc: Remove redundant runtime
 resume for ethtool ops
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
Cc: Sasha Neftin <sasha.neftin@intel.com>, netdev@vger.kernel.org,
 "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
 linux-kernel@vger.kernel.org, Zheng Yan <zheng.z.yan@intel.com>,
 intel-wired-lan@lists.osuosl.org, Bjorn Helgaas <bhelgaas@google.com>,
 Konstantin Khlebnikov <khlebnikov@openvz.org>,
 Heiner Kallweit <hkallweit1@gmail.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 3/26/2024 00:29, Bjorn Helgaas wrote:
> From: Bjorn Helgaas <bhelgaas@google.com>
> 
> 8c5ad0dae93c ("igc: Add ethtool support") added ethtool_ops.begin() and
> .complete(), which used pm_runtime_get_sync() to resume suspended devices
> before any ethtool_ops callback and allow suspend after it completed.
> 
> Subsequently, f32a21376573 ("ethtool: runtime-resume netdev parent before
> ethtool ioctl ops") added pm_runtime_get_sync() in the dev_ethtool() path,
> so the device is resumed before any ethtool_ops callback even if the driver
> didn't supply a .begin() callback.
> 
> Remove the .begin() and .complete() callbacks, which are now redundant
> because dev_ethtool() already resumes the device.
> 
> Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_ethtool.c | 17 -----------------
>   1 file changed, 17 deletions(-)


Tested-by: Naama Meir <naamax.meir@linux.intel.com>
