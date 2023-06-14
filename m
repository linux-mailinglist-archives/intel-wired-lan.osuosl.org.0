Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 987A172F156
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jun 2023 03:07:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 581B540974;
	Wed, 14 Jun 2023 01:07:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 581B540974
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686704845;
	bh=avRCeGvFgWoQRNCEaDt8MAkd4kXMWBDyl8bJsLaoigA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Tq3/0pnKggtQ4od17hc7enDFRClMpf2uNyMLI+sx/d2WTyoZmgOhpV5yTxYZzbJ+U
	 MGknOi/MPNrKy8wJgF0j769jt4kojkoIx2aehb0fGxUZ15xLeGS2k05sWrJHXaBwYl
	 lMUKhkpY4dbasCYvvbp8bGYbPmC+4HS4O+cEgGJ6lV4ZDbUBy5RpVVfMFChoz8Z4z4
	 kvF2b5bJbdgxQowibzUBEknw+a3fQ4QKQ7IVzEo7iJcTpJKAYHrvZh8dIeC8ti1XY9
	 MU3Z3Cb1kr+IxnlPxF+u3iDPjPIvaC2dvbCuTVZpl5SWnxldPbalsghC9CEaz59v7Y
	 uV0QyhtY63JQg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lK1OPhTTKAvK; Wed, 14 Jun 2023 01:07:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7A52D4094E;
	Wed, 14 Jun 2023 01:07:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7A52D4094E
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 156231BF346
 for <intel-wired-lan@osuosl.org>; Wed, 14 Jun 2023 01:07:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DE9C5405CD
 for <intel-wired-lan@osuosl.org>; Wed, 14 Jun 2023 01:07:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DE9C5405CD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yile2EIMI02z for <intel-wired-lan@osuosl.org>;
 Wed, 14 Jun 2023 01:07:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1FF80403C9
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1FF80403C9
 for <intel-wired-lan@osuosl.org>; Wed, 14 Jun 2023 01:07:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="338123709"
X-IronPort-AV: E=Sophos;i="6.00,241,1681196400"; d="scan'208";a="338123709"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 18:07:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="662198767"
X-IronPort-AV: E=Sophos;i="6.00,241,1681196400"; d="scan'208";a="662198767"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP; 13 Jun 2023 18:07:12 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 13 Jun 2023 18:07:12 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 13 Jun 2023 18:07:12 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 13 Jun 2023 18:07:12 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 13 Jun 2023 18:07:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=njsE4lYGmqOAFN5IBz4Bst2mFwKDL2AohdqYaCkm38SNYcWD0AK+yHsDwW7q8bbwOmYYxZD2XcOFexBS3ZjNlVe1YI87Quz/93nobclD94qBDnoSNEltpcffbIdSia/YVjOFtocwsyMazH8/dsabtMii1crDjrdrlw/xAvqCGufO2j+2Gn5I0xwLIfr4tBMP/YRSmMVNN5K6goAYwyXWjqjOSMivWjMOG9v/tjSZ3uD7TFrR24/QhQei1M2r24TSVxjHeDwao7TL9hreeTX+hk+TzYM/6vA7hGlkaMFgzKQ1GPxDD+z9l4lXa8x7EWPJ5gn2oa0Vqmb/OU6kpDG/+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=db3H6y2ByimchMs0+IwhNE001hJFHHYjvGCz6H6XG80=;
 b=LMS2kcQ4h4PzzHu8bs+pK4vs+UJUaL0CZ+Eb1KCFYX5zoD28YNbuhhSo30Bfvqive3/DBdMmDFQU0SbVDlh+agaIVXo6kdFZATlDCBHqfGZUQ7Zv+w1ZULeOFU4m/o9p6YYOjaNnjDR+jCkmSUvXJ+9VCCxtpKwpg81o/gBeSe5VaQd//1Bg6cKy/BxWBdG2i77ybAosnXYgr+BazELUaLQCuUopPjAigrK49j+qShj+JEbD7aGS1dakYJzXDSKANEMkPuQFopv+eOMh/IHpb6H8ofI4Ey0GZtVgNI0r93JFKruwmIBlVTdodiO8ntb5LPFG+AuqG7huI4lslX3Nrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 by PH7PR11MB8123.namprd11.prod.outlook.com (2603:10b6:510:236::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.41; Wed, 14 Jun
 2023 01:07:10 +0000
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::dfd2:5a47:bfeb:aa2e]) by SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::dfd2:5a47:bfeb:aa2e%4]) with mapi id 15.20.6455.030; Wed, 14 Jun 2023
 01:07:10 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Thread-Topic: [PATCH iwl-net v3] igc: Add TransmissionOverrun counter
Thread-Index: AQHZlCSRIAJsOJ7ZBUaDwOZZweIG1q991t1IgAToprCAAAqmAIADxntwgAC7QACAAaEPsIAABcUAgACd4GA=
Date: Wed, 14 Jun 2023 01:07:09 +0000
Message-ID: <SJ1PR11MB6180314A23DC709689EE5C22B85AA@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <20230601005925.30473-1-muhammad.husaini.zulkifli@intel.com>
 <20230601005925.30473-1-muhammad.husaini.zulkifli@intel.com>
 <20230606140230.dyglrbenr3geu3ha@skbuf>
 <SJ1PR11MB61804C9DEFF8D2843E1B10D1B851A@SJ1PR11MB6180.namprd11.prod.outlook.com>
 <20230609173838.vtki6u5kk6v6gtr5@skbuf>
 <SJ1PR11MB6180B613324BFB5C5395DAF1B854A@SJ1PR11MB6180.namprd11.prod.outlook.com>
 <20230612142800.76xkh7bshgb6ttwb@skbuf>
 <SJ1PR11MB618092B287B39503DD2C5873B855A@SJ1PR11MB6180.namprd11.prod.outlook.com>
 <20230613154122.d75fclckvwxlapwi@skbuf>
In-Reply-To: <20230613154122.d75fclckvwxlapwi@skbuf>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6180:EE_|PH7PR11MB8123:EE_
x-ms-office365-filtering-correlation-id: ebc67dcf-f936-4a57-6f78-08db6c73adf8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: f3heopHz6+hZm6Pqlm2dCAA48G/asLw6GB3j6siQh6OQ0MrR0DlOIboqFsuTGU2jLC/tjf9gDUBuyNKJLlsoqEq6YnLp5+vK8vqIp+ORGO7Rkzr+XbsrjhctEflzAqjDp03RM7IUqeekCkYbFjEPXj3KcAOp/u//EXw/YfRESQWzv5B+7p+6qMyg28V9M37Gvp7R22/NYgyboiR4LGEXA9kJzlVnAWay2glq7TcVp0eUGzD1xxhyuB9Bqii/0/KO1qbyF3TyGVqedH8vPwPuYkJ7vhtFRMJZ6o3zRMuhRPNf0llFV56BQVFPu1Y84ge8zQfGY64T/S0he567qFge8y0nFFnMg7l3Mbsh6KaYTXL8bfFiY9Vgr9qsMV8r1lVc19Fk5PJOIOXmDEQYElOzyDAarZu5+YaUje9fRF+imI16QHyd5c283UzgNtyfuX/jpoBL4wW0NexJ1avimfc5rTsVtySf3IxQ4U/cdA9Dk7FV6m2dBKVV0pOQQsckuh0ZPY2t2C3zuuP5zMKSezWEYSJ6eXd3lKO9Fqhy/XTMkp/ubDflpUaR8TZRFvH2DYUGr7PtI275ot68Nj93gSn1oMF/ve0SBt7dTiwzZJZrMTiEeP6fgiSUIegq6KTv4XlA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(39860400002)(396003)(136003)(366004)(346002)(451199021)(86362001)(2906002)(38070700005)(33656002)(52536014)(71200400001)(55016003)(64756008)(6916009)(76116006)(7696005)(26005)(9686003)(83380400001)(186003)(5660300002)(6506007)(478600001)(82960400001)(53546011)(54906003)(122000001)(66446008)(66556008)(316002)(8936002)(41300700001)(38100700002)(66946007)(66476007)(4326008)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Zy9BZ1NWSmRtSGlBajRKZDhPTmRoYVBIbFg3aVkyQWtrWDlFRy9IMUpBV29E?=
 =?utf-8?B?ZXlDaXkzT0RHRjhXVEFqdHdwUnVOR2o3Q3BOYmdHUWhtNWRLSG4zQVEzbWtQ?=
 =?utf-8?B?SmRQOHhVOGxudEdnYjM0S1lFNW5KZ3NWcm5oRnJoQ1JVZnNnWEtUQWhqbmxy?=
 =?utf-8?B?ZUV0c3VGL2U1WW1raVB1VUtYTU0zeGpNYU5CUWRpcDNQcS96dStRMy9aVFc1?=
 =?utf-8?B?WGFMRCtYYjhUQm1YUkQ4ZVVZTUIzOEdCTUR0REJ1V3BCTW03LzFiQXd5S2JI?=
 =?utf-8?B?N1lqYnFsYVFDTzZMNWpDcUVBV0dMTjJEQXJuaWgyWSt1UnJDSVFya2lhOU9m?=
 =?utf-8?B?T1lWT2d5MEJwcXJVOC80NnppTG1qSmMwMHQ4RkdvWnlwWUZjbG5SZVIzQTBn?=
 =?utf-8?B?aVVnN3lkMDBiYnJBdzg3aWd5WkhxWU01cHFqcWd5RWtPVndzZitrL0tDenRR?=
 =?utf-8?B?NHFJR2pHOGMwalVWQmhNdzgrNk1yRGZSaU51ZFVQbkhFLzBpS2xhcjRpQUhp?=
 =?utf-8?B?OUttWURZVDR2QmYvY1FLN2Z0NEFxb2lEMGtwUmdhYUp6bi9Ua3kycHpsNDdJ?=
 =?utf-8?B?a3VNcVg0dGpWbnkwZDlBMDRpRzVKM2Yrc3czV1pvOUJmei96L2dkOGNYblBR?=
 =?utf-8?B?aGlTZTZZTTNjTng0clpYRis3ai9OUHovRmxlMnpjQ25EUjNDSFJWRHgwQXhI?=
 =?utf-8?B?ZUlhMXRyeGlMV0w3RnlQODZITDNsaENVLzB2eXlmSFNwTFljM0dOK2Voays4?=
 =?utf-8?B?YnZZM2xQMXZERzh0Q2E5dFRCZ0hsWVozM0NRYjkvRG1nWW5UdWRXdG5nQ0pV?=
 =?utf-8?B?ZjhLWXB4Y0ppM2FzUGxkd05BYTZzV1F3QnptWWF3YzBkdWI0SUcrWTNoazdJ?=
 =?utf-8?B?SlBMSWIxQnZab2l2L2hQUGRHbmxZWlBZRVZaVU1WRVBTemZkazU5dmpHR3dh?=
 =?utf-8?B?OWMzTjRyaVlGQnU5eVFUTGRzU0lCeStkS0JuRlhBdVQvN2xnS2o3MTVYNWww?=
 =?utf-8?B?RFdEcDBEd09NSzk4T0QyYjA0K1daZmtBc1lHck1NOWZSTVFXVkJ6L3R2anYz?=
 =?utf-8?B?LzM3ZkUzc0hnbDZtQnJnWElKSTlCT0FVVXduY1FsRVN4RXZKOW9RQlB3cW1S?=
 =?utf-8?B?b3UzbU5DNjBETzQ2cEJiYjZXdlBEZlRWUzRXWnNObFEweGptcW1oLzN3Zktw?=
 =?utf-8?B?VFpXMjMzdTJlMStMK0Z1SDZOOWZXajdTa1RYY3ZoQ2NZWmdBckhTazlVVG5E?=
 =?utf-8?B?ak0zUmV0cnhOdU1vVEJSS1I4N2FHSi9icGx4MGx3L3hxYldQM2RxbWRBK1Bt?=
 =?utf-8?B?WVlWZllzalI1eXRsYVp1ckg2MUVVdUJ2Rmw0cHgzWjA1bUF4WldRZ2txSmps?=
 =?utf-8?B?dnlFMDYwM2ZNeThhM2pMV2hsNjNFbFlOK3VrODJNMGlQZC9SSHZ4SVZGM1Jt?=
 =?utf-8?B?ZjN3RFh5YXVORU5xSEFJb2JRcU9ENFlVQ2dKS01RVklmRlo5TDV2bTNwYk1M?=
 =?utf-8?B?YnVNTjY4WDBOWVNjTnVtVTdMdTAya3dQOCtrQmhDbCs3LzJDSXltcDNIQi9I?=
 =?utf-8?B?OWhHWmMrRjlvMEdkL0ZleDRXNUVVRGE3L0R6ZmdETkF2WmpiZmdBeEdjL0VI?=
 =?utf-8?B?Z1R4dmkvYXgxdjIxRitGNjdNWlovakdTWkZSS0JLQTRhRURIVkhoa0lhM2tH?=
 =?utf-8?B?T0NnNVlPQnhRS2N3QjZFbkZhQnR1V1JZc1BBN3dXZFdOb1J2UzRhcHhqc3Fz?=
 =?utf-8?B?S01nb1BCK3ZjTm9Xc0ZMcGJja3l6K2pnZjVFcmpOSGZkVENoOEZLWlRWc2NY?=
 =?utf-8?B?VzM5elNFcWozUW95KzJXSU5ET3NYWVZ3dlRSWjRSTTRsODRCcXBkM2orY1Yx?=
 =?utf-8?B?dzVGc0U1TWhMZnBCZlUxYjVUUE9hZWI4aG41Y2Y2TDZJam16TzhEaTk5alpW?=
 =?utf-8?B?UXpGOFJob0Z3cHhoL3dDQ05LUjVpTmlBWW5PMWQ5Umkwb05JeS9MU0JQMUtN?=
 =?utf-8?B?SU52dzRXT2tZKzJYVkFMdm84L015VlhmdVh4WjYrcHpPMlE2cW1FcGd0NUJS?=
 =?utf-8?B?d1BrNFlOUzV0eHZxdE0rZFBWVVh6NVRSUWh5eGdGZ0FpRStjS3I3SmFPR0lj?=
 =?utf-8?B?NlhXQU1pZ290bDc5cDZHdjZPNC9QcWozdkJuVjd2T2VIOTdhVGoxT1pBa0I1?=
 =?utf-8?Q?p/lePVin4sAciH3vdI5E1g0=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ebc67dcf-f936-4a57-6f78-08db6c73adf8
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2023 01:07:09.8284 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4KoL0xAPQpUNlnyRFzZkHVNE7Bh5tjpIVqlcQ+UYpuKA/Lk/iUSjMshYxXzbBs6Ho5Hxe153XGBDX3RrR/0EcUOUn60oNkXMFHM/UCxRSeg0vfG9eikjSXfcCa0kzerY
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8123
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686704834; x=1718240834;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=db3H6y2ByimchMs0+IwhNE001hJFHHYjvGCz6H6XG80=;
 b=OYvHQbYxWmHkQKojyiSGBNM9RS2/q+0OC928c3BIxd/HNLcoCSuMNQFE
 AzICBnfpZYG0AdgrNeVT8AXcjVHaGuZuQi8Jhw/T+gEK1ua9CWDSYriZF
 z5hQuNWtxAJVD+62rY+kMltIF0MgK8p6z3+vMpIdFE7d0PDSjHykFMc9Q
 WCakru8NI1niyNFMb8PKtGgLk0Ap4kYxDoQ52J294LuSpLYF4ecLeJRKE
 uFAu9YkqzteY+p6tvSReL6FBg2TwxX/vrgJc+lixgPSd0e+kNVm83tNev
 XgBFVqvEsfyZ8UVL+cIQQnsa7RLjEcLZrslAAeTsKKdXrYxxTcgV58yR5
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OYvHQbYx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] igc: Add
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
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogVmxhZGltaXIgT2x0ZWFu
IDx2bGFkaW1pci5vbHRlYW5AbnhwLmNvbT4NCj4gU2VudDogVHVlc2RheSwgMTMgSnVuZSwgMjAy
MyAxMTo0MSBQTQ0KPiBUbzogWnVsa2lmbGksIE11aGFtbWFkIEh1c2FpbmkgPG11aGFtbWFkLmh1
c2FpbmkuenVsa2lmbGlAaW50ZWwuY29tPg0KPiBDYzogaW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5v
cmc7IEdvbWVzLCBWaW5pY2l1cyA8dmluaWNpdXMuZ29tZXNAaW50ZWwuY29tPjsNCj4gTmVmdGlu
LCBTYXNoYSA8c2FzaGEubmVmdGluQGludGVsLmNvbT47IHRlZS5taW4udGFuQGxpbnV4LmludGVs
LmNvbTsNCj4gbmFhbWF4Lm1laXJAbGludXguaW50ZWwuY29tOyBOZ3V5ZW4sIEFudGhvbnkgTA0K
PiA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggaXds
LW5ldCB2M10gaWdjOiBBZGQgVHJhbnNtaXNzaW9uT3ZlcnJ1biBjb3VudGVyDQo+IA0KPiBPbiBU
dWUsIEp1biAxMywgMjAyMyBhdCAwMzozODo1NFBNICswMDAwLCBadWxraWZsaSwgTXVoYW1tYWQg
SHVzYWluaQ0KPiB3cm90ZToNCj4gPiBObywgdGhleSBhcmVuJ3QgYXdhcmUgb2YgaXQuIFRoZXkg
d2lsbCBqdXN0IHF1ZXJ5IHRoaXMgY291bnRlciB0bw0KPiA+IGRldGVybWluZSBpZiB0aGUgdmFs
dWUgaGFzIGluY3JlYXNlZCBvciBub3QuIFRoZSB0ZXN0IHBsYW4gZG9lcyBub3QgcmVseSBlbnRp
cmVseQ0KPiBvbiB0aGUgY291bnRlci4NCj4gPiBPbiB0aGUgcmVjZWl2ZSBzaWRlLCBpdCB3aWxs
IHZhbGlkYXRlIGFsbCBmcmFtZXMgZm9yIHRoZSB0cmFmZmljIGNsYXNzIGludm9sdmVkLg0KPiA+
IEFueSB0cmFuc21pdHRlZCBmcmFtZSB0aGF0IGlzIG5vdCByZWNlaXZlZCBvciBhbnkgb2YgdGhl
IHJlY2VpdmVkDQo+ID4gZnJhbWUgZG9lcyBub3QgZnVsZmlsIHRoZSBmcmFtZUVuZFRpbWUgY3Jp
dGVyaWEgd2lsbCBjYXVzZSB0aGUgdGVzdA0KPiA+IHBsYW4gdG8gZmFpbCBiZWZvcmUgcmVhZGlu
ZyB0aGUgb3ZlcnJ1biBjb3VudGVyIGFnYWluLiBTaW5jZSBvdXIgSFcNCj4gPiB3aXRoIFNUUklD
VF9FTkQgYml0IGFibGUgdG8gZnVsZmlsbCB0aGUgY3JpdGVyaWEsIHdlIGNhbiBhc3N1bWUgdGhh
dCBDb3VudGVyICIwIg0KPiBpcyB2YWxpZCBoZXJlLg0KPiA+DQo+ID4gVW5sZXNzIEhXIGZhaWxz
IHRvIG1lZXQgdGhlIGZyYW1FbmR0aW1lIGNyaXRlcmlhICBhbmQgcmVwb3J0cyBhICIwIiB2YWx1
ZS4uLg0KPiA+IEhvd2V2ZXIsIGluIHRoaXMgc2NlbmFyaW8sIGl0IHdpbGwgZXZlbnR1YWxseSBm
YWlsIHRoZSB0ZXN0IHBsYW4uDQo+IA0KPiBPaywgSSB0YWtlIGJhY2sgdGhpcyBvYmplY3Rpb24g
dGhlbiwgb25seSB0aGUgb3RoZXIgb25lIHJlbWFpbnMgaW4gdGhhdCBjYXNlLCB3aXRoDQo+IHVu
bmVjZXNzYXJpbHkga2VlcGluZyB0aGlzIGNvbnN0YW50IGNvdW50ZXIgaW4gdGhlIGRyaXZlcidz
IHJpbmcgZGF0YSBzdHJ1Y3R1cmVzLg0KDQpTdXJlLiBJIHdpbGwgcmVtb3ZlIHRoYXQgb25lIGFu
ZCByZXNlbmQgYWdhaW4uIA0KVGhhbmtzIPCfmIoNCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwt
d2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
