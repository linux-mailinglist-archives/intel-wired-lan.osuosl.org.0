Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3218552E8A0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 May 2022 11:19:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B4E1340A38;
	Fri, 20 May 2022 09:19:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hPCmgdlqfvJG; Fri, 20 May 2022 09:19:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B94134010E;
	Fri, 20 May 2022 09:19:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 12C431BF405
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 May 2022 09:19:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F3CB660BA8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 May 2022 09:19:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=nxp.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7edVnjS1Eogp for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 May 2022 09:19:40 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
 (mail-db8eur05on2061.outbound.protection.outlook.com [40.107.20.61])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 21F3D60B93
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 May 2022 09:19:39 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UyG8YwvvVHwfW5TUQsHP1h/U97n+LAZhU4HLnhdm+lGGrTroOF8CQEXtRGrhGDom8OS/kBrNHXNRAMTOJq2f6Wdf4zJBIATSmJzIXz3G+lG0kRRUy9sh1vOD7E2uaEw0jvp70S2IJOg96P0BBO5WRJWN1A8xZx7RNFRE9ZyZANl/ygQt/fS7vGt5dAiF+xkI8TfS+niK3uG7R5XC3fWVpIiO+ZO2lgYtaJh9H+nsWRKugrJFoIQ+iRA0RhEyAGrr17brRKX7Re7ecJ1yEChKGxdaSg4MxXc21OMptcTSOa4bR1NNJwptaEPWLQ9ePfCEyjPH0Ul8up25NIcilQ2MTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KZnws+rvzKFN3Jf/0lLdICuqwSupOOzPRutfJ2aSZdo=;
 b=TCtCILo+eTBca3fIoi/Dlg+hO1+4fKB62KQ6ix9WMcnn99GFAFhRjjaOAKIKfpx4zTwd/s/g3tPhVb1XyuaFfqPFxJ99q4VR6WMeWADdjy7WSgTzxMN9jH8Mynec0whlUqnWqKez0WXjPawPGqmXMUn5VJ2MGqulVJUWif4+ihXHM+iC77N4YGLAiaauU49ITBWOrR/098KazAHSaIYk+5eIaPJLWIq3lx7LUygX8nGa3Ve7qQ0yMdEsc/QwOTdJp5CDSOtAaPoOiKqMBqrLZulKqwSHmi1/i7EX5tmGPSzlCiSufaD6ww5WZl5vZaGurEYqfDfOQyjkTGb3iTX4kw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KZnws+rvzKFN3Jf/0lLdICuqwSupOOzPRutfJ2aSZdo=;
 b=XbmYQKQhjV34L8fqkyKS9h672129BF4bdHJ4cbFMIqszgqorhCwf0PHwqvmi9o68H5h9Xufu69lwRFp3UalsrEqpGZ+N4nJJMExAi8I2A+DY+IoXuYeR7dFPmvza9Jh3e8mFChUUU2l1T7XQKmTeoH6ngCN+RMGAb4fQmJsxZNI=
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com (2603:10a6:803:55::19)
 by VI1PR0402MB3437.eurprd04.prod.outlook.com (2603:10a6:803:7::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5273.17; Fri, 20 May
 2022 09:19:37 +0000
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::fd1f:cc16:dafe:4bf5]) by VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::fd1f:cc16:dafe:4bf5%5]) with mapi id 15.20.5250.014; Fri, 20 May 2022
 09:19:37 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Thread-Topic: [PATCH net-next v5 06/11] igc: Add support for receiving errored
 frames
Thread-Index: AQHYa+ctkRAE7uPq30Sg7u9FQXTwUK0nfaQA
Date: Fri, 20 May 2022 09:19:37 +0000
Message-ID: <20220520091936.x5ci5nkkp2lm7k6l@skbuf>
References: <20220520011538.1098888-1-vinicius.gomes@intel.com>
 <20220520011538.1098888-7-vinicius.gomes@intel.com>
In-Reply-To: <20220520011538.1098888-7-vinicius.gomes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7b0db139-1f60-4b60-fd92-08da3a41dc7d
x-ms-traffictypediagnostic: VI1PR0402MB3437:EE_
x-microsoft-antispam-prvs: <VI1PR0402MB3437E8F6B8137A9D46424B8EE0D39@VI1PR0402MB3437.eurprd04.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1cWdq7ECu2nS7fzKfhxjtuozDMadKCsdDJp87jQ+7lARUuz6BElPjBOrhlshYIXdvCoVgJztrddKXCbiOBo2IyLHE63fLUPcqTpupijJAf4C28e1eKo+aSDh6j5g073UFeXieLORTUHRp5xBpQJQJtYMGb/Si2M+b7wUvLPmG7fUOMvX3xNxHGH9pdNzVm+Us7W7i6Rg+syB2yhyfsybWtzA3btteAJLJuKwPW4rwGqA9mL3Bnp6j8NWyfpn6ICfRbU/tEFRJAEg2jQuv+fsvQuRDdUKwSohSx5fUaX7tKzCYxfvPLTD9+vTvmG9FDRmEglMJz+uUV7mRVMQqPtuibkBluOnnqvdWLVc2Ju6fFuKPwj8vaeFhZF8kkwtYGzYMq4c5zDL9OMqs06Kh9IHk/Dg2gG5XvCTdFg+B1NbE57X5D/KmTtFzGQF5DOuHcaGaBPQSJIp4xsfROWZcZRwE4Xn/hMxtBHV6hhq9vF6BttUJ5aBAmZ5gW/1fXvzdhMJlIw7zdWBvDRVlEGjXC76xud8spZ9ydlT0KBHC2JYK+gyh1NiFCzLcTR7gxFTVp/WOZ0bqrLeRfSMHarT45UUhmmQXlIt4s8bCg1WBozXUAPEoWf5NDZPqulw97e91G0ESO5DMvczVzztdJ1kJqEf5YHiEzPm5eVIeVFfqVpx6CVLvCGtZLGoTjswRDbjNkZc5m6F76zPu5aZ1oiL8o41HQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR04MB5136.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(7916004)(4636009)(366004)(44832011)(6506007)(26005)(1076003)(508600001)(186003)(8936002)(5660300002)(2906002)(83380400001)(6486002)(9686003)(6512007)(71200400001)(86362001)(76116006)(122000001)(91956017)(66446008)(66556008)(54906003)(6916009)(316002)(4326008)(64756008)(66946007)(66476007)(38100700002)(33716001)(38070700005)(8676002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?CB84Qo+77pHXYjFLs1vyG81PliqYaXTE1ZByssUJA8wTAOz4weA+mIDURQqr?=
 =?us-ascii?Q?md058fJzn6k6o9lJYItF7SHzIaZ0pA8RKjd+r3giOMP7pXqF97ozkiL+q99x?=
 =?us-ascii?Q?m9cHZ2GJud7v8v1Q4itsUYprz3KR1pkFQRxCfrf2jJ1faavOARwqKKLxsR2t?=
 =?us-ascii?Q?aIxx9YywjsFUD+ZyWy3sRU5RUOz8eEacnJ418xlZJixn58ab/9LOaoquKawn?=
 =?us-ascii?Q?eGnDk1j8F5OL3K06LkeGPJvO3cpesOQ7oXI7VggFiD1l8DjPG1ZQvFuBVqOl?=
 =?us-ascii?Q?DfSTcSAgp1eUt0NBH6rYGBGrx5ykqQ+n7RK52KcEyhX7Cs5eWbEyqhJ8zdLq?=
 =?us-ascii?Q?gp4NOtFc7luQ4qcTLxl3PYyvm3GgayCKPdDGWdCSZPJo25alHDulVfGpkM4l?=
 =?us-ascii?Q?M5Mes4SA+MwbsTqsggNVfUwRPC68Fmv3nzsboMr2PxLZOogKbHd1+jbWDMLT?=
 =?us-ascii?Q?f7bJ71dmrChbggZ0My+QaoRWhKJPLp+n6Y9RC3kiOh3+1NYy7GQQOEQE8F/J?=
 =?us-ascii?Q?HrVnzGYSMSh7x/KUFaVwW+WBAI1+pym9cKTQFCK6I0x+zBN3enintCbu9Zp2?=
 =?us-ascii?Q?64WnF1xRMu6D9Z5Wg/qQfnbdmmf25CjRmHpJiGoS2Pp8XP4q2FIBDUQlZRxA?=
 =?us-ascii?Q?PvXm26FMi15aIf6EhXTOxcCW1zKQ5AJRQZpjrOa4BvbmVlzIJ1B9enXmj0aO?=
 =?us-ascii?Q?Za/icO1CK4ERnrHCxlqxP9t3tmQdQd9I0PT3UjO/3uXqkkrk5tHa42AsKzXd?=
 =?us-ascii?Q?3yecKr55juq2G/pQyzeMyHpgazs0dUxcYdoC/LGQ7d47w0YPGndusSUMOX4g?=
 =?us-ascii?Q?B0MVbp3DBaKArL2amDkB6K2QC3up9KUdLCaPqpQqn6E+cTZ2s9HnNSt5bDOb?=
 =?us-ascii?Q?XyyD0d3S31DttzHBoDX8YtZZ5TCYeOn37/Y1O+QPvXO1jT3yUMTQvvyI59+h?=
 =?us-ascii?Q?Rz+IkhTLzzc2NrY9itLXpWdSpifkEbVbMdPwCmExR+fVIWo5RLePkQ7TgVzb?=
 =?us-ascii?Q?5KfK51sqL9JQt8aE+Lp7erJLWzVqNIcrsF0XB1FPrS9a4yqVxupf/BBlOXsm?=
 =?us-ascii?Q?cF6w3VltCq5SYLsledboI09zf3ibNjhU3BBM+LaSPviLNNjeiF4EHumBsMay?=
 =?us-ascii?Q?fzM93okqAkJQkk0CZGxi4TjJFK63rlSlHfEaCF5eV1IB7NeB0r+nSxgoB7ge?=
 =?us-ascii?Q?C+3MuosdNbXtALeNY5HpkzSvjU4sHfVvTKhjfxSjh+858aGvNN62g3nNHgIX?=
 =?us-ascii?Q?Sa0M4raMPzJS435sasTm1+iXyDpFc6283SkLl4jRZ1jlb41guau1S6P3zFSA?=
 =?us-ascii?Q?I/4ka2PNnSyfJfwzJn8HGA5Bw6cNxVgJnvvy3t95YutuUOgzlLzh2LeSCQuc?=
 =?us-ascii?Q?GIXlF+mEb+oueTIWk8lp5KG7lAd0wzSX8ysADUlZcSEMJ9Rys092vWuYKKXY?=
 =?us-ascii?Q?8l/Gb4FFJPI/1H8Im89RYMknzleJlynnLNoSy7rv2uCGPa+k/WcXe1g3QnrE?=
 =?us-ascii?Q?sbxnBmZsYkJXqI9oqGAbubb+dktSCjKPq4BfrH6Alrl60HCJsNPNjxXgW2up?=
 =?us-ascii?Q?xyy50vClbeMs7KC1a2fr059UPLe63PBa943ZqJgNMx0Vrf7Kj4PbfUGZjTh1?=
 =?us-ascii?Q?15eqrf2SdDJiAjbL/ATSklnYmDOoVcM4BXEnEwfFcBR5DH+k8rVaunHiOEM0?=
 =?us-ascii?Q?doXl+zQK+0Yv5Wx7Y1L9pNjUCwgh6jTrwAXdifLYqFMzr/Zm9sr7uMtkwtzd?=
 =?us-ascii?Q?XUynFmQmY5D/rdg1T8Fr+6MqEcoAZsI=3D?=
Content-ID: <A9208C2F05E2E84C9A63DCCE4DBED2B7@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB5136.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b0db139-1f60-4b60-fd92-08da3a41dc7d
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2022 09:19:37.2407 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UmIVsY0SZnxKY2v2LIrCeNu77DDJk3znICYE9WGrQtsr1axO1Ea14dMRSaX40l6PFkpq3MMUrQkImJTZfX2atw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3437
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 06/11] igc: Add support
 for receiving errored frames
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
Cc: "jiri@resnulli.us" <jiri@resnulli.us>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Po Liu <po.liu@nxp.com>,
 "jhs@mojatatu.com" <jhs@mojatatu.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "boon.leong.ong@intel.com" <boon.leong.ong@intel.com>,
 "xiyou.wangcong@gmail.com" <xiyou.wangcong@gmail.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, May 19, 2022 at 06:15:33PM -0700, Vinicius Costa Gomes wrote:
> While developing features that require sending potencially ill formed
> frames, it is useful being able to receive them on the other side.
> 
> The driver already had all the pieces in place to support that, all
> that was missing was put the flag in the list of supported features.
> 
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> ---

Is this required to run the verification state machine in software, or
just for debugging?

>  drivers/net/ethernet/intel/igc/igc_main.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index bcbf35b32ef3..5dd7140bac82 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -6318,6 +6318,7 @@ static int igc_probe(struct pci_dev *pdev,
>  
>  	/* copy netdev features into list of user selectable features */
>  	netdev->hw_features |= NETIF_F_NTUPLE;
> +	netdev->hw_features |= NETIF_F_RXALL;
>  	netdev->hw_features |= NETIF_F_HW_VLAN_CTAG_TX;
>  	netdev->hw_features |= NETIF_F_HW_VLAN_CTAG_RX;
>  	netdev->hw_features |= netdev->features;
> -- 
> 2.35.3
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
