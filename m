Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC813761832
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Jul 2023 14:25:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 36F1740A21;
	Tue, 25 Jul 2023 12:25:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 36F1740A21
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690287926;
	bh=C+QV5ZT698H6kyATdk7yLj9wZoXH9rAFAlQ3aNIJuwk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=y4zVzgkT5xElEyh1/sKrSQVwg2/qiqIp0EF03ZUM8SfBkMnEQ1ZbwrAkKBcRgvHi6
	 Bg71U5MIOlC8vbXJ57DPtADuCLlo4BuBsPmu5Wdv3J0QtD6DzkTV/XLW35PGY3l6qi
	 4e3fQcnE/3IZM0VkOVnV+bIaxkSK8Xq/9MnQFwK6KMpmX0V7XU6MUVRbo9HQYcAyUB
	 iwG6ESX2MfNcEp99yI+yVcEGwGLn03VO9wp6ylrWLBLoIIVnMSbeCMKKxLvQSypxaY
	 9mB5oGbTUr0ydBA7MtXMiemSg0kZtEEMc9RrDU5gEmEaRIowSXIQzTNgLidyM3yRdC
	 4+qsjBGhpHK7Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r8n09grW9HzU; Tue, 25 Jul 2023 12:25:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 093A640169;
	Tue, 25 Jul 2023 12:25:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 093A640169
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8569A1BF48D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 12:25:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5B0F84185E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 12:25:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5B0F84185E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dj3KSL6_iwsR for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Jul 2023 12:25:18 +0000 (UTC)
Received: from NAM02-BN1-obe.outbound.protection.outlook.com
 (mail-bn1nam02on2114.outbound.protection.outlook.com [40.107.212.114])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D6AFA408C5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 12:25:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D6AFA408C5
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FP3cwmbuslGCzYXqBJ9d4Cb2MO9D/VOwK6fOqCKdsYNg1g42SR4inPTPozv7yGSNBHiihadMhLzKpxSBF3EjpOYFI9fhnsanCoPrYJFihatwjxpDFGKiMGMk8I34EsV1aLl2PVes3Txm+aXJ9ML4Qr0WuQpSzQbVlFUtqC8ytVTlzaDgexZrMpiXubwDZd5NTpbMotXqN4CAqX5nhJLDx4FUeALRaqyOsbKbTKrWrdavzcONSbbgkKTrdkLzjmWyAltBC9iTgcuV2FIfeX5cagnwFx7YmzbewAiVXc1ssBeyiRuD/c7Y5TGs267Mi7Gu03KmgS766OTA9QZBOTALcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VFekofBM6N8PaJ/9U2IIicSGkz96f/z4bYPLhmd9G8E=;
 b=SNfkFyc0wJNn3BP7sH0LkuuerhQ5ywduINSNULhuW6vP1Qh4SGnbFL44S6bPsa0hVb5LWB+u+slILG+zzV7VNomaE/iPVx7/NoxOTDmBQAnCQHUyErKWfGn6XPO6UZI4taDsVVkKQmbbjaDJ04PhDvdBytH4a1gqb0DWz2jfeUEKe8zxAFJiUf8ITg/AKnJoM6QYokgLFGUeNMDLsPuRQMwjt8vDSSnTi8/LdyC3qC72sxcyK8p9HlFd6upx5+g3K0GifhrrLJNoxUIYqxfbU0vsCWfzvlW6bP5YIW4mZzD51kwoFvlyf82MXuU7WtEbkNC3FHSTWeJ3z9IF50gFTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by SA3PR13MB6490.namprd13.prod.outlook.com (2603:10b6:806:380::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.33; Tue, 25 Jul
 2023 12:25:15 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::fde7:9821:f2d9:101d]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::fde7:9821:f2d9:101d%7]) with mapi id 15.20.6609.032; Tue, 25 Jul 2023
 12:25:15 +0000
Date: Tue, 25 Jul 2023 14:25:02 +0200
From: Simon Horman <simon.horman@corigine.com>
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Message-ID: <ZL++xYriOfc2V6Fb@corigine.com>
References: <20230724094319.57359-1-jedrzej.jagielski@intel.com>
Content-Disposition: inline
In-Reply-To: <20230724094319.57359-1-jedrzej.jagielski@intel.com>
X-ClientProxiedBy: AM0PR02CA0212.eurprd02.prod.outlook.com
 (2603:10a6:20b:28f::19) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|SA3PR13MB6490:EE_
X-MS-Office365-Filtering-Correlation-Id: d2ea13f7-caa0-4072-6b6e-08db8d0a3331
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: C1wQR+lUJTpsm4R21zMPuILtn6Zv7TX+zHmgErToFlYweKP1vfwDI/KpXmeQVN3/9q7H6RGW+oxsFi0GXXAXBtkS4Rw4YzSIGjkRqLep1Fcwgz7XdXw5Iix3wqVrj6f367Fe6y3EcxOi0RjSr9aFmnkPSlt4qEcQxFF60uruBN9cQw3xwpapUGbK2g+seXpSPsmA3nTzVi4LPFJS136vYdLu4AyiD/5m+P2ZtQYz/18eQMVJCvKAeJUPB1TJkrFHOdreOAFIrCyfUSxhBoOKxFf5k2nn8akLh5HK/XCdKZuGAIF79cmZ7wsOKSw55MoxHBcX0A9PbA00XvvgNRinHvT1CMkcNZZYj+gzX1PcNTdJzscamycfFoLqnS4edMAD90hkk3BN4ko01eqcm1gi0pZP8rG90NbwbJqmvGe2zKr3EyA7mEm3Fo4IQWApc2fIjoqe+fH+Lnw//a7PvAWhv973Z3F7Yz48ocYwzj6fgI+XxNF64r/2APQISFAxnKlnw3VgQm3KT4gPkebyNTnkPQyXHzj1PmufarRP/pvkd2q5HqI0BOgV/rR37o0fTXW93NkurpqqthdXkq9GDH9cbSV2D+o/Yqgg9DnDNMLP4xw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(376002)(396003)(346002)(39840400004)(366004)(136003)(451199021)(36756003)(44832011)(41300700001)(5660300002)(8676002)(8936002)(38100700002)(2906002)(2616005)(478600001)(316002)(6666004)(6486002)(86362001)(186003)(6506007)(6512007)(66556008)(4326008)(66476007)(6916009)(66946007)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?//yA2tXCNhEz663ioV+2u8xRc9lsfxpY1ez18zafX6J49eMFVInAH1GS5ixV?=
 =?us-ascii?Q?HoTRJKJxp5DChZZUlV86rsv0P7MDn8KCws/Gc3pC49LTTFQrekxKjlX0gt4+?=
 =?us-ascii?Q?so4Nyb7pzE7Ovn3BwgdFjbZuTAWgwYkWLMZCyZpbd4a+oNFSx5URKIE0Iq0+?=
 =?us-ascii?Q?q0xR4YyDk4OKIONVIfrpjvJq2rjsI8aKqbFHix2L6fBB3onL2aerIKXfi9e0?=
 =?us-ascii?Q?wpYpm/qKdt1Z//Sx6W3rmaFR5Sn0ikGl3tKqlTk9p2CoRs98jWm1FvZeE0E7?=
 =?us-ascii?Q?XzKwnQe0fGnmm6liNNzd5Ggn5xTpE755gSK54OVJKhc4YEvSaC5KtksdsZUd?=
 =?us-ascii?Q?dudN9jfnZ7ou9m8+Ofj3HkPJNZPQhVUTqssDdSZOD6gsU9TQj7iZmOZDCr2r?=
 =?us-ascii?Q?VloB/iO73i1HHpEVvyxncR8uiP+jlb0s7xvemfKAUnB50KdHtSivy8sv2Vkb?=
 =?us-ascii?Q?XD/zAT835S2C4lL1rFZGeu7diD9jMmPJ/PG3Da5PmNyHRQvfQhKymk8scSO3?=
 =?us-ascii?Q?Fx1nfTSIUCJWfaqWJ5mL5bx0B55wobRzisiwG3SomKHycjLn6KoVJYesv7Wd?=
 =?us-ascii?Q?uIPXqqzlKrOdoImdv4YPs27A7Hmde4Modmq4biDu4+371DpxkclSc8ho9S3L?=
 =?us-ascii?Q?2QrTxghprV+ZYkf18dLuIA2AyB8RzjU5tdBfHDWE7dyIrKx5HeFWCzIp5jYZ?=
 =?us-ascii?Q?gASxY79ULo1hDqceNLZ+wxzYd68V2sHwwqDpbV5kzkkZOXPYumhs380p4DhM?=
 =?us-ascii?Q?neuzojxEguzyh3Qa0OEM9B7WJq8P9yI5S+DuwqfniiP4k8ZBtP0PWxn362zn?=
 =?us-ascii?Q?sgDt/S8ypdd/e3EhG6AldeTNY6Kei88WHr6ay90GKtxyGnkCRQ7r9jNZEdZN?=
 =?us-ascii?Q?tHr1YJXfCy1lpkTuRPw16N9jt0DpcPbtZ1ERo3UGMxEpGG0Dmq3fwf8W4K4L?=
 =?us-ascii?Q?NVa8oH7K4mwtTEBig8FSzsKH90CS7fOZlqI26pqmRbggCC+jGctxf94ZTH66?=
 =?us-ascii?Q?dXNuFjyRBnweqgVoSXfDsvIxsdS2iq+HIST3MumbVuVyHGk6QbkDCQ6P1/xj?=
 =?us-ascii?Q?1KFWbeEcyLKhNqcGIOE/mqG1OkmLwCcoOg5MFyx4cFCux/UcxSUH5jfEbUK9?=
 =?us-ascii?Q?pRwm2k68UCsw4n2zWPe93x+Z5Gft2IbG3sFwuliV+FlUxxCzYPjDzPrT03N/?=
 =?us-ascii?Q?E94EkVXPLbkN6wiJU+VaniTIZ1Jjiq3aQIbTyy9+wmW4duMUkXlzgQ/b4yx5?=
 =?us-ascii?Q?jkXzicfMTUpjMbAIRA8qY+8ewouexYeMFjy5Ceq2e5Tyq+GTTH0pEDV/kLmy?=
 =?us-ascii?Q?yOaoXXoqCZHkFClh/WnB8dGG4IlqctPRwNt6Ex5uXUGmKS11qIAZLO7VsAH4?=
 =?us-ascii?Q?6TPfOgX+TGW86dDjNYvrTjEPAFLHeFisze/DLB8iOlF1evBHZH/7umv3iwpS?=
 =?us-ascii?Q?WXqqRdhoMgCFMB549RkohHHPzPv4OCwyJdGz2IvaJ8tmbZc7n18JZy1APAyp?=
 =?us-ascii?Q?pFgKySgeIUlVzH4w34NgV7MxWFygWO3/DMnxFKIrzxR0geidGkkso0hmqE7U?=
 =?us-ascii?Q?lVs9pJ7CS+FGLbW0q1I+aymWGltp56qm0QDn/TzlsGg84cYLLuPI6AxD21jk?=
 =?us-ascii?Q?QFnNF7XYm7UcjcwTqSREJHkgINmdE1EbG5L3/JbKeMkVcuwqTJMKy+LXzSI+?=
 =?us-ascii?Q?adflpg=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d2ea13f7-caa0-4072-6b6e-08db8d0a3331
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jul 2023 12:25:15.2239 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cxCprx9cDrGBpo7Yn2XWKEPtiGFm/TmKxPZBb96vtD5qNKi9KOssYELg4/MdiPNOfrimZfbN3s+jF28CyUYz9rxg7Z9mB++5J9VFJUwOD/0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR13MB6490
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VFekofBM6N8PaJ/9U2IIicSGkz96f/z4bYPLhmd9G8E=;
 b=LvkXU9paxxVGD3dOkKzpNrlP73ieYeZ7MvUNl62dywdf7DZtKkQFRhD83TbO165mNJwRtyQ1llJUfof7yTYHx1a+l7bqBWq3j0ReTHnMTp0eOZUeCHQj7rDGQIeJzZGYyRxjbpq96kdo8LibCVwVwL58Hu4g7Ki/xOtttOc362A=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=LvkXU9pa
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] i40e: Clear stats after
 deleting tc
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
Cc: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Jul 24, 2023 at 11:43:19AM +0200, Jedrzej Jagielski wrote:
> From: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
> 
> There was an issue with ethtool stats that
> have not been cleared after tc had been deleted.

I think it would be good to elaborate on what the issue is,
perhaps with an example. I think this should be added to
the patch description.

> Fix this by resetting stats after deleting tc
> by calling i40e_vsi_reset_stats() function after
> distroying qdisc.
> 
> Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 29ad1797adce..6f604bfe7437 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -5885,6 +5885,11 @@ static int i40e_vsi_config_tc(struct i40e_vsi *vsi, u8 enabled_tc)
>  
>  	/* Update the netdev TC setup */
>  	i40e_vsi_config_netdev_tc(vsi, enabled_tc);
> +
> +	/* After distroying qdisc reset all stats of the vsi */

nit: distroying -> destroying

> +	if (!vsi->mqprio_qopt.qopt.hw)
> +		i40e_vsi_reset_stats(vsi);
> +
>  out:
>  	return ret;
>  }

-- 
pw-bot: changes-requested
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
