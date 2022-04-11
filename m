Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 155F04FB361
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Apr 2022 07:59:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 03AD440516;
	Mon, 11 Apr 2022 05:59:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KwgQmMKXfrXZ; Mon, 11 Apr 2022 05:59:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EB46740436;
	Mon, 11 Apr 2022 05:59:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8A46F1BF2B1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Apr 2022 05:58:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 76BA1408F6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Apr 2022 05:58:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gy_G8GraKLYr for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Apr 2022 05:58:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4AA44408E9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Apr 2022 05:58:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649656738; x=1681192738;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=o/qZUhPvdyvLKDvRxw6s00JA9eeZ+V1D6Ry2bLXjRf0=;
 b=R26rEkOWjnFvYdDo3SAHrxK1Gfsj5Ii3IFUaHTBEF8GPbixgNyw/bFpl
 9enytp2cIG4Yfd3Y14IBYjX3pVv0ou7nqcrrUSCchOeh9PKtR+4u69XQP
 RHfYzUf8eurOkksliRSVqcXxXSqhGb3J03C07KGXXWXhZ4vi4s9a95uYF
 Rtt0urwLGICSDm+ZDHon2ron8Bw97/X+3CC0ZNFSmC4wPWfFRaAp/trBT
 2hcQgXF5itWbb5Vg1CnqPQKJMQdPZBwxrsmHGgp2vQSTD/0iF0Z4GUK8n
 UClKiAoAEXObbTgq82Lplj9dhKzrosvb+HZkUEBuzY4SZCrOEuoiq7F5k w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10313"; a="242627399"
X-IronPort-AV: E=Sophos;i="5.90,251,1643702400"; d="scan'208";a="242627399"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2022 22:58:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,251,1643702400"; d="scan'208";a="525286588"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP; 10 Apr 2022 22:58:57 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Sun, 10 Apr 2022 22:58:56 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Sun, 10 Apr 2022 22:58:56 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Sun, 10 Apr 2022 22:58:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NWIn/wWZsRXVnV0DE/ULq8HBidWjBARZ5sOoCOxzxhPyn8c6hHj71TloT921U13WyzCWJ75aCdFSvPBbGARH1ifPrv0P53HdYgXftFzkDXq1pIlTarEgw9xvZ2HmnLMxlRR8P62XPrCbJES+ZBV0sw/5X6W+jr4vqXg3wQe35JpUCFNKriCg+iHMBPkS9L65LJyy5g9FgDWlFUA84vYGO9jH7cahEy8l1FDQbXV0Aj6lTqG6TzVQMfWzzC3KRQismlF3sIvNTmiUZypY2nEElUwrSuwyjtWq6usE6NL9OMMZqLsDPBlTQkSNThj+a33MjifBkcCEbiXunvCVmRTpJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e2BNVloGLptkcXdhrc+F+A9W2e20XRCJfwm5H3M8KRA=;
 b=QMX+jAkJ0A9Z1zF8Po+zVTv/YDyiDe59xeGcNPrnvcAMIQCLPimKZYlTHs81XtpBD9KRB96XveHm5ezNQxpAtjREgnX9UUqmppf3eH8HE83XNiJQWa4WgQXE6f1SH2zljdfN8Aco1NjpeiV79bLnYKC+Wr/PFj69qTINVpZWZRPB41LnrFXyhwIbsy8qf2AiAIU2V/ABySBsqaKZA914FGUNEawj7IfCRYmo33NFC0S/U7FkxrtgdJhgIseda+UC3rulQEB8VVC3dfDTX6KI5tXVb8qtmn9ub6d3gHzCRSEG2fsMyRejMKvGpr59Uj2f9TWAXhp4e1T2AyA2OZnYAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by DM5PR11MB1481.namprd11.prod.outlook.com (2603:10b6:4:9::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5144.29; Mon, 11 Apr 2022 05:58:55 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::c8d9:8c9:f41:8106]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::c8d9:8c9:f41:8106%6]) with mapi id 15.20.5144.029; Mon, 11 Apr 2022
 05:58:54 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: Joe Damato <jdamato@fastly.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>, "kuba@kernel.org" <kuba@kernel.org>
Thread-Topic: [intel-next v2] i40e: Add tx_stopped stat
Thread-Index: AQHYP7gfs79DQGJT5kG+q1Dktyy9MazqUryA
Date: Mon, 11 Apr 2022 05:58:54 +0000
Message-ID: <BYAPR11MB33670312EB746A347D0B43AFFCEA9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <1648151218-113215-1-git-send-email-jdamato@fastly.com>
In-Reply-To: <1648151218-113215-1-git-send-email-jdamato@fastly.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b4cc3af7-12d3-4134-7269-08da1b805c96
x-ms-traffictypediagnostic: DM5PR11MB1481:EE_
x-microsoft-antispam-prvs: <DM5PR11MB1481EB2C86DE79BF42546F82FCEA9@DM5PR11MB1481.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZykwrephQVu/VSdewjy2ur3fh5K3BVwlFLtWkGIJ7oNAOb5HVpbKispfb0RidgWxAs/iCO0nFIi6npCXurUvt7jQO1XPqVyxGuZ6E2DgIIPsN0Npjlg/s/PEL4z7U2hUUbqKf168bK6V0uLUNyCnboa7ceVVvQfuM72bOIVRMgtUUoGtBCqUUM6Qu2WLZhNuEKcwJVe01z51A4S2urIQO3v+WwJRqN76K3B3uh5xzvUmXlR4Gr09IHmvbKKswGi+1qUfHCXMmY+YqXbzuMCv9Ygh3N/Umgze2NEAdHhMLVpBcKvtxJ4pm1USqCzXTwUKZf4lFKkV3H8YidEM4cQqnb4GBPCLa28jQfLz8Z/kOjMPYJo3YwSHJx8SzzpeRLkg1Ss5JO8By8j65N9GrspUdrcQTYC3IWO0r5WIhdKzVj4UZUibkWPvo/FLluz2srdFQXZgbduHsCwO3iPmq8QqnamALY1dyPqiW1dmxHmH3Jcs/mJ/H+Y06jmM+vcMRonoQXAnqnwTCFyKW11QJCjmLYvzsVjxuGChkwry5iROqV1c7vHkIqnCuoA4A9iFDl1jv4pEgGTFLR2chX3OtHrbTW+Oyzxcay8fnGI73vF7LC2MKYz5aRzdQikyafzdZe8XV4oladH8n2rmHNKyTBXfGKFQeazVTz8KtVS9E2eM9C7ZwS7Irwq8FIq76Vh/+aIhkO541DjtJaUrZEc1GFrxGA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(5660300002)(64756008)(8676002)(66446008)(66946007)(33656002)(66556008)(76116006)(66476007)(55016003)(8936002)(508600001)(122000001)(2906002)(82960400001)(4744005)(53546011)(110136005)(83380400001)(7696005)(86362001)(9686003)(6506007)(316002)(38100700002)(52536014)(38070700005)(71200400001)(26005)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?epHpBT1w+NrJzNS0ZKPJlzv7JhgyXHcmKlBSjDTFTC0lUBX4dP8fhuQDoqKk?=
 =?us-ascii?Q?JkfdrX8pSivjfmMwa2fFOlQJm2nc40dKsdPDw5p8t4HSaxSwTVFAr8B+VvWj?=
 =?us-ascii?Q?kctqXqVdtUep786qEMsIvmOyLFzVXfH76Y/3hKD5gcCMqw997XKlqb0kyjCH?=
 =?us-ascii?Q?3k5esPBv1Wd1IfZJhieTQmhTR90ISDhkux0EmQAYR8KdZa7fTrEoKZWcP4bw?=
 =?us-ascii?Q?CA7ATukuQBmMQXviS9yaMa+PJRVNygjwZvD1WU71+KmL1dpttVmpNkHf/Wf7?=
 =?us-ascii?Q?YGtAGEgQAjHgSNH1ahgoVtQtyDL+HfuBtAyC9gq54jSw9B2i57ALAYaOzYV8?=
 =?us-ascii?Q?LbGvRMtGbcuFXaWY9nffR/xi1W6vNR/HYakjt8R/LxavMzHzETRuzkvJ8g0v?=
 =?us-ascii?Q?ElUxKfV9ZWftdG3AR3pxa4pLgYOPg3OqIcybSt+0wHssjhoYjPm2bKdbNzon?=
 =?us-ascii?Q?7asMR797vUJ05w8VQhLItzSY8gkjZeF7WzGEYzRq3sAljBhqkqEVzoAIo5j+?=
 =?us-ascii?Q?Gi9NRlzTRZbdvTFR5smIxyNTXxr0VpJbXqfY/TVI/zdylDvR5HBfMnGxoauR?=
 =?us-ascii?Q?p48UezGzTTWSy7ge/bqn16IPVVvl7rZAy8Y2uYezGlxT+pikdugy505NmKsa?=
 =?us-ascii?Q?6epaadiuZX2QLY2GmlUhmJgEMzYYJ4tJvU5+Z5iuEHWweB2H1a957iY/VveA?=
 =?us-ascii?Q?i1U1bO9TaMycgSzzpU3ckT9H8RL/Y6SKDK/2+6fnbv1XSUEmF88nuvcqZB2k?=
 =?us-ascii?Q?eJDxEZFJHiLmIx7LwG+8unaI0jaV8K1dV9xOxP4Ad3x6sC04UTuPcrzW29Fe?=
 =?us-ascii?Q?ywivoKWx2sq+KxUuYatIeSfHPn1Uqhp1anyfKaXeNMj5PK8HAE6CDsdX86Wj?=
 =?us-ascii?Q?GOm8A4V7JGZCpg2qE9Rx7bI2WdtKxkV/U+SEci/7v2gkA6T5+tTJRDpgO+IW?=
 =?us-ascii?Q?ZR2TzYA1ZXlkzv70EeJ10LDphPyaAu5rBUjhhROj+mZNyqQ2v5lXIQuB3bPD?=
 =?us-ascii?Q?Kl9uHPE+FjNZbwZNLyPY1cUFoiP7uwBKZBuRRMRfg6wQqnOlwQ8C973q7+9s?=
 =?us-ascii?Q?eZ0ILfO1Ybzsspb9Y0Yb/9T/mCYTKZDkj6TDBAWCWXUtaNvvmf6S1bxBxAS1?=
 =?us-ascii?Q?AiDOKL1H8gZ5fqZ4SMJht4yqT3RhI9g3b7SckahH5eq7ehri12Bre2TIsDo1?=
 =?us-ascii?Q?3ncIPeL/gyz9OlSVjn1IuC1ON3b8UzrOOJicKO8MOY3d1GYjFq+Yokzx6vKy?=
 =?us-ascii?Q?0vi8vd0ukRBFXGPxCVKJUVmVqvWzRNvXnC9TfDJ28PvDbMYOsV1IzeT/MnOF?=
 =?us-ascii?Q?cwjt8PpObvjgaj6F7do5CRtnaKthXYpEAF4dvgjouw5qW68eS0WHXAwlceiP?=
 =?us-ascii?Q?vRH6uwgiAIBDnXiLIX2j5g0uXCJ9tPT87XvhOpuxWbF+mMtjmnp8R5kk4y/G?=
 =?us-ascii?Q?isLqQW/v4Tys2ocgnG4XOAgVYHER6lBBEery+OgUdPukmtPMte1shGXP6f62?=
 =?us-ascii?Q?LVHXlntAv0CDZTQufMPc9YooAoSswb4JDqhsKMj4QzGqJoVnsD0iemNQr1JY?=
 =?us-ascii?Q?gGFgvmsOgcV4bLGddj6iseFmeUdMXcUBqZ1I7mPdF8dTvSuysa/g7y8pkGwy?=
 =?us-ascii?Q?ioEVoRmticukSVacIT0wkW5AEpP52nePU5/+uxuy5xRVv7BPK6OqIICpQjG2?=
 =?us-ascii?Q?S/dZhQpD5INDrVmJOy9sIOnRv0UO6Kjj/n2n/rzTULFeuV9qt38Z4Z1TmWRJ?=
 =?us-ascii?Q?B0Walx35Lw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b4cc3af7-12d3-4134-7269-08da1b805c96
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Apr 2022 05:58:54.8536 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lxp5xerY+/Fc8al7OS+TTgBRtisD+H28qhLcyIYK0RfQEg2jDF8CRqZVrjDYTo3504/B0IMWL7lp9H/MsHqHIg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1481
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [intel-next v2] i40e: Add tx_stopped stat
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Joe Damato <jdamato@fastly.com>
> Sent: Friday, March 25, 2022 1:17 AM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>; kuba@kernel.org
> Cc: Joe Damato <jdamato@fastly.com>
> Subject: [intel-next v2] i40e: Add tx_stopped stat
> 
> Track TX queue stop events and export the new stat with ethtool.
> 
> v2:
>   - also export tx_stopped via debugfs
> 
> Signed-off-by: Joe Damato <jdamato@fastly.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e.h         | 1 +
>  drivers/net/ethernet/intel/i40e/i40e_debugfs.c | 5 +++--
> drivers/net/ethernet/intel/i40e/i40e_ethtool.c | 1 +
>  drivers/net/ethernet/intel/i40e/i40e_main.c    | 4 ++++
>  drivers/net/ethernet/intel/i40e/i40e_txrx.c    | 2 ++
>  drivers/net/ethernet/intel/i40e/i40e_txrx.h    | 1 +
>  6 files changed, 12 insertions(+), 2 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
