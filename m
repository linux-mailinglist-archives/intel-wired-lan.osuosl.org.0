Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C482F76B84B
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Aug 2023 17:15:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 164EF81D11;
	Tue,  1 Aug 2023 15:15:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 164EF81D11
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690902930;
	bh=aMhOAkLfe2KPYG+Th8LJutn9/XIhIf3jqEcKXs6vKkY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=k2THQ6fpP3MZBTMv+599Rs/CPofa0GlevtEktgf6BXA4D5a2Z7rl5p63977z3v0oE
	 0FIfDxWKOPHx46FmC3V185u/B5fBgUGYBrPagI8RPpdrvOWTyzZhABWeUedCvcKKgs
	 roLAeB1Okh3Nl6veZX56+tGOZkmJXz1uxnDaYXHVPZo2WOirgGByJebmqElvD+LcbA
	 WYiA6celsY+vvzZbbS+bj1T1o4Wy0wwWq24GufcW3EZbl1C9J9pdIoDSMQUZAtpKXI
	 S+Qbv+ZavLqO9o4m32MfkrADhb7zxtHMayV7M3/YfkxXT8iuN6BwQbokHJI5ggSowS
	 0KgG6bds2hM0Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zSB7eHvhYfrK; Tue,  1 Aug 2023 15:15:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C268A813DA;
	Tue,  1 Aug 2023 15:15:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C268A813DA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5704C1BF2E5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 09:24:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DF10E8133E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 09:24:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DF10E8133E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rU9MYXYucTHy for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Aug 2023 09:24:38 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 863E28143E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 09:24:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 863E28143E
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="369244587"
X-IronPort-AV: E=Sophos;i="6.01,246,1684825200"; d="scan'208";a="369244587"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 02:24:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="794102810"
X-IronPort-AV: E=Sophos;i="6.01,246,1684825200"; d="scan'208";a="794102810"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 01 Aug 2023 02:24:37 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 1 Aug 2023 02:24:37 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 1 Aug 2023 02:24:37 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 1 Aug 2023 02:24:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C+d3BNzE5ghhUp6BKoaqfJx3Et/S/I1QmxDjHU6VbTQCP3nFDxGIh9g6w4BcEFs+QL+eeDK9uUkonHm1lUMxxMqjKLru0F1lK52yFRt5n7zJ/NKAw7HH4hpqUhhFKfTKq/ZDOWvbiD11YhmBUqln4inVxoXYjKTIL+hOPHy56bXezcXBRfZigj+pukJnzTCwDgU1yVmDf/V8hG6GI+KsUU4+3tFRCutIGkBKZ8UFXAuzJYmaISFCIuqJmLuYlYmlVL3UeR7PZ+5p5prOo33rfmjzsyK0wUtTV3XaMEyIZYEf+Qgh1DxGysrK71SIjb1Yw3guCzxJZPFwweWUMzJ3Uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rwYED2VQh8GU71H4vVISdJoO3BDFWNxOFjLcJH9h8EI=;
 b=C4btlVforH11l4eMsKICJbOqp4hz3HJAVILfub/2Tr3Cbj3yQ0RLtpsVrRJ2LoOYGZ0bKOhicYowDggL8CRbISl5xBQM0c6iixPHN/Lz98RAWdGCuuIfHHL5Wv/PC9i2ANIFPMwa1KhmW0FvX4cSw15fveUgkOMLWdPeeaskq3oIdivGt07iYzlFNolenH9w6sx+ay4lZYv7NIrWV91VIhg3cNeBX67t/m/OOaSkEdnWfkqvPrlOqLHWmCI2/1DqtSzxLwA61oiPocAG29Kgup40eEfdXcZtLZhqf9cx2c7OvGEaiU5m8vO4wJ0DIn4lltVPJ6TId+cpvpJCRZhySA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7955.namprd11.prod.outlook.com (2603:10b6:208:3dd::6)
 by PH0PR11MB7710.namprd11.prod.outlook.com (2603:10b6:510:298::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.44; Tue, 1 Aug
 2023 09:24:34 +0000
Received: from IA0PR11MB7955.namprd11.prod.outlook.com
 ([fe80::9c97:497b:b952:147d]) by IA0PR11MB7955.namprd11.prod.outlook.com
 ([fe80::9c97:497b:b952:147d%6]) with mapi id 15.20.6631.043; Tue, 1 Aug 2023
 09:24:34 +0000
From: "Wu, Wenjun1" <wenjun1.wu@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 1/5] virtchnl: support
 queue rate limit and quanta size configuration
Thread-Index: AQHZwC87bVDVmkdmqkaYObr0pgO8Qq/UerCAgAC4TeA=
Date: Tue, 1 Aug 2023 09:24:34 +0000
Message-ID: <IA0PR11MB79552ADE50150D1CEC02BA45DF0AA@IA0PR11MB7955.namprd11.prod.outlook.com>
References: <20230727021021.961119-1-wenjun1.wu@intel.com>
 <20230727021021.961119-2-wenjun1.wu@intel.com>
 <ef452117-09b3-dc17-588a-4ff1f2e4d470@intel.com>
In-Reply-To: <ef452117-09b3-dc17-588a-4ff1f2e4d470@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7955:EE_|PH0PR11MB7710:EE_
x-ms-office365-filtering-correlation-id: fa6972ae-d327-47ca-e8fd-08db92711e93
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: v6URy5z6StWS8JgQxiHUGUsVKPYUPGFEiklsgjrAA7OwK2GsEU0KO5JHOmdPd799CeWylnP4+yj8Qyw990YtMWiG82Pxxe8YdNFf3nCy/9RI6a316LD4o2ma2EQ2EY3O7fzWtIJ+msKbLSv5DZt8Wu+WLzZWIBP1o6PbnIaAn5DtncuDVOflB/I5OWLYLLfZza2eZVUmmP/IVvqBLAxrF8a+yazQPWUQ9WVoOxiycuG9HL/OPgGq9ouoSWbzmuMPq0XX3IZmKoekdZFvV3j6wdhO+P/1ykfAx6PsMNUZcmVb98thDBRlXRBqc5jRmpwfWDUt9A25kq6wD3xkQ1wFjA+UUtV5vfSjlh3enxnQxOP9/h/LP3ApAbDdy+PC8cLPYcBzyHe14xfHcZmk9PPPb0Dzk07UK2r76ubYKgmmNCIMdvd/w2/7ya4Zl3E/G9fgse18BEVOIVTT76DHrAMRquaajxbgPtlBQbZ6vlR27j0j/YiwiFyqJ5iSA6Abd1E77U4uWeT5tI5WuCG/WvGOVosbIykhWbNe5BNFsu/E9YdoZOHhEfJmu+enBSeQPPsfxy3oZPXlkmYwGvNl+UaX8PQPREHFsa6nQmhY+knErFE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7955.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(39860400002)(376002)(136003)(366004)(346002)(451199021)(38100700002)(33656002)(6506007)(5660300002)(76116006)(53546011)(4326008)(66946007)(55016003)(107886003)(66556008)(71200400001)(64756008)(66446008)(66476007)(110136005)(82960400001)(52536014)(54906003)(9686003)(966005)(122000001)(478600001)(2906002)(8936002)(8676002)(38070700005)(41300700001)(7696005)(186003)(316002)(86362001)(26005)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UFJsaWppMlZHZnJRZDVvdVYxYnVFQVdLVi9UZTlVRGM1SnZHanh5cGtRVFAx?=
 =?utf-8?B?UWZUZ0dGYUFacGZZNkkwUW9jdk5QbzUxeE83dmlFUXBONlpsR2ZNaDluSXJV?=
 =?utf-8?B?aGlRa0FNL2h1NllMcU1IOWJ2LzREd0xMZC8wY0V1Z1lIUSs5bUc1eGhNL25V?=
 =?utf-8?B?QkR0dTc3RDlMNVlvOWJ1bkhPMFhBT05XNFlDOHRDcVdjaHRPUWg4R3g5RG5l?=
 =?utf-8?B?QUFkVGI3aWxPSnROL3ErV01EWXRubzMzd09uOWx2STBDRDhwaUpCek9RbHBw?=
 =?utf-8?B?a0d2b0xpbG1IZEc4UklyMy9OUXE0MFg4Mi9sL3BQTWZNUXIrVGNOcE5rNFRJ?=
 =?utf-8?B?V3krUy9DNWp2WFc2dFJmZGhyRS8vcHJJOTJNRjVnKzBpWCs0K0RWYm1Ldncx?=
 =?utf-8?B?RmZVNHl1aHo3by9tOGZGYWdtNkdNQ0JqSEk2QTBhcXE4cWxpM3JTQkNuQjJV?=
 =?utf-8?B?dWVwQ2NPaXFSZ0VYZktwK1VjUkc4ampGQitDMGJDRVo5dW9ML2x2OFBHZGFW?=
 =?utf-8?B?aGJWNHpZdWNmRE4rbTNKL1pOOTNWRDF1NjhMdVZOR2JvMDBBVVRKd0F5ZWJj?=
 =?utf-8?B?SVhzTHlkeHg5d3lwRVNURCtIQzdIT2tzcjB3TWg4QURiYm1yYlpVbytETkFO?=
 =?utf-8?B?c2Q1bEFuU1BCSG5idUFoR1FRY0tMMm9HSENoTHUxODFRYjJpcTV6RWtuaFNk?=
 =?utf-8?B?NFVxa0ozMFhsSnhiSjkvRG1ubHkwYnM0MTZzQlFocFVxKzhyRXJ5a1M1RWt1?=
 =?utf-8?B?VWN2YkxPUTYweEVEeGlhbmM4UFJvSkNhektEdFhxTTRoejV0QWRCNGEzNTF4?=
 =?utf-8?B?MGMvNVBzY3dCZjR4d2dlNS8zeXpHUmxpMDJSaExGSzg4ckJPcllka3dScFVL?=
 =?utf-8?B?dVRGMER5ZkxEODZHL1ZBcW56Y3pKWUJzN0hxdlBpRTR2blJpcG1YYSsvUC9B?=
 =?utf-8?B?U2dQeXFqaHRoYnZtZFRIcVYybnVLSFFkckZqekFBTm1TUGlvRDM3NVgxZWxx?=
 =?utf-8?B?d0x6ckJSK0VGWjhpK2ttOUFLOTVBOVRPYkJ1bkMybFBvZVVhQmVYbTVGNE9o?=
 =?utf-8?B?L0dyUWJlTUM3NXc2UnQzSmZyYjNTWTEvRUZ3cXRhT0N4YkRHWlFXblIrTytH?=
 =?utf-8?B?Zlg2bHpPVC9udWpEcEtXYTVvcFhjcmw4RHFQdGRWekU0TEhVMXlFUTYzNGVw?=
 =?utf-8?B?QmUvajMxUWMrTzg0NjJBRkdjOFlaSnRiSU9YLzFLeTlnQkg1WC94Vis1WWxn?=
 =?utf-8?B?dlEyVVJ2dXFUVStWaUpKeUwrbVZldEV1SlVIV2diaHdodWlqU2RHVEozMUtJ?=
 =?utf-8?B?MlVpa2pCaGRkQ01INnhNdGNhZHBFWG1PK2R5b2EvajZCeWhUUTdjeXB2Y0dI?=
 =?utf-8?B?WUVyWW5XelN6VXIwWFJ1M0Zndk9iZ3RTdE1ha3l5THdPNDNEaGt2clg4QXNp?=
 =?utf-8?B?VXlXSTY5bjU4V3dQbzZJelExVHlNUGpDYmJTUjYwb1hqSXlCMm01d0kzK0wv?=
 =?utf-8?B?ZjE1Y05aTmRlVGltdkpEc1EzQVBQaCt6aXhrZnJFK3h0Tkc0THV4LzU5WFRv?=
 =?utf-8?B?b0lNTHpBanZYMmRrSEI4VWVpNCtpb2l2SEJRSXowczhMSG1KcE5FSE5teVlp?=
 =?utf-8?B?VUZ5MENCU2FpaDhXYU1VSDRsL1dFSVVLWis3WlZWZHgrTGhiSXBla2NIWk9X?=
 =?utf-8?B?ZEdzVG9lVTFQaTRhZWkyU21vMDNmY0FTUWN0ZUlRK2g1Q29JekIrdk45Z0k4?=
 =?utf-8?B?cHlTbm5FVXBkV0I5U1NPSXAyM2NpOGJ3QloxdEZtc0NPb0JCMUVPa1QyVnNG?=
 =?utf-8?B?aWRBODBRRTJTUjFDRk55L0lwZUtxRUxIazZzcldwUGx3ZjFhQUpkeVBmU3FK?=
 =?utf-8?B?c0Q4TVEvME9UMDh1M3N2M3ZrODVMUlVTaWg2TG1vUm5OQ3ZPdUdDV04zTVFz?=
 =?utf-8?B?REZJNVIzc3lhQ1ZBc3ozTGprZVY2c0EzaStnMjZsaFE5azFvL2hlSEFqNk1B?=
 =?utf-8?B?OGtsOWg1WVBsc0ZRRWJiOW8wN2MzcE14UHNIMEJ5MXJ5UEZMenQ2NFhCRWRW?=
 =?utf-8?B?Y3U4MHVYQ21OUXhlcytpOTlPRkFoNkMvSnBjZ2dBOFNjbEpGZG4vNHRqR2Np?=
 =?utf-8?Q?fqElYHrwNncho4JCQ5zMSWcpM?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7955.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fa6972ae-d327-47ca-e8fd-08db92711e93
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Aug 2023 09:24:34.4923 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QBri/0NjVZdmhj5s+CCpewOR0CS9SdJAgZrB6cTvEFRAnMh0nnz5navTZdf6gLIl7zQ2pN71E5qTt2DjYwhaUg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7710
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Tue, 01 Aug 2023 15:15:23 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690881878; x=1722417878;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rwYED2VQh8GU71H4vVISdJoO3BDFWNxOFjLcJH9h8EI=;
 b=JkMFEAc7ySdKcvQRvMOClOCXYhHWSlacjrzkUyA052u8lmIox7IT4y6w
 vj3/tNCpeqC3NlfJrT1UGV8DFEfqCedmoIfNFPu/qezwZbUdcq5gPZSDF
 3gtFg8+RgSz7NMEAX/dPkvFJki3xFcY5JVGvNqjx8zK01P7bZQ0l4K/Qy
 lW0RN6bFbfh8KrwQLVZflH5xkkeRRstv/sNKnvMObB14DhqtYsGsuPk+7
 LGFbd5n0lhVS7oIzx18oQfYLXyDmUqIa+8Z4NMczxmRvYyDqgZT9HFHm5
 6FWGA52ydJXHkzWgqdjNlAU1nWh1VqGlnyL1tlQHfKAqH4xsFJlQtDqm6
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JkMFEAc7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/5] virtchnl: support
 queue rate limit and quanta size configuration
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
Cc: "Aggarwal, Mitu" <mitu.aggarwal@intel.com>, "Zhang,
 Qi Z" <qi.z.zhang@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Thanks for the careful review!

> -----Original Message-----
> From: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Sent: Tuesday, August 1, 2023 6:23 AM
> To: Wu, Wenjun1 <wenjun1.wu@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Cc: Aggarwal, Mitu <mitu.aggarwal@intel.com>; Zhang, Qi Z
> <qi.z.zhang@intel.com>; Lobakin, Aleksander
> <aleksander.lobakin@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/5] virtchnl: support queue
> rate limit and quanta size configuration
> 
> On 7/26/2023 7:10 PM, Wenjun Wu wrote:
> > This patch adds new virtchnl opcodes and structures for rate limit and
> > quanta size configuration, which include:
> > 1. VIRTCHNL_OP_CONFIG_QUEUE_BW, to configure max bandwidth for
> each VF
> > per queue.
> > 2. VIRTCHNL_OP_CONFIG_QUANTA, to configure quanta size per queue.
> > 3. VIRTCHNL_OP_GET_QOS_CAPS, VF queries current QoS configuration,
> > such as enabled TCs, arbiter type, up2tc and bandwidth of VSI node.
> > The configuration is previously set by DCB and PF, and now is the
> > potential QoS capability of VF. VF can take it as reference to
> > configure queue TC mapping.
> >
> > Signed-off-by: Wenjun Wu <wenjun1.wu@intel.com>
> > ---
> >   include/linux/avf/virtchnl.h | 113
> +++++++++++++++++++++++++++++++++++
> >   1 file changed, 113 insertions(+)
> > +VIRTCHNL_CHECK_STRUCT_LEN(40, virtchnl_qos_cap_elem);
> > +
> > +struct virtchnl_qos_cap_list {
> > +	u16 vsi_id;
> > +	u16 num_elem;
> > +	struct virtchnl_qos_cap_elem cap[1]; };
> 
> If it's not too late to use a flex arrays, we should. Otherwise, this should
> model after Olek's work [1].
> 
> Adding Olek in case he has input.

Yes, I will change it to flex array in the next version.

> 
> > +
> > +VIRTCHNL_CHECK_STRUCT_LEN(44, virtchnl_qos_cap_list);
> > +
> > +/* VIRTCHNL_OP_CONFIG_QUEUE_BW */
> > +struct virtchnl_queue_bw {
> > +	u16 queue_id;
> > +	u8 tc;
> > +	u8 pad;
> > +	struct virtchnl_shaper_bw shaper;
> > +};
> > +
> > +VIRTCHNL_CHECK_STRUCT_LEN(12, virtchnl_queue_bw);
> > +
> > +struct virtchnl_queues_bw_cfg {
> > +	u16 vsi_id;
> > +	u16 num_queues;
> > +	struct virtchnl_queue_bw cfg[1];
> 
> same here

Got it.

> 
> > +};
> > +
> > +VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_queues_bw_cfg);
> > +
> > +enum virtchnl_queue_type {
> > +	VIRTCHNL_QUEUE_TYPE_TX			= 0,
> > +	VIRTCHNL_QUEUE_TYPE_RX			= 1,
> > +};
> > +
> > +/* structure to specify a chunk of contiguous queues */ struct
> > +virtchnl_queue_chunk {
> > +	/* see enum virtchnl_queue_type */
> > +	s32 type;
> > +	u16 start_queue_id;
> > +	u16 num_queues;
> > +};
> > +
> > +VIRTCHNL_CHECK_STRUCT_LEN(8, virtchnl_queue_chunk);
> > +
> > +struct virtchnl_quanta_cfg {
> > +	u16 quanta_size;
> > +	struct virtchnl_queue_chunk queue_select; };
> > +
> > +VIRTCHNL_CHECK_STRUCT_LEN(12, virtchnl_quanta_cfg);
> > +
> >   /**
> >    * virtchnl_vc_validate_vf_msg
> >    * @ver: Virtchnl version info
> > @@ -1558,6 +1644,33 @@ virtchnl_vc_validate_vf_msg(struct
> virtchnl_version_info *ver, u32 v_opcode,
> >   	case VIRTCHNL_OP_DISABLE_VLAN_INSERTION_V2:
> >   		valid_len = sizeof(struct virtchnl_vlan_setting);
> >   		break;
> > +	case VIRTCHNL_OP_GET_QOS_CAPS:
> > +		break;
> > +	case VIRTCHNL_OP_CONFIG_QUEUE_BW:
> > +		valid_len = sizeof(struct virtchnl_queues_bw_cfg);
> > +		if (msglen >= valid_len) {
> > +			struct virtchnl_queues_bw_cfg *q_bw =
> > +				(struct virtchnl_queues_bw_cfg *)msg;
> 
> missing newline here.

I will add a new line here in the next version.

> 
> > +			if (q_bw->num_queues == 0) {
> > +				err_msg_format = true;
> > +				break;
> > +			}
> > +			valid_len += (q_bw->num_queues - 1) *
> > +					 sizeof(q_bw->cfg[0]);
> 
> See referenced series for changes to this too.

I will use struct_size here in the next version.

> 
> > +		}
> > +		break;
> > +	case VIRTCHNL_OP_CONFIG_QUANTA:
> > +		valid_len = sizeof(struct virtchnl_quanta_cfg);
> > +		if (msglen >= valid_len) {
> > +			struct virtchnl_quanta_cfg *q_quanta =
> > +				(struct virtchnl_quanta_cfg *)msg;
> 
> need newline

Got it.

> 
> > +			if (q_quanta->quanta_size == 0 ||
> > +			    q_quanta->queue_select.num_queues == 0) {
> > +				err_msg_format = true;
> > +				break;
> > +			}
> > +		}
> > +		break;
> >   	/* These are always errors coming from the VF. */
> >   	case VIRTCHNL_OP_EVENT:
> >   	case VIRTCHNL_OP_UNKNOWN:
> 
> [1]
> https://lore.kernel.org/netdev/20230728155207.10042-1-
> aleksander.lobakin@intel.com/#t
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
