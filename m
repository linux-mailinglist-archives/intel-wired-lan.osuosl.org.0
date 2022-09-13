Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8305C5B6E94
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Sep 2022 15:47:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 747B640A4B;
	Tue, 13 Sep 2022 13:47:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 747B640A4B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663076862;
	bh=HKhmrc1tXk5JnZO/USi9J9OupC00GbDciuS9F9j6S6U=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Wibc2kjUeSdr/SZWmlMdh+u+18casfk5iYtSxuIoEBCM3S3hXR3Tc+se2x+zE+Cjw
	 FDGIEgFL8ojB4Bc1oFEtPhkCV63KSXUwM3QShdsxTu9fD6k25k4EBk09V21jx1sQIU
	 2BqFihSTXxcszMD9n657kMczWyMm/iXiJEhgNCDuy1Il1UPNZxWXHMwQd3yEOPgqoj
	 FU5QW5jqs+3+CexDcDcEnyB4e/max6LgL6KkpO2Rg9dTOKwKRYV1k4mCF3kPIOpQky
	 tbP5obCS4N1wHwLOpYNdrTEJ6oREWYFTRbtakILhXwMPecHXhtapGHvKsqWzxiEVhI
	 C4MWpLxH/YRSQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D6_jXs-4mhvA; Tue, 13 Sep 2022 13:47:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4E2AD40A06;
	Tue, 13 Sep 2022 13:47:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4E2AD40A06
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3A5EB1BF2AB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Sep 2022 13:47:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 163788124D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Sep 2022 13:47:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 163788124D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1k1JVPFJDeUs for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Sep 2022 13:47:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4A1C68089F
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4A1C68089F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Sep 2022 13:47:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10469"; a="298143338"
X-IronPort-AV: E=Sophos;i="5.93,312,1654585200"; d="scan'208";a="298143338"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 06:47:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,312,1654585200"; d="scan'208";a="616463880"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga002.jf.intel.com with ESMTP; 13 Sep 2022 06:47:34 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 13 Sep 2022 06:47:34 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 13 Sep 2022 06:47:33 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 13 Sep 2022 06:47:33 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 13 Sep 2022 06:47:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J778ZxNONzz+b/T/Bvv/Of/tVXTNWZ/1ESiusGkFMNvvdYCPaBII/1z8FZMEp/Yud9iyogYewpN4X86dDYOlF115aJOJqZftqzpQmfQ2ThsOU36qnkhfFRxbLRBmkmF5SwRbYnYhEcIDm3j/euia8h4VNGs5RynnbYu44WNixGTQU3Kz0XSY47uEYqUA5j68DFi5kufFO8JuijiDcg8TUq7FywIRWUdhHQ4COZUsc6cfkotZlZoLUM17dJl6eMWdvSv8tO3Fultr7WlqJIPGDPkuF2PQsZ3FQ7++cRqOOdycLtOaUs275YDpeh/IJgOn3C46f4xZQRewaVYmO8uJ8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m/xbs705dVa0GaYqJXSPNg2VjPz9O+bH7VbvfovdznI=;
 b=hCx5b5tZMjoXoOPgxNwws+ev5yP4f9wQDT3+kZ60V8roHN+a+dDdIEFMFbVNYDNMrR8fV3dqBIHV7OdnA/O62m9dVIeOdud4l8ZZLSLVP5aWELD1VQoD1vU8ewcI63xVQ1ialC30scmEnA9jK+pO81PMUIDgm/u4Y6xIAzHIpceMCdb05P6QUbAoKbd8IsrDeeRO7w3TjDdgGatanxNMUn+7/Iw/cKXG8mLycsC7eOtrsWxL+SYdObocfn2j79Y+WRZe4eDA0hMU7xk5OFHoUASWd05pb66nAUb/zaynNYiNFp4u4CQGYkoSPuEVAzANNX4Q2CMwDRa3wIAxbnrNCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by DM4PR11MB6526.namprd11.prod.outlook.com (2603:10b6:8:8d::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.14; Tue, 13 Sep
 2022 13:47:17 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::b80d:5e10:abd2:c709]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::b80d:5e10:abd2:c709%7]) with mapi id 15.20.5612.022; Tue, 13 Sep 2022
 13:47:17 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Wilczynski, Michal" <michal.wilczynski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v9 4/5] ice: Add txbalancing
 devlink param
Thread-Index: AQHYw3GCrvGIvfmks0KhQKXN2fXuWq3dZ59Q
Date: Tue, 13 Sep 2022 13:47:17 +0000
Message-ID: <BYAPR11MB336744C536B03FE67D33251CFC479@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220908105427.183225-1-michal.wilczynski@intel.com>
 <20220908105427.183225-5-michal.wilczynski@intel.com>
In-Reply-To: <20220908105427.183225-5-michal.wilczynski@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|DM4PR11MB6526:EE_
x-ms-office365-filtering-correlation-id: 2ffd5e96-bccb-4431-7d99-08da958e790d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2whu55gN6vVMxT7yAFXmyBNe5pqLpo8i4Z8aD19OR7tnUVvFPojPvtnzCTlLFk5m1w+9yaqoTdsnD7Pk9M5V/A8GgWKThji9MydKL6wQlnQKp4d7YaJqpYU21IzyEPH2GzEadK1eTpjZQXmYzjGzWgzBNEnuDfiYg3cyyqHXh6vb79Dljx6zINZYspDkAI+H5cNb6DKYHOVVEHFCrcLCOqVOHTApetW5GFcWFkvCOXR5ncPSF/iT768DtZ1XEZ028jv1jbm2s8c3N9C8rycpnSXu9fepuoRsQsYa5HtKqHVuiSMWCL0a9tEnptvJW0c7CGtkgJwVSKsvF+4B4+/GFQBiwUrpYGdAA09WuL3xn27s2GWOJwtPFp4WEDn32veSQpwJCsYijoELWGX7txfHeyMhLg9Do9AsxG3MDJxfSKhNDrubSfwV0+/8WJ7nGqha2vPBZA6oTEd/BTCXnC2nqCFseHbkCqQhSwfTEPoUOCT6RLJjqyXiVNS/zmaK/OobXJeCfqQ7klgmr0VqTWqhUHKwbABlZE0LfyWY6b+rUTDWBOq7EQTSWkHilqT1//dlu8oTUErbcTMQRhneqzsx0Oe9TnHY5gExyF/9eQAqbduukzudNdaKjFidmU0kLxJ1LKwQNgtuEwibs5HmJxOEU2AqozZ4BLtvuh2B2GPomOaX9H3yz+vYddfUVqCm7DbGxvVlT8DnNREVmXJfBlw4NB2qaHxKHKFY0fc99p/vnje+EMTgnhGH/uAEcU9qJdZlCaGbbVa85MCYoCgzfVBZFw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(346002)(136003)(376002)(39860400002)(366004)(451199015)(122000001)(316002)(52536014)(41300700001)(76116006)(82960400001)(66556008)(64756008)(55016003)(478600001)(66946007)(2906002)(33656002)(186003)(110136005)(6506007)(38070700005)(71200400001)(8676002)(9686003)(66446008)(66476007)(5660300002)(38100700002)(8936002)(7696005)(86362001)(53546011)(83380400001)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?feT52uSEpSHyrdFQubmLpXSoW8FsMMbq1gMwpVx6lE+7qTDiDJvUQdKROE5Q?=
 =?us-ascii?Q?6MIYWnF/kM4pJKk4kcQSHRG3Qm3GEGNG2yPeaOOLxHj2yuZoCFMSFItdDg6+?=
 =?us-ascii?Q?kFaA2EFkoo2hIKrMcpzNF/sUO3r34OXMUTR0X6jlx141V20e1PyGaamapwe5?=
 =?us-ascii?Q?+Ho5SG63THwAak8aGyLDs42+/chmfYcHJo4lKViSAeohaZnG/ZquiUmor3dl?=
 =?us-ascii?Q?A/TTEndwzFqsn7vsEAMXpr+cfGzXSewWL1+n6ESDA2/2Uyz1w0hPJkYqD05N?=
 =?us-ascii?Q?66ZsVKdEsnsUfFJJmLvhO3B9G8JVgEtWyzESVoEiYjT6PTqjvnhgdreA2vUZ?=
 =?us-ascii?Q?usDRCGx/xsQuMON6heozndPiOPo4w8ZrJ+wSCsXOFEhJAKAzrSA6c0P/sX2Y?=
 =?us-ascii?Q?uzPPSBin511AjOA48mbfsea5DYieEZtnguW8xGqIw1JhuRON09gcD+VNLJk6?=
 =?us-ascii?Q?1x50mcusGN3ASrgkrr23LgMlqvpgTt34ORlx4hna2Q5PawVLoxCXCfPj537Y?=
 =?us-ascii?Q?2XjqgLg2MK+3WbFcST2Z96vW7q2lSbF+B/hcqcUeeQcdTRHJdaDP4yfxGqAu?=
 =?us-ascii?Q?uxA3wSkkiKtQDaSk4qChzcm2mpPXyasvSarqTq9QKMau/omsChbEEcJ2Tq7u?=
 =?us-ascii?Q?tTw5m6KoHooCl6G5OsrnjOC4YOQY+ic6qMKvyuDEmLqHn9iGUGvSwdDeYiNt?=
 =?us-ascii?Q?ulm+qLo4oK7Eir/mJ9gm86RwKICnk++KFJslBhqL92jUM/ZzRANhhXd0cgyc?=
 =?us-ascii?Q?CrOC+21w9jYNr/HBGsvjCMZXB6QkrqKLQxnSizc2SUAW6mGmj3nSGkJXs4ZW?=
 =?us-ascii?Q?0HqTQAj6WQJk6DF3BcIYcQ6iRLncVzfuxHm+stcv/0rZq0bPb7+gwirRTyC2?=
 =?us-ascii?Q?i4s9A6OII64N7km/Kc1RURsC7QBPN0/vj8v2hG3tft/pHyu3VRezTyGn5GeI?=
 =?us-ascii?Q?23hkUKCf1fDd0d2uPQV6tAA+9KpK3OmHX1fkAaD0qd3N0iZD+rnf9zXcKCjg?=
 =?us-ascii?Q?lB1HxMbMDtf9BVegmBc0JTNm4M3qRFlyepWCvl7wxScYEPrctLoZhQwFe1xE?=
 =?us-ascii?Q?U8gNzFiS83Ep6/FBS+BMFhJezOtMIsqtMy5gU09X9lsQGjADmQPkbmr8yC8V?=
 =?us-ascii?Q?9zeRJ1z+yLnkZUWetsae9YG3mPPz56L20Wh2aAgZusiMTapD/RTNk1BqlMu7?=
 =?us-ascii?Q?5fOEMh0b5aI7O0H+EB/oY0JpAWj721WKiv4RSSDPpqV+9qoUNFAIFZ5eJQ97?=
 =?us-ascii?Q?BzHUNW3/Hq+wbp34DYq5X41F7LWhq3DGHUAy+JV7W6uBIEgk5nQEfWZYnR2r?=
 =?us-ascii?Q?hKShC5h63uQ8HP4msem1531UOARHgpH73+4PeSZpoqlCuKEUpzBIfzfAMk/Z?=
 =?us-ascii?Q?/UuuwLfenVUN/0R+PA0cuh6RRM/YjhhkVNNvBzrldQQBbFDseaveeisSQlqn?=
 =?us-ascii?Q?rS8iAr3XyuzgEL6PxgVyO5frWmRNZRXaQVZNAap8083nUpFcvXbif+pBBE2Q?=
 =?us-ascii?Q?KkE3vmlXz1Bn/LfHMjO0bkcu1vVuikaOmTYI9TimyAaFf5o6XH+D9E/qdAky?=
 =?us-ascii?Q?4uYADElNji8oozQrrcgAYIQ0oRCPg5FD7FxcRg2J?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ffd5e96-bccb-4431-7d99-08da958e790d
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Sep 2022 13:47:17.5012 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6B9WJmaMSVkGZz3ZwNVuGNvImRiFMpm++WDxL1xaPcy2ZAw9UBF8WHyXOdhVp/bn9OX4s2thxulHSOHtw3wEhw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6526
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663076855; x=1694612855;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=IXbmO5vcPDkgi7dOI30rd2nO5GqDBPLc0zM3yEyWCHA=;
 b=hyamvpvlZhXPQBgvvrkzomd+sQq2jAIot63HC5dB2+Bxm5xbjP0oNJPw
 baXANhwclV+aQDfO9jirQEyWIah8uj8flDb5PdwfRdltfQgiFAt+xO32f
 A2WN1Wh8KlPCRyGrgt6YTWaAkzq/TOiPqkJvVuAvnDF+qJETsNfrpgFaH
 PUY4N/NjZxrHcB4UWAvZPIpPfzOyV65FT8X73mlqWGL2SKX62FD9QFpIS
 45Rr72uOG8vKTJge9873q8lFST8IQXcTQNVb+4HOCks9sT8Rhvq5i1maZ
 7+N3h/dMm5KNryeX07Ei742s46jNuYu1ljcX1ZsvPlxvSMybSJ5YOtN8V
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hyamvpvl
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v9 4/5] ice: Add txbalancing
 devlink param
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Wilczynski
> Sent: Thursday, September 8, 2022 4:24 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v9 4/5] ice: Add txbalancing
> devlink param
> 
> From: Lukasz Czapnik <lukasz.czapnik@intel.com>
> 
> It was observed that Tx performance was inconsistent across all queues
> and/or VSIs and that it was directly connected to existing 9-layer topology of
> the Tx scheduler.
> 
> Introduce new private devlink param - txbalance. This parameter gives user
> flexibility to choose the 5-layer transmit scheduler topology which helps to
> smooth out the transmit performance.
> 
> Allowed parameter values are true for enabled and false for disabled.
> 
> Example usage:
> 
> Show:
> devlink dev param show pci/0000:4b:00.0 name txbalancing
> pci/0000:4b:00.0:
>   name txbalancing type driver-specific
>     values:
>       cmode permanent value true
> 
> Set:
> devlink dev param set pci/0000:4b:00.0 name txbalancing value true cmode
> permanent
> 
> Signed-off-by: Lukasz Czapnik <lukasz.czapnik@intel.com>
> Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   9 +
>  drivers/net/ethernet/intel/ice/ice_devlink.c  | 161 ++++++++++++++++++
>  .../net/ethernet/intel/ice/ice_fw_update.c    |   7 +-
>  .../net/ethernet/intel/ice/ice_fw_update.h    |   3 +
>  drivers/net/ethernet/intel/ice/ice_nvm.c      |   2 +-
>  drivers/net/ethernet/intel/ice/ice_nvm.h      |   4 +
>  6 files changed, 181 insertions(+), 5 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
