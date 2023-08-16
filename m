Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 66E2877E43A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Aug 2023 16:54:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F201041F6C;
	Wed, 16 Aug 2023 14:54:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F201041F6C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692197690;
	bh=OUyHSTq9+sAzKpw8ugSgpDP5FD/zTJO+D+b6Ic5Ybs8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PhvxK1BY6DaBxT2WKSNgnw6+eY0o5fJCnN74ybvwkjHTqjV9WFQpE9DZ9dQcFXJKU
	 23axXLs8JFVMsmJK8HJEiHWuZnF8gJUpuLZ/JPwxmU6XVnX2WAgiM+ZKf5LFJKwucI
	 46ZZ7HbFJVtfBxXv3pL6QUo45RYDe6RmJFMkHGggsA0B9mFLfKDEYfNZod9+H304VW
	 yp86/ipPVU7TUsjNgFsXZNWov2bgwE/KNYytRQUDPfQ0njcryzDmaPZYES96aRd1sF
	 v3DZh4rFePDSxNdieO2fLt/aYCH+nG3RQkcf5IZKESBOYMup5Nz2fVRPlqNTPRO9NF
	 iwREZmJaUUsbA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EjTRWVOt2Yjp; Wed, 16 Aug 2023 14:54:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 76C9140948;
	Wed, 16 Aug 2023 14:54:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 76C9140948
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 52C721BF41B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 14:54:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 384F840C28
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 14:54:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 384F840C28
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xz6UXjviVvwR for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Aug 2023 14:54:42 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E28A04059E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 14:54:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E28A04059E
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="352877879"
X-IronPort-AV: E=Sophos;i="6.01,177,1684825200"; d="scan'208";a="352877879"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 07:54:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="737317153"
X-IronPort-AV: E=Sophos;i="6.01,177,1684825200"; d="scan'208";a="737317153"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.214.225.82])
 ([10.214.225.82])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 07:54:39 -0700
Message-ID: <6526c871-e273-ac30-7a9a-acd6a6d39c8c@linux.intel.com>
Date: Wed, 16 Aug 2023 17:54:36 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20230729001800.227269-1-vinicius.gomes@intel.com>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20230729001800.227269-1-vinicius.gomes@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692197682; x=1723733682;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=CFS7++Lz+0Gzz3WZCIwQshEX7wGQdVIE22WARDWKcIg=;
 b=e7DNUAXVJcKtRTHsVvkKrzNoGUm+tYcJvhghD4xs0qqOlPIxNs7S5oOR
 hdnULw5SgoSG+vFsO4jS9smRzp9fbr/UyBgYNEH1/lno29EVWyuY4rb8U
 zDGOBcbK4Cabcm+QbO7XIuAvNSboL9qjbCnxz6j7jF4uadGXKYUXpnirb
 T7UGr5ZJstp+1Yj0KHjy7MDAgRJX08zW7jwYVfSF+co9pEL5zbu1OpziY
 N8zW8jYA1vo3kPDNcuMlCzQhiVyM4orgxY0e2u1Q0EOpZjxYzJFom8c/g
 aye5PyvYdWSuipS806RWiqoc+Pw4ARTErzTfBJlV0X6bez7t0VbltvYVz
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=e7DNUAXV
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] igc: Add support for
 multiple in-flight TX timestamps
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
Cc: vladimir.oltean@nxp.com, richardcochran@gmail.com, kurt@linutronix.de,
 anthony.l.nguyen@intel.com, jesse.brandeburg@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 7/29/2023 03:17, Vinicius Costa Gomes wrote:
> Add support for using the four sets of timestamping registers that
> i225/i226 have available for TX.
> 
> In some workloads, where multiple applications request hardware
> transmission timestamps, it was possible that some of those requests
> were denied because the only in use register was already occupied.
> 
> This is also in preparation to future support for hardware
> timestamping wwith multiple PTP domains. With multiple domains chances
> of multiple TX timestamps being requested at the same time increase.
> 
> Before:
> $ sudo ./ntpperf -i enp3s0 -m 10:22:22:22:22:21 -d 192.168.1.3 -s 172.18.0.0/16 -I -H -o 37
>                 |          responses            |     TX timestamp offset (ns)
> rate   clients |  lost invalid   basic  xleave |    min    mean     max stddev
> 1000       100   0.00%   0.00%   0.00% 100.00%       +1     +41     +73     13
> 1500       150   0.00%   0.00%   0.00% 100.00%       +9     +49     +87     15
> 2250       225   0.00%   0.00%   0.00% 100.00%       +9     +42     +79     13
> 3375       337   0.00%   0.00%   0.00% 100.00%      +11     +46     +81     13
> 5062       506   0.00%   0.00%   0.00% 100.00%       +7     +44     +80     13
> 7593       759   0.00%   0.00%   0.00% 100.00%       +9     +44     +79     12
> 11389     1138   0.00%   0.00%   0.00% 100.00%      +14     +51     +87     13
> 17083     1708   0.00%   0.00%   0.00% 100.00%       +1     +41     +80     14
> 25624     2562   0.00%   0.00%   0.00% 100.00%      +11     +50   +5107     51
> 38436     3843   0.00%   0.00%   0.00% 100.00%       -2     +36   +7843     38
> 57654     5765   0.00%   0.00%   0.00% 100.00%       +4     +42  +10503     69
> 86481     8648   0.00%   0.00%   0.00% 100.00%      +11     +54   +5492     65
> 129721   12972   0.00%   0.00%   0.00% 100.00%      +31   +2680   +6942   2606
> 194581   16384  16.79%   0.00%   0.87%  82.34%      +73   +4444  +15879   3116
> 291871   16384  35.05%   0.00%   1.53%  63.42%     +188   +5381  +17019   3035
> 437806   16384  54.95%   0.00%   2.55%  42.50%     +233   +6302  +13885   2846
> 
> After:
> $ sudo ./ntpperf -i enp3s0 -m 10:22:22:22:22:21 -d 192.168.1.3 -s 172.18.0.0/16 -I -H -o 37
>                 |          responses            |     TX timestamp offset (ns)
> rate   clients |  lost invalid   basic  xleave |    min    mean     max stddev
> 1000       100   0.00%   0.00%   0.00% 100.00%      -20     +12     +43     13
> 1500       150   0.00%   0.00%   0.00% 100.00%      -23     +18     +57     14
> 2250       225   0.00%   0.00%   0.00% 100.00%       -2     +33     +67     13
> 3375       337   0.00%   0.00%   0.00% 100.00%       +1     +38     +76     13
> 5062       506   0.00%   0.00%   0.00% 100.00%       +9     +52     +93     14
> 7593       759   0.00%   0.00%   0.00% 100.00%      +11     +47     +82     13
> 11389     1138   0.00%   0.00%   0.00% 100.00%       -9     +27     +74     13
> 17083     1708   0.00%   0.00%   0.00% 100.00%      -13     +25     +66     14
> 25624     2562   0.00%   0.00%   0.00% 100.00%       -8     +28     +65     13
> 38436     3843   0.00%   0.00%   0.00% 100.00%      -13     +28     +69     13
> 57654     5765   0.00%   0.00%   0.00% 100.00%      -11     +32     +71     14
> 86481     8648   0.00%   0.00%   0.00% 100.00%       +2     +44     +83     14
> 129721   12972  15.36%   0.00%   0.35%  84.29%       -2   +2248  +22907   4252
> 194581   16384  42.98%   0.00%   1.98%  55.04%       -4   +5278  +65039   5856
> 291871   16384  54.33%   0.00%   2.21%  43.46%       -3   +6306  +22608   5665
> 
> We can see that with 4 registers, as expected, we are able to handle a
> increasing number of requests more consistently, but as soon as all
> registers are in use, the decrease in quality of service happens in a
> sharp step.
> 
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> ---
> v2 -> v3:
>   - Removed unnecessary documentation that sneaked up from previous
>     versions (Tony Nguyen)
> 
> v1 -> v2:
>   - Removed patches sent as fixes to the net tree;
>   - More details to the commit message, ntpperf comparison (with the
>     right clientloglimit, as Miroslav Lichvar suggested);
> 
> v1: https://lore.kernel.org/r/20230228054534.1093483-1-vinicius.gomes@intel.com/
> 
> 
>   drivers/net/ethernet/intel/igc/igc.h         |  18 +-
>   drivers/net/ethernet/intel/igc/igc_base.h    |   3 +
>   drivers/net/ethernet/intel/igc/igc_defines.h |   7 +
>   drivers/net/ethernet/intel/igc/igc_main.c    |  41 ++++-
>   drivers/net/ethernet/intel/igc/igc_ptp.c     | 178 +++++++++++++------
>   drivers/net/ethernet/intel/igc/igc_regs.h    |  12 ++
>   6 files changed, 194 insertions(+), 65 deletions(-)


Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
