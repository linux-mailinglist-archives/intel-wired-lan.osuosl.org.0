Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E39A8AA3CC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Apr 2024 22:08:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7BB3E40143;
	Thu, 18 Apr 2024 20:08:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ugcYOKph7m9x; Thu, 18 Apr 2024 20:08:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 72608407B9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713470906;
	bh=PS6Ibd99oWeuxKP8HL7UbayaaeuakWU6Z3LMyY5LVKQ=;
	h=References:From:To:Date:In-reply-to:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=J+fNpxyO4NsQ0cCO7rtdnLnHXqeF35l0oZFXFrlkqqu1x5+WL3e1ksw/DBA6l2pTz
	 uotRHnf5AtQFwe3n6JZ7dSt6TIgxdqWzAJie2XHRXbT3lAFk1mNxapfK8UBGGFLLxK
	 05KzUj1OjaijWhANlcEt1dhu09IFrRQcR1hghNQyfyHOGf55guJyyg/6uUXwRAELL3
	 VBRIWwz6n/VhIL8uteWcQ+MGrg/qVfTJ/RxCXy01yCMGSCEE0ZY5HlFmZOuAtfAps3
	 wFDejneUeXEWin2SJTTSIKr7J+OF1Y+arCFu70wB8ryU+AOfcV6Epv8XojIaHX8mlE
	 VxqtFsuRGDu8g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 72608407B9;
	Thu, 18 Apr 2024 20:08:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A8F771BF33E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 19:26:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 94C5240391
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 19:26:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZhROZyndGOdz for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Apr 2024 19:26:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.237.66;
 helo=nam12-bn8-obe.outbound.protection.outlook.com;
 envelope-from=rrameshbabu@nvidia.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 696E44031F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 696E44031F
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12on2066.outbound.protection.outlook.com [40.107.237.66])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 696E44031F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 19:26:51 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V+KgaTeIW91m3brFrRANQmR4FKy1CYy+friyswxOtgKP5dXsg0RvF7ShuuJwZ7IBgJeokoezZHVKxPfC30uNQhfiHsoSwiF2VXT5eXPtw9ZzVOokTrMoYqs0ja8B590d+Krg0ZMlTuCtk8WtK6ORzz3LUG5cF1AStx9VQ72/rMvsvtecpfcAoU9FwIJYzlHPhQ1gFAvZ17Bcc3wsapTnGTdylp+WXwxuVuxGeKv+9FYPbFH/DJkbxsC6AWAP56p8kWLvbHCKe0pCRmP5NCWtIp3jqY7EB24oJkLBIL00EOKjg5907f+Q75IDCZK7F8d0xuB9cLOt17QcVILDrVljVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PS6Ibd99oWeuxKP8HL7UbayaaeuakWU6Z3LMyY5LVKQ=;
 b=hNXH91nWPMfpxgEAorr+cnVOGsyQzuefM8+vnPReYUo62q5Gd0rSb2VpYYn5AjftGAa6uxIXdlkTJs+AOp/CyqjYhZ7TaxFYTExVJ1yXuQ7BLT+52N4SogCpnOPo2d/S1fgduABG8FI18RoYgamH3iK5tVJVxLs4D3IyuNi8H0cH3bT/DQPY7O3JqPx0dbprU5+Xp7rAU/7ypOpygC8WDLj24F222o4xkp3hH5dKPBj+WXDk62VDtfRtZ8bGWIPFntrXY+4YwP4bs8jpI/tediVRf1pOXzW76hcAZos7qkZDNbQlDbRnFKtPaQB08luEVjaIWVpN/TS+MH6GTlrh2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from BYAPR12MB2743.namprd12.prod.outlook.com (2603:10b6:a03:61::28)
 by MN2PR12MB4375.namprd12.prod.outlook.com (2603:10b6:208:24f::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.50; Thu, 18 Apr
 2024 19:26:47 +0000
Received: from BYAPR12MB2743.namprd12.prod.outlook.com
 ([fe80::3ec0:1215:f4ed:9535]) by BYAPR12MB2743.namprd12.prod.outlook.com
 ([fe80::3ec0:1215:f4ed:9535%4]) with mapi id 15.20.7452.049; Thu, 18 Apr 2024
 19:26:47 +0000
References: <20240418052500.50678-1-mateusz.polchlopek@intel.com>
 <20240418052500.50678-6-mateusz.polchlopek@intel.com>
User-agent: mu4e 1.10.8; emacs 28.2
From: Rahul Rameshbabu <rrameshbabu@nvidia.com>
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Date: Thu, 18 Apr 2024 12:16:43 -0700
In-reply-to: <20240418052500.50678-6-mateusz.polchlopek@intel.com>
Message-ID: <87wmoueakp.fsf@nvidia.com>
Content-Type: text/plain
X-ClientProxiedBy: BYAPR07CA0019.namprd07.prod.outlook.com
 (2603:10b6:a02:bc::32) To BYAPR12MB2743.namprd12.prod.outlook.com
 (2603:10b6:a03:61::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR12MB2743:EE_|MN2PR12MB4375:EE_
X-MS-Office365-Filtering-Correlation-Id: 0938e641-fbbb-4147-468e-08dc5fdd7d3e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: fV+pvEiVInIv9OdvAGlvm7X+8OP9wI2x0qHVF5hmG7GEb8AYdTRTqCWAWNMCZaBLhKxNDZ/QJz8dVOVT2zlBXYv+wMTQwicCMZw8hfVkHtGrWi1Nqy46vRFuChAVDXWZYf3C2tfv3meyA2fOjtWtRbJYammtrOxShb2D3jx43IR0KkmogSISDhxUM58ZXjTo9oQMrKteQ4Cf+x94eAL4/AhbcswRbTudvoHWtRScfzO8Bu1RgQTRQ6WO2pimTVgTe1tdA4ftPWT3RlnkGKmT/I+FwbKBnVvNjc8Faotb5k0g50lqqa/vcpoYnnyKPQ4mm0i+8gWLE88RyptgfN4Vtgso5PelC+2WVJr9Yn2mEy6t+CHxdGxgQtlDviCGZvrdde+ew0hsWXqYJ5XUnO94s82PlF89Nd+zIj9+wgdQiqxuPdaBhitBEk6kRLTLiWj2IbdWew2Bh1x8o2Aa60tEXuUON5c1wuJgA0fKeaGDWev5yXwJNq93UR+9Kc1g7UjLRZ71cGjL+b4+R4Di12pCpyodq7eF/BjHx54vxxoeMp2VK6SHZpdR4mdS5WpVOrJDOWmxVOjLZEcPz1L0/bIuuaPaRtTZO3nZzf5GDzBlQh1q5Q8UQcGibhug5QrUZDbxpcxTJJpVyxzTp5lBoogCZPegf35vmnqxRljoOMsH/Uo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR12MB2743.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?tycnEKGrJ4JhzwPN+DAZ2VjWBxqdBuAcF038apVuQweuG+Ax26pwTQxSbKpf?=
 =?us-ascii?Q?0NcDVKdCWIWebMJcGafV9NWcEEXVLmkSTFwr0NI5txpjpuTm7pAHAvsfSxqn?=
 =?us-ascii?Q?ZnwAqnShDTKnTmKFKEJrDUk538pi/fopMa7S71eRuDvdwAfb8ilh+uwMKz1G?=
 =?us-ascii?Q?V5dzdwF9BnhWEmEwE0DNWd9/m36denk6VeZ0ftWDuZrUJ99MhqQ3rh/6yK6f?=
 =?us-ascii?Q?Iwb5WLD2bQgLmXfLQsg5M9kcPH5mybufQLlcnudjvrbV7yUpfhylksnQ25ZN?=
 =?us-ascii?Q?10XSXwv+NK5ts0EId9N5OIaw4bJR3z3SLsYWDWqAUPB1ZvD1zI/+DTuQsvj2?=
 =?us-ascii?Q?gpnViW2T35W7ectX2fkqoc+yk31JGb3SeZwJDG45nU7fzd+FPrKyiIlnSeM3?=
 =?us-ascii?Q?llyUl/8RIVrXIuft19wfqfl8Z8cNNrSmCqojopjJFDVLF++IqpSDN0f3tEyF?=
 =?us-ascii?Q?k1o6Ird3+oplBTpRZRS+W1beiLuUBiRYewNbqXyhi/UX1NYr9ImDSM+MVFzb?=
 =?us-ascii?Q?7vMZ+tzCPSow4C+cwmpAWyYQpmWBkGEC5wOSg8k6rF/VXAhBpmbL3ZOBvZDj?=
 =?us-ascii?Q?SLdOXRePmsAgZCa6R7OqnaoFF2CHEjr8f6+WlXsd5VTL67HXZTiDffFVavAi?=
 =?us-ascii?Q?65ECCFAut/MLPGGc2RhfvQoJYrONo5FZpfDU5ZVz0lHeSw8AQlixSPviraha?=
 =?us-ascii?Q?QxNgXOJiZlOcLbXw8SAAVQu4tJslmIZhpHAYhRtGx/SjxT+8jLPDS0a23Q8O?=
 =?us-ascii?Q?DeEO6lT7NZOVZiSm4GKgs1LcJ43+t/62i/lSN0UWHJqiyp/9PLvzCqmSlFeW?=
 =?us-ascii?Q?uR4/moqq0gMSBLWSybWlp95u0IZA9IkA/eVFFcrRrPxXJ/kZf0g8ZVa8dFfY?=
 =?us-ascii?Q?YbQBA7+ovtwkM4TK4bBmaap0etQoNNV0jGVmLSFDc7ts5eAvEOT6rQZ5lzpm?=
 =?us-ascii?Q?LcKJo5tJTLCZOfKbL3xoxJRWgIAgKKqUqq7mlKBfx8XiI5hqnMQ2oMEX/q0E?=
 =?us-ascii?Q?fdJKwv3AZmiapRck1/+VrCu8Dw60kL2MMmrBfo+9khn7eDqIqDMBZSuSPa4q?=
 =?us-ascii?Q?xzLub5IWX5xXo8FgiA/E2cC6c7YvZB0se7DDe8YhG8uEsm2R/LLmcxSlNdDI?=
 =?us-ascii?Q?9nZVtO/NZyhm5XgNOZg0e3iGhdiFpA6D+C8uZASU18arMntFXCPLeqrtePOx?=
 =?us-ascii?Q?5s6vaPXacIbAV61C0Qqi4/HKZXRPlEOelVXYP772m9hHgN4jsMVVPUUEKINp?=
 =?us-ascii?Q?VV6JzOWCtMRUpVSJzHNbBwGCyW+WYWxUnNNRGGCv77UTduH5IevpzXpYBuqL?=
 =?us-ascii?Q?mYxP9+2BmbIuVw3jVL6DEam5ICjiCvxibdpDXiTMedbIwn4ybXgd9dk70RCv?=
 =?us-ascii?Q?1qVXFoP0+7aHF08OnMsklR47eK5mrvjqZUAe7MjwlqreJTKlTKXAZs9exYqx?=
 =?us-ascii?Q?Oub9DsjB6SDkbNoF7Eyk0d23bV65pjIm+hfXL6TIECQM4NTpoDu1MYrqQA1c?=
 =?us-ascii?Q?7BNPIdbGl4c2jzr+6jv4/ig0zcfegbPtpDXU2D3fgiTE9828xgQDNeTid4ed?=
 =?us-ascii?Q?JMznzzvgUjh/IwNB3Kv9GsgummRxwHTnsZusiMGYeEpYAdNrTxd7G6oatVsz?=
 =?us-ascii?Q?Eg=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0938e641-fbbb-4147-468e-08dc5fdd7d3e
X-MS-Exchange-CrossTenant-AuthSource: BYAPR12MB2743.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2024 19:26:47.4606 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sduqsg6smSosLOtRJ8I+8xsvXUAzwU99zA3pKLNPfoqUXe8PFZqyP+Ic8+GHDe2FZ+7YoaVQIMaFYmUs6ykueA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4375
X-Mailman-Approved-At: Thu, 18 Apr 2024 20:08:19 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PS6Ibd99oWeuxKP8HL7UbayaaeuakWU6Z3LMyY5LVKQ=;
 b=FGUIsFC/16M1OaczLdT1agcPGf+E3bwjKi0Hn0PWc1+iZa6WeEz37Csk1DCbmYrU/UQ7gnls/Wjpy0wNSufr5BrT/Zrrvh1aN9OgBc6RPwBHrKJZvVVJzZheNnpBjTlf8ViW6KcIZW3fsCik6WBdOcf+lZR+rNUKMt8UPLGb2izJa1XgKs2IPT6kJ46o0eFpgSqt/wLiEZvo0OEL0cL3gsgNbUZo3wOnJlIKkj44l2JMafSO4XY/W16RekLyZFVzhH00N9K5MaTsjq7EghEo/+r/xVRUxKeEJMlgSfdnlLWdW+O6pHQR7tonrwHjaetCk60jX76+g4o78TVkySmXgw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=nvidia.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=FGUIsFC/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 05/12] iavf: negotiate PTP
 capabilities
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, horms@kernel.org,
 Jacob Keller <jacob.e.keller@intel.com>, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 18 Apr, 2024 01:24:53 -0400 Mateusz Polchlopek <mateusz.polchlopek@intel.com> wrote:
> From: Jacob Keller <jacob.e.keller@intel.com>
>
> Add a new extended capabilities negotiation to exchange information from
> the PF about what PTP capabilities are supported by this VF. This
> requires sending a VIRTCHNL_OP_1588_PTP_GET_CAPS message, and waiting
> for the response from the PF. Handle this early on during the VF
> initialization.
>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> ---
<snip>
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
<snip>
> @@ -2684,6 +2686,64 @@ static void iavf_init_recv_supported_rxdids(struct iavf_adapter *adapter)
>  	iavf_change_state(adapter, __IAVF_INIT_FAILED);
>  }
>  
> +/**
> + * iavf_init_send_ptp_caps - part of querying for extended PTP capabilities
> + * @adapter: board private structure
> + *
> + * Function processes send of the request for 1588 PTP capabilities to the PF.
> + * Must clear IAVF_EXTENDED_CAP_SEND_PTP if the message is not sent, e.g.
> + * due to the PF not negotiating VIRTCHNL_VF_PTP_CAP
> + */
> +static void iavf_init_send_ptp_caps(struct iavf_adapter *adapter)
> +{
> +	int ret;
> +
> +	WARN_ON(!(adapter->extended_caps & IAVF_EXTENDED_CAP_SEND_PTP));
> +
> +	ret = iavf_send_vf_ptp_caps_msg(adapter);
> +	if (ret && ret == -EOPNOTSUPP) {

Similar simplification to previous patch might be possible. Simply "ret
== -EOPNOTSUPP"?

> +		/* PF does not support VIRTCHNL_VF_PTP_CAP. In this case, we
> +		 * did not send the capability exchange message and do not
> +		 * expect a response.
> +		 */
> +		adapter->extended_caps &= ~IAVF_EXTENDED_CAP_RECV_PTP;
> +	}
> +
> +	/* We sent the message, so move on to the next step */
> +	adapter->extended_caps &= ~IAVF_EXTENDED_CAP_SEND_PTP;
> +}
> +
> +/**
> + * iavf_init_recv_ptp_caps - part of querying for supported PTP capabilities
> + * @adapter: board private structure
> + *
> + * Function processes receipt of the PTP capabilities supported on this VF.
> + **/
> +static void iavf_init_recv_ptp_caps(struct iavf_adapter *adapter)
> +{
> +	int ret;
> +
> +	WARN_ON(!(adapter->extended_caps & IAVF_EXTENDED_CAP_RECV_PTP));
> +
> +	memset(&adapter->ptp.hw_caps, 0, sizeof(adapter->ptp.hw_caps));
> +
> +	ret = iavf_get_vf_ptp_caps(adapter);
> +	if (ret)
> +		goto err;
> +
> +	/* We've processed the PF response to the VIRTCHNL_OP_1588_PTP_GET_CAPS
> +	 * message we sent previously.
> +	 */
> +	adapter->extended_caps &= ~IAVF_EXTENDED_CAP_RECV_PTP;
> +	return;
> +err:
> +	/* We didn't receive a reply. Make sure we try sending again when
> +	 * __IAVF_INIT_FAILED attempts to recover.
> +	 */
> +	adapter->extended_caps |= IAVF_EXTENDED_CAP_SEND_PTP;
> +	iavf_change_state(adapter, __IAVF_INIT_FAILED);
> +}
> +
>  /**
>   * iavf_init_process_extended_caps - Part of driver startup
>   * @adapter: board private structure
<snip>
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> index 52b8f1721147..5d99adb69d75 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> @@ -145,6 +145,7 @@ int iavf_send_vf_config_msg(struct iavf_adapter *adapter)
>  	       VIRTCHNL_VF_OFFLOAD_CRC |
>  	       VIRTCHNL_VF_OFFLOAD_ENCAP_CSUM |
>  	       VIRTCHNL_VF_OFFLOAD_REQ_QUEUES |
> +	       VIRTCHNL_VF_CAP_PTP |
>  	       VIRTCHNL_VF_OFFLOAD_ADQ |
>  	       VIRTCHNL_VF_OFFLOAD_USO |
>  	       VIRTCHNL_VF_OFFLOAD_FDIR_PF |
> @@ -187,6 +188,41 @@ int iavf_send_vf_supported_rxdids_msg(struct iavf_adapter *adapter)
>  				NULL, 0);
>  }
>  
> +/**
> + * iavf_send_vf_ptp_caps_msg - Send request for PTP capabilities
> + * @adapter: private adapter structure
> + *
> + * Send the VIRTCHNL_OP_1588_PTP_GET_CAPS command to the PF to request the PTP
> + * capabilities available to this device. This includes the following
> + * potential access:
> + *
> + * * READ_PHC - access to read the PTP hardware clock time
> + * * RX_TSTAMP - access to request Rx timestamps on all received packets
> + *
> + * The PF will reply with the same opcode a filled out copy of the
> + * virtchnl_ptp_caps structure which defines the specifics of which features
> + * are accessible to this device.
> + *
> + * Return: 0 if success, error code otherwise
> + */
> +int iavf_send_vf_ptp_caps_msg(struct iavf_adapter *adapter)
> +{
> +	struct virtchnl_ptp_caps hw_caps = {};

To properly zero-init a struct, shouldn't this be the following?

  struct virtchnl_ptp_caps hw_caps = {0};

ISO C forbids empty initializer braces.

> +
> +	adapter->aq_required &= ~IAVF_FLAG_AQ_GET_PTP_CAPS;
> +
> +	if (!PTP_ALLOWED(adapter))
> +		return -EOPNOTSUPP;
> +
> +	hw_caps.caps = (VIRTCHNL_1588_PTP_CAP_READ_PHC |
> +			VIRTCHNL_1588_PTP_CAP_RX_TSTAMP);
> +
> +	adapter->current_op = VIRTCHNL_OP_1588_PTP_GET_CAPS;
> +
> +	return iavf_send_pf_msg(adapter, VIRTCHNL_OP_1588_PTP_GET_CAPS,
> +				(u8 *)&hw_caps, sizeof(hw_caps));
> +}
> +
>  /**
>   * iavf_validate_num_queues
>   * @adapter: adapter structure

--
Thanks,

Rahul Rameshbabu
