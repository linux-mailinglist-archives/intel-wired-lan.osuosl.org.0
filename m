Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C9416AEE332
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Jun 2025 18:03:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2066180AAE;
	Mon, 30 Jun 2025 16:03:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id INg-DLLsr7dC; Mon, 30 Jun 2025 16:03:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4809D80ABD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751299383;
	bh=bXo+QmNzpfb+JYarIiGVXzZ3LSr823PfSFDJx9wCFUE=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ICfnP4QMgpaj2ia3VCq9q1uUbs/k6KmGNp74XfkEckZg8s+rbGpdwsEobxP5YOHft
	 KfTDU+9Ny3Mcvnkzzn1k0rRgFOd8AqRmVC9DWc3yEoZZlNmCDT4WtUCMP+3oNp17DG
	 0BlCDCJ2ks2/5qSol7yWxlHe1bp/NAom3L+KQuaa/4Q98uYuigcmi0EPeqZj9Mu80E
	 viJolCb1MBvcAkjfw3EDxuAoFYQnrwtoOl8tjMf746ao5Jwy7DFx1yg4oU/zAtlolX
	 pYmCVaF+pg2PiMX7CDr+l86wZVsr513GSTiSD1CEJO7EZotDrrResoeZstYsdJUN+T
	 YpsFmGQKeSvXA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4809D80ABD;
	Mon, 30 Jun 2025 16:03:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id D8EB51C9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 16:03:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BEEA860A78
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 16:03:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6RgjxGoz-iI9 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Jun 2025 16:03:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 035D760A5F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 035D760A5F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 035D760A5F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 16:02:59 +0000 (UTC)
X-CSE-ConnectionGUID: CyBoMEJ0QsyqltnfAig1Dw==
X-CSE-MsgGUID: he3kLGn1RSGBkfIyei9/MA==
X-IronPort-AV: E=McAfee;i="6800,10657,11480"; a="63786236"
X-IronPort-AV: E=Sophos;i="6.16,278,1744095600"; 
 d="asc'?scan'208";a="63786236"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2025 09:02:57 -0700
X-CSE-ConnectionGUID: iwX4EiM+TteCwG2y6KPIoA==
X-CSE-MsgGUID: ZumczpD1Qiy7mvME2DKEUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,278,1744095600"; 
 d="asc'?scan'208";a="152975610"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2025 09:02:45 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 30 Jun 2025 09:02:42 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 30 Jun 2025 09:02:42 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (40.107.101.87)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 30 Jun 2025 09:02:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AhSLMkEZa/1ICJ+QWyNcMQcqq0PsUYbXflBsWTnT/wuh1wEVchzP1oZgCXFCEHZl916OKZrYuzUCGw/mJWHFo25p4nIqlPH5344qOOT+vNbAz3J5hqpPh+21ibFjrbE2ry8/py6PsWgeNS5pnwPgZe6Oc4Ekzez46b2IImHZym2afBs4L6/JEIM1RxgOXEL4uMw6HoGu4sUj/Y4vd5/gd2/85TcS1DyOUCFXegr5ad6TMwkx5WftT2eY/vJwBUgyNlOi7bKPCo+/sYY3t6Q7jgIxapUODQUzSzmqyNLC0h0s7LG6A2q3JC+iPnlZ8Ta//Z0Vio35lXQw0FdIN3UGTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bXo+QmNzpfb+JYarIiGVXzZ3LSr823PfSFDJx9wCFUE=;
 b=Y7kbfDfL8BEpuS2y08eNbEZMDItbzTOxxSfcT3hnuEiDQLNXvGOz67knBR03vu0GqshL1QqFpPNkkvk7zdaeZQXuK/ELcYNc74DlrMtNfYPBVsKiSGjlUNVN6OU2c42fNJSvUutg9As9JPUHuoqTAiqZ2upjm9mf4tF4YrPvgB/Ycc16vMcDGls6P9Qc/k31Q3KP2wxT9UQSSMtC9mihBnnCtHR4SvcYlEAkMKtj27NXfQQQPtsRGM1zXydJH3119BAHB3YGdVgUy3sE2suLgRB3J+dckxAbE9tYiwfFYQqcMH9vKwE4g1T0X7zL8Y8KkZLXBxt97rWY2EzqdcZrKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by LV2PR11MB6069.namprd11.prod.outlook.com (2603:10b6:408:17a::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8880.27; Mon, 30 Jun
 2025 16:02:20 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%4]) with mapi id 15.20.8880.029; Mon, 30 Jun 2025
 16:02:20 +0000
Message-ID: <c764ad97-9c6a-46f5-a03b-cfa812cdb8e1@intel.com>
Date: Mon, 30 Jun 2025 09:02:18 -0700
User-Agent: Mozilla Thunderbird
To: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>, Jakub Kicinski
 <kuba@kernel.org>
CC: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Damato, Joe" <jdamato@fastly.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, "Czapnik, Lukasz"
 <lukasz.czapnik@intel.com>, "Dumazet, Eric" <edumazet@google.com>, "Zaki,
 Ahmed" <ahmed.zaki@intel.com>, Martin Karsten <mkarsten@uwaterloo.ca>, "Igor
 Raits" <igor@gooddata.com>, Daniel Secik <daniel.secik@gooddata.com>, "Zdenek
 Pesek" <zdenek.pesek@gooddata.com>
References: <CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfpr7dnZxzGMYoE44caRbgw@mail.gmail.com>
 <20250415175359.3c6117c9@kernel.org>
 <CAK8fFZ6ML1v8VCjN3F-r+SFT8oF0xNpi3hjA77aRNwr=HcWqNA@mail.gmail.com>
 <20250416064852.39fd4b8f@kernel.org>
 <CAK8fFZ4bKHa8L6iF7dZNBRxujdmsoFN05p73Ab6mkPf6FGhmMQ@mail.gmail.com>
 <CO1PR11MB5089365F31BCD97E59CCFA83D6BD2@CO1PR11MB5089.namprd11.prod.outlook.com>
 <20250416171311.30b76ec1@kernel.org>
 <CO1PR11MB508931FBA3D5DFE7D8F07844D6BC2@CO1PR11MB5089.namprd11.prod.outlook.com>
 <CAK8fFZ6+BNjNdemB+P=SuwU6X9a9CmtkR8Nux-XG7QHdcswvQQ@mail.gmail.com>
 <CAK8fFZ4BJ-T40eNzO1rDLLpSRkeaHGctATsGLKD3bqVCa4RFEQ@mail.gmail.com>
 <CAK8fFZ5XTO9dGADuMSV0hJws-6cZE9equa3X6dfTBgDyzE1pEQ@mail.gmail.com>
 <b3eb99da-9293-43e8-a24d-f4082f747d6c@intel.com>
 <CAK8fFZ7LREBEdhXjBAKuaqktOz1VwsBTxcCpLBsa+dkMj4Pyyw@mail.gmail.com>
 <20250625132545.1772c6ab@kernel.org>
 <CAK8fFZ7KDaPk_FVDbTdFt8soEWrpJ_g0_fiKEg1WzjRp1BC0Qg@mail.gmail.com>
 <CAK8fFZ5rS8Xg11LvyQHzFh3aVHbKdRHpuhrpV_Wc7oYRcMZFRA@mail.gmail.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
Autocrypt: addr=jacob.e.keller@intel.com; keydata=
 xjMEaFx9ShYJKwYBBAHaRw8BAQdAE+TQsi9s60VNWijGeBIKU6hsXLwMt/JY9ni1wnsVd7nN
 J0phY29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPsKTBBMWCgA7FiEEIEBU
 qdczkFYq7EMeapZdPm8PKOgFAmhcfUoCGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AA
 CgkQapZdPm8PKOiZAAEA4UV0uM2PhFAw+tlK81gP+fgRqBVYlhmMyroXadv0lH4BAIf4jLxI
 UPEL4+zzp4ekaw8IyFz+mRMUBaS2l+cpoBUBzjgEaFx9ShIKKwYBBAGXVQEFAQEHQF386lYe
 MPZBiQHGXwjbBWS5OMBems5rgajcBMKc4W4aAwEIB8J4BBgWCgAgFiEEIEBUqdczkFYq7EMe
 apZdPm8PKOgFAmhcfUoCGwwACgkQapZdPm8PKOjbUQD+MsPBANqBUiNt+7w0dC73R6UcQzbg
 cFx4Yvms6cJjeD4BAKf193xbq7W3T7r9BdfTw6HRFYDiHXgkyoc/2Q4/T+8H
In-Reply-To: <CAK8fFZ5rS8Xg11LvyQHzFh3aVHbKdRHpuhrpV_Wc7oYRcMZFRA@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------izyaYMgmdbFUBh4qruJVO5sV"
X-ClientProxiedBy: MW4PR04CA0170.namprd04.prod.outlook.com
 (2603:10b6:303:85::25) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|LV2PR11MB6069:EE_
X-MS-Office365-Filtering-Correlation-Id: 03da38ba-8a25-48a6-2273-08ddb7ef7e57
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7416014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UDdSS3BSa1Q2VGk4ZGVmSU56aWNDSXhqWVFPbmw4ZFcxSTVHeitXYXBHZTBw?=
 =?utf-8?B?TFNJZWNRdVdYOTIxTFREN1MzR3FCVnVnUk5iNzFJejh0WFZpckRmeHIvV2dB?=
 =?utf-8?B?UW5YdkQxZUdDRGI5SzY4WDZnRUVKTmdITDE0amJmVzZaVHkva2VxK3M1Tlkx?=
 =?utf-8?B?ckJZR1QwdFJ1aTdVRnh5QXE2aUNCKy9sYkdVWVpteVVYTVVSSjExdm55K2Jk?=
 =?utf-8?B?TG8zMDhmQ2l4VzQ4YzA2cDJ0WnVmOFVXaXUyM0hDUm5iS2xUYzlYQURjRDlT?=
 =?utf-8?B?SC85T2E1bUl3ZXFUNWVQd2FrWXEvRC9aTjYwcWJ3dTI0M0J1dXFTZWtjVGlw?=
 =?utf-8?B?dnRleEU1SE13RVJjUXpiZmNiVVIwTzZCS1pHUi9aUEp0bE9VQ0Y4WEVlcUVY?=
 =?utf-8?B?OVl3WmRHTXJRNmJUMzdPSk9BNkQrRFBYSG16eVFHV2h6K3I2QXFjeVMzWmxD?=
 =?utf-8?B?SjB3U0F6dEJWdUNTZkVsa21malZmUlpJODFvZWVGWWdIRjMwMldrYnlUM2VP?=
 =?utf-8?B?UmdIYWNzZCs1R2x0SmtSbUJpZnFNTHEyNHhNWDloV2V6RVJHeHBnRHhMd0VK?=
 =?utf-8?B?U3BpOFNxbFFEY2tyUlFxVUZ1L0lzVHZzU0xaR0RsdnR3engxWjZ3K3h1cEZv?=
 =?utf-8?B?cU1vY1dnNk50SEM4SThvcWw4ejNRdHM0VW16Zmh2MlM0d1V1R0hVQWNhWEJF?=
 =?utf-8?B?bnZTZ1VyclJiakRTWjRUTlBDR0hEdkxoSlhZSXdYT1ptWFdvY1pKUGtXcUNh?=
 =?utf-8?B?Y1JXUFVoVHdoYkVSMFpvQjM1Q05pcGo3TVJCMWcxYXY0ZTlwdC9mUFQxcjZC?=
 =?utf-8?B?c0tNK09EK0E5MHZ3UmZ6MlZrSnVOandpQkQ1OEZBSlJqMll1Yk9BOWhISkZE?=
 =?utf-8?B?aERmNjdJcDdDVUhsNnhldGtMR2lpdysrWC9yeURrUmtHS3Jub3dGRFBkTUpy?=
 =?utf-8?B?ZUF3aithU1RsaGZqZGpuNms2RVppTmkrcFpiM002TCs5WW10YUxVa2svZnR0?=
 =?utf-8?B?RzdnRnM3SFYvVHFsc3dsMWMxVVUxd1gyRFJZaElKUXRETWVYMW15aHFjYk1y?=
 =?utf-8?B?cHVMMFJhZ3JPWjZjV3VMTEQxWGtpM2F3SGZ2MEt6OHlldjNHN0RUck5tMXV4?=
 =?utf-8?B?ZmtZa3lyU2RaQ3VRZm80a2pMODZxcHVVRkRjRXZ0a0VvblorYzNZTEZMR1pE?=
 =?utf-8?B?amxvZ2NpNEtUejRMeEt2V05jOTNZWHIrQXZlNnZva3ZOTVU5TklGYmVHNDZX?=
 =?utf-8?B?M3N0dTZLNXp5NWwreFNXOFFibWN0c3ptTWFKcVpDVXZWeC9oRlZtbWNEQW11?=
 =?utf-8?B?ZkY5eHNYOGMrVy9JVEhBRzdUbWhWTDlkS0llZXZXeFVHUW1yQlZDZVBmZ0ZV?=
 =?utf-8?B?dXpmTFF4MWs3NGgrOWc1M1Ewd0d6Zlc5Yzdqdng5SnFHeWFmR3ppTDFFRCsz?=
 =?utf-8?B?Rlh3MVNZLzhCVUFMQ3hjMklIZmlxN0tvaE1BaVdxZXRHUndvOTZ6NitRMU94?=
 =?utf-8?B?SzMwNGxmUnlzaWw5MlNRV29GRXpOUFFYbzZpcno3Nyt6RWVxdUN6dWo1NHFD?=
 =?utf-8?B?a0MvcytxeEVsck9YZjhpZzdNMlhGaElEN0xDMFh2eXR5NHptZnl1L3Y1RlMz?=
 =?utf-8?B?bTdtYVRxbFlLL2hDUXd6OXBKcVV6Q01VbERyK3ZNQk9KNGxEaW5hRk9zYXZp?=
 =?utf-8?B?eVFpUk13SW5NMUoyQ2FsaUdxcXFLclJCdFA4dXpHQ2JzVGdja2xWYXFKOCtq?=
 =?utf-8?B?dTFLZEI2N0JvcjhITTZJVUdETGNRR1RWdEQ5QU9wM0dNWHZzd2VYY3Rxa3g3?=
 =?utf-8?B?T3lWbS9YVjNXSjJKZW1WcVdYMHR3NTludUdvSWFJTmttZDVlYjRwNDZmSEtv?=
 =?utf-8?B?a3lQQXIyWHpUNWVPV1FYYVVZZEI5UnVGN1RyMnVVNko1ME1lVkxJY2ttZHF5?=
 =?utf-8?Q?a1//KTGcc88=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7416014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YURaTVB4SXZVZDZvVXY2aWF4YWdBTXNFVkdrNjByUXFpdjI3WllzYUxiM2c4?=
 =?utf-8?B?MnEwc1N0NjlKWG5pWGlzMmxrMXl1cjlGN1NpNGtoOVpJRFBKWUxQRkg3K1hu?=
 =?utf-8?B?S1hmeTBSSXRsb1FkbTNPVzJScnRBdDZ0Y2xhb1VVOEdqVGpaZ1gvNmdOTXcr?=
 =?utf-8?B?Um1uWXFNZ1pScG81dnVhTXlLR0cyTFY5UXU3VnhvUlNuRkR0OTJsYVUrNGVB?=
 =?utf-8?B?YlhLVVJFb0RvZGxZOG1VRHV0MThxWFRHbWVnOGxzNG5FTUVoWHZ5VVVnY21v?=
 =?utf-8?B?eE1UL0UyRk9kZTByZ0xMWGdYb0d6QkZOZ3NQZmdHcERXL1k0KzYrL0pleGQx?=
 =?utf-8?B?bksxYWZGQU1ROE1FcTYxak5CWlNuWEhjbi9LWFpFQzFzSTNwUTc1TzZRSWM3?=
 =?utf-8?B?ay9FYWVZY0FkK05YaUpyMnNFdmhiZHhjVGd2UUxjbFcvdGIyRG1nRWhpa01l?=
 =?utf-8?B?WnlIbEp3WGljTDRRMVFKUXMwdWNYbzNjRzZVOC9PN0tqN1hBNDNMeWF6c0c3?=
 =?utf-8?B?aWp3cWtoV3doYmJXNjNNR2pwMUl3dmFCY3lnMm1SRVAwRVYwUW5MRFFGcmkv?=
 =?utf-8?B?cXl6dG80dHR3QWhaT3VrU1dGUHZGR1VCSVlFVys5T1FHbkNlNXlmbExMWGJE?=
 =?utf-8?B?MjdNY0tWUURVblVnS0NZcGp0YXZWemJpWHZKOWp5dGIvb2NCSDd0cmcwYlRD?=
 =?utf-8?B?WWRuUFFLQVYwV2tJQTB3OXc1UWc5QmtBYmt4NE5NakJGOEJLcGhXYjNEWmRL?=
 =?utf-8?B?RFJ0QVluRHEzU1lCOXE5K2JJWUlKV0czWVRXYjNqVnhpVVF1Z2VENytFN1ll?=
 =?utf-8?B?bjVwSEo0T3VINHQySkJxZXFadzNGNjJjWnZqMHcxUU1YYXFKN0J1Q3RwN1Fi?=
 =?utf-8?B?dzBYN3JxSCtmYVMvdTQvRVJ4ZUpaSVg4U2tkTGZKdU1sWjRLTncyNWZxOEdS?=
 =?utf-8?B?eEUwNEk5YWNPUXpaMGVuSitwclNHckgzQUVxeWIwaUcwZUFUalZYd3Fyd2FY?=
 =?utf-8?B?bGsxTmgwRENuQkZpZjhvSGlRWkNicm5FVjJUSWkyOUZPYUluOXIvdGQvQ3hl?=
 =?utf-8?B?Ky9FRU9OM04rNkQyVkFTc1FzNzkzcjlaTC81NkZlMzVmTlVmVFg4SjVkNStR?=
 =?utf-8?B?bjVmdVJLSWU3KzJLSE1jRzhNQkV1WWxOVXRKUElyR29PUVhpQ25qaVdJcFQv?=
 =?utf-8?B?NW85ZEF6Zk1OeHpudGt3SXVEQkNIV1FteVFTS2w1UTlZUUVyZW1Qbm01N01S?=
 =?utf-8?B?aE1udU4yaGQrT1I1L2dpcENtWmxoODNPbGl2cXczekN4UThlWWdmdVg0TFY4?=
 =?utf-8?B?aHV2eVYvejhGYkxkemhFTWo5cm5CWkVoV05xRGR3ckZiMjVYSHNrN1BqZlpY?=
 =?utf-8?B?OE41VUZBL1dIU205YTA0Zm1ya0N1ZlJ5Rlc1bCtpMWdOSHNPaTRDODFLR25F?=
 =?utf-8?B?V3VQWitUMVNzZlZpV1h4OWFDTmM2cWRENHFiNWkvRzU4SnZvT1ZOYzNlSkQx?=
 =?utf-8?B?aWpXcGQ1YXNHTVphc0pvZFVkbFBXb01nMWVoNEVMc3dtblZkYkx1aWRVY29x?=
 =?utf-8?B?QytabEd3UkhuZUdhQkE3eTIzSlZVb0RoZkRRTnJoVUFoMTNHWWFJZUNCNkt1?=
 =?utf-8?B?Y0xhZFNkWG1HYWJkZkpuU2tjZUVMV09FZVJSY2N6aHAxNE8zeGtJa2xwSFJm?=
 =?utf-8?B?a3lKYzJUYXI2bU92ditSSFFjMFQ2RlFFZkhETTVpQlFIQk03RWVFS1RzWUJs?=
 =?utf-8?B?aXpDQTM0ZFJkMGEySGlzUjhvM201VTUxTmVQWk51V1RHeCswNkVvQUE4QUZu?=
 =?utf-8?B?eXhCeU81QVVPK0xqK2RKeWYybXdqcFd1aVFhVng3YlRsVlVLTmx6MUVqbm95?=
 =?utf-8?B?T29nVGtEZWgxSDN4aHVqUnIxUzRnYTRxVVhmUjJaUllJY1JLR3k3dERtMGcz?=
 =?utf-8?B?aGtYa3pDcFcyZEVwd1o5bmhHbjB0ZmxEODdiNnhTZUtvSFJyemxnN3JTanNW?=
 =?utf-8?B?MU9IQUpydGJEY202eWJaYkwxVXhVaTBPK25Kb2VScDFKWlJOMnJJUkZGQWUx?=
 =?utf-8?B?TUJ4UEtsd3A5UzZENFN1aFpJVUJxZXArdU9JVXNrOWIybjU5T0tLVXlMNWJy?=
 =?utf-8?B?aWZxb05FQnBZM3E3TnBSVVZPVS93U0pibVlMajNnS1VlNk1HRVphRjQ3ZDZD?=
 =?utf-8?B?UUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 03da38ba-8a25-48a6-2273-08ddb7ef7e57
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jun 2025 16:02:20.4658 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: N8zmzjgFXR65I91D3Uwlw1+JxBSXht+OUHKfyaEv2SzaXA+msMjXWZuAXLHhII8q1gvwwEoHR/JosZnfoHjSWe4H+IBlNpKJ/SrlxWSimfM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB6069
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751299380; x=1782835380;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=str/wiWnfrpjXsLfvq4Uhu4su66Sj6or2YpJLiZ7+Ck=;
 b=lTMus8Cdla7BDyke86bBj6J1PCCfru/O0iKq9MCC+AuPDosW7/mNvag/
 JN+I890E4nHelJ0Gm/+ocOYI1JA0WyWfAiMep/RxNdbBGgzLOQykrAtgF
 Txu0MZ8V+3AH1c0QagaDupKGH/7Z1Dhp9T6nK7QqN8w9oVSxzpL8u0ud7
 SggiXvM2cOBTV3cbqPNkCxaTxWSEtugShMB7JvKLGZHzx48bNzY/S0mcK
 eLJHPOdiCPBEPFNTxK5y8Gp+P0iXAWHpO9w12AzvbOw+vB3zxsaEryzpu
 S2dNKy32z4kDcJ1eLsr7XF7Tc0U4BdE0oxiKvsjCUtNz4t4ZxmjhSz6t1
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=lTMus8Cd
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] Increased memory usage on NUMA nodes with ICE
 driver after upgrade to 6.13.y (regression in commit 492a044508ad)
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

--------------izyaYMgmdbFUBh4qruJVO5sV
Content-Type: multipart/mixed; boundary="------------UU9ONSOlTQBJMwqwMhzny9vP";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>,
 Jakub Kicinski <kuba@kernel.org>
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Damato, Joe" <jdamato@fastly.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "Czapnik, Lukasz" <lukasz.czapnik@intel.com>,
 "Dumazet, Eric" <edumazet@google.com>, "Zaki, Ahmed" <ahmed.zaki@intel.com>,
 Martin Karsten <mkarsten@uwaterloo.ca>, Igor Raits <igor@gooddata.com>,
 Daniel Secik <daniel.secik@gooddata.com>,
 Zdenek Pesek <zdenek.pesek@gooddata.com>
Message-ID: <c764ad97-9c6a-46f5-a03b-cfa812cdb8e1@intel.com>
Subject: Re: [Intel-wired-lan] Increased memory usage on NUMA nodes with ICE
 driver after upgrade to 6.13.y (regression in commit 492a044508ad)
References: <CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfpr7dnZxzGMYoE44caRbgw@mail.gmail.com>
 <4a061a51-8a6c-42b8-9957-66073b4bc65f@intel.com>
 <20250415175359.3c6117c9@kernel.org>
 <CAK8fFZ6ML1v8VCjN3F-r+SFT8oF0xNpi3hjA77aRNwr=HcWqNA@mail.gmail.com>
 <20250416064852.39fd4b8f@kernel.org>
 <CAK8fFZ4bKHa8L6iF7dZNBRxujdmsoFN05p73Ab6mkPf6FGhmMQ@mail.gmail.com>
 <CO1PR11MB5089365F31BCD97E59CCFA83D6BD2@CO1PR11MB5089.namprd11.prod.outlook.com>
 <20250416171311.30b76ec1@kernel.org>
 <CO1PR11MB508931FBA3D5DFE7D8F07844D6BC2@CO1PR11MB5089.namprd11.prod.outlook.com>
 <CAK8fFZ6+BNjNdemB+P=SuwU6X9a9CmtkR8Nux-XG7QHdcswvQQ@mail.gmail.com>
 <CAK8fFZ4BJ-T40eNzO1rDLLpSRkeaHGctATsGLKD3bqVCa4RFEQ@mail.gmail.com>
 <CAK8fFZ5XTO9dGADuMSV0hJws-6cZE9equa3X6dfTBgDyzE1pEQ@mail.gmail.com>
 <b3eb99da-9293-43e8-a24d-f4082f747d6c@intel.com>
 <CAK8fFZ7LREBEdhXjBAKuaqktOz1VwsBTxcCpLBsa+dkMj4Pyyw@mail.gmail.com>
 <20250625132545.1772c6ab@kernel.org>
 <CAK8fFZ7KDaPk_FVDbTdFt8soEWrpJ_g0_fiKEg1WzjRp1BC0Qg@mail.gmail.com>
 <CAK8fFZ5rS8Xg11LvyQHzFh3aVHbKdRHpuhrpV_Wc7oYRcMZFRA@mail.gmail.com>
In-Reply-To: <CAK8fFZ5rS8Xg11LvyQHzFh3aVHbKdRHpuhrpV_Wc7oYRcMZFRA@mail.gmail.com>

--------------UU9ONSOlTQBJMwqwMhzny9vP
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 6/30/2025 12:35 AM, Jaroslav Pulchart wrote:
>>
>>>
>>> On Wed, 25 Jun 2025 19:51:08 +0200 Jaroslav Pulchart wrote:
>>>> Great, please send me a link to the related patch set. I can apply t=
hem in
>>>> our kernel build and try them ASAP!
>>>
>>> Sorry if I'm repeating the question - have you tried
>>> CONFIG_MEM_ALLOC_PROFILING? Reportedly the overhead in recent kernels=

>>> is low enough to use it for production workloads.
>>
>> I try it now, the fresh booted server:
>>
>> # sort -g /proc/allocinfo| tail -n 15
>>     45409728   236509 fs/dcache.c:1681 func:__d_alloc
>>     71041024    17344 mm/percpu-vm.c:95 func:pcpu_alloc_pages
>>     71524352    11140 kernel/dma/direct.c:141 func:__dma_direct_alloc_=
pages
>>     85098496     4486 mm/slub.c:2452 func:alloc_slab_page
>>    115470992   101647 fs/ext4/super.c:1388 [ext4] func:ext4_alloc_inod=
e
>>    134479872    32832 kernel/events/ring_buffer.c:811 func:perf_mmap_a=
lloc_page
>>    141426688    34528 mm/filemap.c:1978 func:__filemap_get_folio
>>    191594496    46776 mm/memory.c:1056 func:folio_prealloc
>>    360710144      172 mm/khugepaged.c:1084 func:alloc_charge_folio
>>    444076032    33790 mm/slub.c:2450 func:alloc_slab_page
>>    530579456   129536 mm/page_ext.c:271 func:alloc_page_ext
>>    975175680      465 mm/huge_memory.c:1165 func:vma_alloc_anon_folio_=
pmd
>>   1022427136   249616 mm/memory.c:1054 func:folio_prealloc
>>   1105125376   139252 drivers/net/ethernet/intel/ice/ice_txrx.c:681
>> [ice] func:ice_alloc_mapped_page
>>   1621598208   395848 mm/readahead.c:186 func:ractl_alloc_folio
>>
>=20
> The "drivers/net/ethernet/intel/ice/ice_txrx.c:681 [ice]
> func:ice_alloc_mapped_page" is just growing...
>=20
> # uptime ; sort -g /proc/allocinfo| tail -n 15
>  09:33:58 up 4 days, 6 min,  1 user,  load average: 6.65, 8.18, 9.81
>=20
> # sort -g /proc/allocinfo| tail -n 15
>     85216896   443838 fs/dcache.c:1681 func:__d_alloc
>    106156032    25917 mm/shmem.c:1854 func:shmem_alloc_folio
>    116850096   102861 fs/ext4/super.c:1388 [ext4] func:ext4_alloc_inode=

>    134479872    32832 kernel/events/ring_buffer.c:811 func:perf_mmap_al=
loc_page
>    143556608     6894 mm/slub.c:2452 func:alloc_slab_page
>    186793984    45604 mm/memory.c:1056 func:folio_prealloc
>    362807296    88576 mm/percpu-vm.c:95 func:pcpu_alloc_pages
>    530579456   129536 mm/page_ext.c:271 func:alloc_page_ext
>    598237184    51309 mm/slub.c:2450 func:alloc_slab_page
>    838860800      400 mm/huge_memory.c:1165 func:vma_alloc_anon_folio_p=
md
>    929083392   226827 mm/filemap.c:1978 func:__filemap_get_folio
>   1034657792   252602 mm/memory.c:1054 func:folio_prealloc
>   1262485504      602 mm/khugepaged.c:1084 func:alloc_charge_folio
>   1335377920   325970 mm/readahead.c:186 func:ractl_alloc_folio
>   2544877568   315003 drivers/net/ethernet/intel/ice/ice_txrx.c:681
> [ice] func:ice_alloc_mapped_page
>=20
ice_alloc_mapped_page is the function used to allocate the pages for the
Rx ring buffers.

There were a number of fixes for the hot path from Maciej which might be
related. Although those fixes were primarily for XDP they do impact the
regular hot path as well.

These were fixes on top of work he did which landed in v6.13, so it
seems plausible they might be related. In particular one which mentions
a missing buffer put:

743bbd93cf29 ("ice: put Rx buffers after being done with current frame")

It says the following:
>     While at it, address an error path of ice_add_xdp_frag() - we were
>     missing buffer putting from day 1 there.
>=20

It seems to me the issue must be somehow related to the buffer cleanup
logic for the Rx ring, since thats the only thing allocated by
ice_alloc_mapped_page.

It might be something fixed with the work Maciej did.. but it seems very
weird that 492a044508ad ("ice: Add support for persistent NAPI config")
would affect that logic at all....

--------------UU9ONSOlTQBJMwqwMhzny9vP--

--------------izyaYMgmdbFUBh4qruJVO5sV
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaGK1CgUDAAAAAAAKCRBqll0+bw8o6EU7
AQC762f8LBiC8fObzaCUrNtN6uDPRl969xDbzjyICn3rKgEAsPlxiTkZy+0ZIUALHNMCGcs33jM5
Wsm8g/8l6xqlYg4=
=QBc8
-----END PGP SIGNATURE-----

--------------izyaYMgmdbFUBh4qruJVO5sV--
