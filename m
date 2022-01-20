Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 610F1494F0C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Jan 2022 14:31:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0283560F50;
	Thu, 20 Jan 2022 13:31:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZsS7zXxdKQgi; Thu, 20 Jan 2022 13:31:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EC28B60D95;
	Thu, 20 Jan 2022 13:31:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B8E7C1BF384
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jan 2022 13:31:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B36B683083
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jan 2022 13:31:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id omQZSRBMeAk9 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Jan 2022 13:31:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 06CA082965
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jan 2022 13:31:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642685485; x=1674221485;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VEh3N7d93iQjGudXZaxHfwbX+1XuLiDHtTeRNzyptW8=;
 b=A6qWT2d/ctfq3+e/P5gSnLJcn0pGe1+cufR2wbmCVGLCH7NhYyGIXGMY
 jUtIE+RSeOCK7mFkziDII9SjikjiZnNSqgWhlyAFKd4RqAti9hsW3Css2
 L82qcc8FRW8yltZqpYFuFTnNswlywFo50ErhllxpdD2OwFVnIfrPuF5f5
 4OKAsKwf+JrK7nlP02gC3D9VsuEbb7U4Hl5jPBbZKS+wR9col/pxZxBme
 AjyhAOJhFu7eE7jzoDT9GWbQRGpOFIDKRt7iykdzaA+Af7te9HqHALKnu
 dBfP3jg0EgSZ3vDfDLtZHpk1AueTtD4ZwQY3qJO0p1JM+cNk+djZ65WoM g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10232"; a="331701534"
X-IronPort-AV: E=Sophos;i="5.88,302,1635231600"; d="scan'208";a="331701534"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2022 05:31:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,302,1635231600"; d="scan'208";a="493419643"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga002.jf.intel.com with ESMTP; 20 Jan 2022 05:31:23 -0800
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 20 Jan 2022 05:31:23 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Thu, 20 Jan 2022 05:31:23 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.109)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Thu, 20 Jan 2022 05:31:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bIVfNamg3DBTV8I+SwfFpMZsY9f9RL8bxhJNB0lJrBZszxwZ9d7s6VaA5A7uEcw0xnJkyhgcuzabm0D3NKeFmzIUVTcEasnv/JDcnDstUpnEFJvTK61QeYh0FtVX8haBZO3WhVsBuuSrZKYJKwRoIKATogaTja9qXgakiLlm7GeN1oYBjngQYRip8IsquLz5tIV7WBB3R0JhgZVcyc8L+UfUVixAj+oZkktT+I0QjWKJR4C6pP+w/uRMWenR8VzHLhdEveQJ5CXE8uNdOTId2q8v5NMuxFxNx8D8PbQPTbSR9jttsPFrpUZ7KsJ5yPREWBaCbmluyj70OJmOB5XfyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MdeK/+NoPz1vUMTIfM5Pl/qkjV19nx9e0X/8h3F2TjM=;
 b=k1jI9FG89sYb8/KHFURzdfavqL5q5lmsoA582c5ZqqcaS4xJScRskZyi+XZ9X0as8QA9toN+tXOsMeHixEeFkOdZFT+akNh3EBaB/ySY97s3MtzoMV0yZUb6KSJVt814c5Lhk6GvusnlcfGchCnkAiMShF3zDzWWzTiiM1i/hlvclsbqaFYJI0Kr3g8QiFn6PNGQ6tW9KTfjEQrCjyrzXcqWwMQvG8WTZnCMeGY3Av78SpcgyAZ1dcM71Bkoi0ALxAMOwiPFBdRwlOzVdHWOGkrT6RoLqzZ8TdlaSzefzekIvd4+v3frFF4ya84xVsSohP9hpAN0snnKUfT/LsCDYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 CY4PR11MB1335.namprd11.prod.outlook.com (2603:10b6:903:26::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4909.10; Thu, 20 Jan 2022 13:31:20 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::8196:21f4:d6a7:524]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::8196:21f4:d6a7:524%5]) with mapi id 15.20.4909.008; Thu, 20 Jan 2022
 13:31:20 +0000
From: "Hassan Reza Biswas, Imam" <imam.hassan.reza.biswas@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] i40e: Fix reset bw limit when
 DCB enabled with 1 TC
Thread-Index: AQHX8NKVfZv5wskwjUO3tku4/f1yjqxsIZGA
Date: Thu, 20 Jan 2022 13:31:20 +0000
Message-ID: <DM8PR11MB5751810B63FA0850DF79DB21FE5A9@DM8PR11MB5751.namprd11.prod.outlook.com>
References: <20211214100822.5781-1-jedrzej.jagielski@intel.com>
In-Reply-To: <20211214100822.5781-1-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a65b59ca-1c1b-4e85-1891-08d9dc19254d
x-ms-traffictypediagnostic: CY4PR11MB1335:EE_
x-microsoft-antispam-prvs: <CY4PR11MB13359747064498FC040DD81DFE5A9@CY4PR11MB1335.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ge4YOGjfJQAmGRnxjLZjAW56WupX9w2Pal7WpP4NszeUASXN99mQ13pSAubj+5kB4gzMPZgJL41gTmysZ95DmeNUoK8X1TvViYHM5k9veA2YQAVfc6Pa0x5Ojxa017K5U6teoljy9rbnjEWtaHYj1YeqBOKUs1WV8y9Iasy8UrkPsF/C+YAXuIiz/HHHkKMiRYcytURFfwxIB23A8C9uisgY6bceEqY9DhV1WAAwFXTfMD2sURhVtA2IWnR8+VrIlLlKX9SMeiVeps7R4bm5/FaUUAGkevHxenQD7UGI46f0sOcugCwY2XnRyb+Qq8R76FOEu9DRWi93T/LS6BMHNKKMvZZFFnGBJ/PSrczB5POd6vMqulyfmARMtW9pMbWK2RP3khyoyhM9+Q1mipc9ri3GCvflGaxMD6Ba7X92vEvsncAXGYjv2A96W3lO4jGIo/1XH8Ym0V6fS47RGOMUMl2KDIiTHFdEk3vj8vkonjkvN9t6/b8O/aujkq6v6Sr4mKWENRM1lcBU1Rh7cPJ44YlBxLFcIpHviB5xntWygREXol1xoBMhNBbb/JFOIYwr21zcDWOPEKcB9VQc1p562tfHuljQ/irhd2aZtX7MxZpZ+QmCz7fALa/CROs6YJp8ObTrWwzyYFcoFY0M9/incnWOCSnKhkZ2cacGDWAKflZGrNRQwsGVtOzPzyQUTs/R5UkcMwkstTG4UosemMTegg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(26005)(107886003)(110136005)(71200400001)(8676002)(186003)(7696005)(2906002)(53546011)(38070700005)(66946007)(8936002)(66446008)(76116006)(6506007)(64756008)(55016003)(9686003)(66556008)(83380400001)(82960400001)(33656002)(86362001)(316002)(508600001)(4326008)(52536014)(122000001)(5660300002)(66476007)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?SN5kASZW/SKbUkg628QFBEFRa8pMRS2GcW2y0iMszMkHNu4Oqn5lkQwAHmck?=
 =?us-ascii?Q?ts3zTyXZ2sMsTDHAW+R1bYHt9H8cNDnwGdwT5M9HJ4tZCHzDOdyOck4asK51?=
 =?us-ascii?Q?ZpRYa9h2Q9BZTag5i9qn3LOWqzHw9wMIjjrNIvHb+oyeVtG1OiKXErToVC9B?=
 =?us-ascii?Q?H23T/wDpuTMdq4upM6S0wQ++/usx6ooNl2HQFaK/MF9VLwkCEut5egao70K0?=
 =?us-ascii?Q?WbNLafRaKdpx4+E2ncdMDyFhOvqZfEDrudldOOiCMU8HbKRpA6oFxy7Q4AK9?=
 =?us-ascii?Q?pONmFDEVC1obnQPU22wgAGjtv7iVG0rBFImzJZFIhIGc4fbTxjQxv9rQoYMY?=
 =?us-ascii?Q?uUAz3Bn37Q8lCJVB3E8/cv3eX+T8Qy9oN32KQYG4kOzF12aVNnx5UKtBADnE?=
 =?us-ascii?Q?y/fA54jnCZRsp7qs/rQ+6hQqr8RKRDXBPtAdBeq5yZ022uC3NPwdcKnasDrc?=
 =?us-ascii?Q?PiB5UzLA22fEAXYZj5Hw7Uq+BgAmR3JKqNiuB+2DI3eZumkaxeinW/NezYZL?=
 =?us-ascii?Q?P8hEF3ywTmUPcs3uBW6p72REbFsc2OxZ6b2atN1bFeXNx4d9/tag1Kc8Xc9Q?=
 =?us-ascii?Q?5XLnniF9Ze/MwoMRT4TMeIb65WOAtv4C0I0Uh6kbFrkImkYmzYw+0JCSQI8V?=
 =?us-ascii?Q?DTmURj3SVnJZI/udgLC6xJ3jr741T1ZswFQZuR7ipluKYgqvPvOsCt+WuC1R?=
 =?us-ascii?Q?aBcgDqRje4TSayAaCpeOecpeth+ON+1s2svtZF2OR+aTrFj2Fqaj1QBGX3ct?=
 =?us-ascii?Q?uwegc3CVCv5/Ute47kzI+rMKit88+Bmf5qP1Xvot1d6fjsQc7CFyE99WzA+X?=
 =?us-ascii?Q?ICmf5BvBHw1nSeKQGz3BmGHe4o5zjNfe86JOo0R7fpL4+BQAnV7e6dK0ycgu?=
 =?us-ascii?Q?vFe8EXSGnlJjlmb/MvxlZr9om3WjSlXVPCTsOjN+jUA7glCxvhTQk+66b0XU?=
 =?us-ascii?Q?DTNg1g7q2vwxdplzGaymC6cXo2LJDWUPCTmnjhnn6wl+Q6yHNN8q3ZvQvlHq?=
 =?us-ascii?Q?4cGzcfbsOnqQfQ6UA2/sIOY4/m5d4icQB/wmzLaD274DkFPUghwUDaMQ9DTD?=
 =?us-ascii?Q?Ezte3rKsU5h6MHTGSenM1EuAyW/UVVwnZ8DxTwof2iL3WMuLUK6DtENFsZut?=
 =?us-ascii?Q?hUmhNU7KIeFS9VKyvWFL1BtklnTytSFoYVMIQTJXkP4vcfYVNaf3qlrd+WzY?=
 =?us-ascii?Q?vZxW062j2rCdfTpebROK6DTxsCa0PIT5wOh16vcD89E78hCG4Ml2nwqrn8pY?=
 =?us-ascii?Q?o8an+V+h44DfH9I3eJutzBpfAosVUYD5NRgVk92OO7hT0s2Xr7wGVM2B8ZKI?=
 =?us-ascii?Q?uGZkJcW7PnMqoZNEtTVxteXNgCS30say1VdRUROfkPmSZtlWrbNLtMTtcnkd?=
 =?us-ascii?Q?2sxiX+DA9xWBB6+NqGFDr2jNbMaJ2TGba5eyrRUOFVFy26p/QYhylO4SePix?=
 =?us-ascii?Q?EW1kcsWQA/qr1Njccoac2V1FiXmwiwCYAkS5DIl5O+2vmRgC5WODcNMqxvGY?=
 =?us-ascii?Q?kZ9v4nPk7DLrzEho27qS7d3vvK6zuwLgkDJi9HI4zhu29ajWS/MasfrHNHbX?=
 =?us-ascii?Q?jQBtncp7Xjm1JH2knUL7UlRBX21WPNSByDhPS27jm0x4Iz5TXAX6zVrBqm7H?=
 =?us-ascii?Q?+C+9qJOYCLEE2ptNHC+NfkFTD5pwJJfSbxlaFjGBHmrOf4KMj6IBbjwpOW/3?=
 =?us-ascii?Q?bea0eVS3d0S7btxiEg0y5XcshmflqVzc2ubBlAQo6VKqemf9XlJACOq9KCNd?=
 =?us-ascii?Q?qyVOCb3knA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a65b59ca-1c1b-4e85-1891-08d9dc19254d
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jan 2022 13:31:20.6801 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WHlaTSsUYdmJwivdMuIBXxiVzeQBeWccqjo7LcZypyunv39oKiUCHWM8l/Od0agVG5COq6pvNCqNn+Kv1fHGuNEXdIepH5Z5Uxp2ANNT0eJfLAgH7xR3ULUHCIw5gyBV
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1335
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix reset bw limit when
 DCB enabled with 1 TC
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
Cc: "Dziedziuch, SylwesterX" <sylwesterx.dziedziuch@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jagielski, Jedrzej
> Sent: Tuesday, December 14, 2021 3:38 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Dziedziuch, SylwesterX <sylwesterx.dziedziuch@intel.com>; Jagielski,
> Jedrzej <jedrzej.jagielski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1] i40e: Fix reset bw limit when DCB
> enabled with 1 TC
> 
> There was an AQ error I40E_AQ_RC_EINVAL when trying to reset bw limit as
> part of bw allocation setup.
> This was caused by trying to reset bw limit with DCB enabled. Bw limit should
> not be reset when DCB is enabled. The code was relying on the pf->flags to
> check if DCB is enabled but if only 1 TC is available this flag will not be set
> even though DCB is enabled.
> Add a check for number of TC and if it is 1 don't try to reset bw limit even if
> pf->flags shows DCB as disabled.
> 
> Fixes: fa38e30ac73f ("i40e: Fix for Tx timeouts when interface is brought up if
> DCB is enabled")
> Suggested-by: Alexander Lobakin <alexandr.lobakin@intel.com> # Flatten
> the condition
> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Reviewed-by: Alexander Lobakin <alexandr.lobakin@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 12 +++++++++++-
>  1 file changed, 11 insertions(+), 1 deletion(-)
> 
Tested-by: Imam Hassan Reza Biswas (imam.hassan.reza.biswas@intel.com)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
