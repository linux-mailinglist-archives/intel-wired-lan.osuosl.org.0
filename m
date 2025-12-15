Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C5EF2CBD086
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Dec 2025 09:51:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1377060DD6;
	Mon, 15 Dec 2025 08:51:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aWGLV4qP13BA; Mon, 15 Dec 2025 08:51:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3198460B13
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765788682;
	bh=ouweBgRWH4XRApIjTzLwLluCWgSFzI4NsLWSp2mPkY8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GVCgkS+Y850N7iKYvzLF2RvAEEND2MWTdguTZwmpGsP4kwtYve5OAOsljs6Orx1SV
	 mLHCDkbLIhtHNNGd8/O93BmCQGX5dQTrGCshFYOtGriu+3fQIYEocemlFVyyWa6X0y
	 z0mmVuRSm7WfqIYdMTcOmqg34L7S1HKK1L17SVm5hiAcuVJhkxWgz+TbtTIAdqneC+
	 zbZ/HDmtkWbkUodngBX1uWuH5rj19BFuYvtiMOmRXLHDF6UNKUqsBqE3fv+N333+dE
	 oJQQTN0ZLEZgp+i2nCDHy/SM80iLWcAEGbnZFvRGE0mZEpeRECVM5O2jUseOXNvXPg
	 rxKAy95x7prqw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3198460B13;
	Mon, 15 Dec 2025 08:51:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 91804272
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Dec 2025 08:51:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7769A81226
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Dec 2025 08:51:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bn1ULRxWghCO for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Dec 2025 08:51:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5D9AE81221
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5D9AE81221
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5D9AE81221
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Dec 2025 08:51:18 +0000 (UTC)
X-CSE-ConnectionGUID: 1N1bV3K1TNe2+pHBVsbFhQ==
X-CSE-MsgGUID: SFYDdzZdQqi5wkRantPBVA==
X-IronPort-AV: E=McAfee;i="6800,10657,11642"; a="67755425"
X-IronPort-AV: E=Sophos;i="6.21,150,1763452800"; d="scan'208";a="67755425"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 00:51:18 -0800
X-CSE-ConnectionGUID: iQP/ubi8TQWy0StgA2dZzA==
X-CSE-MsgGUID: XQoMsbUZRUCk2nx7O43Aog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,150,1763452800"; d="scan'208";a="228743091"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 00:51:18 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 15 Dec 2025 00:51:18 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 15 Dec 2025 00:51:18 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.30) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 15 Dec 2025 00:51:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bG9CX0PX9rozXTypsCQBebIPD8zKqwyK3CIfgqel6SLH5mK6wB3/w/QGuizvj9ezNiBAG8l5NVUiN3DFiNebsRvpWjPkMroAzKyetJyrqGVXSkVDdleu0lQdIyABYIrNBBKyIxKrGvt/O6CpDGfrQzLIyWW3mfVRUpWdYh3m6XhZ0r7+NhPs/w4ADX536Wt80RPJhglngB/bVYbVW6DsDk6q/qswiKX9hkV+AWiCiSnruHqE7+9U9dsk+WmmKxAIyi1RnIXurwjsTzN+1ioWm9MSppCuhAbWHkOdOGFUxVWdKPqc72Mrkjp38p2mNkAH9GOyTDymrWINFOWbzfxn1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ouweBgRWH4XRApIjTzLwLluCWgSFzI4NsLWSp2mPkY8=;
 b=JQPtuawRe3XJNqho3M7CuCx/C1Uh/FTh9mmVgg+nR+9rgMyVimcMddT0Z+YAjx1vMrJHqT4ylPd42vivuamBmn2B9TgG2f/A1tkycmggNg0yVCjirqPjrINB375XJwo6BPzBvOUWGPq7Y3839A5Zd8GQQLu4yTXlZmFLCmh+Tlw5fq2xEe2QXos4/rN63+YC88+OyVgjMLUQS55gpAasTOeSGbMgTZ6wp2LNT/zOdiM7kolDok3r8gA0Or8O0ltxKecNtZvmMcg0eKv9FXLSJPoFkDMSCM0O4sW0p10MQYiVj3zs5ZV0RGQanQBwRgiOcYTih2Rv3giwXMtDEJLZPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by CY5PR11MB6284.namprd11.prod.outlook.com (2603:10b6:930:20::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.13; Mon, 15 Dec
 2025 08:51:08 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9388.013; Mon, 15 Dec 2025
 08:51:08 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Haas, Cody" <chaas@riotgames.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, 
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Haas, Cody"
 <chaas@riotgames.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2 0/1] ice: Fix persistent
 failure in ice_get_rxfh
Thread-Index: AQHca8alReHyVmsddkyGEfaz4loSarUetZAAgAOytEA=
Date: Mon, 15 Dec 2025 08:51:08 +0000
Message-ID: <IA3PR11MB8986FA68BC030EFE80A20471E5ADA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251213002226.556611-1-chaas@riotgames.com>
 <20251213002226.556611-2-chaas@riotgames.com>
In-Reply-To: <20251213002226.556611-2-chaas@riotgames.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|CY5PR11MB6284:EE_
x-ms-office365-filtering-correlation-id: aa9f04af-64b0-4389-afa7-08de3bb71732
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?8PGwo4Q2SeEy6v6lnmUon+15iSn2+KjeXlIMNKDAFInh8/VPwxJ6LKjz6MSG?=
 =?us-ascii?Q?plVGfNmP9xo8XSmIGVKItHwuw7sNugSWttg3l9u15Xj2cDDN1eoJHZ4f5G8u?=
 =?us-ascii?Q?QbFgGG/q8AlRjYc/TRaaGtkmDzv7r5f26f6M99S2h0ZdGjzC4SHqy1LVShLj?=
 =?us-ascii?Q?RQWsDxvgPClBsMlZo0XNTJbGJCMLdg/2j3BjNvTH7j+EnlaPTGweFpEKOaqI?=
 =?us-ascii?Q?c6TFgNHZl71+OCgWhiBesILd3vBtdjIzLkCBuTrPgWkRlticWDrV6ayQIgcz?=
 =?us-ascii?Q?TeqwNVtFUXB0Obq6V90TME9qriwDSJX3phKy44/UDHIEIY7alEDoyTd4HGWC?=
 =?us-ascii?Q?Iv4S3hNoF9IYAHfA0gCkUisEtCETV318yuz4bBjoX2eSgWD5z/X4vBJWyWWk?=
 =?us-ascii?Q?K4f9jSa3oan8z9W80VivRKw0bv8OPoXDGySe65GacCQi5boI3NaNzq6/oXW6?=
 =?us-ascii?Q?wUuJuiBQRfOaKbEPAjeV9UHlb7wzdi2GHTGj0LSSLie8kaqITvnzwmVxVNfj?=
 =?us-ascii?Q?BFANu3t1fckRkNOc7FFOy2PNOuZpL+Wb7/lE9DsMNQmjZtQ4wzCdCIr4DiGk?=
 =?us-ascii?Q?b13KNLTeIwwwkOV0Ohot5i+4MhoOC7r6JmLH1CahsLgKGOuVN/sFPtwVojSg?=
 =?us-ascii?Q?AprF34YSmO0nfuFOmIM4B4cThXQ0ugwuxSMXTruEWtEoLB9EUI/FdSErkMOj?=
 =?us-ascii?Q?Rfh78I6ViUzMBAnxQ2Y/kVOjV6FFNFH9kA9+qVX5PUFBvVfheBlkhvM4MIPc?=
 =?us-ascii?Q?F4oMM0EUR7/nG6fTf1aD/xbQAPfzGVpEhZ0OT2rxjfIsQvhooZkhUtq8daYn?=
 =?us-ascii?Q?tNrwQI1muaGROyPxXEN41kQbB+eE8lvNEHrEPDIFboCa/mMQykSn0OJMIeUl?=
 =?us-ascii?Q?a6s6j087DhjyXAn5sFKMTTwM29vh3vWc2CsjSUF0y00PHHRT8LdvZEjWh26e?=
 =?us-ascii?Q?kz801DPH1CXtUcXh+PXIyLlxZhDuH8DKnUlGtN5IiHpfkdIH04sHsooY2ahQ?=
 =?us-ascii?Q?JhPIKnLV38BF1D54OBTrXD8IKoC9ORyDyYMRIhssnH5D1saETWqifh7VA1e/?=
 =?us-ascii?Q?MFTltbLfGWPQFCM0+5+Gn8gfe9g+omX/RSIN7Vyob+CZF7kuw+YaonlVyJ0j?=
 =?us-ascii?Q?Q/CIK7FB8tucp9QyZZ3D2rRMXr8CYakMda6yZ1l1nPxE4KtzIiEXqG1wIJmG?=
 =?us-ascii?Q?J3Z2N6o9BDS0yaoMl7xwG911/YpRAUQNBHYDXBHtcX6qD/zWEh4XZj49NiK8?=
 =?us-ascii?Q?g1g3DGSmQWMlpoU3OBHW/ZLSAsZAi3uoWQliVnYmXBFENLC9yymrziJwrqNG?=
 =?us-ascii?Q?1X7b2vzXn8gC2dGLidtEKnxhjzaP6mu1dR1O/4Vk/vM9oY1Jx8bJTvHwe4rb?=
 =?us-ascii?Q?5LaV+iPBMxGkQck1EDtvXjfdBLobLSYFmIpeBhQs+AMajVkse3X8Xltdozfm?=
 =?us-ascii?Q?YKmkI6/Byu/n3qGrccXIvNAn/JP1p9x7wHacRtIQjx0VoFfLNaN9ohGtsUER?=
 =?us-ascii?Q?GjpfnFrV/DEwGuNNXdcl1lqQ/crCLcO8MX6Y?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?uL2BJK7YI8x7ARYwfA6WgyET3khVkMX6vGEJb3HitHR+3omcmn0Bv3oE1Hnf?=
 =?us-ascii?Q?6OD9pbKL6PmVsBxW/EUYpumqU/y4JBEYvTEa0ELgzfAH9V2U0aqo6b7sIStM?=
 =?us-ascii?Q?s3D8aGd2OEPUyCt4J7oS1/u9l6hKQ4u794pm7MsUw9lkCL7vCckeLjOXflxF?=
 =?us-ascii?Q?1IsZ3F0SFvVzxUNQy15aiPIRCpPLULO79/38V+qEKFW5gBlfnS0eIBoESBXW?=
 =?us-ascii?Q?rhKk0/g9dQ9D8hFvb8/p4ke7LFhr/nhS52EmV5zOeMclR+SsPtBmpArr9x3s?=
 =?us-ascii?Q?Ghv5hdEwMhUa21RsBK2RouZFi8Gi1dHEvjjJiR4zshamTjoiaivtLNZ6D+fh?=
 =?us-ascii?Q?ruwUUTIKl0RJdhUBWN87mv8RxzJWqZ03iUqOaxi+NL3+RWoU+/hbReDTm7Cd?=
 =?us-ascii?Q?4188lNo0/nxgD8RdmjNN3RNAqIzM0uyP0JNifsnZufkLlSGSMDC3FHRgWSGy?=
 =?us-ascii?Q?Si6o2Gahp/NkFNRs50xOjePFdD1OwXSDxc7V+H4fi0y0p9BscWPAXxMwfYYO?=
 =?us-ascii?Q?evbnCVqsoh5/TxNjuUPm7hKF3VfBYpQ9De/SadeXz+912t18EsndLX4Qttuw?=
 =?us-ascii?Q?zYjq2TRU/f/EK/ViPwonB2LIdjG72t86eTs47U1grWi7XGNkJPr2NpECY9TC?=
 =?us-ascii?Q?rMApZy+T/0RUKB+XZK163F5dmFZBk62H7K+Le7y4NHc62svV6yDPGLGmixXm?=
 =?us-ascii?Q?3QaHdG7EvPpsE3YsNAjPABw3KyNEgstpb4KdQqK3iMgWT9XHDBDEeJt2GwfO?=
 =?us-ascii?Q?IFkEbH1/WH1vIDQbWb9H9vLA9dHVuU7i/k0W0idswxdF0BTlW4uFU4RY6hqL?=
 =?us-ascii?Q?Rn5octyJf3nQEnZ9ffyhr2jsiqXWwptvlJSqkdDEzDKHuZNh43NhMorLP/Yv?=
 =?us-ascii?Q?9ruDONx5W53X/UL2I8nIw4Ss7Ueiz6J6A6Z7isNU5fCUQ0gp2H7sfnXY5iOu?=
 =?us-ascii?Q?dBnX62HkRXJaDmrirASKXHHAyakYdLr2oofrfoEracHQXAHa1v1VVsok54g7?=
 =?us-ascii?Q?uE1ukfpKB8KhjCaOe4oi799tjD49/JzOkv3K+xGSeO8NWxCf4AHoVwyVv57x?=
 =?us-ascii?Q?2Pu7K0h/YPvWlm5yfNevqkxX8AA42Z2q2F1YSLNFfmsfENv84z2v5031NaS3?=
 =?us-ascii?Q?vWzg9m1t2IOjJBT5BeqoB1k/bkNVfQxKb5o3FQf5WLJfE1j/SvGiR/iOhgZ2?=
 =?us-ascii?Q?ykQvmwdnXHHKWyJ6OxCMX18SOVjzBfRXz0AwSu3XySHlOULShXjGGiJSkXxs?=
 =?us-ascii?Q?TpNnwT7/3SbCXh9TiKEGOuFPf1LGjzN2cAxyFUOkNSXq+EH5b0OYmoI9+3wY?=
 =?us-ascii?Q?QFH0x3NohuH5pwHAVw2Su2qApdaTyTKGDFlXm7AWZwDhlhJzeoc38DHShMbx?=
 =?us-ascii?Q?vFOOYCS5IlmMefXmdQFK/R6HWo13UcUiVIGAHAqH0cyvT1CeKmTDZRYt9+k7?=
 =?us-ascii?Q?Ypvw0sc5pyzVIPe5ffOgh7pk9dmKWogJZ7351ntvVPMPrg5GJHDeDmWqJ3M+?=
 =?us-ascii?Q?8VPBPSAAOhun3LegBaNT1ViHEeQkFz9uLWVjYW3dO/PihopEGWQCjy9W6yRK?=
 =?us-ascii?Q?vY1L4F2VAgklLsfXEp3cC7WoP76sO0FEa95kMb1xGmP7QipExWEm6Ex1V+Vy?=
 =?us-ascii?Q?uA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aa9f04af-64b0-4389-afa7-08de3bb71732
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Dec 2025 08:51:08.7414 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /o98n1hmpOEFFPL3RrP2tzGXLUET9MTz94IIJTVYGUKpVTDWWudb/CNnBy4iOywnLiduTFK1tOdbLbFyFTfPiMAd1CN8hAInhjGY11DSyac=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6284
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765788679; x=1797324679;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=y0+InIntiU9Veq8qrnpT9DpyV71HbLHn41mGga/ZYww=;
 b=mUFo+KVAH+bKsnE9cRe5FW0vMpEMKa5+VWPHBu3jNh6capvH4sUebQbz
 K8Ylk2bcJT45c1ltStZNaS6S5Qrvk6wVw0gaatZ1Q98tU562OWpVZzjjc
 cm9bRtIEJDnmlz289MF1AZ2ThKRYnQruCicB4xwhKvzoRFXxFsHIXTqZg
 WBqOffhifNc7kx2trOWZO/c8Jdo7stZ9LN8U+29DLjoCZsOlAOI0Wdbqq
 UwWTsLRa1pyIbQSpSA1XqOc//mTHhpq4iLnICyExVbcI9pEjunNwTABC/
 xNiSwSpn8cdf4eJ7PX2io1V/75hd99M3MiZJA9AzVJR4hWAz3woazx1cb
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mUFo+KVA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 0/1] ice: Fix persistent
 failure in ice_get_rxfh
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



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Cody Haas
> Sent: Saturday, December 13, 2025 1:22 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch;
> davem@davemloft.net; kuba@kernel.org; pabeni@redhat.com;
> netdev@vger.kernel.org; Haas, Cody <chaas@riotgames.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v2 0/1] ice: Fix persistent
> failure in ice_get_rxfh
>=20
> Several ioctl functions have the ability to call ice_get_rxfh, however
> all of these ioctl functions do not provide all of the expected
> information in ethtool_rxfh_param. For example, ethtool_get_rxfh_indir
> does not provide an rss_key. This previously caused
> ethtool_get_rxfh_indir to always fail with -EINVAL.
>=20
> This change draws inspiration from i40e_get_rss to handle this
> situation, by only calling the appropriate rss helpers when the
> necessary information has been provided via ethtool_rxfh_param.
>=20
> Fixes: b66a972abb6b ("ice: Refactor ice_set/get_rss into LUT and key
> specific functions")
> Signed-off-by: Cody Haas <chaas@riotgames.com>
> Closes: https://lore.kernel.org/intel-wired-lan/CAH7f-
> UKkJV8MLY7zCdgCrGE55whRhbGAXvgkDnwgiZ9gUZT7_w@mail.gmail.com/
> ---
>  drivers/net/ethernet/intel/ice/ice.h         |  1 +
>  drivers/net/ethernet/intel/ice/ice_ethtool.c |  6 +----
>  drivers/net/ethernet/intel/ice/ice_main.c    | 28
> ++++++++++++++++++++
>  3 files changed, 30 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice.h
> b/drivers/net/ethernet/intel/ice/ice.h
> index c9104b13e1d2..87f4098324ed 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -953,6 +953,7 @@ void ice_map_xdp_rings(struct ice_vsi *vsi);  int
> ice_xdp_xmit(struct net_device *dev, int n, struct xdp_frame **frames,
>  	     u32 flags);
> +int ice_get_rss(struct ice_vsi *vsi, u8 *seed, u8 *lut, u16
> lut_size);
>  int ice_set_rss_lut(struct ice_vsi *vsi, u8 *lut, u16 lut_size);  int
> ice_get_rss_lut(struct ice_vsi *vsi, u8 *lut, u16 lut_size);  int
> ice_set_rss_key(struct ice_vsi *vsi, u8 *seed); diff --git
> a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> index b0805704834d..a5c139cc536d 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> @@ -3649,11 +3649,7 @@ ice_get_rxfh(struct net_device *netdev, struct
> ethtool_rxfh_param *rxfh)
>  	if (!lut)
>  		return -ENOMEM;
>=20
> -	err =3D ice_get_rss_key(vsi, rxfh->key);
> -	if (err)
> -		goto out;
> -
> -	err =3D ice_get_rss_lut(vsi, lut, vsi->rss_table_size);
> +	err =3D ice_get_rss(vsi, rxfh->key, lut, vsi->rss_table_size);
>  	if (err)
>  		goto out;
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
> b/drivers/net/ethernet/intel/ice/ice_main.c
> index b084839eb811..c653029f07c1 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -8072,6 +8072,34 @@ int ice_get_rss_key(struct ice_vsi *vsi, u8
> *seed)
>  	return status;
>  }
>=20
> +/**
> + * ice_get_rss - Get RSS LUT and/or key
> + * @vsi: Pointer to VSI structure
> + * @seed: Buffer to store the key in
> + * @lut: Buffer to store the lookup table entries
> + * @lut_size: Size of buffer to store the lookup table entries
> + *
> + * Returns 0 on success, negative on failure  */ int
> ice_get_rss(struct
> +ice_vsi *vsi, u8 *seed, u8 *lut, u16 lut_size) {
> +	int err;
> +
> +	if (seed) {
> +		err =3D ice_get_rss_key(vsi, seed);
> +		if (err)
> +			return err;
> +	}
> +
> +	if (lut) {
> +		err =3D ice_get_rss_lut(vsi, lut, lut_size);
> +		if (err)
> +			return err;
> +	}
> +
> +	return 0;
> +}
> +
>  /**
>   * ice_set_rss_hfunc - Set RSS HASH function
>   * @vsi: Pointer to VSI structure
> --
> 2.51.1

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
