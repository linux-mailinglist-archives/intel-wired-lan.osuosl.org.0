Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 97A75B591FF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Sep 2025 11:21:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C45D260A6A;
	Tue, 16 Sep 2025 09:21:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VzQAOWu1Tp-q; Tue, 16 Sep 2025 09:21:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 33FFF608FD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758014517;
	bh=sGQpHY0c3bdCcuWNTAH3qoDivHhOzrJt0ziYX2845+4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pXsekfWNbg4BCeFpnZNNCHYEgoZ6Y3/S1T1X71GGSRvuF+cMKST7aRJbX7qYfmATv
	 KosihcgK7wUAUIHiUxIkm4o1PeshCxgiPCsvoUukx3Eswbydpg/W6lpGMmfWL70B34
	 ouE6SPywurFWA4fV0ClwSTti9BO1z2NAkveautIpHMo0doNYE9UZ/3gP6h1Fw3mxEx
	 vMjC+r97nSQajVRCOqWAZXvFsfppmPBJW3lDM39b+CpbHY36oLpO1wexyzbhwLUX4H
	 60kpuoy2ZqZFTFnn9X2A+4H8YPvEY65V3TfVPbmC2mizUEeMditAm7kxyQO+9Ut5g0
	 mkU8JB3c8euzA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 33FFF608FD;
	Tue, 16 Sep 2025 09:21:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 5D5B3199
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 09:21:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4E9E4608FD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 09:21:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0cH8Gstorpyq for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Sep 2025 09:21:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 69F0F60A55
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 69F0F60A55
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 69F0F60A55
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 09:21:54 +0000 (UTC)
X-CSE-ConnectionGUID: J1TObHrAR4KlaVPzAQa+Jg==
X-CSE-MsgGUID: CKuyxCGEQuCyOW1zmesDwA==
X-IronPort-AV: E=McAfee;i="6800,10657,11554"; a="60157407"
X-IronPort-AV: E=Sophos;i="6.18,268,1751266800"; d="scan'208";a="60157407"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2025 02:21:54 -0700
X-CSE-ConnectionGUID: J8cHtkcZQvqma4YzO3g9cg==
X-CSE-MsgGUID: OBIGQ13JQuuvqBzOnMS5ZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,268,1751266800"; d="scan'208";a="174969308"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2025 02:21:54 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 16 Sep 2025 02:21:53 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 16 Sep 2025 02:21:53 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.50) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 16 Sep 2025 02:21:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tpgwT8HpWBNMSn6XrgydOYAi8tVpIP3smBb3zR9Ive/EPJKgldVyX1b6kegGhsf8t1PHeRVAbFtb8WjZqZ4YyueR1B2eyZL9NkymgAau9xcGXxCy9HCRWQuqOO0AIkerO4CXwVheaQkSkcoGJew08JRpyZGsy7ZcPOMQ8z+BeDB96OUmh9ZhcrP9vF2WpKGLpTPKsgRHIfrQ6NYdzDVTKh7WBD1mW3yDoC1Sf7KJtdPtvyPcQTfKt+8URtrccSeajosGL+zAOspjm8MuQyaEjbW39hNELlu5rPoMHEyfuZpxtFKblBvSezu3IfyKJvfjvimyMCX4I0JGyTQJjNQrrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sGQpHY0c3bdCcuWNTAH3qoDivHhOzrJt0ziYX2845+4=;
 b=Z6m2tTUxZSB5dT78oNCNjtuOATaHGaXm9ZxmZskf/fy4i9p6CmQG5tlmupvWHQ1vBhT+E5Ad1c6xTEZ2NfFaKlOosvlehNTGISjibs4OWD/NUTyKy9KMuT4HDkC8eJ39/kgHHwYfxMdYTRrd6EaXVnBrdIEEm8oF3v4VCgCqfDr9lk6aLkwf70TE1I4nDWQRvBsvdHMbO5fhltbLvMG5ZNh3f6T/IK+t6TE64mIZTfqoZZYSNCbU/gy4kR2100u2rWirNz0pCdhjDhWDU/UquSmkSVa/3lJllBLsHw2Mkosj503bCpuBJya3jUrE55t7dMtdZ2DcnJYS1uOuobCeMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by DM3PPF8F79256C7.namprd11.prod.outlook.com (2603:10b6:f:fc00::f37)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.23; Tue, 16 Sep
 2025 09:20:20 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9094.021; Tue, 16 Sep 2025
 09:20:19 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Greenwalt, Paul" <paul.greenwalt@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>, "Greenwalt, Paul"
 <paul.greenwalt@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v7 2/2] ice: add E830 Earliest
 TxTime First Offload support
Thread-Index: AQHcEIRHXJg+5Qknl0+1HyltqS9JybSVWv9g
Date: Tue, 16 Sep 2025 09:19:53 +0000
Message-ID: <IA1PR11MB6241298FC25531AFA45097498B14A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250818132257.21720-1-paul.greenwalt@intel.com>
 <20250818132257.21720-3-paul.greenwalt@intel.com>
In-Reply-To: <20250818132257.21720-3-paul.greenwalt@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|DM3PPF8F79256C7:EE_
x-ms-office365-filtering-correlation-id: d32ba732-a5c0-470d-e214-08ddf50241b3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?yvkv2RDJRqSN7lldwNxeqyzVnFera2zYw2JzW2kbjEoyBPmtpvqa55cxmfU9?=
 =?us-ascii?Q?z4V8bfiTk5/7d26nawjprW5JeNGlzWMRT/k5eAyX+yNwjhRE9jBV9CaifPRN?=
 =?us-ascii?Q?9gRO/6tu7z93QC7bvQe1nOgQCM5hZl09AOReGa7G3kWRDohNf+E3+3obTGKM?=
 =?us-ascii?Q?ds2MIojvZaSVfn7q2VhlXVYTVJOqNknxzs3VAgnqMyGudNKSax/fSybfA+3h?=
 =?us-ascii?Q?eGeS56lrXaVT4pVY5EES/i5kJHcaoW03PAi1j0BMgluXIZVPIC5LAjeBipuR?=
 =?us-ascii?Q?Je3CdjAs7f1HClOFNaXjcMiDsrV/uKO2hcZXGAgiMQiQ9CoHvjs8rMH55tEE?=
 =?us-ascii?Q?vT6kChk0oxdQ7y2bRzdbc0+QsQ+ZFrIVWDzCcUxSmh396P68iCHkXGh/+gTx?=
 =?us-ascii?Q?3fW6IRKLUKCASTO2dpFuhTCqy38EqcFks7We0l+cUYmfrg6NPgJcgXG0q2eO?=
 =?us-ascii?Q?sbPC1T2FYl8851PqOIvJ6qb68Vs4BqzG/xkSvr+V1MdK/I989luUZ3+EYPqn?=
 =?us-ascii?Q?RF3eaKCSq+F6eUZjf7YZ3DIlhIPwhAdjsmjolGOmlzeL4p9Ai7CR/MhBiHyL?=
 =?us-ascii?Q?n5kECLppsw7t86RaWsh/aIW7ZDsUxE5uoQhcQm0dy8lAOK7vTlAmKfyjW1lb?=
 =?us-ascii?Q?PMuHffSZV/x/N6hmeMGjAhkUyupFsGGGd9KHGax3Bo1AEUxt3jUgvlJwG9Tr?=
 =?us-ascii?Q?mQbrugUeSDXlovk0ijcCobXpXaCvQoMU+ymIIgyIeM+IIJmZyqSOEpwC+CCC?=
 =?us-ascii?Q?MAcf/O1NJw1coWSgQcP1aYiVUdk3d4D2ZJpqAadzJ6cqRpS+zjpzPcrg2O0b?=
 =?us-ascii?Q?v/33M1VHematH+53HU4oh/UlKvrQoWsrLEJ+Tsgeq29B1E3TgL77YMkktyIo?=
 =?us-ascii?Q?DuXJkly0TMezudniTzMKplnrQsCxrnmuq4/icMqFe6VZd8LBfmO4DeAf9Tfx?=
 =?us-ascii?Q?qSA1jpmunR4dRu1U5hMQrnkD09tfJbrgdgMGvGpKfze48IRzWssfOyQv1izI?=
 =?us-ascii?Q?wT9gmEEAZjNxeWX485PkYE2rI+eVDEDyOzhGAFieEi0Qe4m/v0SkBCKBA704?=
 =?us-ascii?Q?BA03KhJcTBmrytktrGnK88voDLjc7wzznjhKkFHsWXDa4ZY/0lI5V0xGe/zw?=
 =?us-ascii?Q?Yc1Ts3cFHs6DoD7n5IgsgxQk3jjF8QDVCvdPGyCztVSC2mC7n8kqpxJhOJvU?=
 =?us-ascii?Q?+k/JROEVRnHIARoNDZPaiXwHJ51rb+5q504r2ybpWYkUBc3gULAKDfDz065N?=
 =?us-ascii?Q?gAUiHyxqVwj9cMc7XOePNmCZSUR+yPTeXF73G2Chq83Vajs3AWGTORBlMMxK?=
 =?us-ascii?Q?al+JpT+Tt2/FCRBs3hFz+YT610U/26hl4h54UpnqhN+A437TTR/67Kw0ZiyT?=
 =?us-ascii?Q?GQGJ6Gd6Ei7CREWJ1J1Ti8PMjR3XsxWpwvPWFbtyIMJBPqYB6zfTvY/y7lUP?=
 =?us-ascii?Q?bT/RIiTw2hFWTEDzCqFbtjTTr6J9HI4E0kZuRG2a49WgsEO4vCXouAViUPBK?=
 =?us-ascii?Q?XmWj1wqyKfhlpGs=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?viDE86KkS5mg4GS780SDenYVKgTouYkDpeSu0j15CLSbsnlteiFKrBydmvLn?=
 =?us-ascii?Q?DLK4NTcP2DeaGico0/hPXfo75zjHZa1LIcbBTGlmBANizFDLtS8PkwTV6I+G?=
 =?us-ascii?Q?w7tiIYquTGmInQu6AF0mpS5vlo0d+9YUpCkR9GhDAiEyFQPU3fuIsdAsP9W9?=
 =?us-ascii?Q?U6FmUwLhHzxvJRSvv9gMxT/B13/N6UtwnIlhunfl0IpqDy0lhmtbnwgfY7lE?=
 =?us-ascii?Q?Xb7ororBDHXogA8oTGl6f664gLSgUKMcQ5MSJAI51KnHZFsrbRLRn0X4qio1?=
 =?us-ascii?Q?3R3CvNa/2B2QgerwXibY3zWTBu2JW/wzlDrNh96RCN2EwBcwYtcdZEbEpHZu?=
 =?us-ascii?Q?yy7bHTEy0Q25DUaOvsLL9UZki07cARTORLZsc9WIASRAnZ34CgDH8gS4ildy?=
 =?us-ascii?Q?IWHNdyscx2TRwhu0yWrWR3LzWUIO0+6S1/0otjgs4LnBCpM8CryT+H+JaMhO?=
 =?us-ascii?Q?cD/UhtgJlV87iI6wfaqmB29HgucjxuPQHjojls95kY95HmDWlsmrgsXZcPFX?=
 =?us-ascii?Q?TY1+Ctfk1N42lV6zJly51tNGU4StGr/kR/bYzS80G10ESfxE1Taoj9+Yhtnu?=
 =?us-ascii?Q?ATw5/hVwkaZP7euIuI8Ux5mxyeHbH6R6Pbg14CztKV4F88JTvyWEzZPGqcLv?=
 =?us-ascii?Q?xPMBFUSIqsE19gcVXIr6HZN4hArmot40ixMI/K5sKfMlnOeK1IeXtlIBhc6x?=
 =?us-ascii?Q?bEQvuEPVjr7f27+FtLmyW5tlEvb9CzMA24/9fVKN/7A5BPjKYqHd7tr6VdPr?=
 =?us-ascii?Q?jgC4TBGtPVq/ALSd8QO1008mOF48hcS3p2sDAlwzVca0XE5T1pBEP2/89253?=
 =?us-ascii?Q?RYbIo6dTVexY5CKp4des7HAK8N5VTrvHKMwwsE5Z4WxLLV/dTSHM4e4jK80b?=
 =?us-ascii?Q?tuuQX+gcTueJxjeonc8WpfDRCkvlND4zqNDCgkGAbKH6KIlsgnF2WAz9PuNH?=
 =?us-ascii?Q?zMy9R7Rf9zPNofp+OBDRXGvRI03OoSe0R2opx7kNHV55BRxXMA7Tr6rgvwZM?=
 =?us-ascii?Q?6Ny/cymSHtMIt56f92cAyCN2ww+lm5RrLtiPBYWohM8JkhupI9XsUcr4y6xC?=
 =?us-ascii?Q?iHT9ra4ME957eKeIJOCFhVwNOYY6qEuB53oO0VuD1MRhngUXcOY/kOL55udI?=
 =?us-ascii?Q?6TPnAxWfD4xquQYFF2dRnD7xvd6ierqjhzip3096WYOPenC0BKxB/yK+8hJA?=
 =?us-ascii?Q?VTQn2pznaum2CBWfZf1D5Ur2kLeJUQzqAHU/urPF3XBbc2Qc/GZx3DBzfxEl?=
 =?us-ascii?Q?td7oZ7Vje5LQhFqt81s5/o97UYePULCq3UjsAiVgS5y8HICvdxK2xJakCEKY?=
 =?us-ascii?Q?wxJXri7kPUkV6+gcc6n1X5YMGPDqI+myJ03DOyIv3fvxTPaPT+WQRQj+ZvEt?=
 =?us-ascii?Q?eN41U6115gG4rW2l70CB62123gmrrHbi7jqpJaqdvvKqy+8l+xWnHrK206qF?=
 =?us-ascii?Q?sBJGYoFrdjcsva+Cah2gyxDkAzcFrEAdxQyV2Kq5vePHFt/BDIsfJIdCKO7o?=
 =?us-ascii?Q?7pVQVfcoy6EZfVnjBAZYor2w8nANftnwPnpfpkIXuDbk0dBaUl2yrvJv6x1e?=
 =?us-ascii?Q?niOUNhMQaP9XpgR38lQz7N89OUVpyjMPZ70+ZOjv?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d32ba732-a5c0-470d-e214-08ddf50241b3
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Sep 2025 09:19:53.3730 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Vh8i+/Jj0FXuvhn1uo1a1Yg61QATtN3ue684Gfy+rDqRoAOEr1qaF7sSctGzS42Cl6G3RHCXgVTq7UWvvmtwlQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF8F79256C7
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758014514; x=1789550514;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dhs0Wa9gBtONJ1BxUP62NqIXrf0SoyoIm8Ga70HhHf8=;
 b=an5OhwvTHff7Sz0KuSuJ4siUuG0L+Bq7EjQ/fXfTEPOEdoFTHwCoglYW
 JLLmNC9yu5LGRJJtkdOQQW/N0kap19Km+sfzS73/0J5A1v9D40iZYab/S
 kM8EMWUMM3IN0mhFwfDkJaehMGXmROe6usPuDeZKGGBsGKqjSOrzWkLXb
 wkac8H84BZF8erAsFiDSsaOjsGoa/A83ZXmPjLZRhPISABDAv7/b0kclB
 mW9F7GCuGVvG1MMIF1qXnqJQ5Yc/32iS/zQLfzTI2p4wygqSB5aNY/g1/
 FsTlgJR3Fd1h7bdUBy1k/i57Kr9OHLhfWTkY2dSobuB/obMu03pspwkAH
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=an5OhwvT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v7 2/2] ice: add E830
 Earliest TxTime First Offload support
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of P=
aul Greenwalt
> Sent: 18 August 2025 18:53
> To: intel-wired-lan@lists.osuosl.org
> Cc: Fijalkowski, Maciej <maciej.fijalkowski@intel.com>; Greenwalt, Paul <=
paul.greenwalt@intel.com>; Loktionov, Aleksandr <aleksandr.loktionov@intel.=
com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v7 2/2] ice: add E830 Earliest=
 TxTime First Offload support
>
> E830 supports Earliest TxTime First (ETF) hardware offload, which is conf=
igured via the ETF Qdisc on a per-queue basis (see tc-etf(8)). ETF introduc=
es a new Tx flow mechanism that utilizes a timestamp ring
> (tstamp_ring) alongside the standard Tx ring. This timestamp ring is used=
 to indicate when hardware will transmit a packet. Tx Time is supported on =
the first 2048 Tx queues of the device, and the NVM image limits the maximu=
m number of Tx queues to 2048 for the device.
>
> The allocation and initialization of the timestamp ring occur when the fe=
ature is enabled on a specific Tx queue via tc-etf. The requested Tx Time q=
ueue index cannot be greater than the number of Tx queues (vsi->num_txq).
>
> To support ETF, the following flags and bitmap are introduced:
>
> - ICE_F_TXTIME: Device feature flag set for E830 NICs, indicating ETF
>   support.
> - txtime_txqs: PF-level bitmap set when ETF is enabled and cleared
>   when disabled for a specific Tx queue. It is used by
>   ice_is_txtime_ena() to check if ETF is allocated and configured on
>   any Tx queue, which is checked during Tx ring allocation.
> - ICE_TX_FLAGS_TXTIME: Per Tx ring flag set when ETF is allocated and
>   configured for a specific Tx queue. It determines ETF status during
>   packet transmission and is checked by ice_is_txtime_ena() to verify
>   if ETF is enabled on any Tx queue.
>
> Due to a hardware issue that can result in a malicious driver detection e=
vent, additional timestamp descriptors are required when wrapping around th=
e timestamp ring. Up to 64 additional timestamp descriptors are reserved, r=
educing the available Tx descriptors.
>
> To accommodate this, ICE_MAX_NUM_DESC_BY_MAC is introduced, defining:
>
> - E830: Maximum Tx descriptor count of 8096 (8K - 32 - 64 for timestamp
>   fetch descriptors).
> - E810 and E82X: Maximum Tx descriptor count of 8160 (8K - 32).
>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Co-developed-by: Alice Michael <alice.michael@intel.com>
> Signed-off-by: Alice Michael <alice.michael@intel.com>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> ---
> drivers/net/ethernet/intel/ice/ice.h          |  33 ++-
> .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  35 +++
> drivers/net/ethernet/intel/ice/ice_base.c     | 245 +++++++++++++++---
> drivers/net/ethernet/intel/ice/ice_base.h     |   1 +
> drivers/net/ethernet/intel/ice/ice_common.c   |  78 ++++++
> drivers/net/ethernet/intel/ice/ice_common.h   |   6 +
> drivers/net/ethernet/intel/ice/ice_ethtool.c  |  14 +-
> .../net/ethernet/intel/ice/ice_hw_autogen.h   |   3 +
> .../net/ethernet/intel/ice/ice_lan_tx_rx.h    |  41 +++
> drivers/net/ethernet/intel/ice/ice_lib.c      |   1 +
> drivers/net/ethernet/intel/ice/ice_main.c     | 109 +++++++-
> drivers/net/ethernet/intel/ice/ice_txrx.c     | 173 ++++++++++++-
> drivers/net/ethernet/intel/ice/ice_txrx.h     |  15 ++
> drivers/net/ethernet/intel/ice/ice_txrx_lib.h |  14 +
> drivers/net/ethernet/intel/ice/ice_virtchnl.c |   2 +-
> 15 files changed, 722 insertions(+), 48 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
