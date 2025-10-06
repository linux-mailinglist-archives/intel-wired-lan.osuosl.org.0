Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C54A6BBE4DA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 06 Oct 2025 16:16:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 74C046132B;
	Mon,  6 Oct 2025 14:16:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uEYizwZYIJ8M; Mon,  6 Oct 2025 14:16:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A31866132E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759760191;
	bh=dHYqOJJRlWefeQ6uJbqzoK0H7WtMZlLCZ88Ac6SKDYU=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=UFVydsZ86NBzX13YrCZs3yrCtpJtpyMjORKd7nzYgUHMfWLVS6phxicvExK5nLBm4
	 3zaTyVdXe0BQAlkTt51UqHwLxyMuPwqZlPB5QDY1gFugNtmF9frtxp9FxlUR3wLNW9
	 PckI3BTNrfKo/rAXxldF7dHrsqgRn1Nj7comTPBoU27dLOEw/sARU04mMddVxXDHtD
	 b2kudZleD4ZvFcIwaWo0D7mdav9q3a550pYMg3PZ7R7H6nBYIKfKkGHsGGUyrUolA9
	 3bl2TVNdukuzUrj1Ukt+cTrMKHDiNMcWDAb1m1fgzlzRlsj7qrEF8btm/AghJectai
	 s+7kJWcY5hvaw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A31866132E;
	Mon,  6 Oct 2025 14:16:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 74A51272
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Oct 2025 14:16:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 662F0406B1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Oct 2025 14:16:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id atoT6qZ08oBw for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Oct 2025 14:16:29 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 06 Oct 2025 14:16:29 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7A10040074
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7A10040074
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=dawid.osuchowski@linux.intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7A10040074
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Oct 2025 14:16:29 +0000 (UTC)
X-CSE-ConnectionGUID: 5HdFn556Rf2rtr1LdAYhDQ==
X-CSE-MsgGUID: 7ZmY66OxQ46V0bitnWJYEQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11574"; a="72607826"
X-IronPort-AV: E=Sophos;i="6.18,320,1751266800"; d="scan'208";a="72607826"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2025 07:09:20 -0700
X-CSE-ConnectionGUID: rjmKuUTFRG+ePe5bpyMt4g==
X-CSE-MsgGUID: fsifdfJ1RHa7Pk0Bqht0Bw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,320,1751266800"; d="scan'208";a="183912201"
Received: from hlagrand-mobl1.ger.corp.intel.com (HELO [10.245.102.40])
 ([10.245.102.40])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2025 07:09:16 -0700
Message-ID: <0a2efa67-0fb0-458a-970e-8957fffe63a0@linux.intel.com>
Date: Mon, 6 Oct 2025 16:09:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Kohei Enju <enjuk@amazon.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Auke Kok <auke-jan.h.kok@intel.com>, Jeff Garzik <jgarzik@redhat.com>,
 Sasha Neftin <sasha.neftin@intel.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Jacob Keller <jacob.e.keller@intel.com>, kohei.enju@gmail.com
References: <20251006123741.43462-1-enjuk@amazon.com>
Content-Language: pl, en-US
From: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
In-Reply-To: <20251006123741.43462-1-enjuk@amazon.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759760189; x=1791296189;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=Z2sG1ZMUE0N4JZiSEpyBe9xibv11tF9EmXkPsIFrvL8=;
 b=iG0lMyqFwv1cioCdR0UcVogeKEGU9QPUnesi/hN1kWn3VeBJ5OWDzNdb
 U5P9SNrfJqBi2s4n98K4fyP6AsLMgUC00k1DZBDA0UsBiI3ikF8URYtNu
 LvvvvvKYvEtPkYrQGWnHb1ZH1fUKprf/b6TG621Ks9ssAcAOSDnaM9+CP
 nzpd5VnTFfy9XRf+rkMUNQwM1b9TluVaxmxxCf8Bd3xrWpb1j7rvcZaGb
 L5LsPyvKyl/QLJIRYbeVr4h2KyL7epBiTdNrXqEy0ba0ta5pwpP+hTLvW
 NiZ9T0MZPVI5A4NwJH3yjVR5MvwwISKNtVYn+l9f3L4M2xOfsIsIAXgJf
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iG0lMyqF
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 0/3] igb/igc/ixgbe: use
 EOPNOTSUPP instead of ENOTSUPP
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

On 2025-10-06 2:35 PM, Kohei Enju wrote:
> This series fixes inconsistent errno usage in igb/igc/ixgbe. The drivers
> return -ENOTSUPP instead of -EOPNOTSUPP in specific ethtool and PTP
> functions, therefore userland programs would get "Unknown error 524".
> 
> Use -EOPNOTSUPP instead of -ENOTSUPP to fix the issue.
> 
> This series covers all incorrect usage of ENOTSUPP in Intel ethernet
> drivers except the one in iavf, which should be targeted for iwl-next in
> a separate series since it's just a comment. [1]
> 
> For igb and igc, I used a simple reproducer for testing [2] on I350 and
> I226-V respectively.
> Without this series:
>   # strace -e ioctl ./errno-repro
>   ioctl(3, SIOCETHTOOL, 0x7ffcde13cec0)   = -1 ENOTSUPP (Unknown error 524)
> 
> With this series:
>   # strace -e ioctl ./errno-repro
>   ioctl(3, SIOCETHTOOL, 0x7ffd69a28c40)   = -1 EOPNOTSUPP (Operation not supported)
> 
> For ixgbe, I used the testptp for testing on 82599ES.
> Without this series:
>   # strace -e ioctl ./testptp -d /dev/ptp1 -P 1
>   ioctl(3, PTP_ENABLE_PPS, 0x1)           = -1 ENOTSUPP (Unknown error 524)
> 
> With this series:
>   # strace -e ioctl ./testptp -d /dev/ptp1 -P 1
>   ioctl(3, PTP_ENABLE_PPS, 0x1)           = -1 EOPNOTSUPP (Operation not supported)
> 
> [1]
>   $ grep -nrI ENOTSUPP .
>   ./igc/igc_ethtool.c:813:  return -ENOTSUPP;
>   ./igb/igb_ethtool.c:2284: return -ENOTSUPP;
>   ./ixgbe/ixgbe_ptp.c:644:  return -ENOTSUPP;
>   ./iavf/iavf_main.c:2966:           * if the error isn't -ENOTSUPP
> 
> [2]
>   #include <sys/ioctl.h>
>   #include <net/if.h>
>   #include <string.h>
>   #include <unistd.h>
>   #include <linux/sockios.h>
>   #include <linux/ethtool.h>
>   
>   int main() {
>       int sock = socket(AF_INET, SOCK_DGRAM, 0);
>       struct ethtool_gstrings gstrings = {};
>       struct ifreq ifr;
>       int ret;
>   
>       gstrings.cmd = ETHTOOL_GSTRINGS;
>       gstrings.string_set = ETH_SS_WOL_MODES;
>   
>       ifr.ifr_data = (char*)&gstrings;
>       strcpy(ifr.ifr_name, "enp4s0");
>   
>       ret = ioctl(sock, SIOCETHTOOL, &ifr);
>   
>       close(sock);
>       return ret;
>   }
> 
> Kohei Enju (3):
>    igb: use EOPNOTSUPP instead of ENOTSUPP in igb_get_sset_count()
>    igc: use EOPNOTSUPP instead of ENOTSUPP in
>      igc_ethtool_get_sset_count()
>    ixgbe: use EOPNOTSUPP instead of ENOTSUPP in
>      ixgbe_ptp_feature_enable()
> 
>   drivers/net/ethernet/intel/igb/igb_ethtool.c | 2 +-
>   drivers/net/ethernet/intel/igc/igc_ethtool.c | 2 +-
>   drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c | 2 +-
>   3 files changed, 3 insertions(+), 3 deletions(-)

Nice write-up and reproduction steps!

For the series:

Reviewed-by: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>

Thanks,
Dawid

