Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B772065E4EE
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Jan 2023 06:00:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D57F8610A6;
	Thu,  5 Jan 2023 05:00:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D57F8610A6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672894849;
	bh=M2abDebjnaCSRLULrxMkMlh4pD9EBpVw+JhcDosR76E=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KihjI9YRtfWKO1f2lJvaDaabnIPNzySvItGIDGtqEF5zlS2AUOikc24GhQ/9rsigU
	 kxEEgTyfYB7HO2xurAyf/Kfqv6l7EaI49ldNJo43FzIMUFLzA5YwfAZjiGfNzrI3k8
	 tJ0aMfXVCkkJKhDZYGtU4FCAn/NPkwOaHgXE8wm4oWDd5xgNm2YneCMkGUVYkv33XX
	 6nExWwFMyr3Rawz7CuEB902nFK1nm9GqWdS6BnVjKsWDI7GqGg/9cVy8EXYXO9xK+9
	 lVckBfFxy2NpjA2u2UYcxq1Dl9j19GUnUhIShrt5PwtoVdxECH+ywh0oKTboFlN5iY
	 Jg7vmiu7KygTg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WrpE6PTzBzJ0; Thu,  5 Jan 2023 05:00:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CF50D61014;
	Thu,  5 Jan 2023 05:00:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CF50D61014
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 739CC1BF286
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Jan 2023 05:00:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 59728610A0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Jan 2023 05:00:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 59728610A0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eziFpdJxWTtK for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Jan 2023 05:00:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7079F61014
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7079F61014
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Jan 2023 05:00:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="408366930"
X-IronPort-AV: E=Sophos;i="5.96,302,1665471600"; d="scan'208";a="408366930"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2023 21:00:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="797780850"
X-IronPort-AV: E=Sophos;i="5.96,302,1665471600"; d="scan'208";a="797780850"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 04 Jan 2023 21:00:41 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 4 Jan 2023 21:00:40 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 4 Jan 2023 21:00:40 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.103)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 4 Jan 2023 21:00:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ORayL/VTwnfcqrP42Lwre0ftq4Cwg5hvlDmfjhk/eYSn0dgP7TDwV7FWmWNaKl0zfSyoYPimXio5EC9endOl/RCB43axZxVggV7+3DKea1SPnzgR5NZNnJu+9f7VPEK/VSu90PEStcuU2+JtDr+R3isijNCa+wcI3f9QlJGAoYqDwXBhBYiLNstgOQeU4wMQuqPyXAZJnUYp873vUNpjoBmwyZYjOQV9akGZP/YgWD0Qx/R30GFydd5Bkp24tLPNmUyZVk6vVv0UDRG0Zt5F/ADCrS1WMVbDVRFDw8q9QYqF4srBgghO5VbvC8f6SOvK59pnuQrKo3t4RxBMulYmMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hKfwr/N8mz3hE+t+g97GtPEDKkDddLFP57SVdJ7RrAM=;
 b=ZFTd4TKatVDivkuBbhtOZhb8K8FdvHZKguDcuwEh6stln3mmwmo9fQMwqjrolEfv4n2GehTrE5YaKPIipq6wSv5EQe0fs5fM/SqReuaxAe+QwR0tVH3jqXcRok7BExJvSuM+Yw1XS6cGUAnGgDmNLRAnA15Y72erMOJm+HhOrMJ7Tr8OuRDm5y0XhP7hxXNeX3CkNqe94Yufb3HlKIjFlyeE8VeQogzrpxvZrGJq6f9BNFu6xkq5W4SRhBg/Ppdz97eQoiWQUBknypxTjdlNkqi5KFIZ/CluCRoTa4yIvtEPIFw36lsI8rj4ChxzNxiOT9JX0Wf1RHAOyR7pDB2FCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by SJ0PR11MB4832.namprd11.prod.outlook.com (2603:10b6:a03:2dd::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Thu, 5 Jan
 2023 05:00:27 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%4]) with mapi id 15.20.5944.019; Thu, 5 Jan 2023
 05:00:27 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: Yang Yingliang <yangyingliang@huawei.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] ixgbe: fix pci device refcount
 leak
Thread-Index: AQHZBBALNVNvpTC9N0Ojz63I/woQRK6PfPuA
Date: Thu, 5 Jan 2023 05:00:27 +0000
Message-ID: <BYAPR11MB3367688EBEA65E2FB56414C0FCFA9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221129015748.2066603-1-yangyingliang@huawei.com>
In-Reply-To: <20221129015748.2066603-1-yangyingliang@huawei.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|SJ0PR11MB4832:EE_
x-ms-office365-filtering-correlation-id: 664e62c8-9ac2-415e-6f32-08daeed9c2f0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GSW5a2BV+WDoV7gtOP+1H9hBbj62VzBRdxM5AtbLQirF631Ng5/S46dpqlapXs8cXocTKWD1+yTxpxx/AzZ+hECY8Z+El95Qod2XNL0XE+aNA9i1aDtIf5zUxEuFm/7jcv0DGvoVWMsSv45WSvymPFlVeJY9cTLhm6bJHEjVoOAZlM9l7pAu44ekrwYrcgmEEFfOnKbiRL5vHzEJ37TJxTcrMz/AlopIv0LGj8ugR96KkcgtUiSaMskGV/N2Y3GWXpHtNyXfW3vL4mfxFkXnMQNerSN/zu+BYSuu4TPA9xOZsu1TEjQ7C6OIqysPpZlejWY7LXjUhQD6H7zYshaqFAC6QcVitgZF8w82WXhThZ4YVLlN4HY0HyAylqX6YvcLvV0sqJ4IgQmnRHebPIIseKFGlFliDc1Y47lp45UGcQ3sSkr7rKBq0ZVHPNz5LrKA0wyIPo9dGt2QwKaP2y+oqNCAJhkX+y9lWMzkL8s2Iigndix3iYpDl5UQxefGLDL0WkIEGrbrw3TQWoJa3MIAu5Q3EzU/xI048yi21d+33rgAsOG83kBFD2nJ/qTkdpdF2TyD9qmdm4jBYd5CbIscyzPlNmOYbyB2QnCw1FxR21XC1TunxTWI/jeX+8LtmYiwAnHTsS/VTb6YHNqJppCJ93C/erPyFz/Hxoje67t7NdLvm4Ki4LR2iq92zmDxHw81PzFu/CKokuSIDTTwiUjdHQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(346002)(39860400002)(376002)(366004)(396003)(451199015)(4326008)(7416002)(8676002)(5660300002)(66476007)(64756008)(76116006)(66946007)(66556008)(66446008)(316002)(41300700001)(52536014)(8936002)(33656002)(110136005)(2906002)(71200400001)(7696005)(54906003)(478600001)(6506007)(82960400001)(38100700002)(38070700005)(9686003)(26005)(53546011)(186003)(55236004)(55016003)(86362001)(122000001)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?OP04YFeH7/2+a/jyr9LNoQi6kDHtTiQwEfJIgb9J13FWxCrnfu7wkwDVovA1?=
 =?us-ascii?Q?cqDnnvvMCTMQfn2pn8ZF0TL/nF7D/flwbqTjjluwFEhn9CzlNU268wJWJHDl?=
 =?us-ascii?Q?4LWFw52vz9chC0Cak5WnJuvT2nJWFotockeYkW71GdAwcVTpVMvnGw81HQjT?=
 =?us-ascii?Q?/dxxdfrCHa8/FqIyaIF6AzJe/aHaYzzDj35vBCv+sbVotW71qaWxGcgM41bV?=
 =?us-ascii?Q?aJq75LdgFmZWNg/OfpJIoe04Qb8akOvkqNnCgunNDbF2gmp2uoaIrl0bRH4a?=
 =?us-ascii?Q?X96cYH1JInaNJ6Lj0hR1l4eTl21zhQ6jt70EjNfBnH9nLbd1+FBPF6spQcCy?=
 =?us-ascii?Q?RvrUAgojjSU/Rqjfr1bl0rXh4FjZ6EGaQRy49tFZj7gKZCpbsquwVgks5mW6?=
 =?us-ascii?Q?aOpyoAOXfAA3UQ3W77r/xVPfnCY7pb71kGBU9Wzwz6yYAK5EXWy58UTuBrnY?=
 =?us-ascii?Q?iUmUAAQ0G4e2vZGoF8Vbk44xatKDiq6yKRRMcvoZ/kwbeYDDdQKaEKEIKCDy?=
 =?us-ascii?Q?ppZvs5aKJykh8PCptL4n8TtQTtm6wG+C5/MwKFlHh6FNpJuBCO35dOKcmpn6?=
 =?us-ascii?Q?KbH5W/mwTwh3TRTirHodYRg53HHD7TRJwgl/bcTJpGADWsGF3OzOp9NURWmf?=
 =?us-ascii?Q?vU4sMNUNCdNeTD3KfDLEn/SPfkUzTGZzGRWfV7pBaDd5paSk1AIQhHoE6fWE?=
 =?us-ascii?Q?XrNWbOc5y+bOWXwvr5eIO2saWh2xIvZCmbSISYxkeU4Jf8fVqvDy8xkX9Q1y?=
 =?us-ascii?Q?R35q9JVZ2aW3V2mW+YzNtc5LruUDI+7SOqjCy6bOdRBXg6SNYKKl8wu/MOpw?=
 =?us-ascii?Q?WCDpnlqtCCYsOXioLnLxs0aqEc1H9f8h0IS7bbJzM0I8j2ETIp6e17Pxgr3n?=
 =?us-ascii?Q?wr+JWn0kvLPaFRXznwFlU9gCkdNE81PJ0+ZqQRvDrBgrwh5SXjQSFMU+5RDC?=
 =?us-ascii?Q?v/wLAnn79j0g83z9fF5/SfM+3R+ioT9K/NvzioOuF6O1eFEvXuy5/LLEmQQq?=
 =?us-ascii?Q?BgvO/Q4wdqYXiv/YTIgth7FOqFp8kCqv9daA85HZPJvJTNGn5qoxuLdqwxt5?=
 =?us-ascii?Q?YxL3qJltW3t1TZSdZgkadx334zcCIMnv0T5C9KeZaSIxlzu6kaU7bZiws9ba?=
 =?us-ascii?Q?YRIDCFZLmTJopJW449qEpjjWHXspXvozBDXItAhWl3pMsorwQ0g5P/P2Iq/a?=
 =?us-ascii?Q?gr8d/F9PSxRvpMwUjyNyVTWVlSSgZqayIoprQPkkH6Y4JZqxn69qCP8AOHad?=
 =?us-ascii?Q?zY8eL5/DUFfkgmBM5F+1zVNs2esCvDdbJNx8RO636yWfrgVh9EupO86KpIrY?=
 =?us-ascii?Q?ehFA8ebny4j/9iT5l0VOJWEnH9YQQ96oZUAvc83HCUAS+SpF3YPrHadiYqRi?=
 =?us-ascii?Q?QO4iEjJXPMlQc2iw/uWXCLnu1lXaPtuUd/OZE+Kbb+mkjIBSOxvlbSx/lLne?=
 =?us-ascii?Q?bVgSAlBwflSNQdHeGW82R5JK4yiKmr2hUQ7xfXahhrcBVXMdk29YbDoBDCGX?=
 =?us-ascii?Q?2yfYFHOcGNnHchqj29N4YB3V2VW77rYYaIq0EaAgzFSn6jboB3iZw/XXt2y6?=
 =?us-ascii?Q?SEFaqp80/Xiu9NFZzXJj97tgNrViOy9mowHC89MZ?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 664e62c8-9ac2-415e-6f32-08daeed9c2f0
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jan 2023 05:00:27.1884 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wjG8rV+rVBvLzlkJOeJ43/u1k+LpoJDOgCBtRjI4YdSfTL/Uqez5DD7kJb7Q7wNYphXndHPXOUypKEJrE4tweg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4832
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672894842; x=1704430842;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zvHAXqZVVLx2HupAD0aG7dgG2vWMFfAmfSVdsYeoyhA=;
 b=dIvmmo/Do7VLrYR9jn8MXF7CQVmaFMN4hbW5iXonnMYaadvYY14qNwPi
 ITtNbBiS9YaiIafYZK2aNVpenmnHhiT2fW3zvTVtZh1RudgcKkZOJL2ey
 V/5w8NFGC9AzfsF9pwK8fC+Th7Z0FImdcMZyvN1IsVEyogV8l8IxsK6ZZ
 djo6lJCPOTPveN1yXN2bbE+urBJBvo3jTLlM7cbpFXfbRRy6TxhtBzXq7
 MigW5xwF2z8xU7/bPq0rmcAVGpYriMLGa1JnbNvtlNpeSKuf6dvZVM3VW
 8iSUH5pWktSOFC02+W1m7PowiCQaaaKocv1Z0Dn53bnVs+OqUAWxx8+Tz
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dIvmmo/D
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] ixgbe: fix pci device refcount
 leak
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
Cc: "andrew@lunn.ch" <andrew@lunn.ch>,
 "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 "stephend@silicom-usa.com" <stephend@silicom-usa.com>,
 "edumazet@google.com" <edumazet@google.com>,
 "jeffrey.t.kirsher@intel.com" <jeffrey.t.kirsher@intel.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Yang Yingliang
> Sent: Tuesday, November 29, 2022 7:28 AM
> To: netdev@vger.kernel.org; intel-wired-lan@lists.osuosl.org
> Cc: andrew@lunn.ch; f.fainelli@gmail.com; stephend@silicom-usa.com;
> edumazet@google.com; jeffrey.t.kirsher@intel.com; kuba@kernel.org;
> pabeni@redhat.com; davem@davemloft.net
> Subject: [Intel-wired-lan] [PATCH net v2] ixgbe: fix pci device refcount leak
> 
> As the comment of pci_get_domain_bus_and_slot() says, it returns a PCI
> device with refcount incremented, when finish using it, the caller must
> decrement the reference count by calling pci_dev_put().
> 
> In ixgbe_get_first_secondary_devfn() and ixgbe_x550em_a_has_mii(),
> pci_dev_put() is called to avoid leak.
> 
> Fixes: 8fa10ef01260 ("ixgbe: register a mdiobus")
> Signed-off-by: Yang Yingliang <yangyingliang@huawei.com>
> ---
> v1 -> v2:
>   Introduce a local variable, and put pci_dev_put() after value checks.
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c | 14 +++++++++-----
>  1 file changed, 9 insertions(+), 5 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
