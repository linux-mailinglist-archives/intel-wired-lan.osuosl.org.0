Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 955DB729E21
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Jun 2023 17:16:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3A13242549;
	Fri,  9 Jun 2023 15:16:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3A13242549
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686323769;
	bh=MW0KAY0/T2GaKCJMA4z2z09ET8sJp4ewV9+8fEsE9zU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xFCD50ax6e2fcgpMP3A/Bs/jsw2ipEjy0Yy89vEkYOt+ZIzSPiwrgKtY3sLE9qOh+
	 jqPTyhfT4q4RtqVL4yumsxEqM7bgcaCIu6U2McGbmZGGKF7ow79140sLWfY39DzrRO
	 S4FRBUQWNyqXru26bh9NDn0g+lyzVbVlaYCAy8OO8/bGo7YPw+yGEqDntTeSVPDCRU
	 jQv84rCGpCoQIGLfNqFxU4PgVcxRUkf2Bo2D3Qpq5D8/GFg6GClMJqcIsEFksfcumE
	 50i8GbX1WtM0QFsucTpeMZGpAljzeBVaMmYjrKbNoAsEQ04+Ifox+s3OzAzJ6+pdRI
	 6IZfaTCsV8hUQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hwcFOJEnfubi; Fri,  9 Jun 2023 15:16:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3287A4252D;
	Fri,  9 Jun 2023 15:16:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3287A4252D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3EE2B1BF384
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 10:40:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 19F0D615A1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 10:40:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 19F0D615A1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ONXkqLHe3X5B for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Jun 2023 10:40:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E4B6B61589
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com
 [68.232.153.233])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E4B6B61589
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 10:40:56 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="6.00,229,1681196400"; d="scan'208";a="217042063"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 09 Jun 2023 03:40:55 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 9 Jun 2023 03:40:54 -0700
Received: from DEN-LT-70577 (10.10.115.15) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.2507.21 via Frontend
 Transport; Fri, 9 Jun 2023 03:40:53 -0700
Date: Fri, 9 Jun 2023 10:40:53 +0000
From: Daniel Machon <daniel.machon@microchip.com>
To: Dave Ertman <david.m.ertman@intel.com>
Message-ID: <20230609104053.rxedc4grgm6sxecd@DEN-LT-70577>
References: <20230608180618.574171-1-david.m.ertman@intel.com>
 <20230608180618.574171-7-david.m.ertman@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230608180618.574171-7-david.m.ertman@intel.com>
X-Mailman-Approved-At: Fri, 09 Jun 2023 15:15:48 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1686307256; x=1717843256;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=JqaHtGJhKuFLAH1DYpbSeoCEG/jKnRs6acRP1ONua54=;
 b=ufHfsI68saC7MF5eK9UgGDs/Q3JZY2CExBWSxhIrXywv2dJvjeKXnrX/
 Hh+icrd4X6jeojn7gYeRJLnxSqlLTmFb8UkEtLYECdKgncs10y/9/3MMp
 UhnGJdtqtubm5SStmcGAQukzhgTFfdrH+QFjWxltd6s0Y2xyZQxVDM2OE
 U28FW71pJawQf5iXfI0MR/WX+kl71VwgtFYsAi2xkWCLYrig2zWCo8TYq
 MC3z+1UylVwUaZHWUXQMMea41br7tj65lxO1pyFX6XOaHfxQkylXSFOJO
 zGULEVNYrXACIiMvkzpvICra3DENilONoQhKBnbqJHTvL2C21hcSnAIZ0
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com
 header.a=rsa-sha256 header.s=mchp header.b=ufHfsI68
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 06/10] ice: Flesh out
 implementation of support for SRIOV on bonded interface
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

> Add in the functions that will allow a VF created on the primary interface
> of a bond to "fail-over" to another PF interface in the bond and continue
> to Tx and Rx.
> 
> Add in an ordered take-down path for the bonded interface.
> 
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>

If you need to respin anyway: s/aggreagte/aggregate/, s/pinter/pointer/
Otherwise dont bother.

Reviewed-by: Daniel Machon <daniel.machon@microchip.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
