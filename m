Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E69647CB68A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Oct 2023 00:23:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7E65F60E17;
	Mon, 16 Oct 2023 22:23:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7E65F60E17
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697495033;
	bh=8Gm8sB/QAXWc/MrsfnTTsglhDKr10wdGD2Wd8aBFklg=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=68gbs6nBJbZqKDcnpPgY35jz+Cb40is8MplD9LbHs/LtX/q1GZN0q+UaxwZWqHmo/
	 vCOiYfUQsRKrqEvhyUOaverbchJF/lBwX2WVW1BGYxSGkrvKfjuqbDY3x1YmFI32bG
	 +LhbCP+wfnoQYED1mNwJOJspOvdz5Y0zVfA1htQbO/NKFndFfn0fCQ1xJn/dBYddkh
	 a2hwlbe26j38/8YjXiVI+UBHixatkhJG31ptaBZqASa6PGmgvyukOd+0GeKoZknJCk
	 Rv5ngTi1vyxcVbXEPZOJ0lPxlSo25CN7wnfHcog49z6s71y2cvB4mQ2Zg1Kp/ksjw7
	 an7Mmc9W6v3wA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q94-fImZAuut; Mon, 16 Oct 2023 22:23:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5836A60812;
	Mon, 16 Oct 2023 22:23:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5836A60812
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6A65A1BF5E0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 22:23:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4EA784161D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 22:23:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4EA784161D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dXNrCL5of3wv for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Oct 2023 22:23:46 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8F8BE4161A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 22:23:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8F8BE4161A
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 4A082611CF;
 Mon, 16 Oct 2023 22:23:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 50618C433C7;
 Mon, 16 Oct 2023 22:23:44 +0000 (UTC)
Date: Mon, 16 Oct 2023 15:23:43 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Takeru Hayasaka <hayatake396@gmail.com>
Message-ID: <20231016152343.1fc7c7be@kernel.org>
In-Reply-To: <20231012060115.107183-1-hayatake396@gmail.com>
References: <20231012060115.107183-1-hayatake396@gmail.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1697495024;
 bh=bRrY6z8Qu3DHxdJ9AWDgW2EEHgMVRnN3AxmhHve8YT0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=vDG8J87nBqFt4L6UK9UD0UURS6rn2Zw5xR5YguOBewzOHIpPmFmU7m2BWITb6nKtP
 1bUMsnYgmBJ4ihkMfm+CKSQdB3svbnsafQLeqhOFOT8aktvznQeOxoMXxDgMEtluL7
 /ItwqYCfITwZEq0Uie/0PtTtmP9FVsNExso+35t63ihM5YqgcXBMy5DV+4xCo7+VDv
 TPMkgErh0SFf1NgbrzXJ+Ix4F2S+8Vj/+cEVZJ8gJvDyeHUSUfZ2MG8WTaTulWAS4S
 EnMQJ/67pYltlKrmgWTsmdVmhsC1YnbjYbAx6+rDe3WByYmkhpCkwcVyU596eWuhgB
 UfsfQyYAwwdZA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=vDG8J87n
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ethtool: ice: Support for
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
Cc: Willem de Bruijn <willemdebruijn.kernel@gmail.com>, netdev@vger.kernel.org,
 osmocom-net-gprs@lists.osmocom.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Harald Welte <laforge@gnumonks.org>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>,
 Pablo Neira Ayuso <pablo@netfilter.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Thanks for the v2!

Adding Willem, Pablo, and Harald to CC (please CC them on future
versions).

On Thu, 12 Oct 2023 06:01:15 +0000 Takeru Hayasaka wrote:
> diff --git a/include/uapi/linux/ethtool.h b/include/uapi/linux/ethtool.h
> index f7fba0dc87e5..a2d4f2081cf3 100644
> --- a/include/uapi/linux/ethtool.h
> +++ b/include/uapi/linux/ethtool.h
> @@ -2011,6 +2011,18 @@ static inline int ethtool_validate_duplex(__u8 duplex)
>  #define	IPV4_FLOW	0x10	/* hash only */
>  #define	IPV6_FLOW	0x11	/* hash only */
>  #define	ETHER_FLOW	0x12	/* spec only (ether_spec) */
> +#define GTPU_V4_FLOW 0x13	/* hash only */
> +#define GTPU_V6_FLOW 0x14	/* hash only */
> +#define GTPC_V4_FLOW 0x15	/* hash only */
> +#define GTPC_V6_FLOW 0x16	/* hash only */
> +#define GTPC_TEID_V4_FLOW 0x17	/* hash only */
> +#define GTPC_TEID_V6_FLOW 0x18	/* hash only */
> +#define GTPU_EH_V4_FLOW 0x19	/* hash only */
> +#define GTPU_EH_V6_FLOW 0x20	/* hash only */

nit: please note that these are hex numbers,
     next value after 0x19 is 0x1a, not 0x20.

> +#define GTPU_UL_V4_FLOW 0x21	/* hash only */
> +#define GTPU_UL_V6_FLOW 0x22	/* hash only */
> +#define GTPU_DL_V4_FLOW 0x23	/* hash only */
> +#define GTPU_DL_V6_FLOW 0x24	/* hash only */
>  /* Flag to enable additional fields in struct ethtool_rx_flow_spec */
>  #define	FLOW_EXT	0x80000000
>  #define	FLOW_MAC_EXT	0x40000000

What gives me pause here is the number of flow sub-types we define
for GTP hashing.

My understanding of GTP is limited to what I just read on Wikipedia.

IIUC the GTPC vs GTPU distinction comes down to the UDP port on
which the protocol runs? Are the frames also different?

I'm guessing UL/DL are uplink/downlink but what's EH?

How do GTPU_V4_FLOW, GTPU_EH_V4_FLOW, GTPU_UL_V4_FLOW, and
GTPU_DL_V4_FLOW differ?

Key question is - are there reasonable use cases that you can think of
for enabling GTP hashing for each one of those bits individually or can
we combine some of them?

> @@ -2025,6 +2037,7 @@ static inline int ethtool_validate_duplex(__u8 duplex)
>  #define	RXH_IP_DST	(1 << 5)
>  #define	RXH_L4_B_0_1	(1 << 6) /* src port in case of TCP/UDP/SCTP */
>  #define	RXH_L4_B_2_3	(1 << 7) /* dst port in case of TCP/UDP/SCTP */
> +#define	RXH_GTP_TEID	(1 << 8) /* teid in case of GTP */
>  #define	RXH_DISCARD	(1 << 31)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
