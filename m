Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 151A880DCBE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Dec 2023 22:16:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9DA7E41A4C;
	Mon, 11 Dec 2023 21:16:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9DA7E41A4C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702329362;
	bh=oZ7LNQeeM21iFqAWmOdkVZ/d6ElpdDAjtY/KefA+KPE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XQnACbye9kggBVE4hmeeP6mqvy6LtJshIM4vyV5Z+7XNG7auoNCHfxx2/64YLAUmy
	 W2lm2wZp+Gq2Cg1k6u4PE1IWZeNNIQtMCOE0HKidMbdoHgIfaIlrYr6DW0DZ9szxEc
	 9p4L2HZGO1pZBnGlMqEH8wqy17Nfo95XP0bLu1+hTKpJlrT47DsrqwR1DjRu8ONDzg
	 YZdCydjf7YwilZztj+nvwTFr+2xEBuL6O0UIu4OVtqe8v8TJ2kDITd+khoKW+8yz9c
	 I4U9+rUjKyZcpNLIu3T9yVjhd5y8Y+pUrlbN/9aeqWx8YU9IEaojD/foQb4B0FxMF7
	 wIfdDjcpow8Cw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uPQQDfDzZDOb; Mon, 11 Dec 2023 21:16:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 318AD4014B;
	Mon, 11 Dec 2023 21:16:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 318AD4014B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 12F791BF3D1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Dec 2023 21:15:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EAE6581770
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Dec 2023 21:15:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EAE6581770
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6hhczinJ9n0g for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Dec 2023 21:15:55 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3BA2B8176E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Dec 2023 21:15:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3BA2B8176E
X-IronPort-AV: E=McAfee;i="6600,9927,10921"; a="398559304"
X-IronPort-AV: E=Sophos;i="6.04,268,1695711600"; d="scan'208";a="398559304"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2023 13:15:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10921"; a="891310761"
X-IronPort-AV: E=Sophos;i="6.04,268,1695711600"; d="scan'208";a="891310761"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Dec 2023 13:15:16 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 11 Dec 2023 13:15:13 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 11 Dec 2023 13:15:13 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 11 Dec 2023 13:15:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Jv2YotBk+65YWVK7Ha3mSv61kMXkQoQ8Qg1i5NeTUmudRRYWCZKzkInj6JwgLUzkJAkyhisOFRG5lqkYpkOlxhUoEVoTW68hjsUFX8WZEG5pVWOWXoQoGcufp78zySIjKBmU5d2M2kjdLeruOVeLEUBqDsts1rJoffuM28JltkGf4jThIcbrAWQvaAnjf4HObiooxXZXh4UKBfRkc/i8Hz20vHP6L0hRMtc17jK28mIILjqI1H/Nuhc8zn0/+jzqR9qaZibM2/snrDqMYm9I32PKgz7n/XxKtdrJaqEByzpev1hLg/ApmACeqtlCv1KnbKosnYOav60g6w/EiYN+sA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Hb2Sp4Tp7QoSiKN1sh+kZwsb/U7uqHmLMNXDxzP7gRM=;
 b=OQ0d9h0Xx0QggTeNzTEWScz2FP74buJevTvN3BZz7oQXA5mHUszqVK38B2xuiRU3AnpvA/63zMeLib0XvHLHxYziwOTVQ8CaiHFoVsfyWCOpOXZJ/GVZdnS+D6RZQc0Rcpn2fJnU7DJoBpkjTmmgpacqLSFDwBIOpwgeskvJoukUgmxqIga/t79Q9YWKj/ndxGMZqMtNh63YoNRHoGXx91mV7Q8BWICWBNbQ2RhsyJaXB8fYagwcuJ45VEt7OA5udv2HDDTO1IdFlVDprpr1TSI+CERoPdofuWTP9RKhTQpNn6y16NIt7MtB7PD6oibxtJ18aaGEuvM24cYqsqxefg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW5PR11MB5811.namprd11.prod.outlook.com (2603:10b6:303:198::18)
 by CH3PR11MB8153.namprd11.prod.outlook.com (2603:10b6:610:163::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.32; Mon, 11 Dec
 2023 21:15:10 +0000
Received: from MW5PR11MB5811.namprd11.prod.outlook.com
 ([fe80::f6f9:943e:b38e:70de]) by MW5PR11MB5811.namprd11.prod.outlook.com
 ([fe80::f6f9:943e:b38e:70de%4]) with mapi id 15.20.7068.031; Mon, 11 Dec 2023
 21:15:09 +0000
From: "Ertman, David M" <david.m.ertman@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, Jay Vosburgh
 <jay.vosburgh@canonical.com>
Thread-Topic: [PATCH iwl-next] ice: alter feature support check for SRIOV and
 LAG
Thread-Index: AQHaKToUXVlzIDYaGEyh4eN8rXhk7rCf5awAgAAR/LCAABMQAIAAA/nwgASMUwCAAACNIA==
Date: Mon, 11 Dec 2023 21:15:09 +0000
Message-ID: <MW5PR11MB5811AD59A4135F5783AB9E93DD8FA@MW5PR11MB5811.namprd11.prod.outlook.com>
References: <20231207182158.2199799-1-david.m.ertman@intel.com>
 <bca6d80f-21de-f6dd-7b86-3daa867323e1@intel.com>
 <MW5PR11MB581150E2535B00AD04A37913DD8AA@MW5PR11MB5811.namprd11.prod.outlook.com>
 <21390.1702078254@famine>
 <MW5PR11MB58115CC6EA72622E87CF586EDD8AA@MW5PR11MB5811.namprd11.prod.outlook.com>
 <c74dd960-7fbf-2c05-5ee3-7e9839b238a9@intel.com>
In-Reply-To: <c74dd960-7fbf-2c05-5ee3-7e9839b238a9@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW5PR11MB5811:EE_|CH3PR11MB8153:EE_
x-ms-office365-filtering-correlation-id: dff0eeab-d33f-483b-ca0e-08dbfa8e41cf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hRKPYYOiq6Syq7PyvO1V+g7C0QD9VymSxcqCV2LVoSy4Sr8+NiT8hJ8d8RMqekl72BcgXfy0JzRHta8DCISAl8flO7vn+iLWGa2nVq8wE7XCYCX/w68aDyILnCBvDuUmKXLDd7o/AUEkr4ZTvy6IZjcAQ9+CMit1xxuSKPKOKSZe5K46zbK4UePonJis1NzfCCip2RgTUwYMIzGHkd5H7riwo5m9koPxdSNxDbGquo7KhdT/a6E0HFal9mybF/7nIqgEvXk56PJ/c4iACHgJlsatCaEiJs6/rFwZ4L5dqQZxV20uFjq0d2emeh7LYBEINug42Hjy8wfwPNuxuhWk5K08lz8N2KPpxAvvBwh7+eL3Du5UqAf4I8PfHRgi+NmtdK4SbUJszR9IEt2cl7zPdgaLKYhmyeQ2NrXwNB/KVn4plFoof2eQV7LEM5WY+Z2Pv5COjCIHIwIfuA+qODNoWAPqQXj6qvcTo/BmZXo1wt1r3dB+I7tO9KFfJN1Tr0uN2eKcf0oLp5BqMqdp/hiCog8F1vzKmWgh1TOVX2Y/80kzo9HULoosQjjBPnZSRJ+XlOtwqljHKYiqQfbhp6Ogr5BM0kZdwgCKBtXmJRYOeX2FE133+V8iV2vRIf/3c+dp
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR11MB5811.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(346002)(366004)(396003)(376002)(136003)(230922051799003)(451199024)(1800799012)(64100799003)(186009)(9686003)(52536014)(53546011)(6506007)(5660300002)(26005)(33656002)(55016003)(38070700009)(4744005)(66946007)(64756008)(66476007)(66556008)(76116006)(54906003)(66446008)(2906002)(83380400001)(82960400001)(41300700001)(478600001)(7696005)(86362001)(8936002)(8676002)(4326008)(122000001)(110136005)(316002)(38100700002)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?R25ITTdCMS9pTERXaHIvZ0NxOEd3WWxOOTIyY21uM3M3V2xlUTUvWDI5NC9n?=
 =?utf-8?B?OVpOaDByUzNsTlN6Si9ScStNUmhkcGRpYTRsT3JBOTNEUldDNTk5V0UzRUhR?=
 =?utf-8?B?UGV6VGNSK2oxdEpMUzRGNGR3b2pmYXkwalZiMHBCaW9ZQzU3SkZtcnlaeUtR?=
 =?utf-8?B?eWQxckYzU1pvRHRlbjFmdTFKek9WRHlUMEdLYVBtblByd3YrcEU2RFhTZTQ0?=
 =?utf-8?B?ZVMxYllFMHpYclF6UHY3ZG9XSlFlWmtjU0lZZjhKbFRMN1MvZ1ViaUZTNm9M?=
 =?utf-8?B?SkEvczNCZ2lFYkxnQjZ5UUZERTBoQzQ1Q09WdDVuZUhtMnhkSmhGbzlQZHd4?=
 =?utf-8?B?eHpQWWlVWC9RLzkwajd3ZThGL3NyOHR5Zjl3c1J1TmhTMEFaa3hYWHZ1VjI1?=
 =?utf-8?B?c0srbEp2QWZ0Q21SQ0tjQmRSdHdhSnJKL0V3NGxTTXYyTnUyUSswL0xjdENj?=
 =?utf-8?B?YWw1a0ZwSEcyZFFWb0tuODRsZDV1R0tDazRsYjZBZU5rZDdSWDRFTjBhNGZJ?=
 =?utf-8?B?WUVkVzNXRUxHNHdobWZpTFJVR3VxN29hYjVDclJJZjAzWkVMZituUmc3UFRj?=
 =?utf-8?B?ZnJtRFk2d3JDSDNKUFV3Q1p4QzdBTU9sMXNoY1NJZStjdmc1Y0cycnhYZ092?=
 =?utf-8?B?cTZRaGJ1U3VMbFl3RmRSZlpWRDBGVHVuTDV6U21KSnE1UVJuTmx4SmZVVzc0?=
 =?utf-8?B?RzJicGZzUURiakNsMGg2UGlsdGIvL3h0TGxZTmQ3cSsyZEVhaWxQakRDckdo?=
 =?utf-8?B?KzVTNmQ5Y1lmWDRScnFNRXJnZmpsVGhkc1BMVFZOSHFIczFTNmllYU1OQ1hT?=
 =?utf-8?B?bWtJemhyT2swT09ic25JSGQwcnZYbFV0c3QzeFJUQU9RUHExdzBlaytqRFhY?=
 =?utf-8?B?aHlJK0ZNMzRucXNGdE92UjNnQWJaTWVNZ1hMUEhOOFNQcExDOGVRck5CYVZC?=
 =?utf-8?B?NGs3c1B2T28xN2U1cUNFalhmTmtSUXhtMWtCcUg2WDNOOHUvRDhCOGphUUtD?=
 =?utf-8?B?QTRFR3g4dXRLY2lCcUtzQXF4MXVaUVRhS3hXWFJrSENOMkthNXhYWHh2ZjhC?=
 =?utf-8?B?VDYvM1VpYXdZYWt6L3JaMmNBQjQ2TlgwbWxWZk1Pay9ZeDI2dVMvbmFyTmhY?=
 =?utf-8?B?UjJoU0FnekxkbHVWL3BvVkRNZjM3TGprNHFjZnl0NFpVMjFpVFdwZG5BSlNJ?=
 =?utf-8?B?UnNmU0QzeVBKOEpPR0pBdDlONnpuK1l4T3RkOTZsa0RsaTRrR0w0YnNIWHZi?=
 =?utf-8?B?c3U0ZjI4ZUtkWk9qL1RwT0x6RUJRYjZ1Wlg5cWZ4RDJZMjNla3NkaDB4RWVp?=
 =?utf-8?B?Q0FSY0tPTDJQZjJQYkpjbi91T2t5S3UxOFVsV2JJbGhvenR3ei9NNlFYV29n?=
 =?utf-8?B?SFRlc2RNRkpkbUcrKytLNDBzY3BYMzFLK0Y5N0Y2d2o0ZzN2VkZ0R2pwenkv?=
 =?utf-8?B?elp0RFlHdzZCSkIxcE1RcGJheDNqOHFFeW95Mmx4Y2kyczkzNjFUM0ErK3ls?=
 =?utf-8?B?emNxa3B2VGRGUmlWalo5bW9SUW5vdXQ2Mzd0NHFUeVlpNi9HMDArWmZ3bE9h?=
 =?utf-8?B?cCtPZVU4bGlBMVNjVEhaTnBOZklHdk9zdEphQkN4bDNJWnhZbjgyWWNXejFB?=
 =?utf-8?B?V0hsaUgvNldtN3EveTdrckt2Zyt4aXRvVWE4RTZQQncxUFFPZi9nNWtmWldV?=
 =?utf-8?B?TWVBZGh3UHdVMExVaTV3VHM1dXNQK3E3dndLRXU2cUd0MFhaY0pneEFEWlVP?=
 =?utf-8?B?M0hXbGVVaFNGL3QwOFRpWm9SRVAvRk1DTThWMTJOTUpJNXBnUHFMQkFWYTZG?=
 =?utf-8?B?cFQ1cXJlVXRQL2haU2QxeS9CWVc0WGk5cS8zdHpFMzk1bFhJRE5rYWF0N2px?=
 =?utf-8?B?Q2hhM0dBUHNOb2VoUE1qNk5sRjY2cGlBVlFJdmxoK0JGalFPWDdzZWhzQ1F5?=
 =?utf-8?B?VGxtT1d5ZTdHeTFWMVlFTjVQTy9GM2QzNGhCODFuNlp6eDhwWGl6cUk3eGVS?=
 =?utf-8?B?b2JHcVYyTmNpM0lpbWFMRVlVbGl1TWtNQk5vVE9Fa2hXWElGMExScmZXNUQ1?=
 =?utf-8?B?SWR0WjhLZkxwaWtqM0dFUDNvUTJZSDBBcE4xV09Kc1ZpRmFseDRRYm5VZFYy?=
 =?utf-8?Q?TSwBJXTnq46NB51w/7Rls63Qs?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW5PR11MB5811.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dff0eeab-d33f-483b-ca0e-08dbfa8e41cf
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Dec 2023 21:15:09.8891 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TPehNnkI7aoMTfYyHtuIy9BjkCJ8o+TXBX57qU1yVgfB0RrDIzhwHl3IMDHGadZ89Y6ZGr49DdjR+YJRXW8lg10TNA1PtaKYn9e9d0+SQDk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8153
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702329355; x=1733865355;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Hb2Sp4Tp7QoSiKN1sh+kZwsb/U7uqHmLMNXDxzP7gRM=;
 b=EDfMaZMBtOpHYqh9JQlDyG56HDZyYGf8xXIIo6kZICHei3jDLp5yy4t3
 HzL7AjBD6us80nKxgi9FcLpBG9+MIRAbx8r5JDNJhwtgAJchRQ0EoFlT7
 H9/cUSd7OZx4TEOYipEgJtoHI3tkFuJe2uxSgZCcIAQ5hAbdFasI0tzgp
 K71+SKASn04nuUshB8/OLxkckhZHK+1Z1JxUwOK99NItOYZFhXG4DCO0t
 CnZeGQH6+cwMEGwDOtU3X7GCp/d5pUEzAmtV9XmAazBkh8aKjsEs6G5V/
 I1BWLHZolpxGQH8/Pj4YMJiVZO1gU5Ex+NdIoCNpP49hAPBDjyH+79hN1
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EDfMaZMB
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: alter feature support
 check for SRIOV and LAG
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
Cc: Robert Malz <robert.malz@canonical.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Heitor Alves de Siqueira <heitor.de.siqueira@canonical.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Brandeburg, Jesse" <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Sent: Monday, December 11, 2023 1:12 PM
> To: Ertman, David M <david.m.ertman@intel.com>; Jay Vosburgh
> <jay.vosburgh@canonical.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Brandeburg,
> Jesse <jesse.brandeburg@intel.com>; Robert Malz
> <robert.malz@canonical.com>; Heitor Alves de Siqueira
> <heitor.de.siqueira@canonical.com>
> Subject: Re: [PATCH iwl-next] ice: alter feature support check for SRIOV and
> LAG
> 
> On 12/8/2023 3:46 PM, Ertman, David M wrote:
> >
> >  From your description, it is plausibly related to this patch.  Looks like we
> should also
> > send this to iwl-net.
> >
> > Tony, do you need me to do anything to facilitate this?
> 
> This applies ok to iwl-net so we're ok in that regards. I do need an
> accompanying Fixes for net though; I believe it's bb52f42acef6 ("ice:
> Add driver support for firmware changes for LAG")?
> 
> Thanks,
> Tony

Sending out v2 - thanks for the help Tony!

DaveE
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
