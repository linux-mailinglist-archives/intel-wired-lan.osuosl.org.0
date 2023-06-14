Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 773C6730882
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jun 2023 21:40:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E6C2441E86;
	Wed, 14 Jun 2023 19:40:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E6C2441E86
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686771614;
	bh=R6O1ZKheR6eTwqRDob6PdPhGUweniuYn5Ev5bWpkfiA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UoGz1KlDB4P6K9c42Zlz2tuaHE70YOSkr0iB4PoOWsjentYG/lebkY1tgEEru1ED4
	 rYNnWM+zPCZOXpN/Z3LYZADQFexW6BdUmRDN6y6VeZ2ubmeBtnnOGKhHpaoIZZp4GA
	 pujngsI6vtwu4heR45LWajBU3SVDQ1d/Sr18kY8UJMrT45Yp/V4m2QSRNre1Nv4biB
	 qDKMLfi7/4H8Z/YNVTiEuIGF9tipL5xTs8YPUwDPFXb2HnR7XqWUHuXBanFe3/FPMc
	 2QL53oh2pr4JfiK2T70S+23fNh42batXZVMoZReedFTSgRfc2E42bjZq4idltc0Yr4
	 yZn+FIeXar1JQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tl-C-u4Wi-WR; Wed, 14 Jun 2023 19:40:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 631BE41D98;
	Wed, 14 Jun 2023 19:40:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 631BE41D98
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E66BB1BF2A5
 for <intel-wired-lan@osuosl.org>; Wed, 14 Jun 2023 19:40:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id ADEC440127
 for <intel-wired-lan@osuosl.org>; Wed, 14 Jun 2023 19:40:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ADEC440127
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KNsL-zyeHXsl for <intel-wired-lan@osuosl.org>;
 Wed, 14 Jun 2023 19:40:05 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 50159400FF
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
 (mail-am6eur05on2053.outbound.protection.outlook.com [40.107.22.53])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 50159400FF
 for <intel-wired-lan@osuosl.org>; Wed, 14 Jun 2023 19:40:05 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iXmm4514wfGuhF+vAPDKgM7nWOJgjKOh+K6fqXq7zZHAPh9Iq4FJK+bK9Bp2+Do8hA7q0ZIgmqvEbPQ9TWbdOxlbQTRTdywm/MK5kAw3dfdsGDd30U8xP6CfJMgS6nc4Cjdx0sPGbX0572j8s+2xWzv7rXgD90HP0KK2cCPZjh61lflptBw8abRJ6pTiCBIn+mJyv4A70Xi8Rjgy9bF/VFWJo0r+aQvWJoik7sLGsLYN/c7zPa0YXtOydJCSjbxIG79/4vOHfTro3hWJpjMFrgDmAWBiWA41MmhnJH+KbFLQpEVAPosOORwpdmY90hOFpiQ2uJT16NAIBO8Fl0/sjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dpsszrmDIuGXRadSywWVdhw3tHJqGapMoaJhAaSJtYo=;
 b=NYB1pae3A8Ejdr0/ITlAS0+jlraBQazLc2+iOJmDvQds4iRs1HgfkxRJMGJWsbi5IBILGnXWviJs/RCEmCgKV/j3kN96ZfJzumMBk0KZ+NkqaZwfxGMYwIeJhDhze4WCfz2ZkDpMlW/benbLq0z97QC5nuXpaiMl2NkQA9PGsc7wCs4YtQ1whswxRSltAH4bD+5PuMSpgUOHzQij2itvWY7PA1L9+S6vWa/cSRptOSuBHws2Ef2+gfW9v3m64179wA4xXX2CjtP2Txy+fxxATGpONg0HD/NVlB1tG0YLxfEIwUGJZ3fpLK6Jf+pimtYY20TQe/B2Vtk5x5DeNZBscg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com (2603:10a6:208:16d::21)
 by PAXPR04MB9572.eurprd04.prod.outlook.com (2603:10a6:102:24f::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6477.37; Wed, 14 Jun
 2023 19:40:00 +0000
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::c40e:d76:fd88:f460]) by AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::c40e:d76:fd88:f460%4]) with mapi id 15.20.6455.045; Wed, 14 Jun 2023
 19:40:00 +0000
Date: Wed, 14 Jun 2023 22:39:56 +0300
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
Message-ID: <20230614193956.z6pohww23ikkljrd@skbuf>
References: <20230614024225.13652-1-muhammad.husaini.zulkifli@intel.com>
 <20230614024225.13652-1-muhammad.husaini.zulkifli@intel.com>
Content-Disposition: inline
In-Reply-To: <20230614024225.13652-1-muhammad.husaini.zulkifli@intel.com>
 <20230614024225.13652-1-muhammad.husaini.zulkifli@intel.com>
X-ClientProxiedBy: AM4PR0902CA0002.eurprd09.prod.outlook.com
 (2603:10a6:200:9b::12) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|PAXPR04MB9572:EE_
X-MS-Office365-Filtering-Correlation-Id: 96d8538d-eafd-41d8-7ab7-08db6d0f2426
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xc3OU2wMC00K8DkkboxmFcUAQldnck/xk25WLdim3BOztlpaLc1l+mFaX/kPCLKU4AFfPzIy2DhZbqqgk9dFgjhIR1LajJltnh2iOeqPA1zNM91i5DCe+JurUIBONT0MVuViUOdTMWIuSdW7XmjK2f66pHJaPHEkzWpxr+XepWONbhiqfDfi0nvH5RzMaaQXcQ91i9vwS+dLDmWy/lUWsgZxs6jBj/TF6bWOye201EQDAGn3NY0urAfUnXM7mjm+eeFvsX4IqvxqKK73KITSsDxstTugxCZnpya7vVOMFf5p9BWsk/I99ysSc/vwyWGCRR1K76TLukg7ZKbKKYK3hz97hIIkCkbSo7uyWaq3Tnhk42r6YAqpQ51kCmJaSgY1TB6gEOrnbMWxGijQSS1Qw4wZLm//bQyw+UXA/rsEBaKVoupJ+bLaYxtaW5euFI0NQgZKG60HhLfcX4TXyBtn5WGZRrPlcW30QuRGLMKCLa/7SiGVaE9YDaAbt08P2BDO1qpZhR3rLIObOU+e3vKvDg+FQ8YxctMBoK5ceYej83n2zlhCIvutpeeVY9gCuvHyPpsEBeCloYXXyZ8ZPCW8PVAGK6Po4SqBwSHmEIf0FhI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB6452.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(7916004)(376002)(366004)(136003)(346002)(39860400002)(396003)(451199021)(26005)(1076003)(6506007)(6666004)(186003)(478600001)(6512007)(9686003)(44832011)(86362001)(6486002)(4326008)(6916009)(66476007)(66946007)(66556008)(316002)(2906002)(8936002)(8676002)(5660300002)(41300700001)(33716001)(38100700002)(83380400001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?YUZ/fdlC9V4RaSzSTdZxlIsGjErkvYC1YvoXuYjZ4ZPb/ybqhEb+m7Ohthqs?=
 =?us-ascii?Q?FOqLxl2fs1YalkSrU4HwGcTLB43UkLk/+STDiwZcf5u76DVyEFy/iBS04g8x?=
 =?us-ascii?Q?Kmu1xN/S6/iqkuraSn57sDOeMTCaa8lMBwHwIcfuhWTBLdQSlKQtN3gfLHrt?=
 =?us-ascii?Q?XyK7qsD8GdPSCZjcvHMmTddoV5lSiiRa7rMR3DP4RELlzjWw+A4tKC5qjfZQ?=
 =?us-ascii?Q?a/qbJKYF1xKLBCQsfrH4hJSeUXiideH2iv31plRyScn0GU6TLdcNsOi3DXDO?=
 =?us-ascii?Q?PEbB1kdrFAL1dTsc3TRUYrqZTV5O29lnmjVfPrnnUzKTfgVjlv1D1Yc0lH9W?=
 =?us-ascii?Q?GlYCdgZ+9l/O126Q+fHegKoKeAmF96+c/ZKoZSOBiX1taj9Wn4+Tq8onU95K?=
 =?us-ascii?Q?44Emf0RQHPPwmLGKO1kELEADcw+EHBkHtRdmebEVJ68P4D1NNErfj5LcYWUO?=
 =?us-ascii?Q?jsIt4PWoMGjfkyDMUadGHQrmRR/7oW8VuMg2f4+5N9QFaXYzFyKYW/ELuYnf?=
 =?us-ascii?Q?kDsVDLjPCCL8ve6+aKyvPZiwh2a0sg/9FX32EcBOgwFSIJUq7DiIYmYfCPFl?=
 =?us-ascii?Q?ir/uTi5U8lAuPATchZW+6PsBzJOydW5FpDoNbE4hm8fM2KFoA1xh3rLl35gi?=
 =?us-ascii?Q?Fl+pNXf7IwFWIRds2BRMqdh2M3gomM4eP+DiAw/tY01KQdsZjH5nI6a72Npp?=
 =?us-ascii?Q?zdyyug5qZzv7zC72Jj8HFeDqdR2w2eVAg+it8FVt/t6Mkab5p3rrMLipuYxZ?=
 =?us-ascii?Q?14KVNSRQhwjuqJSfl3ojyUXHV9hLOQKWdg/fE+qRrHH6TjeKndhhb0fUC4Zq?=
 =?us-ascii?Q?4GSD75rjsxSpkAGDwUw1Y4V9p7y7C6pFZKcGjS4MLZA38zwcyIUg2KzVYo0w?=
 =?us-ascii?Q?ecN0rFDVryXOBMkC6Rw/YXshDjozvoR2GQMG4uh0HmVd6JCJi1iwJ2yodSg1?=
 =?us-ascii?Q?4VtmmhDCDjitVpanJrnzs3kVwce8yYmKZMr7vjrFPqeIJpkRY2RQMwCVszZr?=
 =?us-ascii?Q?dri2rXND+vzM9fH68MG6/ssUJZoSS+OF501vLhwIuaF+YgCvBmlzgF/hU4GP?=
 =?us-ascii?Q?CZhgbvmREKBEXht6+635yUKL+Og0NnDT15FLdIC7DKIfvIXHVZsRbnzh9jij?=
 =?us-ascii?Q?rX/Da0xRBWZ1z4C8p50OkatZngBJicdlmiipgaZ4nap3cSgExyO/vncvA1vf?=
 =?us-ascii?Q?qpIMrKgzN9Hcf1LGxaGa6biU28C8rVailrYjVMq7aVRvyBWWyJiR6uLXWBGH?=
 =?us-ascii?Q?xGGU2JU1hQCoeNKAajApJ3TY5AjajJk+QMZSKJVg7bSWvxg5JaH6DKA+jMut?=
 =?us-ascii?Q?01g81VMaiImqX0n9Ni7RdbahGBCZKUMI8CDSgTfaLpvZZBIm3SHZ4zgMg3n3?=
 =?us-ascii?Q?igGIzRb3S14N4bUEBqRNm6eJkriRxaespXjN0HAwL7vYdCcrtCw45g/6acVJ?=
 =?us-ascii?Q?E2ZhQ6iaMVjFUTX0hWWbxjTzJCZt/20igGVsnDDbX5R2T1FBp+Np2GGNCPMa?=
 =?us-ascii?Q?FCsa6lSRmKfuCc+MUn+FQ/KTDd9GwfnZ33qaCQ+xlKWdGZvpL7evNGEK1g/7?=
 =?us-ascii?Q?xLPpyLNVndL6LdyTI5zepfg7hT2m+l41FIlDKQmQh+ZfBFVRbn1H7b8JQyCv?=
 =?us-ascii?Q?9Q=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 96d8538d-eafd-41d8-7ab7-08db6d0f2426
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jun 2023 19:40:00.3633 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: g69VGhorm5WlvFaMkxR90oERRFsA28oSQ54tn+zEDo9lMEd6XZS+v7B2bD6FEDadzvFBy5EPABz6cmUHFx8gUg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB9572
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dpsszrmDIuGXRadSywWVdhw3tHJqGapMoaJhAaSJtYo=;
 b=GGmIyqvX7l+VLIAnvqqaa7axo8yOuSMIXYG5WPXj2ZgbMgb0MQ+UDIFI7i7Vz71FjtJiuVpqgkoH+3P1/3q/nKRHtlRgPdtY0HTCh1YBvZbxQD5sr/CRUvvTk3zdtSZpbmyig67AlBnkA12VE6fruXzPgJ3TpGoddN/J7nsrCG4=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=GGmIyqvX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net-next v4] igc: Add
 TransmissionOverrun counter
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
Cc: tee.min.tan@linux.intel.com, intel-wired-lan@osuosl.org,
 anthony.l.nguyen@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jun 14, 2023 at 10:42:25AM +0800, Muhammad Husaini Zulkifli wrote:
> Add TransmissionOverrun as per defined by IEEE 802.1Q Bridges.
> TransmissionOverrun counter shall be incremented if the implementation
> detects that a frame from a given queue is still being transmitted by
> the MAC when that gate-close event for that queue occurs.
> 
> This counter is utilised by the Certification conformance test to
> inform the user application whether any packets are currently being
> transmitted on a particular queue during a gate-close event.
> 
> Intel Discrete I225/I226 have a mechanism to not transmit a packets if
> the gate open time is insufficient for the packet transmission by setting
> the Strict_End bit. Thus, it is expected for this counter to be always
> zero at this moment.
> 
> Inspired from enetc_taprio_stats() and enetc_taprio_queue_stats(), now
> driver also report the tx_overruns counter per traffic class.
> 
> User can get this counter by using below command:
> 1) tc -s qdisc show dev <interface> root
> 2) tc -s class show dev <interface>
> 
> Test Result (Before):
> class mq :1 root
>  Sent 1289 bytes 20 pkt (dropped 0, overlimits 0 requeues 0)
>  backlog 0b 0p requeues 0
> class mq :2 root
>  Sent 124 bytes 2 pkt (dropped 0, overlimits 0 requeues 0)
>  backlog 0b 0p requeues 0
> class mq :3 root
>  Sent 46028 bytes 86 pkt (dropped 0, overlimits 0 requeues 0)
>  backlog 0b 0p requeues 0
> class mq :4 root
>  Sent 2596 bytes 14 pkt (dropped 0, overlimits 0 requeues 0)
>  backlog 0b 0p requeues 0
> 
> Test Result (After):
> class taprio 100:1 root
>  Sent 8491 bytes 38 pkt (dropped 0, overlimits 0 requeues 0)
>  backlog 0b 0p requeues 0
>  Transmit overruns: 0
> class taprio 100:2 root
>  Sent 0 bytes 0 pkt (dropped 0, overlimits 0 requeues 0)
>  backlog 0b 0p requeues 0
>  Transmit overruns: 0
> class taprio 100:3 root
>  Sent 0 bytes 0 pkt (dropped 0, overlimits 0 requeues 0)
>  backlog 0b 0p requeues 0
>  Transmit overruns: 0
> class taprio 100:4 root
>  Sent 994 bytes 11 pkt (dropped 0, overlimits 0 requeues 1)
>  backlog 0b 0p requeues 1
>  Transmit overruns: 0

I'm not sure that the full output is really necessary, especially when
it fills half a screen with mostly unrelated text. Also, be aware that
the name of the counter changed in the merged version of the iproute2
patch.

You could modify the commit message to just say: $command | grep tx_overruns.

> 
> Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
> ---

Otherwise:

Reviewed-by: Vladimir Oltean <vladimir.oltean@nxp.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
