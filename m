Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E3667263D6
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Jun 2023 17:12:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6454C82EF0;
	Wed,  7 Jun 2023 15:12:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6454C82EF0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686150748;
	bh=3JjskwXGxhrKvggZVWEi6bsohKhx//1973evrxqVjJA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rqAy4h9Eio71TUZfiTUvKYd0iU+r8mrX2jDDpGsq948vtR31OrhOSgUdqDv28CE9T
	 5PsIknGougwPTB2KptXpPxezPXxqnPcflt5IZuPNuXvAjzmeKDxVTaC3216GZmC5C6
	 cl5qdYOviJ8Jhh6p//SeQUadqxc+sr/Kptn7AAWsjly3wvlUUQpiVhbjhHSA83TkmR
	 PujEnnXc9hzbQIYydhjek/3W76DAmcGrtSDb2vg2wF4jADwyvksVF8t4QuetY2ZHQ1
	 uFYsm3BZ9Jz2xdwadZf2W142KlNtbNPcG48flRpzyLmaWx0XisEscw8YtA4QH1NgqC
	 mwqSe/RXaWR1Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z1BoTKYLwRrN; Wed,  7 Jun 2023 15:12:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 52F6181E09;
	Wed,  7 Jun 2023 15:12:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 52F6181E09
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3646D1BF3E0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 08:54:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1AF4340332
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 08:54:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1AF4340332
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CjD3AmnHDu6h for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Jun 2023 08:54:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5BC4840150
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com
 [68.232.154.123])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5BC4840150
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 08:54:08 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="6.00,223,1681196400"; d="scan'208";a="219220402"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 07 Jun 2023 01:54:05 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 7 Jun 2023 01:54:05 -0700
Received: from DEN-LT-70577 (10.10.115.15) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.2507.21 via Frontend
 Transport; Wed, 7 Jun 2023 01:54:04 -0700
Date: Wed, 7 Jun 2023 08:54:03 +0000
From: Daniel Machon <daniel.machon@microchip.com>
To: Dave Ertman <david.m.ertman@intel.com>
Message-ID: <20230607085403.vm34kbnw2bajglse@DEN-LT-70577>
References: <20230605182258.557933-1-david.m.ertman@intel.com>
 <20230605182258.557933-9-david.m.ertman@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230605182258.557933-9-david.m.ertman@intel.com>
X-Mailman-Approved-At: Wed, 07 Jun 2023 15:12:04 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1686128048; x=1717664048;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=HQz4rwTqsDysvbrLsgRUKg34cXOPwy+EIaHfg0BVeu4=;
 b=WY90BmqxBsdkFrfS1dwgBTKhuI7HEAjwdTWPH3tePcVY6IJ0xxjMVS9a
 YhBx7tRueMb05jIrTbNIrYVISxz84+oxgXkL3ckBUhtHwJ3dmg912V/Oe
 UpDd/H8qSrN9egWZgAaDe8aztDLdP2xVbS0NC0FzrHSeONeNEE0THkp3o
 JdQ5n7gsfFZE/bV9x/VFNG4MANRYhYv9RbgONOMC751j45s5fCGcbVId+
 a3coW5xYO10++wsH0dJsUMQDUw5oOUL2zMHV0U+qrYT1C9A1ZUVCZ8BJB
 AGADFAXPAjHEIvgwPVGkVZeT8vYVcUvNiEdQBQH/laylPlWC7eklUDoWV
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com
 header.a=rsa-sha256 header.s=mchp header.b=WY90Bmqx
Subject: Re: [Intel-wired-lan] [PATCH net v2 08/10] ice: enforce interface
 eligibility and add messaging for SRIOV LAG
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

> Implement checks on what interfaces are eligible for supporting SRIOV VFs
> when a member of an aggregate interface.
> 
> Implement unwind path for interfaces that become ineligible.
> 
> checks for the SRIOV LAG feature bit wrap most of the functional code for
> manipulating resources that apply to this feature.  Utilize this bit
> to track compliant aggregates.  Also flag any new entries into the
> aggregate as not supporting SRIOV LAG for the time they are in the
> non-compliant aggregate.
> 
> Once an aggregate has been flagged as non-compliant, only unpopulating the
> aggregate and re-populating it will return SRIOV LAG functionality.
> 
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>

Reviewed-by: Daniel Machon <daniel.machon@microchip.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
