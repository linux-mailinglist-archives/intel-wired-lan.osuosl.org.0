Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 62A4C520D17
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 May 2022 06:47:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 19ACC60F38;
	Tue, 10 May 2022 04:47:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qZvN-TwIeVRm; Tue, 10 May 2022 04:47:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1BE2A60AB1;
	Tue, 10 May 2022 04:47:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 22B981BF977
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 May 2022 04:47:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0D18860AB1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 May 2022 04:47:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dtCK2w6pzHF7 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 May 2022 04:47:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CCDD360AAB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 May 2022 04:47:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652158045; x=1683694045;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=Cy7+jnc1L41HqeREspDR2PUythbPDsHVkA0tVZ1I3kc=;
 b=ERJw1hNciSpFLtRZwmUU3OE8WADsOaavk8dcEzflH9JCz/LcJWcx31Fi
 U8JK+epRAP23MEHA5UYGSJ+ChtvdUMBk8zvZF8JuHktyHij4yhv9Lnfiw
 p2u6gf/piTr1TClyU87+BctkixiaSJ3i5WqydAKvRFueEG/OUSyFQoBGA
 UkzCdVHeqZof+m5Q4zPsciKmqITP/sToEWVh0fZa/FfzKfdZ0CKOhyi4E
 rule0JIEFIb3FpYp7C3M+FMvlilZjB1c99E1ztu3XjlEp4V3gePZwwQ9Z
 cJtneGmv4e1VxzMjUrD0wOvuQPlD94VnWLQMA6ASoM8PFH0z+x5WP5gRz A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10342"; a="294487565"
X-IronPort-AV: E=Sophos;i="5.91,213,1647327600"; d="scan'208";a="294487565"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2022 21:47:25 -0700
X-IronPort-AV: E=Sophos;i="5.91,213,1647327600"; d="scan'208";a="541589769"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.13.12.1])
 ([10.13.12.1])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2022 21:47:24 -0700
Message-ID: <77c9df0a-f5d6-b653-201f-2bc57e5ceeae@linux.intel.com>
Date: Tue, 10 May 2022 07:47:22 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Sasha Neftin <sasha.neftin@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20220423165321.838055-1-sasha.neftin@intel.com>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20220423165321.838055-1-sasha.neftin@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH v2 1/1] igc: Remove unused phy_type
 enum
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

On 4/23/2022 19:53, Sasha Neftin wrote:
> Complete to commit 8e153faf5827 ("igc: Remove unused phy type")
> i225 parts have only one phy. There is no point to use phy_type enum.
> Clean up the code accordingly, and get rid of the unused enum lines.
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
> v2: ret_val isn't needed since it's always returning 0
>   drivers/net/ethernet/intel/igc/igc_base.c |  2 --
>   drivers/net/ethernet/intel/igc/igc_hw.h   |  7 -------
>   drivers/net/ethernet/intel/igc/igc_phy.c  | 12 +++---------
>   3 files changed, 3 insertions(+), 18 deletions(-)
Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
