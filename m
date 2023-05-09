Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DD0A6FC457
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 May 2023 12:57:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2B905845D1;
	Tue,  9 May 2023 10:57:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2B905845D1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683629830;
	bh=DM8cLHbBwArM5J3XYaBQQ1w6fxyle+oWhry78QmPI4c=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9UuLypZ7R4uGNf1FfN3B3SYYvGovHRfALmMCUCB0YTCpL68QkyWDKBWd6L///LO3/
	 4//RFiSJn79UNLjM7hH3CICz9cX010plXBYT0KfnOpbPvM/TTAtDcJ08OrN18VmGan
	 AijGBF7zS4V1tPx5srURyjluH7x8Pe6C+sJMfzXJwbqlroNvdF6l3cnTxnXaVFI82V
	 QC6eFl5q9niT0Zf2a23E1gtC1KFwoSVFTHDJFobfv396E0sngn67VXtlkrovjTEWOK
	 6saCryc8dt51JFuc10nXlHF9WqAgA00qdF7OcqXWGqj6JHLos4M4fzOKWiWOiQw//V
	 FUkOPY/LTCn5Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oPlRAJ6k1n4o; Tue,  9 May 2023 10:57:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D5ED8845C7;
	Tue,  9 May 2023 10:57:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D5ED8845C7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CF8841BF286
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 May 2023 10:57:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B3BA0845C7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 May 2023 10:57:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B3BA0845C7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kKtaMeYYk6uI for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 May 2023 10:57:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 84640845C4
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 84640845C4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 May 2023 10:57:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10704"; a="334346590"
X-IronPort-AV: E=Sophos;i="5.99,261,1677571200"; d="scan'208";a="334346590"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2023 03:56:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10704"; a="676427057"
X-IronPort-AV: E=Sophos;i="5.99,261,1677571200"; d="scan'208";a="676427057"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP; 09 May 2023 03:56:02 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 9 May 2023 03:56:02 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 9 May 2023 03:56:01 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 9 May 2023 03:56:01 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 9 May 2023 03:56:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f+y82JB+O6fW0IWFfrj/oohdcgnWIqXZrJAoA/wR0C+gO2+HKf4H85Fj4/ljAh2uR0BmnkgjbgIkwXFJX3lZYMVQdBYdWeX1sqEwOWxQ2hIj4mCt/F9i0gz/ud9qSfFwP/uwqd8bUpyP1rxAQlu1798U/1qvbQAN8suJQlU+s1TRxJBXEKzzYgbcEVyDB6/dEb+VoxnfvtQOc5uqDepqWgxfDL+GWZiZiPaVyMBnNynmUySUp4k89TQBOIcURtoGv230lL+SUbi42SyRcTBpywiCFX7oitS2hTJppMk2SjgtAaYsmmQnxSuha66kcZUUBPiya7xeJOhg8t8HiOsSHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LhcZpFAx9qW6mz/5ePM5BRfPKPv4h7fyt6cdUddEixQ=;
 b=f1Mi2eqyUL3gdqOvE3gp2KUB0NHVSEiwOWGQr86n+n1fzBAJFh02Lh5vMxxW8oj7Ey/aZ4hTYGFwQ8agRgCPOM0D9GuBCROYawevreWQn8AGdeEapqJ8TAC3ivRBp+NX+hQL0kjycOMe+2bXEDDAxhdLgg8XnP7C3Xrain8YL8WN1Zm5nMcv5NcGOIsoNHZCg0MtfLXeHX/NQyKf5lMfQhyUN5w2nj6i6UxNq3ZAmiHbx7hmzfWZU+fT3+cl/YoZgKlxz4pVB8BlL5aLjsPuAL6ds5j+2n/w839HQ30nwVT9LnM+kipKI2CfRFboAdojS1i8DdLArNdk3HpwR8g6sg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by LV8PR11MB8557.namprd11.prod.outlook.com (2603:10b6:408:1e8::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.18; Tue, 9 May
 2023 10:55:54 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::936d:24c4:86d0:f2a0]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::936d:24c4:86d0:f2a0%7]) with mapi id 15.20.6363.033; Tue, 9 May 2023
 10:55:53 +0000
From: "Drewek, Wojciech" <wojciech.drewek@intel.com>
To: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>
Thread-Topic: [PATCH net-next 10/12] ice: implement static version of ageing
Thread-Index: AQHZdG2zYXFc0iqzFkKgcNtUHevMiq9R3jNw
Date: Tue, 9 May 2023 10:55:53 +0000
Message-ID: <MW4PR11MB57768C748EAECE1F76B53975FD769@MW4PR11MB5776.namprd11.prod.outlook.com>
References: <20230417093412.12161-1-wojciech.drewek@intel.com>
 <20230417093412.12161-11-wojciech.drewek@intel.com>
 <a868e53c-add1-986e-7c96-a02afbddde1e@intel.com>
In-Reply-To: <a868e53c-add1-986e-7c96-a02afbddde1e@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5776:EE_|LV8PR11MB8557:EE_
x-ms-office365-filtering-correlation-id: a0f20232-74c2-4f89-6fd5-08db507bf5a8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HH3wlc7Rt1zsZwcsB8qTkqeC0HXu3Nuc8ffrNOBSLYLqJkJlBlBxsaSlxHKuJMKOpOHHjMal18tlA8zHssv+l6t//a3/MSJQFwOADrKZ17uadO5w4Tr1HDlSexrbPdMkMJMCVPSAJJvut2hag0DYi/5HMkVFNtK7+EAeGIQyxT/EvIvBGBB1lKIccZAeVqKW4vh/ZhPTEAUgXrhGffoSfelwAaw+SOTijE8y6mjRP3jJOl5uCLUn0fDNPXB2ynFYIzXEAQt6Sgfni0v/KC5rG0d5aTz9ApMkYnTnhURXix/ohdBLR9VkjPXjSY9RokobFVPLRt0rI6E7BUEGl56IFjN0TcPyqqKFiPvQ7kYCCWkoOmrk+yNL/ha6Q8+/w+6jXERVOYISu9zq8uwjr4bdMivWZAsbf5pl5WivT/RtfGy2cJZgs5ztuq9Ic9DlMA4ZhOSm7S4oe1n1TOvnttsv3k098JmvfuK1Gy2VZUO03hyKYpdI+eEJcDDKeG7D80jNA9RVNL5cmcRfintI4b0mriYw6V/eZtbSmFNLoxzOmTBiZn+WOj1M62x1Ar81EReU2NcuCUNYBU7ki2yogy6FHdFHX0L4RQ3uYf10Sdok33ioMBGqvSA0pjBxDyCndODM
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(396003)(136003)(346002)(376002)(366004)(451199021)(83380400001)(2906002)(9686003)(53546011)(66574015)(186003)(6506007)(6636002)(4326008)(76116006)(66946007)(66556008)(66476007)(66446008)(64756008)(71200400001)(41300700001)(316002)(54906003)(478600001)(5660300002)(52536014)(26005)(7696005)(6862004)(8936002)(8676002)(55016003)(38070700005)(38100700002)(82960400001)(122000001)(33656002)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZHgwTkR6MUdkVldPcWQ4Y0Z1cVRmNHRiOW8xUjhJMmpDb0JnNzF5Vnk2STRa?=
 =?utf-8?B?VmVIemN1dDF3eEM0TVZsWFlzZk9NWEtuNmgrSmlIaENteTNrcW5CR3huMFNr?=
 =?utf-8?B?M2pFUzc4MVlhakZGallLUVQrSUF3YU8wS2xJR25DLzhKbC9INEV6VWxpVVBE?=
 =?utf-8?B?SUkwNnptbTgrS2daQW5wZ0J0dWNxVHlkSmM2UEtibDRGRS9qVDRSQUVIUkRS?=
 =?utf-8?B?bFREWUFsQXUwbmJtc0ZwMXAxdGxtdHFUTmVJZ1FObWZlb2pLM3hHNm55b3lo?=
 =?utf-8?B?WStoSHRMeVVmOGZGWUw1dHQvcEdVZFJ0U3hpMFo4TnBqTnA2aXlYejNucGo5?=
 =?utf-8?B?Yzl1MWhyeFRIUXZYVXk4ZUhlRmxiaFkxN3ZxbTZEUlNxOGxENU1IeWVCZGoz?=
 =?utf-8?B?REV3NE1JZzJwMnk5M0pYbUxYY3RQaFNydlA3MVdkS0VqSmlwT0JuVmh3M29F?=
 =?utf-8?B?SngwVVhXV2xRUVl2V3lMMWpsOGQrRWFCam9GYnVCeFNUcHZkWGtiZ3RwZUxh?=
 =?utf-8?B?ZlE1cXpKWWdoY3lYdHd4YllNek9QbGZqY1JZdjZ3R3FYMkEvSDNaSUxVYSt3?=
 =?utf-8?B?SThQZmxwVDNBdWhBQUExOE5HclhId2ZzOEhqRjVubWJrR2JPTFc5UnE4US8r?=
 =?utf-8?B?b3ZyZUQvQUtFMi81Q1FWYjVCR1pzMnd3c203eEljd3Q1WEJieDVINEphR3ZY?=
 =?utf-8?B?ci9ZNG1MS0x5UDR4OFhLanF5YUNZMnV3RWdLejB0c0trOWZvdUNlaWprUktw?=
 =?utf-8?B?dHRuNTNFSUc5UGJRM3p2RHo1MmtRNlZIREhzTHgrNzhRRng3K0x0NEhES0xx?=
 =?utf-8?B?ZkVIZ2c1cjVkdGFoNkRxRTNSMVlld1RYYlJVWkx1NklpOU00ajBrUFdmWStv?=
 =?utf-8?B?bjlsQkZ1NG9iQ0FhdjNLdW1OaXllMzNmTlBZRVB6Z1VBbHNDdXYwanJLT3Vk?=
 =?utf-8?B?djNQZldZOEpJWElCelFMKzBrNEhRZTVnQzloQ0hDbkVOOU1sUHJZdTFpWHk5?=
 =?utf-8?B?ZVZsMXpQUm8xOGdvemVmRDBXMTZDWitLTEhkMWl0OTJRbTlVQmZBek5nV1BZ?=
 =?utf-8?B?NkFiM2lBUXlIVTNDT2tvOFVkT2FCK3ozcGJlUTFSV3VIQlhYQUtqZlRWdDRJ?=
 =?utf-8?B?bldGZ213Wi9Zd0t2SWFiTVBTNnJ6bmthcmU4NEE1N09ZUGFnRUM4MmVFN3ls?=
 =?utf-8?B?d2VycDdLdkVZY254NzZLUDFha1krb0FsZGN3Z0ZRcFplLzBpUVIrWXFHRUxU?=
 =?utf-8?B?SE92eDFpd1VEOW52QU1QZ2pHdzdKZUovRHQvUVpsYnlpN3d4L3Z2RXlMdkRi?=
 =?utf-8?B?TWZaZkljYWlNN2xNK1VzSW9MOTdQdUQ3VlpBcHJOUFdZSDVSdkFMVVQ3Rklo?=
 =?utf-8?B?ZThackNSWEFSV0p5a05pQktFbFVNWUZVVUEzeHdBclBxZFFEQ1l1ZkdiTFpn?=
 =?utf-8?B?SERQTlN4RGljTVZZL25HakJSREloVFczY2V4eSs4VUFoSnhjWGZieEN5V01T?=
 =?utf-8?B?OWZRN2VDc2NNVTN4TkE1dEhaVEpxdjhMbkFGcmg3S21XeFBDeDRrQ1E0dWF5?=
 =?utf-8?B?R1dnaGVLRmt3NHVvQmRyYVgrbVpTbTFoSmJUMTdESEQ4RUFZUWF0bnBVWG1t?=
 =?utf-8?B?RUhmS1VYMGtoTG1RcVYySVBacGtVNFE2K3VSMkQ2UGF6ZkVzMWNOY3hReXZE?=
 =?utf-8?B?YWhxUkVQOE9zMkhBem5tZWR2N1UvM2FmenRqQjZIQ09oVGRUTTBsK2lnK0ZW?=
 =?utf-8?B?Z1BwM1dyNUtheWphZGIrNlFvQndteElwMGJ6VWdadjNKRVQ4M1I1Sm5iR0JI?=
 =?utf-8?B?OUpIcnRPTFBzSTZXOFJCZk9RTGhlN1NvMERUdExFaUxyMGtEZVJ0bCtvaUIv?=
 =?utf-8?B?am9yTjN4ODJ6VEJnbXpndFlPZGdDaGhzRHp1cnRNeVVNUE1oMmZvS2JYcWJn?=
 =?utf-8?B?OGlFL0txQi9hTXVJYlZsVEs0RUVkaFRYM3N3dDlqSzNRL1lSWlNlM0Vjc21v?=
 =?utf-8?B?OXVCSEgzOHJCVEJYZ2lyVzNVSE9XNXlweFVYQjQ2WE5JWWp1dmZrcTJuSm9h?=
 =?utf-8?B?L09Fb0wzQzM0NEkveGlFWjZud1dtd2NoYUxCM25Qb1lPaURTVWlTTllGdkI2?=
 =?utf-8?Q?K2UFr006rx//hZJMnr9qlmeSU?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a0f20232-74c2-4f89-6fd5-08db507bf5a8
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 May 2023 10:55:53.5701 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GfyqYWz6v4QZE5SuqaeIoKMgBiYKFPJLd3JVHC469gFNh2dX1L4l+pLXNJPDC7SUcMdKlKum3GEmmScdZFCdeTWWNnd3dQIwZuWk0/9ylyI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8557
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683629820; x=1715165820;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LhcZpFAx9qW6mz/5ePM5BRfPKPv4h7fyt6cdUddEixQ=;
 b=c0a8EtwfoDDAzkTS9ETdlrIz5zEv5vvlybqOUPj+uwO5M8c2RazCdG8h
 bxx2/acR3Cjv4GTemn0slTYMw8OwJBN22cGX3o/8b/t9hya4kiQ59r/pO
 xRl4sL3StK8BENxFnVwyctsfZrZCg9NsT+Bhlwhw7A5DBMtL9IuRNLc4N
 3S8U3jtRC0K19HF3N5YoTRo17dFO8dQ46YiAPq3kZH3/Lz+b3AkjHRiY2
 doiLMgoUzdPkqDf/jHvg731nlthcBSj3MYI7eWL0nNDJNhfwLAg5pnpLl
 tOiwatxf/y39BhXjsHEh4dP5ih+u3m4M0AGqaVdxV/nD/spGUKipc7jGS
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=c0a8Etwf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 10/12] ice: implement static
 version of ageing
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGkgT2xlaw0KDQpTb3JyeSBmb3IgbGF0ZSByZXNwb25zZSwgSSBkaWRuJ3QgbWFuYWdlIHRvIGFu
c3dlciBhbGwgeW91ciBjb21tZW50cyBiZWZvcmUgbXkgdmFjYXRpb24gOikNCldpbGwgY29udGlu
dWUgdGhpcyB3ZWVrLg0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IExv
YmFraW4sIEFsZWtzYW5kZXIgPGFsZWtzYW5kZXIubG9iYWtpbkBpbnRlbC5jb20+DQo+IFNlbnQ6
IHBpxIV0ZWssIDIxIGt3aWV0bmlhIDIwMjMgMTg6MjMNCj4gVG86IERyZXdlaywgV29qY2llY2gg
PHdvamNpZWNoLmRyZXdla0BpbnRlbC5jb20+DQo+IENjOiBpbnRlbC13aXJlZC1sYW5AbGlzdHMu
b3N1b3NsLm9yZzsgbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsgRXJ0bWFuLCBEYXZpZCBNIDxkYXZp
ZC5tLmVydG1hbkBpbnRlbC5jb20+Ow0KPiBtaWNoYWwuc3dpYXRrb3dza2lAbGludXguaW50ZWwu
Y29tOyBtYXJjaW4uc3p5Y2lrQGxpbnV4LmludGVsLmNvbTsgQ2htaWVsZXdza2ksIFBhd2VsIDxw
YXdlbC5jaG1pZWxld3NraUBpbnRlbC5jb20+Ow0KPiBTYW11ZHJhbGEsIFNyaWRoYXIgPHNyaWRo
YXIuc2FtdWRyYWxhQGludGVsLmNvbT4NCj4gU3ViamVjdDogUmU6IFtQQVRDSCBuZXQtbmV4dCAx
MC8xMl0gaWNlOiBpbXBsZW1lbnQgc3RhdGljIHZlcnNpb24gb2YgYWdlaW5nDQo+IA0KPiBGcm9t
OiBXb2pjaWVjaCBEcmV3ZWsgPHdvamNpZWNoLmRyZXdla0BpbnRlbC5jb20+DQo+IERhdGU6IE1v
biwgMTcgQXByIDIwMjMgMTE6MzQ6MTAgKzAyMDANCj4gDQo+ID4gRnJvbTogTWljaGFsIFN3aWF0
a293c2tpIDxtaWNoYWwuc3dpYXRrb3dza2lAbGludXguaW50ZWwuY29tPg0KPiA+DQo+ID4gUmVt
b3ZlIGZkYiBlbnRyaWVzIGFsd2F5cyB3aGVuIGFnZWluZyB0aW1lIGV4cGlyZWQuDQo+ID4NCj4g
PiBBbGxvdyB1c2VyIHRvIHNldCBhZ2VpbmcgdGltZSB1c2luZyBwb3J0IG9iamVjdCBhdHRyaWJ1
dGUuDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBNaWNoYWwgU3dpYXRrb3dza2kgPG1pY2hhbC5z
d2lhdGtvd3NraUBsaW51eC5pbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gIC4uLi9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWNlL2ljZV9lc3dpdGNoX2JyLmMgICB8IDQ2ICsrKysrKysrKysrKysrKysrKysN
Cj4gPiAgLi4uL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2Vzd2l0Y2hfYnIuaCAgIHwgMTEg
KysrKysNCj4gPiAgMiBmaWxlcyBjaGFuZ2VkLCA1NyBpbnNlcnRpb25zKCspDQo+ID4NCj4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9lc3dpdGNoX2Jy
LmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2Vzd2l0Y2hfYnIuYw0KPiA+
IGluZGV4IGEyMWVjYTUwODhmNy4uNmMzMTQ0Zjk4MTAwIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZXN3aXRjaF9ici5jDQo+ID4gKysrIGIvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9lc3dpdGNoX2JyLmMNCj4gPiBAQCAtOCw2
ICs4LDggQEANCj4gPiAgI2luY2x1ZGUgImljZV92bGFuLmgiDQo+ID4gICNpbmNsdWRlICJpY2Vf
dmZfdnNpX3ZsYW5fb3BzLmgiDQo+ID4NCj4gPiArI2RlZmluZSBJQ0VfRVNXX0JSSURHRV9VUERB
VEVfSU5URVJWQUxfTVMgMTAwMA0KPiANCj4gSSB0aGluayB5b3UgY2FuIGRlZmluZSBpdCB3aXRo
b3V0ICdfTVMnIGFuZCBhcyBtc2Vjc190b19qaWZmaWVzKDEwMDApDQo+IHJpZ2h0IGhlcmUsIHNv
IHRoYXQgeW91IHdvdWxkbid0IG5lZWQgdG8gY29udmVydCBpdCBhdCB1c2Ugc2l0ZXMgKGl0J3MN
Cj4gbW9yZSBleHBlbnNpdmUgdG8gZG8gdGhlcmUgaW4gdGVybXMgb2YgY2hhcnMgdnMgbGluZSB3
aWR0aCkuDQoNCk1ha2VzIHNlbnNlDQoNCj4gDQo+ID4gKw0KPiA+ICBzdGF0aWMgY29uc3Qgc3Ry
dWN0IHJoYXNodGFibGVfcGFyYW1zIGljZV9mZGJfaHRfcGFyYW1zID0gew0KPiA+ICAJLmtleV9v
ZmZzZXQgPSBvZmZzZXRvZihzdHJ1Y3QgaWNlX2Vzd19icl9mZGJfZW50cnksIGRhdGEpLA0KPiA+
ICAJLmtleV9sZW4gPSBzaXplb2Yoc3RydWN0IGljZV9lc3dfYnJfZmRiX2RhdGEpLA0KPiA+IEBA
IC00NDAsNiArNDQyLDcgQEAgaWNlX2Vzd2l0Y2hfYnJfZmRiX2VudHJ5X2NyZWF0ZShzdHJ1Y3Qg
bmV0X2RldmljZSAqbmV0ZGV2LA0KPiA+ICAJZmRiX2VudHJ5LT5icl9wb3J0ID0gYnJfcG9ydDsN
Cj4gPiAgCWZkYl9lbnRyeS0+ZmxvdyA9IGZsb3c7DQo+ID4gIAlmZGJfZW50cnktPmRldiA9IG5l
dGRldjsNCj4gPiArCWZkYl9lbnRyeS0+bGFzdF91c2UgPSBqaWZmaWVzOw0KPiA+ICAJZXZlbnQg
PSBTV0lUQ0hERVZfRkRCX0FERF9UT19CUklER0U7DQo+ID4NCj4gPiAgCWlmIChhZGRlZF9ieV91
c2VyKSB7DQo+ID4gQEAgLTgzOCw2ICs4NDEsMTAgQEAgaWNlX2Vzd2l0Y2hfYnJfcG9ydF9vYmpf
YXR0cl9zZXQoc3RydWN0IG5ldF9kZXZpY2UgKm5ldGRldiwgY29uc3Qgdm9pZCAqY3R4LA0KPiA+
ICAJCWljZV9lc3dpdGNoX2JyX3ZsYW5fZmlsdGVyaW5nX3NldChicl9wb3J0LT5icmlkZ2UsDQo+
ID4gIAkJCQkJCSAgYXR0ci0+dS52bGFuX2ZpbHRlcmluZyk7DQo+ID4gIAkJYnJlYWs7DQo+ID4g
KwljYXNlIFNXSVRDSERFVl9BVFRSX0lEX0JSSURHRV9BR0VJTkdfVElNRToNCj4gPiArCQlicl9w
b3J0LT5icmlkZ2UtPmFnZWluZ190aW1lID0NCj4gPiArCQkJY2xvY2tfdF90b19qaWZmaWVzKGF0
dHItPnUuYWdlaW5nX3RpbWUpOw0KPiANCj4gV2h5IHJldmlld3MgYWxzbyB0ZWFjaCB0aGUgcmV2
aWV3ZXIgaGltc2VsZiAtLSBiZWNhdXNlIEkgbmV2ZXIga25ldyBvZg0KPiBjbG9ja190IGFuZCB0
aGF0IHVzZXJzcGFjZSBoYXMgaXRzIG93biB0aWNrcywgd2hpY2ggd2UgaGF2ZSB0byBjb252ZXJ0
IE9fLg0KPiANCj4gKHNvdW5kcyBhcyBhIGpva2UgQlRXLCB3aHkgbm90IGp1c3QgdXNlIG1zL3Vz
L25zIGV2ZXJ5d2hlcmUsICJ0aWNrIiBpcw0KPiAgc29tZXRoaW5nIHZlcnkgaW50aW1hdGUvaW50
ZXJuYWwpDQo+IA0KPiA+ICsJCWJyZWFrOw0KPiA+ICAJZGVmYXVsdDoNCj4gPiAgCQlyZXR1cm4g
LUVPUE5PVFNVUFA7DQo+ID4gIAl9DQo+IA0KPiBbLi4uXQ0KPiANCj4gPiArCWlmICghYnJpZGdl
KQ0KPiA+ICsJCXJldHVybjsNCj4gPiArDQo+ID4gKwlydG5sX2xvY2soKTsNCj4gPiArCWxpc3Rf
Zm9yX2VhY2hfZW50cnlfc2FmZShlbnRyeSwgdG1wLCAmYnJpZGdlLT5mZGJfbGlzdCwgbGlzdCkg
ew0KPiA+ICsJCWlmIChlbnRyeS0+ZmxhZ3MgJiBJQ0VfRVNXSVRDSF9CUl9GREJfQURERURfQllf
VVNFUikNCj4gPiArCQkJY29udGludWU7DQo+ID4gKw0KPiA+ICsJCWlmICh0aW1lX2lzX2JlZm9y
ZV9qaWZmaWVzKGVudHJ5LT5sYXN0X3VzZSArDQo+ID4gKwkJCQkJICAgYnJpZGdlLT5hZ2Vpbmdf
dGltZSkpDQo+ID4gKwkJCWljZV9lc3dpdGNoX2JyX2ZkYl9lbnRyeV9ub3RpZnlfYW5kX2NsZWFu
dXAoYnJpZGdlLA0KPiA+ICsJCQkJCQkJCSAgICBlbnRyeSk7DQo+IA0KPiBNYXliZSBpbnZlcnQg
dGhlIGNvbmRpdGlvbiB0byBnaXZlIGEgYml0IG1vcmUgc3BhY2UgZm9yIGFyZ3VtZW50cz8NCj4g
DQo+IAkJaWYgKHRpbWVfaXNfYWZ0ZXJfZXFfamlmZmllcyhlbnRyeS0+bGFzdF91c2UgKw0KPiAJ
CQkJCSAgICAgYnJpZGdlLT5hZ2VpbmdfdGltZSkpDQo+IAkJCWNvbnRpbnVlOw0KPiANCj4gCQlp
Y2VfZXN3aXRjaF9icl9mZGJfZW50cnlfbm90aWZ5X2FuZF9jbGVhbnVwKGJyaWRnZSwgZW50cnkp
Ow0KPiAJfQ0KDQpzdXJlDQoNCj4gDQo+IA0KPiA+ICsJfQ0KPiA+ICsJcnRubF91bmxvY2soKTsN
Cj4gPiArfQ0KPiA+ICsNCj4gPiArc3RhdGljIHZvaWQgaWNlX2Vzd2l0Y2hfYnJfdXBkYXRlX3dv
cmsoc3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKQ0KPiA+ICt7DQo+ID4gKwlzdHJ1Y3QgaWNlX2Vz
d19icl9vZmZsb2FkcyAqYnJfb2ZmbG9hZHMgPQ0KPiA+ICsJCWljZV93b3JrX3RvX2JyX29mZmxv
YWRzKHdvcmspOw0KPiANCj4gQXNzaWduIGl0IGluIGEgc2VwYXJhdGUgbGluZSBwbHMgOnMNCg0K
b2sNCg0KPiANCj4gPiArDQo+ID4gKwlpY2VfZXN3aXRjaF9icl91cGRhdGUoYnJfb2ZmbG9hZHMp
Ow0KPiA+ICsNCj4gPiArCXF1ZXVlX2RlbGF5ZWRfd29yayhicl9vZmZsb2Fkcy0+d3EsICZicl9v
ZmZsb2Fkcy0+dXBkYXRlX3dvcmssDQo+ID4gKwkJCSAgIG1zZWNzX3RvX2ppZmZpZXMoSUNFX0VT
V19CUklER0VfVVBEQVRFX0lOVEVSVkFMX01TKSk7DQo+ID4gK30NCj4gWy4uLl0NCj4gDQo+IFRo
YW5rcywNCj4gT2xlaw0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3Ns
Lm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJl
ZC1sYW4K
