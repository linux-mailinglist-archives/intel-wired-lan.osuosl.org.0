Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 210266DC810
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Apr 2023 16:50:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9362B81EB6;
	Mon, 10 Apr 2023 14:50:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9362B81EB6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681138255;
	bh=jdv9vjgpW5mV05/wmL4wRI+SeAFaVuZn28TviHVgZTU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=G91TZvH29eZSJ3w97C9TLN+Kt7taoBiNS8gCH3TXO/Xjy6zdetNnFBDh3KBHM4fol
	 kz4C59MVVSoiyDTXgZX9Zvr0EsekdovNd/Dct/1jugRXzEwlHXJlmh/xGY+cESSZOu
	 xwkK3WKdXY5HdvfVZtK6RcjJl7zSobWdZt1pCERSzJTf18nWAHMksI7Io766Zsq3aL
	 Tya6VZj6IuG1sihnmhO8RK6UFWO8ZeThcrWcRadKfpeBIfepNpEl6ksdT1k//fQ3ib
	 s72iJxbU1ufiNbbJXXbxiaJH37BX4ATQpv/w3jrnBK7qg2sqCkVJTumtYi/hpdJKwp
	 mg0c13UyKcrqQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6sQfw8zFM7id; Mon, 10 Apr 2023 14:50:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6F4CC81EB3;
	Mon, 10 Apr 2023 14:50:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6F4CC81EB3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DA9761C3B69
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Apr 2023 14:50:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BE59261156
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Apr 2023 14:50:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BE59261156
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lkiSpfpXqAnG for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Apr 2023 14:50:48 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0DA4C61149
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on2100.outbound.protection.outlook.com [40.107.236.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0DA4C61149
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Apr 2023 14:50:47 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aDMLtCbmfrb07t/wthPG0JIVeUwIJI6snM3bx/KJ9tU+w44+PLY6vRbeYVJF5HWnyLRWJGkjaZjhQbnyuACnna762gaY83XT/Y5n4Te4aqFIMaEMWgyX+9aPb4G3dP5a6AVE10MPaT6v7+afVjubumxmRnlfSiYLQSPcBdqJb3lM8UJ6xKr1R6c84eJw6jMSVh+XDqxLsnKamkwLQOER4LbG8Uyr9tNhvF3epCzCr9yAffZfyhoIY8SS5JEf4RNkp5EQ26SUTUky7+zA8ZouoAbZ+B9Mvwp/Fkt+L3CmGDFPtrPl7K8FsmEBqN1wkCcFxziMzIs3VTw3zxCv6udCOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I9DYcGM8fRFfse0Z0aqPm5j4z1aBx9RmqTMb8f5YRoo=;
 b=inlCjZ4eFKCTjmmzwUPQPg2YHRQ3B1m8SLBxE6X70mOvMNkVBYf4g/5xlz/aDldWgsafi8kbz0Cl+2gI3BiwmxsTJ0kdLH4mdBDnH3K+edRHJm9G6DB7ProTFSwIeFX8HjxZvhIzJ/TwPPYv2dXBLWMmIAriRcpQSmMuVgHUC6hj/ZZzXUn1dFxQ6pBlq7ebWhZ1Dqhk34AUBDRAoBiXFM1ln401x1hTlh1J4mlbnH7BqnI557G/T8u0ccYDRW7HXe9zpxMht1BpqkLhqycF0+ZPMEJZ7dKT/XKfTDyHv+BVIGGGg/0aV+peRdgRuVewt3QpIdnruesdnWODVCT9bA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by CO1PR13MB5064.namprd13.prod.outlook.com (2603:10b6:303:f2::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.38; Mon, 10 Apr
 2023 14:50:43 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::89d1:63f2:2ed4:9169]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::89d1:63f2:2ed4:9169%5]) with mapi id 15.20.6277.038; Mon, 10 Apr 2023
 14:50:43 +0000
Date: Mon, 10 Apr 2023 16:50:33 +0200
From: Simon Horman <simon.horman@corigine.com>
To: Jesper Dangaard Brouer <brouer@redhat.com>
Message-ID: <ZDQiOZ9VR7CEVUTr@corigine.com>
References: <168098183268.96582.7852359418481981062.stgit@firesoul>
 <168098188134.96582.7870014252568928901.stgit@firesoul>
Content-Disposition: inline
In-Reply-To: <168098188134.96582.7870014252568928901.stgit@firesoul>
X-ClientProxiedBy: AM4PR0202CA0001.eurprd02.prod.outlook.com
 (2603:10a6:200:89::11) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|CO1PR13MB5064:EE_
X-MS-Office365-Filtering-Correlation-Id: fe04e250-3420-492e-608c-08db39d2f580
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZRI3MeQIH1nTaXCFC+Wa/ArcWnpL7L4UxAuOkTKdYM7Hcp7a219/IulCSIrrvuTCg4B2SgJ8Nq64tt3tzKA/oUfPFbGbExrdUXuLUHUOUFrIrNXNbT36y0p7wTK86tC+iTobVpyQX3zRo3mOKftDEf+Y8ybD/JIptnI9lYS5OP7x5UnCCFpsPsttUemfUJPH1nbbn6xi4wYrqXD94IinPjE+cmvpr/GQY28eT28Tf9CbjoqCBC+zimtpulA9RuUf/fr0jrGTY1ahCDyGajajelO+yTcBPZSwDZ7eGDdjlhwhNUUjUAmViTZcrA2afnLrGLXQ+gg98om2TG6L5CjiJ40BEbPQVM26WsMCSP4u0ZU9vtJzo9yxUdeUpS+4CXSOBaFdy5EHY5wRSWiKq2UOKKZ7aMz7+ciEjUDZWWmTbdpNAqQ8pzbsZbPiMTODvovfqgxV3kxUYNP4/lMU0U2r2kAwhHBjUM+7jNV26MIKmb4cJdw9VcNv68aa//t14l2gg4ypVAaLxxslHYr7bwwUCA74gtgB8lPXszMSxIce4PXXLBDFVvN10VD+Fs22rhIn
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(396003)(346002)(366004)(136003)(376002)(39840400004)(451199021)(478600001)(316002)(54906003)(6512007)(6506007)(186003)(6486002)(6666004)(2906002)(44832011)(66556008)(4326008)(66946007)(41300700001)(8936002)(6916009)(7416002)(5660300002)(66476007)(8676002)(38100700002)(86362001)(36756003)(83380400001)(2616005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?kXvAi4c9jzFx1xP1fQSdcQcVFdyR3A6rJmNOoz8e1ow901XDzdeuIkdIfO3Z?=
 =?us-ascii?Q?3F67okR/EKsQkpQCkCZqnY3BYIIEloiKD4lVfCzYNkeTmJnLnHl4s8BJG335?=
 =?us-ascii?Q?Rmb4ZD79kT4lKSPS3+jgLLzwOjwNwxotf7Yh6coW/M3jbwSVMjG8Socc0z15?=
 =?us-ascii?Q?+nC6yLbTSK5NTVgYwP5cNcDVEkLgNErD1eiSV7zKRCbRAmKR3l1nGpDdk3Aj?=
 =?us-ascii?Q?FwSk2JLlcUJlt2eh12Q56NjixeJKvG9lcN8a3ijVfL7+aw+7dRIf+cHZ6o2g?=
 =?us-ascii?Q?6kRJM6Q75CiUUaWfG+nMMhgLhAoU1bLbJeJMC1cZE4ROqOTY4zHNg/hklcvy?=
 =?us-ascii?Q?kut7JczItNm63QlmG3cK36F/Awlk2zGfNDwLHQJgiAgU3uVi5QWftAtO/m9O?=
 =?us-ascii?Q?4uBq5eQlUe7GkGuJQzDyYWzv7p75gmi9MiKrztKoIFoCGaHspUsDOPSgD12J?=
 =?us-ascii?Q?mij4SR5UVUA8Z0Dq8tIkpJuW7eo3f8uAiDUJtMR6Ou7j1FKvgXdPP6uc7et8?=
 =?us-ascii?Q?WfeVJRkIGKMQmiqcvxGzemQIzB2HxgbQOL4TasTc9QgE5aOVV580rM4jpvtd?=
 =?us-ascii?Q?HHF9Imr/aULCjNuYwOaObrdO2nB6TL/9bUlrnEYzur7w9emBN8Gp62pHHawv?=
 =?us-ascii?Q?BQJJ4ycevRhB6sxn2lymrXQ9mllLTXiWda+yL0P1FsggCbhoiaLiYbcTxkNU?=
 =?us-ascii?Q?e4G4EHbRT0E/qCv7at2qgm7WTze2E+Kp7KcGeDysZNhAtW2ASchnUaEN8wCC?=
 =?us-ascii?Q?pztW/PvmzXqo7pShkzKx50UhqkYBS3GO3p48AACTc5LjsQyF/9bVqjkcD30l?=
 =?us-ascii?Q?bGZeXp6172t/bwO9C8XljHsOBKi0H8nJR50M0JowvQNknsCS6mgFZH2LhOmQ?=
 =?us-ascii?Q?Iu9jCDdqJpDSOE1dJrHfWfSDtABL1nM+UWv7RUdnjUvAsr1sDWCpM/tJiVWx?=
 =?us-ascii?Q?VxSxSv1qe/KMBfgIcfhpL37VfR4EqTRTzHtJ8Edi3m4VDGio30sT03f634G7?=
 =?us-ascii?Q?UasjAOCiS5T58/q5runog7qCJhamHG5NRjTP3sOpDlKkcbf+DltKKTl6hRU2?=
 =?us-ascii?Q?M5LPVFUzZzj9PJhZCzgdOqg/orSN4dEVTbXIQ+BWYo4YOshFpoRxGM1dsNr2?=
 =?us-ascii?Q?2X2VzuEY2iX9e5lK51uDeeBq4LMNnZbXjPH0y50Ep+nNTLHNkZuE8Vf4IE/W?=
 =?us-ascii?Q?k35LSATyZCzz+56Cplfy4bUfh0Kl+sSFSuby4FAKBk7f1iqW7FXIrSUWvxus?=
 =?us-ascii?Q?4gziobEoomV/Ta7lWRE3/+h8aI4Xx54ZhbBy3oGMqYLaitt7lqFYdvyWQLXz?=
 =?us-ascii?Q?tTyE8UL8McpuGJU1S2mlyfL847PM6lMX/inpCfOGkFgI/Dbn9ag4rLR+IeVm?=
 =?us-ascii?Q?DFusR+mgBD9T4L11sHtuyRdJx/62Bq4LThYcdLYLnk3Gfb4tnnNLPRjGzaDN?=
 =?us-ascii?Q?Gm9RvT6OE/u6pVtPXnVx5aqxYthHxBaMA1k4ePxWhJ6mnhWwp0OuOdOZlCPF?=
 =?us-ascii?Q?GYUAhD9LT0TrSEmD3Ou5AeSEkqYik14ksIY0wzdujm3RWtw7GQuqul1rHhgG?=
 =?us-ascii?Q?WGoMpSHBBiS10P3us3ghSrk0NpbgVtC8ZexoNGE+TBttDLPlK38gdkpmeRl/?=
 =?us-ascii?Q?jjnIR2HxWoIB/Xb9P2GfQsG1LtXUTkI8OQH1W/p3JtwEew7TRmguXZ7JZQTv?=
 =?us-ascii?Q?C7tWXQ=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fe04e250-3420-492e-608c-08db39d2f580
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2023 14:50:43.2905 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BsuMYq0EUiuIfwXbBXcDHuYou9XVBrVEHvOjuKar0qx+4SR4ScH+sOUEhK9aFNAjmo9p35j2BceWGdE8Y1ThRb/NW3HES9UY9OxPmf9qP/c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR13MB5064
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I9DYcGM8fRFfse0Z0aqPm5j4z1aBx9RmqTMb8f5YRoo=;
 b=vJW9uf8emsilquSSvxFAA8l/VQCgDtHSLsHM++dg1riM6IqFlQY6qnDRUTgEZMzXzSZd5hqANoHE3Pp3CLRnf7+fQS41SOHDebXQlTDvAy6RpExS6T1fb1nCJM2LB7QESSVEy6FDkNgCE8kaiANDBrOAXcR9OeGA7dlMjFsqARk=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=vJW9uf8e
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH bpf V7 1/7] selftests/bpf:
 xdp_hw_metadata default disable bpf_printk
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
Cc: ast@kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 Stanislav Fomichev <sdf@google.com>, boon.leong.ong@intel.com, hawk@kernel.org,
 xdp-hints@xdp-project.net, daniel@iogearbox.net, linux-rdma@vger.kernel.org,
 john.fastabend@gmail.com, jesse.brandeburg@intel.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, pabeni@redhat.com,
 martin.lau@kernel.org, larysa.zaremba@intel.com, leon@kernel.org,
 netdev@vger.kernel.org,
 Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>,
 linux-kernel@vger.kernel.org, tariqt@nvidia.com, yoong.siang.song@intel.com,
 bpf@vger.kernel.org, saeedm@nvidia.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, Apr 08, 2023 at 09:24:41PM +0200, Jesper Dangaard Brouer wrote:
> The tool xdp_hw_metadata can be used by driver developers
> implementing XDP-hints kfuncs.  The tool transfers the
> XDP-hints via metadata information to an AF_XDP userspace
> process. When everything works the bpf_printk calls are
> unncesssary.  Thus, disable bpf_printk by default, but
> make it easy to reenable for driver developers to use
> when debugging their driver implementation.
> 
> This also converts bpf_printk "forwarding UDP:9091 to AF_XDP"
> into a code comment.  The bpf_printk's that are important
> to the driver developers is when bpf_xdp_adjust_meta fails.
> The likely mistake from driver developers is expected to
> be that they didn't implement XDP metadata adjust support.
> 
> Signed-off-by: Jesper Dangaard Brouer <brouer@redhat.com>
> ---
>  .../testing/selftests/bpf/progs/xdp_hw_metadata.c  |   16 ++++++++++++++--
>  1 file changed, 14 insertions(+), 2 deletions(-)
> 
> diff --git a/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c b/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
> index 4c55b4d79d3d..980eb60d8e5b 100644
> --- a/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
> +++ b/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
> @@ -5,6 +5,19 @@
>  #include <bpf/bpf_helpers.h>
>  #include <bpf/bpf_endian.h>
>  
> +/* Per default below bpf_printk() calls are disabled.  Can be
> + * reenabled manually for convenience by XDP-hints driver developer,
> + * when troublshooting the drivers kfuncs implementation details.

Hi Jesper,

a minor nit from my side:

nit: s/troublshooting/troubleshooting/

...
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
