Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 621F172C977
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Jun 2023 17:11:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 07FEC83F94;
	Mon, 12 Jun 2023 15:11:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 07FEC83F94
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686582686;
	bh=IT6LjfQgfsmo0AUpV1zyy0sIKS0UMFjE/Abq3kNIT1k=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sNDUCd4wNnwQFSgE6qIln9vENyZ/S1yC62KZJypvUR2oCQBYigsv0MJ6OCjVwwUpq
	 VbbebTrqJ2vpJmDouxJrTWCNgBhnQcAXVT6tak3Ol19O/DZCq4g+vVeIIW5+A5ltC8
	 /yrlmF8xhNy0M9ip761rc293aA2NnMkRyE1TXTfy+YMRULeQcAEQkvhUwDPxo+jKQM
	 pD7crqM+xejTNBo3o0zc9U2hAXK/ljrEpfSLOgrmCCZXDMjiRPaI+NNcLI1cGrhx8H
	 +1HsU9SOs4lITxpubiwjsSMkLp58ifv00UtFIKrljkDXypVO+UHbWZl+5OAJNsAXB3
	 /g2c9VJ1H/7VQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e97PnZZGH2fe; Mon, 12 Jun 2023 15:11:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AEBDD82CB7;
	Mon, 12 Jun 2023 15:11:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AEBDD82CB7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3B8221BF27E
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Jun 2023 17:42:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2088382349
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Jun 2023 17:42:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2088382349
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wh6j7NhQQBdA for <intel-wired-lan@lists.osuosl.org>;
 Sun, 11 Jun 2023 17:42:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4690582348
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com
 [68.232.154.123])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4690582348
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Jun 2023 17:42:02 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="6.00,234,1681196400"; d="scan'208";a="156487325"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 11 Jun 2023 10:42:00 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Sun, 11 Jun 2023 10:41:53 -0700
Received: from DEN-LT-70577 (10.10.115.15) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.2507.21 via Frontend
 Transport; Sun, 11 Jun 2023 10:41:51 -0700
Date: Sun, 11 Jun 2023 17:41:51 +0000
From: Daniel Machon <daniel.machon@microchip.com>
To: Dave Ertman <david.m.ertman@intel.com>
Message-ID: <20230611174151.j4is455hv542igqf@DEN-LT-70577>
References: <20230609211626.621968-1-david.m.ertman@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230609211626.621968-1-david.m.ertman@intel.com>
X-Mailman-Approved-At: Mon, 12 Jun 2023 15:11:14 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1686505323; x=1718041323;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=GrxuPrukoPU0phCfmXQzQLYc5IAADVbwsS/X+iSrVVE=;
 b=NqLgPOC2B/6MrSgG31S2FqmQt/fezg7IU3dx0LGw11w1JeaIA7QpsgPV
 NRF2cYFv0cTgBIVDSRv3gzb6Z1oEiF4wU5Ni2LtUJxgOk/DSxxN/05Ar3
 Y1bjEq7frHbwYZtKnr64qe7Jw4DYt3Ynxea4uW48naxay3lm+J95Jp2/9
 4tksmr/RPub/I1t5V9jwP2M4y80hnof6Am+jLSMd6Pjhd+dqzTKksho11
 mmptCbTMJHQuW8XYTdyWXkGutLd2tDxtyjAOYnp61EnvehtJIEs0uvZdI
 64e0mjp9ehv3bvE0gZ7mNJ6wXHxOOTuvsDSiZ6Vz4g+i72zX2byIode1R
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com
 header.a=rsa-sha256 header.s=mchp header.b=NqLgPOC2
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 00/10] Implement support
 for SRIOV + LAG
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
Cc: simon.horman@corigine.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hmm. v4 series does not apply. Seems like patch #3 is causing some
trouble.

> Implement support for SRIOV VF's on interfaces that are in an
> aggregate interface.
> 
> The first interface added into the aggregate will be flagged as
> the primary interface, and this primary interface will be
> responsible for managing the VF's resources.  VF's created on the
> primary are the only VFs that will be supported on the aggregate.
> Only Active-Backup mode will be supported and only aggregates whose
> primary interface is in switchdev mode will be supported.
> 
> Additional restrictions on what interfaces can be added to the aggregate
> and still support SRIOV VFs are:
> - interfaces have to all be on the same physical NIC
> - all interfaces have to have the same QoS settings
> - interfaces have to have the FW LLDP agent disabled
> - only the primary interface is to be put into switchdev mode
> - no more than two interfaces in the aggregate
> 
> Changes since v1:
> Fix typo in commit message
> Fix typos in warning messages
> Fix typo in function header
> Use correct bitwise operator instead of boolean
> 
> Changes since v2:
> Rebase on current next-queue
> Fix typos in commits
> Fix typos in function headers
> use %u for unsigned values in debug message
> Refactor common code in node moves to subfunction
> 
> Changes since v3:
> Fix typos in warning messages
> move refactor of common code to earlier patch
> expand use of refactored code
> move prototype and func call into patch that defines func
> 
> Dave Ertman (9):
>   ice: Add driver support for firmware changes for LAG
>   ice: changes to the interface with the HW and FW for SRIOV_VF+LAG
>   ice: implement lag netdev event handler
>   ice: process events created by lag netdev event handler
>   ice: Flesh out implementation of support for SRIOV on bonded interface
>   ice: support non-standard teardown of bond interface
>   ice: enforce interface eligibility and add messaging for SRIOV LAG
>   ice: enforce no DCB config changing when in bond
>   ice: update reset path for SRIOV LAG support
> 
> Jacob Keller (1):
>   ice: Correctly initialize queue context values
> 
>  drivers/net/ethernet/intel/ice/ice.h          |    5 +
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   53 +-
>  drivers/net/ethernet/intel/ice/ice_common.c   |   56 +
>  drivers/net/ethernet/intel/ice/ice_common.h   |    4 +
>  drivers/net/ethernet/intel/ice/ice_dcb_nl.c   |   50 +
>  drivers/net/ethernet/intel/ice/ice_lag.c      | 1812 ++++++++++++++++-
>  drivers/net/ethernet/intel/ice/ice_lag.h      |   34 +-
>  drivers/net/ethernet/intel/ice/ice_lib.c      |    2 +-
>  drivers/net/ethernet/intel/ice/ice_lib.h      |    1 +
>  drivers/net/ethernet/intel/ice/ice_main.c     |   26 +-
>  drivers/net/ethernet/intel/ice/ice_sched.c    |   37 +-
>  drivers/net/ethernet/intel/ice/ice_sched.h    |   21 +
>  drivers/net/ethernet/intel/ice/ice_switch.c   |   88 +-
>  drivers/net/ethernet/intel/ice/ice_switch.h   |   29 +
>  drivers/net/ethernet/intel/ice/ice_type.h     |    2 +
>  drivers/net/ethernet/intel/ice/ice_virtchnl.c |    2 +
>  16 files changed, 2092 insertions(+), 130 deletions(-)
> 
> --
> 2.40.1
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
