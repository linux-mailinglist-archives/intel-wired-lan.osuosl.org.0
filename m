Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +AgiHs5/3WkyfAkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 01:44:14 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BF5453F44A1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 01:44:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2211F4276D;
	Mon, 13 Apr 2026 23:44:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x32WODfuO1ga; Mon, 13 Apr 2026 23:44:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8C27042776
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776123851;
	bh=3dDB3ec9f6DtKJDn1LvAtaeidcnATxYbgWyEYrGgv4A=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=704DhEPF22mttQYj1TG+NtD2UtMByGroJlcwZDclS+ZWhMYArlPJ8EAWWd8Wbf4WW
	 SslzufbaEJIUa6puoS3bdFhhqYZsctmds58S682P4doN+4SxGhM0MIuRLUUb/qbe3W
	 tGQE+31fLKmdVeoxpun9tnjCC60C/Gz60soeuUwMeo4Rsy0wQkDhshWk3KZVTBXaUn
	 3IMcmPIZihoGlTFHqrSZNl/LEgaDLPzFaHjdFI2zIYlX5MDs9Paq2NNGgIrHxw+ETV
	 V0abd53oviDFRYsvRGmtFvAuVL/eKZXR/3Rw2pAbl57C+dXwpH74C+cJf0VHWSd9vW
	 RWhJeOhms9MOw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8C27042776;
	Mon, 13 Apr 2026 23:44:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id B087A237
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 23:44:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A23D340073
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 23:44:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pwbMXd3PrAaT for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Apr 2026 23:44:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 98F9A40028
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 98F9A40028
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 98F9A40028
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 23:44:07 +0000 (UTC)
X-CSE-ConnectionGUID: SdJeDlPxQ8qzDR63wQQuFw==
X-CSE-MsgGUID: G7VR8wseSpGnrZbN4UNgvg==
X-IronPort-AV: E=McAfee;i="6800,10657,11758"; a="80956650"
X-IronPort-AV: E=Sophos;i="6.23,178,1770624000"; d="scan'208";a="80956650"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 16:44:07 -0700
X-CSE-ConnectionGUID: WNDrxVQJTvSZG8Dk3KaCxQ==
X-CSE-MsgGUID: TlhfwWG0QEuUUCbBznDY/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,178,1770624000"; d="scan'208";a="225620473"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 16:44:07 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 16:44:06 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 13 Apr 2026 16:44:06 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.19) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 16:44:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=T7EyuHYdQ4fTbdpnsx3dTluqeHkrb1RztTnBAP7Gzxq7NbLLdqzYRMbrDm0hKQPsAmY39kQHY1Pvh/JblVKvzvNBJdWR9d5Krb2w/3Iwd0ZouGCCO/Ba7ouB43T+594sC3FviVO247WaE3dj4XuaIzVpfyEeeducCvVqO6XNfzm71gDy3+7ghKld2dnCBMpVsy+wSoSNomJdAjEkAs4Am2pk9xwhPhSt3IMRDwy2AHJxd6m97/dpmA4+ru9vP3bcSaxS4IflrB1ZAZOyDOatiRvOGP9hGSqwbMWmp9Fcb4zLN1L/1WaF/JN0lBCneptAdx8ijq0cjMLKSIITvNgq5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3dDB3ec9f6DtKJDn1LvAtaeidcnATxYbgWyEYrGgv4A=;
 b=eSHKwsh7ttPgv0qr9PFsgLdZU1FgumttgmiBOYUeiY5yCIfLHHvA3vmK6wmtgig4jdyXJDklIDLWHjCruhdE6cHv75OeJyDoOBU4s9WahBJbmD3xfNfD5NcdxTPJmPUoeoCj0wcKjd76zdrND0SgqYqbuWTSL4uSnWbZiYlim+UvkdJRltfyTbJOTa9GwsZ6fYN+x+mYnBeqxh8rSZpFlrM2t8P8vq2H+w/L1SuhfgjgIbDjyBsNzSoGmAJoEJ3mroMbq6KF7Irzao57UR42pMi5jaajGHx62aO5/BoFiJd1CLjTgv/Tp3vpnUxqLw3SEDt8DF4SQOFkZuwfVfu3FA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7579.namprd11.prod.outlook.com (2603:10b6:8:14d::5) by
 SA3PR11MB7980.namprd11.prod.outlook.com (2603:10b6:806:2fc::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9791.33; Mon, 13 Apr
 2026 23:44:02 +0000
Received: from DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e]) by DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e%5]) with mapi id 15.20.9818.014; Mon, 13 Apr 2026
 23:44:02 +0000
Message-ID: <356d6a30-fced-4b64-b54d-b69aeb169758@intel.com>
Date: Mon, 13 Apr 2026 16:43:58 -0700
User-Agent: Mozilla Thunderbird
To: Petr Oros <poros@redhat.com>, <netdev@vger.kernel.org>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Aleksandr
 Loktionov" <aleksandr.loktionov@intel.com>, Nikolay Aleksandrov
 <razor@blackwall.org>, Daniel Zahka <daniel.zahka@gmail.com>, Paul Greenwalt
 <paul.greenwalt@intel.com>, Dave Ertman <david.m.ertman@intel.com>, "Michal
 Swiatkowski" <michal.swiatkowski@linux.intel.com>,
 <intel-wired-lan@lists.osuosl.org>, <linux-kernel@vger.kernel.org>
References: <20260413191420.3524013-1-poros@redhat.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20260413191420.3524013-1-poros@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0207.namprd03.prod.outlook.com
 (2603:10b6:303:b8::32) To DS0PR11MB7579.namprd11.prod.outlook.com
 (2603:10b6:8:14d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7579:EE_|SA3PR11MB7980:EE_
X-MS-Office365-Filtering-Correlation-Id: bf808bda-1626-40de-addb-08de99b68a26
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: H4D2/lz5uiejBo8MxmXCO9XR97/4HAJYYrN/qYxzJoSvT5jTVXj2G2lbKqmYlLXpQFEJtOt6y7TygzK0L5TCrZHS5Af3XRaFDIMC8yDFUQHo2qQrr12nsQYiSMmikdoow389Gs7sfzpo1OGDl4suE57Gqzmm0d1E0fTDhk5w1TEKo1cAWlbXmg3zEGsosQo8UP+lYf7alLIIKZCeUZReSoc7SAJlPmzzcZXZIHNd4OwSrW1IYy3+Pakqs3H6udzrIHYVxW0qsoRfDpxQ2zMKt1yKww9/p45U9C2/tslPl+wmN/GMYu4ii17rwPGBaN+EixR48vOhWii6LfqDCIrxT7RFSVuySsI/n4Rctvylyw0ZNsn0morJfTWcR/eNsAwLwhUlPLtboCcm4w4gUyicFu9F4wmoE4wCucqkqkoCjbw5M/JYHmj9UXZ66jb55ZWMp7R9ovf7150lcef0zaq5ZNugkFeaoXOAYKaVet//Wan2IPQZ3W5+fAiAzjSk7Hy7I44oyjW9KxKdmI/moquDc9TAtTJcDbh5DLmbmEIT8YmbLCM9VlOXGi8IChxXqgXdvZ2R5fQICuBKR8Q6tRo841t+DlQWeVeMa+Zib69wNTiHXiqcAQfU1UeXBf/MyPPJ5VylrLW1jadkBI2FQh2v/8nQdqkAwc5JDnwfo3ai1k1lkBk8SEHz1OaXG9vCEf/QJpXfJh36K8aKA9tdIrSd6SYjAZZK/hOwZm0lV6ymDQI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7579.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SlJZckU5SW9XS1NSRysyclJ6SzlXcWZvb2IvR3Fhdy9RQlhwQXdSeXQySjlF?=
 =?utf-8?B?R0l3eURRVUpyQmVsNTdndFM3MHBZcUptYUtML0dvbkUrZVRQNWJIcGNsYnEx?=
 =?utf-8?B?NW1weDhkaEo4dGlyUmttWUZpYURZV3N2aGpTaWcxKzNib3BiclRBT3VjYTEy?=
 =?utf-8?B?YWVwcCtERXNuWG1IWkk4cU1od2pIemRUVGQrRi90WUUxU0IvLy9tM0NtcnBY?=
 =?utf-8?B?TWYwNDlMZEFpTDkxRjkyV3c3eFZRZll5M1U2VEdkdmV5WHhIOWRVWHg2dmVh?=
 =?utf-8?B?eWo4bmZpdk1wTi9ycGdHNkVidHo1WE8yMGg4bENaWWYvTE02cHdXZ05uN2dG?=
 =?utf-8?B?ck5PUWNkUVVQZ2F0dEU5bmFZVDBrVkR2NUYwOC9LWmJYUG5xQkN1ZlBtMlpi?=
 =?utf-8?B?bjlsYUZEYjkyVEIxVXJEMGJSTlZyNG1yTXl2UEtYdXJnaVRtZllsWGRIVmYx?=
 =?utf-8?B?OFY4VUVRKzRQVS81SjVtWUVISUFvRjh2NS9FRFNIOVViWG5mS0wyWTBjaGdo?=
 =?utf-8?B?aFZIN2xDS0tHWTQybDBTWTAwUzd6aldOaEQ5dHUrYUllQVlHK2p4UEsvUHRp?=
 =?utf-8?B?NlY1QkJUWFdGVk1HdnpzZVp0Lzd0bU9WNDJpdE8wcnJ3UklEemplNW0vRnB6?=
 =?utf-8?B?MWlZRW9ReDdlSEphdzlQeXFWUkVuOTlDYWd5czdsQnh2Zi9md1VNMEJ5OG9T?=
 =?utf-8?B?V2FTREJwbk5nV0lualBqcTZBeGdURzI2b0ptUFBZVGh4b1ptK3VJd3BpSTBR?=
 =?utf-8?B?TDdxZGtxQXZ6NTRFd2dkbnpsek04TXhML1RXU1V0dVRndnZ0bDhWWE9SaUtP?=
 =?utf-8?B?Sk55WXhNdlBhd2MyUDZydWozYk9tVHhCR3RrZjhYek1WdGZpUi8wU1hvemlt?=
 =?utf-8?B?aGR4a1lnaDAvQTB2ZDhkdWFXeGZTbW9GYW9FOWdGckJ6elFzcE0vUnhlbElz?=
 =?utf-8?B?OWxqSWlCREo0UXBzbEE1VEpLVzJsK2VKaXRheS8reUdQV05WTlpVdjlFd0wx?=
 =?utf-8?B?TkxjZEE1K3k4TDVMZnQzZ0F3VnBGZVNBTk5KaXlxL0kxRkNhMFgzQkhaa2xY?=
 =?utf-8?B?ZkVkMjBYL2t6b0hKOVhkdWxFRC9icFZmTnpXNVhoZEpuN3BxNzhsYnRLSFN4?=
 =?utf-8?B?YjlCY0wwVVo4aCtaZmdEQUdTaGFET0lWd3JTZ1Bvc2pERkpKUTE3cW9oWS8v?=
 =?utf-8?B?MTBISEg0UVZ5eitXV0dOcFNkenUxM2Nva2JoMnp3eFViN3NrSzlhc29jZ3M0?=
 =?utf-8?B?Ums4RFlaT2sweElzWm5JR2RBcm5MdnYyUGphVG9UdElNMG1OL0EzVGc5MTJk?=
 =?utf-8?B?TzNucGRQcFBsOGtUdHpZRlZCWDhCeXFydjlsUkwzeXhJbHNCd1RzdFJwcnQv?=
 =?utf-8?B?N1dFcWVhMDlaTUV1VlFVNVRvKzA5dGpZRlptNXRIbElQdnE0T2RuWVRON3k4?=
 =?utf-8?B?TGlOWmd5OTUyVHpvWGdUWVhTTEZHZVBadUF4YU5xVXJMWUVvT3NuSjVPOUNB?=
 =?utf-8?B?c09vcE8zVzlKbFRvVUxrRHF6UXFwSTBSdXlqZTJtV2YxM010NXFkcW96K01j?=
 =?utf-8?B?Wk82enRwMzlkMHBMZGZCZCtFblRjOGhHdmVpdE5WN3dqRHlEdWRJWmRzNC9a?=
 =?utf-8?B?bnhrUVA0b0ZBMGNCeHNHRjdvL0FKZVZLTjc1TjRQZ2NDTkVsK1h0ZTBlcGFJ?=
 =?utf-8?B?VUQ2Y1haZkJoYk9BNzlPTGZaRFZNd3RvY1EvYjE0d3k3cE9helV0SHZGQllt?=
 =?utf-8?B?emRLMElrWGgzV3A2NVFTSVptbkQ5K1YxcVJDS2llNEVMeGpNdDRxOGhGaUJm?=
 =?utf-8?B?NmEycytqZ1hrSXI2MFA3MzZQZm5uM20zS05RbXhCWGFQZlpBUDRaM2pOKzBt?=
 =?utf-8?B?WU1tOXNtbS9IVytHQ01EcHZQaFVMMUhxWGVNMi9BdkdTTnJFN0lLU3lTbWNC?=
 =?utf-8?B?TlN3Ui9USWRNaDJXeCtwdm0zRHlTMW5seDY4ckRkZEhMazlPS3hnZWpsTWEy?=
 =?utf-8?B?V3YrdTZSTHRJLzZDaGNpcHBRTEc2Rm9BSkE0eTQyR3ZPekhQaXJQSUxnUStO?=
 =?utf-8?B?MXNGOXg5enZzYThuOVpWZXpoNnJEUWs5em5Gek4xQzY1QkgxbCtaM1gzMVRS?=
 =?utf-8?B?UVFQdUNmT2ZxR1p5eGtMTkRLa3BqU0M2SzNXcjV0Wm8wNEVFQlJTbHB1S2k0?=
 =?utf-8?B?V0dvTmVSL2F4cWxvVG5wWmNiMWp4Z2V6cEozbllwNUNsRzNFTmRxNjQ5N2Vi?=
 =?utf-8?B?NzIvSlZqSUZKajFYRG9UMFdYcVNiN3dPL0RlUUJYS2VEb1dZOU1mYU1ybE9V?=
 =?utf-8?B?bTZDdkIyYld3eDdqVHZWWWFUNXJYdzBpRndxYW12K0FobENuaGVtQT09?=
X-Exchange-RoutingPolicyChecked: O/iGFFXh7Ox/TTUrqAxdKoPrWM3D/QkfKqs7KTeMbH1xEgVZ8fmeeHJiC5IPqLEb03s7JOmrTV2mSYxdR2D1oulshUf5AVfjS14lgT5oBRZsfMmmZPWvV0eUthjEOPmVzGysOcjgPZQs19BjgXJJc5nqA+CkZXwNSPk9y6Lc0yjrLv+aI18B2a0WgLuB2pTRvf188B4dzMSsKWGAprxVBV8C8yEGVS7VqFKWmwDzVEsP7KXol5TcZiFlA5363owywJUlqi9J411f92AA5YqXlA91oVrplV1OPnI003FtuXMdo9I8RHUiDXtbTxFLPATHTGszsD50gUT8+s8hmj1DLg==
X-MS-Exchange-CrossTenant-Network-Message-Id: bf808bda-1626-40de-addb-08de99b68a26
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7579.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Apr 2026 23:44:01.9936 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wylWtinuGaPM3ENoK1j4nvJ4BtnOtyY/+HmNQtGoBJxX5F/EPLBRpW6FGbSZgKoDmnemmaNPsok6X/cJTjlK0fd+bOk2cHxBDhPEZrFRBq4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7980
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776123849; x=1807659849;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gyidXkzJ5HtA7gaANWL2odA04ZqLTZ8+0+CqBa5hL7I=;
 b=EQv695a/5Cv4nMdKX5Y85ze9BQnCcEMwv9ANnzbCGcOnbTu2KJjfPEl7
 LfBaeo93ZkGZYMPI3g8sU2oXMf/RkLhif/Y+9lwmzb5if2Pb208G3Dyzc
 P4knbRuFLKIYh/OxXyilt4gLhO3S3EzsCJuR8IdNfDbHNevCFyfKojEix
 9UIjfwbGYmobJga2nhUIAkf3JXrjMLCzj3UWwP5pDiW0FSjmkrJHsYMn3
 0O0Rii1fTo0idyFhGLIWVYO376QAfd0snEGYX2gZtZCer7E/h3YDM7Tg7
 HssZQW4Su2dIFOMZNCAcuPyssj2H03M7p8zHn7zUSooFr7WT117SQDr97
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EQv695a/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix infinite recursion
 in ice_cfg_tx_topo via ice_init_dev_hw
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:aleksandr.loktionov@intel.com,m:razor@blackwall.org,m:daniel.zahka@gmail.com,m:paul.greenwalt@intel.com,m:david.m.ertman@intel.com,m:michal.swiatkowski@linux.intel.com,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,m:danielzahka@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,blackwall.org,gmail.com,linux.intel.com,lists.osuosl.org,vger.kernel.org];
	NEURAL_HAM(-0.00)[-0.992];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: BF5453F44A1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 4/13/2026 12:14 PM, Petr Oros wrote:
> On certain E810 configurations where firmware supports Tx scheduler
> topology switching (tx_sched_topo_comp_mode_en), ice_cfg_tx_topo()
> may need to apply a new 5-layer or 9-layer topology from the DDP
> package. If the AQ command to set the topology fails (e.g. due to
> invalid DDP data or firmware limitations), the global configuration
> lock must still be cleared via a CORER reset.
> 
> Commit 86aae43f21cf ("ice: don't leave device non-functional if Tx
> scheduler config fails") correctly fixed this by refactoring
> ice_cfg_tx_topo() to always trigger CORER after acquiring the global
> lock and re-initialize hardware via ice_init_hw() afterwards.
> 
> However, commit 8a37f9e2ff40 ("ice: move ice_deinit_dev() to the end
> of deinit paths") later moved ice_init_dev_hw() into ice_init_hw(),
> breaking the reinit path introduced by 86aae43f21cf. This creates an
> infinite recursive call chain:
> 
>   ice_init_hw()
>     ice_init_dev_hw()
>       ice_cfg_tx_topo()         # topology change needed
>         ice_deinit_hw()
>         ice_init_hw()           # reinit after CORER
>           ice_init_dev_hw()     # recurse
>             ice_cfg_tx_topo()
>               ...               # stack overflow
> 

Oof, ya thats not good. I guess this only happens if the topology needs
to change, so it wouldn't affect many systems where we had already
changed the topology before hand on the old driver.

> Fix by moving ice_init_dev_hw() back out of ice_init_hw() and calling
> it explicitly from ice_probe() and ice_devlink_reinit_up(). The third
> caller, ice_cfg_tx_topo(), intentionally does not need ice_init_dev_hw()
> during its reinit, it only needs the core HW reinitialization. This
> breaks the recursion cleanly without adding flags or guards.
> 
> The deinit ordering changes from commit 8a37f9e2ff40 ("ice: move
> ice_deinit_dev() to the end of deinit paths") which fixed slow rmmod
> are preserved, only the init-side placement of ice_init_dev_hw() is
> reverted.
> 
> Fixes: 8a37f9e2ff40 ("ice: move ice_deinit_dev() to the end of deinit paths")
> Signed-off-by: Petr Oros <poros@redhat.com>

The fix looks correct to me, and definitely the most elegant.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
