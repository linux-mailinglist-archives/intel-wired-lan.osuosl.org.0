Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C529376DF03
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Aug 2023 05:29:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5B316612F1;
	Thu,  3 Aug 2023 03:29:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5B316612F1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691033364;
	bh=O0KTBCgAFIVoXHoHDPkqijDOjasVDByu+WIOqMOVkxc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=B8NNZi30aNdOwk9O2LVGIGg2/B9TP7e9eX6bzoM9hpA0C27MhvFJO0c/IUYdlQ6U8
	 67JmgTNJ9x/OeiVQBfC0OojJV+Xv2Vnxuuvug4CPZCGyoR1YNE+cn/U3lX2Onu8mq9
	 KSwIFpJXNCC1veBO5gpR+kbZdt/sGIpAM4Xuw3TAeNURuigKDN+DKxQrOlZqGM3DIO
	 HpsMoLfgFzZlVpeSv0Eb6c3z+FVUJlcbZvhE+VMp9oiGGK/Z3BkAtREIyFBIrq/8Rz
	 xQMNhMRi/Ye5u5EqEumK1n0KP9sdB/GSThBq5rnaJBJtLmuoUDaKJhfZ6rrlEkbg7y
	 j3YfQ3tZ1FmlQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KefDLFg1XBaV; Thu,  3 Aug 2023 03:29:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3727E612E9;
	Thu,  3 Aug 2023 03:29:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3727E612E9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9836D1BF38C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Aug 2023 03:29:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EAAE740976
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Aug 2023 03:28:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EAAE740976
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ubuJxUz2_cEH for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Aug 2023 03:28:28 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4B7A840249
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Aug 2023 03:28:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4B7A840249
X-IronPort-AV: E=McAfee;i="6600,9927,10790"; a="349355060"
X-IronPort-AV: E=Sophos;i="6.01,251,1684825200"; d="scan'208";a="349355060"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2023 20:28:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10790"; a="732586125"
X-IronPort-AV: E=Sophos;i="6.01,251,1684825200"; d="scan'208";a="732586125"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP; 02 Aug 2023 20:28:27 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 2 Aug 2023 20:28:27 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 2 Aug 2023 20:28:26 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 2 Aug 2023 20:28:26 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 2 Aug 2023 20:28:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h0RUiVULwLLDydB8K3+wpUuz1qe4Y407C+IYSt+qPWw+WTL3zZR4g8tl5S4UEZByZP/8n4MzYsArgkhm2pd9iHq24dQZ+iNO9GXQb1u/NEWHg/aEi0Yy0ho68SLYpeCuCHWAgLrlR5iQaNnH6L06xWAsbzhugKX1gvoNn866ivgm7Yp5i9Xlc7mLSgy9WDplTl7RGWiBApCnQ5SrAUa5zazuhiQy6TIXSlhKxFfB+JkX37qIBbY/0PCYvmcuSLJFhQ9ZFFehR0hqgZTv2xlauwsS2cT8nButIk76Jm6Mk1gCtu71QiZ3MQXqdTOFrNJS4fHhxA12vuT3/G7rIN4vmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q/jYQO9KpDqJ1whvw5VtkOOlQVnK09Fa00I69rw2YWE=;
 b=DCqTrxWl/MkEnPYV0hYo0Vf9qxed2w2E7VcCuPmK2viBKWfdzTlNEHP4c3asFND2RAwlpmx8TuaG6qi+FPTppK3dldvIR1+8R0OyPirYYMbqohyi8U5wGMXJPV6gZHiaqCvtOWk24DLIpdZeKJEDay7wSmZzvhs3bnloU1cxnr17hWEpObIsNdqPY8wllNiLpyXQsxH+N0wt3ajV0CXdGcsyU/si1IfnRfhI63g4rG6+n+89C6oEL6jbPSSfjTjybR1GxZZxYuOHgbJyYpyAOo6+r4vtD67+o42dMrzLfbMmHA+E8+qxgt+AmwM15pxg4xEGii0F+YObNxZSufjgvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3723.namprd11.prod.outlook.com (2603:10b6:5:13f::25)
 by SJ0PR11MB5216.namprd11.prod.outlook.com (2603:10b6:a03:2db::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.45; Thu, 3 Aug
 2023 03:28:23 +0000
Received: from DM6PR11MB3723.namprd11.prod.outlook.com
 ([fe80::1e9e:bb95:66b2:e3f1]) by DM6PR11MB3723.namprd11.prod.outlook.com
 ([fe80::1e9e:bb95:66b2:e3f1%4]) with mapi id 15.20.6631.046; Thu, 3 Aug 2023
 03:28:23 +0000
From: "Guo, Junfeng" <junfeng.guo@intel.com>
To: ivecera <ivecera@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 03/15] ice: init metainit
 table for parser
Thread-Index: AQHZl3FPyR95ttSOYka2I8cWpZi/X6/JBSYAgA3bXKCAAKSvgIAAwIrg
Date: Thu, 3 Aug 2023 03:28:23 +0000
Message-ID: <DM6PR11MB3723E7B039CF055D139B009EE708A@DM6PR11MB3723.namprd11.prod.outlook.com>
References: <20230605054641.2865142-1-junfeng.guo@intel.com>
 <20230605054641.2865142-4-junfeng.guo@intel.com>
 <1a1992ef-40c8-ce3d-1fd2-fd223eb14955@redhat.com>
 <DM6PR11MB37232D5532198463659809BFE70BA@DM6PR11MB3723.namprd11.prod.outlook.com>
 <eb259bec-0cf7-4ed5-f041-df38cc691729@redhat.com>
In-Reply-To: <eb259bec-0cf7-4ed5-f041-df38cc691729@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3723:EE_|SJ0PR11MB5216:EE_
x-ms-office365-filtering-correlation-id: 8148f5f2-0543-48d8-6ea1-08db93d1b148
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: W6gAF5S9OjD6y/lcXDASTYVd3OmlrbsnCuVKhZd+uJS10vs/bhW0SNHYyIMGdf7YxgA0rU1mO5oRtbSbYhVnaPbhvkdYE9JCXQ6rgABCz/Oib6BLoDGh7SWryjk1LQlt0XbZTF+3V6xDEqj3V7xMY456Pp/nKrBTdgUhWD3CkLCM9MFmWBOD5iKkHyrUccC61sCCqMkg81JUDykmRUCBYvd8u0VTwLZ6dFJa8PPtbZw2aG463zbJafmD5iKB0pH9G4/saqOixMgWWtXNReQzcsIXJIbCaw8J4Ebm4fraHR4SuvnU1RVN1482LmoJz87tvtSsOsz29Inb23m1La0bYVCmYkvMrJSKiKXPvXnsKRA3fQ7PuL9pzmT7BI/JNaDlAoMEBeL+jEIj+XWa68WGzqrR3ut3FUnBDLTZD1BICrkKSg3zNxzTCkz3xukluqzwaEPBfqXG7ahtLLZpiV0WpWwfGFtPDsA3FXJz83RVc2XAlNUdV+cYz/uKzg2CvlTyCmahuNszv+MQ9MZfD4CdQoV6PRKMQ6QlOMeJV9PMbV3CPHOWJtqIlM9RmSM4G38rD/PVprSZ0NjgGnccJmknDLOCye2P19gE3nA0/4l24t5JbXVgANmN2RFi4AtbhzX/
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3723.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(136003)(376002)(346002)(39860400002)(396003)(451199021)(66946007)(64756008)(86362001)(66446008)(66476007)(66556008)(7696005)(71200400001)(52536014)(76116006)(9686003)(2906002)(4326008)(54906003)(110136005)(55016003)(33656002)(478600001)(83380400001)(38100700002)(41300700001)(122000001)(82960400001)(5660300002)(8676002)(8936002)(26005)(53546011)(38070700005)(6506007)(186003)(316002)(30864003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bXRmeEw5bm5ycG42QndKM285a0FOV0poV1JBdDlWSGpHdGcvNlRQNmJmMTc0?=
 =?utf-8?B?bTFBQm5QQ0xOTW9oWU9ncGJJNkFvVUNZQXFnY081QUtXRU9CeFdCeSs0VWp4?=
 =?utf-8?B?WGRhamg0T1pSMWFQUU1CcHpHZ3FudmZVcGgybEE0QklWSlNzMW54eUpMbGpB?=
 =?utf-8?B?RWhTY3RkZGRaZVVQeGxTM3lQc0xpZkNpeUUzVjdFdmxaTWx0ajRkbXUvSlU4?=
 =?utf-8?B?OG1YVlJLZnZzVWp3ZElFbi9LK1k0a282Qm9YNzQzaGhLRkdTNmJ3QWVGcWtB?=
 =?utf-8?B?cXVYU1MzS29udjlkQTg4TElKSHlRZmpsSTUxajJEYzZLZkhkbE43bmhnUWpS?=
 =?utf-8?B?SGxRendmSXprSUs3QnA4ei9HMldvUnFvd0JSSGxZK2YvUE12amVDMnJzOUZP?=
 =?utf-8?B?bjhXWGRxSUxRQk1Da3Fya25ZUWdteGVTa1JhVGlDUXZBZGJKTWxMV2VwcWFN?=
 =?utf-8?B?MG9pQTJHajRmVGQ1d1gyWmtKZXJnQm5qRlg2RjJCZEFjdmdlSmZXc0JKWnhE?=
 =?utf-8?B?RUtOZmxaQnZ1Q0NjMjA0d0xQSXhtT2o2MG9pZXBZUStPYXpRMHJxY3YvdjNI?=
 =?utf-8?B?NWxmdCsyY1VFSEs4VFBSU3A5d3N5VHd0Y0grdEpWQzZOdFp3VXIyV2NiYWsr?=
 =?utf-8?B?QVc1ZkVMdXZTU1hBNjY2TkdVbGMvelROZ0NMVmltR3RWdjBIOENFZExJNmJt?=
 =?utf-8?B?Q3c5UGM2V0x1MlBXNTI2NmFRU3B3S3haRDlKQTU2UTJXLzBweHlWcGdGK1dk?=
 =?utf-8?B?ZnRkR25RTjdxQm9uWXhCM3lCbDM2QmNHQUxJYTQxbFEzZ25nUVE0aHZydk00?=
 =?utf-8?B?ZWVsanVCWFF2dkI1Y3ljenhxSXdHVGpNVDZ0ZExBUGwyN1JnUFUzMXZteVhG?=
 =?utf-8?B?am1IRTRmdWRMbjRuaFN1RlFHOU1neU5KQXVMOUJqOVFlb2xjdjVtRlFYQ2lT?=
 =?utf-8?B?T0lkUXFnME1udFVLcTVVWS9NVlVqZjZoR1NkN3N3aUFRbldoaXVLUUQrNEVE?=
 =?utf-8?B?VTExdmpXSVVYYUMzL1ZJRGhPUmlCMGNBNTJMRjV0MHNYdXh0MlgvR0JJNDds?=
 =?utf-8?B?UmxNQVVSZGZnMUdJVWZWNjhjbFo5ZnpSb3ROdjEzaFhnQWJqQjdtRmVmWmVH?=
 =?utf-8?B?eEdJN3UvaENVaTBQak1yUXhsbDh4eGVYL0dTbng1L1h2emZRbkM4MThpNFBD?=
 =?utf-8?B?TzE2R3BXMXpFUVhhUGNtNHYwalVBYk5Qb1UyUVRJY21ibTR5VEdKSTFsQ2dR?=
 =?utf-8?B?ZnR0MzRweDVMaGlSUWtpTFIzak8rRGRrbFVaaWMxbms2Ny9TQUEwUjREK0g0?=
 =?utf-8?B?TjU2MG92K3Z0TGsyTjdPVThmRm9COWt0eEtuU00xQlN2aUdCQXVYeldkU2Rw?=
 =?utf-8?B?VlR3NElVWlpmNzhNRWRjZXRzeXJOT0tQOFNOakZUVFl0RzdZSEVLeUpjOER6?=
 =?utf-8?B?WEpGOEJVRHBqUDRDMGhXTUxSRWNaSWdEMkpIeUd4dW1rU1h2blc4WXd6ejJ4?=
 =?utf-8?B?eG0yd3NJZGk4eTg1QUhmVkw5bWdRWlNOZmVBSGFCclpXOWo0dU5DcjFRSEhS?=
 =?utf-8?B?eXVoOXBsT1RxNmlvaVAxdDltc1gwb0xQS0REVTVIekNXK0d5M1lLRW1WbW9P?=
 =?utf-8?B?bndrR3NwZmVEYTkvbDN3NC9PY0k2aVhJZGI0em0zNnpBcWVIQk9yQWM3aXlH?=
 =?utf-8?B?Wk9zeUdaQ25WckZNS0FmVC94MUEwUGlLbk5QYkZRTWVDVXNUNnVTdmEyRmts?=
 =?utf-8?B?OGJRemxDVFBhRWhWc29EQ1pWTFFUL0JEZDRkM1FmZjNOS2VZb3BYeWo3VkFl?=
 =?utf-8?B?K2p2V1lCRnZZS3ZtalZTWDMxRTViRHUyYjMvZUhVaUdBZWllN0dPNXpmcUZp?=
 =?utf-8?B?RFdmKzdUMC9OemlnM0NSZDhGanpSTE5VR0VQYzdUdk5EWVRRN2hnRUs5UmNQ?=
 =?utf-8?B?TzNKQWNna3ZhTHBWOUVkL0lSL1FHelQ2MmFWWkVCOFcyOEJIemJvR3hwWWpL?=
 =?utf-8?B?Nnd1RHVsVlNxNG91TzlxU3dCMGlBRG9MbWUrK0FJbUY1cTE1RGNacVpqMW1n?=
 =?utf-8?B?amVlTEZsMWthUlZHdEplRFllS29LcUJIdDR2ZUVqYTVqeE56WGVwS3FiNVI3?=
 =?utf-8?Q?WLdtDFYVtVJm6aJpHC5KP/TaS?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3723.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8148f5f2-0543-48d8-6ea1-08db93d1b148
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Aug 2023 03:28:23.4751 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IGLs/kd4V8uYe5HAyjpO5j9A82mxMsqyOpbWRfltbMFVIhswrgEv2AxufSlVHV0STzPbOBCBeCgnjrktJWW1cw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5216
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691033308; x=1722569308;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=q/jYQO9KpDqJ1whvw5VtkOOlQVnK09Fa00I69rw2YWE=;
 b=P3GGWi3/O/Gd8fneqm+696rTiv65bY0/K6hYYf4lccO5X2Km/ubiDqds
 81+uHEsiRTP0qC1DWsrTxigHYcpJHHUBP4s3HS1NdkhEn8FSrgso1kZ97
 LGDLj/IjLIIbiI5duVUZ2ssYR9A7yZ0Kj+gcNih93gyxMm34SNu/ab+lm
 jvEzqpcSGxYrqiinw7vRlFqrFjLhofWeKny70AK28K6HX8uQErsSIz2it
 Stye0aWWzSiVt2sjDH4YV2Aeq2md5gjnOnZNmRCjxWw8iKAvrVJReod/Y
 IcjXTbW4XHp4y8n6iMM4Jbi6FIzu/3PpD6tjOkUbopgUoTmfPvIhiSu1H
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=P3GGWi3/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 03/15] ice: init metainit
 table for parser
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
Cc: "Zhang, Qi Z" <qi.z.zhang@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Ivan Vecera <ivecera@redhat.com>
> Sent: Wednesday, August 2, 2023 23:57
> To: Guo, Junfeng <junfeng.guo@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Cc: Zhang, Qi Z <qi.z.zhang@intel.com>; mschmidt
> <mschmidt@redhat.com>; poros <poros@redhat.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 03/15] ice: init metainit
> table for parser
> 
> 
> 
> On 02. 08. 23 9:56, Guo, Junfeng wrote:
> >
> >
> >> -----Original Message-----
> >> From: Ivan Vecera <ivecera@redhat.com>
> >> Sent: Monday, July 24, 2023 18:32
> >> To: Guo, Junfeng <junfeng.guo@intel.com>; intel-wired-
> >> lan@lists.osuosl.org
> >> Cc: Zhang, Qi Z <qi.z.zhang@intel.com>; mschmidt
> >> <mschmidt@redhat.com>; poros <poros@redhat.com>
> >> Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 03/15] ice: init
> metainit
> >> table for parser
> >>
> >> See inline comments...
> >>
> >> On 05. 06. 23 7:46, Junfeng Guo wrote:
> >>> Parse DDP section ICE_SID_RXPARSER_METADATA_INIT into an array
> of
> >>> struct ice_metainit_item.
> >>>
> >>> Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
> >>> ---
> >>>    drivers/net/ethernet/intel/ice/ice_metainit.c | 155
> >> ++++++++++++++++++
> >>>    drivers/net/ethernet/intel/ice/ice_metainit.h |  45 +++++
> >>>    drivers/net/ethernet/intel/ice/ice_parser.c   |  11 ++
> >>>    drivers/net/ethernet/intel/ice/ice_parser.h   |   2 +
> >>>    .../net/ethernet/intel/ice/ice_parser_util.h  |   1 +
> >>>    5 files changed, 214 insertions(+)
> >>>    create mode 100644 drivers/net/ethernet/intel/ice/ice_metainit.c
> >>>    create mode 100644 drivers/net/ethernet/intel/ice/ice_metainit.h
> >>>
> >>> diff --git a/drivers/net/ethernet/intel/ice/ice_metainit.c
> >> b/drivers/net/ethernet/intel/ice/ice_metainit.c
> >>> new file mode 100644
> >>> index 000000000000..911099a38087
> >>> --- /dev/null
> >>> +++ b/drivers/net/ethernet/intel/ice/ice_metainit.c
> >>> @@ -0,0 +1,155 @@
> >>> +// SPDX-License-Identifier: GPL-2.0
> >>> +/* Copyright (C) 2018-2023 Intel Corporation */
> >>> +
> >>> +#include "ice_common.h"
> >>> +#include "ice_parser_util.h"
> >>> +
> >>> +#define ICE_METAINIT_TABLE_SIZE 16
> >>> +
> >>> +/**
> >>> + * ice_metainit_dump - dump an metainit item info
> >>> + * @hw: pointer to the hardware structure
> >>> + * @item: metainit item to dump
> >>> + */
> >>> +void ice_metainit_dump(struct ice_hw *hw, struct
> ice_metainit_item
> >> *item)
> >>> +{
> >>> +	dev_info(ice_hw_to_dev(hw), "index = %d\n", item->idx);
> >>> +	dev_info(ice_hw_to_dev(hw), "tsr = %d\n", item->tsr);
> >>> +	dev_info(ice_hw_to_dev(hw), "ho = %d\n", item->ho);
> >>> +	dev_info(ice_hw_to_dev(hw), "pc = %d\n", item->pc);
> >>> +	dev_info(ice_hw_to_dev(hw), "pg_rn = %d\n", item->pg_rn);
> >>> +	dev_info(ice_hw_to_dev(hw), "cd = %d\n", item->cd);
> >>> +	dev_info(ice_hw_to_dev(hw), "gpr_a_ctrl = %d\n", item-
> >>> gpr_a_ctrl);
> >>> +	dev_info(ice_hw_to_dev(hw), "gpr_a_data_mdid = %d\n",
> >>> +		 item->gpr_a_data_mdid);
> >>> +	dev_info(ice_hw_to_dev(hw), "gpr_a_data_start = %d\n",
> >>> +		 item->gpr_a_data_start);
> >>> +	dev_info(ice_hw_to_dev(hw), "gpr_a_data_len = %d\n",
> >>> +		 item->gpr_a_data_len);
> >>> +	dev_info(ice_hw_to_dev(hw), "gpr_a_id = %d\n", item-
> >>> gpr_a_id);
> >>> +	dev_info(ice_hw_to_dev(hw), "gpr_b_ctrl = %d\n", item-
> >>> gpr_b_ctrl);
> >>> +	dev_info(ice_hw_to_dev(hw), "gpr_b_data_mdid = %d\n",
> >>> +		 item->gpr_b_data_mdid);
> >>> +	dev_info(ice_hw_to_dev(hw), "gpr_b_data_start = %d\n",
> >>> +		 item->gpr_b_data_start);
> >>> +	dev_info(ice_hw_to_dev(hw), "gpr_b_data_len = %d\n",
> >>> +		 item->gpr_b_data_len);
> >>> +	dev_info(ice_hw_to_dev(hw), "gpr_b_id = %d\n", item-
> >>> gpr_b_id);
> >>> +	dev_info(ice_hw_to_dev(hw), "gpr_c_ctrl = %d\n", item-
> >>> gpr_c_ctrl);
> >>> +	dev_info(ice_hw_to_dev(hw), "gpr_c_data_mdid = %d\n",
> >>> +		 item->gpr_c_data_mdid);
> >>> +	dev_info(ice_hw_to_dev(hw), "gpr_c_data_start = %d\n",
> >>> +		 item->gpr_c_data_start);
> >>> +	dev_info(ice_hw_to_dev(hw), "gpr_c_data_len = %d\n",
> >>> +		 item->gpr_c_data_len);
> >>> +	dev_info(ice_hw_to_dev(hw), "gpr_c_id = %d\n", item->gpr_c_id);
> >>> +	dev_info(ice_hw_to_dev(hw), "gpr_d_ctrl = %d\n", item-
> >>> gpr_d_ctrl);
> >>> +	dev_info(ice_hw_to_dev(hw), "gpr_d_data_mdid = %d\n",
> >>> +		 item->gpr_d_data_mdid);
> >>> +	dev_info(ice_hw_to_dev(hw), "gpr_d_data_start = %d\n",
> >>> +		 item->gpr_d_data_start);
> >>> +	dev_info(ice_hw_to_dev(hw), "gpr_d_data_len = %d\n",
> >>> +		 item->gpr_d_data_len);
> >>> +	dev_info(ice_hw_to_dev(hw), "gpr_d_id = %d\n", item-
> >>> gpr_d_id);
> >>> +	dev_info(ice_hw_to_dev(hw), "flags = 0x%llx\n",
> >>> +		 (unsigned long long)(item->flags));
> >>> +}
> >>> +
> >>> +/** The function parses a 192 bits Metadata Init entry with below
> >> format:
> >>> + *  BIT 0-7:	TCAM Search Key Register (mi->tsr)
> >>> + *  BIT 8-16:	Header Offset (mi->ho)
> >>> + *  BIT 17-24:	Program Counter (mi->pc)
> >>> + *  BIT 25-35:	Parse Graph Root Node (mi->pg_rn)
> >>> + *  BIT 36-38:	Control Domain (mi->cd)
> >>> + *  BIT 39:	GPR_A Data Control (mi->gpr_a_ctrl)
> >>> + *  BIT 40-44:	GPR_A MDID.ID (mi->gpr_a_data_mdid)
> >>> + *  BIT 45-48:	GPR_A MDID.START (mi->gpr_a_data_start)
> >>> + *  BIT 49-53:	GPR_A MDID.LEN (mi->gpr_a_data_len)
> >>> + *  BIT 54-55:	reserved
> >>> + *  BIT 56-59:	GPR_A ID (mi->gpr_a_id)
> >>> + *  BIT 60:	GPR_B Data Control (mi->gpr_b_ctrl)
> >>> + *  BIT 61-65:	GPR_B MDID.ID (mi->gpr_b_data_mdid)
> >>> + *  BIT 66-69:	GPR_B MDID.START (mi->gpr_b_data_start)
> >>> + *  BIT 70-74:	GPR_B MDID.LEN (mi->gpr_b_data_len)
> >>> + *  BIT 75-76:	reserved
> >>> + *  BIT 77-80:	GPR_B ID (mi->gpr_a_id)
> >>> + *  BIT 81:	GPR_C Data Control (mi->gpr_c_ctrl)
> >>> + *  BIT 82-86:	GPR_C MDID.ID (mi->gpr_c_data_mdid)
> >>> + *  BIT 87-90:	GPR_C MDID.START (mi->gpr_c_data_start)
> >>> + *  BIT 91-95:	GPR_C MDID.LEN (mi->gpr_c_data_len)
> >>> + *  BIT 96-97:	reserved
> >>> + *  BIT 98-101:	GPR_C ID (mi->gpr_c_id)
> >>> + *  BIT 102:	GPR_D Data Control (mi->gpr_d_ctrl)
> >>> + *  BIT 103-107:GPR_D MDID.ID (mi->gpr_d_data_mdid)
> >>> + *  BIT 108-111:GPR_D MDID.START (mi->gpr_d_data_start)
> >>> + *  BIT 112-116:GPR_D MDID.LEN (mi->gpr_d_data_len)
> >>> + *  BIT 117-118:reserved
> >>> + *  BIT 119-122:GPR_D ID (mi->gpr_d_id)
> >>> + *  BIT 123-186:Flags (mi->flags)
> >>> + *  BIT 187-191:rserved
> >>> + */
> >>> +static void _metainit_parse_item(struct ice_hw *hw, u16 idx, void
> >> *item,
> >>> +				 void *data, int size)
> >>> +{
> >>> +	struct ice_metainit_item *mi = item;
> >>> +	u8 *buf = data;
> >>> +	u64 d64;
> >>> +
> >>> +	mi->idx = idx;
> >>> +	d64 = *(u64 *)buf;
> >>> +
> >>> +	mi->tsr = (u8)(d64 & 0xff);
> >>> +	mi->ho = (u16)((d64 >> 8) & 0x1ff);
> >>> +	mi->pc = (u16)((d64 >> 17) & 0xff);
> >>> +	mi->pg_rn = (u16)((d64 >> 25) & 0x3ff);
> >>> +	mi->cd = (u16)((d64 >> 36) & 0x7);
> >>> +	mi->gpr_a_ctrl = ((d64 >> 39) & 0x1) != 0;
> >>> +	mi->gpr_a_data_mdid = (u8)((d64 >> 40) & 0x1f);
> >>> +	mi->gpr_a_data_start = (u8)((d64 >> 45) & 0xf);
> >>> +	mi->gpr_a_data_len = (u8)((d64 >> 49) & 0x1f);
> >>> +	mi->gpr_a_id = (u8)((d64 >> 56) & 0xf);
> >>> +
> >>> +	d64 = *(u64 *)&buf[7] >> 4;
> >>> +	mi->gpr_b_ctrl = (d64 & 0x1) != 0;
> >>> +	mi->gpr_b_data_mdid = (u8)((d64 >> 1) & 0x1f);
> >>> +	mi->gpr_b_data_start = (u8)((d64 >> 6) & 0xf);
> >>> +	mi->gpr_b_data_len = (u8)((d64 >> 10) & 0x1f);
> >>> +	mi->gpr_b_id = (u8)((d64 >> 17) & 0xf);
> >>> +
> >>> +	mi->gpr_c_ctrl = ((d64 >> 21) & 0x1) != 0;
> >>> +	mi->gpr_c_data_mdid = (u8)((d64 >> 22) & 0x1f);
> >>> +	mi->gpr_c_data_start = (u8)((d64 >> 27) & 0xf);
> >>> +	mi->gpr_c_data_len = (u8)((d64 >> 31) & 0x1f);
> >>> +	mi->gpr_c_id = (u8)((d64 >> 38) & 0xf);
> >>> +
> >>> +	mi->gpr_d_ctrl = ((d64 >> 42) & 0x1) != 0;
> >>> +	mi->gpr_d_data_mdid = (u8)((d64 >> 43) & 0x1f);
> >>> +	mi->gpr_d_data_start = (u8)((d64 >> 48) & 0xf);
> >>> +	mi->gpr_d_data_len = (u8)((d64 >> 52) & 0x1f);
> >>> +
> >>> +	d64 = *(u64 *)&buf[14] >> 7;
> >>> +	mi->gpr_d_id = (u8)(d64 & 0xf);
> >>> +
> >>> +	d64 = *(u64 *)&buf[15] >> 3;
> >>> +	mi->flags = d64;
> >>> +
> >>> +	d64 = ((*(u64 *)&buf[16] >> 56) & 0x7);
> >>> +	mi->flags |= (d64 << 61);
> >>> +
> >>> +	if (hw->debug_mask & ICE_DBG_PARSER)
> >>> +		ice_metainit_dump(hw, mi);
> >>> +}
> >>
> >> Do not use hardcoded values for indices, masks and shifts and use
> macros
> >> or enums with symbolic names instead.
> >
> > Sure, make sense! Will update in the coming version. Thanks!
> >
> >>
> >>> +
> >>> +/**
> >>> + * ice_metainit_table_get - create a metainit table
> >>> + * @hw: pointer to the hardware structure
> >>> + */
> >>> +struct ice_metainit_item *ice_metainit_table_get(struct ice_hw *hw)
> >>> +{
> >>> +	return (struct ice_metainit_item *)
> >>> +		ice_parser_create_table(hw,
> >> ICE_SID_RXPARSER_METADATA_INIT,
> >>> +					sizeof(struct ice_metainit_item),
> >>> +					ICE_METAINIT_TABLE_SIZE,
> >>> +					ice_parser_sect_item_get,
> >>> +					_metainit_parse_item);
> >>> +}
> >>> diff --git a/drivers/net/ethernet/intel/ice/ice_metainit.h
> >> b/drivers/net/ethernet/intel/ice/ice_metainit.h
> >>> new file mode 100644
> >>> index 000000000000..aa7a9e178820
> >>> --- /dev/null
> >>> +++ b/drivers/net/ethernet/intel/ice/ice_metainit.h
> >>> @@ -0,0 +1,45 @@
> >>> +/* SPDX-License-Identifier: GPL-2.0 */
> >>> +/* Copyright (C) 2018-2023 Intel Corporation */
> >>> +
> >>> +#ifndef _ICE_METAINIT_H_
> >>> +#define _ICE_METAINIT_H_
> >>> +
> >>> +struct ice_metainit_item {
> >>> +	u16 idx;
> >>> +
> >>> +	u8 tsr;
> >>> +	u16 ho;
> >>> +	u16 pc;
> >>> +	u16 pg_rn;
> >>> +	u8 cd;
> >>> +
> >>> +	bool gpr_a_ctrl;
> >>> +	u8 gpr_a_data_mdid;
> >>> +	u8 gpr_a_data_start;
> >>> +	u8 gpr_a_data_len;
> >>> +	u8 gpr_a_id;
> >>> +
> >>> +	bool gpr_b_ctrl;
> >>> +	u8 gpr_b_data_mdid;
> >>> +	u8 gpr_b_data_start;
> >>> +	u8 gpr_b_data_len;
> >>> +	u8 gpr_b_id;
> >>> +
> >>> +	bool gpr_c_ctrl;
> >>> +	u8 gpr_c_data_mdid;
> >>> +	u8 gpr_c_data_start;
> >>> +	u8 gpr_c_data_len;
> >>> +	u8 gpr_c_id;
> >>> +
> >>> +	bool gpr_d_ctrl;
> >>> +	u8 gpr_d_data_mdid;
> >>> +	u8 gpr_d_data_start;
> >>> +	u8 gpr_d_data_len;
> >>> +	u8 gpr_d_id;
> >>> +
> >>> +	u64 flags;
> >>> +};
> >>
> >> The field names are not very descriptive except idx and flags. Any
> >> documentation in comment would be helpful.
> >
> > Same here, there is no more meaningful description in the spec.
> > But we will try if we can add some doc here. Thanks!
> 
> Perfect, thank you!

Thanks for the careful review!
Will refresh the code and send out patch set with new version. Thanks!

> 
> >>
> >>> +
> >>> +void ice_metainit_dump(struct ice_hw *hw, struct
> ice_metainit_item
> >> *item);
> >>> +struct ice_metainit_item *ice_metainit_table_get(struct ice_hw
> *hw);
> >>> +#endif /*_ICE_METAINIT_H_ */
> >>> diff --git a/drivers/net/ethernet/intel/ice/ice_parser.c
> >> b/drivers/net/ethernet/intel/ice/ice_parser.c
> >>> index a35f45964c9e..a1f28395c1a9 100644
> >>> --- a/drivers/net/ethernet/intel/ice/ice_parser.c
> >>> +++ b/drivers/net/ethernet/intel/ice/ice_parser.c
> >>> @@ -6,6 +6,7 @@
> >>>
> >>>    #define ICE_SEC_DATA_OFFSET				4
> >>>    #define ICE_SID_RXPARSER_IMEM_ENTRY_SIZE		48
> >>> +#define ICE_SID_RXPARSER_METADATA_INIT_ENTRY_SIZE	24
> >>>
> >>>    /**
> >>>     * ice_parser_sect_item_get - parse a item from a section
> >>> @@ -28,6 +29,9 @@ void *ice_parser_sect_item_get(u32 sect_type,
> >> void *section,
> >>>    	case ICE_SID_RXPARSER_IMEM:
> >>>    		size = ICE_SID_RXPARSER_IMEM_ENTRY_SIZE;
> >>>    		break;
> >>> +	case ICE_SID_RXPARSER_METADATA_INIT:
> >>> +		size = ICE_SID_RXPARSER_METADATA_INIT_ENTRY_SIZE;
> >>> +		break;
> >>>    	default:
> >>>    		return NULL;
> >>>    	}
> >>> @@ -117,6 +121,12 @@ int ice_parser_create(struct ice_hw *hw,
> >> struct ice_parser **psr)
> >>>    		goto err;
> >>>    	}
> >>>
> >>> +	p->mi_table = ice_metainit_table_get(hw);
> >>> +	if (!p->mi_table) {
> >>> +		status = -EINVAL;
> >>> +		goto err;
> >>> +	}
> >>> +
> >>>    	*psr = p;
> >>>    	return 0;
> >>>    err:
> >>> @@ -131,6 +141,7 @@ int ice_parser_create(struct ice_hw *hw,
> struct
> >> ice_parser **psr)
> >>>    void ice_parser_destroy(struct ice_parser *psr)
> >>>    {
> >>>    	devm_kfree(ice_hw_to_dev(psr->hw), psr->imem_table);
> >>> +	devm_kfree(ice_hw_to_dev(psr->hw), psr->mi_table);
> >>>
> >>>    	devm_kfree(ice_hw_to_dev(psr->hw), psr);
> >>>    }
> >>> diff --git a/drivers/net/ethernet/intel/ice/ice_parser.h
> >> b/drivers/net/ethernet/intel/ice/ice_parser.h
> >>> index b5a3c473666a..8fcc10479260 100644
> >>> --- a/drivers/net/ethernet/intel/ice/ice_parser.h
> >>> +++ b/drivers/net/ethernet/intel/ice/ice_parser.h
> >>> @@ -9,6 +9,8 @@ struct ice_parser {
> >>>
> >>>    	/* load data from section ICE_SID_RX_PARSER_IMEM */
> >>>    	struct ice_imem_item *imem_table;
> >>> +	/* load data from section ICE_SID_RXPARSER_METADATA_INIT
> >> */
> >>> +	struct ice_metainit_item *mi_table;
> >>>    };
> >>>
> >>>    int ice_parser_create(struct ice_hw *hw, struct ice_parser **psr);
> >>> diff --git a/drivers/net/ethernet/intel/ice/ice_parser_util.h
> >> b/drivers/net/ethernet/intel/ice/ice_parser_util.h
> >>> index 6259d3d97b23..59c67f1a1951 100644
> >>> --- a/drivers/net/ethernet/intel/ice/ice_parser_util.h
> >>> +++ b/drivers/net/ethernet/intel/ice/ice_parser_util.h
> >>> @@ -5,6 +5,7 @@
> >>>    #define _ICE_PARSER_UTIL_H_
> >>>
> >>>    #include "ice_imem.h"
> >>> +#include "ice_metainit.h"
> >>>
> >>>    struct ice_pkg_sect_hdr {
> >>>    	__le16 count;
> >

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
