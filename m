Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DE31667D737
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Jan 2023 22:05:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4569F41B58;
	Thu, 26 Jan 2023 21:05:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4569F41B58
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674767130;
	bh=VtEZIRpTTu+s09MSw6cSbN9xIH0E0n3yw8+XwbzrdUg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WwmhFwFd7gnPbgCh5syqAINlRWf6ca399tGwEHn5DdvIwP79bos9aHKueSeP/wr47
	 vGtQ9iH2chpAS+jvREj2mRE8xJALSa+HRcoftdFu1UFH1j43+TV+CjEN9QfLBs2n2E
	 HhSC7EzVMwOXupahEbrQ8jrzZB9DfC2bxcW3KxFMnmD2saHdFjbA7M3zwS0nsrDYFF
	 5dTUMEL1WE7k1Q120f0ICOu8nGYMzvOywmpMbpDBGaEVpKZeqHX2bStsgV2YVEfb8W
	 44MQrCau7PxV6Qi5QKact2IBKAWtHDUWjEA1BybYcf+LWyLCChDu//7yCBzMq+2I5r
	 LhjgWxyl65WiA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id amzg6GhRT300; Thu, 26 Jan 2023 21:05:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9906341B59;
	Thu, 26 Jan 2023 21:05:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9906341B59
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1854F1BF427
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 19:17:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F18E1402F7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 19:17:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F18E1402F7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QKMeGxHumDCN for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Jan 2023 19:17:57 +0000 (UTC)
X-Greylist: delayed 00:07:57 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1C9FF40140
Received: from mx23lb.world4you.com (mx23lb.world4you.com [81.19.149.133])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1C9FF40140
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 19:17:57 +0000 (UTC)
Received: from [88.117.49.184] (helo=[10.0.0.160])
 by mx23lb.world4you.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gerhard@engleder-embedded.com>)
 id 1pL7cf-0006HX-88; Thu, 26 Jan 2023 20:09:21 +0100
Message-ID: <28eedfd5-4444-112b-bfbc-1c7682385c88@engleder-embedded.com>
Date: Thu, 26 Jan 2023 20:09:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
From: Gerhard Engleder <gerhard@engleder-embedded.com>
To: Lorenzo Bianconi <lorenzo@kernel.org>, bpf@vger.kernel.org
References: <cover.1674606193.git.lorenzo@kernel.org>
 <c1171111f8af76da11331277b1e4a930c10f3c30.1674606197.git.lorenzo@kernel.org>
Content-Language: en-US
In-Reply-To: <c1171111f8af76da11331277b1e4a930c10f3c30.1674606197.git.lorenzo@kernel.org>
X-AV-Do-Run: Yes
X-Mailman-Approved-At: Thu, 26 Jan 2023 21:05:23 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=engleder-embedded.com; s=dkim11; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:References:Cc:To:Subject:From:MIME-Version:Date:Message-ID:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iI5nfSnVTsfzi2TlCeq92ugJV3Nwoh2wrjkWIusgImY=; b=G0ue/G7tl16TgJINez8QJijHtJ
 uKd+cqh62/qlUUSdzeAmHvdxGaeG0iUG8xoHEk9E2speQJ1GP/06dlwCf6vz2pEPhiF9hNYldKpOl
 vL0OhK295xa99LumXda6C2PudttuqpphE4gBWgutC0oI7M7whHtnblynlaGErkcOMDtU=;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=engleder-embedded.com
 header.i=@engleder-embedded.com header.a=rsa-sha256 header.s=dkim11
 header.b=G0ue/G7t
Subject: Re: [Intel-wired-lan] [PATCH v2 bpf-next 2/8] drivers: net: turn on
 XDP features
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
Cc: mst@redhat.com, vladimir.oltean@nxp.com, ast@kernel.org,
 edumazet@google.com, anthony.l.nguyen@intel.com, daniel@iogearbox.net,
 andrii@kernel.org, intel-wired-lan@lists.osuosl.org, simon.horman@corigine.com,
 kuba@kernel.org, pabeni@redhat.com, aelior@marvell.com, hawk@kernel.org,
 christophe.jaillet@wanadoo.fr, memxor@gmail.com, john@phrozen.org,
 bjorn@kernel.org, magnus.karlsson@intel.com, leon@kernel.org,
 netdev@vger.kernel.org, toke@redhat.com, martin.lau@linux.dev,
 ecree.xilinx@gmail.com, alardam@gmail.com, gospo@broadcom.com,
 saeedm@nvidia.com, davem@davemloft.net, nbd@nbd.name
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 25.01.23 01:33, Lorenzo Bianconi wrote:
> From: Marek Majtyka <alardam@gmail.com>
> 
> A summary of the flags being set for various drivers is given below.
> Note that XDP_F_REDIRECT_TARGET and XDP_F_FRAG_TARGET are features
> that can be turned off and on at runtime. This means that these flags
> may be set and unset under RTNL lock protection by the driver. Hence,
> READ_ONCE must be used by code loading the flag value.
> 
> Also, these flags are not used for synchronization against the availability
> of XDP resources on a device. It is merely a hint, and hence the read
> may race with the actual teardown of XDP resources on the device. This
> may change in the future, e.g. operations taking a reference on the XDP
> resources of the driver, and in turn inhibiting turning off this flag.
> However, for now, it can only be used as a hint to check whether device
> supports becoming a redirection target.
> 
> Turn 'hw-offload' feature flag on for:
>   - netronome (nfp)
>   - netdevsim.
> 
> Turn 'native' and 'zerocopy' features flags on for:
>   - intel (i40e, ice, ixgbe, igc)
>   - mellanox (mlx5).
>   - stmmac
> 
> Turn 'native' features flags on for:
>   - amazon (ena)
>   - broadcom (bnxt)
>   - freescale (dpaa, dpaa2, enetc)
>   - funeth
>   - intel (igb)
>   - marvell (mvneta, mvpp2, octeontx2)
>   - mellanox (mlx4)
>   - qlogic (qede)
>   - sfc
>   - socionext (netsec)
>   - ti (cpsw)
>   - tap
>   - veth
>   - xen
>   - virtio_net.
> 
> Turn 'basic' (tx, pass, aborted and drop) features flags on for:
>   - netronome (nfp)
>   - cavium (thunder)
>   - hyperv.
> 
> Turn 'redirect_target' feature flag on for:
>   - amanzon (ena)
>   - broadcom (bnxt)
>   - freescale (dpaa, dpaa2)
>   - intel (i40e, ice, igb, ixgbe)
>   - ti (cpsw)
>   - marvell (mvneta, mvpp2)
>   - sfc
>   - socionext (netsec)
>   - qlogic (qede)
>   - mellanox (mlx5)
>   - tap
>   - veth
>   - virtio_net
>   - xen

XDP support for tsnep was merged to net-next last week. So this driver
cannot get XDP feature support in bpf-next as it is not there currently.
Should I add these flags with a fix afterwards? Or would net-next be the
better target for this patch series?

Gerhard
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
