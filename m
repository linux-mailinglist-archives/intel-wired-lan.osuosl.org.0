Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EA59AB685B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 May 2025 12:03:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 12EA38225C;
	Wed, 14 May 2025 10:03:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ud6d1xKb3LIn; Wed, 14 May 2025 10:03:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 76C9B8377F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747217010;
	bh=kP1tibvKFzK3ton7j6wkx93ql5HPqIhhrlxE6cuCpbs=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pW1kr7HXkzA5eHlcgL0LacJWWTmv+WJTnSD2ip0EHaqiTr/mNFyolboDz3TWE2D8R
	 8RmJeTiBuv3Ts639d+5FI8vUl8Wqe4Orbzrk0dzJsAH1uJOVLTs2odJpVd1C9M18z+
	 YDWom6Z5mLbZzJrpiyKPYZcMypAAUx5A9S6unlK0xf8XmHZF6t39wjR0X1Lky/pIWb
	 N9Slvwu4Wl0mjg1Szirtgy7f4GvykvTNs6d9294PXDlUheRHitxzYyIcEw/8rYokfv
	 /+mBTxufRSfkO1jhbCdgxW1feKZdO7mrucO6UMHLN6jt15nP0JcERB1nKDdYp2wzR3
	 xMiRnrYLViy0g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 76C9B8377F;
	Wed, 14 May 2025 10:03:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 89F5812A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 10:03:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7B0A6404B5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 10:03:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VKBrYh6Pa5-3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 May 2025 10:03:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:41d0:1004:224b::ac; helo=out-172.mta0.migadu.com;
 envelope-from=vadim.fedorenko@linux.dev; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3A96A40410
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3A96A40410
Received: from out-172.mta0.migadu.com (out-172.mta0.migadu.com
 [IPv6:2001:41d0:1004:224b::ac])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3A96A40410
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 10:03:27 +0000 (UTC)
Message-ID: <e6cebadc-39fc-4cb0-be4b-d797deab12a8@linux.dev>
Date: Wed, 14 May 2025 11:03:12 +0100
MIME-Version: 1.0
To: Vladimir Oltean <vladimir.oltean@nxp.com>, intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Jacob Keller <jacob.e.keller@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Richard Cochran <richardcochran@gmail.com>
References: <20250513101132.328235-1-vladimir.oltean@nxp.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <20250513101132.328235-1-vladimir.oltean@nxp.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1747217003;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=kP1tibvKFzK3ton7j6wkx93ql5HPqIhhrlxE6cuCpbs=;
 b=Oa+PLgpheMWK25xM4ne0KdUFKgmX5pGNUp7NfqSnNtjRO8r2cyEkp5CARM1uNz24gmhdPl
 ugHVGGYZNgC//WqSLuhA8jC3ypSqb8lAXpdqPHCFdqXdiU0iZ5AMSyJEc9mhEUR1TUAsFD
 sknb/NPXKoZKeszaORYM5BbOFHiDGds=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=Oa+PLgph
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 0/5] Intel driver conversion
 to new hardware timestamping API
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

On 13/05/2025 11:11, Vladimir Oltean wrote:
> Since the introduction of the new ndo_hwtstamp_get() and
> ndo_hwtstamp_set() operations in v6.6, only e1000e and iavf have
> been converted.
> 
> There is a push to get rid of the old code path for configuring hardware
> timestamping, so the reset of the drivers are converted in this patch
> set.
> 
> Vladimir Oltean (5):
>    ice: convert to ndo_hwtstamp_get() and ndo_hwtstamp_set()
>    igc: convert to ndo_hwtstamp_get() and ndo_hwtstamp_set()
>    igb: convert to ndo_hwtstamp_get() and ndo_hwtstamp_set()
>    ixgbe: convert to ndo_hwtstamp_get() and ndo_hwtstamp_set()
>    i40e: convert to ndo_hwtstamp_get() and ndo_hwtstamp_set()
> 
>   drivers/net/ethernet/intel/i40e/i40e.h        |  9 ++--
>   drivers/net/ethernet/intel/i40e/i40e_main.c   | 24 +---------
>   drivers/net/ethernet/intel/i40e/i40e_ptp.c    | 43 +++++++++---------
>   drivers/net/ethernet/intel/ice/ice_main.c     | 24 +---------
>   drivers/net/ethernet/intel/ice/ice_ptp.c      | 45 ++++++++++---------
>   drivers/net/ethernet/intel/ice/ice_ptp.h      | 17 ++++---
>   drivers/net/ethernet/intel/igb/igb.h          |  9 ++--
>   drivers/net/ethernet/intel/igb/igb_main.c     |  6 +--
>   drivers/net/ethernet/intel/igb/igb_ptp.c      | 37 +++++++--------
>   drivers/net/ethernet/intel/igc/igc.h          |  9 ++--
>   drivers/net/ethernet/intel/igc/igc_main.c     | 21 +--------
>   drivers/net/ethernet/intel/igc/igc_ptp.c      | 36 +++++++--------
>   drivers/net/ethernet/intel/ixgbe/ixgbe.h      |  9 ++--
>   drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |  6 +--
>   drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c  | 42 ++++++++---------
>   15 files changed, 147 insertions(+), 190 deletions(-)
> 

The changes are pretty straight-forward.

For series:
Reviewed-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>

