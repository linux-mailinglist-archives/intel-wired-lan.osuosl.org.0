Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BC8C751D2D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Jul 2023 11:29:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EE57A6132D;
	Thu, 13 Jul 2023 09:29:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EE57A6132D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689240585;
	bh=vCwigmZp1+5eW7ZoUj6dbAeZlslAK1h0Y6TFhgi0+PI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cvLrEI5UcQ8kwlJWrqU4BRTqmXeuiGGBuRFWZTuXKNqVey2BzHUF4CyO0K6cq0C2x
	 ujuBkOw++uhH141ikkhVTHlktrf4Frt6xcHbEN8hWf/uOfvAh4uHpyDVssGz4cFF0+
	 aXewLMfM9B5rVmc3wVMgGx4qoaVLKCfHUO92gJyPhrkST6zPq5Dooyme0WT0M2+8O2
	 I53XmmtaJGNn0YGqlLrUlhiBHWmLcuLpPSR3FeNpt5QvRgzfS7WFuC88wx5ry9W83A
	 QLajTiWvdK+8CXzAh6/w8p5GS7cD8KNIflDgnixJwN4DsiCZx7JIBMF00G9JYqPIJK
	 zhkz0a+GMve8g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aQiJHeS0kluA; Thu, 13 Jul 2023 09:29:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B32EC60B33;
	Thu, 13 Jul 2023 09:29:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B32EC60B33
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 717911BF393
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jul 2023 09:29:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 55D0D60B33
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jul 2023 09:29:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 55D0D60B33
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o7Fc2Sgls-Zg for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Jul 2023 09:29:37 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6BB9D60A8A
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12on2096.outbound.protection.outlook.com [40.107.243.96])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6BB9D60A8A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jul 2023 09:29:37 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m4NGJzvTp8W9EY8NUed6jQ8Ny2LgJRPbwXpVU8TUBUQtMExvEF4/L8XrdJ/Zz2M9hZDAhiOvu42dRbuM6wcQQ0M9uMbJW7tSQ25GQPWoBQPUTzGd3tGJihKbHP8cJ2ah73D/JzqpJvHC2o9398UcPsOIL+P7iKYlmGkjKbh+4UtQjZK5KvED/j4H0RojH+Ww4A4vZuRtE6QX+qWy87cJZCVIBBjNPdeo9gN85I/VdjU04MQtqcsjs6RonGZla+GpNM6WZV240ZXLKPQRhiziIDEJHYYEretHKKahTnSROI+fKhPXDeOuUEQDezIXiFcyNRDe5wL0Htk+tP9YytFFWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HQp/W+sjNIrW55okSWjG5cTKL331rHuUmbLUaLOCJpQ=;
 b=USNMlpOSegC+FpEYenPwDcwh7K+zZaHj8DZdvlkkCVc49W5pQHaQ2ADG6Qd4/EfImwtZfm0PLqpyhLspJBo8M6gy38kzeCIepvGMVCWLfdEpb2nK1zOa88RKCHszlSpi23M5ti0msczcWyfhlzkPY+eJa0+ZYdo9S46HpApoorSfmE8ntf7elpZeZ3K2hGVc26XTVs9Waly/CvSzWWPlJD4zLjJg62WdUzVGvfiNJgJ3kuODOWWBGkafly50lxUSWL2L6rMQr28qHGwaO7dFqgzIQeuLnWWHEAROLVR+nvifKFnilznxJ3Xlem9HXzR5XVY+uEK+I22NS2maIYi+zg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by SN4PR13MB5812.namprd13.prod.outlook.com (2603:10b6:806:21c::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.26; Thu, 13 Jul
 2023 09:29:33 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::d23a:8c12:d561:470]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::d23a:8c12:d561:470%6]) with mapi id 15.20.6588.024; Thu, 13 Jul 2023
 09:29:33 +0000
Date: Thu, 13 Jul 2023 10:29:25 +0100
From: Simon Horman <simon.horman@corigine.com>
To: Sriram Yagnaraman <sriram.yagnaraman@est.tech>
Message-ID: <ZK/D9c0TYzH30wqf@corigine.com>
References: <20230711114705.22428-1-sriram.yagnaraman@est.tech>
 <20230711114705.22428-4-sriram.yagnaraman@est.tech>
Content-Disposition: inline
In-Reply-To: <20230711114705.22428-4-sriram.yagnaraman@est.tech>
X-ClientProxiedBy: LO4P265CA0171.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:312::17) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|SN4PR13MB5812:EE_
X-MS-Office365-Filtering-Correlation-Id: f05163f7-d671-4a44-c6dc-08db8383aa58
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gkXmFTYKuHTgVXzctnTYdKUMuT2Pvh3AP7SOfUrKrjLLPCOT7TGu1KTO1eIqHfVW26qD6V0wvNQyP8ljdEN+thMLEnvrAxRdk3fj5WUKMEGcvt8/8950XQk0H3u4SuSPoJLEAdjnyp8tygy+qbAoLXfvs0MMIIIS7n+B1E3F1KRWk0oUIdCO23dF0DT9CyDp5p2NN4aj7qBL0Dx1vNErbIpFTVHsXfkeyN4+AN0ddu+QNXBm/bhKV0fRSmA5FEdvAKvxVophZMcxedix+sNmK3pOCvwQ5skv6CdIp4hahuHiKhzXYz8HJZu1MQuqnt7l6uZZvRJ5GHhYv3xnmafzi/Zr8JmQ99NASVm/6vBABXNZ+mpiXPobIl6QaPPYNNbvnVMfYoeTOaQhbO4BodjKtdk8kXVoNVXFOZ6bevSu6b+dVG6UPASxdY+rtsxW5JXT9A4ZhoMqviemS+50FSITpqMk9zeMNlkZltys7kztMFsnDiO8GGEgFasJj0JyH4eEUF9dndizRH9jtuNT0aakfp6dpYWBteXOegRPC4xRnQADQJ20anViyozrHoTi0xHcdrYtsUAh8oeYu5/CFelESpLzYcxkjqIqV/Spwa4beXY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(376002)(396003)(39840400004)(346002)(366004)(136003)(451199021)(2616005)(2906002)(83380400001)(36756003)(86362001)(38100700002)(41300700001)(6916009)(6486002)(6512007)(4326008)(316002)(5660300002)(8676002)(8936002)(478600001)(66476007)(66556008)(6666004)(54906003)(66946007)(44832011)(186003)(6506007)(26005)(7416002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?DzIIpffkCoa4SX4sOBAUexqON5DdmMLdbIs0l2meT2mz9Wo2KCWoYBM57ArW?=
 =?us-ascii?Q?6tK8XMNuA+GoPSwMLSNwMMfMUYxiaCgI59fd+b8amgXKhzAalhMKWMczAsnQ?=
 =?us-ascii?Q?J108fmWnWESoNn04PAQQDijjANOS1Ks3bQRQBe85x8mf86YJ/M1KW7YF9q8W?=
 =?us-ascii?Q?Ik/kHPsuwyG67SPCQVFrWzTfatKzqGAbUuvgEtEyHWfHTSigkKO5ebUpAPYZ?=
 =?us-ascii?Q?4HYN7mHABb50+GUHqRexcu2MQZN9J7i9amb882M8MIWPSMPeMMET10pXI1rT?=
 =?us-ascii?Q?QPV4sUcOoU0xjDqgfqgPOe1rXKR6k26qBnw4+f4sT/3cUMDcbh02qexKQDuU?=
 =?us-ascii?Q?qa7zH4Es5zaTAigabWoL1lYCu6F/+OTY8iP23iinI8GObMJic6S6YQFZEkD9?=
 =?us-ascii?Q?cvbJb2TA/O7Uz9/yMTiI24/YfubvOKqafErl3aUiXsLW44r+YSTIWQBbL1mG?=
 =?us-ascii?Q?/8uf7NwR/KXX9ro0KHNfmjkagzqzy1xmZClOq84xKuWtUeeqSstn5N+nJw1s?=
 =?us-ascii?Q?PaP7j0lMHgNtScW0aDH99kwKZ0noOv9OFQNf7IutiaZecP+GWxDVgqSUT/Aa?=
 =?us-ascii?Q?YR9clDqx4h9MWAvAqVLeT2Vaz01t6RG7ICrC62ZVvuqlsu+3uGzZPD/QWuVr?=
 =?us-ascii?Q?SVyEz2ew54YSbPw/BtjzLg723rGA2nCuhaoOY2S8QW4hrj6OZVikQ2b/CeId?=
 =?us-ascii?Q?IQ/MtFHZK2GSRBJuUkT+cv5VSS3lbL48Wqv+d6rd8z7jMPzTwl50uVcxrMJd?=
 =?us-ascii?Q?GDxB9zdRYPmvkfr3BGYK3nHjHnZy/3Kx5N5UVI5EFk9K+OF1ogeu3PRynXWa?=
 =?us-ascii?Q?/dRFfHB9QlxZEZkaKCMdrt98vSQnnl9t4JsNijyUthJnsYoCgABgrXOo+YGx?=
 =?us-ascii?Q?J0hqTwjOYVDRhLBHOSuQEXFEKlPP4X7E1ewM/RxyG7VCIIMK+ZqYK/KbRCiF?=
 =?us-ascii?Q?Y+7BHdzUQzhUrUpJuUj7KPEUfvqpFR0XnLpDuNDPIrSoLbJIRWbuWOKJRC2D?=
 =?us-ascii?Q?T5uJ8GjKIjtAqNLPZ0o7fF7gXuC5u/b0zvUZK88Cs0wZRTS3/uwyZ64mDV/R?=
 =?us-ascii?Q?q9vrREntJ/VGTkkabTqXsWkastKi3AZMCTs4I5oPOrN2QRvFP7LPflzl/Hom?=
 =?us-ascii?Q?iR5fx4HbaA5d8c0ICsEFbZEC9FhVR40av9QkrtdUomZfr1KczSwWwunCCnW8?=
 =?us-ascii?Q?oo+sfoodzp4qAg7J7dN2Yq+4phOwAr/EHbMapNWtYSrFv7MHDeX+iIKLXBOB?=
 =?us-ascii?Q?Ii6WJatMRBU/utVsNukuxqKO7aspt4uojhcLc7bg7S22wxWUf+QTh70hco02?=
 =?us-ascii?Q?dtWXPBpwKR7NQjuZsH+3J6i8Bc19zSksZGIMcFbuzktJvXQL4evW7edVeH8S?=
 =?us-ascii?Q?dKYWgytHeKxOhZAZndu3JZNlKdzB7uMbzLOqaM8InfQFd6GGqF3+9yCJGImT?=
 =?us-ascii?Q?+JD5X+orjv9D6awew/WCaB0UtaB3/N3VSdIN88oe2k6vQ2K9Kaew7SLzdCQh?=
 =?us-ascii?Q?ki6GK8AmEF9Qbp89APj/PyhAVskp3D+kYIQ9ur4XRfNIeVYXnxgVtJSOeLP+?=
 =?us-ascii?Q?H2TulmmVQd7NUc0sRc7ZG47MjVisFIE96eiBov2totKM/Zk0tMeLG1Du3ppA?=
 =?us-ascii?Q?vQ=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f05163f7-d671-4a44-c6dc-08db8383aa58
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jul 2023 09:29:33.0543 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tlHS1aY6gi20c1uu3lj5yuSnIdKmYq9g6Kr1OsV4KROVZjJZ4heJkeuTmIz2jyLufZyMcMbLIFzQDcxsDkQ8d7ARx5XNQReobENR0aFeY+o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN4PR13MB5812
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HQp/W+sjNIrW55okSWjG5cTKL331rHuUmbLUaLOCJpQ=;
 b=VFV84iZNSHRMT1v0B80euIYOGN4eBwAvhngglfKyUUuO9eG9Uvg9jRlFJAfhSrPTTUXuFLgTaiqscjdVPhrUgG1CufUIjoLAOblPtBI9AHh24SoYv4LiHa4kmIZoGdKosb0QMVu358dWmT9TejQZ1GwLYdzTBd+t3Un0kjQUya4=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=VFV84iZN
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 3/4] igb: add AF_XDP
 zero-copy Rx support
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 John Fastabend <john.fastabend@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Alexei Starovoitov <ast@kernel.org>,
 =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.org, Paolo Abeni <pabeni@redhat.com>,
 "David S . Miller" <davem@davemloft.net>,
 Magnus Karlsson <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jul 11, 2023 at 01:47:04PM +0200, Sriram Yagnaraman wrote:
> Add support for AF_XDP zero-copy receive path.
> 
> When AF_XDP zero-copy is enabled, the rx buffers are allocated from the
> xsk buff pool using igb_alloc_rx_buffers_zc.
> 
> Use xsk_pool_get_rx_frame_size to set SRRCTL rx buf size when zero-copy
> is enabled.
> 
> Signed-off-by: Sriram Yagnaraman <sriram.yagnaraman@est.tech>

Hi Sriram,

> +bool igb_alloc_rx_buffers_zc(struct igb_ring *rx_ring, u16 count)
> +{
> +	union e1000_adv_rx_desc *rx_desc;
> +	u32 nb_buffs_extra = 0, nb_buffs;
> +	u16 ntu = rx_ring->next_to_use;
> +	u16 total_count = count;
> +	struct xdp_buff **xdp;
> +
> +	rx_desc = IGB_RX_DESC(rx_ring, ntu);
> +	xdp = &rx_ring->rx_buffer_info_zc[ntu];
> +
> +	if (ntu + count >= rx_ring->count) {
> +		nb_buffs_extra = igb_fill_rx_descs(rx_ring->xsk_pool, xdp,
> +						   rx_desc,
> +						   rx_ring->count - ntu);
> +		if (nb_buffs_extra != rx_ring->count - ntu) {
> +			ntu += nb_buffs_extra;
> +			goto exit;

nb_buffs is uninitialised here...

> +		}
> +		rx_desc = IGB_RX_DESC(rx_ring, 0);
> +		xdp = rx_ring->rx_buffer_info_zc;
> +		ntu = 0;
> +		count -= nb_buffs_extra;
> +	}
> +
> +	nb_buffs = igb_fill_rx_descs(rx_ring->xsk_pool, xdp, rx_desc, count);
> +	ntu += nb_buffs;
> +	if (ntu == rx_ring->count)
> +		ntu = 0;
> +
> +	/* clear the length for the next_to_use descriptor */
> +	rx_desc = IGB_RX_DESC(rx_ring, ntu);
> +	rx_desc->wb.upper.length = 0;
> +
> +exit:
> +	if (rx_ring->next_to_use != ntu) {
> +		rx_ring->next_to_use = ntu;
> +
> +		/* Force memory writes to complete before letting h/w
> +		 * know there are new descriptors to fetch.  (Only
> +		 * applicable for weak-ordered memory model archs,
> +		 * such as IA-64).
> +		 */
> +		wmb();
> +		writel(ntu, rx_ring->tail);
> +	}
> +
> +	return total_count == (nb_buffs + nb_buffs_extra);

But it is used here.

...

The following will tell you about this problem:
- Smatch
- clang-16 W=1 build [-Wsometimes-uninitialized]
- gcc-12 build with -Wmaybe-uninitialized
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
