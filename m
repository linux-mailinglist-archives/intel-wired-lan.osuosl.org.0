Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 11559357809
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Apr 2021 00:56:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AF26C60DBB;
	Wed,  7 Apr 2021 22:56:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0o5OvJRZwqwh; Wed,  7 Apr 2021 22:56:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 991E360DAD;
	Wed,  7 Apr 2021 22:56:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C9C451BF48D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Apr 2021 22:56:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B808F60DB3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Apr 2021 22:56:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 957jecj4_7uk for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Apr 2021 22:56:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0C0BB60A3B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Apr 2021 22:56:30 +0000 (UTC)
IronPort-SDR: 9MT1sdP98gi1PJ3d0DlCH+2TF8SUFJkcYcBr3sy0hEcGkKqyIsjzOcfQSeafv4UZwZjmBY3l6L
 KRAdkpMRv4PQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9947"; a="254752332"
X-IronPort-AV: E=Sophos;i="5.82,204,1613462400"; d="scan'208";a="254752332"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2021 15:56:30 -0700
IronPort-SDR: WQ44vO8cDkkYRdusK4ujJc1PZVFMGWa6Z7ZNspIsW+cvGOrdT495JqkNSXUEvESCb/Ix+8FYJG
 B4KNTUTy1+jw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,204,1613462400"; d="scan'208";a="421923612"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 07 Apr 2021 15:56:29 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 7 Apr 2021 15:56:27 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 7 Apr 2021 15:56:26 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 7 Apr 2021 15:56:26 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 7 Apr 2021 15:56:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R1KNYHtZl9yFh2iLEweScf1bK+GKWcenIc19DyxPoP6aAzWpmrUViX37/xFl9T7dGAwSFxo1qmBlMgmgymlt1EqFhMMhIsudLCYs98Cmh4qAOMfSQo9rX0trRQZf/vZsTSkKEl197fSfNBqZ8JCNqpD2/eZc5s2+7WXbkh3wgagd8hTQvytfsNNB7wQf8iAOzuL1Nq9DUzBOEVmBg6DKZIZEWSpytWuSo6UwH3AHISjkuGrGfEPhKPVeEf2PzaUuzbPmP2GqTIdvNXylCZPTPN1LE6+okIcCNwUmUqswkM/ozOYkVO3YcDDt/na1c860bMQwIooTpueGkFH2V52v7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zUzh6eTKgLptrvlyxbO1UZN4+Y+kxF9LL4Vel6tLwy8=;
 b=NQXLHnTP2QoeJjeSgbxTo+nF2qJMEqs8eZAZNQyZg6Ol5qkrNbgGfeSjfTs7IPxqS9uaep8y88+uYb47eqOddH8dw4FnxGlQu3zt4/LMd/Wk2oVzZPChB6xg/6Euj2r9ScTkZuJHFVdVaDGIoikWKhSiU3u/NFKRLuTW8sakgvZM8rvPPzmvWiJlEMWxUbEYhF8sm7i+BSpkUwVRYus2i+ildg9o8lm/QVhE18o2/mYkh+1p5d1tvt5GOviU2opX07t2w/F4Ki2IiPtHRcrQdb+4mLeQyDjAuezEY9/BZJfHWCoVuotMFNaK1rlo2dDKEtt96w3BjP8SYNYMKmE2rg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zUzh6eTKgLptrvlyxbO1UZN4+Y+kxF9LL4Vel6tLwy8=;
 b=scp0XPqz1AtwhmWDgCjtURV8tBlXZLW5YMMuwd3BNnKkzl7nSooHken5qGkm3G+RDvGobQpCdE9GKVkvOMSRBNMsvnwUT0b9XZVm4nJKY2+ZYLRIWU2veUep/V0t3Jd4p4PMdcYxtMaFVm5CpKjQAaHR+d/mDDjQqwumWuQmexw=
Received: from MW3PR11MB4748.namprd11.prod.outlook.com (2603:10b6:303:2e::9)
 by MW3PR11MB4667.namprd11.prod.outlook.com (2603:10b6:303:53::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4020.17; Wed, 7 Apr
 2021 22:56:25 +0000
Received: from MW3PR11MB4748.namprd11.prod.outlook.com
 ([fe80::a995:ea7a:29cf:d212]) by MW3PR11MB4748.namprd11.prod.outlook.com
 ([fe80::a995:ea7a:29cf:d212%5]) with mapi id 15.20.3999.033; Wed, 7 Apr 2021
 22:56:25 +0000
From: "Switzer, David" <david.switzer@intel.com>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] i40e: Fix sparse errors in
 i40e_txrx.c
Thread-Index: AQHXInE05mEpgIGeNkiBh8cAlnHzEKqpvWZg
Date: Wed, 7 Apr 2021 22:56:25 +0000
Message-ID: <MW3PR11MB474843952B9F0BDDC23FE123EB759@MW3PR11MB4748.namprd11.prod.outlook.com>
References: <20210326184343.133396-1-arkadiusz.kubalewski@intel.com>
In-Reply-To: <20210326184343.133396-1-arkadiusz.kubalewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [50.38.40.205]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8f9b841c-f09e-4300-f4b1-08d8fa185f06
x-ms-traffictypediagnostic: MW3PR11MB4667:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MW3PR11MB4667CF88BA478E2800A1CC1BEB759@MW3PR11MB4667.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qoA1hbgC+BMEj8ou1i0oZq17aqc/S5YQ9hOm01dX2L+pRm5c9D/v6Cgvnrzj/4+KBuGOOc0gnr1D93CNjT2Ml+UVMOSv2JgOQyBklsW44+fxMVtcLxixizWJ02f8D9KGrvb37JurElVS1ZiyjC60dQ7zFoqx8F/xng1r2rozRhghgOSjRP2EnCbQ8osPbZxcwnpuBulAgTx+7Llmaw9DhDqVRgMgjc3TdM8FQ3olmUaMBUSy6B0m5gjgIv81cvV3NzMzcEAvJctoZRfK0ubS6QFeBbQK/DhPk/IxYkWRuPdNeG6IWBzv6UX90MKo85Qftoqvu88tApwgIEq3OVVS2juBlJTS03ZnRZNGNg/U/w8H+d1Pqe9FdrI8zi4opr0WQB37dgnXq8Txysj4h0rL98D4QqYYE+ifh40KfufWPoa07a9XKVwrTFQZlDuvwGkrffI4qP3o+zvNlelOBy8yYjcF/NUi88bXAhKsEZULSaSN7NNsjg7shG1JGKyDbyMFPk+3v5ul07XitmuFQETN20acEgjIRU5TDckJUu/ulczVEGM/0rh5posu1fZ+MDBHCKmd/flfvApELOfkLlBa9az5FyiFBHdpoQtW0TE+sMR/KctCz/6/Py7JiqKk433yKyQguhyUrkB1N3n1qFV98R2tzhxkhdGOhDN3AVSC300=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4748.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(376002)(39860400002)(346002)(366004)(396003)(76116006)(8676002)(478600001)(52536014)(6506007)(71200400001)(9686003)(5660300002)(7696005)(66946007)(2906002)(64756008)(66476007)(66446008)(66556008)(26005)(186003)(38100700001)(4326008)(83380400001)(55016002)(107886003)(33656002)(110136005)(316002)(8936002)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?lJxR5k2PTudRL5b7shp9M50rS2l9ZSK2KTdhX5r22DM5xnIKpG/HGODuBabn?=
 =?us-ascii?Q?LOkOebyEEXe7ActBfDoGCH4+/lz2kdNZ4OczQX8iUNxFVZsnet8E8NEGpKzm?=
 =?us-ascii?Q?Qb6xoCt3+2seBi/M7g6MRFwDi4MUBG3HINq558VRLGUIMxFCdq8CqgleG1rs?=
 =?us-ascii?Q?vbwH9nHp43yeTCrXdPP3QZiNnU5ZuWvslIcehaOe/N2t5sMK2x03R/zc/G69?=
 =?us-ascii?Q?IXPnCGNsE/406AinTnqHrq9x2j+GDx+CMp4SxlQqTB3Bq3OWKpN4TIMmlHFF?=
 =?us-ascii?Q?pDeYUKdLgTPKbJhb4pnIhAL+8cgw/rmz1Z23G0cSSYfj+8n/lhaAEEoTRxYC?=
 =?us-ascii?Q?o7jy7OgpM6yVh8IpBJ9OIyBj9ZjEgaJRu0TuIPAfafJrRw2eX2z/Hroe6oi9?=
 =?us-ascii?Q?CyMpRAG5KpWJvuoUWLQmj90QcElJw5/PzCX1FdWgR8VKzcKnbyW9yNOMDNu3?=
 =?us-ascii?Q?U8CKrK4CqjVuhB5DfUuuGwoYiciP0lNjPtQhSoQlh5CiU2rK+6oMEM8NWhGr?=
 =?us-ascii?Q?GKZX26nR8mH+jcPHPSoEwipK00HaFkXC7Zary2g2gYz6Ol7/awJicSTvwl12?=
 =?us-ascii?Q?g9Lg7e1YXl1wwmMvKbrutdgnIKc1s+snV9do207oWa4UCD1VJ/3W1W3K+5Ne?=
 =?us-ascii?Q?5OtCG08wARtaCE4muGaqV/pPsFtKDk1NXT4aXQha53kZ0EFtPX+RGEOdy2fI?=
 =?us-ascii?Q?DX7q4eUVu9M/as7l2LYv7x5AhP3yG2r/uwoF+oypnl6CuXGw+wQA/JWwheeR?=
 =?us-ascii?Q?VF46xdOzc8lVhqynfp2WedHpUPc9OCkWzs2+5v0gd0IV7wTMABQcpDv4xFfx?=
 =?us-ascii?Q?iFfs1fZyet21XBuFP+VZ69C3gFKtgN+uqRDSDiOfIZjkfTu3EfAurJZaQJmq?=
 =?us-ascii?Q?qscqSMXCxyknosqhgtP2F2gM/5O9atLB6PmzO68M3GRmf/EIYho+f/Uo2plR?=
 =?us-ascii?Q?xYaQEYSQQLmsVDiDv405Mhnv96MN6yPv9JkzfwGkyM0cAvstTn6ZRqn29jEt?=
 =?us-ascii?Q?OATEcylsplbB3PKDhP9UaqnyRcciFp8cCKJnTf1gOqpzTQ1yd0U0xi0vK4j/?=
 =?us-ascii?Q?Gqcwi3G9gVHbjIspgBW+uVcAdnBX+1p1M81TvmieUxi7/jGvE43T2ek0HjY1?=
 =?us-ascii?Q?1D6Po/w0K5kDEy5M7ksgEy8jTm4EubTqKfE5FP3moiwSM6HTmesfNzUukmLk?=
 =?us-ascii?Q?ZgJVqW8559D57uzj0bqyOOarUmUQzOLpA/9Xu8y35Gclwo/K7wb/bCpDpwRZ?=
 =?us-ascii?Q?ktn7Acp685X1ofVllYMxXVh3pCABMi/zPxE3AxpZgCM3HMd5HNDETLSnBCmc?=
 =?us-ascii?Q?jLM=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4748.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f9b841c-f09e-4300-f4b1-08d8fa185f06
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Apr 2021 22:56:25.1941 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oegdHydcJYXRzVIALEQKFLsNt+lFPxDjzM13tIqB1tGc4oY5Nd93T5on5iYgXmu791V/6mWZ+r003FVFbFbfuQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4667
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: Fix sparse errors in
 i40e_txrx.c
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
Cc: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Arkadiusz Kubalewski
>Sent: Friday, March 26, 2021 11:44 AM
>To: intel-wired-lan@lists.osuosl.org
>Cc: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
>Subject: [Intel-wired-lan] [PATCH net] i40e: Fix sparse errors in i40e_txrx.c
>
>Remove error handling through pointers. Instead use plain int to return value
>from i40e_run_xdp(...).
>
>Previously:
>- sparse errors were produced during compilation:
>i40e_txrx.c:2338 i40e_run_xdp() error: (-2147483647) too low for ERR_PTR
>i40e_txrx.c:2558 i40e_clean_rx_irq() error: 'skb' dereferencing possible
>ERR_PTR()
>
>- sk_buff* was used to return value, but it has never had valid pointer to sk_buff.
>Returned value was always int handeled as a pointer.
>
>Fixes: 0c8493d90b6b ("i40e: add XDP support for pass and drop actions")
>Fixes: 2e6893123830 ("i40e: split XDP_TX tail and XDP_REDIRECT map flushing")
>Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>---
> drivers/net/ethernet/intel/i40e/i40e_txrx.c | 11 +++++------
> 1 file changed, 5 insertions(+), 6 deletions(-)
>
Tested-by: Dave Switzer <david.switzer@intel.com>
 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
