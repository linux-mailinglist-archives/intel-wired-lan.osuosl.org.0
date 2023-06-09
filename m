Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 40AFA729E23
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Jun 2023 17:16:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C816042539;
	Fri,  9 Jun 2023 15:16:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C816042539
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686323773;
	bh=0GIQG3V03Hw7Is/zScolW+od5sx5Xofit/FgOMwZLb0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jgTmlG4KbSzbaLXbpJipeVCID21Zl9CJjT2yskTedyHw+p90laQJQGl/IxfEa1P6P
	 DyodJuensim3OlMRsh5Zjb/9BAgf1T4wkDxP40dpNtUp40Uk0XzK4TJ4vfmyyNbrRU
	 U49lwN11J5ZiVhSzB3Odx5R4m6BohEwdcCqqQAFKgenTggVJbq4VLpqcP0sgwyxfkX
	 RqAimQDhRuI6w5hgGlpgfHMau75Zv47tosVQ7v+Xaq6hZ5gmlVaX5Hfq9EA8ic7k8z
	 eLlzeBWVZnj1y7Ywf8EOBOvnZYsr0X48vivkpl5eTueWOwhRZjDJM6tv2tTMCVcXne
	 fHKVeJSXCHBxw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4edVKBCxsPUQ; Fri,  9 Jun 2023 15:16:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A3C024251D;
	Fri,  9 Jun 2023 15:16:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A3C024251D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 056831BF384
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 10:42:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DCC9E42494
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 10:42:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DCC9E42494
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6zeI6XQuhs3y for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Jun 2023 10:42:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E7EAD42492
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com
 [68.232.154.123])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E7EAD42492
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 10:42:26 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="6.00,229,1681196400"; d="scan'208";a="219567800"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 09 Jun 2023 03:42:26 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 9 Jun 2023 03:42:25 -0700
Received: from DEN-LT-70577 (10.10.115.15) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.2507.21 via Frontend
 Transport; Fri, 9 Jun 2023 03:42:24 -0700
Date: Fri, 9 Jun 2023 10:42:23 +0000
From: Daniel Machon <daniel.machon@microchip.com>
To: Dave Ertman <david.m.ertman@intel.com>
Message-ID: <20230609104223.5ok45syo7gfrtwev@DEN-LT-70577>
References: <20230608180618.574171-1-david.m.ertman@intel.com>
 <20230608180618.574171-11-david.m.ertman@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230608180618.574171-11-david.m.ertman@intel.com>
X-Mailman-Approved-At: Fri, 09 Jun 2023 15:15:48 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1686307347; x=1717843347;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ncc3Frw5jy1newKhE18k3BwtG7xyYraXJTpIpYZ8x/4=;
 b=S3+6VfUT+aTS3BnDj3DiVYceKkekRAttP41ceWhXYgyxk5hIceR620Ey
 aMHFsd4vtlI07ibUR0iMelTizAxm8SEZBg0rwU7t1hRXiKboTwQ4XH1yO
 z9NU4EBo9E4UYAne6U4sufAJvRs91Xht5jTko9MJyZ12NMfPFDX2qzGX5
 mhrRrI5zkPtzUNpyonp89kHVa0IXutA7fs4aEQRSflzCZW8SgAz1YHqor
 P6opU59uKxBo03Ba257KeB31sGqNzYKOXV+6LwV22mzgecq47xQZSlTgQ
 9u/wddU+BPTdZ97s2Wtgr2Kx+Pxb0IwxISvr8QoGm5RxzfivE1UJz4Lyg
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com
 header.a=rsa-sha256 header.s=mchp header.b=S3+6VfUT
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 10/10] ice: update reset
 path for SRIOV LAG support
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

> Add code to rebuild the LAG resources when rebuilding the state of the
> interface after a reset.
> 
> Also added in a function for building per-queue information into the buffer
> used to configure VF queues for LAG fail-over.  This improves code reuse.
> 
> Due to differences in timing per interface for recovering from a reset, add
> in the ability to retry on non-local dependencies where needed.
> 
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>

Reviewed-by: Daniel Machon <daniel.machon@microchip.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
