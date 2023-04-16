Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 724AF6E3579
	for <lists+intel-wired-lan@lfdr.de>; Sun, 16 Apr 2023 08:42:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 21685427F5;
	Sun, 16 Apr 2023 06:41:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 21685427F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681627319;
	bh=k+uztia1p8vU86JG6zF+h82Xgt1mfsB15SVavQNvw7g=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zhM3UnJEVaGtQjL+EcWUOcjFEeoMOO6jRUz+IVLoDbyOEc6lCxsdKVIWe+vAIxi+M
	 EvsARE73l/ocALhsFRKDDesThHhezEKmDmmMhmyPQUFk1f/A/JzYkE8r9R7AxS/oR4
	 9tucs4S/TstVlfF+RtQy5bsomonh8QMuAMpTJ8Ocq1TKjj8qDjkm1+w7J6S1RIw6Ks
	 jDhL2zgtdSlNhEl7ZxBiHawKQEjuzm1ys+rxwnrCzwDHpbVU/LYbizUfJtmev9iVj5
	 d4gj4NNhHAZ59XSS+UxTBtLl21sSHMFxK+SLqPkPrvE9dwUCZWZgcQP71tKVdWslRd
	 RMlT9o9NlGDow==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mIkGLio3SB20; Sun, 16 Apr 2023 06:41:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B895F427CF;
	Sun, 16 Apr 2023 06:41:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B895F427CF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B01F61BF23C
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Apr 2023 06:41:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 88617427CF
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Apr 2023 06:41:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 88617427CF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ACqz6JW36UPm for <intel-wired-lan@lists.osuosl.org>;
 Sun, 16 Apr 2023 06:41:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 34343427CE
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 34343427CE
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Apr 2023 06:41:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10681"; a="431001711"
X-IronPort-AV: E=Sophos;i="5.99,201,1677571200"; d="scan'208";a="431001711"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2023 23:41:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10681"; a="864650566"
X-IronPort-AV: E=Sophos;i="5.99,201,1677571200"; d="scan'208";a="864650566"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.13.12.36])
 ([10.13.12.36])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2023 23:41:44 -0700
Message-ID: <82bf9fbf-c6dd-7d76-c3c1-9f146883ed10@linux.intel.com>
Date: Sun, 16 Apr 2023 09:41:34 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
To: Mateusz Palczewski <mateusz.palczewski@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20230323113538.146959-1-mateusz.palczewski@intel.com>
Content-Language: en-US
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20230323113538.146959-1-mateusz.palczewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681627308; x=1713163308;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=lpKMQYulXm8DN4M+IXqRLY9J5kOkxWWMc5gvUtIOZns=;
 b=O1AKNVHxdsb2PDrsHZMGrNdEvstUlvUSJNBxLIsYFryVZTgpIJNQpv53
 ec5uxoFOYRMs2uJ9+hJGHJDLQChhIyLa1l9FiwAQbGhEkgrveR75i8F/U
 MYfhRpu0wKx/m+VeU/BXfpft/gB7bvdz7rmYd+TNbZtAap+opijVfrlOc
 OBiu6BaihF7KlVCVj/3LF10ycV0KqgX5ExfXEjfFC+EQX/8w3WRfXG06L
 oImMX9p+ObqBnR8a8D3AXxOEXx39n9pNfQPA7RXcSwDiWqz8sTO6nNEi2
 TL06k3f63yJ8wm/x0HXJUEPIEm22QE+bR6JXimYb8c0IKrUC+mfRkFfY6
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=O1AKNVHx
Subject: Re: [Intel-wired-lan] [PATCH net v4] e1000e: Disable TSO on i219-LM
 card to increase speed
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
Cc: pmenzel@molgen.mpg.de, kai.heng.feng@canonical.com,
 Sebastian Basierski <sebastianx.basierski@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 3/23/2023 13:35, Mateusz Palczewski wrote:
> From: Sebastian Basierski <sebastianx.basierski@intel.com>
> 
> While using i219-LM card currently it was only possible to achieve
> about 60% of maximum speed due to regression introduced in Linux 5.8-rc1.
> This was caused by TSO not being disabled by default despite commit
> f29801030ac6 implementation. Fix that by disabling TSO during driver
> probe.
> 
> Fixes: f29801030ac6 ("e1000e: Disable TSO for buffer overrun workaround")
> Signed-off-by: Sebastian Basierski <sebastianx.basierski@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>   v4: Moved whole !(adapter->flags & FLAG_TSO_FORCE) block to probe
>   v3: Changed the patch to disable TSO during the probe
>   v2: Fixed commit message and comment inside the code
> ---
>   drivers/net/ethernet/intel/e1000e/netdev.c | 53 ++++++++++++----------
>   1 file changed, 28 insertions(+), 25 deletions(-)

Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
