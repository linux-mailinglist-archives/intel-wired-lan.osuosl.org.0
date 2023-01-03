Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DF9065C42F
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Jan 2023 17:48:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9D8CE403B8;
	Tue,  3 Jan 2023 16:48:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9D8CE403B8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672764532;
	bh=lu8q/K/Tayq9efeUWM+eBpKF9Bq3YmD1uDK8KZhX/Pw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MiuDLjSaOZVlmiqhdma5sFrMX8v6moxvAfbxSyndwWkLKjtUWYNR0TCWAKgsDAuRb
	 fEACtKZO8jG52p8iIzo0P0eznTl8lZPfkBCOTyHVahiUJwI5JJsXVHJM2f7m0eJGfr
	 iM9RKdftDKSVCvkaTDl88C05G5VlDrgKFzWEgnK3FPnFCxdK7l1xXcRjzmDMb3ugbY
	 VfODoVx9JgR/DK8k8q1nyyDtNF2k6/prKugTHZgaIjkx6u25fkRfBhCn4YKf6MJXdV
	 sxIlyIBJjp931B5qspOcZkmi3Xmk1TWzzr+dts4w57YNogLOvMovIbfiMM2oWqa6XM
	 NL8X2mk5urIaw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mh-h3j7KGMA2; Tue,  3 Jan 2023 16:48:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C4E7840946;
	Tue,  3 Jan 2023 16:48:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C4E7840946
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C2A2D1BF2CD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jan 2023 06:58:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 986E0415D7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jan 2023 06:58:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 986E0415D7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sU-l9WeE48Ri for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Jan 2023 06:58:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 750F3401F2
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 750F3401F2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jan 2023 06:58:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10578"; a="383897523"
X-IronPort-AV: E=Sophos;i="5.96,296,1665471600"; d="scan'208";a="383897523"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2023 22:58:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10578"; a="632342389"
X-IronPort-AV: E=Sophos;i="5.96,296,1665471600"; d="scan'208";a="632342389"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP; 02 Jan 2023 22:58:47 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 2 Jan 2023 22:58:46 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 2 Jan 2023 22:58:46 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 2 Jan 2023 22:58:46 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 2 Jan 2023 22:58:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EO5u80lwbpnf3JYhNM+MG8KI6fcT7HtAZpqzvZTzg/7xJm4ztMBR1y+pE622n7jmpKYFNnioJHYA7u2WgLW8MhybTTlv7Sh/Ys0mUh7NT3kzXMFo/Rprux4l343kosPSfEyHMS2kuAcamENqUwijt54uGlK1eEP10T/rmsq6RxjvUlpmgRtgapEr7260AxIPGwK3J//KakR7hCDKnxFu3GGePmid4RukO1DjE61ujrTrdM0UTchZyqbx0rTwVzrwUqYKhPYqhhZH34O0wVyu9syjYiYdLvFoQMT5XAj5TjOBxz+kYpjJ28/3Og7uyOQT19RvluynkK8S4xzJWDblkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J/pgRrg7jlN9fRRDsha24DEeIioFyLE6Z1ubtYoeRDo=;
 b=IvURIop/NH1IqHwOP9OYofvwQoQfngoJMUeh5rCdYXpg9Ct55PI/xQ5NHVKTZYA6ofYnhjwPWze7A4W6V4lRjh1EVUeJv+P1jf7srLMnvSk7d6Q+RvzhJEMqefrAn1YVFOmfXx9paodjvUZabqJJzKQay2a1a0DcYkU8q6nsCK6+SJ8bOGPx4bIoEJWaxVPJbX3cgngezZj+qWu39XhcjiBJOQ7+k/FNaLh4NpE/Du3i/RnAvZWAfWgQSuA15KrUhi6YuH36Khx85PRlTZCq+7oIG63ouiAXnHrQpbiT+buIqj+OO0MM4lPD2fr/XY1Dmx52QkChemikhWQGBWKLxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4835.namprd11.prod.outlook.com (2603:10b6:303:9e::22)
 by MN2PR11MB4536.namprd11.prod.outlook.com (2603:10b6:208:26a::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Tue, 3 Jan
 2023 06:58:36 +0000
Received: from CO1PR11MB4835.namprd11.prod.outlook.com
 ([fe80::5455:63be:9d0d:914c]) by CO1PR11MB4835.namprd11.prod.outlook.com
 ([fe80::5455:63be:9d0d:914c%5]) with mapi id 15.20.5944.019; Tue, 3 Jan 2023
 06:58:36 +0000
From: "Khandelwal, Rajat" <rajat.khandelwal@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>, Paul Menzel
 <pmenzel@molgen.mpg.de>, Rajat Khandelwal <rajat.khandelwal@linux.intel.com>, 
 "Ruinskiy, Dima" <dima.ruinskiy@intel.com>, "Lifshits, Vitaly"
 <vitaly.lifshits@intel.com>, naamax.meir <naamax.meir@linux.intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH] igc: Mask replay rollover/timeout
 errors in I225_LMVP
Thread-Index: AQHZG4DSWXQ0qgyaHEmR6M6uDCbaea6JYaEAgAIFxTCAAM5hAIAAEkkQ
Date: Tue, 3 Jan 2023 06:58:36 +0000
Message-ID: <CO1PR11MB483539867F2BABC92F586F8696F49@CO1PR11MB4835.namprd11.prod.outlook.com>
References: <20221229122640.239859-1-rajat.khandelwal@linux.intel.com>
 <eb5a9805-3e53-ec22-696e-21c6b8cf0bfc@molgen.mpg.de>
 <CO1PR11MB483580BF9FF4BFA280A6F3F496F79@CO1PR11MB4835.namprd11.prod.outlook.com>
 <ead8421e-eca6-a11e-6082-261ed9de0f09@intel.com>
In-Reply-To: <ead8421e-eca6-a11e-6082-261ed9de0f09@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB4835:EE_|MN2PR11MB4536:EE_
x-ms-office365-filtering-correlation-id: 9fe642c8-9585-43d7-dce7-08daed57ef8d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: M5qh0WHnCQcJy41hc1TMg1jWFukgXaS9ok0MSULo/jx8nIkFLKfh2omK8tg+AJAmB6jy1l0EGnFIo/nStsIBM3f9aBpc/H3Lz/lDDDlWwOzGBqp7Sszjow2vCGXxZRDMtb0m2dF4cFFoK8yyqetJGt0Im9YZksk27tmvCFvOwsUyXKme8iW4v8vU0XLU+KJalXLLVoRPcpuEnGaIuTGsyAtWIxLFU9qBqXNOaFKlUD9DBmzbBS3tbquh70de1Y8WgjiYjsMZmezA1YPCo8LqR0lKTkL5l4ulmA5HofnWefMh3hIya4cYAeGdsEIC1HUFLUUPkER+dIrxPwQwp1L/AGGXRh6O2hMDgobdNDVrj8g3wexhYHOQq/nD+yMSTKMVqA2Z8nVkG64FON5hCSeLroO2l4rK/KvHqmUb8UhpIvZIsKpIPmTkiYxdMWuqMTCXYdNGJ2IYWTwlvQsi7FpFCjwgBiS0ASrwAY/+UdMJdqEQqUPCRHQDnCsuP0G81CK1H5nlTiZUfNPFh1cnEVVqLKffM1DSQpdgGAvVfAmb6rc/7G90I4ukT23PDDEN9L73bTOBrjn6RJNYvC2wqgzz3fE93FMHJwUBm9obUYwgH/sF1QOBfSopxnIdCcbWyIPs+rUsxuBIylNUlZIHmcBMqhpsgdBE0acQO+JF+d9PWVlGoB8RFeLKUBolbc86jcfqjp+GWIXdoFk1igWd4kpiBwFOPGCIYFOkkN9XTc8G8UkMcYV3uWf3yVdGcm+vv3zt
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4835.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(366004)(346002)(136003)(376002)(396003)(451199015)(83380400001)(53546011)(186003)(9686003)(26005)(33656002)(6506007)(7696005)(55016003)(38070700005)(86362001)(38100700002)(82960400001)(122000001)(8676002)(4326008)(41300700001)(7416002)(2906002)(5660300002)(8936002)(966005)(71200400001)(66556008)(52536014)(478600001)(66946007)(66476007)(76116006)(316002)(54906003)(110136005)(64756008)(66446008)(22166006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VzExSFYwWW5Pd3B3U1NaRHdkNEFTYTMxeURvYzcrdjJGMCtvRzRJVC94NW5q?=
 =?utf-8?B?OFc4UTlhQjk0ZDZpb3krclpyM1NJdXUxdmhsdEg3N0NDWTlqeUdqaVZrZm9G?=
 =?utf-8?B?eDZuUnJ2MThtQzBDUWNINk1WZHhIMHIvMEdHSVVNTUxMdWEydUY4eGY5TmVE?=
 =?utf-8?B?VURCZTY4aEhrdXdZclVkRGpMZ0tNeUFjUU5Rd1YycHNLL0VoVFRHRy9PV1ZB?=
 =?utf-8?B?bllpZnVJbWQ4ZTQ3ZDBGT1BzRnM2WjlQZVg3b1E5VWxydzZCbUoyMDZqQWFs?=
 =?utf-8?B?YWVnRnoyT1UxY2t5NytBMXhNZ00wV2VTZXVGdXVDbUZJRUVvODNTcmlYcHVQ?=
 =?utf-8?B?Q1Y0cWF3OFpJYlRiZFJ0VEhpSHN2U0d1OXUwSjM3Z3BCYTlxTTZKOFV2YlZT?=
 =?utf-8?B?ZmYxdncwakRON2drK2g3SkpobnBqM1NrMTdmTXQ3L3RTUnZTckZkeU1RVFBO?=
 =?utf-8?B?Y3NHeXhValFla202RmZzODBtTXFlYnl3a3Era1VUNmZ1QkhXQWU1OTN6SFdG?=
 =?utf-8?B?WXF6Qk5Ec2JwWTEyNFVqdXJkeVFMNkxQd0g3NE42SDJvRkRUY095ckRLSWpi?=
 =?utf-8?B?NU43WllzVjhmejVPc3RBRy9CeHkrTGQ3VnVxZ3dVSmhueUk2TnVqNGMwQ1VZ?=
 =?utf-8?B?ODl3T3plcXRJbHEzWVhpaDE3OThaWms2aWE3aHYzT2hnYXllZ1NaS3QzazZ2?=
 =?utf-8?B?dGQzUU5OZ2JIcDFUQ3NPYVBMdVFqODFaRWZtTHdidW5DZ21nenFaQ1pXODFa?=
 =?utf-8?B?SDQrS01nOHA4SDV0bFFXYVUrRGFOeEY5MVRZZHY5R0xsa1kxSXlLMDZYRzAw?=
 =?utf-8?B?akVOOG1NeE9HZnNST2ZUWEtYaG8vSjRGcEg2WFB1WXRyYU4xNm9wWXRDcjRU?=
 =?utf-8?B?WW1kWjAydldUUzVnRkJ5NDNOSHVJYTJTWTdlQU1DQVN1Qm1BVDdYWmUycGJ6?=
 =?utf-8?B?WHB6cGFJSG5PNjFEanJOTE5IS2QzMG8vb0RWZjNYRTNBVGt5RHUxZC9WN2pH?=
 =?utf-8?B?QnBFait4VXFYd29abFMxeis1Y3MxRGc3SmlrdDJ6eTlWbGFMTVk3cnA5TEJY?=
 =?utf-8?B?R1RWNHJSMmtkd3AyRzIrZVZtUTF0QnNnSjlWNFlwdnNZWHVNaHZobkpaVmRX?=
 =?utf-8?B?bGx6ZXZtOVloczFqbUdoWVgzSTBWTmNoSWpFZkpYc0RiYUZweVBIMkFhYU9K?=
 =?utf-8?B?MlNMdysyTSt6cHZhQkNuNHBCYUJTZ0RmUGY2RzZubTVOOEtlUzg0ZFNvRURn?=
 =?utf-8?B?eXZPcmp0d2NsaDB5S3BrNmsvSHJiRE1aekhGWnVTQ3hscmxSOFdQR29ySTJ0?=
 =?utf-8?B?NjBubEM3UXZqTmg1eUdmaWFIODQ1aEUwanBzWGRlK2JqNTZ4ZHdZdHB0ajc5?=
 =?utf-8?B?ZjhRUGU4aVBKQjNlNEZFaUdqWmxGOW9wcmoxRWJRN3Roa29tTzRIb2wrYUdH?=
 =?utf-8?B?dERpUUltZm5rMHdWOEZzUXFWSVRLOFlDK2FwRitkK1JKT1pTbDA1a3VrazZ5?=
 =?utf-8?B?NDR2VmJFalVpZVRyRXp1V3pTNk1md0Z1emtyODZXeHIvOXB3K2NvWVN6d05V?=
 =?utf-8?B?cktuQVV2U2pQZGRMVWxXYVZSUkRnL0VTSjZvMWJ4Skx1V0VlelBRa3FsN2F0?=
 =?utf-8?B?YzM3VFA5bjFhNStYRVlNMHRpTXcxNTViR3ozTmV4ZDFIRVQrUjBXUUdwKzZF?=
 =?utf-8?B?YjhYZ2gzWTNON2JBWGYwanluM0lFdDBOa21hTTNjbTN0cnBhVGM1VTJwdDdD?=
 =?utf-8?B?R01hdEdnZE5YK2gwM2JRNEM4MmxiZlU5cTR5L2ZWVThiYVhPV1ZqYUVKTzV2?=
 =?utf-8?B?cStvdTMyNnNackdzV1JWV0k5aFpsYkJqc2J1MGt4UU5oUklOVDJZMUwxdFI5?=
 =?utf-8?B?M3NydlBCK0NnTWdpenp4WWhYemFVYW01L3grVy9UYWQwcU1jS1duK2loQnRt?=
 =?utf-8?B?b2VRdDBpS2FWSDdIRzBlYUwvcitaMlJIbkNkWkV2dVhFL2g2TUVNajl2dnpr?=
 =?utf-8?B?aW5KcjF3SDM3d3VhclMvRUFQWnRFRFZBUXZHQXJQa0ZQYmd3M2grd0dHcHZo?=
 =?utf-8?B?Mm4wVFlKV3FTL2VDVzR3ZEl1ZHQzMFU0Kyt1TTRYQys3eWNGRkVXd1dZWnEx?=
 =?utf-8?B?WWlTRmFNMVBlcUJQRXZqUkNob3VLWDRKek94Z0ZEUXlrYjUyUTdmYTEvV0tw?=
 =?utf-8?B?RWc9PQ==?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4835.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9fe642c8-9585-43d7-dce7-08daed57ef8d
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jan 2023 06:58:36.3179 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WpW1BpZO4ncC1rNF2hqb+OD3nti2YjkiBvTIOqmsM3t2bsuP7aiVS49AedODfjb2AE1WNyYw5KCF0uaVrtzCM813S+lWBsADUJN13eMLrYU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4536
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Tue, 03 Jan 2023 16:48:34 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672729129; x=1704265129;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=J/pgRrg7jlN9fRRDsha24DEeIioFyLE6Z1ubtYoeRDo=;
 b=guETdRm/jMB0HhOp/Ny7HZPRjXiJa/2jt5wBKB9j7/otvxcE5kghDYw5
 SbE/KUj93DIv/IXOAYuhNQXviJJDvBV3a6qZMjkLOM+H0Yl61NxsIUIaa
 gKjaCJfOZd9R8hP4/9eNH69AsmZHEV6DnVZaLoKzOpSXJU0lP7MH77Iei
 SPTk9u4M3IOH6bJBCwXZefWYBoxU3CQ+SdNVTV2ekgRXxCJ9Oy3zIrTPD
 hqLIFm0B3tJRzdifZaW1k8OZxEX2LO9ZoDJ6vMVWfcHYF5aHSWWFvB9i/
 pDJEMCoxz0fzPeH6ovsoujuaZhZ7ZlnEH69VpysuFyQPkh8mCkH5Zp19F
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=guETdRm/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] igc: Mask replay rollover/timeout
 errors in I225_LMVP
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
Cc: Leon Romanovsky <leon@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Mushayev,
 Nikolay" <nikolay.mushayev@intel.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "edumazet@google.com" <edumazet@google.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Efrati, Nir" <nir.efrati@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Bjorn Helgaas <bhelgaas@google.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGkgU2FzaGEsDQpUaGFua3MgZm9yIHRoZSBhY2tub3dsZWRnZW1lbnQhDQoNCk9rLCBJIGdldCB0
aGUgcG9pbnQgeW91IGFyZSB0cnlpbmcgdG8gbWFrZS4gSW5zdGVhZCBvZiBtYXNraW5nIGluaGVy
ZW50bHksIHlvdSBzdWdnZXN0IHRvDQpleHBvcnQgYSBmbGFnIGFuZCBnaXZlIHVzZXIgdGhlIGNv
bnRyb2wuIA0KSSB1bmRlcnN0YW5kIGFuZCBpdCdzIGRvYWJsZS4NCg0KVGhlIHJlYXNvbiBJIG1h
c2tlZCBpbmhlcmVudGx5IGlzIEkgd2l0bmVzc2VkIGEgZnVuY3Rpb24gbmV0eGVuX21hc2tfYWVy
X2NvcnJlY3RhYmxlKCkNCmluc2lkZSBuZXQvZXRoZXJuZXQvcWxvZ2ljL25ldHhlbi9uZXR4ZW5f
bmljX21haW4uYywgd2hpY2ggbWFza3MgdGhlIGNvcnJlY3RhYmxlIGVycm9ycw0KaW4gdGhlIGNv
cnJlc3BvbmRpbmcgUENJZSBkZXZpY2UuDQoNCkp1c3QgY3VyaW91cyBhYm91dCB0aGUgaW5oZXJl
bnQgaW1wbGVtZW50YXRpb24gaW4gbmV0eGVuIQ0KQWdhaW4sIGlmIHlvdSBzdWdnZXN0IHRoZSBp
bXBsZW1lbnRhdGlvbiBjb21wdWxzb3J5LCBJIHdpbGwgZG8gdGhhdC4gSnVzdCBjb25maXJtaW5n
IGJlZm9yZQ0KYWN0dWFsbHkgZG9pbmcgaXQgOikNCg0KVGhhbmtzDQpSYWphdA0KDQotLS0tLU9y
aWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogTmVmdGluLCBTYXNoYSA8c2FzaGEubmVmdGluQGlu
dGVsLmNvbT4gDQpTZW50OiBUdWVzZGF5LCBKYW51YXJ5IDMsIDIwMjMgMTE6MTQgQU0NClRvOiBL
aGFuZGVsd2FsLCBSYWphdCA8cmFqYXQua2hhbmRlbHdhbEBpbnRlbC5jb20+OyBQYXVsIE1lbnpl
bCA8cG1lbnplbEBtb2xnZW4ubXBnLmRlPjsgUmFqYXQgS2hhbmRlbHdhbCA8cmFqYXQua2hhbmRl
bHdhbEBsaW51eC5pbnRlbC5jb20+OyBSdWluc2tpeSwgRGltYSA8ZGltYS5ydWluc2tpeUBpbnRl
bC5jb20+OyBMaWZzaGl0cywgVml0YWx5IDx2aXRhbHkubGlmc2hpdHNAaW50ZWwuY29tPjsgbmFh
bWF4Lm1laXIgPG5hYW1heC5tZWlyQGxpbnV4LmludGVsLmNvbT4NCkNjOiBCcmFuZGVidXJnLCBK
ZXNzZSA8amVzc2UuYnJhbmRlYnVyZ0BpbnRlbC5jb20+OyBOZ3V5ZW4sIEFudGhvbnkgTCA8YW50
aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBkYXZlbUBkYXZlbWxvZnQubmV0OyBlZHVtYXpldEBn
b29nbGUuY29tOyBrdWJhQGtlcm5lbC5vcmc7IHBhYmVuaUByZWRoYXQuY29tOyBuZXRkZXZAdmdl
ci5rZXJuZWwub3JnOyBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgbGludXgta2Vy
bmVsQHZnZXIua2VybmVsLm9yZzsgQmpvcm4gSGVsZ2FhcyA8YmhlbGdhYXNAZ29vZ2xlLmNvbT47
IGxpbnV4LXBjaUB2Z2VyLmtlcm5lbC5vcmc7IExlb24gUm9tYW5vdnNreSA8bGVvbkBrZXJuZWwu
b3JnPjsgQXZhcmdpbCwgUmFhbmFuIDxyYWFuYW4uYXZhcmdpbEBpbnRlbC5jb20+OyBFZnJhdGks
IE5pciA8bmlyLmVmcmF0aUBpbnRlbC5jb20+OyBNdXNoYXlldiwgTmlrb2xheSA8bmlrb2xheS5t
dXNoYXlldkBpbnRlbC5jb20+DQpTdWJqZWN0OiBSZTogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENI
XSBpZ2M6IE1hc2sgcmVwbGF5IHJvbGxvdmVyL3RpbWVvdXQgZXJyb3JzIGluIEkyMjVfTE1WUA0K
DQpPbiAxLzIvMjAyMyAxOTozOCwgS2hhbmRlbHdhbCwgUmFqYXQgd3JvdGU6DQo+IEhpIFBhdWws
IFNhc2hhDQo+IFRoYW5rcyBmb3IgdGhlIGFja25vd2xlZGdlbWVudCENCj4gDQo+IC0+IFdpbGwg
YWRkIHRoZSBleGFtcGxlIGxvZ3MNCj4gLT4gRGV2aWNlOiANCj4gLT4gaHR0cHM6Ly93d3cuaHAu
Y29tL3VzLWVuL21vbml0b3JzLWFjY2Vzc29yaWVzL2NvbXB1dGVyLWFjY2Vzc29yaWVzLw0KPiAt
PiB0aHVuZGVyYm9sdC1HNC1kb2NrLmh0bWwNCj4gLT4gY29ycmVjdGlibGUgLT4gY29ycmVjdGFi
bGUNCj4gLT4gSSBndWVzcyBhY2MgdG8gdGhlIGNvbnZlbnRpb24sIEkgc3RpbGwgaGF2ZSB0byB1
c2UgI2lmZGVmIGZvciBteSANCj4gLT4gZnVuY3Rpb24gc2luY2UgaXQNCj4gcmVmZXJlbmNlcyB2
YXJpYWJsZXMgdGhhdCB3b24ndCBleGlzdCBpZiB0aGUgY29uZGl0aW9uIGlzIG5vdCBtZXQuDQo+
IEhvd2V2ZXIsIEkgaGF2ZSB1c2VkIHRoZSBJU19FTkFCTEVEIG1hY3JvIHRvIGNhbGwgdGhlIGZ1
bmN0aW9uIGluc2lkZSBpZ2NfcHJvYmUoKS4NCj4gSSBob3BlIHRoYXQncyBva2F5IQ0KPiANCj4g
LT4gT25lIGxhc3QgdGhpbmcsIEkgd2FzIGFsc28gc2tlcHRpY2FsIG9uIHRoZSBsb2NhdGlvbiBv
ZiB0aGlzIA0KPiAtPiBmdW5jdGlvbiwgYnV0IHRoZW4gSSB3aXRuZXNzZWQNCj4gbmV0eGVuX21h
c2tfYWVyX2NvcnJlY3RhYmxlKCkgZnVuY3Rpb24gaW5zaWRlIA0KPiBuZXQvZXRoZXJuZXQvcWxv
Z2ljL25ldHhlbi9uZXR4ZW5fbmljX21haW4uYywNCj4gd2hpY2ggbWFza3MgdGhlIGNvcnJlY3Rh
YmxlIGVycm9ycyBpbiBpdHMgUENJZSBkZXZpY2UuDQo+IEFsc28sIEkgZG9u4oCZdCBzZWUgYSBD
T05GSUdfUENJRUFFUiBtYWNybyBlbmFibGVkIGZ1bmN0aW9uIGluIHBjaS9xdWlya3MuYyENCj4g
SSBzdGlsbCB0aGluayB0byBrZWVwIHRoZSBmdW5jdGlvbiBpbiBpZ2NfbWFpbi5jLCBidXQgSSBh
bSB3YWl0aW5nIGZvciB5b3VyIGp1ZGdlbWVudC4NCj4gDQo+IEBOZWZ0aW4sIFNhc2hhLCBJIGFu
ZCBteSB0ZWFtIHByZWZlciBtYXNraW5nIHRoZXNlIGVycm9ycyByYXRoZXIgdGhhbiBkZWJ1Z2dp
bmcgdGhlbS4NCj4gRmlyc3QsIHRoZXkgYXJlIGNvcnJlY3RhYmxlIGFuZCBub24tZmF0YWwuIFNl
Y29uZCwgdGhlc2UgZXJyb3JzIGFyZSANCj4gb2JzZXJ2ZWQgaW4gbWFueSBvZiB0aGUgZGV2aWNl
cyBJIGhhdmUgd29ya2VkIHdpdGggKGkuZS4sIHJlcGxheSANCj4gZXJyb3JzKS4gTWF5YmUgdGhl
cmUgaXMgc29tZXRoaW5nIHVuaXZlcnNhbCB3aGljaCBoYXMgdG8gYmUgZG9uZSBmb3IgdGhlIHRo
dW5kZXJib2x0IGRvbWFpbiByZWdhcmRpbmcgdGhlc2Ugc3BlY2lmaWMgcmVwbGF5IGVycm9ycyBp
biB0aGUgbG9uZyB0ZXJtPw0KPiBBbnlob3csIHdlIHdvdWxkIGxpa2UgdG8gbWFzayB0aGVzZSBl
cnJvcnMgZm9yIG5vdyB0byBhdm9pZCBhbnkgDQo+IGNvbmZ1c2lvbnMgd2hlbiBldGhlcm5ldCBn
ZXRzIGNvbm5lY3RlZCB0byB0aGUgZG9jay4gSSBob3BlIHRoYXQgd2lsbCANCj4gYmUgb2theT8g
V2FpdGluZyBmb3IgeW91ciBqdWRnZW1lbnQgOikNCkkgZG8gbm90IHRoaW5rIHRoaXMgYXBwcm9h
Y2ggaXMgYWNjZXB0YWJsZSAobWFzayBpbiBwcm9iZSkuIERvIG5vdCBtYXNrIGl0IHZpYSAuY29u
ZmlnLiBJIHN1Z2dlc3QgZXhwb3J0aW5nIHByaXZfZmxhZyAoZ2l2ZSB1c2VyIGNvbnRyb2w6IA0K
ZW5hYmxlL2Rpc2FibGUgc3BlY2lmaWMgUENJQUVSIGJ5IGZsYWcgdmlhIGV0aHRvb2wgYW5kIHVw
b24gdXNlciByZXNwb25zaWJpbGl0eS4pU29tZSBleGFtcGxlIG9mIHByaXZfZmxhZyBleHBvcnQ6
IDNjOThjYmYyMmE5NiBJIGFsc28gbm90IHN1cmUgcXVpcmNrLmMgYXBwcm9hY2ggdmFsaWQgZm9y
IHRoaXMgY2FzZS4NCj4gDQo+IExldCBtZSBrbm93IG9uIGFueSBtb3JlIHF1ZXJpZXMgYW5kIGFu
eSBzdWdnZXN0aW9ucyB1bnRpbCBJIHJvbGwgb3V0IHYyLg0KPiANCj4gVGhhbmtzDQo+IFJhamF0
DQo+IA0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBQYXVsIE1lbnplbCA8
cG1lbnplbEBtb2xnZW4ubXBnLmRlPg0KPiBTZW50OiBTdW5kYXksIEphbnVhcnkgMSwgMjAyMyA0
OjAyIFBNDQo+IFRvOiBSYWphdCBLaGFuZGVsd2FsIDxyYWphdC5raGFuZGVsd2FsQGxpbnV4Lmlu
dGVsLmNvbT4NCj4gQ2M6IEJyYW5kZWJ1cmcsIEplc3NlIDxqZXNzZS5icmFuZGVidXJnQGludGVs
LmNvbT47IE5ndXllbiwgQW50aG9ueSBMIA0KPiA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+
OyBkYXZlbUBkYXZlbWxvZnQubmV0OyANCj4gZWR1bWF6ZXRAZ29vZ2xlLmNvbTsga3ViYUBrZXJu
ZWwub3JnOyBwYWJlbmlAcmVkaGF0LmNvbTsgDQo+IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc7IGlu
dGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnOyANCj4gbGludXgta2VybmVsQHZnZXIua2Vy
bmVsLm9yZzsgS2hhbmRlbHdhbCwgUmFqYXQgDQo+IDxyYWphdC5raGFuZGVsd2FsQGludGVsLmNv
bT47IEJqb3JuIEhlbGdhYXMgPGJoZWxnYWFzQGdvb2dsZS5jb20+OyANCj4gbGludXgtcGNpQHZn
ZXIua2VybmVsLm9yZw0KPiBTdWJqZWN0OiBSZTogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIXSBp
Z2M6IE1hc2sgcmVwbGF5IA0KPiByb2xsb3Zlci90aW1lb3V0IGVycm9ycyBpbiBJMjI1X0xNVlAN
Cj4gDQo+IFtDYzogK0Jqb3JuLCArbGludXgtcGNpXQ0KPiANCj4gDQo+IERlYXIgUmFqYXQsDQo+
IA0KPiANCj4gVGhhbmsgeW91IGZvciB5b3VyIHBhdGNoLg0KPiANCj4gQW0gMjkuMTIuMjIgdW0g
MTM6MjYgc2NocmllYiBSYWphdCBLaGFuZGVsd2FsOg0KPj4gVGhlIENQVSBsb2dzIGdldCBmbG9v
ZGVkIHdpdGggcmVwbGF5IHJvbGxvdmVyL3RpbWVvdXQgQUVSIGVycm9ycyBpbiANCj4+IHRoZSBz
eXN0ZW0gd2l0aCBpMjI1X2xtdnAgY29ubmVjdGVkLCB1c3VhbGx5IGluc2lkZSB0aHVuZGVyYm9s
dCBkZXZpY2VzLg0KPiANCj4gUGxlYXNlIGFkZCBvbmUgZXhhbXBsZSBsb2cgbWVzc2FnZSB0byB0
aGUgY29tbWl0IG1lc3NhZ2UuDQo+IA0KPj4gT25lIG9mIHRoZSBwcm9taW5lbnQgVEJUNCBkb2Nr
cyB3ZSB1c2UgaXMgSFAgRzQgSG9vazIsIHdoaWNoIA0KPj4gaW5jb3Jwb3JhdGVzDQo+IA0KPiBJ
IGNvdWxkbuKAmXQgZmluZCB0aGF0IGRldmljZS4gSXMgdGhhdCB0aGUgY29ycmVjdCBuYW1lPw0K
PiANCj4+IGFuIEludGVsIEZveHZpbGxlIGNoaXBzZXQsIHdoaWNoIHVzZXMgdGhlIGlnYyBkcml2
ZXIuDQo+IA0KPiBQbGVhc2UgYWRkIGEgYmxhbmsgbGluZSBiZXR3ZWVuIHBhcmFncmFwaHMuDQo+
IA0KPj4gT24gY29ubmVjdGluZyBldGhlcm5ldCwgQ1BVIGxvZ3MgZ2V0IGludW5kYXRlZCB3aXRo
IHRoZXNlIGVycm9ycy4gVGhlIA0KPj4gcG9pbnQgaXMgd2Ugc2hvdWxkbid0IGJlIHNwYW1taW5n
IHRoZSBsb2dzIHdpdGggc3VjaCBjb3JyZWN0aWJsZSANCj4+IGVycm9ycyBhcyBpdA0KPiANCj4g
Y29ycmVjdGFibGUNCj4gDQo+PiBjb25mdXNlcyBvdGhlciBrZXJuZWwgZGV2ZWxvcGVycyBsZXNz
IGZhbWlsaWFyIHdpdGggUENJIGVycm9ycywgDQo+PiBzdXBwb3J0IHN0YWZmLCBhbmQgdXNlcnMg
d2hvIGhhcHBlbiB0byBsb29rIGF0IHRoZSBsb2dzLg0KPiANCj4gUGxlYXNlIHJlZmVyZW5jZSB0
aGUgYnVnIHJlcG9ydHMgKGJ1ZyB0cmFja2VyIGFuZCBtYWlsaW5nIGxpc3QpLCB5b3Uga25vdyBv
Ziwgd2hlcmUgdGhpcyB3YXMgcmVwb3J0ZWQuDQo+IA0KPj4gU2lnbmVkLW9mZi1ieTogUmFqYXQg
S2hhbmRlbHdhbCA8cmFqYXQua2hhbmRlbHdhbEBsaW51eC5pbnRlbC5jb20+DQo+PiAtLS0NCj4+
ICAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfbWFpbi5jIHwgMjggKysrKysr
KysrKysrKysrKysrKysrLS0NCj4+ICAgIDEgZmlsZSBjaGFuZ2VkLCAyNiBpbnNlcnRpb25zKCsp
LCAyIGRlbGV0aW9ucygtKQ0KPj4NCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pZ2MvaWdjX21haW4uYw0KPj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
Z2MvaWdjX21haW4uYw0KPj4gaW5kZXggZWJmZjBlMDQwNDVkLi5hM2E2ZTgwODZjOGQgMTAwNjQ0
DQo+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX21haW4uYw0KPj4g
KysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19tYWluLmMNCj4+IEBAIC02
MjAxLDYgKzYyMDEsMjYgQEAgdTMyIGlnY19yZDMyKHN0cnVjdCBpZ2NfaHcgKmh3LCB1MzIgcmVn
KQ0KPj4gICAgCXJldHVybiB2YWx1ZTsNCj4+ICAgIH0NCj4+ICAgIA0KPj4gKyNpZmRlZiBDT05G
SUdfUENJRUFFUg0KPj4gK3N0YXRpYyB2b2lkIGlnY19tYXNrX2Flcl9yZXBsYXlfY29ycmVjdGli
bGUoc3RydWN0IGlnY19hZGFwdGVyDQo+PiArKmFkYXB0ZXIpDQo+IA0KPiBjb3JyZWN0YWJsZQ0K
PiANCj4+ICt7DQo+PiArCXN0cnVjdCBwY2lfZGV2ICpwZGV2ID0gYWRhcHRlci0+cGRldjsNCj4+
ICsJdTMyIGFlcl9wb3MsIGNvcnJfbWFzazsNCj4gDQo+IEluc3RlYWQgb2YgdXNpbmcgdGhlIHBy
ZXByb2Nlc3NvciwgdXNlIGEgbm9ybWFsIEMgY29uZGl0aW9uYWwuIEZyb20NCj4gYERvY3VtZW50
YXRpb24vcHJvY2Vzcy9jb2Rpbmctc3R5bGUucnN0YDoNCj4gDQo+PiBXaXRoaW4gY29kZSwgd2hl
cmUgcG9zc2libGUsIHVzZSB0aGUgSVNfRU5BQkxFRCBtYWNybyB0byBjb252ZXJ0IGEgDQo+PiBL
Y29uZmlnIHN5bWJvbCBpbnRvIGEgQyBib29sZWFuIGV4cHJlc3Npb24sIGFuZCB1c2UgaXQgaW4g
YSBub3JtYWwgQyBjb25kaXRpb25hbDoNCj4+DQo+PiAuLiBjb2RlLWJsb2NrOjogYw0KPj4gICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIA0KPj4gICAgICAgICAgaWYgKElTX0VOQUJMRUQoQ09ORklHX1NPTUVUSElO
RykpIHsNCj4+ICAgICAgICAgICAgICAgICAgLi4uDQo+PiAgICAgICAgICB9DQo+Pg0KPj4gVGhl
IGNvbXBpbGVyIHdpbGwgY29uc3RhbnQtZm9sZCB0aGUgY29uZGl0aW9uYWwgYXdheSwgYW5kIGlu
Y2x1ZGUgb3IgDQo+PiBleGNsdWRlIHRoZSBibG9jayBvZiBjb2RlIGp1c3QgYXMgd2l0aCBhbiAj
aWZkZWYsIHNvIHRoaXMgd2lsbCBub3QgDQo+PiBhZGQgYW55IHJ1bnRpbWUgb3ZlcmhlYWQuICBI
b3dldmVyLCB0aGlzIGFwcHJvYWNoIHN0aWxsIGFsbG93cyB0aGUgQyANCj4+IGNvbXBpbGVyIHRv
IHNlZSB0aGUgY29kZSBpbnNpZGUgdGhlIGJsb2NrLCBhbmQgY2hlY2sgaXQgZm9yIA0KPj4gY29y
cmVjdG5lc3MgKHN5bnRheCwgdHlwZXMsIHN5bWJvbCByZWZlcmVuY2VzLCBldGMpLiAgVGh1cywg
eW91IHN0aWxsIA0KPj4gaGF2ZSB0byB1c2UgYW4gI2lmZGVmIGlmIHRoZSBjb2RlIGluc2lkZSB0
aGUgYmxvY2sgcmVmZXJlbmNlcyBzeW1ib2xzIHRoYXQgd2lsbCBub3QgZXhpc3QgaWYgdGhlIGNv
bmRpdGlvbiBpcyBub3QgbWV0Lg0KPiANCj4gDQo+PiArDQo+PiArCWlmIChwZGV2LT5kZXZpY2Ug
IT0gSUdDX0RFVl9JRF9JMjI1X0xNVlApDQo+PiArCQlyZXR1cm47DQo+PiArDQo+PiArCWFlcl9w
b3MgPSBwY2lfZmluZF9leHRfY2FwYWJpbGl0eShwZGV2LCBQQ0lfRVhUX0NBUF9JRF9FUlIpOw0K
Pj4gKwlpZiAoIWFlcl9wb3MpDQo+PiArCQlyZXR1cm47DQo+PiArDQo+PiArCXBjaV9yZWFkX2Nv
bmZpZ19kd29yZChwZGV2LCBhZXJfcG9zICsgUENJX0VSUl9DT1JfTUFTSywgDQo+PiArJmNvcnJf
bWFzayk7DQo+PiArDQo+PiArCWNvcnJfbWFzayB8PSBQQ0lfRVJSX0NPUl9SRVBfUk9MTCB8IFBD
SV9FUlJfQ09SX1JFUF9USU1FUjsNCj4+ICsJcGNpX3dyaXRlX2NvbmZpZ19kd29yZChwZGV2LCBh
ZXJfcG9zICsgUENJX0VSUl9DT1JfTUFTSywgDQo+PiArY29ycl9tYXNrKTsgfSAjZW5kaWYNCj4+
ICsNCj4+ICAgIC8qKg0KPj4gICAgICogaWdjX3Byb2JlIC0gRGV2aWNlIEluaXRpYWxpemF0aW9u
IFJvdXRpbmUNCj4+ICAgICAqIEBwZGV2OiBQQ0kgZGV2aWNlIGluZm9ybWF0aW9uIHN0cnVjdCBA
QCAtNjIzNiw4ICs2MjU2LDYgQEAgDQo+PiBzdGF0aWMgaW50IGlnY19wcm9iZShzdHJ1Y3QgcGNp
X2RldiAqcGRldiwNCj4+ICAgIAlpZiAoZXJyKQ0KPj4gICAgCQlnb3RvIGVycl9wY2lfcmVnOw0K
Pj4gICAgDQo+PiAtCXBjaV9lbmFibGVfcGNpZV9lcnJvcl9yZXBvcnRpbmcocGRldik7DQo+PiAt
DQo+PiAgICAJZXJyID0gcGNpX2VuYWJsZV9wdG0ocGRldiwgTlVMTCk7DQo+PiAgICAJaWYgKGVy
ciA8IDApDQo+PiAgICAJCWRldl9pbmZvKCZwZGV2LT5kZXYsICJQQ0llIFBUTSBub3Qgc3VwcG9y
dGVkIGJ5IFBDSWUgDQo+PiBidXMvY29udHJvbGxlclxuIik7IEBAIC02MjcyLDYgKzYyOTAsMTIg
QEAgc3RhdGljIGludCBpZ2NfcHJvYmUoc3RydWN0IHBjaV9kZXYgKnBkZXYsDQo+PiAgICAJaWYg
KCFhZGFwdGVyLT5pb19hZGRyKQ0KPj4gICAgCQlnb3RvIGVycl9pb3JlbWFwOw0KPj4gICAgDQo+
PiArI2lmZGVmIENPTkZJR19QQ0lFQUVSDQo+PiArCWlnY19tYXNrX2Flcl9yZXBsYXlfY29ycmVj
dGlibGUoYWRhcHRlcik7DQo+PiArI2VuZGlmDQo+PiArDQo+PiArCXBjaV9lbmFibGVfcGNpZV9l
cnJvcl9yZXBvcnRpbmcocGRldik7DQo+PiArDQo+PiAgICAJLyogaHctPmh3X2FkZHIgY2FuIGJl
IHplcm9lZCwgc28gdXNlIGFkYXB0ZXItPmlvX2FkZHIgZm9yIHVubWFwICovDQo+PiAgICAJaHct
Pmh3X2FkZHIgPSBhZGFwdGVyLT5pb19hZGRyOw0KPj4gICAgDQo+IA0KPiANCj4gS2luZCByZWdh
cmRzLA0KPiANCj4gUGF1bA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBv
c3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LXdpcmVkLWxhbgo=
