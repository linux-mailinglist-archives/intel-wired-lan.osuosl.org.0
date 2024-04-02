Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 661AF895BC7
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Apr 2024 20:32:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DA9ED40517;
	Tue,  2 Apr 2024 18:32:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fjy1LSAMyQDR; Tue,  2 Apr 2024 18:32:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 28F1A403AC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712082761;
	bh=TqO0cX22NuT9QIM8DVrCIwWDICTU0D7IEVwmUqVqFTk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8/jdZz0iWJuVPWrPdWfxdq9n0gXfZ4pgeMr7TPwnzEGe6Ap1SO1Fz+zDZrZ+ZZSMZ
	 RibgdXzbvc7tvjqGvI50/c3UoUPRsArb5HFqp+UXr0+Haq0r7vibr1qR15ccvzYvMJ
	 2EzdwirUaHvcV4T5WVccnW9VVz874qKv1pzHQQs1oivqhrCz0W2Uzg/jjgfe1coaJ2
	 pObCkg3jr9cHroxALNGtRqsdah0kz5zZGFBIrqhkFJ+wWPilwn9j6tgdJfIjbYFt0X
	 n0hCxb9J4rAWjL29zCSgceVCkOqRdm0XfIq0Rob1SJM6dFAZzsJ5vOHhDrRzWAPpJN
	 g6Cznkqx4cVmQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 28F1A403AC;
	Tue,  2 Apr 2024 18:32:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1D26C1BF369
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Apr 2024 18:32:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F0539407B8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Apr 2024 18:32:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yPj-FpSmdlgZ for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Apr 2024 18:32:38 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=naamax.meir@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 098BB407CE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 098BB407CE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 098BB407CE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Apr 2024 18:32:37 +0000 (UTC)
X-CSE-ConnectionGUID: 1dnWzmz8RPO3Z7dDCKP2vw==
X-CSE-MsgGUID: VQc37dBZRKi6E8mAXnNeew==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="10240492"
X-IronPort-AV: E=Sophos;i="6.07,175,1708416000"; d="scan'208";a="10240492"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 11:32:36 -0700
X-CSE-ConnectionGUID: Tk7eASW7TM+bdx0LKden0Q==
X-CSE-MsgGUID: j7pN286VQ0G7h9zhvr5LTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,175,1708416000"; d="scan'208";a="41306852"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.245.163.187])
 ([10.245.163.187])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 11:32:31 -0700
Message-ID: <b3f92716-9532-4bef-94d7-502689fc2b04@linux.intel.com>
Date: Tue, 2 Apr 2024 21:32:28 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Bjorn Helgaas <helgaas@kernel.org>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
References: <20240325222951.1460656-1-helgaas@kernel.org>
 <20240325222951.1460656-2-helgaas@kernel.org>
Content-Language: en-US
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20240325222951.1460656-2-helgaas@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712082758; x=1743618758;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=56IvtkOVy7cYW39VJv3cYm8/WXzWR/XaCzSn86nROLg=;
 b=MywEAiM8LThHeW1v4RcDfeyH44INp3wdqTIOANhgrHwyhHcA8MuccUrf
 dWcHAZvS+5qj5XyQaCgRyc0EYWx/FhHv0AgZ9Vb+RcAPr61qDkvdI1xq3
 kcDsJmMVcKC3DmgJ6pOuhfeeAR5A1vBU2WF1taNaPLiedx3a5MT9n948+
 hHvU77XIiV65n7oNhJWsFQVNB3bsEMjd8+9Rp2cAZui7Kiecmbn9j7Qi0
 ox6VssxAw0GMGt7eej8wjJ+JeRyoEJRJli3Ao/off+p1AgZdu+12NNKZw
 Orpn9qgO2iGn6gKEbO2t6LAXpA/Z28Dii1S4jkBxNVOz/5ia8jUCqolLn
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MywEAiM8
Subject: Re: [Intel-wired-lan] [PATCH 1/3] e1000e: Remove redundant runtime
 resume for ethtool_ops
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
> e60b22c5b7e5 ("e1000e: fix accessing to suspended device") added
> ethtool_ops.begin() and .complete(), which used pm_runtime_get_sync() to
> resume suspended devices before any ethtool_ops callback and allow suspend
> after it completed.
> 
> 3ef672ab1862 ("e1000e: ethtool unnecessarily takes device out of RPM
> suspend") removed ethtool_ops.begin() and .complete() and instead did
> pm_runtime_get_sync() only in the individual ethtool_ops callbacks that
> access device registers.
> 
> Subsequently, f32a21376573 ("ethtool: runtime-resume netdev parent before
> ethtool ioctl ops") added pm_runtime_get_sync() in the dev_ethtool() path,
> so the device is resumed before *any* ethtool_ops callback, as it was
> before 3ef672ab1862.
> 
> Remove most runtime resumes from ethtool_ops, which are now redundant
> because the resume has already been done by dev_ethtool().  This is
> essentially a revert of 3ef672ab1862 ("e1000e: ethtool unnecessarily takes
> device out of RPM suspend").
> 
> There are a couple subtleties:
> 
>    - Prior to 3ef672ab1862, the device was resumed only for the duration of
>      a single ethtool callback.  3ef672ab1862 changed e1000_set_phys_id() so
>      the device was resumed for ETHTOOL_ID_ACTIVE and remained resumed until
>      a subsequent callback for ETHTOOL_ID_INACTIVE.  Preserve that part of
>      3ef672ab1862 so the device will not be runtime suspended while in the
>      ETHTOOL_ID_ACTIVE state.
> 
>    - 3ef672ab1862 added "if (!pm_runtime_suspended())" in before reading the
>      STATUS register in e1000_get_settings().  This was racy and is now
>      unnecessary because dev_ethtool() has resumed the device already, so
>      revert that.
> 
> Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
> ---
>   drivers/net/ethernet/intel/e1000e/ethtool.c | 62 ++-------------------
>   1 file changed, 6 insertions(+), 56 deletions(-)

Tested-by: Naama Meir <naamax.meir@linux.intel.com>
