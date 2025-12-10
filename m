Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 274BDCB2AC0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Dec 2025 11:22:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CABD640814;
	Wed, 10 Dec 2025 10:22:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YMG2SSfiQsvx; Wed, 10 Dec 2025 10:22:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 15C924076E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765362174;
	bh=4vxcOH0cmzGWsiIW2wSTHOxq79YpzNLRXwGln9091jI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=T/wAoAWExpnll8CxbCqCxBpG3aCu1y+uqFzCWH77jVIpEdJqlq1EfB8W3y2+b9vaW
	 imgjvDGr7Q7o55GZB/iYSovefnEcdiqBfMSJzLU6KjWsvWohXER+cE7sJC5wHif9FQ
	 GwO4pCuSUMH/LtHyirChfDHVVAgm6V+AGnd5Wy2xc1p56uOPSfUeqChUSG5KfLeB5s
	 Z97iZCfHKd5nk61rBkGth0enl07JVZwRNGUHDdlTrxjrLWdvCeCHJICTz18FBDRzaL
	 ocslZIKJAVbKWnww9LcvoDgAO1/JHGRAFLSBoajxC9mjF8gnWLcnUCFtWzlsgoPTlT
	 RHBPlm55O97wQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 15C924076E;
	Wed, 10 Dec 2025 10:22:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id D7AA82C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 10:22:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CA19640761
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 10:22:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oTYYOOvjCfT7 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Dec 2025 10:22:51 +0000 (UTC)
X-Greylist: delayed 426 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 10 Dec 2025 10:22:50 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org F341440760
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F341440760
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F341440760
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 10:22:50 +0000 (UTC)
X-CSE-ConnectionGUID: daLgXF2IRsCxRIJZkZ4EPg==
X-CSE-MsgGUID: QU+2SGtBRDmZL0mkoN8HaQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11637"; a="77650113"
X-IronPort-AV: E=Sophos;i="6.20,263,1758610800"; d="scan'208";a="77650113"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 02:15:43 -0800
X-CSE-ConnectionGUID: JmLzgPhTRpewHbhvU0IUKg==
X-CSE-MsgGUID: 7VWK47+xS8iZoVcDQb8vWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,263,1758610800"; d="scan'208";a="219816680"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 02:15:41 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 10 Dec 2025 02:15:40 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 10 Dec 2025 02:15:40 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.50) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 10 Dec 2025 02:15:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KMuEuGNKECsPHeYvOmHjs0Gvx8cqGNjItYWKvJ+t4Z38nrj3bHs957eLewVBVuBS/aERlQKIJEmdCpt+1qWtB74mgbpbTMRGzqy38uPYLzBfrncXCXd7GUPAZnVv35zUdSViDMUZq8n6I8zGvvmtAOJ1zP7hhWVM3oH56ktDSbVAlmo4mM6gO0LLbFcHK3xCPzBx7LnF2yW+Gehpw43ZXFxCuI6R0Gzq51s2GH3U/h3rrQz+hQTaIbAM+e5Wf1PbUmYFpC3QgLdcS1JN9VR+JTOUq820Hl95td9Ij2TC0+sRrgDCM75Z04xkdj9UT3xTFyzpwvRFZgfiHrujOIXeBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4vxcOH0cmzGWsiIW2wSTHOxq79YpzNLRXwGln9091jI=;
 b=lV/GhYynKp+eiabigS1qZpsVOqoJAQr3JjwUBH5jrp0whDyWht+8WFziNRtUF1XdbcZEyYv0NjJMgVpgrbR2WpuXyMtsjHjdjEjhFRw5MDAyd9KI6yUWiU3wyLolwIlrnW5XVmzaSHBvGSdDyZXE5tzYBSjHqLdSj/s0nuX1tPakn+qMI6VHxfvU39z5WZABIoSWfuLQpnWo1+e+lw6PglqLEItakAN3IulAZO6xmky9pGRaL753U8xG34dqayNc0Vn56+Al82ZFSLbBv8HcqDko+qqwqTcJHl+ggymOLmN/p0k380Lrx8XgOTBotX5ddlRx3uWYqlp77KFI64CNnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5983.namprd11.prod.outlook.com (2603:10b6:510:1e2::13)
 by CO1PR11MB4993.namprd11.prod.outlook.com (2603:10b6:303:6c::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.7; Wed, 10 Dec
 2025 10:15:33 +0000
Received: from PH7PR11MB5983.namprd11.prod.outlook.com
 ([fe80::4d6a:a025:2e8b:b240]) by PH7PR11MB5983.namprd11.prod.outlook.com
 ([fe80::4d6a:a025:2e8b:b240%5]) with mapi id 15.20.9388.003; Wed, 10 Dec 2025
 10:15:33 +0000
From: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>
To: "Behera, Vivek" <vivek.behera@siemens.com>, "Behera, Vivek"
 <vivek.behera@siemens.com>, "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [PATCH v3 iwl-net] igc: Fix trigger of incorrect irq in
 igc_xsk_wakeup function
Thread-Index: AQHcaNepG5Dhp9j7SkeMRZ8aqGcrmbUaoAwQ
Date: Wed, 10 Dec 2025 10:15:33 +0000
Message-ID: <PH7PR11MB5983E3ED593B7EBDE8BA872EF3A0A@PH7PR11MB5983.namprd11.prod.outlook.com>
References: <AS1PR10MB5392B7268416DB8A1624FDB88FA7A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
 <4c90ed4e-307c-429a-9f8c-29032cc146ee@intel.com>
 <AS1PR10MB5392C71EED7AB2446036FB9F8FA3A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
 <AS1PR10MB539202E6B3C43BE259831AD88FA3A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
In-Reply-To: <AS1PR10MB539202E6B3C43BE259831AD88FA3A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=d3ac5aa8-3a96-4e14-95c7-b25deb848df8;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2025-12-09T05:54:50Z; 
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Tag=10, 3, 0, 1;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5983:EE_|CO1PR11MB4993:EE_
x-ms-office365-filtering-correlation-id: 18e95432-6eb8-45ea-f930-08de37d50e1e
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|921020|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?WlBDYlJlL1ZWMThnS0piVkk4MC9oa2NTT21Ca2pmQlFEcG8yYnlzeEZlNHVi?=
 =?utf-8?B?OVA0Z3VLcDgvUTJXQmd0eWxHR1JLbDdMOEovNGhTNFNKSG1iSEt4TFk1YnNR?=
 =?utf-8?B?T1lFY0V0NGdvalZleGw5ckFRMUYxZ3IwczJNWUY2a0N0emdYVWZ0aFl4bytZ?=
 =?utf-8?B?b3pMT2RJYXl3OWl4VjdqaVZzeE5DTmsvcXlKKzFUMWVyVTJMZ01tRkxEcThs?=
 =?utf-8?B?LzZRTDBaVitRdU05UUJEKzdzeEk4NTdCL1JFdFdGT01XS1dSeEQ4U2pkQ3Ri?=
 =?utf-8?B?c0tjOTVIOERlc25VSVQwd09UdzF6QlE3YW96aVlKVnk4M2pIeUhXemNCcE1D?=
 =?utf-8?B?MWszOGdwdlQyQ3dBamZTN0hUQkVUb1JOSVg4Q3VjTEZ0WGd4Y2NlRmlSK0l0?=
 =?utf-8?B?dE5rbkwrdmN0TFIxQ1FGTkZOR2pjVEN5Y3dKVTZUUy9rRXBGbDErRkhJdTQy?=
 =?utf-8?B?Rm1lWmE0VjQzbEFzVktYYmQzREdzcXBueEJqUlZnTDYzdUgrU05GZ0RWNGJt?=
 =?utf-8?B?NVNEMVRjNWJDbWNvdml3UURFSkxFM3FQRHZYZzFRcm1GaCt0YWkrdHB1QWIw?=
 =?utf-8?B?Ukd3UjZxYWJQSTUrcE5hZENoU1kyRzlhejFsaSs2SXZCd0Zna3F6Y3pxc1Bj?=
 =?utf-8?B?SFBSYXFjWUtxSTFvTkhaeGRBNkdwUEN0d0crdk9MQi8wbUcra2MrQXBYTjdP?=
 =?utf-8?B?dmVRTzVxTmcyMnpPb2szeTVEblU1eUQrb05FUEZMOXZjaFlPWlMzZXlLb1JV?=
 =?utf-8?B?RVpFcTJhWkdHS3drNWtmRTBLWlNsUW1rUjlrWHJONk1rUmFkc3NUVVRUTnBy?=
 =?utf-8?B?NTBkZVFNdldpcktvYmE0SGUweWJpb1ppRzNRNUEzZml5RmZKVFhFTkt1S1p4?=
 =?utf-8?B?V2xwdFVDaWtoYlBxb25JZFZwRnBDeW1mTWM2dzVoZFMwdnBBcG12cGlSTHU0?=
 =?utf-8?B?ekNudDV5RUhIaDR1dm5ZbGdHdW9hd2szcStsMi9zcW85em9YUWtCeWJ0MFdv?=
 =?utf-8?B?dEY3enJhbkpWRkttYkhrc0pSaDdlZXo5aHVMRkpPeWIwNWZVejUzT0xiZzRy?=
 =?utf-8?B?L3pFQmZXTEhCd0c3c0t3T05YTll6K00xUVN4OWVjdnJFejRwR050a0FUb0F3?=
 =?utf-8?B?V2I2a1hqV25tK0FOS0dlaFJuNm5JTkFXUGtIc2FPWmw0a28ybnhjZ0piZXR2?=
 =?utf-8?B?RVpzcnovR2dPcFFTZU5mblhyZWh0OFpBc3h0cmdFUUs2djdrdHpFK1lkSndl?=
 =?utf-8?B?ZEp0MzVyZHYvM096UmlCczM5bHhWdTFFWnpDRlpqd2NZR2NFdmdjYkZZZWJT?=
 =?utf-8?B?YjFlSG5jL25ubTB1RDBMdCtha1d0ekc3Y2VFaWYzYkZWQ1YzVDZKeVlqb2xF?=
 =?utf-8?B?MG50T3pPSmhXeXZ3ZUM4ZzRFK1JPYzBNVGFnZ1MrWlE5aWhVc3IvZjhKVjVp?=
 =?utf-8?B?SWd2dGZQZlRITVpEYjM0dGVOMGlqSWxzVHF2SzZNTFBkQlNzU0J3eXBLWGxp?=
 =?utf-8?B?ZEw4OHhFTkVXalV1bmd3RkhYenE3MUlkQnY1VzZJbjFkaXUzbEEvcEh3eUJk?=
 =?utf-8?B?ZlVyNXM5SGF6QmpSRTl1MURxSWJJRDF2QThkWnRDUjRrSFNSUThrUEVCTTVM?=
 =?utf-8?B?MFY2WXgyVWcyNVgyclgyMUFUUU8yT3BEMUNFMUNCdTk2bHBwY2dKcTl5aW0r?=
 =?utf-8?B?dGozWW9DdFRwQVhYSUpKNVhIbmtvZnJ3eTY2MjlUQVB5RG81aUVacDJwaHNO?=
 =?utf-8?B?MDJvRXZ2RVBaelN6Y3JIVWtYNmgwRTAzUitnb3lRdmRVS3lNa2NSWEgrU3BP?=
 =?utf-8?B?MFJwdWdabi9TU290M2Vua09SYWRaQVdoKzlSZlM1Z2g5MjdrYktkZXFkZ05Q?=
 =?utf-8?B?NDI2VUQyenRWdkFveXpVNGdPZ2svUDJkQjJQd29CMm5SR3lpVUFVTTE3aXlC?=
 =?utf-8?B?dVB6TFNuNG5oVlowdjM2T25hY3NoOGpqSDhkQWZaWWZVdVpJTEFKS1lMYi83?=
 =?utf-8?B?VHZZUENyamQ1REdCaFlteEJINXpudTAraWF6cnlFcGVHYytqMHkyampac1VD?=
 =?utf-8?B?VmswdEZncGhHOEQwZlR6QmNLdHJHS3ZEazdrUT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5983.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(921020)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?U2czVjBEZkpReHViN1h6L1ZsYVRkcWtOd0NEN3I1eUlOajV4K2J3a3dUeVZz?=
 =?utf-8?B?dU9vam9lT1ZaT0VjV3g0QXF2eEFDNWFXZ3oxMzEyN2lOdFpVUE5rcVlTYWh5?=
 =?utf-8?B?MTVqMEdMWkJZdHpQY0t5VzEzU0F5Z3dlME0yQVdLank5MytoS29KQ245UHA2?=
 =?utf-8?B?QkxyUGZobmNNR0ZXVUJEWXAvemsrOFpsTHMyU3gxNjFZdkNnbC9KMld1RTB2?=
 =?utf-8?B?TklXRm5WZTVCM1haaHJyRkhmZnNvVDdidHJpY29pdWhpZU9IMUJjaXpyVTRM?=
 =?utf-8?B?dWszUzc2SXJtU2pLQ3MwWUI2ZTR1V0lKZ3ByUzd4VU5XcW5aRG9ma0F6WFdQ?=
 =?utf-8?B?OExTQ2JReVhSdy9Yb0pwVHUyQks5SUFOOFpuRkpmZXczWHBCVDVyQXJCa3NR?=
 =?utf-8?B?aHJuSG9KdUpVQmY5WXIvZ3I0NjhzZE0xN2tSQk9LelpsRmpEUjdtOG5sNldH?=
 =?utf-8?B?TUgwWlV6V2RKd2ZwVDRNZy9YdG16dXBtR01mc0tDS0t4bzdyZ2lWNy9uYllq?=
 =?utf-8?B?NlFYUnRlaFdNaVp6akVWOFhMd0laNkFqK0pNZ1h6cHJnSXk1TmdOUGRuSzJ6?=
 =?utf-8?B?cGx5TkxBRmFoYzhPdlhyQnc2OElGcmdMcE92UEowNEhFMHFPUHhqVzZGZjk1?=
 =?utf-8?B?RGRHSWVXUWVOeTRGNnhFd1lZQnVhZHJqN1RhSXNpdGtvVnVLd2RCYXMwYjFO?=
 =?utf-8?B?WVNmNk5oOWVYWnBkcG1rM2lmb0JDRGtlSzRaWmM5Q2lTL2JDdXByZ1dqVWFn?=
 =?utf-8?B?TGltSmRId1VkNkN2Nk5qaGk5a21PQlUxcEVFZVZ4TlorTXJSMTViUHlFUHdP?=
 =?utf-8?B?anprM3ZYNWUxZXVESkVSYkhaL2RrOE1Zc3VvUzN3RkJJUEJYbGJTOUJaQVBR?=
 =?utf-8?B?aXllVldvNFNuTUx1cTMrVjVtSG1HU2IweDFZOHhsMFhsb0svZFVIT2Y3eldq?=
 =?utf-8?B?eWxOZWVtM3RrL1VhN202bDF0QjB6R0tiSXRJY08rQk9BMk4xQlZvRW5xdG5W?=
 =?utf-8?B?L0tOU0Jic3ZvdlVUZHJSbUF0RkZuSm85VU9weXhrWlBuM0hZUDY3STRVVUdm?=
 =?utf-8?B?dm8vM1lvenkyOVhNdDI4K2MwdTJTdmkxYnhtZVNvOHRIU3YwdytObWY3QzQv?=
 =?utf-8?B?TldXb2tFUXkybm1tYWtSYTRyak1RbDFMdVpSOUJ6UDIwU0Fzemk2QzM0WU1o?=
 =?utf-8?B?Z3ppb3N3WERXb0hxaWRHY3dOTmRmTzlTNEx1dktDcUhMVFF2RFZzUG5MNk9o?=
 =?utf-8?B?cmJlL0RDQ1BDNTVWamJsVnZSVTZ0Y0RRNStPbGpna3BmVmtFaTNHZFA5eWtG?=
 =?utf-8?B?VWR2dTFwNXFDd2d6R0R4U2s2cW1rMHlObHdJNGhBdFk2alIwVWsyazVwZXRB?=
 =?utf-8?B?YnF1SDJKY0QzK1BTOGNBem5rYnJQbGhBQlMrWnAvKzlxWEtlWUxBT2k3bVh3?=
 =?utf-8?B?Vzk5WWpRQVpWdld5NHZQckg2Z0hzYk0rVnRJTUlrQThuOS9ZV0FISWlFZTJQ?=
 =?utf-8?B?SmpBRmUwR1JQK3FMZ2xwQ3RSdEd1aGtoM0ovSHBMK2pGcFQ0b01DS3AxL25X?=
 =?utf-8?B?LzdON1o1ZU93anZiNHFvajA5MVhIVkFLNitEQXl3amdrY3gwVlZQNE1OTVdh?=
 =?utf-8?B?cGtqRGtSaFlPY0VOOEw4ZTVSL0RQZWZmR1F6WWFMOVNIYnh3RUs4RkFJRTZB?=
 =?utf-8?B?M2J0UlMrcmQyU3AxWVQ1a21LL2dSS01VVm01enVqZi9qODAxRnBSdjdPSFAw?=
 =?utf-8?B?MXVsRFQ2QXNaS2d2Z0huZ3NCL3VTT2dJcWZjWU4xaEU2UGpmU0M2ME9ybEhU?=
 =?utf-8?B?MGh2MXRvWHNSbENHelcxL21FK3ptVXhnSFNOQzVFenRYY2hGZWRnTnBweHBj?=
 =?utf-8?B?MjVYam1VbEZHby9mZUZHSXRtdVkyc29SazhaMG1SSUdvTGVPcTdtYm9YZWRy?=
 =?utf-8?B?eURaSHRSdlE1bXludERRanNuQVVQQW1EUTBmSGxqZzJkSmtwcXdMbzIxMUsz?=
 =?utf-8?B?OWJXVjdUMHExZ3lIbENzdlV6YTFCZ2k5cjZuTit1TWxHUVdQajNFem0vMmZh?=
 =?utf-8?B?VUMzMkVESm5MbEpEMHExWWNPVmFBNzN6SnRrNnY0L3E3R21qYlVYRXVueDUw?=
 =?utf-8?Q?uDYK4jGxbMkctr1NhQ+iXULZy?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5983.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 18e95432-6eb8-45ea-f930-08de37d50e1e
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Dec 2025 10:15:33.7639 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 84YCVtR8W+Dg1TYENDEhug0KgO0ACVUle78NC9t8pkPflHpKitqJOxWnPlV2oadJLdPOPvRLuBxl7XStYO4CHIKLz6lYe3pdvolQNfaag4E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4993
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765362171; x=1796898171;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4vxcOH0cmzGWsiIW2wSTHOxq79YpzNLRXwGln9091jI=;
 b=gGvdHXhZRjVFqTKBFfMuCEqev8BPyAZHwRguzdyj24423+2/TF251KvE
 n32c0KadKENT4ES/5Ry+RieK2pxTxjAI82HUFWVCJOOKjBKokg+lno70c
 23md7kHh0XddVufbU1gYaFjnlDw7bB8MLXOG7Jqh8xgTGnZS71b9W2hKq
 OTQRgTu4BqSP1IulmgdjyJNPUjWq45o5+ksNI4DStHPFhjNg0Tf2bioim
 piI7zXeedWiYtgyuGrqaMfKBZBEpAFodoY89ElCjAZOlF/33btwjU++mw
 YvZBIN53MM4CwJjvqlXeU80B0pUcgSb61XRZpL2KzKS8RRL9mLmCUX8nv
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gGvdHXhZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 iwl-net] igc: Fix trigger of
 incorrect irq in igc_xsk_wakeup function
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

Pi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+RnJvbTogSW50ZWwtd2lyZWQtbGFuIDxpbnRl
bC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYgT2YgQmVoZXJhLCBWSVZF
Sw0KPlNlbnQ6IFR1ZXNkYXksIERlY2VtYmVyIDksIDIwMjUgNzo0NyBBTQ0KPlRvOiBCZWhlcmEs
IFZpdmVrIDx2aXZlay5iZWhlcmFAc2llbWVucy5jb20+OyBLZWxsZXIsIEphY29iIEUgPGphY29i
LmUua2VsbGVyQGludGVsLmNvbT47IE5ndXllbiwgQW50aG9ueSBMIDxhbnRob255Lmwubmd1eWVu
QGludGVsLmNvbT47IEtpdHN6ZWwsIFByemVteXNsYXcgPHByemVteXNsYXcua2l0c3plbEBpbnRl
bC5jb20+OyBBbmRyZXcgTHVubiA8YW5kcmV3K25ldGRldkBsdW5uLmNoPjsgRGF2aWQgUy4gTWls
bGVyIDxkYXZlbUBkYXZlbWxvZnQubmV0PjsgRXJpYyBEdW1hemV0IDxlZHVtYXpldEBnb29nbGUu
Y29tPjsgSmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz47IFBhb2xvIEFiZW5pIDxwYWJl
bmlAcmVkaGF0LmNvbT4NCj5DYzogaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc7IG5l
dGRldkB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmcNCj5TdWJq
ZWN0OiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFUQ0ggdjMgaXdsLW5ldF0gaWdjOiBGaXggdHJpZ2dl
ciBvZiBpbmNvcnJlY3QgaXJxIGluIGlnY194c2tfd2FrZXVwIGZ1bmN0aW9uDQo+DQo+Q2hhbmdl
cyBpbiB2MzoNCj4tIEFkZGVkICdGaXhlczonIHRhZ3MgZm9yIHRoZSByZWxldmFudCBjb21taXRz
Lg0KPi0gQWRkZWQgJ1Jldmlld2VkLWJ5OicgdGFnIGZyb20gSmFjb2IgS2VsbGVyLg0KPi0gVXBk
YXRlZCBzdWJqZWN0IGxpbmUgd2l0aCAnW2l3bC1uZXRdJyBwcmVmaXguDQo+DQo+RnJvbSAzMjQy
MjU4ODM1OGE1MzdlZjc5ZGU0ZmY2MzBlNDQxNGUyYzZiOTM0IE1vbiBTZXAgMTcgMDA6MDA6MDAg
MjAwMQ0KPkZyb206IFZpdmVrIEJlaGVyYSA8dml2ZWsuYmVoZXJhQHNpZW1lbnMuY29tPg0KPkRh
dGU6IEZyaSwgNSBEZWMgMjAyNSAxMDoyNjowNSArMDEwMA0KPlN1YmplY3Q6IFtQQVRDSCB2MyBp
d2wtbmV0XSBpZ2M6IEZpeCB0cmlnZ2VyIG9mIGluY29ycmVjdCBpcnEgaW4gIGlnY194c2tfd2Fr
ZXVwIGZ1bmN0aW9uDQo+DQo+VGhpcyBwYXRjaCBhZGRyZXNzZXMgdGhlIGlzc3VlIHdoZXJlIHRo
ZSBpZ2NfeHNrX3dha2V1cCBmdW5jdGlvbiB3YXMgdHJpZ2dlcmluZyBhbiBpbmNvcnJlY3QgSVJR
IGZvciB0eC0wIHdoZW4gdGhlIGkyMjYgaXMgY29uZmlndXJlZCB3aXRoIG9ubHkgMiBjb21iaW5l
ZCBxdWV1ZXMgb3IgaW4gYW4gZW52aXJvbm1lbnQgd2l0aCAyIGFjdGl2ZSBDUFUgY29yZXMuDQo+
VGhpcyBwcmV2ZW50ZWQgWERQIFplcm8tY29weSBzZW5kIGZ1bmN0aW9uYWxpdHkgaW4gc3VjaCBz
cGxpdCBJUlEgY29uZmlndXJhdGlvbnMuDQo+DQo+VGhlIGZpeCBpbXBsZW1lbnRzIHRoZSBjb3Jy
ZWN0IGxvZ2ljIGZvciBleHRyYWN0aW5nIHFfdmVjdG9ycyBzYXZlZCBkdXJpbmcgcnggYW5kIHR4
IHJpbmcgYWxsb2NhdGlvbiBhbmQgdXRpbGl6ZXMgZmxhZ3MgcHJvdmlkZWQgYnkgdGhlIG5kb194
c2tfd2FrZXVwIEFQSSB0byB0cmlnZ2VyIHRoZSBhcHByb3ByaWF0ZSBJUlEuDQo+DQo+Rml4ZXM6
IGZjOWRmMmEwYjUyMGQ3ZDQzOWVjZjQ2NDc5NGQ1M2U5MWJlNzRiOTMgKCJpZ2M6IEVuYWJsZSBS
WCB2aWEgQUZfWERQIHplcm8tY29weSIpDQo+Rml4ZXM6IDE1ZmQwMjFiYzQyNzAyNzNkOGY0Yjdm
NThmZGRhOGExNjIxNGEzNzcgKCJpZ2M6IEFkZCBUeCBoYXJkd2FyZSB0aW1lc3RhbXAgcmVxdWVz
dCBmb3IgQUZfWERQIHplcm8tY29weSBwYWNrZXQiKQ0KPlNpZ25lZC1vZmYtYnk6IFZpdmVrIEJl
aGVyYSA8dml2ZWsuYmVoZXJhQHNpZW1lbnMuY29tPg0KPlJldmlld2VkLWJ5OiBKYWNvYiBLZWxs
ZXIgPGphY29iLmtlbGxlckBpbnRlbC5jb20+DQo+LS0tDQo+IGRyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2lnYy9pZ2NfbWFpbi5jIHwgODEgKysrKysrKysrKysrKysrKysrLS0tLS0gIGRyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfcHRwLmMgIHwgIDIgKy0NCj4gMiBmaWxlcyBj
aGFuZ2VkLCA2NCBpbnNlcnRpb25zKCspLCAxOSBkZWxldGlvbnMoLSkNCj4NCj5kaWZmIC0tZ2l0
IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19tYWluLmMgYi9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX21haW4uYw0KPmluZGV4IDdhYWZhNjBiYTBjOC4uYTEz
MGNkZjRiNDViIDEwMDY0NA0KPi0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9p
Z2NfbWFpbi5jDQo+KysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19tYWlu
LmMNCj5AQCAtNjkwOCwyMSArNjkwOCwxMyBAQCBzdGF0aWMgaW50IGlnY194ZHBfeG1pdChzdHJ1
Y3QgbmV0X2RldmljZSAqZGV2LCBpbnQgbnVtX2ZyYW1lcywNCj4gCXJldHVybiBueG1pdDsNCj4g
fQ0KPiANCj4tc3RhdGljIHZvaWQgaWdjX3RyaWdnZXJfcnh0eHFfaW50ZXJydXB0KHN0cnVjdCBp
Z2NfYWRhcHRlciAqYWRhcHRlciwNCj4tCQkJCQlzdHJ1Y3QgaWdjX3FfdmVjdG9yICpxX3ZlY3Rv
cikNCj4tew0KPi0Jc3RydWN0IGlnY19odyAqaHcgPSAmYWRhcHRlci0+aHc7DQo+LQl1MzIgZWlj
cyA9IDA7DQo+LQ0KPi0JZWljcyB8PSBxX3ZlY3Rvci0+ZWltc192YWx1ZTsNCj4tCXdyMzIoSUdD
X0VJQ1MsIGVpY3MpOw0KPi19DQo+LQ0KPiBpbnQgaWdjX3hza193YWtldXAoc3RydWN0IG5ldF9k
ZXZpY2UgKmRldiwgdTMyIHF1ZXVlX2lkLCB1MzIgZmxhZ3MpICB7DQo+IAlzdHJ1Y3QgaWdjX2Fk
YXB0ZXIgKmFkYXB0ZXIgPSBuZXRkZXZfcHJpdihkZXYpOw0KPisJc3RydWN0IGlnY19odyAqaHcg
PSAmYWRhcHRlci0+aHc7DQo+IAlzdHJ1Y3QgaWdjX3FfdmVjdG9yICpxX3ZlY3RvcjsNCj4gCXN0
cnVjdCBpZ2NfcmluZyAqcmluZzsNCj4rCXUzMiBlaWNzID0gMDsNCj4gDQo+IAlpZiAodGVzdF9i
aXQoX19JR0NfRE9XTiwgJmFkYXB0ZXItPnN0YXRlKSkNCj4gCQlyZXR1cm4gLUVORVRET1dOOw0K
PkBAIC02OTMwLDE4ICs2OTIyLDcxIEBAIGludCBpZ2NfeHNrX3dha2V1cChzdHJ1Y3QgbmV0X2Rl
dmljZSAqZGV2LCB1MzIgcXVldWVfaWQsIHUzMiBmbGFncykNCj4gCWlmICghaWdjX3hkcF9pc19l
bmFibGVkKGFkYXB0ZXIpKQ0KPiAJCXJldHVybiAtRU5YSU87DQo+IA0KPi0JaWYgKHF1ZXVlX2lk
ID49IGFkYXB0ZXItPm51bV9yeF9xdWV1ZXMpDQo+LQkJcmV0dXJuIC1FSU5WQUw7DQo+KwlpZiAo
KGZsYWdzICYgWERQX1dBS0VVUF9SWCkgJiYgKGZsYWdzICYgWERQX1dBS0VVUF9UWCkpIHsNCj4r
CQkvKiBJZiBib3RoIFRYIGFuZCBSWCBuZWVkIHRvIGJlIHdva2VuIHVwLCAqLw0KPisJCS8qIGNo
ZWNrIGlmIHF1ZXVlIHBhaXJzIGFyZSBhY3RpdmUuICovDQo+KwkJaWYgKChhZGFwdGVyLT5mbGFn
cyAmIElHQ19GTEFHX1FVRVVFX1BBSVJTKSkgew0KPisJCQkvKiBKdXN0IGdldCB0aGUgcmluZyBw
YXJhbXMgZnJvbSBSeCAqLw0KPisJCQlpZiAocXVldWVfaWQgPj0gYWRhcHRlci0+bnVtX3J4X3F1
ZXVlcykNCj4rCQkJCXJldHVybiAtRUlOVkFMOw0KPisJCQlyaW5nID0gYWRhcHRlci0+cnhfcmlu
Z1txdWV1ZV9pZF07DQo+KwkJfSBlbHNlIHsNCj4rCQkJLyoqKlR3byBpcnFzIGZvciBSeCBBTkQg
VHggbmVlZCB0byBiZSB0cmlnZ2VyZWQqKiovDQo+KwkJCWlmIChxdWV1ZV9pZCA+PSBhZGFwdGVy
LT5udW1fcnhfcXVldWVzKQ0KPisJCQkJcmV0dXJuIC1FSU5WQUw7IC8qKnF1ZXVlX2lkIGludmFs
aWQqKi8NClBsZWFzZSBjb25zaWRlciB0aGlzIGFuZCB0aGUgZm9sbG93aW5nIChkaXR0bykgY29t
bWVudHMgYXMgcmVkdW5kYW50DQoNCj4gDQo+LQlyaW5nID0gYWRhcHRlci0+cnhfcmluZ1txdWV1
ZV9pZF07DQo+KwkJCWlmIChxdWV1ZV9pZCA+PSBhZGFwdGVyLT5udW1fdHhfcXVldWVzKQ0KPisJ
CQkJcmV0dXJuIC1FSU5WQUw7IC8qKnF1ZXVlX2lkIGludmFsaWQqKi8NCkRpdHRvDQoNCj4gDQo+
LQlpZiAoIXJpbmctPnhza19wb29sKQ0KPi0JCXJldHVybiAtRU5YSU87DQo+KwkJCS8qKklSUSB0
cmlnZ2VyIHByZXBhcmF0aW9uIGZvciBSeCoqLw0KPisJCQlyaW5nID0gYWRhcHRlci0+cnhfcmlu
Z1txdWV1ZV9pZF07DQo+KwkJCWlmICghcmluZy0+eHNrX3Bvb2wpDQo+KwkJCQlyZXR1cm4gLUVO
WElPOw0KPiANCj4tCXFfdmVjdG9yID0gYWRhcHRlci0+cV92ZWN0b3JbcXVldWVfaWRdOw0KPi0J
aWYgKCFuYXBpX2lmX3NjaGVkdWxlZF9tYXJrX21pc3NlZCgmcV92ZWN0b3ItPm5hcGkpKQ0KPi0J
CWlnY190cmlnZ2VyX3J4dHhxX2ludGVycnVwdChhZGFwdGVyLCBxX3ZlY3Rvcik7DQo+KwkJCS8q
IFJldHJpZXZlIHRoZSBxX3ZlY3RvciBzYXZlZCBpbiB0aGUgcmluZyAqLw0KRGl0dG8NCg0KPisJ
CQlxX3ZlY3RvciA9IHJpbmctPnFfdmVjdG9yOw0KPisJCQlpZiAoIW5hcGlfaWZfc2NoZWR1bGVk
X21hcmtfbWlzc2VkKCZxX3ZlY3Rvci0+bmFwaSkpDQo+KwkJCQllaWNzIHw9IHFfdmVjdG9yLT5l
aW1zX3ZhbHVlOw0KPisJCQkvKipJUlEgdHJpZ2dlciBwcmVwYXJhdGlvbiBmb3IgVHggKi8NCj4r
CQkJcmluZyA9IGFkYXB0ZXItPnR4X3JpbmdbcXVldWVfaWRdOw0KPiANCj4rCQkJaWYgKCFyaW5n
LT54c2tfcG9vbCkNCj4rCQkJCXJldHVybiAtRU5YSU87DQo+Kw0KPisJCQkvKiBSZXRyaWV2ZSB0
aGUgcV92ZWN0b3Igc2F2ZWQgaW4gdGhlIHJpbmcgKi8NCkRpdHRvDQoNCj4rCQkJcV92ZWN0b3Ig
PSByaW5nLT5xX3ZlY3RvcjsNCj4rCQkJaWYgKCFuYXBpX2lmX3NjaGVkdWxlZF9tYXJrX21pc3Nl
ZCgmcV92ZWN0b3ItPm5hcGkpKQ0KPisJCQkJZWljcyB8PSBxX3ZlY3Rvci0+ZWltc192YWx1ZTsg
LyoqRXh0ZW5kIHRoZSBCSVQgbWFzayBmb3IgZWljcyoqLw0KPisNCj4rCQkJLyoqKk5vdyB3ZSB0
cmlnZ2VyIHRoZSBzcGxpdCBpcnFzIGZvciBSeCBhbmQgVHggb3ZlciBlaWNzKioqLw0KPisJCQlp
ZiAoZWljcyAhPSAwKQ0KUGxlYXNlIHJlbW92ZSAiIT0gMCIuDQpUaGFuayB5b3UuDQpQaW90cg0K
DQo+KwkJCQl3cjMyKElHQ19FSUNTLCBlaWNzKTsNCj4rDQo+KwkJCXJldHVybiAwOw0KPisJCX0N
Cj4rCX0gZWxzZSBpZiAoZmxhZ3MgJiBYRFBfV0FLRVVQX1RYKSB7DQo+KwkJaWYgKHF1ZXVlX2lk
ID49IGFkYXB0ZXItPm51bV90eF9xdWV1ZXMpDQo+KwkJCXJldHVybiAtRUlOVkFMOw0KPisJCS8q
IEdldCB0aGUgcmluZyBwYXJhbXMgZnJvbSBUeCAqLw0KPisJCXJpbmcgPSBhZGFwdGVyLT50eF9y
aW5nW3F1ZXVlX2lkXTsNCj4rCX0gZWxzZSBpZiAoZmxhZ3MgJiBYRFBfV0FLRVVQX1JYKSB7DQo+
KwkJaWYgKHF1ZXVlX2lkID49IGFkYXB0ZXItPm51bV9yeF9xdWV1ZXMpDQo+KwkJCXJldHVybiAt
RUlOVkFMOw0KPisJCS8qIEdldCB0aGUgcmluZyBwYXJhbXMgZnJvbSBSeCAqLw0KPisJCXJpbmcg
PSBhZGFwdGVyLT5yeF9yaW5nW3F1ZXVlX2lkXTsNCj4rCX0gZWxzZSB7DQo+KwkJLyogSW52YWxp
ZCBGbGFncyAqLw0KPisJCXJldHVybiAtRUlOVkFMOw0KPisJfQ0KPisJLyoqIFByZXBhcmUgdG8g
dHJpZ2dlciBzaW5nbGUgaXJxICovDQo+KwlpZiAoIXJpbmctPnhza19wb29sKQ0KPisJCXJldHVy
biAtRU5YSU87DQo+KwkvKiBSZXRyaWV2ZSB0aGUgcV92ZWN0b3Igc2F2ZWQgaW4gdGhlIHJpbmcg
Ki8NCj4rCXFfdmVjdG9yID0gcmluZy0+cV92ZWN0b3I7DQo+KwlpZiAoIW5hcGlfaWZfc2NoZWR1
bGVkX21hcmtfbWlzc2VkKCZxX3ZlY3Rvci0+bmFwaSkpIHsNCj4rCQllaWNzIHw9IHFfdmVjdG9y
LT5laW1zX3ZhbHVlOw0KPisJCXdyMzIoSUdDX0VJQ1MsIGVpY3MpOw0KPisJfQ0KPiAJcmV0dXJu
IDA7DQo+IH0NCj4gDQo+ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ln
Yy9pZ2NfcHRwLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX3B0cC5jDQo+
aW5kZXggYjdiNDZkODYzYmVlLi42ZDhjMmQ2MzljZDcgMTAwNjQ0DQo+LS0tIGEvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19wdHAuYw0KPisrKyBiL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2lnYy9pZ2NfcHRwLmMNCj5AQCAtNTUwLDcgKzU1MCw3IEBAIHN0YXRpYyB2b2lk
IGlnY19wdHBfZnJlZV90eF9idWZmZXIoc3RydWN0IGlnY19hZGFwdGVyICphZGFwdGVyLA0KPiAJ
CXRzdGFtcC0+YnVmZmVyX3R5cGUgPSAwOw0KPiANCj4gCQkvKiBUcmlnZ2VyIHR4cnggaW50ZXJy
dXB0IGZvciB0cmFuc21pdCBjb21wbGV0aW9uICovDQo+LQkJaWdjX3hza193YWtldXAoYWRhcHRl
ci0+bmV0ZGV2LCB0c3RhbXAtPnhza19xdWV1ZV9pbmRleCwgMCk7DQo+KwkJaWdjX3hza193YWtl
dXAoYWRhcHRlci0+bmV0ZGV2LCB0c3RhbXAtPnhza19xdWV1ZV9pbmRleCwgDQo+K1hEUF9XQUtF
VVBfVFgpOw0KPiANCj4gCQlyZXR1cm47DQo+IAl9DQo+LS0NCj4yLjM0LjENCj4NCg==
