Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3808D4C4A58
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Feb 2022 17:16:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C9F2E415B9;
	Fri, 25 Feb 2022 16:16:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yxHUKMNh89j0; Fri, 25 Feb 2022 16:16:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DECEC408EC;
	Fri, 25 Feb 2022 16:16:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2F8171BF2FB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Feb 2022 16:16:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1D5276129D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Feb 2022 16:16:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oy6Hl_2tKbcd for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Feb 2022 16:16:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6A13F6129C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Feb 2022 16:16:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645805772; x=1677341772;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QAXitd0367+o4PrRM3BUetCUznPwnW5Ma7DMhdo3+bY=;
 b=Nzsd2KhELGYv0zYUA+zh/kptaUzuatL9XOK26NLkpTnthJ0YSwpHNX7r
 bIvQloqUu0WAsbR06+jVgN+Y27uHP/n3ppICldqEtFpaB+FfqfpbmYqVI
 UzIv/wLcDvemsvPZkeIr5xA/MmVvzeeMEPzu3H91WYA2m222/nkeHh7F4
 Irfoztybp0EcucTcKHDvXXUq+jHFNYz4U5a+QJaqGYu3n+kf5eoluYZjL
 6z4PB3Rt76G9sPdXuhlyBGsZ1j698IAQim5D387M2TR3qQb+ep1TcT9Ru
 vM0QN80LA0vkT/lQLvl/xSpb5ynYIH32HTP7vPAgtn4Mu2Qf8BXxH+Dng A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10268"; a="236032099"
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="236032099"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 08:15:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="628888667"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 25 Feb 2022 08:15:56 -0800
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Fri, 25 Feb 2022 08:15:56 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Fri, 25 Feb 2022 08:15:56 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Fri, 25 Feb 2022 08:15:56 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.106)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 25 Feb 2022 08:15:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hl3ucIIrODSlBYdFyQNggKN7YWbaDH0jD1WYCUOR/mXMK0fiatVhwLmbWgc/Ewpj2fOV8aCOd4NcnXa+b5LS4OGOzN8MOfxXf/ArJ4O8v8Dx5c7thjOy/PD+QP1EF81x7En3zZClseIuSDVlx7sbwdo1k4VbStjXCN0lJXmRMP8lwaB793bjqiKvdeUIS7CPrat35BSQ2Ok/l8P9y0pFPWFhdtoVTu4AVPbtjt7LLMkdjHTkSFmIwzigThxYJOZtUHp2kz/US4OU1tNPITCnorHXeMZQ+PoyrCjCg0qou83ichGf8pEwriIA4dBMQssF+a56YJg5OHfsoUxa9trM/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XVk7ZaeyiX69SKzbA0nQZHfqNzY1cy7M/FruMRV34rk=;
 b=GTgTFtYVFeLdOZ9gJZVNwKgXDa/AOm11Pyve1BRa5potupqc7Kl7OL0W8hj9RWFtXfQv4nLWR8Xf135lZacrLBGydiBdaoxgaQIA6mNvFdhqrCFMY3AA+BTXvK219liFMUspAX7eEIUcJDET45UUxy9vmZYVO7Eql1prbAa60VVLsBuaxhUzgfiWtQsbVaSr6XczC48zqt7KyQcUW5MhUDY59n8/gWw3c/TsXCT1Kw8v4OXKUdBVjfRv7mofNpBFsUMSf03qRgHAcvFOws+0nXZ88b/lmVtQhUpjdcB8tGx6FclecG8e/mvJxOCeonY7wlmyL+m9uOE692PNhIkU2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com (2603:10b6:a03:3ab::13)
 by CH0PR11MB5721.namprd11.prod.outlook.com (2603:10b6:610:112::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.23; Fri, 25 Feb
 2022 16:15:49 +0000
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0]) by SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0%8]) with mapi id 15.20.5017.026; Fri, 25 Feb 2022
 16:15:49 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1 7/8] iavf: Fix missing check for
 running netdev
Thread-Index: AQHYKLKcEHYWUwcZ3kSOIk4GbDBSu6ykdG8Q
Date: Fri, 25 Feb 2022 16:15:48 +0000
Message-ID: <SJ0PR11MB56293A7F398696099FE72299AB3E9@SJ0PR11MB5629.namprd11.prod.outlook.com>
References: <20220223123843.30728-1-mateusz.palczewski@intel.com>
In-Reply-To: <20220223123843.30728-1-mateusz.palczewski@intel.com>
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
x-ms-office365-filtering-correlation-id: 47ae0c32-0717-42c8-ad46-08d9f87a161b
x-ms-traffictypediagnostic: CH0PR11MB5721:EE_
x-microsoft-antispam-prvs: <CH0PR11MB5721E79B860EAC57341527A9AB3E9@CH0PR11MB5721.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xapyfQoSSfxyeRnB/tVir6jvtfwtxOmLrCxNtFxeJ/MefotbdTm/ji1U0OeeKnqhrvBIF/yYMy5Q4/9KPNyTDS71iZ18rE4WSgBFJGVD/0tLUqll7599kFKPjuGMJVt8LTs9WV3G7sW0BYAtQYEoYkk6xxOPR5QkqpVkEuIDpqbdH8Onza1vWF6IaSYYueX7ulh1WVv4/bdYh1BMdvOLn238Hfco/sW1n2rEVzAJg+XrBk+IMwlkQzVm0vIkIYDciYRBk0oQTz8zp4RJ0Kfev5kbxK+NKkAm8Q6lcCD86McMln24LWhsMtHSousUCDW77OjxS7VM8oh7M6/kdG1wKRWj9LSCnPNsvWOns7O5/U5MeJJdISYevZkkly+N9yIUnVydUL4Zczs2sE1LxwSIKmJorwleDYlpKLZDd9zDw37ni28UW6upnVyYBodKfEUCkBmoHdjIe4Ek72NBo9oC8m4WlCi3dboJ4RziaymW7d5WCRkY5QyrK1VJdizNX1ge1Ha7veThcDGKGPqIbcLZMUGW7jw4Xqy5BjhHfKZrXZp/E1UP7EP4jlfyEAc+J+DwT3vV0s9/8eB8dwkiCWbQShnCLr77o5bx9fqEGfsC+KjIhEENroEgn+4LAWl3VpOqX9C74MMf5h8tVuSlAa+qemt/Z0RLlHKJxLuqqi/eH/BtT2gup/jlNYtQLCSLvTC8DvC8JDtE72DuhSJV3TAvzg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5629.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(9686003)(38100700002)(83380400001)(7696005)(6506007)(53546011)(2906002)(38070700005)(71200400001)(86362001)(122000001)(508600001)(52536014)(33656002)(82960400001)(5660300002)(8936002)(26005)(186003)(107886003)(316002)(55016003)(110136005)(54906003)(66556008)(64756008)(66476007)(76116006)(8676002)(66446008)(4326008)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?IYjmhTWEFt5kvFP/oe+bVnLmtSPjO+VGZLo7AcSbzekmPjpAD354daXdHED2?=
 =?us-ascii?Q?piKW7fpJ4hXPy59u+DS/eccwojjSkwKPV8ud6vGmz0LdvEW3eJxvoUGucGJU?=
 =?us-ascii?Q?DcjXOzz7kGL4QtLUjG0h6ZR5QZdeUiZheZPt3ClhUyBkBezK3mSF1hUgCE38?=
 =?us-ascii?Q?FiaBn4cFnwBXruNekLcDijh+F2F+KOumrlUGZFLXPjWiMxfkORI+w/rahc/R?=
 =?us-ascii?Q?esExUX1tr+cIPGWi4CyWhTgTn2idaXWtxe8YwlGlzGiWSPp0g2c7eBNaoIo0?=
 =?us-ascii?Q?HWC4/TOPwZZ5OUE46bLhIo6HKOuPVyAJg1YFxo1GDt7ZUkuZ1S5QwpzdcCQU?=
 =?us-ascii?Q?k4Sq5DGi4IAmCCzG+KqB3PeK1UOVMc4hakT28rEs360v3Eep+5xIJnPNN1b+?=
 =?us-ascii?Q?VApiUrZzZRU5EDsBwYVzzw/FTrdZP2/e2Z+HIHxRa0ZdqylQ13pTZX9nxoL5?=
 =?us-ascii?Q?/vlR0dKxrInxrKPRSjO+UlgQRxGwPCGOI7ZqXKfnz0MHjohU/qffHupZHnV0?=
 =?us-ascii?Q?QOZfGHoGZk4KuRj0J4NoFnrV50djLARZzxgRal0xIIoQtRzNKjDkFrwreTxD?=
 =?us-ascii?Q?8h4k8r21PbJ7YRElKJ5xC9Q9wGdO1HpmcK8nxnbxjBUpPFwuvi+kI70xmpLe?=
 =?us-ascii?Q?xQulF32qlrfGaL4aQ/fT7BbHV9jBWzSIFoRSoNNPKnAGW4AlcD35b/lYqx8L?=
 =?us-ascii?Q?DsR4bYLn5Cm2S7Hpk8rTiZKr6qLUVI1ym+bgF8TirOQkAWkmgZwAgy78fgbw?=
 =?us-ascii?Q?xHA4ClYjF2wL5lOQE6nRlz0q50a+c9+UJk+7fEpmLDI17pcBnz1S8bj4/Slp?=
 =?us-ascii?Q?UBXcIy6UUVoeZoHqiWPa2iEcCaOUmZJdmR+4PK2A5ak84PVfvy8UNqG/ZD6l?=
 =?us-ascii?Q?kELXHjRlYXU0/lPJP9LtYVkCqaUhfk4Pi0D6jpRVfdYS7UD9+g0C0Sa/VS07?=
 =?us-ascii?Q?xGRc/GylD0q3Jd2uobSyIG7SsVZS6h6MU54BMOlk6elzzSOqy/uQDG6uI51L?=
 =?us-ascii?Q?ZIUoR9e3oCg6CnUXsyY04J65OW7D6DY7Gczxpv5DcqdFhlBcDvZyJAKdePDQ?=
 =?us-ascii?Q?yprODa2jjqg9ldYsnTs/WGtlRwNFp/jybj/NTCcocd/nIEsF9rfIHU+VncxM?=
 =?us-ascii?Q?26bh5Vrnyt2JucLR2QprRxSMNmf90/+HXvd+JRW+w1Q1BL9UzMBGArW3puhG?=
 =?us-ascii?Q?6qJeWCsvXAJXIcZJHEC2CrraUSEhHFpDCaB2pGD8aI8GIapjrmprto7fHLKV?=
 =?us-ascii?Q?Jj/91sAqC5Jt7mOahifhmMmBYKqOigGOlBY2iena8W50VspwaMiIfRyE0bHC?=
 =?us-ascii?Q?Q5fNPD3u6czSjwtIhRTEZKpd5xW8aI7L1tbhtj/VnMmrIpbliXZy6AsYl9sZ?=
 =?us-ascii?Q?PIuad01ClR1WiNKMxniU3ITSYnYy/rViO5C6i2mF+HlNMT+V7B48w1FtU+f+?=
 =?us-ascii?Q?jx/+GH3M0pMRkI71nOFmOiFvYKS3Z3WhwlaZYTRWaqKvus4DDP4dw++7WdOV?=
 =?us-ascii?Q?qh5ZB0QlRYRu09HX/1clBF3v4ua3l7Kaj7cNgWx7pPMhXzQBJuyIMCMTyHre?=
 =?us-ascii?Q?a7h+jehzOqccQbuZB+NeezMgrEIyDvBUQD684NPYxwHvYRDRE+a5SMrj9mbi?=
 =?us-ascii?Q?nndT6roImkRwFqfyLdPIJwvBMGICtYK5C30nGejik0jhyH8v3FUEkm221VrP?=
 =?us-ascii?Q?FsS8mQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5629.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 47ae0c32-0717-42c8-ad46-08d9f87a161b
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Feb 2022 16:15:48.9622 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZfzptJd8ZjZEb1tQCCvkzhIjoJPhruaQCWMDUF/iJl/MjNyzsGzCCaLjgdN/zW6wXMUoSRnJtisVTs/6ANIg47PT08/MriknAvGBmfqotoQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5721
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1 7/8] iavf: Fix missing check
 for running netdev
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
Cc: "Laba, SlawomirX" <slawomirx.laba@intel.com>, "Burra,
 Phani R" <phani.r.burra@intel.com>, "Palczewski,
 Mateusz" <mateusz.palczewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mateusz Palczewski
> Sent: Wednesday, February 23, 2022 1:39 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Laba, SlawomirX <slawomirx.laba@intel.com>; Burra, Phani R
> <phani.r.burra@intel.com>; Palczewski, Mateusz
> <mateusz.palczewski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1 7/8] iavf: Fix missing check for
> running netdev
> 
> From: SlawomirX Laba <slawomirx.laba@intel.com>
> 
> The driver was queueing reset_task regardless of the netdev state.
> 
> Do not queue the reset task in iavf_change_mtu if netdev is not running.
> 
> Fixes: fdd4044ffdc8 ("iavf: Remove timer for work triggering, use delaying
> work instead")
> Signed-off-by: Slawomir Laba <slawomirx.laba@intel.com>
> Signed-off-by: Phani Burra <phani.r.burra@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index da50ea3..be97ac2 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -3905,8 +3905,11 @@ static int iavf_change_mtu(struct net_device

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
