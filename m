Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C41B3968E8F
	for <lists+intel-wired-lan@lfdr.de>; Mon,  2 Sep 2024 21:55:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6F61B80EB9;
	Mon,  2 Sep 2024 19:55:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lc7veOntxj4y; Mon,  2 Sep 2024 19:55:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 71E8880EAE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725306950;
	bh=GhQ01iJSLK8ItBVKt2WxUw/tblsKhoLVEspih28gtqc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wiHXDGOkWbKmRbD5bzyUhNQd38T6APCtDGYg7FROU9DNPyTWxQ+hVmiuJGiTAUCmU
	 WwctMyRp5APnAN4tlf1Akd0QvaMa+cET956pS1yAxrNwL7r6nha72YgjOIkHMaNpVS
	 aJP56bUUIuN7Z5zkiBhCRcSBthouV2w3Oz42J4s7Vuxbmo/46BhtHs1VeQZrehksAa
	 MhtAqVUzPV7u8XFOieQwa27233tEzYtt9F3BabU6ywdEv7F7DlAPxCNdHVfbbUinmc
	 uhFV6/ogSXCwFPacwKTiE0CqMdZseaEwwbeI/U/bKKdoSkfzktuLZFLTY9EOaRZhCB
	 7UsCmsqb+u9vw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 71E8880EAE;
	Mon,  2 Sep 2024 19:55:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 48D021BF20B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Sep 2024 19:55:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3348D80EAB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Sep 2024 19:55:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fk0ktyL6w5Am for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Sep 2024 19:55:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=44.202.169.35;
 helo=omta036.useast.a.cloudfilter.net; envelope-from=gustavo@embeddedor.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F37EB80EA8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F37EB80EA8
Received: from omta036.useast.a.cloudfilter.net
 (omta036.useast.a.cloudfilter.net [44.202.169.35])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F37EB80EA8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Sep 2024 19:55:46 +0000 (UTC)
Received: from eig-obgw-6003a.ext.cloudfilter.net ([10.0.30.151])
 by cmsmtp with ESMTPS
 id l12isFM2HiA19lD9NsDpgc; Mon, 02 Sep 2024 19:55:45 +0000
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with ESMTPS
 id lD9MshUk6V2ivlD9MsLV2S; Mon, 02 Sep 2024 19:55:44 +0000
X-Authority-Analysis: v=2.4 cv=OLns3jaB c=1 sm=1 tr=0 ts=66d61840
 a=1YbLdUo/zbTtOZ3uB5T3HA==:117 a=frY+GlAHrI6frpeK1MvySw==:17
 a=IkcTkHD0fZMA:10 a=EaEq8P2WXUwA:10 a=7T7KSl7uo7wA:10 a=VwQbUJbxAAAA:8
 a=62GdtKjr0Ia7E08erwkA:9 a=QEXdDO2ut3YA:10 a=Xt_RvD8W3m28Mn_h3AK8:22
Received: from [201.172.173.139] (port=56798 helo=[192.168.15.5])
 by gator4166.hostgator.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.96.2)
 (envelope-from <gustavo@embeddedor.com>) id 1slD9L-0048xZ-0r;
 Mon, 02 Sep 2024 14:55:43 -0500
Message-ID: <88384607-4fcf-4ab1-8edf-9258df0bbf3c@embeddedor.com>
Date: Mon, 2 Sep 2024 13:55:41 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>
References: <20240902-igc-ss-puts-v1-1-c66a73b532c7@kernel.org>
Content-Language: en-US
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
In-Reply-To: <20240902-igc-ss-puts-v1-1-c66a73b532c7@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.osuosl.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 201.172.173.139
X-Source-L: No
X-Exim-ID: 1slD9L-0048xZ-0r
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.15.5]) [201.172.173.139]:56798
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 7
X-Org: HG=hgshared;ORG=hostgator;
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfPzI1JtD9Lu4TI4ROiTMJb6LfLxRJhvXsz7VZrSfX1oonACzY9eLODpoenBFsTLiY642hW9dHhO6My+4Fe6q8ds+DUb0rqugyaESWaXywr0Wb1zt7kKc
 d8/oYMdbZ52tJIdc/ZSdr4n8vJ1Qo/6Tw5GMxohigQQ7r4mZLugE/zK+kbPOPOEHXTS0nzMY/boG6wOLx91/Rl816jYSIo7LPb+T6OyXrHQuIIxH/BRjqCPi
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=embeddedor.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GhQ01iJSLK8ItBVKt2WxUw/tblsKhoLVEspih28gtqc=; b=bRny1xjMpunawdNKG0yX95lgsl
 jOo3JpFSGkfAHDsF7pyEkh++AQkoIVnB7whs6Cgr+9fQkull+32tyqq+3e2v7k/ro7YkdiPhKPGUO
 QAsPpkA0vBW5aFA8uPjx/kgQuluZ8jN999AiCS4htzyW2f71Ha188kwLBgpr3AoOwPazJNdNj6gfP
 LqxneShjYOBCcqPPvieO8yOJaNdO6HlhwgDTrk5ZysrDonCs7STjOVSnNjvtWjDSSa4BHHIc0+bZx
 NFpe+O3TRRgQFYNwSvs6xen8gzarK2H24b8v+xem8E+Th/4vnogFqOeHyubchzOiqv5CTzOmNh4Ok
 FpbioynA==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=embeddedor.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=embeddedor.com header.i=@embeddedor.com
 header.a=rsa-sha256 header.s=default header.b=bRny1xjM
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: Consistently use
 ethtool_puts() to copy strings
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
Cc: netdev@vger.kernel.org, llvm@lists.linux.dev,
 Nick Desaulniers <ndesaulniers@google.com>,
 Nathan Chancellor <nathan@kernel.org>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, Bill Wendling <morbo@google.com>,
 Justin Stitt <justinstitt@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 02/09/24 06:46, Simon Horman wrote:
> ethtool_puts() is the preferred method for copying ethtool strings.
> And ethtool_puts() is already used to copy ethtool strings in
> igc_ethtool_get_strings(). With this patch igc_ethtool_get_strings()
> uses it for all such cases.
> 
> In general, the compiler can't use fortification to verify that the
> destination buffer isn't over-run when the destination is the first
> element of an array, and more than one element of the array is to be
> written by memcpy().
> 
> For the ETH_SS_PRIV_FLAGS the problem doesn't manifest as there is only
> one element in the igc_priv_flags_strings array.
> 
> In the ETH_SS_TEST case, there is more than one element of
> igc_gstrings_test, and from the compiler's perspective, that element is
> overrun. In practice it does not overrun the overall size of the array,
> but it is nice to use tooling to help us where possible. In this case
> the problem is flagged as follows.
> 
> Flagged by clang-18 as:
> 
> In file included from drivers/net/ethernet/intel/igc/igc_ethtool.c:5:
> In file included from ./include/linux/if_vlan.h:10:
> In file included from ./include/linux/netdevice.h:24:
> In file included from ./include/linux/timer.h:6:
> In file included from ./include/linux/ktime.h:25:
> In file included from ./include/linux/jiffies.h:10:
> In file included from ./include/linux/time.h:60:
> In file included from ./include/linux/time32.h:13:
> In file included from ./include/linux/timex.h:67:
> In file included from ./arch/x86/include/asm/timex.h:5:
> In file included from ./arch/x86/include/asm/processor.h:19:
> In file included from ./arch/x86/include/asm/cpuid.h:62:
> In file included from ./arch/x86/include/asm/paravirt.h:21:
> In file included from ./include/linux/cpumask.h:12:
> In file included from ./include/linux/bitmap.h:13:
> In file included from ./include/linux/string.h:374:
> .../fortify-string.h:580:4: warning: call to '__read_overflow2_field' declared with 'warning' attribute: detected read beyond size of field (2nd parameter); maybe use struct_group()? [-Wattribute-warning]
> 
> And Smatch as:
> 
> .../igc_ethtool.c:771 igc_ethtool_get_strings() error: __builtin_memcpy() '*igc_gstrings_test' too small (32 vs 160)
> 
> Curiously, not flagged by gcc-14.
> 
> Compile tested only.
> 
> Signed-off-by: Simon Horman <horms@kernel.org>
> ---
>   drivers/net/ethernet/intel/igc/igc_ethtool.c | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> index 457b5d7f1610..ccace77c6c2d 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> @@ -768,8 +768,8 @@ static void igc_ethtool_get_strings(struct net_device *netdev, u32 stringset,
>   
>   	switch (stringset) {
>   	case ETH_SS_TEST:
> -		memcpy(data, *igc_gstrings_test,
> -		       IGC_TEST_LEN * ETH_GSTRING_LEN);

I think this problem should be solved if we use the array's address,
which in this case is `igc_gstrings_test`, instead of the address of
the first row. So, the above should look as follows:

memcpy(data, igc_gstrings_test, IGC_TEST_LEN * ETH_GSTRING_LEN);

> +		for (i = 0; i < IGC_TEST_LEN; i++)
> +			ethtool_puts(&p, igc_gstrings_test[i]);
>   		break;
>   	case ETH_SS_STATS:
>   		for (i = 0; i < IGC_GLOBAL_STATS_LEN; i++)
> @@ -791,8 +791,8 @@ static void igc_ethtool_get_strings(struct net_device *netdev, u32 stringset,
>   		/* BUG_ON(p - data != IGC_STATS_LEN * ETH_GSTRING_LEN); */
>   		break;
>   	case ETH_SS_PRIV_FLAGS:
> -		memcpy(data, igc_priv_flags_strings,
> -		       IGC_PRIV_FLAGS_STR_LEN * ETH_GSTRING_LEN);

In this case, the code is effectively reading from the array's address.

--
Gustavo
