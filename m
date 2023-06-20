Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C1D67374D9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jun 2023 21:03:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DAE65405D6;
	Tue, 20 Jun 2023 19:03:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DAE65405D6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687287802;
	bh=A7CyYQ1ItCZCu31mvo083WYYZ35AaplDkaMc/Ja8zCs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=l1j13hTD1Geb7MheCZbkXEUdIYuLrnJj50l9EVKcduyQ+YTYqrya8OzbTDGU6/YN/
	 JFaOp+wszYUHk07DGazPWkPLtIS6/svGBIISaACjlikQJKdgEoMtJjybkFG+8PwZ6F
	 em2Z1EAjrxJhiHtj7gbe6FxaVdEt8jMW+Rz6ODZJ/LQkCU+2XMZTrxTNRyDvHYi2sp
	 Ts0y5xBEooVJ6LOcjRtb3sUCt/++i/ufZsXczPhmhov5lMQQy9j0o7BWR3Y6Ka1cKr
	 CowenFeQGlJeh528GEAm9cX0VlgUAMxTyu6YvnX+C6lOyN99C9QIyyNP2WxkLSJncv
	 WUVh8Gr6V9mbA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B3yxbPblJ7gZ; Tue, 20 Jun 2023 19:03:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BCDE5408A6;
	Tue, 20 Jun 2023 19:03:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BCDE5408A6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C11071BF4E4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 19:03:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 983F0402F5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 19:03:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 983F0402F5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KYlIZLCO9Iu5 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jun 2023 19:03:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 970A340159
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 970A340159
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 19:03:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="357451599"
X-IronPort-AV: E=Sophos;i="6.00,258,1681196400"; d="scan'208";a="357451599"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2023 12:03:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="708409637"
X-IronPort-AV: E=Sophos;i="6.00,258,1681196400"; d="scan'208";a="708409637"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.214.200.19])
 ([10.214.200.19])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2023 12:03:09 -0700
Message-ID: <077e8567-0e45-8afe-f68d-d87a72be703f@linux.intel.com>
Date: Tue, 20 Jun 2023 22:02:46 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20230607213232.875138-1-vinicius.gomes@intel.com>
 <20230607213232.875138-4-vinicius.gomes@intel.com>
Content-Language: en-US
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20230607213232.875138-4-vinicius.gomes@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687287795; x=1718823795;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=cq0n05JzPMbzw8vr0H1RXtknbSIgTYQ5AsMQJqa1aPI=;
 b=Q/P/VGm4fqjorrvS73ZEuX2fdiRkm7wR3QvJglsM4yav0SDCDsWOpx93
 Bh89UTy5whXXATu9ySibldUlck3bkxh0SDRQlU0gQ4os5yu87eAdbBYvD
 kgcXKx3UhI6hOXR2niAxbC4V2shzpvXcVYj1r0vR+34I3vtT1rPOMxQYO
 YW9dZfoeSYtuLaKaHLDLeGyfGR6Rk7DlMzeTEAulNOBP/fiC985la4yER
 8quSkMgA0CqV3GEzuM2rZVkar1i2ZWerlbTLCkdf4/AFYAci6QeS0dXv4
 zkK0dw0QGadexibdhby3oy94x4xjIwfcnKNH6j8Vrv99i7qAQnM/t9ZZn
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Q/P/VGm4
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v4 3/4] igc: Retrieve TX
 timestamp during interrupt handling
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
Cc: vladimir.oltean@nxp.com, kurt@linutronix.de, anthony.l.nguyen@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 6/8/2023 00:32, Vinicius Costa Gomes wrote:
> When the interrupt is handled, the TXTT_0 bit in the TSYNCTXCTL
> register should already be set and the timestamp value already loaded
> in the appropriate register.
> 
> This simplifies the handling, and reduces the latency for retrieving
> the TX timestamp, which increase the amount of TX timestamps that can
> be handled in a given time period.
> 
> As the "work" function doesn't run in a workqueue anymore, rename it
> to something more sensible, a event handler.
> 
> Using ntpperf[1] we can see the following performance improvements:
> 
> Before:
> 
> $ sudo ./ntpperf -i enp3s0 -m 10:22:22:22:22:21 -d 192.168.1.3 -s 172.18.0.0/16 -I -H -o -37
>                 |          responses            |     TX timestamp offset (ns)
> rate   clients |  lost invalid   basic  xleave |    min    mean     max stddev
> 1000       100   0.00%   0.00%   0.00% 100.00%      -56      +9     +52     19
> 1500       150   0.00%   0.00%   0.00% 100.00%      -40     +30     +75     22
> 2250       225   0.00%   0.00%   0.00% 100.00%      -11     +29     +72     15
> 3375       337   0.00%   0.00%   0.00% 100.00%      -18     +40     +88     22
> 5062       506   0.00%   0.00%   0.00% 100.00%      -19     +23     +77     15
> 7593       759   0.00%   0.00%   0.00% 100.00%       +7     +47   +5168     43
> 11389     1138   0.00%   0.00%   0.00% 100.00%      -11     +41   +5240     39
> 17083     1708   0.00%   0.00%   0.00% 100.00%      +19     +60   +5288     50
> 25624     2562   0.00%   0.00%   0.00% 100.00%       +1     +56   +5368     58
> 38436     3843   0.00%   0.00%   0.00% 100.00%      -84     +12   +8847     66
> 57654     5765   0.00%   0.00% 100.00%   0.00%
> 86481     8648   0.00%   0.00% 100.00%   0.00%
> 129721   12972   0.00%   0.00% 100.00%   0.00%
> 194581   16384   0.00%   0.00% 100.00%   0.00%
> 291871   16384  27.35%   0.00%  72.65%   0.00%
> 437806   16384  50.05%   0.00%  49.95%   0.00%
> 
> After:
> 
> $ sudo ./ntpperf -i enp3s0 -m 10:22:22:22:22:21 -d 192.168.1.3 -s 172.18.0.0/16 -I -H -o -37
>                 |          responses            |     TX timestamp offset (ns)
> rate   clients |  lost invalid   basic  xleave |    min    mean     max stddev
> 1000       100   0.00%   0.00%   0.00% 100.00%      -44      +0     +61     19
> 1500       150   0.00%   0.00%   0.00% 100.00%       -6     +39     +81     16
> 2250       225   0.00%   0.00%   0.00% 100.00%      -22     +25     +69     15
> 3375       337   0.00%   0.00%   0.00% 100.00%      -28     +15     +56     14
> 5062       506   0.00%   0.00%   0.00% 100.00%       +7     +78    +143     27
> 7593       759   0.00%   0.00%   0.00% 100.00%      -54     +24    +144     47
> 11389     1138   0.00%   0.00%   0.00% 100.00%      -90     -33     +28     21
> 17083     1708   0.00%   0.00%   0.00% 100.00%      -50      -2     +35     14
> 25624     2562   0.00%   0.00%   0.00% 100.00%      -62      +7     +66     23
> 38436     3843   0.00%   0.00%   0.00% 100.00%      -33     +30   +5395     36
> 57654     5765   0.00%   0.00% 100.00%   0.00%
> 86481     8648   0.00%   0.00% 100.00%   0.00%
> 129721   12972   0.00%   0.00% 100.00%   0.00%
> 194581   16384  19.50%   0.00%  80.50%   0.00%
> 291871   16384  35.81%   0.00%  64.19%   0.00%
> 437806   16384  55.40%   0.00%  44.60%   0.00%
> 
> [1] https://github.com/mlichvar/ntpperf
> 
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>
> ---
>   drivers/net/ethernet/intel/igc/igc.h      |  2 +-
>   drivers/net/ethernet/intel/igc/igc_main.c |  2 +-
>   drivers/net/ethernet/intel/igc/igc_ptp.c  | 15 +++++----------
>   3 files changed, 7 insertions(+), 12 deletions(-)

Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
