Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 865B87A111A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Sep 2023 00:39:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 55842838D3;
	Thu, 14 Sep 2023 22:39:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 55842838D3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694731178;
	bh=+CTkGvnWzI2cyPgSXfh/li3w2QoK9s/TVURO/ImM1vQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dFNefIERz2qti+18YQmkJSUMdJhVZbB9D/ZMOcHFvno6kO9WwFTsULsYd0GO5W+oj
	 fCd7A4AJ8VNM2oYNTwwYGdspUJa5Iz8xUg5VtPoZUYKiKKrgCslhJxRVf547RFPj9Q
	 nS5s2vn7ZmWriKxDsE0gkP1U7BjVtCEVPWoN30JfAzgmD1X2tTiiY/2qMRtadygqBH
	 45HpBlAW//UdQhZ+mLUvLJqKxB76oNu1EbxBDaRSKSk1lTkebrL5DbkVy8L68dDvn4
	 1EM5tF9kNx6LPKS+4sTU7xy4zrzukdNEMrQcmByeMaQm2EudOhTOW8xp25RkQrTGVI
	 JDCOXiG5fX66g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GRfD-3TVIrAo; Thu, 14 Sep 2023 22:39:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2B48F82BD6;
	Thu, 14 Sep 2023 22:39:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2B48F82BD6
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2CB211BF5A4
 for <intel-wired-lan@osuosl.org>; Thu, 14 Sep 2023 22:39:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 07EBC60AC6
 for <intel-wired-lan@osuosl.org>; Thu, 14 Sep 2023 22:39:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 07EBC60AC6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sg29aRqdxcFS for <intel-wired-lan@osuosl.org>;
 Thu, 14 Sep 2023 22:39:31 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0B5C060E80
 for <intel-wired-lan@osuosl.org>; Thu, 14 Sep 2023 22:39:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0B5C060E80
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="410036876"
X-IronPort-AV: E=Sophos;i="6.02,147,1688454000"; d="scan'208";a="410036876"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 15:39:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="810270567"
X-IronPort-AV: E=Sophos;i="6.02,147,1688454000"; d="scan'208";a="810270567"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Sep 2023 15:39:29 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 14 Sep 2023 15:39:29 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 14 Sep 2023 15:39:28 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 14 Sep 2023 15:39:28 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.45) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 14 Sep 2023 15:39:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HkMBU+KlEAPP+EPkkCr47DxEvMXInL2bhIk0XWq9uzyPOxjo+4NDAFD0QiQqVk08GckSxEQIxhrs/e6VfWHOn7R95pnsXZh5xO4Pwj2TNXdUZ+zX+s9f0z9/NFPjv/tnyjM+EHCAsGEmiC1Zce53lYerLNVZMNTjcEZhr98TQytg2XwWjE0my+pMFWqYNNstI8JXwWTu1Xi1V+VZuzgUKqnNGwrrB9iCWAd1AQ6xig6hnwdO9exLpLE3T6ehezb5ZU8brk/S/NWb2bhlH2Ct3kplunu91vGZgUG2std2WE5k/uaQ5HCSyxxuVMyuy4wEGD3B4OL0EpHtgckyke6NGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q8Kz8Goxjd+JbQrRl4OLmdcUlAGGBMQZHvLD9mY1ex8=;
 b=eMD0zKOnmOmD5udmVZudgAeiK/012+cXwa699xBhFQsvLz2ndDxSpW5EP/XYtNm1w3AvygbP3SpUval8vRKospYjsb6/FmIo7EhK3bch2J2es56iKgmKRvLuj1gqLxQYdqjmBzFkI2i6zO3dW1cvVHJxEJVHiTzjWWCfW+0WmDUZb5iUPLYY/KRWbFu7vPL5QQfWdXNq6EQrYIBbqUogg//D+get7s0fvA9TeRXLl/gqyEMpGzcK/V+POFCGe7TkyS8vTCNQyxMVd4tTbfBAOweMI6KuFVsotT6L6gIUt6WTCe7DqvSXPsIoVArZky86tjUazyspT7sSKi+/d4nqWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 by CO1PR11MB4865.namprd11.prod.outlook.com (2603:10b6:303:9c::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.20; Thu, 14 Sep
 2023 22:39:26 +0000
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::5c05:24f1:bd1b:88f8]) by SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::5c05:24f1:bd1b:88f8%4]) with mapi id 15.20.6768.029; Thu, 14 Sep 2023
 22:39:26 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: [PATCH iwl-net v2] igc: Add support for receiving error frames
Thread-Index: AQHZ5frYm4q4/SAWDkualnBrHXuxw7AaxNKAgAAm5NA=
Date: Thu, 14 Sep 2023 22:39:26 +0000
Message-ID: <SJ1PR11MB6180F7ECF5910B4C1C191DCDB8F7A@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <20230913042752.11947-1-muhammad.husaini.zulkifli@intel.com>
 <b8e01dae-73f8-d777-fa22-807353c28e80@intel.com>
In-Reply-To: <b8e01dae-73f8-d777-fa22-807353c28e80@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6180:EE_|CO1PR11MB4865:EE_
x-ms-office365-filtering-correlation-id: 6627ea97-9db3-4423-f3f0-08dbb5737379
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qHZQlDFp3RIEakTmFELm1rUglgJOD+g/s5HWvYuPJCp7u5OGDJHP/xmqCD7k6R6rwk/+1nRgA0blCmtgaGkMeEqQYfNP4Jk3TjtUa0aZPdDcrFZukRlyI0TIYMUcb4A+82oOt4tjgQ4MJU050HQvbZB/hG1psmTJarPqiKxepGnr6k+AUusV4m35tlm9gMn9Vy0jiF6hc+KdvZDaev+Hu5B6FCT9N58CY55kqjue3JLJ+urxF7zaDXv83Bna96yXRfMYOM2fXHlXYazO9SxYgAYrwISzxiQB9SVB2QSyu4oyrbAwG6onE+xgBHs4pzS8qW0P8reYjmQVHSFHCAf0CBouLFOXqDnL6ThOGKotx24X3myojbslhMxO5BeCJBTlnbxWvq1SslY/v9tuFE/q7IanED+wTOMq5a0fTQ58ydDM2vS5YjKbLZcwrv7N+zlNR5z59KYSf9AvUJ9qkMuWJoBAraWouUp7aP9HcLcEjO8wuacY9reKYULiPDiBzxLIKzMT7dI4nKn/ToQHmbHugEyei/U+uHl3hczCrTQwU3f8psne8caFOMoeZst7rUk0SU6fcbnuipFEtzdzBiqPmBHRdDHKii6sU7W4dKMIn4AvU2ve8Ti6ZK0I/WtcftgZ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(136003)(396003)(39860400002)(366004)(376002)(186009)(1800799009)(451199024)(66946007)(64756008)(66446008)(54906003)(316002)(66476007)(76116006)(110136005)(66556008)(26005)(71200400001)(83380400001)(7696005)(53546011)(9686003)(6506007)(33656002)(38100700002)(86362001)(82960400001)(38070700005)(122000001)(478600001)(55016003)(2906002)(5660300002)(41300700001)(4326008)(52536014)(8936002)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QTY0aHI5V1lIYTBSbnV2ZkxyUzZwRUw3ZWxlVWlObUV3dldESkNkL01Ma0NM?=
 =?utf-8?B?R2RHTkhaWFNyNmRaMk9RVzVBeG9NKzZFYnF1UTZ4Nmw5WGp3RjVGNkJiZ0sv?=
 =?utf-8?B?NkpQY1MyamV4dk43SzRvY3VaamZiY0FCWTVqRWR5SEprTXR2MVJrdmt5ckZX?=
 =?utf-8?B?TG1qMnJMOGFKUUcrR0M3UzN3NUVocVEvS0ZxTXlMS0VqMERaVS9aQVY4V3F5?=
 =?utf-8?B?OENJSVludTBaaTVhUm9HZFFCNlF6dldLWVBSbFVjNlVlWlhwU2dqa2pJRm1Y?=
 =?utf-8?B?SW9aSmx5ZEF5ZWFDbGNJQVQwTEprNUZ5ODZBTUZvM1BEWU9aWEhWUjR4N1Bk?=
 =?utf-8?B?RWZST2pxanJQVjczemtpeHk5Ris5a0lLeFBRRFRXZ0wzci9yYTlLQTFVbHIw?=
 =?utf-8?B?eW5WVmdmU00yT3lCTmhJamE4V3VOSHdnaGxQc0xwWW5oMzFNQ0NoQi9GNlA2?=
 =?utf-8?B?d2pZV3FHRXpGQnlITk5IV0dMOGxCRmhKeDl0eTlmd0tRU1pNQkpkeFZqS21N?=
 =?utf-8?B?ajlXODkrVVUwQWU4SmRRY3ZONzZpNHZjSjRpdXF3ZEJOcXA2NmNmS21oclJ2?=
 =?utf-8?B?c29EUmdpY0tFQVhIM1FFNkhwTXZXOWFlTDdrR2VndkVzSGtXNXplRmp4OHRW?=
 =?utf-8?B?YWxGUHRkU05yYkdPejhxZGpvcHRPekxFUDVpbWJ6QllkN3U5amRBSDRiWXVK?=
 =?utf-8?B?cmx5YkxCaExOSEtvcVlPN01qN1hJYkhEc1pWalRkUDZ0RENqVFQzb05weERw?=
 =?utf-8?B?TnN0RjB5blh4OHBENFpicVlETUdCQlVnZ1lwN01kKzRlRkhwdnZVYTJKa081?=
 =?utf-8?B?VTlSS1lRTXhkQXRZYUtkZndycWtLZFgySDhta1k2Z2NydkJtOEpYMURnMWFu?=
 =?utf-8?B?L2M0Wk9PZFdhZkVieFhNT2tDbGF4d0l1NTM2TVNvR1VWK2lKSjNabU90WTZz?=
 =?utf-8?B?S3NMZ1FvSHNFYU14ZVY0Rk8yVkxjQ1NyaUZLUE40djVmeDRSbEZBeU4wejdW?=
 =?utf-8?B?M0dKWnh3ZC9SVEtqd0I4T2xTRkdaVTNFOHVkZnFjaW43MzY2M1pabXJHU0RJ?=
 =?utf-8?B?ZG54OGVWclRkYk8wSjNYQm5WbnRCSXlMUE12RTVFamZBR1hlZll1NzU1eVlm?=
 =?utf-8?B?QWtDSHR3cWlxT012SmNFdEttYUl1dzZjcCthZWNCdHlFMGRoQitFL3FIZmtE?=
 =?utf-8?B?QmNMVWlKVmlZc3JGZ1pueEsycDNINFMwcWRiQmVjUUZEdllSbVNoQkUrZUtD?=
 =?utf-8?B?akZmQkY0WDA3cC9BaWJ1dkM2VDJjcW5pcG81aVpSWHhGYTJIYUJtQnltbDkx?=
 =?utf-8?B?dG80VjhkTW1CTzdoMnNyRGxMWUh2Qyt2WXVvWlR3a1c2ZFc2ZjBBT2pzV1p4?=
 =?utf-8?B?bGlZUVduZ1lSTC9tMDlxbmZNMVBhNEI1TkZjSTg1MHI1VWF5MG9FOUZPZXpP?=
 =?utf-8?B?NjFvdVNXb0d0TWJMTXl0cStjQUphcDN4SHhIaGJ4aHJBY1pvRHZxaTd2VVZP?=
 =?utf-8?B?a1h5cDVWVDFGNDEzUnhYSkh3M2JiWks1bGVjV3RJZGV2RVJ4ZEhPNFdqU1B4?=
 =?utf-8?B?MEREQkl3ZEdVdjFuRElrUGwvUEFZSGRyaDdTamVtTmp4OXB4N3lwaWZCK2l0?=
 =?utf-8?B?UWdvQUl5YUEwMDVkdFhRU1VpQTZJbGcvWTlHVzNybnNWdEtxazcyVEV4Yk93?=
 =?utf-8?B?ZUIwNStPN0ZrWjR4bzg5aFlzUmhyVHhBa0hkT1N6T3VsL04ySGYzcnZ5b0Nt?=
 =?utf-8?B?am5kbGhiWDVtL2p2QzMvelU3TkpxYTYxMHR0QzErd3JqSFJFNGtaZzFQa3Vr?=
 =?utf-8?B?SkN4ZmtLdzlhTlFtKzIvTnhqTnIvSTBvUlRmdnY2cFJCYk9iN2JZOTZEd0g2?=
 =?utf-8?B?VXhkbzRSMHNOQ2dxVzYwYk8raTZnbEJnNmtoajBjVHkwWXBrR3NKTDBzenNw?=
 =?utf-8?B?djlsQjdxWlc4bUgrdTdkRXVOU3V5Z2hnV2ErWnlmTjRpeWp1ZGdpZkNROEhq?=
 =?utf-8?B?UDU5eVlpSUVrUjQ4a28zR20xTXlkalFQZ2p6QWhIem1naXA3REZNSVFwNkt6?=
 =?utf-8?B?M1QycEU4QmNSWGR2bWJJaUp0K0VsdktaVWxYeE5pVkhjWlpNL2p6S0ZBZnB6?=
 =?utf-8?B?aHR4by9Pd3A2bGtObUpSWDlDcFJONnB4S0tIRE5ubkNST2RaTmlQaGFnNGdB?=
 =?utf-8?Q?YGqpffCdqvzCOi0p9amvjfc=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6627ea97-9db3-4423-f3f0-08dbb5737379
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Sep 2023 22:39:26.5839 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RoASNrBtdl/E+CM4maLnl2XldHM2nLZ40zp7UXfXlbENn+r7xIg1s28gpxiao+Fb01RWoOcM33TgUhLO/65qw+eY0qbzn3iFnXth7IAjyozubV0jOex9HFRR/sBGvBIY
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4865
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694731171; x=1726267171;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=q8Kz8Goxjd+JbQrRl4OLmdcUlAGGBMQZHvLD9mY1ex8=;
 b=Sv5TDglSjbx/LKQuTgGR81VsVR2QHQ9l/L6dHmuG+X/GrOj9dwg03msf
 ZqHV8P0vNKy6hMVp/Rh8+gQj73BJ/h/4VceiFmVfc1EoeseL3ewWVdqyS
 cRowqA+r8xumkm6cbjc4HshdfRxDQAIroEuwou4c3G5NzO9763qLc0I2l
 SpXmVe7pBFmmwqp1cPh4CX+WZ7tBQr51Fnzc1Fdcy81+T3chu95Hgs6n+
 1ef2QLFLqGHj17Nk4c+sIkWt+ZhHgK9WsvaOX8voMk7UyECyi19I++9SB
 40LsdsSwhhYTuA3sQ2ZALxz4gG8CZK5Zwqg+Xma9GijlFLt6DdIWR2WVs
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Sv5TDglS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] igc: Add support for
 receiving error frames
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
Cc: "husainizulkifli@gmail.com" <husainizulkifli@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Anthony,

> -----Original Message-----
> From: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Sent: Friday, 15 September, 2023 4:17 AM
> To: Zulkifli, Muhammad Husaini <muhammad.husaini.zulkifli@intel.com>;
> intel-wired-lan@osuosl.org
> Cc: Neftin, Sasha <sasha.neftin@intel.com>; husainizulkifli@gmail.com;
> naamax.meir@linux.intel.com
> Subject: Re: [PATCH iwl-net v2] igc: Add support for receiving error frames
> 
> 
> 
> On 9/12/2023 9:27 PM, Muhammad Husaini Zulkifli wrote:
> > This patch enables the NIC to (optionally, via ethtool) receives the
> > errored packet frames as it was not provided to user before.
> >
> > According to Software User Manual Chapter 8.9.1, once Bit(2) is set in
> > Receive Control Register (RCTL), bad packets will be received and sent
> > to host memory. Receive descriptor error field (RDESC.ERRORS) shall
> > have the corresponding bit to signal the driver that packets is
> > errored.
> >
> > By turning on NETIF_F_RXALL as well, all broadcast packets will be
> > received and any flow control packets that aren't recognised will be
> > sent to the host.
> >
> > How to test:
> > User can set to receive all frames using ethtool command.
> >
> > Example command:
> > ethtool -K <interface> rx-all on
> >
> > Previous output:
> >
> > ethtool -K enp1s0 rx-all on
> > Actual changes:
> > rx-all: off [requested on]
> > Could not change any device features
> >
> > New output:
> >
> > ethtool -K enp1s0 rx-all on
> > ethtool -k enp1s0 | grep rx-all
> > rx-all: on
> >
> > Fixes: 13b5b7fd6a4a ("igc: Add support for Tx/Rx rings")
> 
> What's the bug this is fixing? Seems like it's adding new functionality.

The functionality is added with this ("igc: Add support for Tx/Rx rings").
But it seems like in-complete due to missing of " netdev->hw_features |= NETIF_F_RXALL;"
changes. We could not enable "rx-all" if this hw_features is not set.

> 
> > Signed-off-by: Muhammad Husaini Zulkifli
> > <muhammad.husaini.zulkifli@intel.com>
> > Reviewed-by: Sasha Neftin <sasha.neftin@intel.com>
> > ---
> > V1 -> V2: Fix typo in commit message
> > ---
> >   drivers/net/ethernet/intel/igc/igc_main.c | 1 +
> >   1 file changed, 1 insertion(+)
> >
> > diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
> > b/drivers/net/ethernet/intel/igc/igc_main.c
> > index 98de34d0ce07..e3f4b3e95cd0 100644
> > --- a/drivers/net/ethernet/intel/igc/igc_main.c
> > +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> > @@ -6850,6 +6850,7 @@ static int igc_probe(struct pci_dev *pdev,
> >   	netdev->hw_features |= NETIF_F_NTUPLE;
> >   	netdev->hw_features |= NETIF_F_HW_VLAN_CTAG_TX;
> >   	netdev->hw_features |= NETIF_F_HW_VLAN_CTAG_RX;
> > +	netdev->hw_features |= NETIF_F_RXALL;
> 
> I questioned that this was all that was needed, however, looking at the driver,
> it looks like the the rest of the implementation is already present. It would be
> good to explain/add to the commit message.

I think it was mentioned in first paragraph in the commit message where I mentioned this was not
provided to user before.

Thanks,
Husaini

> 
> >   	netdev->hw_features |= netdev->features;
> >
> >   	netdev->features |= NETIF_F_HIGHDMA;
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
