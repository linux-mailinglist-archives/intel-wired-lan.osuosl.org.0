Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BEE82729E24
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Jun 2023 17:16:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4F73442527;
	Fri,  9 Jun 2023 15:16:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4F73442527
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686323778;
	bh=I6w/xPQA6aGwFqqtf1xarhdQRYN16KO9N9l8PK7aEUs=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=L/IxLuRiARCFooUX444TFJuhJ4BtIxTxdJnNt98Fd1uvT3yX5eK8kghkxzDbQOB/o
	 W6fDByq/1RdJ+DJ3nW6tvI+wKKf2ujYCLeXIEkD5r3HWV8G/cpTQgK46Gb2G2U7a1O
	 SCew/2oaXbYUQQ8WpKv6aNFKcxpyV+7SQMO63/etv2VYC5w8++P9gluCBZEAmBOyof
	 i5APKPz8l/awo0lWmKBE7YdB6/beS+Uni2vVi32j1wvD29c1rVMfGEXRFhRHkWfoGm
	 2gw6xkVzQN3Z7HnCWdctJmbi6qp+6CUJuWfPw2eKe1Pydgk1bjCYaEUyOTOe9W7hGa
	 Al9nQ1Oprmr5g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e8ZPmrCcTRz6; Fri,  9 Jun 2023 15:16:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 064F84251B;
	Fri,  9 Jun 2023 15:16:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 064F84251B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A6C351BF384
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 10:45:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7FCC4841B8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 10:45:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7FCC4841B8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qE3RYnqZsUAc for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Jun 2023 10:45:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D01128419F
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com
 [68.232.153.233])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D01128419F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 10:45:14 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="6.00,229,1681196400"; d="scan'208";a="217652859"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 09 Jun 2023 03:45:14 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 9 Jun 2023 03:45:13 -0700
Received: from DEN-LT-70577 (10.10.115.15) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.2507.21 via Frontend
 Transport; Fri, 9 Jun 2023 03:45:12 -0700
Date: Fri, 9 Jun 2023 10:45:12 +0000
From: Daniel Machon <daniel.machon@microchip.com>
To: Dave Ertman <david.m.ertman@intel.com>
Message-ID: <20230609104512.syus4hoqq6bsdrjc@DEN-LT-70577>
References: <20230608180618.574171-1-david.m.ertman@intel.com>
 <20230608180618.574171-2-david.m.ertman@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230608180618.574171-2-david.m.ertman@intel.com>
X-Mailman-Approved-At: Fri, 09 Jun 2023 15:15:48 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1686307514; x=1717843514;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=c814UuxtwJhYnMbTZs0+0xa7I8Uix8yXpZ8014/KywA=;
 b=2s86fKQUpulcqeWVZgzuYa1UsnN/klJpVZjlRiAjfZ6ZrrgpbTyEhKOT
 9wEBkNaCF1Rwezc0gOfbpOYAx0GDw5v2fyCTjmAYB2b9xyNAJbUM/VbLl
 qOQXqRNP51ljMqVH3AHMTA+3rutqo4iFgLk/UCHRbUPdrpKih1Vto4ovg
 R82Pp4RG0j0AT9Uxa+vBLV0RSf7tgEpmDVUKTHSJo9Sddh1dj7hcTXZ8V
 xeIUQ41Irb5rteBNbMoHUE7laq4LRU+DXjXhF8MVniCyQnvr3767mWE/k
 ruvW547Zu4Gy/qOxuF3Dhwo6LZUr0mwcq2Jp5sY347QfJn8AnhBFu2524
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com
 header.a=rsa-sha256 header.s=mchp header.b=2s86fKQU
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 01/10] ice: Correctly
 initialize queue context values
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> The ice_alloc_lan_q_ctx function allocates the queue context array for a
> given traffic class. This function uses devm_kcalloc which will
> zero-allocate the structure. Thus, prior to any queue being setup by
> ice_ena_vsi_txq, the q_ctx structure will have a q_handle of 0 and a q_teid
> of 0. These are potentially valid values.
> 
> Modify the ice_alloc_lan_q_ctx function to initialize every member of the
> q_ctx array to have invalid values. Modify ice_dis_vsi_txq to ensure that
> it assigns q_teid to an invalid value when it assigns q_handle to the
> invalid value as well.
> 
> This will allow other code to check whether the queue context is currently
> valid before operating on it.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>

Reviewed-by: Daniel Machon <daniel.machon@microchip.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
