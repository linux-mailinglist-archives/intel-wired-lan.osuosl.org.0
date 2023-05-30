Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B34A5715415
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 May 2023 04:56:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A0647831E3;
	Tue, 30 May 2023 02:56:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A0647831E3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685415403;
	bh=LZiciW5zDSOeYbzgIIbXUty8UIUuTrxz8BaMbHQeXCA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BnlrLa5dc+XNxtP1sNaQ+k4QSuyn0hDntovoQ9vB69sX9k/FTX8unYmP79tPFW3rK
	 kb8yfiKcp6YkY9GYbTRqclvT02cDpj9w0NbW/duSQ7eCxDMQwhjr14Ggkam9VfupKw
	 NcICVMxWDmvZJX3OTj91+Xti/0dgwKgZVftaOY1YLvSjJS7tbAQ+yB8ALcA8xWbT0W
	 TNSRopy0QT7hVoXWVg2ByTs23yep0X3O5aVME6r42eketquTWZqQWkhnBHhKgiRW+G
	 sKVtR74ZeuAsQEZ5i2G1N/P6MrlQBArLOqfe1q6ND2HTsffXsmFGECRVR+S1zd82XF
	 +RSJAl3NQvkmg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id byWI7kWFvvYZ; Tue, 30 May 2023 02:56:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 49C7C831AC;
	Tue, 30 May 2023 02:56:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 49C7C831AC
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0DCA31BF5E6
 for <intel-wired-lan@osuosl.org>; Tue, 30 May 2023 02:56:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CD08C41861
 for <intel-wired-lan@osuosl.org>; Tue, 30 May 2023 02:56:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CD08C41861
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VgJbCBa1k28L for <intel-wired-lan@osuosl.org>;
 Tue, 30 May 2023 02:56:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 37EB74185F
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 37EB74185F
 for <intel-wired-lan@osuosl.org>; Tue, 30 May 2023 02:56:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10725"; a="420561335"
X-IronPort-AV: E=Sophos;i="6.00,201,1681196400"; d="scan'208";a="420561335"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2023 19:56:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10725"; a="796093740"
X-IronPort-AV: E=Sophos;i="6.00,201,1681196400"; d="scan'208";a="796093740"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by FMSMGA003.fm.intel.com with ESMTP; 29 May 2023 19:56:33 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 29 May 2023 19:56:33 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 29 May 2023 19:56:33 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 29 May 2023 19:56:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nBjiJB8QYIUsYf7041U7KmU5Ix+MFaoCHIJy66irMW8l+UQbNDlKyTGq/marx9sq4rBUzcl87chDVUnQonui5S906ZlqZF41caQqsRUS5oQMP2XhPjASePDfDf6iGMeB62WfPH+4xp04xo4zeV+0P9I82Qtkr/3umiuUQpvsB5UBJRKiXqaXHJsBjAnIAitwfHaU0cYScpH/h2E8BJBVu1tbn9S5DYdHuPAdqOrO3KlNlzeFm6b+Lbq7X6pBsPTr3v3HKi8ZFiOOTf3o9hp6AvzfHsWUwK1xO6icWej1/AC1tWBYRTO2P/6qefP+a3PNn/tMOxgj8tcmUvgkBNY8Uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vj0Pk6GG05Gv9yhLBPoeBftR3bbKemyXzzFitNhGXwA=;
 b=aBj6T7tIXASpk9MYX4TS7d+wVvMOJpOzX3nZMog8MRGpzEEyNbpDSe700dYwTwh6hW9urBVcPFpy7so41MoURLcJlYCsus6otJz9DEzYkzfWh/e1w/8J2FRjqglP0BHXb3nkhv4FLfUZALn5oEyXqPAUYMaMwX+lgo9EQXFTAAd4PqUayEUnXUCHDAlVQlRvuHyyk9O3673sWgiFtPWj1wQw1GNv2vMUHysI7LIvEq5+faREw6BjCV0dUFJTiEQNqevw0d3Kdk7ExAglYtvFCyU02nGK0VyjC5Zipc5VsItAC9VFPujlVWLKFuTQNQPN9iPccP+A7okzQ4YCkoG22Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 by SA0PR11MB4766.namprd11.prod.outlook.com (2603:10b6:806:92::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.23; Tue, 30 May
 2023 02:56:30 +0000
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::748:8cea:e1b3:88f8]) by SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::748:8cea:e1b3:88f8%7]) with mapi id 15.20.6433.022; Tue, 30 May 2023
 02:56:30 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>, Jakub Kicinski <kuba@kernel.org>
Thread-Topic: [PATCH net-next v2] igc: Add TransmissionOverrun counter
Thread-Index: AQHZbDpn2JK3jVhflUSI5puiu0TQs68xyOCAgAAHwwCAFIX2IIAA5i4AgCiCLhCAAdRAgIAAO9SAgACXJQA=
Date: Tue, 30 May 2023 02:56:30 +0000
Message-ID: <SJ1PR11MB618021DE0462B2DC7BD207ADB84B9@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <20230411055543.24177-1-muhammad.husaini.zulkifli@intel.com>
 <84acb1a0-f51b-cd2d-d42c-5133767a6698@intel.com>
 <20230418171904.2d01642c@kernel.org>
 <SJ1PR11MB6180117EC9550B1993944DE7B86F9@SJ1PR11MB6180.namprd11.prod.outlook.com>
 <20230502082734.0f2f88b1@kernel.org>
 <SJ1PR11MB6180A8759928896BE0C04A0CB8459@SJ1PR11MB6180.namprd11.prod.outlook.com>
 <20230529135949.wfrcll3t7nkgna45@skbuf>
 <20230529173357.jpqun5o2z7lebreb@skbuf>
In-Reply-To: <20230529173357.jpqun5o2z7lebreb@skbuf>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6180:EE_|SA0PR11MB4766:EE_
x-ms-office365-filtering-correlation-id: 19a1e14e-0654-4e58-0adb-08db60b97803
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vv9zBpfgHagVW/qP56ZDMEIFrnx4+WXkFUzqzF6EQEg4q87ihTaBC5iNTPCmM9rvuGUNBDfmvHUZXcwpbTsryZMbbSgeT/fK7L//uQiHOKtzbijRqBTRzBP8buFcWS4H8LhxcVzbtof8M8op9rWwF/G6zvkbyjsFilem3Ws5TGntw9z/7bbeaOQub+mFNZcyx/Y3vMmr9X3GohXr76/frv6lxlZDr6imdiPqC5A38SMApu5I/16KGDavlLlLNszju2FV9tPW8YyeeZOL+VwTEG6J8WtMUT6QxE15LBFdfm9u9c6As9GK27Qau1IV7YVDCbnhYBp0w79MIVARi9ED6wMZvzhbrrFmhyTlBHljqQfDOFprJjwhFlVNwn0lidH/UNaxtcNOQ9d9+l7cI2lqMXoJrpTJr4mf723D9eQT93TboNLHZ2xH6ytF3AHMyYtwKxFd6YMK4eLIkx3/AeihG1FcDyGmNVLjgVFj1YrXU2UeNJliGWBF+Q1AZll6YllYD7WFCu88piCzt3gEnvW/B0ZiGrfl0OnMcXMruz92rn0lwNTxs2WvtssJaojbi1HBcg3yS5Av6Rf47q+QrbUC/89RZDpjbHKXRajrsEL3KXHYP4XIhwV9RrqZeqFYW2G7BKZjKj3f0mvrNJ4s8dNeHA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(376002)(136003)(39860400002)(366004)(396003)(451199021)(54906003)(71200400001)(478600001)(110136005)(8676002)(8936002)(52536014)(5660300002)(38070700005)(2906002)(86362001)(33656002)(4326008)(122000001)(64756008)(66476007)(82960400001)(66446008)(66556008)(66946007)(76116006)(316002)(55016003)(38100700002)(41300700001)(186003)(966005)(6506007)(9686003)(26005)(7696005)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SldOK3U4WTVQL2tBaE5JaS9tdFJDcDlxT1BDLzc0eThjOFN4QjJVaFB0eTJL?=
 =?utf-8?B?bFZOYWVIbDErKzNzNWk1WURxa3FDVWoyQWFFanFtd1JKTmxTLzg1djdTYU10?=
 =?utf-8?B?akZGemhIWStDV0xLM3hjZWZPYkFaUjQ1OFh1R0xJOWhhVngrazkwVzNNZ1dJ?=
 =?utf-8?B?U0VqZ21JZ2dZS2w2MDNCckF2R1hibmxSQUxsOGVpSk0ybFIrelNmM3FoeTZH?=
 =?utf-8?B?enlsbFVINWp0R1BCNkllNjB5Rk9oNGNhQm9tRmJSRWN4aVVxTXhNbGxGUStR?=
 =?utf-8?B?SDFYV2k2ZGczRWFsQnVWc1huVHMwcjNJSklFbmlBV1g4TGhKZ0ZGRHNhSzgx?=
 =?utf-8?B?bXpZMUJuL25seTNTSmpjWUpRNzVSblVORDJtMlF2dXpCV2VMVG5OeFlCR1Q4?=
 =?utf-8?B?T0RWQ1JDb0hpczB6MzRDRWE1T2VGUGorZkE2K2RabmVldHJGOVI5cFVuQm5j?=
 =?utf-8?B?N3FyYmpuSVZHQmlkU3FvaWZNbnd5S1BnTE5jSkhkOUZwTWxSYkI0bVJxams0?=
 =?utf-8?B?emFySTBUaGR1c0lwWHkvelBJS1E3a2F0TU9lNVJGMHBmTDRIaHVUYzNXSjJp?=
 =?utf-8?B?SGl2ZE0yMm5FUkhocjhnL05NWHZLT0grSWFycmtpTkh5RDF6TkxDMlQ0SXY4?=
 =?utf-8?B?MnVhMUJ6T1owVzZxdmIxTXJqbzRQUm5HTWVRTll2ZTc2QVp2TWlOc0kzMkNo?=
 =?utf-8?B?T3pLWHd2S2VQR2xPcWpOWXdvRDhIUnpETEpaUUxyenB0UEd6azhlUmZrUWlE?=
 =?utf-8?B?ZkZ0RGdpdDlmZ3VHTmVIbytCajVSSlBTalR6SVpLQW9IWk5HTHlqU0FHNG1p?=
 =?utf-8?B?QjFGQmdtb2wwQVpMODd5b0JkdE1sS3EvRDhhbGZRcERLbVBxT0t1QmlPanBZ?=
 =?utf-8?B?TDhmVDZONFl3a3FJbzdWbzhNR2M1SDZ1MDJuTHVPNzIrOStGbWRtU0g0YlFS?=
 =?utf-8?B?Vk1lclQ3dHFRYnpXRG0zYWVHaXNIWGlQdzNrSkJJZ2pqQjRFeHJpejA0SWp4?=
 =?utf-8?B?cUpXMDNJQW1vMWNNa2NPNzNHcVozcmd6UmtJUkFvSndIUEQ0aVdjUFlKUkFD?=
 =?utf-8?B?OFBtMzNXbHB1cnpuTVJXZVFJM0IxYWxINkZPODcxS256MnNyU3lCQW5VeDBE?=
 =?utf-8?B?VVRzaHhNV25Rc1IrRVp1MXIrako3bWZhbjVtL0dhTUoyaVFMVzBXSHdoQlJt?=
 =?utf-8?B?OWdtOGJmZThHR0o5THl0VmZSeGZDdWR2NE01SHlwZXVGbjQ4WEpJbG9HV1d0?=
 =?utf-8?B?Z201NEpiODNIb01tOGdGeWFnYnZJdEs3MklTV0NsZlhCbGNRSGNMSUIrN0VS?=
 =?utf-8?B?QUY5ZGhaYmVNcmdLQW41RklCR050TFJYcmhiNVB2R090RCt2enpXblF4bTZF?=
 =?utf-8?B?U25OQ25NZFpoTTBSUVg0N08yUzh2cDk1MEdySUk5NFhUN1JYQTFEWVN2azg5?=
 =?utf-8?B?QzZLdnBETW4wOE4xRFl0WkFkVyttRkNpOC9ucG5wZFBHM2ZNZjZja0YrWkxo?=
 =?utf-8?B?WEpLQU8zM0NFOEVWRXdoQ3JRUDZwRGNTZXk2Y0VtZk5XeVd1RXNyQUxXcXVZ?=
 =?utf-8?B?MmJydFFpNTNTQjZrRFhzTmNBekVQV011UEt0OHNTNm05M0pwb2p0TmtUNEZJ?=
 =?utf-8?B?OUNSc25xSTlIUnlmOE9JVngySit3OWZPRmJuTjR6ckhRek15SVA4NE8ycTlQ?=
 =?utf-8?B?amhkNFoya01MMFArdlh6TXhpMElzU1YrQ25VUGlmREN5UGJUMkRrdDFCaktE?=
 =?utf-8?B?QkNWYnJldkxEUTFQNy9JQkluNWxWMUNmZ2V2T2lVRUVlZ2lDeEdSbUlCT09S?=
 =?utf-8?B?WTFOakVpTHpjWnB2L3F5NVFJR1cwdU5sd285UytoLzMxNFNwa0wyWjYzczVK?=
 =?utf-8?B?RVBXd1pUR1BmSVhISUZpMU9nNGZ0Z3pGNlRLUjJkU3hVWVcxejE0RlFYbnFl?=
 =?utf-8?B?SWkxQ3pUTmY5WnVmSTRlSFFRTklqQ1VkVDZ6aDNycmJaSEkxYjNLbjlJU29U?=
 =?utf-8?B?OU9zdHpVYm9DNExSdkJXQXgvei9GVmxyNE14dzltMTZyVUtMaVkxV1FqKzBJ?=
 =?utf-8?B?K0UzbnphUlc1UTYyRk4vcjkrVWljYXZpN2JmQ1ZGZjZLTGpjY1hrd3FYL1hN?=
 =?utf-8?B?SnUrS2c2eW9TNXdBOTk3Mzk3a1NESE1aaUYrNm1GQ09QdHRxWkNiYXFHaUtZ?=
 =?utf-8?Q?VIV8FHn8XL285Ur3wjnW/1k=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 19a1e14e-0654-4e58-0adb-08db60b97803
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 May 2023 02:56:30.1661 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: upY+shJAgOJwLIv/lgc2r0bKHHkKdpEDoO/ox/GiXhUaZLqdBaMX2ivLhwREX7dD3E0IsDzFgbfIDrHSdsowm9/bkTksWGgy4yqhroXo+xi8knzEW6yAWTPzgPoZqU6y
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4766
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685415395; x=1716951395;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vj0Pk6GG05Gv9yhLBPoeBftR3bbKemyXzzFitNhGXwA=;
 b=lS7i75OEAFDNMmYEk4GP5Hh6AsQlVEh7dBD0V91hQ77m63q7gdwXWHm6
 YFvX0C6PG5veRk6AY5CLBxS+xRxYYQYum1b48UWNdfqW9TWA1t7w2DOs+
 aofPV0he7WFu36LuAvu9UOAGVI8KsnSgzXz+C2Ctw1I5GAtAAsV+UPETn
 Ia+iBJxTGVqqnJqZ1owmf5mFqGTt3ALN9whmxnUSFx99LYmBZWmzfy7b9
 fRHzTMNylGuzT+JTrU9qV54piioECffIiKxNmdeWxC+zT2DujPRg+nCtV
 a7CYrxdySyadva0wngX+cvyiSunz5ezD2S9FeNLKi7hTTYnNX1MaJHA4j
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lS7i75OE
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] igc: Add
 TransmissionOverrun counter
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
Cc: "tee.min.tan@linux.intel.com" <tee.min.tan@linux.intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> On Mon, May 29, 2023 at 04:59:49PM +0300, Vladimir Oltean wrote:
> > On Sun, May 28, 2023 at 10:10:18AM +0000, Zulkifli, Muhammad Husaini
> wrote:
> > > Hi Jakub,
> > >
> > > Sorry for the late response.
> > >
> > > > On Tue, 2 May 2023 01:47:30 +0000 Zulkifli, Muhammad Husaini wrote:
> > > > > > Seems like something that should be reported back to the qdisc
> > > > > > which configured the gate.
> > > > >
> > > > > May I know which qdisc stats that we need to reported out? Is it
> > > > gnet_stats_queue?
> > > > > IMHO, gnet_stats_queue stats all used by SW QBV and not by HW QBV.
> > > >
> > > > Yeah, definitely not gnet_stats_queue, the qdisc used to configure
> > > > the gates can have its dedicated super special stats.
> > >
> > > I'm not sure how this super special stat will be link to qdisc.
> > > I'm include Vladimir in this discussion to obtain his thoughts, as I
> > > feel this will be required for other vendors as well if we can come
> > > up with a generic approach.
> > >
> > > Hi Vladimir,
> > >
> > > Do you have any input about this TransmissionOverrun counter?
> > >
> > > Thanks,
> > > Husaini
> >
> > Thanks for the question. I guess Jakub is talking about qdisc xstats
> > (root and per class) which can be reported through the TCA_STATS_APP
> > attribute of the TCA_STATS2 nest. In fact I've started working on a
> > prototype of this (some infra will be required) and I'm currently
> > debugging it :)
> 
> Okay, debugging done, here's what I've got:
> https://github.com/vladimiroltean/linux/commits/sch-taprio-stats
> https://github.com/vladimiroltean/iproute2/commits/taprio-xstats
> 
> Jakub, is this what you had in mind?
> 
> $ tc -d -s qdisc show dev eth0 root
> Warning: sch_taprio: Size table not specified, frame length estimations may be
> inaccurate.
> qdisc taprio 800e: root tc 8 map 0 1 2 3 4 5 6 7 0 0 0 0 0 0 0 0 queues offset 0
> count 1 offset 1 count 1 offset 2 count 1 offset 3 count 1 offset 4 count 1 offset
> 5 count 1 offset 6 count 1 offset 7 count 1
>  flags 0x2      base-time 0 cycle-time 1000000 cycle-time-extension 0
>         index 0 cmd S gatemask 0x20 interval 200000
>         index 1 cmd S gatemask 0xdf interval 800000 max-sdu 0 0 0 0 0 0 0 0 0 0 0
> 0 0 0 0 0 fp E E E E E E E E E E E E E E E E
> 
>  Sent 0 bytes 0 pkt (dropped 0, overlimits 0 requeues 0)  backlog 0b 0p
> requeues 0  Window drops: 0 <----------------- this is new
> 
> $ tc -d -s class show dev eth0
> class taprio 800e:1 root
>  Sent 0 bytes 0 pkt (dropped 0, overlimits 0 requeues 0)  backlog 0b 0p
> requeues 0  Window drops: 0 <----------------- this is new class taprio 800e:2 root
> Sent 0 bytes 0 pkt (dropped 0, overlimits 0 requeues 0)  backlog 0b 0p requeues
> 0  Window drops: 0 <----------------- this is new class taprio 800e:3 root  Sent 0
> bytes 0 pkt (dropped 0, overlimits 0 requeues 0)  backlog 0b 0p requeues 0
> Window drops: 0 <----------------- this is new class taprio 800e:4 root  Sent 0
> bytes 0 pkt (dropped 0, overlimits 0 requeues 0)  backlog 0b 0p requeues 0
> Window drops: 0 <----------------- this is new class taprio 800e:5 root  Sent 0
> bytes 0 pkt (dropped 0, overlimits 0 requeues 0)  backlog 0b 0p requeues 0
> Window drops: 0 <----------------- this is new class taprio 800e:6 root  Sent 0
> bytes 0 pkt (dropped 0, overlimits 0 requeues 0)  backlog 0b 0p requeues 0
> Window drops: 0 <----------------- this is new class taprio 800e:7 root  Sent 0
> bytes 0 pkt (dropped 0, overlimits 0 requeues 0)  backlog 0b 0p requeues 0
> Window drops: 0 <----------------- this is new class taprio 800e:8 root  Sent 0
> bytes 0 pkt (dropped 0, overlimits 0 requeues 0)  backlog 0b 0p requeues 0
> Window drops: 0 <----------------- this is new
> 
> ENETC (on which I tested) doesn't overrun the taprio time gates, so it has no
> reason to implement the TransmitOverrun counter that's being discussed here.
> But it was a good opportunity to move a (non-standard) counter from ethtool -S
> to the Qdisc layer :)

Vladimir.. That was a very quick and great idea :)
Yes, it appears that exposing counters to the Qdisc layer is a good idea.
Could you kindly include(cc) me in the patch series if you decide to upstream 
this approach later? On top of that, I'll add my own changes.

Thanks,
Husaini
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
