Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 024DC7263D7
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Jun 2023 17:12:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 92D2F81E3D;
	Wed,  7 Jun 2023 15:12:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 92D2F81E3D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686150752;
	bh=ObYY44xtoyRiyxtNFuCRXBtXGUmkBFMM1Yla1MSxS1s=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LYVGAvNbPVSzELwNCNZayP0ddFK/wLPSrqQfCOyYAd3ExyRs2XVDtBPudAoy5RTAC
	 6lYoM3looFg2vbWCg30lX9LuI/KVtBpP+rK+/0+R3/zR3AkUak0/rr8q3DqNcoKmIk
	 NivmkKXWG9kcM1gBGjR5DRSGnbpgIpcmm+Z19nDfIGHl6PvcmmeIGPbQXwusLovk3c
	 a76aJypSNF8DJhZwRYYXN3gw9GranI/irp2m9K4R7xMkSJToIz1ptDK9n+en/wp1Eg
	 mO1OMaPD6FrNeEXpatMK8i5ztrmuw5ElguU7ffl5FMuVnfA0Ix1bPobXsY5synIaYN
	 cdpv5ta2BvCZA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xT5hE-oQPRC7; Wed,  7 Jun 2023 15:12:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7530781A99;
	Wed,  7 Jun 2023 15:12:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7530781A99
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7D1E41BF3E0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 09:01:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5555F60D4C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 09:01:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5555F60D4C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5Bbmy4j5zU8E for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Jun 2023 09:01:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9ECA860C2C
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com
 [68.232.154.123])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9ECA860C2C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 09:01:52 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="6.00,223,1681196400"; d="scan'208";a="215001366"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 07 Jun 2023 02:01:50 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 7 Jun 2023 02:01:08 -0700
Received: from DEN-LT-70577 (10.10.115.15) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.2507.21 via Frontend
 Transport; Wed, 7 Jun 2023 02:01:06 -0700
Date: Wed, 7 Jun 2023 09:01:05 +0000
From: Daniel Machon <daniel.machon@microchip.com>
To: Dave Ertman <david.m.ertman@intel.com>
Message-ID: <20230607090105.gje6m2bekytaeeav@DEN-LT-70577>
References: <20230605182258.557933-1-david.m.ertman@intel.com>
 <20230605182258.557933-10-david.m.ertman@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230605182258.557933-10-david.m.ertman@intel.com>
X-Mailman-Approved-At: Wed, 07 Jun 2023 15:12:04 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1686128513; x=1717664513;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=SEWl3JxeEFCwELHcRYCNeieOLfdoHetTojgx5uBYZXg=;
 b=vLLlmKask3hQlXdjkd251n9xGrqKEys5FTfY0b3XX/hGC/4m8GtY/Q4q
 lmWwFvqsXgy6edxC/ROL571QCgQddjerWYy7mzjxQYpFdZoLXKS7qJRDC
 Uf1EG7N6fWWos+jGysKor2u84LHyi74LVZXPDFk6HlrDZVyC1/aCvGzRJ
 5jIACRClK53dGreBjLoxAQMTq55FcfuXh4yej7stvzdlR5D4eiAeyvaF7
 8HZfZgUV9GQrQWks+UbCcoTBuRGKiHSfRDmeLEl64GlNgv7klI/HppPz1
 JaqtFzLvjrCaYrauTLYH9XQNXdMuTsBFSJOvcoHGE8Nw/SeaGP4g5IvOi
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com
 header.a=rsa-sha256 header.s=mchp header.b=vLLlmKas
Subject: Re: [Intel-wired-lan] [PATCH net v2 09/10] ice: enforce no DCB
 config changing when in bond
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

> To support SRIOV LAG, the driver cannot allow changes to an interface's DCB
> configuration when in a bond.  This would break the ability to modify
> interfaces Tx scheduling for fail-over interfaces.
> 
> Block kernel generated DCB config events when in a bond.
> 
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>

Reviewed-by: Daniel Machon <daniel.machon@microchip.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
