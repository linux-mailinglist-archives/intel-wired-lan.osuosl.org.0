Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EF1269B851
	for <lists+intel-wired-lan@lfdr.de>; Sat, 18 Feb 2023 07:19:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DD31041C4D;
	Sat, 18 Feb 2023 06:19:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DD31041C4D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676701189;
	bh=mIU2dRyA3pdAlEmNwix8aeVHrRkT/uM8GZTaL8nBfCg=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pS2qwtrvB2iRX374cVlTbphbuKolKBO5PHd7pYGpVEtw1eLcRslxE3p7X1LfAq/Wm
	 j9xSAFqLTRHxPfS0YdsuqmvCS190lY5BB+jOH4bHnt6HgQ64w8eIi504Zcb0tbvzQV
	 +IO2B1cTPbA/N8bHJsKAgSOw1DWlm9wTIMwRZV5HX1M6fHvNr51HHoVjdgZCGTNre9
	 2oJZX9qcDNH5KL3ePg5X5IWWQ5SST7U6mUpcJtVUOfVq2Ty82JLVXD3qFlGgYgn4tQ
	 S18L/j0sLTu07Sguiv7/0dV97PAP+L8MYLNxZnonnTw7/Buqr32O0Bu/wCpZJt2lkC
	 J0/MFH9q8JspQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YWmXICVvQgJy; Sat, 18 Feb 2023 06:19:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 739E54189A;
	Sat, 18 Feb 2023 06:19:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 739E54189A
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1B12D1BF3D9
 for <intel-wired-lan@osuosl.org>; Sat, 18 Feb 2023 06:19:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E723F4189A
 for <intel-wired-lan@osuosl.org>; Sat, 18 Feb 2023 06:19:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E723F4189A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QlLdVDOJ_KAY for <intel-wired-lan@osuosl.org>;
 Sat, 18 Feb 2023 06:19:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E486841897
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E486841897
 for <intel-wired-lan@osuosl.org>; Sat, 18 Feb 2023 06:19:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10624"; a="333508880"
X-IronPort-AV: E=Sophos;i="5.97,306,1669104000"; d="scan'208";a="333508880"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2023 22:19:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10624"; a="759642571"
X-IronPort-AV: E=Sophos;i="5.97,306,1669104000"; d="scan'208";a="759642571"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP; 17 Feb 2023 22:19:39 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 17 Feb 2023 22:19:38 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 17 Feb 2023 22:19:38 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 17 Feb 2023 22:19:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YbUgnNkrBx4QntBb91e9DC7810J2SHOKO3xJGsZ/kYVp/2+r/o0n7TLVNbSfouCxgf1zahuI5rOltK1hEt7oYGe2XglkKDV/nFAR8pF4dzzPNUv0gWhV0Y9467vM+n+MB67H5NBLiWLf/b3xKNO5ASYE5s4jMpkXsaLjX5+AKQ12Hr8Vm/angw0SGhnP5UqhXCUqBzFP+g2+oEmIQMKr/EuAGL7oeQ1dJLyh8YOOzJWTBuTK4gpS4BrHSk7xyQk7Dt3fFy2Ms+M/sjwJ7LduSRO1JjUUw6arXT1ZGM3Jj7nlPDSiK2rHKUwXNIv+4RsZdryFH2GXXbFA98qBmr9cuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=86A6lkJjFdPDIYgMk74tUgtAaPWOVh0kjKlwA93VBtE=;
 b=G0rwMCAEj9heMpHz+CVoxKApmYLoMyI4ELVtdku+fppXDyN35TX3EZa8SoAlYgsX7sGWaUjVodt1JS2f9WAR3ALNiFLpZdtSDgN590JN7T2pwjg08Gx8F+uBSaFpcgrn4BOpouLlCgnfESwzP29+10MVFWX7EUkmzwPsPpABU1jfrZGPn/gVsAxupj0pnTqUQjFM4vLgX00S3LTmHBnDqjHomU8MgAy0NBXKfkWT/Ix+4n7n/pHISxATkPjIlY2ifr28eS2ECkO7qoIOVgYLTzlqXQl8bVa8OX6kog5oTh3bphg1uPFM6IDHrs5FXMPFS3XcU1bZfwDlJxhOQ+efMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 by PH8PR11MB7047.namprd11.prod.outlook.com (2603:10b6:510:215::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.17; Sat, 18 Feb
 2023 06:19:32 +0000
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::9d60:bea:aa32:b02d]) by SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::9d60:bea:aa32:b02d%5]) with mapi id 15.20.6111.018; Sat, 18 Feb 2023
 06:19:31 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>, "Gomes, Vinicius"
 <vinicius.gomes@intel.com>, Jakub Kicinski <kuba@kernel.org>
Thread-Topic: [PATCH net-next v1] igc: Add transmission overrun counter
Thread-Index: AQHZO3i6rghUrM0IQkqGGpsrQCGUlq7QbuuAgABFltCAA5V0oA==
Date: Sat, 18 Feb 2023 06:19:31 +0000
Message-ID: <SJ1PR11MB618086DCCAE226FC19FDCF54B8A69@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <20230208044536.10961-1-muhammad.husaini.zulkifli@intel.com>
 <9b1b9cdd-eb6f-183a-8e3f-9116a03f27a8@intel.com>
 <SJ1PR11MB6180D0D59EB01AD1E8FE4991B8A39@SJ1PR11MB6180.namprd11.prod.outlook.com>
In-Reply-To: <SJ1PR11MB6180D0D59EB01AD1E8FE4991B8A39@SJ1PR11MB6180.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6180:EE_|PH8PR11MB7047:EE_
x-ms-office365-filtering-correlation-id: 2677d636-9670-4ff9-7837-08db11781900
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: q6IsObKDVcwl5uZ4zjXSH6T8cuPnGVyLfumzkdKS73aECHX08+xs02hut11t7bK9vjSAhlOm1GSqc46rilM/rxo6yCdGJtjA1cLaWRRGBxCGlfk1+dRtzcek+UI1jJQOa0X2/oRftkWgXkNq7KKBlZZ+sXRHEM7SbB+qPKCCvDQ3/maK7fGgjEbRRkCktjgZWN2HfYpqLgAp1FHL23J6rfodeMBK6lANJSMIHxurYp8Du4tIUvTk0AfyQ4GhfuMsMimKAB5mLk6NW3DBSHQYiP8jU9puBqpJ/uPGR8qtbotWYvX7mg9G5VvltPOIZj/VkEsGH0Gz4A656+8LRXZg5VEUjAblm3zGUrkDv3UWWOOjtnRMywAaGKMeDlBZP3Zsuxmrg68zRlxSD+ZJ0tRtYAPN/bxg/hrEpgu5y09cq3w0sbOzCUZz0uNHU0iStDaQjzmNg0uxVXWC5Z5gk0H9oxvTV0Rvuqaou8RR8Oe563030IO2Pc1V8iMvxKShFXlkrGC9ZmtBWhRambMIvTPkb2JDOOOZIOOsmici9J/Z8JyW0NkPbI+kHiEFUmTvaJddbCfkyc8e/UoJGlRKY+U22pxzoG+oWr6bWVKurV4ij4gOtvFVPyyNKMi9Jm0Oy6I1LwpOZfHkbbWchQLZ3/gDfsO9ieYAk/4xY7w7DBM4Kdq4l8L8WyuxTkZgdAG5D5zA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(376002)(396003)(346002)(39860400002)(366004)(451199018)(33656002)(122000001)(38100700002)(53546011)(2906002)(26005)(6506007)(9686003)(316002)(86362001)(66556008)(4326008)(66946007)(8676002)(66446008)(66476007)(64756008)(41300700001)(76116006)(8936002)(52536014)(5660300002)(478600001)(966005)(38070700005)(82960400001)(71200400001)(55016003)(110136005)(54906003)(7696005)(186003)(83380400001)(45080400002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RzBGbm1Qa1lybDhPRnFHWlV3YUNaYWlqcEdoMTJEa0V6K1BoWlFUYkhib1ZT?=
 =?utf-8?B?Ris0cUNxS29sZDU2MjVid0t1aWNuM21lQThNWUxuMy9QcEcyT3R3ZGZPbGhN?=
 =?utf-8?B?VFRDcC9QYzE2TlRNY2lvUVlETjN2anFWSzNNa3FvVkF6K2p0VFRPOTlFWThP?=
 =?utf-8?B?T3R2cXJqOFhDcDczMk9VN3QrenlOZFZzdW9UQWZ0NjdWWGoxRmxzaXJicG9U?=
 =?utf-8?B?QVdMd1RkdndEWmNlY1o2VmdBTVZDQktIZE8zNjVidHVTQXIyVVQvcG1UOExK?=
 =?utf-8?B?WGhLMEhYcXZ6bFJueTByYWhCc1ozT3NtbmZCT3RNTVVPNHFIRk54NzdwcENx?=
 =?utf-8?B?amYvOW1kbnpWNmNLS1d2akgyWUtmcXRjekhLVEk5TW5ORUpOL3FGUlBrckd3?=
 =?utf-8?B?SkE0dzM3YTRiNlJHcmNDWjBQM0hmL1FuZkJ0SzB2WjduR0taU25taDdpMnA5?=
 =?utf-8?B?bkExelYxZXR2V2t0cml1b3VhZUU2UGhQbGRUZDFyMEU2eWd4ZVJoU0NHMWhB?=
 =?utf-8?B?aVdkNTg4UkpDemZQMXFPcDdNU3VSVzNmOEtPZEhXWlBTVFJya0JKUk5rMWF4?=
 =?utf-8?B?alpUeTdDOTRUOEpsVlhGOUU5UkVmb1hxQ0w0YUx0ZHdEU2dRYTI0dzN2Tkl0?=
 =?utf-8?B?d1kyTTVnWHAzaUZnSk01cW9IaDMyRHRTSzlRcVNxSHdFZTdyY1hOYXMxWXpM?=
 =?utf-8?B?N3VRRDhqdEt3b1NZM3JxQnpJSDA4KzQrY1Z3NWpScEQ5T1lCSnZOcUxuVnZm?=
 =?utf-8?B?SFBXdm1DcHRGdDlQZXZsS1BobVZOUHIxbDR6bDJWSXZTVHNRbjBXcVQzY1RE?=
 =?utf-8?B?S28rS0tPWkh6a2dud3NtV1JPeTUyL1J1WVdINjYreWhZc1Nsd0I0N3JJWlZX?=
 =?utf-8?B?WXk1REdpZW5pWElWNUJQWlFwakxVY2NZc0M3cCtTczZaclRZTnErMlQ4WmVr?=
 =?utf-8?B?TThEUVJBMGlmMlcyYjNCUW9iejQ5ZkJYWExNN3J5QlNvakdNMXBCWWVCdjNI?=
 =?utf-8?B?ekFUQ2IrcUNyZnZkSzV3MkJHeVUvVDBHT0s1TDhHeDJkeHMyaGMySnhveGs4?=
 =?utf-8?B?UUVhT0w1RzhQRlBPTTV6dlFkQ3FYam1UMU14UXZYWFFTcDFCeklXRTk2TUps?=
 =?utf-8?B?UXlCWkh5ZlQ1cEx0N0l3aUl6cjdZTWxKUnJqckE1ZXJXUWRSYkMwdEc4SXAr?=
 =?utf-8?B?cEQySCtsaWNldEVIVGRJK1FlcjZoZWNOUE45WktsY2ZwdzRndit6aWZsOW1j?=
 =?utf-8?B?QTlEaHJHaC94SGFaUDRLMnN1RFBrRk8za3VHVURCQ1pDQXVpK25TMkZ0NjYw?=
 =?utf-8?B?ZmN5OHltZW1yM2dna0tka3dWY0VaVGk5MmtIb2IwVE5zYVZtZlhta1VMVjFh?=
 =?utf-8?B?ODVPYzIvbS9ydWZPVzRvMWh5cHB4U0U5d2NsV2xiSmdIN2tweElIQWlYRVlu?=
 =?utf-8?B?SHB2cGxxU1NCeE1kTXgxUEpwaElNSEpkVTdreG9EVWx4ejlrWTd0YTdEeG1Z?=
 =?utf-8?B?Q0h3SVhwbXZZQkdrUUZXeEY2VVpUaWdiKzBlRFVqKzF0aVBOTzFCS01ZblFJ?=
 =?utf-8?B?eDN6R0ZuMmNBWnhZMk1KV3FZWWNSS0U3V2tkLzhqZk1YK3VGMUNoNTMzbmZu?=
 =?utf-8?B?ZE9EM1RHTkcydzg4WDJXaDBxTTVOYTJpbWtDOGswZzBjVU9wckxheTdOa3lO?=
 =?utf-8?B?YkpXd1ZHOUtSbUxLOTZ5WjBHR2xsb254cGRxaVBSVVFiNTZqemNEQk4zTHVL?=
 =?utf-8?B?Rkpjb0RCb2h6RExiSGlkTVB3aHlOSFlxR1hKQ2ZSN0pYUjdNVGJ6OUNEc3Fz?=
 =?utf-8?B?WTBpbXVsVkc1YW5oYi9NdmhYVDJUMnNzeWYvcXljbVhMREdicVhGTVg2T09Q?=
 =?utf-8?B?UXJncEIzalRUcTBzaXNSYW1IaUxwQnU3MmtLd0RldENndGhUcnVEUTRneDk1?=
 =?utf-8?B?aERNL2dZak14RGI4U2hKOUkzeE1XcnlXa2tYZks2bU1PZ0Jvam9zT3Z2U1dX?=
 =?utf-8?B?T0pGMzYzTGFBcHY4TnhZTUo2cE1TQTJyK3pJRTlDK3RtVnpuVGNDTTEzREpk?=
 =?utf-8?B?ZXN2WTZkZW5pTjlwTllaL2N3WnUzT2hoNXB2dTNlcVdJY2xTWDdhNmZDZXZR?=
 =?utf-8?B?STQxd3BWMHFpTUpiNDB0ak1FcjNKR0dZVFp5eXNRQnU1bFh6eWVVM2ovdnpw?=
 =?utf-8?Q?4e5JzjmvwmK1Y9alghsRotU=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2677d636-9670-4ff9-7837-08db11781900
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Feb 2023 06:19:31.5641 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hgfuP9yhGsnLDsitdK5/9C7kU33LYkPjkacUww7OwB/O/4G749pGFmpqf3nNZIUZRgPe4WEXzB3m++arg89r+eTcma/zgRsa4ZwWk4FAljf8vZzgOBAZHLihN2FDbgz7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7047
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676701181; x=1708237181;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=86A6lkJjFdPDIYgMk74tUgtAaPWOVh0kjKlwA93VBtE=;
 b=KCtIrfa9BpD2PZVY403xOiKTZ2sqTiB3SvHk3EkC2KLQe7UsqWiIQltn
 JsXQjO9pD7YWP3MAFtrzfOw58lfC3bSWdexiF5eVCFLURkS4sbfQ07pp0
 DVddQoMa4FHjeC2zbM+E35iZsWDiRsblU4abOxJ6GxJvGxTWiIFYp8BpJ
 XouM9/pfNi5CMxVwyLgP30bhPTnyQq1EFbR01/mVl0xZkE6zbOe+A0fIK
 PX+FV5a0m2VMc00tc/8JeqGPoN3GWe5RlXFyuK1CXZHZpp/ctMXC4mjcb
 8PV8ngSKE0GDtXNbjK9LJ3BdF0uQp09mSAq3MbUPJCtKpBt8AbZZuyh0p
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KCtIrfa9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] igc: Add transmission
 overrun counter
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

Hi Jakub and Vinicius,

I would appreciate any early feedback or thoughts on this patch submission.

History of the discussion:
https://lore.kernel.org/intel-wired-lan/SJ1PR11MB6180D0D59EB01AD1E8FE4991B8A39@SJ1PR11MB6180.namprd11.prod.outlook.com/T/#r8db595a7b40067d2315def91d41c9695454d6c9f

Thanks

> -----Original Message-----
> From: Zulkifli, Muhammad Husaini
> Sent: Thursday, 16 February, 2023 7:41 AM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; intel-wired-
> lan@osuosl.org; Gomes, Vinicius <vinicius.gomes@intel.com>
> Cc: Neftin, Sasha <sasha.neftin@intel.com>; naamax.meir@linux.intel.com
> Subject: RE: [PATCH net-next v1] igc: Add transmission overrun counter
> 
> HI Tony,
> 
> > -----Original Message-----
> > From: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> > Sent: Thursday, 16 February, 2023 3:23 AM
> > To: Zulkifli, Muhammad Husaini <muhammad.husaini.zulkifli@intel.com>;
> > intel-wired-lan@osuosl.org; Gomes, Vinicius <vinicius.gomes@intel.com>
> > Cc: Neftin, Sasha <sasha.neftin@intel.com>;
> > naamax.meir@linux.intel.com
> > Subject: Re: [PATCH net-next v1] igc: Add transmission overrun counter
> >
> >
> >
> > On 2/7/2023 8:45 PM, Muhammad Husaini Zulkifli wrote:
> > > Add transmission overrun counter as per defined by IEEE 802.1Q Bridges.
> > > The Intel Discrete I225/6 does not have HW counters that can
> > > determine whether a packet is still being transmitted after the gate has
> been closed.
> > > But I225/I226 have a mechanism to not transmit a packets if the gate
> > > open time is insufficient for the packet transmission by setting the
> > > Strict_End bit. Software counters have been created for each queues
> > > in response to the IEEE specification. Thus, we can assume that
> > > overrun counter is always "0" when setting this bit.
> >
> > Can you explain why this is needed? It doesn't seem to make sense to
> > add a driver counter to always report 0. If it's needed for spec or
> > tools, I would think it should be added to something higher like
> > netdev stats, not driver specific stats.
> 
> We need this as part of AVNU Certification Test Case.
> The reason why value always reported as zero is because we set the
> IGC_TXQCTL_STRICT_END bit. I225/6 does not have HW counter to really
> Know if the packet is outside the qbv windows even though we unset the
> IGC_TXQCTL_STRICT_END. It much simpler to just add this counter as part of
> Driver code as of now and pass through the igc_stats where it can be show
> in Using ethtool command as well.
> 
> >
> > > User can get this counter by using below command:
> > > "ethtool -S <interface> | grep qbv_tx_overrun"
> > >
> > > Signed-off-by: Muhammad Husaini Zulkifli
> > > <muhammad.husaini.zulkifli@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
