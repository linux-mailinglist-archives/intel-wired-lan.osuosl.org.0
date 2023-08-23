Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E2C878546F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Aug 2023 11:42:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8C97361149;
	Wed, 23 Aug 2023 09:42:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8C97361149
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692783726;
	bh=txzs2WUrkF7Z2oql8wXUxAGAAxzM4yhXBRFMb/gHdFM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=plRasOYdUQKj3xESW1sNKz4hd7RO0H4UgzLdrlj+UOgrZJ1BZBlKF0KMtkv7G32zo
	 KKUCzp6lS3qqqUvzmzlwcKtm4hnqmhKTic1WQhEVkWsQkJJBJc/VFLnul6bCsddn29
	 J/wUyLcwb7RB6eaoJhxXt5MNc56E8RJWOMim8051GKe8mOTNyBh1ZJEKF4yxIqI2AX
	 a9FiPpPOV+4+3VG/0Z/saWXsDpcACWaBcxRNTrZyvIYeOEaouIeLhO0VT4am31SN81
	 3M4R/JIeumDVbWr1RaQDL6lmDZTvoT6DdndDMspAcAhTIs3hz3h6Z5HuZ6CB3O149x
	 OBRRdlJYYP/tw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VKokWla0345U; Wed, 23 Aug 2023 09:42:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A7DCF60B05;
	Wed, 23 Aug 2023 09:42:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A7DCF60B05
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A964C1BF34E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 09:41:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 77C4581948
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 09:41:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 77C4581948
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k3B3u25jfd8B for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Aug 2023 09:41:56 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 895E981947
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 09:41:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 895E981947
X-IronPort-AV: E=McAfee;i="6600,9927,10810"; a="359102294"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="359102294"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 02:41:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10810"; a="713509078"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="713509078"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP; 23 Aug 2023 02:41:52 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 02:41:52 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 23 Aug 2023 02:41:52 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 23 Aug 2023 02:41:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JCQ7DE/V8ZgmJHfGOYFRVtVLeuRipl1cjSvT6R/LEd24UC0/irIDPgVNjUZd/6QXpefDplvCAc4G6Geve6fXEUgOJK1hR6bxtdi78ZnWJKlrz/YFJ3lZeuZO981Fn55CvmCild/fRbtW16mn2I3BiD+8xXSv/staRcb1vMOij/Tj+3SrKW39JEkN+OhNnf+S93UQCjoyox12tamKVvHHInB9vRvCXYxGgyDbKckUdipAWcLKFsY3tczDmAU4UO1ZJG8SSY6wLpXeA319RvypSbCND+17cjg+1gt7ne76VJF+saED/f3gjTh8A29FkFQUsXXmJVCts+xw5/HwrZ6qkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cWGcwBR3pWiZLms3xWxaFQXzdiK6/jptthooFQN6YJM=;
 b=bKkBcyW6kjJBgn5W3Vz6yHqG9RYrlE+onmXThJMT46Q7jTm/s/6DiQisFdVoszljhy3qo90YrIJCyrsno2naRx12BYOqqutv5eUBFxjX+Yz3BaJ1LAi16IMfyvyzpGso/lYIgioNgARodhjNSKna/Euwl9a/2uYk0FODdoO0nZCI8q+WS55RS2harSrIE3B2me3VECR9zW+9P6+5D0iH9+/Dqidr097S+Zb431b7X75hJ3pEWrsYSgvRt7ZT9ddjZZceCrF7IKliBvaimdwylT+aDpuN76X1PGSQvoyIkae8Jmb288za7MUVRKVPBLPXw6iqwevNFGcyJIjrYnJZ/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3723.namprd11.prod.outlook.com (2603:10b6:5:13f::25)
 by MW6PR11MB8337.namprd11.prod.outlook.com (2603:10b6:303:248::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.20; Wed, 23 Aug
 2023 09:41:46 +0000
Received: from DM6PR11MB3723.namprd11.prod.outlook.com
 ([fe80::ce6:bce1:eaf8:ad80]) by DM6PR11MB3723.namprd11.prod.outlook.com
 ([fe80::ce6:bce1:eaf8:ad80%7]) with mapi id 15.20.6699.020; Wed, 23 Aug 2023
 09:41:46 +0000
From: "Guo, Junfeng" <junfeng.guo@intel.com>
To: ivecera <ivecera@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH net-next v4 02/15] ice: init imem table for parser
Thread-Index: AQHZ0O86FxFt+cLzo022FQLrKxkhOa/2cB0AgAE5DkA=
Date: Wed, 23 Aug 2023 09:41:46 +0000
Message-ID: <DM6PR11MB372377186A63531B4E105966E71CA@DM6PR11MB3723.namprd11.prod.outlook.com>
References: <20230817093442.2576997-2-junfeng.guo@intel.com>
 <20230817094240.2584745-1-junfeng.guo@intel.com>
 <20230817094240.2584745-3-junfeng.guo@intel.com>
 <8d809d10-c5a7-3f6a-e56d-12b5bf2dc046@redhat.com>
In-Reply-To: <8d809d10-c5a7-3f6a-e56d-12b5bf2dc046@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3723:EE_|MW6PR11MB8337:EE_
x-ms-office365-filtering-correlation-id: 5bd82d5c-ab3a-4ca9-c277-08dba3bd2a95
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Yzq5vCjk8+R9ApfrGLy/rLxvL+fWBa43+sOxPgK52wydQ50LDDxd8A0baS5GsfLcUb7gxLgB5YZxho4/8TPAr99FRRFa5+wN/1JwNvKjxoQmDbPOqdEu5SRXpkE07ceFj8Zrs+ZMTjlGn2Vpi6tWD+hGSsQg3zXQ2wmkM3MKlB1q+vKiCMnvhLfqt0D4CGrmA2zE+idzTToVSgu1XzE7OSzcmE2YyR0GTWmJMsViisSi91GPWh7M406YsfoHUKuvFGqS+aPF0mRn5Ik8Jn5oY/DIez1uHwDsxoP3kNbAsFkIJ4BxEs5gUpyuALx8FvjM/8P5A5uGeYT4/AsvB8yhJnMOhyGudEtqyFhrRWTBvpmV5WnQ718dPtnZyEkOjg1k8pW7UwOOuQDlT0pRe01zhqQLUW+3bxdbg0Odx+GzUypNT/LFjdaQF+IlNG2Aq7ake2aqvH9FTrMMg/73D6Jby8uiz/tIxi4w702tA/yupFsd+0TwXox/6/e8PcxfBQ63vQSO61Ds83FSQRwayTMZ/5Xo4sUZtp9/a4wYDFzC3dHBbM1eVgwDwzdANBCAlUByq7jBTm3ZHJ4cXYPM/4kw0PALjZhlhNKqTybhdNKFefB+xnpe5/nbvcaAwwHDF77D
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3723.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(136003)(346002)(366004)(376002)(1800799009)(186009)(451199024)(76116006)(54906003)(66476007)(66446008)(66556008)(64756008)(66946007)(9686003)(316002)(82960400001)(110136005)(8676002)(8936002)(107886003)(4326008)(41300700001)(478600001)(122000001)(55016003)(71200400001)(38100700002)(38070700005)(6506007)(53546011)(83380400001)(30864003)(2906002)(7696005)(86362001)(5660300002)(26005)(52536014)(33656002)(579004)(559001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RnhkbUkwbUJ6d01rbU5LU3NFeUtjcWpKdWw3RlFzOGtVUUJpQm02ajN4L1gz?=
 =?utf-8?B?UDBvdlZtOWpZMmoyWEUyUXAyejdIWGJyK3NjMmoxb2JrYXVNK01HWHJpNFVC?=
 =?utf-8?B?c3pBWXVFT2xvQVB1NmwvenpyQ2hiK3lLT0dTa1FOT2orQWFJaUkzQXdjekkx?=
 =?utf-8?B?TGlyOFJYaWN6RWFYcmJNZTgwZDVFaVRwZjdQaERMWW1BbUZiMDhaZlVJQXhY?=
 =?utf-8?B?NUlyY3lKbklMWHd0L3NKeHZ4UWY3WTdHUWYwai82c0kyRERmOGI4MTh2M3BX?=
 =?utf-8?B?dGpBbFNLekEvSHlZL2FTaDBkZ0dBOC9pT2xXQTNQU3J3cHJiUzBVSDFvaS8x?=
 =?utf-8?B?dzVJZFIwMjM5SVc3UHVFWW1yZGpaWmUyZk9ZZ091bktjZ213NjRXNGpkMWhP?=
 =?utf-8?B?NWU4K2szYjdhQlNDNUdOLzdBN2M5NGRwR3FMOFFUOGN6eE9LYm1HK1JaOFVE?=
 =?utf-8?B?V2l1bXFWTUpCazdRQXhwNnpTN0x6RjJveGljRGRqZXpxejZ1bTE3bldoN1Fj?=
 =?utf-8?B?VEtMZzF5cktlNDdUVDAvMWxZaHFQaE43YW4rcjA4Y1Q2d1o2T3ZUYmxTd0Fn?=
 =?utf-8?B?NmowemFycG9ydlpBWThuSzg5MXBmbU9LQkhRbGlWN2diSzZ2eS9zNWIzUlBQ?=
 =?utf-8?B?ZE5zRHJ3M2w1REczTTR6QmRsVDRyNXE4N2JxYlorNFJwenluVm9uT0dnVm5h?=
 =?utf-8?B?bjRRbFNpMzZwRjY3ZjNaZ0lpc3dhWkJOblhIU0RVMTJBK0JIdGVjVXFGTDlJ?=
 =?utf-8?B?Vy9Fa2ZTYk1jQkMvNTVOVDNyalBkNWRma2EzdTAvK1B1eWVMS3NIaVlEMHJD?=
 =?utf-8?B?UDJaSlROMFNxVVV2ZXkrZm9YUW9IQm1MbGZBL2krcTBSeEMvSHNoTFRhbFhm?=
 =?utf-8?B?MTVLcXI5N1JNUEwrajNXRHNzejdXZUZMNFRWbms0YnYxL1BMSzc1cjlkcGRn?=
 =?utf-8?B?dHp0cm5zZ3E5RHhSeDE0Y1NHQ25FdWpxekljWnZqbFIzVWxiTkJUZys0L3Zw?=
 =?utf-8?B?NERnbmtiV09SOVJmVFBMSHdTUTQzaUdSWmJ2RUZPZC83N1BUQ3JIOG9aL0w0?=
 =?utf-8?B?aTE4QzRYODBkdXFjWHl5MkorY09wL2ozd2thaEZBdzFoaHdMQjVwTVgzMGUy?=
 =?utf-8?B?WGo3VTQzT09nMjdjSVBLcTc0bFJERFA1RzVzMmVHR0d1eXZoai9Wc2N3TlVB?=
 =?utf-8?B?bjFybTJVYnVKeDVDdzVXekhNUUYvR1JIS0ZzR2oxMnFDVlhTaktBdkpFTVZy?=
 =?utf-8?B?N2ZERVVBempTa1RSTnZSM3QyMy94UEZhZU5LTzRmd0tocTFEVWtLb3dQQnpB?=
 =?utf-8?B?Szh2Z0xyZWRtcU5ZcXgvbHR5L1pTaVJ1OVYwYndNc1ZIbktyb1dCaFcwVm8r?=
 =?utf-8?B?WTZ4U3NKbTVLUGxhSjFPMTNkNzljSTl2OGtsM1ZDRE5GQm03MFpnSG9TMG8v?=
 =?utf-8?B?ZWIvOTFidTlrQlljdmdEYWJnU0NrbGV1L2c0UG5rVnJpU013Z3BSWTRGK2xX?=
 =?utf-8?B?ZkU2Z2NLZUgyVC9na1JvSGk1MXZnZFZITkY5VUVJYkdPOU5FR1FOanhPcW9a?=
 =?utf-8?B?VnQ4dGg0eFUzSGJRK3k0OVlMNzJCZ0VDMzJlelpOaHk4SDV0eGxkMEljMS8z?=
 =?utf-8?B?bXZrSWpQKytDRUxWNEo1WVEraWlXQWltNmtWQTcwQTY4bmNaSHc5c0F5aW52?=
 =?utf-8?B?UWFYNGVIanNSWC9PNEdtVnM1c3Fkei81VlFFOWFXNUs5OVlkMkpLN1RLVjda?=
 =?utf-8?B?UmxzWEJKcS82bmJxeVVNaVdRd05SWkg5dzVMeTRrMCt5ekdFZnEvOGdOUlRD?=
 =?utf-8?B?STJkMUJhcG80QWQwLytxNWYvNmtHYnRuaXpZUzYwMlVtRzZyS3NIYlJpSlBG?=
 =?utf-8?B?RFVmVm5RZy9IWkZrWWJVRXVIM3F2Z2NtNkc2ZGg0V3Z4dHpxdVZtVXEvWXZ5?=
 =?utf-8?B?THl6STB3WDJEcjdraG45cXVMdkNsOVNrR3RVaXUwUHRjL1VBMVQvSDZYWnF3?=
 =?utf-8?B?eTVheFNJN2pmVFJ0S25jeXR0SHlaZG1Td2VmZEMyQUNlTXkxd0drZVRBbjIv?=
 =?utf-8?B?aFM0Y1dXNllITGMvbE9CaHBidkhDZDQwd0dlenBYVHh1ZCtPR295bEI3NjNz?=
 =?utf-8?Q?bCcpy7yDhIOQyFE1Izmii8b2U?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3723.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5bd82d5c-ab3a-4ca9-c277-08dba3bd2a95
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Aug 2023 09:41:46.1046 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xn0BNL3mFPfD4Fshw+tdlOO39hWcSR9HHknsPGu1R5vJjfQa8AUMQJkTnpfg/MaYYLrB6rpK8ShT49siwr1rGQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8337
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692783716; x=1724319716;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cWGcwBR3pWiZLms3xWxaFQXzdiK6/jptthooFQN6YJM=;
 b=ZiJ29eIbqI4JK62zlNldMlHy7W3f80F4SgxzE9XYOXGSdIdl5J8rTknd
 sTEnhoPXuC3tYidSYVQaFxoR4/OLiSdheCuhiIBuwK+0ABtrapVINdU41
 rbSRyr+8obLLQ3gUnM5/WsyPojaQhrKFRlvrReO8MenxSgtsfHFNogvXw
 0LctuEm5+y7yqCIslXDOWeyMwhREcUb+41LvO3vGgsE/EtBVESaTmosNZ
 lBMyperXBs87DMUMpQG4pOCW2jSf6OgLQJXtZ/PD/qQaMZKSfG4TAzSmN
 wkl+lFEDDxiDAw2LEemZ73TkMfpTq+bl/z3QeU9ATiiPePntVZUymbU3E
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZiJ29eIb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 02/15] ice: init imem
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
> Sent: Tuesday, August 22, 2023 22:58
> To: Guo, Junfeng <junfeng.guo@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Cc: Zhang, Qi Z <qi.z.zhang@intel.com>; Samudrala, Sridhar
> <sridhar.samudrala@intel.com>
> Subject: Re: [PATCH net-next v4 02/15] ice: init imem table for parser
> 
> Masks and shifts can be simplified by FIELD_GET() macro from
> linux/bitfield.h... See below...
> 
> On 17. 08. 23 11:42, Junfeng Guo wrote:
> > Parse DDP section ICE_SID_RXPARSER_IMEM into an arrary of
> > struct ice_imem_item.
> >
> > Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
> > ---
> >   drivers/net/ethernet/intel/ice/ice_imem.c     | 279
> ++++++++++++++++++
> >   drivers/net/ethernet/intel/ice/ice_imem.h     | 217 ++++++++++++++
> >   drivers/net/ethernet/intel/ice/ice_parser.c   |  97 ++++++
> >   drivers/net/ethernet/intel/ice/ice_parser.h   |   8 +
> >   .../net/ethernet/intel/ice/ice_parser_util.h  |  24 ++
> >   drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
> >   6 files changed, 626 insertions(+)
> >   create mode 100644 drivers/net/ethernet/intel/ice/ice_imem.c
> >   create mode 100644 drivers/net/ethernet/intel/ice/ice_imem.h
> >   create mode 100644
> drivers/net/ethernet/intel/ice/ice_parser_util.h
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice_imem.c
> b/drivers/net/ethernet/intel/ice/ice_imem.c
> > new file mode 100644
> > index 000000000000..a47748d1b1bf
> > --- /dev/null
> > +++ b/drivers/net/ethernet/intel/ice/ice_imem.c
> > @@ -0,0 +1,279 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/* Copyright (C) 2018-2023 Intel Corporation */
> > +
> > +#include "ice_common.h"
> > +#include "ice_parser_util.h"
> > +
> > +static void _ice_imem_bst_bm_dump(struct ice_hw *hw, struct
> ice_bst_main *bm)
> > +{
> > +	dev_info(ice_hw_to_dev(hw), "boost main:\n");
> > +	dev_info(ice_hw_to_dev(hw), "\talu0 = %d\n", bm->alu0);
> > +	dev_info(ice_hw_to_dev(hw), "\talu1 = %d\n", bm->alu1);
> > +	dev_info(ice_hw_to_dev(hw), "\talu2 = %d\n", bm->alu2);
> > +	dev_info(ice_hw_to_dev(hw), "\tpg = %d\n", bm->pg);
> > +}
> > +
> > +static void _ice_imem_bst_kb_dump(struct ice_hw *hw,
> > +				  struct ice_bst_keybuilder *kb)
> > +{
> > +	dev_info(ice_hw_to_dev(hw), "boost key builder:\n");
> > +	dev_info(ice_hw_to_dev(hw), "\tpriority = %d\n", kb->prio);
> > +	dev_info(ice_hw_to_dev(hw), "\ttsr_ctrl = %d\n", kb->tsr_ctrl);
> > +}
> > +
> > +static void _ice_imem_np_kb_dump(struct ice_hw *hw,
> > +				 struct ice_np_keybuilder *kb)
> > +{
> > +	dev_info(ice_hw_to_dev(hw), "next proto key builder:\n");
> > +	dev_info(ice_hw_to_dev(hw), "\tops = %d\n", kb->opc);
> > +	dev_info(ice_hw_to_dev(hw), "\tstart_or_reg0 = %d\n",
> > +		 kb->start_reg0);
> > +	dev_info(ice_hw_to_dev(hw), "\tlen_or_reg1 = %d\n", kb-
> >len_reg1);
> > +}
> > +
> > +static void _ice_imem_pg_kb_dump(struct ice_hw *hw,
> > +				 struct ice_pg_keybuilder *kb)
> > +{
> > +	dev_info(ice_hw_to_dev(hw), "parse graph key builder:\n");
> > +	dev_info(ice_hw_to_dev(hw), "\tflag0_ena = %d\n", kb-
> >flag0_ena);
> > +	dev_info(ice_hw_to_dev(hw), "\tflag1_ena = %d\n", kb-
> >flag1_ena);
> > +	dev_info(ice_hw_to_dev(hw), "\tflag2_ena = %d\n", kb-
> >flag2_ena);
> > +	dev_info(ice_hw_to_dev(hw), "\tflag3_ena = %d\n", kb-
> >flag3_ena);
> > +	dev_info(ice_hw_to_dev(hw), "\tflag0_idx = %d\n", kb-
> >flag0_idx);
> > +	dev_info(ice_hw_to_dev(hw), "\tflag1_idx = %d\n", kb-
> >flag1_idx);
> > +	dev_info(ice_hw_to_dev(hw), "\tflag2_idx = %d\n", kb-
> >flag2_idx);
> > +	dev_info(ice_hw_to_dev(hw), "\tflag3_idx = %d\n", kb-
> >flag3_idx);
> > +	dev_info(ice_hw_to_dev(hw), "\talu_reg_idx = %d\n", kb-
> >alu_reg_idx);
> > +}
> > +
> > +static void _ice_imem_alu_dump(struct ice_hw *hw,
> > +			       struct ice_alu *alu, int index)
> > +{
> > +	dev_info(ice_hw_to_dev(hw), "alu%d:\n", index);
> > +	dev_info(ice_hw_to_dev(hw), "\topc = %d\n", alu->opc);
> > +	dev_info(ice_hw_to_dev(hw), "\tsrc_start = %d\n", alu-
> >src_start);
> > +	dev_info(ice_hw_to_dev(hw), "\tsrc_len = %d\n", alu->src_len);
> > +	dev_info(ice_hw_to_dev(hw), "\tshift_xlate_sel = %d\n",
> > +		 alu->shift_xlate_sel);
> > +	dev_info(ice_hw_to_dev(hw), "\tshift_xlate_key = %d\n",
> > +		 alu->shift_xlate_key);
> > +	dev_info(ice_hw_to_dev(hw), "\tsrc_reg_id = %d\n", alu-
> >src_reg_id);
> > +	dev_info(ice_hw_to_dev(hw), "\tdst_reg_id = %d\n", alu-
> >dst_reg_id);
> > +	dev_info(ice_hw_to_dev(hw), "\tinc0 = %d\n", alu->inc0);
> > +	dev_info(ice_hw_to_dev(hw), "\tinc1 = %d\n", alu->inc1);
> > +	dev_info(ice_hw_to_dev(hw), "\tproto_offset_opc = %d\n",
> > +		 alu->proto_offset_opc);
> > +	dev_info(ice_hw_to_dev(hw), "\tproto_offset = %d\n",
> > +		 alu->proto_offset);
> > +	dev_info(ice_hw_to_dev(hw), "\tbranch_addr = %d\n", alu-
> >branch_addr);
> > +	dev_info(ice_hw_to_dev(hw), "\timm = %d\n", alu->imm);
> > +	dev_info(ice_hw_to_dev(hw), "\tdst_start = %d\n", alu-
> >dst_start);
> > +	dev_info(ice_hw_to_dev(hw), "\tdst_len = %d\n", alu-
> >dst_len);
> > +	dev_info(ice_hw_to_dev(hw), "\tflags_extr_imm = %d\n",
> > +		 alu->flags_extr_imm);
> > +	dev_info(ice_hw_to_dev(hw), "\tflags_start_imm= %d\n",
> > +		 alu->flags_start_imm);
> > +}
> > +
> > +/**
> > + * ice_imem_dump - dump an imem item info
> > + * @hw: pointer to the hardware structure
> > + * @item: imem item to dump
> > + */
> > +void ice_imem_dump(struct ice_hw *hw, struct ice_imem_item
> *item)
> > +{
> > +	dev_info(ice_hw_to_dev(hw), "index = %d\n", item->idx);
> > +	_ice_imem_bst_bm_dump(hw, &item->b_m);
> > +	_ice_imem_bst_kb_dump(hw, &item->b_kb);
> > +	dev_info(ice_hw_to_dev(hw), "pg priority = %d\n", item-
> >pg_pri);
> > +	_ice_imem_np_kb_dump(hw, &item->np_kb);
> > +	_ice_imem_pg_kb_dump(hw, &item->pg_kb);
> > +	_ice_imem_alu_dump(hw, &item->alu0, 0);
> > +	_ice_imem_alu_dump(hw, &item->alu1, 1);
> > +	_ice_imem_alu_dump(hw, &item->alu2, 2);
> > +}
> > +
> > +/** The function parses a 4 bits Boost Main with below format:
> > + *  BIT 0: ALU 0	(bm->alu0)
> > + *  BIT 1: ALU 1	(bm->alu1)
> > + *  BIT 2: ALU 2	(bm->alu2)
> > + *  BIT 3: Parge Graph	(bm->pg)
> > + */
> > +static void _ice_imem_bm_init(struct ice_bst_main *bm, u8 data)
> > +{
> > +	bm->alu0	= !!(data & ICE_BM_ALU0);
> > +	bm->alu1	= !!(data & ICE_BM_ALU1);
> > +	bm->alu2	= !!(data & ICE_BM_ALU2);
> > +	bm->pg		= !!(data & ICE_BM_PG);
> > +}
> 
> Can be written as:
> #define ICE_BM_ALU0 BIT(0)
> #define ICE_BM_ALU1 BIT(1)
> #define ICE_BM_ALU2 BIT(2)
> #define ICE_BM_PG   BIT(3)
> ...
> bm->alu0 = FIELD_GET(ICE_BM_ALU0, data);
> bm->alu1 = FIELD_GET(ICE_BM_ALU1, data);
> bm->alu2 = FIELD_GET(ICE_BM_ALU2, data);
> bm->pg   = FIELD_GET(ICE_BM_PG, data);

Sure, it looks much better!

Thanks for the tips!
Will update these macros in the coming version.

> 
> > +
> > +/** The function parses a 10 bits Boost Main Build with below
> format:
> > + *  BIT 0-7:	Priority	(bkb->prio)
> > + *  BIT 8:	TSR Control	(bkb->tsr_ctrl)
> > + *  BIT 9:	Reserved
> > + */
> > +static void _ice_imem_bkb_init(struct ice_bst_keybuilder *bkb, u16
> data)
> > +{
> > +	bkb->prio	= (u8)(data & ICE_BKB_PRIO_M);
> > +	bkb->tsr_ctrl	= !!(data >> ICE_BKB_TSRC_S &
> ICE_BKB_TSRC_M);
> > +}
> 
> Here:
> #define ICE_BKB_PRIO GENMASK(7, 0)
> #define ICE_BKB_TSRC BIT(8)
> ...
> bkb->prio     = FIELD_GET(ICE_BKB_PRIO, data);
> bkb->tsr_ctrl = FIELD_GET(ICE_BKB_TSRC, data);
> 
> > +
> > +/** The function parses a 18 bits Next Protocol Key Build with
> below format:
> > + *  BIT 0-1:	Opcode		(kb->ops)
> > + *  BIT 2-9:	Start / Reg 0	(kb->start_or_reg0)
> > + *  BIT 10-17:	Length / Reg 1	(kb->len_or_reg1)
> > + */
> > +static void _ice_imem_npkb_init(struct ice_np_keybuilder *kb, u32
> data)
> > +{
> > +	kb->opc		= (u8)(data & ICE_NPKB_OPC_M);
> > +	kb->start_reg0	= (u8)((data >> ICE_NPKB_SR0_S) &
> ICE_NPKB_SR0_M);
> > +	kb->len_reg1	= (u8)((data >> ICE_NPKB_LR1_S) &
> ICE_NPKB_LR1_M);
> > +}
> 
> Likewise... etc etc etc in other parts below.
> 
> The advantage of this is that you don't need to specify defines for
> mask
> and shift separately... Just use BIT for single bit field or GENMASK
> for multi-bit field and FIELD_GET takes care about masking & shifting.
> Code is more readable...

Yes! Thanks for sharing the tips!

> 
> > +
> > +/** The function parses a 35 bits Parse Graph Key Build with below
> format:
> > + *  BIT 0:	Flag 0 Enable		(kb->flag0_ena)
> > + *  BIT 1-6:	Flag 0 Index		(kb->flag0_idx)
> > + *  BIT 7:	Flag 1 Enable		(kb->flag1_ena)
> > + *  BIT 8-13:	Flag 1 Index		(kb->flag1_idx)
> > + *  BIT 14:	Flag 2 Enable		(kb->flag2_ena)
> > + *  BIT 15-20:	Flag 2 Index		(kb->flag2_idx)
> > + *  BIT 21:	Flag 3 Enable		(kb->flag3_ena)
> > + *  BIT 22-27:	Flag 3 Index		(kb->flag3_idx)
> > + *  BIT 28-34:	ALU Register Index	(kb->alu_reg_idx)
> > + */
> > +static void _ice_imem_pgkb_init(struct ice_pg_keybuilder *kb, u64
> data)
> > +{
> > +	kb->flag0_ena	= !!(data & ICE_PGKB_F0E_M);
> > +	kb->flag0_idx	= (u8)((data >> ICE_PGKB_F0I_S) &
> ICE_PGKB_F0I_M);
> > +	kb->flag1_ena	= !!((data >> ICE_PGKB_F1E_S) &
> ICE_PGKB_F1E_M);
> > +	kb->flag1_idx	= (u8)((data >> ICE_PGKB_F1I_S) &
> ICE_PGKB_F1I_M);
> > +	kb->flag2_ena	= !!((data >> ICE_PGKB_F2E_S) &
> ICE_PGKB_F2E_M);
> > +	kb->flag2_idx	= (u8)((data >> ICE_PGKB_F2I_S) &
> ICE_PGKB_F2I_M);
> > +	kb->flag3_ena	= !!((data >> ICE_PGKB_F3E_S) &
> ICE_PGKB_F3E_M);
> > +	kb->flag3_idx	= (u8)((data >> ICE_PGKB_F3I_S) &
> ICE_PGKB_F3I_M);
> > +	kb->alu_reg_idx	= (u8)((data >> ICE_PGKB_ARI_S) &
> ICE_PGKB_ARI_M);
> > +}
> > +
> > +/** The function parses a 96 bits ALU entry with below format:
> > + *  BIT 0-5:	Opcode			(alu->opc)
> > + *  BIT 6-13:	Source Start		(alu->src_start)
> > + *  BIT 14-18:	Source Length		(alu->src_len)
> > + *  BIT 19:	Shift/Xlate Select	(alu->shift_xlate_select)
> > + *  BIT 20-23:	Shift/Xlate Key		(alu->shift_xlate_key)
> > + *  BIT 24-30:	Source Register ID	(alu->src_reg_id)
> > + *  BIT 31-37:	Dest. Register ID	(alu->dst_reg_id)
> > + *  BIT 38:	Inc0			(alu->inc0)
> > + *  BIT 39:	Inc1			(alu->inc1)
> > + *  BIT 40:41	Protocol Offset Opcode	(alu->proto_offset_opc)
> > + *  BIT 42:49	Protocol Offset		(alu->proto_offset)
> > + *  BIT 50:57	Branch Address		(alu->branch_addr)
> > + *  BIT 58:73	Immediate		(alu->imm)
> > + *  BIT 74	Dedicated Flags Enable	(alu->dedicate_flags_ena)
> > + *  BIT 75:80	Dest. Start		(alu->dst_start)
> > + *  BIT 81:86	Dest. Length		(alu->dst_len)
> > + *  BIT 87	Flags Extract Imm.	(alu->flags_extr_imm)
> > + *  BIT 88:95	Flags Start/Immediate	(alu->flags_start_imm)
> > + */
> > +static void _ice_imem_alu_init(struct ice_alu *alu, u8 *data, u8 off)
> > +{
> > +	u64 d64;
> > +	u8 idd;
> > +
> > +	d64 = *((u64 *)data) >> off;
> > +
> > +	alu->opc		= (enum ice_alu_opcode)(d64 &
> ICE_ALU_OPC_M);
> > +	alu->src_start		= (u8)((d64 >> ICE_ALU_SS_S) &
> ICE_ALU_SS_M);
> > +	alu->src_len		= (u8)((d64 >> ICE_ALU_SL_S) &
> ICE_ALU_SL_M);
> > +	alu->shift_xlate_sel	= !!((d64 >> ICE_ALU_SXS_S) &
> ICE_ALU_SXS_M);
> > +	alu->shift_xlate_key	= (u8)((d64 >> ICE_ALU_SXK_S) &
> ICE_ALU_SXK_M);
> > +	alu->src_reg_id		= (u8)((d64 >> ICE_ALU_SRI_S) &
> ICE_ALU_SRI_M);
> > +	alu->dst_reg_id		= (u8)((d64 >> ICE_ALU_DRI_S) &
> ICE_ALU_DRI_M);
> > +	alu->inc0		= !!((d64 >> ICE_ALU_INC0_S) &
> ICE_ALU_INC0_M);
> > +	alu->inc1		= !!((d64 >> ICE_ALU_INC1_S) &
> ICE_ALU_INC1_M);
> > +	alu->proto_offset_opc	= (u8)((d64 >> ICE_ALU_POO_S) &
> ICE_ALU_POO_M);
> > +	alu->proto_offset	= (u8)((d64 >> ICE_ALU_PO_S) &
> ICE_ALU_PO_M);
> > +
> > +	idd = (ICE_ALU_BA_S + off) / BITS_PER_BYTE;
> > +	off = (ICE_ALU_BA_S + off) % BITS_PER_BYTE;
> > +	d64 = *((u64 *)(&data[idd])) >> off;
> > +
> > +	alu->branch_addr	= (u8)(d64 & ICE_ALU_BA_M);
> > +	off			= ICE_ALU_IMM_S - ICE_ALU_BA_S;
> > +	alu->imm		= (u16)((d64 >> off) &
> ICE_ALU_IMM_M);
> > +	off			= ICE_ALU_DFE_S - ICE_ALU_BA_S;
> > +	alu->dedicate_flags_ena	= !!((d64 >> off) &
> ICE_ALU_DFE_M);
> > +	off			= ICE_ALU_DS_S - ICE_ALU_BA_S;
> > +	alu->dst_start		= (u8)((d64 >> off) & ICE_ALU_DS_M);
> > +	off			= ICE_ALU_DL_S - ICE_ALU_BA_S;
> > +	alu->dst_len		= (u8)((d64 >> off) & ICE_ALU_DL_M);
> > +	off			= ICE_ALU_FEI_S - ICE_ALU_BA_S;
> > +	alu->flags_extr_imm	= !!((d64 >> off) & ICE_ALU_FEI_M);
> > +	off			= ICE_ALU_FSI_S - ICE_ALU_BA_S;
> > +	alu->flags_start_imm	= (u8)((d64 >> off) & ICE_ALU_FSI_M);
> > +}
> > +
> > +/** The function parses a 384 bits IMEM entry with below format:
> > + *  BIT 0-3:	Boost Main		(ii->b_m)
> > + *  BIT 4-13:	Boost Key Build		(ii->b_kb)
> > + *  BIT 14-15:	PG Priority		(ii->pg)
> > + *  BIT 16-33:	Next Proto Key Build	(ii->np_kb)
> > + *  BIT 34-68:	PG Key Build		(ii->pg_kb)
> > + *  BIT 69-164:	ALU0			(ii->alu0)
> > + *  BIT 165-260:ALU1			(ii->alu1)
> > + *  BIT 261-356:ALU2			(ii->alu2)
> > + *  BIT 357-383:Reserved
> > + */
> > +static void _ice_imem_parse_item(struct ice_hw *hw, u16 idx, void
> *item,
> > +				 void *data, int size)
> > +{
> > +	struct ice_imem_item *ii = item;
> > +	u8 *buf = (u8 *)data;
> > +	u8 idd, off;
> > +
> > +	ii->idx = idx;
> > +
> > +	_ice_imem_bm_init(&ii->b_m, *(u8 *)buf);
> > +
> > +	idd = ICE_IMEM_BKB_S / BITS_PER_BYTE;
> > +	off = ICE_IMEM_BKB_S % BITS_PER_BYTE;
> > +	_ice_imem_bkb_init(&ii->b_kb, *((u16 *)(&buf[idd])) >> off);
> > +
> > +	ii->pg_pri = (u8)((*(u16 *)buf >> ICE_IMEM_PGP_S) &
> ICE_IMEM_PGP_M);
> > +
> > +	idd = ICE_IMEM_NPKB_S / BITS_PER_BYTE;
> > +	off = ICE_IMEM_NPKB_S % BITS_PER_BYTE;
> > +	_ice_imem_npkb_init(&ii->np_kb, *((u32 *)(&buf[idd])) >> off);
> > +
> > +	idd = ICE_IMEM_PGKB_S / BITS_PER_BYTE;
> > +	off = ICE_IMEM_PGKB_S % BITS_PER_BYTE;
> > +	_ice_imem_pgkb_init(&ii->pg_kb, *((u64 *)(&buf[idd])) >> off);
> > +
> > +	idd = ICE_IMEM_ALU0_S / BITS_PER_BYTE;
> > +	off = ICE_IMEM_ALU0_S % BITS_PER_BYTE;
> > +	_ice_imem_alu_init(&ii->alu0, &buf[idd], off);
> > +
> > +	idd = ICE_IMEM_ALU1_S / BITS_PER_BYTE;
> > +	off = ICE_IMEM_ALU1_S % BITS_PER_BYTE;
> > +	_ice_imem_alu_init(&ii->alu1, &buf[idd], off);
> > +
> > +	idd = ICE_IMEM_ALU2_S / BITS_PER_BYTE;
> > +	off = ICE_IMEM_ALU2_S % BITS_PER_BYTE;
> > +	_ice_imem_alu_init(&ii->alu2, &buf[idd], off);
> > +
> > +	if (hw->debug_mask & ICE_DBG_PARSER)
> > +		ice_imem_dump(hw, ii);
> > +}
> > +
> > +/**
> > + * ice_imem_table_get - create an imem table
> > + * @hw: pointer to the hardware structure
> > + */
> > +struct ice_imem_item *ice_imem_table_get(struct ice_hw *hw)
> > +{
> > +	return (struct ice_imem_item *)
> > +		ice_parser_create_table(hw, ICE_SID_RXPARSER_IMEM,
> > +					sizeof(struct ice_imem_item),
> > +					ICE_IMEM_TABLE_SIZE,
> > +					ice_parser_sect_item_get,
> > +					_ice_imem_parse_item);
> > +}
> > diff --git a/drivers/net/ethernet/intel/ice/ice_imem.h
> b/drivers/net/ethernet/intel/ice/ice_imem.h
> > new file mode 100644
> > index 000000000000..50861379659e
> > --- /dev/null
> > +++ b/drivers/net/ethernet/intel/ice/ice_imem.h
> > @@ -0,0 +1,217 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +/* Copyright (C) 2018-2023 Intel Corporation */
> > +
> > +#ifndef _ICE_IMEM_H_
> > +#define _ICE_IMEM_H_
> > +
> > +#define ICE_IMEM_TABLE_SIZE	192
> > +
> > +#define ICE_BM_ALU0	BIT(0)
> > +#define ICE_BM_ALU1	BIT(1)
> > +#define ICE_BM_ALU2	BIT(2)
> > +#define ICE_BM_PG	BIT(3)
> > +
> > +struct ice_bst_main {
> > +	bool alu0;
> > +	bool alu1;
> > +	bool alu2;
> > +	bool pg;
> > +};
> > +
> > +#define ICE_BKB_PRIO_S		0
> > +#define ICE_BKB_PRIO_M		BITMAP_MASK(8)
> > +#define ICE_BKB_TSRC_S		8
> > +#define ICE_BKB_TSRC_M		BITMAP_MASK(1)
> > +
> > +struct ice_bst_keybuilder {
> > +	u8 prio;
> > +	bool tsr_ctrl;
> > +};
> > +
> > +#define ICE_NPKB_HV_SIZE	8
> > +
> > +#define ICE_NPKB_OPC_S		0
> > +#define ICE_NPKB_OPC_M		BITMAP_MASK(2)
> > +#define ICE_NPKB_SR0_S		2
> > +#define ICE_NPKB_SR0_M		BITMAP_MASK(8)
> > +#define ICE_NPKB_LR1_S		10
> > +#define ICE_NPKB_LR1_M		BITMAP_MASK(8)
> > +
> > +struct ice_np_keybuilder {
> > +	u8 opc;
> > +	u8 start_reg0;
> > +	u8 len_reg1;
> > +};
> > +
> > +enum ice_np_keybuilder_opcode {
> > +	ICE_NPKB_OPC_EXTRACT	= 0,
> > +	ICE_NPKB_OPC_BUILD	= 1,
> > +	ICE_NPKB_OPC_BYPASS	= 2,
> > +};
> > +
> > +#define ICE_PGKB_F0E_S		0
> > +#define ICE_PGKB_F0E_M		BITMAP_MASK(1)
> > +#define ICE_PGKB_F0I_S		1
> > +#define ICE_PGKB_F0I_M		BITMAP_MASK(6)
> > +#define ICE_PGKB_F1E_S		7
> > +#define ICE_PGKB_F1E_M		BITMAP_MASK(1)
> > +#define ICE_PGKB_F1I_S		8
> > +#define ICE_PGKB_F1I_M		BITMAP_MASK(6)
> > +#define ICE_PGKB_F2E_S		14
> > +#define ICE_PGKB_F2E_M		BITMAP_MASK(1)
> > +#define ICE_PGKB_F2I_S		15
> > +#define ICE_PGKB_F2I_M		BITMAP_MASK(6)
> > +#define ICE_PGKB_F3E_S		21
> > +#define ICE_PGKB_F3E_M		BITMAP_MASK(1)
> > +#define ICE_PGKB_F3I_S		22
> > +#define ICE_PGKB_F3I_M		BITMAP_MASK(6)
> > +#define ICE_PGKB_ARI_S		28
> > +#define ICE_PGKB_ARI_M		BITMAP_MASK(7)
> > +
> > +struct ice_pg_keybuilder {
> > +	bool flag0_ena;
> > +	bool flag1_ena;
> > +	bool flag2_ena;
> > +	bool flag3_ena;
> > +	u8 flag0_idx;
> > +	u8 flag1_idx;
> > +	u8 flag2_idx;
> > +	u8 flag3_idx;
> > +	u8 alu_reg_idx;
> > +};
> > +
> > +enum ice_alu_idx {
> > +	ICE_ALU0_IDX	= 0,
> > +	ICE_ALU1_IDX	= 1,
> > +	ICE_ALU2_IDX	= 2,
> > +};
> > +
> > +enum ice_alu_opcode {
> > +	ICE_ALU_PARK	= 0,
> > +	ICE_ALU_MOV_ADD	= 1,
> > +	ICE_ALU_ADD	= 2,
> > +	ICE_ALU_MOV_AND	= 4,
> > +	ICE_ALU_AND	= 5,
> > +	ICE_ALU_AND_IMM	= 6,
> > +	ICE_ALU_MOV_OR	= 7,
> > +	ICE_ALU_OR	= 8,
> > +	ICE_ALU_MOV_XOR	= 9,
> > +	ICE_ALU_XOR	= 10,
> > +	ICE_ALU_NOP	= 11,
> > +	ICE_ALU_BR	= 12,
> > +	ICE_ALU_BREQ	= 13,
> > +	ICE_ALU_BRNEQ	= 14,
> > +	ICE_ALU_BRGT	= 15,
> > +	ICE_ALU_BRLT	= 16,
> > +	ICE_ALU_BRGEQ	= 17,
> > +	ICE_ALU_BRLEG	= 18,
> > +	ICE_ALU_SETEQ	= 19,
> > +	ICE_ALU_ANDEQ	= 20,
> > +	ICE_ALU_OREQ	= 21,
> > +	ICE_ALU_SETNEQ	= 22,
> > +	ICE_ALU_ANDNEQ	= 23,
> > +	ICE_ALU_ORNEQ	= 24,
> > +	ICE_ALU_SETGT	= 25,
> > +	ICE_ALU_ANDGT	= 26,
> > +	ICE_ALU_ORGT	= 27,
> > +	ICE_ALU_SETLT	= 28,
> > +	ICE_ALU_ANDLT	= 29,
> > +	ICE_ALU_ORLT	= 30,
> > +	ICE_ALU_MOV_SUB	= 31,
> > +	ICE_ALU_SUB	= 32,
> > +	ICE_ALU_INVALID	= 64,
> > +};
> > +
> > +enum ice_proto_off_opcode {
> > +	ICE_PO_OFF_REMAIN	= 0,
> > +	ICE_PO_OFF_HDR_ADD	= 1,
> > +	ICE_PO_OFF_HDR_SUB	= 2,
> > +};
> > +
> > +#define ICE_ALU_REG_SIZE	4
> > +
> > +#define ICE_ALU_OPC_S		0
> > +#define ICE_ALU_OPC_M		BITMAP_MASK(6)
> > +#define ICE_ALU_SS_S		6
> > +#define ICE_ALU_SS_M		BITMAP_MASK(8)
> > +#define ICE_ALU_SL_S		14
> > +#define ICE_ALU_SL_M		BITMAP_MASK(5)
> > +#define ICE_ALU_SXS_S		19
> > +#define ICE_ALU_SXS_M		BITMAP_MASK(1)
> > +#define ICE_ALU_SXK_S		20
> > +#define ICE_ALU_SXK_M		BITMAP_MASK(4)
> > +#define ICE_ALU_SRI_S		24
> > +#define ICE_ALU_SRI_M		BITMAP_MASK(7)
> > +#define ICE_ALU_DRI_S		31
> > +#define ICE_ALU_DRI_M		BITMAP_MASK(7)
> > +#define ICE_ALU_INC0_S		38
> > +#define ICE_ALU_INC0_M		BITMAP_MASK(1)
> > +#define ICE_ALU_INC1_S		39
> > +#define ICE_ALU_INC1_M		BITMAP_MASK(1)
> > +#define ICE_ALU_POO_S		40
> > +#define ICE_ALU_POO_M		BITMAP_MASK(2)
> > +#define ICE_ALU_PO_S		42
> > +#define ICE_ALU_PO_M		BITMAP_MASK(8)
> > +#define ICE_ALU_BA_S		50
> > +#define ICE_ALU_BA_M		BITMAP_MASK(8)
> > +#define ICE_ALU_IMM_S		58
> > +#define ICE_ALU_IMM_M		BITMAP_MASK(16)
> > +#define ICE_ALU_DFE_S		74
> > +#define ICE_ALU_DFE_M		BITMAP_MASK(1)
> > +#define ICE_ALU_DS_S		75
> > +#define ICE_ALU_DS_M		BITMAP_MASK(6)
> > +#define ICE_ALU_DL_S		81
> > +#define ICE_ALU_DL_M		BITMAP_MASK(6)
> > +#define ICE_ALU_FEI_S		87
> > +#define ICE_ALU_FEI_M		BITMAP_MASK(1)
> > +#define ICE_ALU_FSI_S		88
> > +#define ICE_ALU_FSI_M		BITMAP_MASK(8)
> > +
> > +struct ice_alu {
> > +	enum ice_alu_opcode opc;
> > +	u8 src_start;
> > +	u8 src_len;
> > +	bool shift_xlate_sel;
> > +	u8 shift_xlate_key;
> > +	u8 src_reg_id;
> > +	u8 dst_reg_id;
> > +	bool inc0;
> > +	bool inc1;
> > +	u8 proto_offset_opc;
> > +	u8 proto_offset;
> > +	u8 branch_addr;
> > +	u16 imm;
> > +	bool dedicate_flags_ena;
> > +	u8 dst_start;
> > +	u8 dst_len;
> > +	bool flags_extr_imm;
> > +	u8 flags_start_imm;
> > +};
> > +
> > +#define ICE_IMEM_BM_S		0
> > +#define ICE_IMEM_BM_M		BITMAP_MASK(4)
> > +#define ICE_IMEM_BKB_S		4
> > +#define ICE_IMEM_BKB_M		BITMAP_MASK(10)
> > +#define ICE_IMEM_PGP_S		14
> > +#define ICE_IMEM_PGP_M		BITMAP_MASK(2)
> > +#define ICE_IMEM_NPKB_S		16
> > +#define ICE_IMEM_PGKB_S		34
> > +#define ICE_IMEM_ALU0_S		69
> > +#define ICE_IMEM_ALU1_S		165
> > +#define ICE_IMEM_ALU2_S		357
> > +
> > +struct ice_imem_item {
> > +	u16 idx;
> > +	struct ice_bst_main b_m;
> > +	struct ice_bst_keybuilder b_kb;
> > +	u8 pg_pri;
> > +	struct ice_np_keybuilder np_kb;
> > +	struct ice_pg_keybuilder pg_kb;
> > +	struct ice_alu alu0;
> > +	struct ice_alu alu1;
> > +	struct ice_alu alu2;
> > +};
> > +
> > +void ice_imem_dump(struct ice_hw *hw, struct ice_imem_item
> *item);
> > +struct ice_imem_item *ice_imem_table_get(struct ice_hw *hw);
> > +#endif /* _ICE_IMEM_H_ */
> > diff --git a/drivers/net/ethernet/intel/ice/ice_parser.c
> b/drivers/net/ethernet/intel/ice/ice_parser.c
> > index 692ad26ec551..2a543c469fdf 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_parser.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_parser.c
> > @@ -2,6 +2,91 @@
> >   /* Copyright (C) 2018-2023 Intel Corporation */
> >
> >   #include "ice_common.h"
> > +#include "ice_parser_util.h"
> > +
> > +/**
> > + * ice_parser_sect_item_get - parse a item from a section
> > + * @sect_type: section type
> > + * @section: section object
> > + * @index: index of the item to get
> > + * @offset: dummy as prototype of ice_pkg_enum_entry's last
> parameter
> > + */
> > +void *ice_parser_sect_item_get(u32 sect_type, void *section,
> > +			       u32 index, u32 *offset)
> > +{
> > +	size_t data_off = ICE_SEC_DATA_OFFSET;
> > +	struct ice_pkg_sect_hdr *hdr;
> > +	size_t size;
> > +
> > +	if (!section)
> > +		return NULL;
> > +
> > +	switch (sect_type) {
> > +	case ICE_SID_RXPARSER_IMEM:
> > +		size = ICE_SID_RXPARSER_IMEM_ENTRY_SIZE;
> > +		break;
> > +	default:
> > +		return NULL;
> > +	}
> > +
> > +	hdr = section;
> > +	if (index >= le16_to_cpu(hdr->count))
> > +		return NULL;
> > +
> > +	return (u8 *)section + data_off + index * size;
> > +}
> > +
> > +/**
> > + * ice_parser_create_table - create a item table from a section
> > + * @hw: pointer to the hardware structure
> > + * @sect_type: section type
> > + * @item_size: item size in byte
> > + * @length: number of items in the table to create
> > + * @item_get: the function will be parsed to ice_pkg_enum_entry
> > + * @parse_item: the function to parse the item
> > + */
> > +void *ice_parser_create_table(struct ice_hw *hw, u32 sect_type,
> > +			      u32 item_size, u32 length,
> > +			      void *(*item_get)(u32 sect_type, void
> *section,
> > +						u32 index, u32 *offset),
> > +			      void (*parse_item)(struct ice_hw *hw, u16
> idx,
> > +						 void *item, void *data,
> > +						 int size))
> > +{
> > +	struct ice_seg *seg = hw->seg;
> > +	struct ice_pkg_enum state;
> > +	u16 idx = U16_MAX;
> > +	void *table;
> > +	void *data;
> > +
> > +	if (!seg)
> > +		return NULL;
> > +
> > +	table = devm_kzalloc(ice_hw_to_dev(hw), item_size * length,
> > +			     GFP_KERNEL);
> > +	if (!table)
> > +		return NULL;
> > +
> > +	memset(&state, 0, sizeof(state));
> > +	do {
> > +		data = ice_pkg_enum_entry(seg, &state, sect_type,
> NULL,
> > +					  item_get);
> > +		seg = NULL;
> > +		if (data) {
> > +			struct ice_pkg_sect_hdr *hdr =
> > +				(struct ice_pkg_sect_hdr *)state.sect;
> > +
> > +			idx = le16_to_cpu(hdr->offset) +
> state.entry_idx;
> > +			parse_item(hw, idx,
> > +				   (void *)((uintptr_t)table +
> > +					    ((uintptr_t)idx *
> > +					     (uintptr_t)item_size)),
> > +				   data, item_size);
> > +		}
> > +	} while (data);
> > +
> > +	return table;
> > +}
> >
> >   /**
> >    * ice_parser_create - create a parser instance
> > @@ -11,6 +96,7 @@
> >   int ice_parser_create(struct ice_hw *hw, struct ice_parser **psr)
> >   {
> >   	struct ice_parser *p;
> > +	int status;
> >
> >   	p = devm_kzalloc(ice_hw_to_dev(hw), sizeof(struct ice_parser),
> >   			 GFP_KERNEL);
> > @@ -20,8 +106,17 @@ int ice_parser_create(struct ice_hw *hw,
> struct ice_parser **psr)
> >   	p->hw = hw;
> >   	p->rt.psr = p;
> >
> > +	p->imem_table = ice_imem_table_get(hw);
> > +	if (!p->imem_table) {
> > +		status = -EINVAL;
> > +		goto err;
> > +	}
> > +
> >   	*psr = p;
> >   	return 0;
> > +err:
> > +	ice_parser_destroy(p);
> > +	return status;
> >   }
> >
> >   /**
> > @@ -30,5 +125,7 @@ int ice_parser_create(struct ice_hw *hw, struct
> ice_parser **psr)
> >    */
> >   void ice_parser_destroy(struct ice_parser *psr)
> >   {
> > +	devm_kfree(ice_hw_to_dev(psr->hw), psr->imem_table);
> > +
> >   	devm_kfree(ice_hw_to_dev(psr->hw), psr);
> >   }
> > diff --git a/drivers/net/ethernet/intel/ice/ice_parser.h
> b/drivers/net/ethernet/intel/ice/ice_parser.h
> > index c6cd74c6e434..3450830db473 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_parser.h
> > +++ b/drivers/net/ethernet/intel/ice/ice_parser.h
> > @@ -4,8 +4,16 @@
> >   #ifndef _ICE_PARSER_H_
> >   #define _ICE_PARSER_H_
> >
> > +#include "ice_imem.h"
> > +
> > +#define ICE_SEC_DATA_OFFSET				4
> > +#define ICE_SID_RXPARSER_IMEM_ENTRY_SIZE		48
> > +
> >   struct ice_parser {
> >   	struct ice_hw *hw; /* pointer to the hardware structure */
> > +
> > +	/* load data from section ICE_SID_RX_PARSER_IMEM */
> > +	struct ice_imem_item *imem_table;
> >   };
> >
> >   int ice_parser_create(struct ice_hw *hw, struct ice_parser **psr);
> > diff --git a/drivers/net/ethernet/intel/ice/ice_parser_util.h
> b/drivers/net/ethernet/intel/ice/ice_parser_util.h
> > new file mode 100644
> > index 000000000000..6259d3d97b23
> > --- /dev/null
> > +++ b/drivers/net/ethernet/intel/ice/ice_parser_util.h
> > @@ -0,0 +1,24 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +/* Copyright (C) 2018-2023 Intel Corporation */
> > +
> > +#ifndef _ICE_PARSER_UTIL_H_
> > +#define _ICE_PARSER_UTIL_H_
> > +
> > +#include "ice_imem.h"
> > +
> > +struct ice_pkg_sect_hdr {
> > +	__le16 count;
> > +	__le16 offset;
> > +};
> > +
> > +void *ice_parser_sect_item_get(u32 sect_type, void *section,
> > +			       u32 index, u32 *offset);
> > +
> > +void *ice_parser_create_table(struct ice_hw *hw, u32 sect_type,
> > +			      u32 item_size, u32 length,
> > +			      void *(*handler)(u32 sect_type, void
> *section,
> > +					       u32 index, u32 *offset),
> > +			      void (*parse_item)(struct ice_hw *hw, u16
> idx,
> > +						 void *item, void *data,
> > +						 int size));
> > +#endif /* _ICE_PARSER_UTIL_H_ */
> > diff --git a/drivers/net/ethernet/intel/ice/ice_type.h
> b/drivers/net/ethernet/intel/ice/ice_type.h
> > index a09556e57803..fa4336dd55f7 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_type.h
> > +++ b/drivers/net/ethernet/intel/ice/ice_type.h
> > @@ -60,6 +60,7 @@ static inline u32 ice_round_to_num(u32 N, u32
> R)
> >   				 ICE_DBG_AQ_DESC	| \
> >   				 ICE_DBG_AQ_DESC_BUF	| \
> >   				 ICE_DBG_AQ_CMD)
> > +#define ICE_DBG_PARSER		BIT_ULL(28)
> >
> >   #define ICE_DBG_USER		BIT_ULL(31)
> >

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

