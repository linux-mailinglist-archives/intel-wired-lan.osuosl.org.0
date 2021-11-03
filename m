Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 89470443EBA
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Nov 2021 09:55:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0758D606A2;
	Wed,  3 Nov 2021 08:55:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kq-3Qx3d3QGQ; Wed,  3 Nov 2021 08:55:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E34506080B;
	Wed,  3 Nov 2021 08:55:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AB1B81BF315
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Nov 2021 08:55:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 97D4A401BC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Nov 2021 08:55:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S2gRK2GnD51K for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Nov 2021 08:55:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A1813400F2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Nov 2021 08:55:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10156"; a="292292379"
X-IronPort-AV: E=Sophos;i="5.87,205,1631602800"; d="scan'208";a="292292379"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2021 01:55:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,205,1631602800"; d="scan'208";a="468040759"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga002.jf.intel.com with ESMTP; 03 Nov 2021 01:55:24 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 3 Nov 2021 01:55:24 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 3 Nov 2021 01:55:23 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 3 Nov 2021 01:55:23 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 3 Nov 2021 01:55:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WimlwsVeZf7KKy+mX9RIRoPUZ4i0t9vDuBzVgXwuwvugn97OEI8AwOy72RzNe1o+qzXDcDcuaL96pXRsP4r97W+ss0/gl6IN88WWkBLl4gr50vZRGt1sy4W1mKicK2mPOVXUtNZC+13f4CUEnVV5M8Pz9sOELCAvpoSn8RR4GlbH8r6N2ltaGg+f2Nkd236ZK4Zp2rjridSzt4yOWgPg2VwSQ3nk6yImlhYPMWhgFwGZSDjNRijtjirKVLOo8Bn+frbFM/wxtySFfzoY7MM7EtYjCoe8x+1Te9FXNwZ7dbgS8DZU6/6rVh8shYS7mN/3P0nazHZZADBTYvXysajXEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Jj2PprtPFhqzmLdu8fUqFKgeeA6w40u2HSvEHK/BxAU=;
 b=dikZxR8JdZfCewCxOd+i4jcmGHXUIh3rQUbTTLHhImJ1ly+oykHlIWBQ/vAqPh9tsJ2M8x7MMJ9lKrRmzo91K7gjgOU5PHPSxd/UXrL6Erx5jBu65vdwGNwSaYlprt5zE5hAQYZFST0LD6DRbHuL/xHAmE5RGJ0/Ozvhn5taVUab5gBO9lZY7PEGCxGMWBbdf3OwSa3gqWez/zo1nk3h1ErzjC379DBsqW4uNHWjU7uWgSwpbvoNuaHItpxGrCzp5poYiN+sW5Z1OaEoqCOB3fYTShSy3VwDy8kEAl+1zmCgLoCXLCLiAK0SV38vCibU9S/2aaXZrZ1vIxOQFg0WJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Jj2PprtPFhqzmLdu8fUqFKgeeA6w40u2HSvEHK/BxAU=;
 b=mK6bOiIYwehqiUOVOoANMOyIh4ARsv/07sXdrAT3EwnbQAeM30nN9S+GlbF0jIx1KQ7/Z3nv9ksxv4lD6reWTDa9NlDf4bUTqpLjKFHXl757WRPk9965SLHxLzBGeqAFIi75FqxMxi8aE0jelE3vtonT76i0FEZBw4yprUCeeyY=
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 DM8PR11MB5591.namprd11.prod.outlook.com (2603:10b6:8:38::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4669.10; Wed, 3 Nov 2021 08:55:22 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::555a:1e2a:ce25:53ac]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::555a:1e2a:ce25:53ac%6]) with mapi id 15.20.4649.019; Wed, 3 Nov 2021
 08:55:22 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] iavf: Fix deadlock occurrence
 during resetting VF interface
Thread-Index: AQHXo8qR6ijU8soTf0yDDyc1Ax3RD6vx2U2A
Date: Wed, 3 Nov 2021 08:55:22 +0000
Message-ID: <DM8PR11MB5621CF6907354AC9BCD51915AB8C9@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20210907092540.59568-1-jedrzej.jagielski@intel.com>
In-Reply-To: <20210907092540.59568-1-jedrzej.jagielski@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 63c4df20-b571-4895-385b-08d99ea7abd9
x-ms-traffictypediagnostic: DM8PR11MB5591:
x-microsoft-antispam-prvs: <DM8PR11MB55917A9D5469C9B5A3C6D3A1AB8C9@DM8PR11MB5591.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xr06KLLnxal5VOf5f99Xd1tqpACe7gHs6epZnjQHUPK/5MUJy3ev0jwQKQfUEdv6QXpTeH+nsWuoR7b282QJn1lYIePxIH7NfRWv+oKGmKDt86ZFPP/I75h+8A5DlyLbW+Sf4xkUi8oEfyTk/gvfMcBmWsD/nMXbqaQ4coEf3g0aIgl23mdBp2GDIPjD2tL3WKYhXxHHn6GsjrzGXH9HC7/1Cf6Nd61L23jDUj/Fm1Hodg1HIZr4aV362jB5gfQrQlzxwYyxpRwsOuFjVbC/vX1VMA8PlaAWAIbKnOcZkcvtAjrv35S1Q5FnKcy3LGyIvHyBnu5ZKXqg9yKaSSeZD5h5Nsz5tHGw1CTRHrpAuKd1yZgi1YKFxCF6juzAarI5hZez/pPKUVdzJ6oUVqRMUQJcADuRVq1sGS/zsTRlKQ17CNTVhfXtxAvuNr0MaTnimxvcNv3U30D1JBIAqyIy3hahvhQXqnJAlxWSZcJWXRvcM+yyKWvq6RUQ+P0/+kG8GSBCjYBSTLN2JzdnD7aiiE80oK1B+4AcO7Bz7UgCdChCsAmVJOyNPQJAWDVlszq5OS/PRTUl53LFnfE+HHThbJ/KYh6IrJloNTYs0AnWjMd12iEYck4KeSgfXX9Rcr9dhiA0d21j7HDaFKEow31f4XU99QwJvNBVRb3lvCMFT+sGY3MeDOwTb9qqyCIO602b61PnKsw9u2dQWPneTEEQYg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(82960400001)(66476007)(66946007)(55016002)(110136005)(76116006)(7696005)(38100700002)(54906003)(8676002)(122000001)(38070700005)(64756008)(4326008)(66446008)(107886003)(66556008)(86362001)(508600001)(33656002)(71200400001)(2906002)(26005)(316002)(5660300002)(53546011)(8936002)(66574015)(186003)(52536014)(9686003)(83380400001)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?Z6Kvds4+ce2MDhdujO9AkdeQLT9vMtddz0Dpd4Dt2GU9MLOA0s4Xlww1YJ?=
 =?iso-8859-2?Q?f5DVWU6nkao4XeYudwJCZvxITDmBVN1rocVBY5wpDyNiu19TqR7g0iuBTG?=
 =?iso-8859-2?Q?t1EUClKOCRSZlqAiCT9DT3olKlgqXgSBJYGk2UY/p/3jsjObkIpLMg5Mxg?=
 =?iso-8859-2?Q?eIEKSGUDFrtzZPid/pDu/fxdlAPPKcZhXiNdMrja1nMSsH0kv//k4idVDl?=
 =?iso-8859-2?Q?b9sN0DcbXDbkTi4/EJPLUeoNKM0k6ZYp6+u7UKXwz2bXLe3a5iWG0COGyA?=
 =?iso-8859-2?Q?n8BSxqsuKRXOx4qTfRP5Cp1vSExWuWiowCdTWQmbsrpky6TGN0ORR17v65?=
 =?iso-8859-2?Q?9yvjO9KtvCJpK9RUrQ5kf419qUMrwD2uo1mf1OAJS5OPJQaEIFcPGUY/Xe?=
 =?iso-8859-2?Q?qF9+hyHeeIfPZ3PsDor85K6iT26puu9LM4ZZref6MG3b0AGvPjIhpn/nxi?=
 =?iso-8859-2?Q?86DXZG7QNhdFSGypJGVfgO5L5/oJAiFuDoI4htew8pN5OGAiTml7FkSwtm?=
 =?iso-8859-2?Q?9JvxuG9itYof4+LvKiT+Hl0ctk29f6Mhbhi3ALkNdZeqIwDpdujHE+AniU?=
 =?iso-8859-2?Q?9WlILOuHyzYqhQMIUXw72eNDnN2J9tAqi3IajwnwVEpEm3Y58ULYGIfs2a?=
 =?iso-8859-2?Q?6vQfpx80b8sVqp+YugFTwmeE1bWp1E0HpgBST4bevWXkca9D6AK7MFIFdu?=
 =?iso-8859-2?Q?s81Z8QDy3DRWXSit6AO/7+ZVwDUBijErHjXgUzNUaKMg+Pr1StWZ/082S8?=
 =?iso-8859-2?Q?7be7g56yIjl70b7SY7Whcc/T3ulKjpSenrgxNBBitJ0jMQDvdlc+Xhs8g1?=
 =?iso-8859-2?Q?wakVBbBDh2Bd2GLC/1fl3oARYzze7Vcs56813HvPT9jo1qeS/Odu7V2/eN?=
 =?iso-8859-2?Q?SrWkz3g5moG1CAr5bHQGgWB4QVAyyxN6yTZi6GHpfLltQu7yhAV1nM+VFw?=
 =?iso-8859-2?Q?Jcd4sVaiz2QpSjwy3mkzt2/V/wXiuU6q8jqYwuHLoTY1pXCDydNbVbPQd2?=
 =?iso-8859-2?Q?xSg2WXlaX9s1tNEXx7Ur+Y6boCWnYwOXPUPUK5HhIrzoJSbLJeTdm8/XWV?=
 =?iso-8859-2?Q?juQwEZClrvClXLM6fLpbyxQMhVdBViVPqKqPACf427oZs+nIknEkvtz9Ed?=
 =?iso-8859-2?Q?L4Gv1WTmRl7LllyUEYWh2j3EY84rpz8OdiThEs6+yr1ucz7hpbl3bafQxi?=
 =?iso-8859-2?Q?Jlx59X+yWv4H4AtQyg7A8qzGZCuLfeOc+Bs14470I0NrsTd9QTJYNSvu0X?=
 =?iso-8859-2?Q?+TyVfcqLAHKfvQcencBSPcC2N0PJ+7xvM+7Ky0abTEYjzfpVBaz/e0HmM0?=
 =?iso-8859-2?Q?x1BPZ4T8SXsTp4ovnzbsvI+He2PCZGc+kEN7OOD06ImOFKwql810e+/tYi?=
 =?iso-8859-2?Q?RBzeFlGyKRWpXIbNjyDzv/R0OOCTermTfMewrYufwDvntUqzeqtWb2olVf?=
 =?iso-8859-2?Q?P1dchPPQhYjbcfQ9jP8hPtok+2ZSkhPUmxhbZro9xLBLly3XOGNAYlhIMF?=
 =?iso-8859-2?Q?pD0fIh02WyH65xPuCxCUop6+BXslA4pE9UcrZosPZpn1eWlQuStmlF4B5A?=
 =?iso-8859-2?Q?5Beg++lakoquFv84KT5G/pdhri99IvHSJD/Z+SHORpdbaCCyv8D8wScR77?=
 =?iso-8859-2?Q?A8zqENVQs7W2FPrgshs+1ObQTeP2TotQY1SEXZb+GJIi0QCeQHuVccM4s0?=
 =?iso-8859-2?Q?8Nc1KelpSHNjsx+iSu8ZbeSnXduTpWroXtNz9SGzU3n8xMpg/TwhiDvd0n?=
 =?iso-8859-2?Q?LNKA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 63c4df20-b571-4895-385b-08d99ea7abd9
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Nov 2021 08:55:22.7979 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qwpl3dG90vdH1COdOezPDw5SswUxe6aFlBYj+/vi4cM5zMfjd4ZGPJVZGdC1/Xt8pTyxXUINhAWb/ji/cyOI6QoW9FvriDjpaglZN2KIZnw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5591
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] iavf: Fix deadlock occurrence
 during resetting VF interface
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
Cc: "Gawin, JaroslawX" <jaroslawx.gawin@intel.com>, "Jagielski,
 Jedrzej" <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jedrzej Jagielski
> Sent: wtorek, 7 wrze=B6nia 2021 11:26
> To: intel-wired-lan@lists.osuosl.org
> Cc: Gawin, JaroslawX <jaroslawx.gawin@intel.com>; Jagielski, Jedrzej
> <jedrzej.jagielski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1] iavf: Fix deadlock occurrence d=
uring
> resetting VF interface
> =

> System hangs if close the interface is called from the kernel during the
> interface is in resetting state.
> During resetting operation the link is closing but kernel didn't know it =
and it
> tried to close this interface again what sometimes led to deadlock.
> Inform kernel about current state of interface and turn off the flag IFF_=
UP
> when interface is closing until reset is finished.
> Previously it was most likely to hang the system when kernel (network
> manager) tried to close the interface in the same time when interface was=
 in
> resetting state because of deadlock.
> =

> Fixes: 3c8e0b989aa1 ("i40vf: don't stop me now")
> Signed-off-by: Jaroslaw Gawin <jaroslawx.gawin@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 80437ef26391..a089c0cbc26c 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -2207,6 +2207,7 @@ continue_reset:

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
