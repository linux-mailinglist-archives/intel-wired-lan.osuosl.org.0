Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 22F6F72FC3C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jun 2023 13:18:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BDCA683298;
	Wed, 14 Jun 2023 11:18:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BDCA683298
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686741491;
	bh=JAI/gyPJt34HCkAJBpLIwE6cX+j6EV/rliwaYIVxE1Y=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yr7q83D9tHgh7ruyoUDxzCn+zkv+wZIy0O7RNJl4tmtdQSuvU5gU9kWSqTcxvFRWI
	 pZZXVQNgH1y8RmdET/Qgp8f+WTUhRkP/dV8g1R4BqVYrDmMtZsT0ArChWLkcRNuLgo
	 8qjrhXYvz5rP9xqzLipfAQQBhHJhFsqs3zTTsHfr/NYi8qj3hig47gSXUKYWhuRFN6
	 h87WKQcjU2Z3XArPiFIv8b83yuivTE28I945gJav2QaTQQmliAwZ6gZLkuOVfcMDVY
	 2m9Nalnxf3JjEN2tuVBDSfSWDCe8pYlLrUBpzVURGVYT/imDyptU7wYkAzJ5pvm593
	 uORqGYva0qHLA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kbu76gwT9jRq; Wed, 14 Jun 2023 11:18:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 16ED3832D8;
	Wed, 14 Jun 2023 11:18:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 16ED3832D8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 66CFA1BF2CA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 11:18:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3D9F740C0D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 11:18:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3D9F740C0D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gzIk-JK59eFs for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jun 2023 11:18:03 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 769A84016F
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on2098.outbound.protection.outlook.com [40.107.93.98])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 769A84016F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 11:18:03 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZFK74QmetrmAh+BaUneMIZyB3MYlqBf8pV8GlM11OclBPcSzjftTSRuGM8FS8NbQnoO/APIirWyaPPRcBL/zZIAee4kb546bwrdmi+JJnkzBkaM9l4QAfRWYdKPJvHbTbPb6fHbWBYef6EJI6wt7O7pwoIUuUs9GoieCFRLpwtoCYjVpWqJslEpfk+doDWhfQOvb9/Nwb8ZEA94Ql93sUKsLndcy46WuN7djq4CdilrmqrIAgoTpFgDUs1Ca+oyfbxyFaGTrE6OVSysA7r6dhluJs1dpy2U9dTxznDna8udS0Gy3ye65WBwR366X+K+4ovV3rbmo6mY75bPFZKYuww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=875nU41+jS771E88yesPYoP8+TAxUfbxhZspZ8Ri6NA=;
 b=Do/Qlo1N/tNe1lT2wt6OuiJ8RMsIztg7lm7g7SIolDygTl3LcMkYdhuJOglzVkf4omfGpRY9CpH0xCpJlEuIakVsaCwDaB/qF/4YuKheUYPHKAnDhMXGbjxBHJTp2z2FIRWvdVtYDQf+rD+1ZaFwCs5Yu6svq6qIUNRCBS+4XagbUOaPKiN57Q6DsHae+lXmpU4p6KEXONEu/p3yG+f4vbxzFs4lFGk9MQUbLlqWlHMMEFfOkFA4X8WsnTtmhR4G3wZeoAW5PoWtwO3hqH0a1KTDyJPwSNgGVL5en1kLARWTsjaZU4Gv3+5Behh8bXSuTK6RJmaUz5/ZAYDVRNbKiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by MW5PR13MB5557.namprd13.prod.outlook.com (2603:10b6:303:195::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.44; Wed, 14 Jun
 2023 11:17:59 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::eb8f:e482:76e0:fe6e]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::eb8f:e482:76e0:fe6e%4]) with mapi id 15.20.6477.028; Wed, 14 Jun 2023
 11:17:58 +0000
Date: Wed, 14 Jun 2023 13:17:52 +0200
From: Simon Horman <simon.horman@corigine.com>
To: Dave Ertman <david.m.ertman@intel.com>
Message-ID: <ZImh4NunKEpay3zu@corigine.com>
References: <20230609211626.621968-1-david.m.ertman@intel.com>
 <20230609211626.621968-3-david.m.ertman@intel.com>
Content-Disposition: inline
In-Reply-To: <20230609211626.621968-3-david.m.ertman@intel.com>
X-ClientProxiedBy: AM0PR04CA0131.eurprd04.prod.outlook.com
 (2603:10a6:208:55::36) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|MW5PR13MB5557:EE_
X-MS-Office365-Filtering-Correlation-Id: f97f5b20-13d4-48c0-d809-08db6cc9023f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Tq+wbTEgJsZgJp9NLDi7KaThQpobbCmQ4xLw2AF6v8eceXMH6CV9wppxX2RFigt/gcsf0BKtodWdIQKXG7kbMKsnDYhZZ9Y7VxejnIs/nJ+ZcDm7EXNa83i9UlIJrSSMZ+8zE3r9j+Ph6Rhmju7sUP9zR1yNCU0HQKTrSH9wjmuqlVVkMcWkVcI00nlFuyIMFSZntS/em7OBY48J7XjyhrswsobgHmI9f7BKgn2/WR1rVqU3jG4EpbDMzZ8z1VAKFEYDErlMw+pf31xnMlN9PAg/xQ4rGLZxL01znG6C1guN8cRYpJqxdEV+MkBKa4UY5g+6EGFkzzYjpVMb21FGfBiSCYRyH3+NOG65MykCkUaCh6UAIkny1sqIT/xyYFjyce7ZcYHaAc3WjUhNyowVhCyxR9qRwLPHFM0CBRvJMU/9DIiStjp2pZGvTS2LzQKOtVmqhkSmw0mVb/aiL0jpoZ+qk/fV5xJqS/vRMzLbivW7fBP2SYRqnEwoBJQ37G2gofRMCdOnjSNb17mRFDvauZvoLb5QRd6JvO8NZjUCKywKoasHObuP0Gc1YT7XbyWe
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(136003)(346002)(366004)(396003)(376002)(39840400004)(451199021)(86362001)(6486002)(8676002)(316002)(41300700001)(5660300002)(83380400001)(6512007)(38100700002)(6506007)(6666004)(44832011)(8936002)(66556008)(36756003)(66476007)(6916009)(66946007)(4326008)(478600001)(186003)(2906002)(2616005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?2XQNOcAwOA+xHi1wFhINCC4gskrpAAyUILcSvMXArFCJM1l61XIzqxQhZrMa?=
 =?us-ascii?Q?acyr+Sar4Z63HKzm/Y+fbctfAWHbBrEqReKuKXWG7plyQd+sU4hEQlUDyFKv?=
 =?us-ascii?Q?zSWLuKWwJAOf5cBmJo0wSsoPKam5OHngUKbd1OiKadkHdQjJYJvMO41ChcOz?=
 =?us-ascii?Q?JDsC6VucpYkbrFzGF4xgH4UsOIcFF6sYE8i/rpMSQQ+lwjWsZBPYoHPY0G4e?=
 =?us-ascii?Q?Vg3u65WcqLInZZMq+JVoYyrR7BXzNB5wWoVyg/KRVrBHhoNX8cxlPhnXBGHf?=
 =?us-ascii?Q?NNPJGPzx5FfeTBPxUlLHKYCM9EZtcHJNpiLCrsxdW9XvxoGkKo7iXKkR4hy/?=
 =?us-ascii?Q?ONowcx7Jq5MJvZ3GSVueHFJCpwCe0kOrXU4hRFHzD7xsvWeUkXN50KZgy/k0?=
 =?us-ascii?Q?j2A83yPXtb1ZWB0ckokqAKd5XmggiksPGJXM2s6qqrcORx3yc4i3D6Csssxb?=
 =?us-ascii?Q?sewaVc0X+VLPKLWV6yUYF1UJlBg2r/7rpk4AKgYB7Zr8REbQWMG14wCKqkcJ?=
 =?us-ascii?Q?EpI+u+nMQ3btBKnzH3CXSa+opai76LdktSoLvzddpTCVJGEnfpmB80MbeCNw?=
 =?us-ascii?Q?aggBSoPU1+R+0qJ6oGQuyn8KCG3eRVlt4iuli6OMzVLgvM0TVI2y98abnt5Z?=
 =?us-ascii?Q?TtJQGL+AU47+Tt+rMOMHfo7lrLCUl+YhRw0ud8/93sQyMm5qp27bZuhQwrf0?=
 =?us-ascii?Q?K/Id+3fW5jp2lR1n2unPLkcoyoxaNsxZOkn0HtReMf9Xd1GrQjE6cwggzg2k?=
 =?us-ascii?Q?CJsDKda9w2qBYm0+yXhvw8Zf8dazyJ9/kpmIbHXEtog4uCOHXZG6GDjyI/YI?=
 =?us-ascii?Q?PZmeEno8/HOcQbtA6G0rppOuPjPDDzZW/sAjvOnWPwSIEI4niQoYpeeYM4lu?=
 =?us-ascii?Q?s85zLECytjtt/FCqL98AO+I3/K7qHcLYb5OYLV+E/p21WvnEdxlg2sT+fGxn?=
 =?us-ascii?Q?LQIKfeY3lU+qM9eUQHHur6f6z8etNtOT4I8MYs2phWHMvhp9fTj5P63VqVLc?=
 =?us-ascii?Q?ED2SEdt5yNIaetbXtdyPnX1NEr1M9uxIt3MCTENj1PjpF1nCkO8vxBy5qN7d?=
 =?us-ascii?Q?jg03Uw/JwkZwSinGrAqWg9uzHbONFK0sKrCiCaEsddVdmEZ9c+OhNnC5Rj+s?=
 =?us-ascii?Q?8AZA13DbbJ+8dNj2lSg99bSkav5O1jB8uM9dgmWXB2sI5p4bqgSXz0n98nqG?=
 =?us-ascii?Q?QUKkuv3PtUcl2n59SirItd5+SkvsWB7ifKefNFPRS+MYMlaM4sr+tzWk66E+?=
 =?us-ascii?Q?B4I/WGtkpdDEMHbNqfKCUi4+0hU4WQSGTwe3doZApKFmuEOm/P3PZCZ1z8Nc?=
 =?us-ascii?Q?PZgSWfVQjGhPwu9tn+/nJVBd2OKAE0EPwadojoEs3JSJNskmv5+jWGna1qDc?=
 =?us-ascii?Q?MbRsZQnu22HaG2WRQ4eQDWC7yGH9S8FmzPyt6bzMtAwR7b7NAKHYNCOfbjMC?=
 =?us-ascii?Q?3IYB1x/mqd3VY5Fb1p8SxGfKWThNZC2Bf+FuEbtR3guY84h1i32BYZW+5E0W?=
 =?us-ascii?Q?fyn+a74z2mU0+MAH85U56r/hAfpL4JvGhYleEGlpqeb3jrHcxku6ej/94hfq?=
 =?us-ascii?Q?ASM2XDo3cM23+A2x2XZFSfEDPOH5lBfFgZdgQfE9uSgVlSE6rInOYU6+KU/A?=
 =?us-ascii?Q?0Tia2goaW3hw94dzBnrSSqM7+PGx5aaxGiRVkYL5oFvDOxFzrImdrCWjMyN+?=
 =?us-ascii?Q?uwqraA=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f97f5b20-13d4-48c0-d809-08db6cc9023f
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jun 2023 11:17:58.6159 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3PoOLDNUoOrL83mnSJ+0LM40YZjPS44rGdAqmxhSHeb9TstAD2sfiqTeDcg6yZAAuaAGoSzNeAV2WanLgjBQOiLP/kpJAB0ybYfAChNV4Ts=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR13MB5557
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=875nU41+jS771E88yesPYoP8+TAxUfbxhZspZ8Ri6NA=;
 b=vb/dsi0NEJCALMb8V0bGjr1N/pZAY3rtZ/2jssi+C2hL41Hmebrlks1hStZ4WW2HO/Kyg5YuEueITzMvJGzckmslU7PTFaKdXkPy7WM96qlV8U1XGcX3nL2YIbQ4Gnw7sNYs5RXUKWqg1JpyRenXw/y8ECy2vweghAvwtw/vd6A=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=vb/dsi0N
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 02/10] ice: Add driver
 support for firmware changes for LAG
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 daniel.machon@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Jun 09, 2023 at 02:16:18PM -0700, Dave Ertman wrote:

...

Hi Dave,

some minor feedback from my side.

> @@ -5576,10 +5579,18 @@ static int __init ice_module_init(void)
>  		return -ENOMEM;
>  	}
>  
> +	ice_lag_wq = alloc_ordered_workqueue("ice_lag_wq", 0);
> +	if (!ice_lag_wq) {
> +		pr_err("Failed to create LAG workqueue\n");

Is the allocation failure already logged by core code?
If so, perhaps this is unnecessary?

> +		destroy_workqueue(ice_wq);
> +		return -ENOMEM;
> +	}
> +
>  	status = pci_register_driver(&ice_driver);
>  	if (status) {
>  		pr_err("failed to register PCI driver, err %d\n", status);
>  		destroy_workqueue(ice_wq);
> +		destroy_workqueue(ice_lag_wq);
>  	}
>  
>  	return status;

As there are now a few things (more than zero) to unwind I think it would
be best to use the Kernel's idiomatic goto-based approach.

(Completely untested!)

	ice_lag_wq = alloc_ordered_workqueue("ice_lag_wq", 0);
	if (!ice_lag_wq) {
		pr_err("Failed to create LAG workqueue\n");
		status = -ENOMEM;
		goto err_destroy_ice_wq;
	}

	status = pci_register_driver(&ice_driver);
	if (status) {
		pr_err("failed to register PCI driver, err %d\n", status);
		goto err_destroy_lag_wq;
	}

	return status;

err_destroy_lag_wq:
	destroy_workqueue(ice_lag_wq);
err_destroy_ice_wq:
	destroy_workqueue(ice_wq);
	return status


> @@ -5596,6 +5607,7 @@ static void __exit ice_module_exit(void)
>  {
>  	pci_unregister_driver(&ice_driver);
>  	destroy_workqueue(ice_wq);
> +	destroy_workqueue(ice_lag_wq);
>  	pr_info("module unloaded\n");
>  }
>  module_exit(ice_module_exit);

...
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
