Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BB92EAB6EAC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 May 2025 16:59:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0195A4052A;
	Wed, 14 May 2025 14:59:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id woq25RTqJVmi; Wed, 14 May 2025 14:59:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 61882414EB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747234755;
	bh=ky9+2pFd4v20gjAJCzTpwKsyIXlGd7S66cLmBLZi1mo=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cqQHgHLkYQzhx1bcxfsKujkOtXgT06mmyJ5W/pHdWyK9foeY4zCKQCmP1vZoPnvto
	 LlC3LtkZpGWh8p3cIO4IM3EZc42ugF/SIuVVH4/EWfMiNov8OUbJN29YPReOS7cvSF
	 7ocd7Qx4/loJC8GtW6RYidWucEcynP4H1ci1wkcaI4oCymM+9041AH0YZHhPrgTLAK
	 WyBYux/R7N5hJvAuulPckAEjNgxBQGgCdwFk2CqHmOh2MPTKGZpuw3AxKsVFzk1zli
	 czrYlf+D/ziHiJYtoTPYiDdfGl15bsROu9HPmLH/mjQdS7Y4ynvXYnMlFvow0CEh9O
	 8VNm/hwmREklA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 61882414EB;
	Wed, 14 May 2025 14:59:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1B46312A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 14:59:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 179774061A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 14:59:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bgx32nsqwTOq for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 May 2025 14:59:13 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=martyna.szapar-mudlaw@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2A31F4052A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2A31F4052A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2A31F4052A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 14:59:12 +0000 (UTC)
X-CSE-ConnectionGUID: 59ycxOEcTEqw/OXKlRoICg==
X-CSE-MsgGUID: HOeUvodPTw+0slD662fzDQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11433"; a="71640146"
X-IronPort-AV: E=Sophos;i="6.15,288,1739865600"; d="scan'208";a="71640146"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2025 07:59:13 -0700
X-CSE-ConnectionGUID: qtP4kUF7ScKkIuveXevfkw==
X-CSE-MsgGUID: MSpGtGrNRsiJztXAvqXctQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,288,1739865600"; d="scan'208";a="137776202"
Received: from mszapar-mobl1.ger.corp.intel.com (HELO [10.245.96.13])
 ([10.245.96.13])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2025 07:59:11 -0700
Message-ID: <8314acf3-642b-4e39-8cbc-e6e15d7a3741@linux.intel.com>
Date: Wed, 14 May 2025 16:59:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
References: <20250512090515.1244601-2-martyna.szapar-mudlaw@linux.intel.com>
 <20250512172146.2f06e09f@kernel.org>
 <3b333c97-4bdd-4238-bfab-b0f137e5b869@linux.intel.com>
 <20250514074203.31b07788@kernel.org>
Content-Language: en-US
From: "Szapar-Mudlaw, Martyna" <martyna.szapar-mudlaw@linux.intel.com>
In-Reply-To: <20250514074203.31b07788@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747234754; x=1778770754;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=kbziLFqjvomaxCMK7L5MaRFAB9qQAYvjsqLOw928AQI=;
 b=i14FcJwxpvlu/M87rZzA5FQWqj9MU0R+NNCdIbdBTwMhmZG9zed7i7EV
 29HG1iCMdqYuvd+IO3Axsj19WAEkyMQLdbPXNFETraxUHt+Izi7UwwFeb
 izHspLpaMS/OyNw5y/BA8D9c/1JA7p7dOdfdPvPMPhMExvXI+x61qgv9K
 vFrwPTeyfS4x3+7+gWgFVHE3Ceg4WhhpKA7m7ni+BQeeZ0SKTObZs0jBL
 ayi21pNkXfabhnB5pr2nxo/BtDn2mNhQ1jSQE5Php6R09PkFhm9capXTl
 z1d6HvbUxtY1RrbBTkseNDGOsaw7SL86IOMSjL0Eo1MFuoHYw1MmWZwka
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=i14FcJwx
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 0/2] Add link_down_events
 counters to ixgbe and ice drivers
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 5/14/2025 4:42 PM, Jakub Kicinski wrote:
> On Wed, 14 May 2025 15:44:49 +0200 Szapar-Mudlaw, Martyna wrote:
>> The link-down events counter increments upon actual physical link-down
>> events, doesn't increment when user performs a simple down/up of the
>> interface.
>>
>> However there is indeed link down event from firmware - as
>> part of interface reinitialization eg. when attaching XDP program,
>> reconfiguring channels and setting interface priv-flags.
> 
> Maybe I'm misunderstanding, but are you saying that the link-down
> counter doesn't increment on ifdown+ifup but it does increment
> when attaching an XDP prog?
> 
> The definition of link_down_events is pretty simple - (plus minus
> the quantum world of signals) the link_down_events is physical link
> downs which the switch / remote end will also see. Unlike software
> carrier off which may just configure the MAC or the NIC pipeline to
> drop but the PHY stays connected / trained / synchronized.
> 

Agree. I said that it increments when physical link gets down and not 
eg. when user performs ip link set dev eth down.
So this implementation of link_down_events counter is consistent with 
the definition you provided.

Regards,
Martyna
