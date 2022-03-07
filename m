Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B394D03FB
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Mar 2022 17:22:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0114D40A81;
	Mon,  7 Mar 2022 16:22:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NWBgLijO8vLr; Mon,  7 Mar 2022 16:22:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 847F640A7A;
	Mon,  7 Mar 2022 16:22:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 818081BF36A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Mar 2022 16:22:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6F66481B84
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Mar 2022 16:22:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lVUkA2FoK3_E for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Mar 2022 16:22:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9FA638188A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Mar 2022 16:22:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646670152; x=1678206152;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Iee6F1SsHT/o0JgeITEkucwJoP8TvvPT4Ws2ncpmuBk=;
 b=OHEJ/BMlTxtz1P9m0Q1OnXHmCWYjQr0zxMDNWH9AB7Uga/cdnNi2OBvF
 yM2Si/l1OtyjY4gPuEABFJmPHV7U84DrRFfIi5aF3uiX5gFuQ3ovyLSPG
 cBgNtELx7Cm4YWjw44gmFDvE1CoEHHaSNEMkXRfdMminwxsPbAUOis68l
 sMvoJNgS+LHwTM/KiUUybSxxetI/wSoOtxPh6QWKGyrMiIFPZTxfaxx4q
 2NQur5bOkEFDCLjc14m+S7CsyHlq0QnosptXzLxVnlyFnON1G6E2NBM4C
 IZE+BI/gt2E7JBsaRcWNqzzPGOYPeDuROefxV1afnWtHkwvI6pb7AmWF9 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10279"; a="241866881"
X-IronPort-AV: E=Sophos;i="5.90,162,1643702400"; d="scan'208";a="241866881"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2022 08:19:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,162,1643702400"; d="scan'208";a="641381584"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP; 07 Mar 2022 08:19:51 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Mon, 7 Mar 2022 08:19:49 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Mon, 7 Mar 2022 08:19:49 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Mon, 7 Mar 2022 08:19:49 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Mon, 7 Mar 2022 08:19:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HhIG3kB1UP+gML7/8XkS2yBJWFsL0AX9LdZK/2yFT1nDG7/SyzZhwTcMtXmu403jx5barZqCYFOz4pMFSqfv55bAN1XZYjW47gCk+ryYx+pJe+4HkJjqDkBh45Qz5wi+y270DAKK6OTs6kUcDIKZD5kpeuAZxqj/lOsElBk4vAsoV3kiieoS9PS83z3evqrncQRs+fX/HF/tXORBZ98t2fohVXkJazPPa5s5JnFtNp0oqjFXj+ck9k3Z0sToCr5DaPaelhwUYN8R7vMPpqlf2M+VVhc9z2ZfLYXiEYWxha6ON9FAbYI2t+CJWc6swFMU3ZWXYp3IRHBLvuA92bXypA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HeEXeqn9i6Nhfa7YDOmKoNmZpjtHwm/X+Y0ByE3rUqU=;
 b=IVNwID74o8NLuz5R7H+w+WjDO6AkRbbHNalJR+6PjwLEGJ1X/oOMLw7m2z2auj12IFAk5tqE7qB/RKZ4eWzr8L3KrxaDIZIjFlGPCdKH9ho89JUKOyXdq2IqDYVhwYKfKWJTCz263cnwuj+DD310IxiZ99F1b63gYr86CHir3GLQhQvGs1gtJyDn/6J9H9o8+wJBqRyDvejW4niG/0NO3qxdBQMdhF9ueLnRy/im5Ne8nH+H3XwNOyOWo8L8lIKlH11+VisTYOeQ2RPpRK8ty66l7wp3vAxVVhQDnd4gEGwW9boW6GOoLQkYpstDr0B+QMTyj36tdlxIcV5mdurraw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 PH0PR11MB4934.namprd11.prod.outlook.com (2603:10b6:510:30::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5038.14; Mon, 7 Mar 2022 16:19:47 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::c445:1c7b:8914:7968]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::c445:1c7b:8914:7968%5]) with mapi id 15.20.5038.027; Mon, 7 Mar 2022
 16:19:47 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Mrozowicz, SlawomirX" <slawomirx.mrozowicz@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2 2/3] ixgbe: add improvement for
 MDD response functionality
Thread-Index: AQHYLVD/9a4w0QtDd0+t+YHPtGW9KKy0I6Hw
Date: Mon, 7 Mar 2022 16:19:47 +0000
Message-ID: <DM8PR11MB5621956F4325303BF72F87A9AB089@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20220301114010.2676-1-slawomirx.mrozowicz@intel.com>
 <20220301114010.2676-2-slawomirx.mrozowicz@intel.com>
In-Reply-To: <20220301114010.2676-2-slawomirx.mrozowicz@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2cb6646a-0851-42f6-7e00-08da00564c7e
x-ms-traffictypediagnostic: PH0PR11MB4934:EE_
x-microsoft-antispam-prvs: <PH0PR11MB493417EE04C83CA8D1E9217FAB089@PH0PR11MB4934.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TsLVtFBDv/AC4i+LVizp/aRI2BJyU8E0PwrQZYubAfFfscAcE44aBw3Rl3NhWzGARIkUe1+vs7H+3r1dLIFcm4ej3TQ2MltGGKaCP4g8AiJ33y+B9WbJDDunVSp2rRJ35QMHywxD+r1HgUwig1Mo51PgcxXHwzSbUM/cJ3G2zoDkoV7TatTWMtuiXf0hY6WB6y1X5yuZYYDExoqiIldjiShgWDXez31BjmWytPGFFFFv3ha5niA0lK9o34bUS0WSa/uRPmD3N1wfXCAajV56/oRZnIapi0rKwtefwMpmC5aR6oi3EPkuSsJYntT9cr59rDJCg3dtcNd8Q+Ltz6LAJ2q9kpuFqUUQ1u6L+mbQD1boW90HcAk5nalWnQQvN2LVxH0RaBwoXwsdYLPj7vZXm8q+Grc4VPBBs3s4bXeudnP0DFyh+VJ+WckQiarU9ADRA7WmkCstKEBfhCZOl34RbmUrDJtHB/nZM1+wgvN+noJRhs0Jmg7DyGePVj4U/uqxvdB0jjPxifaV3pT2zhzBRfQ3vmjUz0JhEGTzxUOiWLFouYlU7q9uimylSEsrMFQNceNoEIH+FJ5/IyIJZUF+x6gaTklIO50azY14BCeLnhzzhnv3U3NBMqBuMYxEGi5e0EpYh9+sjZgfv4tQZZlzKwaHdnfwmd3+aJNavDqwsRvk5B3lFzjTfq88hCgtUqZSSgEPj9pPUZ+Rn5faw32zYg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(2906002)(508600001)(66476007)(9686003)(38100700002)(122000001)(33656002)(26005)(186003)(53546011)(5660300002)(7696005)(52536014)(82960400001)(6506007)(107886003)(8936002)(83380400001)(86362001)(316002)(55016003)(38070700005)(71200400001)(110136005)(76116006)(4326008)(8676002)(66946007)(66446008)(64756008)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?4w9FbrW45zYwrht482/7A5qQqZHNBHRg4zZUsXUP4q7Byyt5j5e5wQ48IFG2?=
 =?us-ascii?Q?3U9XSZaUjlOCo4y4hKGufS3IAenTLgNwwkj9zlTYnwmwjlU8LZk5tYFomlmL?=
 =?us-ascii?Q?2sczV0970LDLEDImOYiECy3O9ZHtk2kqSe3yhe20WkaSvHiiGJgGVlyYfeIF?=
 =?us-ascii?Q?8d6RsqM4V7t3kP8dqAM1x99I+VuliBrb9C73DQ5r9BDYWlbziHhdT+7C8ivN?=
 =?us-ascii?Q?eS7Oi2xaYj9A214p1F7qwj9RjCk2uIxe8lX2yZVSDwlUqcEpqT3sDAu1TnWQ?=
 =?us-ascii?Q?FeppXMleA4XVi7axbAf5AVBazJygup8aY6q9dJrjlAfHqodtVaPB20pNTv6Y?=
 =?us-ascii?Q?Nx+8Bbew0gbgHAiqwIsyD14mS6XdVHd5zrYnolGbwzRgEKyWyUc1TToDHkGw?=
 =?us-ascii?Q?rNyTsvahvtJzNTpDEnfgkaib9aHLD+xVr9FwwHbAqG0XUvv7SLgIZG9XaWXe?=
 =?us-ascii?Q?3VqQhXOQfQwuQPuQgC86upXfOfPUws94OwtHk/9U3vne0e4cYmpxVBgpXUwi?=
 =?us-ascii?Q?jBzm5oPHNTfUJcw3XVopwzA0060cjU3WsG53BeVmnQK1PD5ROxxqI8Ce64P2?=
 =?us-ascii?Q?Fz+224C447VFHggTAfH5atnPwopsVHuOBqUr6c31RrLhMdNd/jKDbj1G/+1a?=
 =?us-ascii?Q?ONnYlQXesvuIKwUlJJOteYj3qKYkqWzyjL0M+HlkGB+adrqcyoAwVsrmzQGU?=
 =?us-ascii?Q?ch69/elyY54FSRSBD5pXcsn8XxEirYSvGI5Hqm1Sg7XgnqOH1CGLdu/z5FWx?=
 =?us-ascii?Q?b8NLCRM2Q6mvXEx4Y6a5HGx0O8TplhGLO1bEFDvCBf4d27Kp3r3diRmR7Vdi?=
 =?us-ascii?Q?3bk9JSlS+3I9JCSMD/UnlW2WlaPxnJ8Q1e1jbhBAWjSNIRalmy0wdNhqdL+j?=
 =?us-ascii?Q?wZmj7uHeqThq9HF3qjLJvByXJ/o3VmR407ISHAftojS9zz6FgTZObJx4EZCV?=
 =?us-ascii?Q?0i2aTbgSKGqFLJGsiSTc5vkpPxvFGYojzXAXRdaZLC5LnGCBJ3XVFdjry1iH?=
 =?us-ascii?Q?RRsxkN/X0MF70CLeQ6beYzxNcJkYT20zHot64ECxtPhnjXlaocYwShWvBXhE?=
 =?us-ascii?Q?0TXaYq6P/uRF+USVeZorrK2uX2FgsQTRJrRLyQw2dQBt+mNSQvqWq9Fn4Nkz?=
 =?us-ascii?Q?61Vpk8AsKzCfl0M3ZTQN8N12RLOEG5Di4EWumBcfF8GbkKLPnupMMXSFZ8cV?=
 =?us-ascii?Q?ZYyEOOtbP3NhGc3n8zZi1IZiZgGU6G9wTcHk2ycZl/buu1CXKJzFEBeejwNK?=
 =?us-ascii?Q?cjMQHfwJKLH7PS5/ZEmKpPLraoW/JEX6Mab1KM9Ssog6cr7kjjGDOaR//gks?=
 =?us-ascii?Q?9BWQ4tsOYPO1WjGjHp32+IT0C3KCqMNcxAN9HtLcOmCogf9ovXzZL0xjKVn6?=
 =?us-ascii?Q?GHwolP+QC227yQlL5wa6e3fRjyKV7wFXymHy5Y90cSsK086x4un9zmVqUdzk?=
 =?us-ascii?Q?wzZgJ57o84Dg6gr2oNCF/HVDLIqxQkKa0uYmLuPY9b72hjxR7jbn1sUJ1Z0f?=
 =?us-ascii?Q?FfO9PXfO87X3hujwBlIM3c2YLEJTzpQBarEbgCJaDvMlpoIUb4JgGKDt9Wkj?=
 =?us-ascii?Q?LRo3eiRztqJQWgmYsgdckHr1HcC9yJp4GhIbhj01t3SAybJJv4NyvX8/uW6l?=
 =?us-ascii?Q?uaQye44KhSTTlAA0WrsAW7axKSHPLxeV+Qj8gsQelNGMjpaPa/bhk/SWOsth?=
 =?us-ascii?Q?CDotcQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2cb6646a-0851-42f6-7e00-08da00564c7e
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Mar 2022 16:19:47.5954 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5JDjsEebJeGArGM4UF8+C15h/YVb+vnVdJOx1sdi5Kqz7fKTxgdq8IC9SX12TvWeYY6fvn3kp3+hdv9x/v6//OAW8pXCkpEvHYxwyGUrmZA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4934
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v2 2/3] ixgbe: add improvement for
 MDD response functionality
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
Cc: "Mrozowicz, SlawomirX" <slawomirx.mrozowicz@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Slawomir Mrozowicz
> Sent: Tuesday, March 1, 2022 12:40 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Mrozowicz, SlawomirX <slawomirx.mrozowicz@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v2 2/3] ixgbe: add improvement for
> MDD response functionality
> 
> The 82599 PF driver disable VF driver after a special MDD event occurs.
> Adds the option for administrators to control whether VFs are automatically
> disabled after several MDD events.
> The automatically disabling is now the default mode for 82599 PF driver, as it
> is more reliable.
> 
> This addresses CVE-2021-33061.
> 
> Signed-off-by: Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe.h      |  4 +++
>  .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  | 21 ++++++++++++++
> drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 28 ++++++++++++++++++-
>  3 files changed, 52 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> index c9bf18086d9c..921a4d977d65 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> @@ -184,6 +184,7 @@ struct vf_data_storage {

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
