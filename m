Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +JKZMOP9r2mmdwIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Mar 2026 12:17:55 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ED9F24A53E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Mar 2026 12:17:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3E0DF84211;
	Tue, 10 Mar 2026 11:17:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hjKq13VpPZQY; Tue, 10 Mar 2026 11:17:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9A2D884219
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773141471;
	bh=3HJMCXFcNp2wWRUK06ZG1H5zdU5AvZnC7ldDaP99xPE=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mUVkLMyNH0uxRu7Pvi6HKnODZHZkh6XZ+PXQETIIbx0gfNiUQvvRPz6vw/Q2abzQJ
	 IOXw5WS6agUjReM5IB9LbZ/ou2jXm3d1GnXKDi9e05g2/9kuyMI9/7R2dXa3agaOps
	 S9qycFeddnwRnU8/xKQmyIR2L2pfZJ9oAkZD1XE2G1xf5/gSFfc6eThxme7UDcRxft
	 dIVMvzBHLhXdJlXaM9rq9JnC7Sdrri/KLQSadF2RS3YO4Ub/BlhyhJLcxK38AKqWD7
	 EemmQmj+OJ1aAJ8z1tYJvuUKOb8xnH3Av4iPvS0UPLvqrl/qDRaRq6q2gac9LNYQb5
	 ev/QGVBO9ukgw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9A2D884219;
	Tue, 10 Mar 2026 11:17:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 6230A35C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2026 11:17:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 47D33408BE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2026 11:17:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iG2W2dANjMAV for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Mar 2026 11:17:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4581D408B7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4581D408B7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4581D408B7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2026 11:17:48 +0000 (UTC)
X-CSE-ConnectionGUID: CpevulaBS2ucnTXk+8JZCg==
X-CSE-MsgGUID: XFye3bK6TheHj5JgTh+/2w==
X-IronPort-AV: E=McAfee;i="6800,10657,11724"; a="84818981"
X-IronPort-AV: E=Sophos;i="6.23,112,1770624000"; d="scan'208";a="84818981"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2026 04:17:47 -0700
X-CSE-ConnectionGUID: a35djCMfRK6cRUgZPImihg==
X-CSE-MsgGUID: RaXaKc8iS/m6MBBJ6AFqVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,112,1770624000"; d="scan'208";a="224250569"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2026 04:17:48 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 10 Mar 2026 04:17:47 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 10 Mar 2026 04:17:47 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.15) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 10 Mar 2026 04:17:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aRGHTArhklVtiv/En3MQO8JAvs6esAyHpcmRL7L1IRO9P5paOijuX1E8Q/vn2BWpmbcRZ8n6q70bSCwt4xnUY8bUlkTseGxgEfbgRNmyUSE/J3x9cR4fRkQF/ezRKUomniQgCET8hWS68fLaQA+FgoWsEnxc1uQWWYVp4FAFWbpPsdghil5TZkNCbzO45YFMBgQPa+y8S6azscanYSKgUNweMsoHQi1prhzSIDVaOc2pee2ng2Rio8ZMhZJ3M6wt+aqVuWJhcgoxuW0BLInSzJpiKfkmMeIpm6Coq/x4wO51Kj39SnHYfNd19Cw++zCNUU+c+1x15Fl49G0dalTitg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3HJMCXFcNp2wWRUK06ZG1H5zdU5AvZnC7ldDaP99xPE=;
 b=ijLLYn8KeyRlLLNvURGJIEmA8ZGpgtI1/3RD0tjrr0Cv9rEILGhg7TljDHd4AH0wilJ0e0gKgvhM/cifPBJEugiCZWVTeyp3ZseXEokzrEQlzU75SQohv5daHrnDI+/XrU5WEP52pdzFe586k9Cm5piS3abP7OafC/5ZOh5HgPwwSjK9L5ojwmhF/GsWzs3CIZJOxuGcGnVkxi4aMkVbUet3/GAt9uWb+NdERToolikOZi9MF7jxv9lSiEDklyDpN3M5apmcg2Fe0k9ZmFrjz8G9Z85cYOldnMeMbqXUVz9xYPdoZ+SGmBzusPfNCxLcsavGqDFb2enZ4fILZFGQFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA1PR11MB9526.namprd11.prod.outlook.com (2603:10b6:806:4c5::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.11; Tue, 10 Mar
 2026 11:17:44 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9700.010; Tue, 10 Mar 2026
 11:17:44 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Korba, Przemyslaw" <przemyslaw.korba@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Korba, Przemyslaw"
 <przemyslaw.korba@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: fix posted write support
 for sideband queue operations
Thread-Index: AQHcsH3lSv+mBOzQ5Ui4agPNx69F2bWnnbWw
Date: Tue, 10 Mar 2026 11:17:44 +0000
Message-ID: <IA3PR11MB89862BC3078293849BE46C35E546A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260310110700.345904-1-przemyslaw.korba@intel.com>
In-Reply-To: <20260310110700.345904-1-przemyslaw.korba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA1PR11MB9526:EE_
x-ms-office365-filtering-correlation-id: f55cfea1-e891-4ae9-222f-08de7e96a6f5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700021; 
x-microsoft-antispam-message-info: yYTfyvYEAGoee39hodHtNLfGopt0VGQS8dFnLhJkJz2vCV8J+NoraWNvloDi657/F3Wg8NwLD55VVXglrBwrBEyZjglxRn5pEvaYMEAnLZBelWau5GyP0l783tcQBCUMMMVQPIM/BRQ0pZ9JEQvqSqn9I53Voa5T1R5bfghnltyRi6AoCbm7rRfCnocN1zVNoP8h01DjsS3KixQ71CnBHIAeW7s4EsJNDCPmSRBO6TFfERInlLGzzdBqtUt4LEZ+Bob3fPSudcrxQV/yY7pS09VU1pKv5odBDcdvllHI+tdwTSkT3DfaKK4xrm5rrMUUHtmE2BnxXv76GYRikL90j4sIOxbmg6eFr94+nk4ASy0tMHSUQZyPG7Jic1OFj2vNa8PUSDa9wTVdJLkPlDKn9bZy6ues/iw8FhjjzZM2u1RN8gfZ1k321oR3s24fHzXhfsL4qnjk7eg0iX2h7kaRO6wM04TwVJrxxBAP5XWILS2U5kJF6JB978X2WEjCgUtKIhda3wVWunaimpt/UUqxmDjh7pgGzI6WmVWIKPCqZ3t+WnhJCszryX7f+S6jz9iNkJyV5vVWBR7shJwMqV/WsfThM1CCJd6tsmsIfPxOeqJl1I5778ybA6BKx2T5vKGmdiyccAhVKaGS89t5JoTnEfkf5JKnujq3VDXsEapzG37Vs7L1gTdF676TLYaduRIz8BbZj8yOskWmncpeks1x5UjZuMBV3ID0mTPYgEN9Gyzy8Em+9LJAq/iIEGpfqVHbddi/xcU708UUBtLRxjyflqli4pNpxW0OoOQ3prT2sEo=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?z+LhbpNhUbWeTNuQlwehJ8n+xFUbVyY8AJj7Npkz7dU65kAx6MDylVxqF4cA?=
 =?us-ascii?Q?DdsuPskFVp5UY4qVVpcl/6blvY4nm7G+ly87TJmm1JWkoJ6CC0LKNRmcf55s?=
 =?us-ascii?Q?0+MZI72GR+hAX5BKdOFFk5dmGBMQNbgi7+Xu0AiUbJVJc6ZGRdPYLdTvfgXh?=
 =?us-ascii?Q?oArvKnXgj+JPyjVDgAidXIKfo97NoYT+cSHEKlX3ZruKyZvfYezwiA7YpFPf?=
 =?us-ascii?Q?0J+JybxCWkDlWba3a+z3VEFRqR7YueN2E49kkF1XIkyEn4W4itlL/f3CtMwZ?=
 =?us-ascii?Q?V67YiAHYt8bRAk07Ve28HE+j55FOs/RwiBo8HukOLGi0/fsoDB64cbt5sOdC?=
 =?us-ascii?Q?VIqVCzYA+yY0qgSV82QN3GVWcbYnZ8W6c+BeFgoR20qtGSUvEyNeL6zObNqX?=
 =?us-ascii?Q?yTf6hRzsffvnbTAsfzfMCDet2thWKKwphCupA6Pce32Nc4K0KO+ZHLMWTlvk?=
 =?us-ascii?Q?mu3Hi5kUcF0Nl6Ab2K4XYiVM8ZK/XqhxnWuLQTLF+Cyn5qk/4muDr70tTVwC?=
 =?us-ascii?Q?/syZu2vO/R+W6M2V6umVeF3Pb3ivvi4hyCMvQBix9ypPRgoJRsXXIdMLBkGJ?=
 =?us-ascii?Q?DouehIebP8MWQDlP1YHnOLqg6U7ZYwGTYP4Ly0GdUUvOcMM7vUsUZqDkPJtF?=
 =?us-ascii?Q?li8jzW7Mz1iRFBu5TdSjcYHrcLALfGfcdJToyFer5o7o0/PtdzfKyIx+X7yI?=
 =?us-ascii?Q?bDtdUU7veuaevj1DF6OzI6fQkaYdl05AH6HkLEehjoga7j5VpXPuqaezYWja?=
 =?us-ascii?Q?wMMkvV/MlkxFE/nf5G3oYvpY3IAwToBSuUDzgQGjmLu9RkjhKpcRIuiwD5Dv?=
 =?us-ascii?Q?KphYCn3Z1vulhV8+8M9h4YIRXh2ttI9VZGxO8NUmzTzCq5Hx37CicX08c2nn?=
 =?us-ascii?Q?n7ePSSU4pi10RhwsNLbCR/3qnYC/Cx6d7/N5ZYcbYpDNqtlZg49yC7YK/ifU?=
 =?us-ascii?Q?H7t6ElYHZ1becdhlpa4P4X2+o6WMCFu+5A7Px8emr1KU4CO1NYMKUsdrtG3U?=
 =?us-ascii?Q?hingdNDhAMCFGc7Ugx73HN+VUSFzhyLa8EUeq52Qy/QWGCbBhYX8atsDca+N?=
 =?us-ascii?Q?7QAbQvfRmL8a9xjv4vTYJnn1VQRoOi2OxRqLT3RTVmye3WC6ltG4cETyWhZM?=
 =?us-ascii?Q?FhBqV1uD1A+UusEOK+piDF7AaAtFhZ3fvnHqW43lFMB9DN5CzwtLDAcljzUJ?=
 =?us-ascii?Q?t519m63FMcmd0YbqOtfTJmG567FyrsdY6m0JxqCRrw97UqSOHGht6h7/ht18?=
 =?us-ascii?Q?j/xErNOXUnfYhwaaMsqcIXJS4IUcQ7fuzNqrLb67BRDlZJqrqHkWclQLziT+?=
 =?us-ascii?Q?BnBZXIBN48cblgo5hJVkwdRRzk5upJxaLQS3aGdCjnZAhMjdVArcHKPocF7a?=
 =?us-ascii?Q?YP+f0mOeRWbKYfo2Hbu7af9t35RP89SDg8/1XpgAUIs5zRGOr8+fjzqTQicc?=
 =?us-ascii?Q?/BAlcxZ2fBDZhhFtFJxSR0atN+7dz2i2mkyh2L2J1a5ffty9ZOCOGzOnUpVf?=
 =?us-ascii?Q?6LgiKTx4oNbBhZN87tCBYs4Z82C0852RnAp7ipAl3SUn1N6llE912RT4xmfH?=
 =?us-ascii?Q?EZ0r1/lrMv/R0fHdh1DcqI1JhvTpnYBVze/WtI3DVFoWiUJlBwEWsaOaeFAZ?=
 =?us-ascii?Q?a73nbfFyJk/EczCQWBaBs3vbTlk8R93wV8Ao8BDyDgAQwn8cJRbuQd/IsK7x?=
 =?us-ascii?Q?otMaVbFkMolxYOCNmup2xQ6RtDWyj3koBOLhVAhY6MUcH7q44bdSIDzhkk2B?=
 =?us-ascii?Q?40z2PHwa3JjF6fcIw1rlv+Oyqx5U2ow=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Z6PbS/nA3i4VwSSTS/5vvUYpwlAfzq2PSouXoo21Jq90imcsw/I7M+yyAsfmhMHsa0XAEotwoXJmjwy9u2ErCL7GRtTJ+DIZifOU4rDYM9mEEIqcEg2LVGFcvWmOLAI0R35XzqDGu8n9v5MvQ0bcrGaWpjtZnYDD+Y/xsFlDDqkd1tl2HcOfnSfVGodqAekxknmQY1Xt5Ctzt7sWC87dqsCmcyjtpoNiQyf1Ts/5qkn6NKECPQyR5c/1y0wTlXQGyA20YCtjJjK4Iss3Y/s+VVCn47n7hR5Ls/GM5CV/foLloCO4q9QqnJWvuD0QTkFlgijMRyjeBhGVLJ9JWUfBuQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f55cfea1-e891-4ae9-222f-08de7e96a6f5
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2026 11:17:44.3884 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: djBHdyOoCRNsf+0p3rPWsR3auET+A3czTJ/8Zj2PYIW0NsjY5BwdIE4mNUhbR0cQ1/IF0VwWsNudREfmhjPWVmpgh9EVOgn7TkjQRgtHch0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB9526
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773141468; x=1804677468;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/B9aGcXWC5t7E/iOpU10cdT4JF+f6Yw4SL+3jncbpO0=;
 b=U8AIxQ6riVNU6VdkW8MjQPx8UiF/tEq9OPVXYbgGEwR6nd4KqKJDAO0C
 Kct2pCMRoCA2gS3Hbz8QhqNSX5m7YACl8/nzeYD6rzMk6AOj8wXJJzM8g
 949RRJA3WRuETCQ3BBSMx78bUGCR+3ezePK0o27+PgVqd+9i6AqrmbnJl
 E9spwJWZcF/+8UgtHDmqMjSF81aARtPk6XaJBww4UY+HRkU6GCj08JUtb
 QNQDSABqCjBqA7qnNf8GkjAhzrMuTVrYvBjMUGRa5WTkg2ZmqgUft5Wdi
 DC3BtwYmwpYBTrC8UTqFLAc7qE6aIir8zgWK7vmiUK0DVjfDbvzEc7Amc
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=U8AIxQ6r
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix posted write support
 for sideband queue operations
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: 0ED9F24A53E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.korba@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim,osuosl.org:email,msg.data:url]
X-Rspamd-Action: no action



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Przemyslaw Korba
> Sent: Tuesday, March 10, 2026 12:07 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Korba, Przemyslaw
> <przemyslaw.korba@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net] ice: fix posted write
> support for sideband queue operations
>=20
> On E830, PTP time adjustment commands sent via SBQ don't generate
> completion responses, causing the driver to timeout waiting and return
> -EIO, when trying:
>=20
> phc_ctl eth8 get adj 2 get
> dmesg: ice 0000:1a:00.0: PTP failed to adjust time, err -5
>=20
> Add support for posted mode not to wait for completion response.
>=20
> Fixes: 8f5ee3c477a8 ("ice: add support for sideband messages")
> Signed-off-by: Przemyslaw Korba <przemyslaw.korba@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c   | 7 ++++++-
>  drivers/net/ethernet/intel/ice/ice_controlq.c | 4 ++++
> drivers/net/ethernet/intel/ice/ice_controlq.h | 1 +
>  3 files changed, 11 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c
> b/drivers/net/ethernet/intel/ice/ice_common.c
> index 8866902efb91..df9e5422b981 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -1765,6 +1765,7 @@ int ice_sbq_rw_reg(struct ice_hw *hw, struct
> ice_sbq_msg_input *in, u16 flags)  {
>  	struct ice_sbq_cmd_desc desc =3D {0};
>  	struct ice_sbq_msg_req msg =3D {0};
> +	struct ice_sq_cd cd =3D {0};
>  	u16 msg_len;
>  	int status;
>=20
> @@ -1785,10 +1786,14 @@ int ice_sbq_rw_reg(struct ice_hw *hw, struct
> ice_sbq_msg_input *in, u16 flags)
>  		 */
>  		msg_len -=3D sizeof(msg.data);
>=20
> +	if (in->opcode =3D=3D ice_sbq_msg_wr)
> +		cd.postpone =3D 1;
> +
>  	desc.flags =3D cpu_to_le16(flags);
>  	desc.opcode =3D cpu_to_le16(ice_sbq_opc_neigh_dev_req);
>  	desc.param0.cmd_len =3D cpu_to_le16(msg_len);
> -	status =3D ice_sbq_send_cmd(hw, &desc, &msg, msg_len, NULL);
> +	status =3D ice_sbq_send_cmd(hw, &desc, &msg, msg_len, &cd);
> +
>  	if (!status && !in->opcode)
>  		in->data =3D le32_to_cpu
>  			(((struct ice_sbq_msg_cmpl *)&msg)->data); diff -
> -git a/drivers/net/ethernet/intel/ice/ice_controlq.c
> b/drivers/net/ethernet/intel/ice/ice_controlq.c
> index dcb837cadd18..5fb3a8441beb 100644
> --- a/drivers/net/ethernet/intel/ice/ice_controlq.c
> +++ b/drivers/net/ethernet/intel/ice/ice_controlq.c
> @@ -1086,6 +1086,10 @@ ice_sq_send_cmd(struct ice_hw *hw, struct
> ice_ctl_q_info *cq,
>  	wr32(hw, cq->sq.tail, cq->sq.next_to_use);
>  	ice_flush(hw);
>=20
> +	/* If the message is posted, don't wait for completion. */
> +	if (cd && cd->postpone)
> +		goto sq_send_command_error;
> +
>  	/* Wait for the command to complete. If it finishes within the
>  	 * timeout, copy the descriptor back to temp.
>  	 */
> diff --git a/drivers/net/ethernet/intel/ice/ice_controlq.h
> b/drivers/net/ethernet/intel/ice/ice_controlq.h
> index 788040dd662e..7c98d3a0314e 100644
> --- a/drivers/net/ethernet/intel/ice/ice_controlq.h
> +++ b/drivers/net/ethernet/intel/ice/ice_controlq.h
> @@ -77,6 +77,7 @@ struct ice_ctl_q_ring {
>  /* sq transaction details */
>  struct ice_sq_cd {
>  	struct libie_aq_desc *wb_desc;
> +	u8 postpone : 1;
I'd recommend to rename postpone -> posted to match terminology /* posted w=
rite */.

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

>  };
>=20
>  /* rq event information */
>=20
> base-commit: acd2abc52dea91c3bc3d1b6dd8a92b9631d48bbf
> --
> 2.43.0

