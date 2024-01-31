Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AE093843EDD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Jan 2024 12:53:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 319DD60F90;
	Wed, 31 Jan 2024 11:53:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 319DD60F90
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706702019;
	bh=JyQ1GsuCwqlKFAs/JayTj4nXjPAeo/nC7Qr2gqAP1Oc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=O0Pqp2PFv9ILrmpI3hIobcIaoCaLZPChBeIHhHuGSY3mspP1is2z5PumQU020Ocvw
	 d49+dwahyyFUCFfWLyQiPwBsg/b5xQmFFBUqDPs+pvonK7C3mE2Qn5zOG/FbKsRdRq
	 2NZwp+15gg4KCcHarfcaqpzN98VMs4M8AhMk47b+Svw3K18ZRT1SVUZ4Shy9HUJQqp
	 5zwkQKQOToT1L2DGNOhRPKsmEfv9xh9x7YbwpSJ6CuinHVgjuu8Ky67B5cuyk+6aSa
	 J3T3aPnkuM6wn46c11kt0G2idm/9dTtE+ONdDeLn63VBaJfEwleulb90lX3hIlDBmZ
	 oC6nGDAZ7I1Nw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UQl16xAafKWd; Wed, 31 Jan 2024 11:53:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 34EF660F65;
	Wed, 31 Jan 2024 11:53:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 34EF660F65
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C84AC1BF5E6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 11:53:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AA11360F65
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 11:53:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AA11360F65
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iRrNLa_4yS3j for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Jan 2024 11:53:32 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A73B560EA0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 11:53:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A73B560EA0
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="10962415"
X-IronPort-AV: E=Sophos;i="6.05,231,1701158400"; d="scan'208";a="10962415"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2024 03:53:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="738071148"
X-IronPort-AV: E=Sophos;i="6.05,231,1701158400"; d="scan'208";a="738071148"
Received: from mszycik-mobl1.ger.corp.intel.com (HELO [10.246.35.198])
 ([10.246.35.198])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2024 03:53:27 -0800
Message-ID: <0fc3f574-6243-4c85-a6a7-442dc480c9e7@linux.intel.com>
Date: Wed, 31 Jan 2024 12:53:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Takeru Hayasaka <hayatake396@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Jonathan Corbet <corbet@lwn.net>
References: <20240131013705.1002722-1-hayatake396@gmail.com>
From: Marcin Szycik <marcin.szycik@linux.intel.com>
In-Reply-To: <20240131013705.1002722-1-hayatake396@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706702013; x=1738238013;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=e6U7IZSvIvmIZ9psc3hSArHZqp0dIjof9nK3JhYKmU4=;
 b=VCpg4yz1M8Uc+KCVwz7CVR7QLsjLRNKRaAAbHWcuH1WH1ZrPE8N2qo+y
 Lx3+EklbFoMaZppjO4Qv+TfQTXT6ljXnMZSirrlQ+1lBN22/bHCxoeLb4
 Ywj1b3p5PhayM8mNrg5x+BEDKUGlaNsxU8cZ2OW0ne7DpZD8yAV5SgzqJ
 RmoXdKi8rRkVPk9tYd8LeL9SMKAvtD6KBtHNU7jOhOX8KXviOAYCvQe5S
 B5htXr6yBA8GhWnKpKon+t9HRvYbEmGBnrIlsm6syqj+FlyIGMgZNeR7A
 aUPtBMYMbQ+5BsFDauvscLIrmO2ftBZCCMJpOutwF8IxQQKRya4ic15jy
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VCpg4yz1
Subject: Re: [Intel-wired-lan] [PATCH net-next v5] ethtool: ice: Support for
 RSS settings to GTP from ethtool
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
Cc: linux-doc@vger.kernel.org, vladimir.oltean@nxp.com,
 linux-kernel@vger.kernel.org, laforge@gnumonks.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 mailhol.vincent@wanadoo.fr
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 31.01.2024 02:37, Takeru Hayasaka wrote:
> This is a patch that enables RSS functionality for GTP packets using ethtool.
> 
> A user can include TEID and make RSS work for GTP-U over IPv4 by doing the
> following:`ethtool -N ens3 rx-flow-hash gtpu4 sde`
> 
> In addition to gtpu(4|6), we now support gtpc(4|6),gtpc(4|6)t,gtpu(4|6)e,
> gtpu(4|6)u, and gtpu(4|6)d.
> 
> gtpc(4|6): Used for GTP-C in IPv4 and IPv6, where the GTP header format does
> not include a TEID.
> gtpc(4|6)t: Used for GTP-C in IPv4 and IPv6, with a GTP header format that
> includes a TEID.
> gtpu(4|6): Used for GTP-U in both IPv4 and IPv6 scenarios.
> gtpu(4|6)e: Used for GTP-U with extended headers in both IPv4 and IPv6.
> gtpu(4|6)u: Used when the PSC (PDU session container) in the GTP-U extended
> header includes Uplink, applicable to both IPv4 and IPv6.
> gtpu(4|6)d: Used when the PSC in the GTP-U extended header includes Downlink,
> for both IPv4 and IPv6.
> 
> GTP generates a flow that includes an ID called TEID to identify the tunnel.
> This tunnel is created for each UE (User Equipment).By performing RSS based on
> this flow, it is possible to apply RSS for each communication unit from the UE.
> Without this, RSS would only be effective within the range of IP addresses. For
> instance, the PGW can only perform RSS within the IP range of the SGW.
> Problematic from a load distribution perspective, especially if there's a bias
> in the terminals connected to a particular base station.This case can be
> solved by using this patch.

LGTM
Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>

> Signed-off-by: Takeru Hayasaka <hayatake396@gmail.com>
> ---
> v2->v3: Based on Harald-san's review, I added documentation and comments to 
> ethtool.h and ice.rst.
> v3->v4: Based on Marcin-san's review, I added the missing code for GTPC and 
> GTPC_TEID, and revised the documentation and comments.
> v4->v5: Based on Marcin-san's review, I fixed rename and wrong code regarding
> GTPC

[...]

>      f     Hash on bytes 0 and 1 of the Layer 4 header of the Rx packet.
>      n     Hash on bytes 2 and 3 of the Layer 4 header of the Rx packet.
> -

Still removing this line :c

> +    e     Hash on GTP Packet on TEID (4bytes) of the Rx packet.
>  
>  Accelerated Receive Flow Steering (aRFS)
>  ----------------------------------------

---8<---
