Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A0397729E20
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Jun 2023 17:16:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2BBCF4251E;
	Fri,  9 Jun 2023 15:16:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2BBCF4251E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686323764;
	bh=VsoRlyX0eWhv8PYY2pu6JUhbbKSf731IpGvhGysZfV0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rxs1zl/xJAbq29FOZhWd3TNx0FJUGPMgrvCQO+ToPaRJzXdcFvsCXH4VllBZJaWmh
	 A8rAICRNjgKjPuc228RvAdXh8BqrHcDBCxVl0LHqGKPZh+hENUipDD52FKhz87cI+q
	 Uv3IpDPQKQS5hf+JCY2J1ey9axnNdOs65IwQZOihm+JtMITkwGmzGXprb7LZpXrFcu
	 DaVRVT+EANHqSqXrpYHoTsJqxdCaERgGRqJTDEpBvO4vhiwj2ejbObSlLxTgxxMFRB
	 Lfto31tY0IIo1Qs+Hg0PpnaSK9XYR9y7pKmqnrfmrxqFbuReQrXwY2/DDQslPkPwRT
	 KIDCu1kzo0VJg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gBg4wiwehbvV; Fri,  9 Jun 2023 15:16:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DD7194251B;
	Fri,  9 Jun 2023 15:16:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DD7194251B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9CA8B1BF384
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 10:05:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 807FB83C92
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 10:05:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 807FB83C92
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4-YvjHEElJMM for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Jun 2023 10:05:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BB40B83C52
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com
 [68.232.154.123])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BB40B83C52
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 10:05:25 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="6.00,228,1681196400"; d="scan'208";a="156246743"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 09 Jun 2023 03:05:20 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 9 Jun 2023 03:05:19 -0700
Received: from DEN-LT-70577 (10.10.115.15) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.2507.21 via Frontend
 Transport; Fri, 9 Jun 2023 03:05:18 -0700
Date: Fri, 9 Jun 2023 10:05:18 +0000
From: Daniel Machon <daniel.machon@microchip.com>
To: Dave Ertman <david.m.ertman@intel.com>
Message-ID: <20230609100518.johck646sge472k3@DEN-LT-70577>
References: <20230608180618.574171-1-david.m.ertman@intel.com>
 <20230608180618.574171-4-david.m.ertman@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230608180618.574171-4-david.m.ertman@intel.com>
X-Mailman-Approved-At: Fri, 09 Jun 2023 15:15:48 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1686305125; x=1717841125;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=208JrvbaaxChpCfucfGSQ5QQQG848qUVAhbDtruTYHc=;
 b=lFy4UoksjMA3glsRarJEi+4fhvpX5rVpTgt8WCwexVVpl6S1zN7Efs5F
 tXlouHfHtY2/UZSusB3SSiCUKYPpG4MySQdR3exfCgaD+wlYOfC3rHlIQ
 QJMhWAxSDRUDobICRiQ/J0TQeyJ0UUHZJlgcGIsNtB0f/Cg1C/fkqywJB
 RHKHHJXrRyPR1rIniyRGQRgOWF9JGiImCgQac8d3DhzcEGkBgM/SqIscH
 Y1oLEhxduMn1s/C4eLaJKbuUZQ3MDM8mNOYKtwLinewWQmTJUgfa/bMxd
 kBxS2wkufv6uMiFbCjmMLrD9qgU53N+OXSlOxHFlW8NK334WbrdAC5UMi
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com
 header.a=rsa-sha256 header.s=mchp header.b=lFy4Uoks
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 03/10] ice: changes to the
 interface with the HW and FW for SRIOV_VF+LAG
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

> Add defines needed for interaction with the FW admin queue interface
> in relation to supporting LAG and SRIOV VFs interacting.
> 
> Add code, or make non-static previously static functions, to access
> the new and changed admin queue calls for LAG.
> 
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>

Nice, thanks for including my changes.

Reviewed-by: Daniel Machon <daniel.machon@microchip.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
