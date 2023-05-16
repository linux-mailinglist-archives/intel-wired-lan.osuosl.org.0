Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 74D69705AC2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 May 2023 00:47:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4CA8442093;
	Tue, 16 May 2023 22:47:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4CA8442093
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684277260;
	bh=02rYJXPK1PhmdIoNJBtAu+44htYUnKWElJfkW6ceKtI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=G8aSXN3v9Lb6zh0hoaclXvSXae0PTO5oxVbPsswoO6vXwZwluLUjncSQuFOVlCHJs
	 WcT2ulUtw7wRm+a6p55jkI0S+SOGp302oHR20FPSz64ZBoSTYHLFQMrkSKsDb+SMXF
	 UMn+DiAq3HPJ2dq3LR6MDSpMNU3+aixVGgyHvmT4+nN6Bk9onCQdir3+m9eWSH+i7l
	 XfXMuQBqp9jycemRdV4YUojyPpYhmutpfS3+nWmlZkd78lkB8C3gp+oNjJTMTpxPEF
	 vD8EaPIQ1PjMpQknZuzVgIhf09s2/P+U2h/yHWVW0ftVUZxbRbzdrTSDI1LcLReFpK
	 IwtKuT8LRcdXA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MZ9rfFnWmo0b; Tue, 16 May 2023 22:47:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AAAFC42038;
	Tue, 16 May 2023 22:47:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AAAFC42038
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5F1B31BF4DB
 for <intel-wired-lan@osuosl.org>; Tue, 16 May 2023 22:47:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 326F240A07
 for <intel-wired-lan@osuosl.org>; Tue, 16 May 2023 22:47:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 326F240A07
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1oLxlrA9fpOR for <intel-wired-lan@osuosl.org>;
 Tue, 16 May 2023 22:47:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5381140981
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5381140981
 for <intel-wired-lan@osuosl.org>; Tue, 16 May 2023 22:47:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="354780174"
X-IronPort-AV: E=Sophos;i="5.99,280,1677571200"; d="scan'208";a="354780174"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2023 15:47:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="652000774"
X-IronPort-AV: E=Sophos;i="5.99,280,1677571200"; d="scan'208";a="652000774"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP; 16 May 2023 15:47:30 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 16 May 2023 15:47:30 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 16 May 2023 15:47:30 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 16 May 2023 15:47:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eU7h+kiwEx2gEgi9EgPMLkk0LrF3LJNs+kw9cH85GHAOMqOSMK9H+MvcEbBe3ttOn4Sn+rzMIcPLutn+h7FXNo1fJquuewPmUxRgVgIdMzbtzosJtsZo/qHAMvImu+B/8WxFBqN4Ub20D8nVEmSisIbdKjodYJC0Nm6llbOkgscv5poSyEkfAO7Njlnc6lO2iQQMasVGkzTE5CUl+hQBbNOwGDxaWBw9qp6mf9m6qoEv7Qv0K2VYWeCWdvGBqSbmALqlhO3SRvfHAzEQsjxuAOCxSe2ecZRZ4uSYqtKeMGkqrfw5MAu9HtFy51GQoE/BMcNCo/b78Lp75RHthhwQRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fZR4fePdvcZPUaIMkjz5vRATWTkCA+5LzCqkz/OkO5I=;
 b=e8EZAjGoyEDnhLHism3uT0kENFgChVbFEZF31QKDiqR6Oj6FOpit/HMDBo56oEFOqsc1nqJMhlTrW+xcCbMijZEoZp/obKXeR3Cne/fTrmceEfi8fNpycAYloGDDJTrBpfs19iau/TZfEOp3SxX5+b5gkoE3i8FVX5ZnFWLEhkmhqYzfuyYuO8nVUO2B/7yxMpqnDv/fCFIQz/6oRmeHaRiutSeZcH3OeNdQGqk0ZOsNT2+EeOfZ5ppGh9JbgvkCVgPfUkzmf62pI1D2LZphtZ/VQRHW3fjMzeHpwwgRxjcR66bib+RSKT3FK8Nciw+ej3Se/ePddqd3ZfYjc40hXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 by CH3PR11MB8361.namprd11.prod.outlook.com (2603:10b6:610:172::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.33; Tue, 16 May
 2023 22:47:28 +0000
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::748:8cea:e1b3:88f8]) by SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::748:8cea:e1b3:88f8%7]) with mapi id 15.20.6387.030; Tue, 16 May 2023
 22:47:28 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: [PATCH iwl-net v1] igc: Remove delay during TX ring configuration
Thread-Index: AQHZh6noqsIuR8LsQ0a0F/5xk1VhMK9dWLGAgAAmsgA=
Date: Tue, 16 May 2023 22:47:28 +0000
Message-ID: <SJ1PR11MB6180A106B53FEE33E826A8C5B8799@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <20230516035113.4147-1-muhammad.husaini.zulkifli@intel.com>
 <c952fd10-990f-6d7d-3832-6849bb0b610b@intel.com>
In-Reply-To: <c952fd10-990f-6d7d-3832-6849bb0b610b@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6180:EE_|CH3PR11MB8361:EE_
x-ms-office365-filtering-correlation-id: 2a9a9171-d67b-4251-afbd-08db565f8674
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UJiHWIBtZ4eZh5O/oY1ogJ2M0RWD2R8oLfwR1CgGqlgz3BHN7MmeGfeBISAoFLVm9UUrbGdLPdFjzLbvuvqqNH/uoqrd2G6SEX/uoMz5UHdWqgwBJ9+jLjXCT6Ys0eEw6HphsugxX3kLsxxqDC3zhtXh3XPevw9gvPD/EmRn9bbEdQsTmcqzU6k+pFCQb0hjRbb2Gq6VefakSWVDyTmZs614DOdhV/NtZhvYgZxAuRavMYV893thBZLh4wA4nSxBFXf+tyZhDkmLQdPCQBJlxfLS9vYpQg0I3NJsQ77a7k66WHF+ybn9ByLAp/ZZ1uEHr4hGWGqdJGJxO+bwLVBHmjDYf0aE8gpD0xuT91jYzPy/01lk5CYXRbFVXDi+5Zm3IYgSJ7gO1qbmCm36CXCVcw87QfZolnfdTFvbTqfoCgzDL6yW1iPM7cY6Mt8kmz/r+U/4OMKdnBjXtGAlms1UQ0Yg/VITPbf8w95LiURmmysikn3yp40kPrN8dHsiKDlK/yX1lMOAtVanNqIcCc1ZczZM4gy6cp6+7po/wApE008X7NElAkUUNnpohsQ5drTIbqEGPw3RtnlopvfygaBZrHZ0jsgCikS3cOu6iD5//hC8ZJvwS+trL7feifavMJPG
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(39860400002)(376002)(366004)(136003)(346002)(451199021)(4326008)(2906002)(52536014)(8936002)(5660300002)(8676002)(41300700001)(86362001)(76116006)(66476007)(66446008)(64756008)(316002)(66946007)(66556008)(478600001)(54906003)(110136005)(55016003)(71200400001)(33656002)(7696005)(26005)(82960400001)(9686003)(6506007)(53546011)(83380400001)(186003)(38070700005)(38100700002)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YXBUaVMrV2VWaDI1aHVnVzZhREVYTEYzNWZ5UWhUK2hOTkpzbE04S2MwL3Fs?=
 =?utf-8?B?djNLVi9kVFdjaG9DRXhudVV0M2xpTk02R2VINVR4b3hBeHRHWXp0YVc4alRV?=
 =?utf-8?B?U0YxMnVzaURIaVhPdmRkbXREdE8zVVBvUklYTjBHUUZXQWtXd3k1VjZwM3FD?=
 =?utf-8?B?QVUvWkI4c05mTlFLK2FIZzg5K0I2SVJTQmQyQWZMUndYUklXbnhYLzgrNDFw?=
 =?utf-8?B?YlJ1bTF5a3lMSDAyYTVRUWMySHpVTXlweGRjaXpKWnlqc2hCOEV5anM4YTkr?=
 =?utf-8?B?cFNXU2FHeURXWHp5WmJKRzE0R0xubnBhOXZNL3U4UkRsa0xYaGJiUzdTRTN1?=
 =?utf-8?B?eWdyZFVadTU5VWlzVnNiakVhOUNhN1N5d1RjUk1OcWorT0FqMnNmdTFUU2VZ?=
 =?utf-8?B?enNSWEk4UWFXbSs0UWhwRUZvcHdGTG5JbVpQbU12RGdLZ1ZCa05qTk9DcHFn?=
 =?utf-8?B?dHhMQzI2d1NtcTFLL2VTK2U3eWZPUXBnQmRzMUZZQy9VeXc1a28wd0FJa2FL?=
 =?utf-8?B?QzgrTUIzUU5TbHBhYUt0VVFrVmNvMWZJYUhPM0w5NzJYSmVRaVZhbWZHWnBP?=
 =?utf-8?B?Yzl3S1dMeVNzVHFiQ0Y3clp5RkVoQzg4K3BvRU4vRnM5WUVoLzAyMmZ6ZDUv?=
 =?utf-8?B?TFlvZ2N3L2JXYmlpTFJlSDJXaForVkU5cWdwV2s5Njh3V1NSVEsxUnF5SDFa?=
 =?utf-8?B?S01vWE9TOTMxNEozcW9QSW9wbWg1VFVGS2NKRjNKZkdLR1ZNQjFBL250eXUv?=
 =?utf-8?B?NFd3ajhEaHVnWXNUMlpzbjNhMUtKRmZ4cWNrZDRuVGpmb1FTUisyelNiRTdx?=
 =?utf-8?B?WE1Bc3BEalFleVg4eW9CaWs5MVpGVGpxcHcwS3JlS0hWemRtUzk2MVlBRUR1?=
 =?utf-8?B?UjNxcHRCVFZPc1hsQUVsanVINVZla0J3QmorcllUY1NoOXVORXdBWTR1RmxK?=
 =?utf-8?B?Ly9UQUN5dVU5cndmOENhbm92NGRLREk3OVVoRUVhUHMyRi9OODNhcG1WWHF0?=
 =?utf-8?B?UWJ4SFJERkV1NUVjbzFETFhkeGNkS3dPbEZDMEEvb2lUUUMzdmVIQVBmOFZa?=
 =?utf-8?B?RXhFcU1nTnBldlRWUkkrd1RPNW9RaUxaZ0hZMUNHeENjL1E0eXdkbkJZNlRT?=
 =?utf-8?B?ZkNoaVdOSWFUbEdVTkVWNE93eklWcGUyNG9DNHdaUHBiR2J0NmJidk5NS3hX?=
 =?utf-8?B?S09RSVZXMEF5eDdLVzdQVFVXSHJwRUVxZzFyK1RQa1B6UG92bVhQUk5KNmM0?=
 =?utf-8?B?anJiWXFaSVRvTi91UTlMVWY1eVZFRTNrRFZ5Ynp5TmRldUZ1OTNnVVlNUlBX?=
 =?utf-8?B?SGl4NnZqUW9nVjdkWTYwWHc2U0lGVWpiaDE5dkhBMWFhbWZnVncwQk1VUVF0?=
 =?utf-8?B?L09aOTF5MjV0bW9LUHJlYkEvNzE0NU1BMXZKeU9JSmRiUkdQeWNpQXNRQlA3?=
 =?utf-8?B?MXNUMm5nZ0xqRHRUUEJkMXROMDBRQUN5VmJUTEN6Y1ByRWFKN0NPTUo1OU5D?=
 =?utf-8?B?Rm5IUVBYcHJsNnAvc1dEdHY1MnQ5Y0pObGRDNjM3bVRzK214a2Izak5rNExr?=
 =?utf-8?B?ckpKbU1UY09pOGs0SzZldXBlSTNnTEVKcG02VlA3aHpzWWQya1N1S0FwUVdD?=
 =?utf-8?B?UHVIL0dDdHFPeHZ6V0UrbDlMUHA2VFBPNkxiNnRGN3RaRnhxMGFEL0JScWZz?=
 =?utf-8?B?ZUg3LzVDQkhXalRqQzNkN2FVVE1ydisyRFBicWROdUlNWndxNmNPREZScUZ1?=
 =?utf-8?B?SExJTm44dTcwei9Wb1R2b001d3hJOTZGYzJpbmhiZitoeDlkU2Z3ZlVHWjk1?=
 =?utf-8?B?bkRPTVRicFdBQkNSQnhOZ2ptRFZHeWR3ZXFXM1h4ejdPUUgxQlBhSTZrYmRu?=
 =?utf-8?B?VFhIbVo2R3duSFpCTmgrbHIrOGp3NVV2azd5RUh5SGhuaktwSmhLTFdWTFEx?=
 =?utf-8?B?ellDWjVJbUNNVGZKVTlzS014K3A3c3B1a2hzbFdhZWwwTHdZNmR1eVFWL2JU?=
 =?utf-8?B?eUQvVEJxWXdTVkVWdkp1V3dZaGx1dnBaR0ZZbGNuOVpFeWhoSGlSZU1wWndJ?=
 =?utf-8?B?M2pvQit2M0FzR2paOG9YcXpQRlBsSmExSEl5aFF0ZEVpMzZTUEpWeHYwU2Ra?=
 =?utf-8?B?SFlrYjRlUEJRTktaTmJLT1NqRzNSOExvY0lFUFZ6cVoyNmV0Q3lIVm9BYkVl?=
 =?utf-8?Q?UrsUDwFY6spDUeSZouNnA7s=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a9a9171-d67b-4251-afbd-08db565f8674
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2023 22:47:28.0651 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: h7a+SU9mjtdS2KvrQTJLA8MoMR+szEk7pVz2es3x2NsT1l5Dh/ZLtW/BOl/dJGngTaFJtHefHQitiS3F4b0y318SVzkPIsp8L8pPQAtv69oZnxqbXhVyfb/WraahGdLX
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8361
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684277252; x=1715813252;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fZR4fePdvcZPUaIMkjz5vRATWTkCA+5LzCqkz/OkO5I=;
 b=b3hP+JMYzSpU78MVgEATgxgtWIiZT/2B2yIJn+flb1LQKUPiXhPMMj/M
 YbCRpSXARW729aIbdhwXTeRhEjMJs68uv79RwOgyjvhVWxaIUZhFRrTUA
 1RGYahB6yJtcACwKB+huP9+bD+X++Ct1c2olPwqAmY/BrjDBAQ/m001P1
 q1jj++BRg8VACqxv5nnP29nmPZVDw/IQ1Ixiz3peLp/QQyWEjl1at1ARw
 dSUrRLci229D5P55XRRyq3k7+PyLzL8TvHlf2XqUXHjYUf3kfScqzg5fG
 F6H8MbV2AhM9ZlFtUma4yxtbrJY9JeYCfVLfQP+ayymOOzF5YAmE8iHPy
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=b3hP+JMY
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] igc: Remove delay during
 TX ring configuration
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Tony,

> On 5/15/2023 8:51 PM, Muhammad Husaini Zulkifli wrote:
> > Remove unnecessary delay during the TX ring configuration.
> > It doesn't mentioned about this delay in the Software User Manual.
> > It might have been ported from legacy code I210 in the past.
> 
> Can you please provide more info. What's the problem you're fixing? How is
> this fixing it? If there's a splat, that would be helpful.

There is no splat for this. This will cause more delay ex. link up activity
especially during reset adapter task. I do not see any need for this as it does not
mentioned in software manual. Plus, during TSN mode GCL scheduling configuration, 
we want to remove the delay of this 10ms for real time activity as well.
I got pinged Sasha previously and we agreed to remove this delay.

> 
> > Fixes: 13b5b7fd6a4a ("igc: Add support for Tx/Rx rings")
> > Signed-off-by: Muhammad Husaini Zulkifli
> > <muhammad.husaini.zulkifli@intel.com>
> > ---
> >   drivers/net/ethernet/intel/igc/igc_main.c | 1 -
> >   1 file changed, 1 deletion(-)
> >
> > diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
> > b/drivers/net/ethernet/intel/igc/igc_main.c
> > index ca0e6d4141a05..b1d0b3a8bdc41 100644
> > --- a/drivers/net/ethernet/intel/igc/igc_main.c
> > +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> > @@ -711,7 +711,6 @@ static void igc_configure_tx_ring(struct igc_adapter
> *adapter,
> >   	/* disable the queue */
> >   	wr32(IGC_TXDCTL(reg_idx), 0);
> >   	wrfl();
> > -	mdelay(10);
> >
> >   	wr32(IGC_TDLEN(reg_idx),
> >   	     ring->count * sizeof(union igc_adv_tx_desc));
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
