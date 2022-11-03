Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8142E617484
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Nov 2022 03:52:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C374281E68;
	Thu,  3 Nov 2022 02:52:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C374281E68
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667443962;
	bh=PxMPaETK8+FlnPsCGTHTFUsY+TY8mB2AZ7tWBbd/3as=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0GC6MQgRvQ3NRw8RmaDg6wbOZtDubgyoDCVqbgsMcaB0zC4gSrtB7OkQbY0xaxgvM
	 kFCKn2KfPd1vAYLqmCMh7CMa51qnD0QPMLxZJhve3BWTMzhUXhuUabQwBojnkeEp7D
	 5owXPh7ye9bJWoTadQFIWkI26kgOp2rPvVpI++3c0xTKBKq+MS7700mTnymbS0yCL4
	 0nI0tBXix5MJNkuC240nqH4n2nDWrJqbvaL69xo4Qm0RFZNYKhs5fLGl7ahvwawu/p
	 WgDozDg+4LaZeJkF4VfM+hiM/WSFdcOnPBNE8nzje3RaBuW492bjKz61au4Vsa+gay
	 s6XjFm1ZFcZIg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XeH8X6QUdcjT; Thu,  3 Nov 2022 02:52:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BFFC081E67;
	Thu,  3 Nov 2022 02:52:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BFFC081E67
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 07D301BF966
 for <intel-wired-lan@osuosl.org>; Thu,  3 Nov 2022 02:52:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D584260E6B
 for <intel-wired-lan@osuosl.org>; Thu,  3 Nov 2022 02:52:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D584260E6B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pD28caOGLWdl for <intel-wired-lan@osuosl.org>;
 Thu,  3 Nov 2022 02:52:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 20F2160E4C
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 20F2160E4C
 for <intel-wired-lan@osuosl.org>; Thu,  3 Nov 2022 02:52:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="336260786"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="336260786"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 19:52:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="665792751"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="665792751"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 02 Nov 2022 19:52:27 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 2 Nov 2022 19:52:26 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 2 Nov 2022 19:52:26 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 2 Nov 2022 19:52:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fGRafIhkuhop+dNghaJLX6kqctLZ6YshMpVX5STL5kQTR+l33ICjB6qNjumUEeuICau0JFbHi2m66fdm2MIWmSHA2YOE3agSWmZn4qBGkJHk3CBcdM19a2D9a9lmbaUqx4pAgFaHE2TYk4LtRmURKz+JHUT84XIytYgt2+oJG7c24gjjVuGSmrGOB3ZdIAvmZ9OlN9rZxp8eBVw2BAz9gL0z3KLH+ABTdcPae1KwnyM2b1tZhzRl5yq3HOTLBT3fVF5SV7UKre54mJFA9HC1qYWSWoAscBt0QSchqwJ+YcG2X4oDwI2OJXwjQ1hh/aPT6gYLDPfKTH6VlEyrzy0Bwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Xv1qLL53iGdHM/2cXF/muwxvK6lPtwnTQVvyapOrcqw=;
 b=K+5miy2pjIuErCfWKo7NiZWPbanQ2ckr+d69cmDpB49T3QGgHj6yE5lGdmrHCZ+VLbLbEynXTMKCzlbcruOXH7pZ57iLXFM/63iaEQOGmr0eqCobsqOHCTNQkwc0eVpdd5npOcBaQDeITu6nKy0bkzkJOOYApaHbcMN31heEFrUvOwl5SPhQE6M02j5XInTa+BVY2FikMFHsTCPeiHceYpUyH//y+2z9hoqSoxCFzq59saDYrWxhjGfW2wORGNUpM+SiljT21LT+6A7Ei+jixO8151mFYbLPIdiyV2aOc5qkPEZXbslO3lk+Uccrg8o2wRHUjrxcdLTdf2qHRgfQXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 by CO6PR11MB5571.namprd11.prod.outlook.com (2603:10b6:5:35f::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.20; Thu, 3 Nov
 2022 02:52:24 +0000
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::4a7c:e44b:be11:7c5]) by SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::4a7c:e44b:be11:7c5%3]) with mapi id 15.20.5769.019; Thu, 3 Nov 2022
 02:52:23 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2] igc: Enhance Qbv scheduling by
 using first flag bit
Thread-Index: AQHY6HrFkWrFxNy60E6mPnZoW8jiDa4sNn8AgABWXHA=
Date: Thu, 3 Nov 2022 02:52:23 +0000
Message-ID: <SJ1PR11MB6180F0C0C2F4A2A01440F3E3B8389@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <20221025140307.2330-1-muhammad.husaini.zulkifli@intel.com>
 <8a1dfa75-d164-e9a4-36c4-4f57b68fc055@intel.com>
In-Reply-To: <8a1dfa75-d164-e9a4-36c4-4f57b68fc055@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6180:EE_|CO6PR11MB5571:EE_
x-ms-office365-filtering-correlation-id: ab73c763-0421-4245-ef3c-08dabd466f49
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ITrMEOM7C3pzZqk2Tmxwt/LwCzZd58quiIWVPFc8kUEC+qI63ZcUh/uG7XDjOuXRMgM0zi3TqIVNPNu6+bJLgqGYe03sV2KlVCVHZZefAH11Hw7ohw96OGAXQVo5vIcLYXKl5JMahRHJpRDLtUoYTGz88q6cqkvjcuGczWYVCzdTF+JgUcwoHB/tf/zXEFcf+LS4rSidfsUok8gbbe7a6b91HyfHrY0+CcfILBVLwfNkFNjBWrVHIoAO7pPUMTGzrZWF1VhSuxUI+FWJEWyFHiv9Ue7asGhz0Ugqn84nnsRdOfi+mNpdCGlAVbqx414M5NUXOhgcy6aLFz+uRf8fXweLPmbwtoATHxyqeX/l5QhI5fO+V81JUJ5TT7dT2+csQ0A4PUIk0q7nwqQdMPGd/6cGdOPadeuwcyRvrSYPxXkLWFF4G2zrVqEoAAbuR3SAmiAm16tzt+/iaMNaLfNCVIEk0KVKPEE5Ksn87wT8ut3UYDBJOqvlW61X52JwguELImEOx2Izrmf78UIQSqX8JAbeFiHHBeqwI9mCYpCkyG1+E6jV9rHAqOL+AN0e0zSxXFBfDfkiUHeL2b5DrLCyZzm1ZqmIA3s2KDH2RuR/ABEHr2RPWlcWHjXQWhgXGdAlKUAwZqfonvkjkGEpSAAf9hneZqAnUmtku2rpUPNxq2mYJoiHW5yJ8p8lkcZ/RJrjdIuuECNfqKJr0f3w3SkDdOA8d2O8ceoM0sZZvPXUcd/gtTJXyAHSDePx/Cm8l5eoIglrBHLz1CRfyWF1SmkXgw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(136003)(396003)(376002)(346002)(366004)(451199015)(66556008)(8676002)(64756008)(4326008)(41300700001)(38070700005)(82960400001)(54906003)(8936002)(76116006)(110136005)(66946007)(66476007)(52536014)(5660300002)(316002)(66446008)(86362001)(55016003)(122000001)(33656002)(38100700002)(83380400001)(478600001)(9686003)(6506007)(71200400001)(7696005)(26005)(107886003)(53546011)(2906002)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Q3hjYVhvV0RyT2NBcUFENXZFZ0hkclEzL3RvMFlVckdjNkpLRUNodll6L3NE?=
 =?utf-8?B?bU5QV2Y4ZUZ4WDlJRGk4NW1xdGhLMUdUZ2ptbldpTDFVckltbFRVZHgxRGRK?=
 =?utf-8?B?d3ZmMXNkMzBCaWdpVzA2ZGFuVHpxOU9vYXdYenZYUzBTNm93MCt4d2JLanJv?=
 =?utf-8?B?NmV3NVdBZmROTmIxREJxR2lYSkZCK2s4MTRXbVRCbHlBQmExYk5hTEpvT2lZ?=
 =?utf-8?B?WXhkSHpJUkZMVFZFTTJjOHpVK3g4RFZ3cnpNSWZSTmR4ZTU1MUw3VE1EaTNL?=
 =?utf-8?B?WUtQSFdxZUl4bWVQNURkbnY0WWVnR3QwMXI5NDdHditncTBjU3hyWjNlaFFi?=
 =?utf-8?B?N214aUNucDhkdmJiTFFkYlhjYXBHZytZYmtIZWV0M0xHbjZTMjNWbXFyamRn?=
 =?utf-8?B?R3VDUVVVSWtBK2JCVE1KZWZGNEttZmNkeGNYd25VM1REN0V6U0J3d0pHUjlq?=
 =?utf-8?B?Z05IYUc0K1BiT2c3VTBTb1REdjBudG53QWxGcXVJSXI2SEtVaERKSTd1WWxF?=
 =?utf-8?B?SFZMWUpKODl6QlhzRnlMZTcwK1ZIaTFKUVcrSmxQQTBQOGtERVloVFJOcFRp?=
 =?utf-8?B?NnduZ0RPM3dVNjZOOTU3REtma1VUbVlaTEN6dUxQUjZvQVdGc2RiYVFtWmpH?=
 =?utf-8?B?clVRVDJMay9Yajlya1ozUHNKSWJlL0xwMDZWRHllYWxVa0xsZ1RFZDVCTVhT?=
 =?utf-8?B?aFJPMFMzRVEzTnc1RUtJNDI0S0ZJd0xhaExGeHFIamJOeHVhRVVDVUVxSXNR?=
 =?utf-8?B?SG9FclZpZkZ1U1llTmVBd2pCNnlJbGdobkhHb2t1VVpkSUdVSlZnYzlxQlky?=
 =?utf-8?B?bkxZSElJSlpVbFlEZDZPSmRaQ0t5bzdXQktURHpuRXRFN05GRzZmM1N5Y2t1?=
 =?utf-8?B?WjNrUm54WTBUaXdKcFRsM0tzS0w5b2lrTnZNWjFGNFFJQmcyeWIzUzJUTVIz?=
 =?utf-8?B?bUl1b3FlOVVMemIvZnJkL1M3azMrZTduNjdaOGFkVU1nOTIxRmFIbUNDT0h0?=
 =?utf-8?B?dTBqODdvVlJJL1N1UDBPKzZLSjBlbWlWUEhLbEx0WmRybkhBeE1rSlYrVnRM?=
 =?utf-8?B?b0pzZU55TU5jaW5KdlZGaVZPcjA2ZGgzMXN2dVZ2WG9Ycjhia0ZJN0NRNVVD?=
 =?utf-8?B?KzVDMDRDMzdlVUdHVC9HalRTTkxrdVU5L3RyUVNhT2tMN1BadC9ZZm5pN1B3?=
 =?utf-8?B?cEFrb2ZxSGdWdXdiQjlHSVlyNWRab3dyTlhkMUtieWg1NHN1Z1ZhYmtQYTRL?=
 =?utf-8?B?M2VaSHBnZGVtd0ErNVE2c2QxOUN0ejJYWWlRR1NhV0J6ekN6VXVpZVpndklK?=
 =?utf-8?B?d2NmNVF5M1lYczd3c3RsbkgzZ2hoU1M5VnEyUUVnNzY2aXUyQWRGTkRCRmdn?=
 =?utf-8?B?VG9YY1A2MXViQTdPamJWeFJDSmF0YTgrQVZJeXYyckgzM0dDYUcyRjdkTGNN?=
 =?utf-8?B?MmJmdUhpUGFnUlRFYkRYc3Y1Qmk5VTFMRjBBcW9oNG01Uk91cExNZENDL3FI?=
 =?utf-8?B?NSs3R3lydmhtZS9NdDZSQk95cVlRNkhSOFFrUVNxWEkrSU1TaW1XL1NHNGgr?=
 =?utf-8?B?QnlxMTBaWlRVZytxazQ1RjBuZHpoSytZalpodDQ5VmdkczBqaTU4YldkelpK?=
 =?utf-8?B?RmdHSTIvc0VwcStocHpxMytyUkkxVE5ZZG9MTGhSWFlBTDFNSlhhSzQ2b1Bt?=
 =?utf-8?B?S3gwcGRtNmFjWTVjOEE5VGhucDhGWXF1aXhwU0hSM1R1MzhQcThoQXhraHVX?=
 =?utf-8?B?d3F3SmZENWN6b0E0eDNlNUtwcmVqeFNYbWNHY08wanpSVzhXeGxFMHdpeWxy?=
 =?utf-8?B?Q2xhWmtyRmVDamk5L0kyK1EwcmQ5b3NBMk9jZnNLZDFpV3hBR21GVXViNnBr?=
 =?utf-8?B?UVo5Q2d5b1BMRFB4Y25zczJDUkVTa3dTZEttZ1pGcW1yaVJma3VqNFdJeUsz?=
 =?utf-8?B?YmtIYzFDTTdVem5DQ1IxNVBSTGsvZ1NqQlJSVkVIRUZkRkZiUENvRllvN1Ro?=
 =?utf-8?B?SmRBR2NCUmJNeWk1Z0tqa3lGQ0pmVWFvVFNBMlRKOGpPR1YyMjYwVzNhb1hq?=
 =?utf-8?B?cTRRQzlYNHJ1Z0NtSW4rS0JYWWZxVlBNb2xQQkF5aTB3NDRzRXJlSHRIbVl1?=
 =?utf-8?B?S29WTk1KM21yZmdMMHZkSFBMTUZMc0ZWMG5PeXdjaXFHV1BPUDUxUW1OWlp1?=
 =?utf-8?Q?uTBoD5dTLDzGi8zGVTRBf+s=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ab73c763-0421-4245-ef3c-08dabd466f49
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Nov 2022 02:52:23.8510 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +iv+AjHX8nYZb4dKLb04mVAia5E84M8Z6sRdyLc/82jlNwT01WTTDrYdpctuIhlE18QgFX7LiPb74Zn1i97e/kySjkmN0Tgv3kIj1EwaL1kNRNi+HGT//Jq2F4WQQuHg
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5571
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667443956; x=1698979956;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Xv1qLL53iGdHM/2cXF/muwxvK6lPtwnTQVvyapOrcqw=;
 b=lfxbsg+l5VXqKCx89f9qvYMJ93Re2aGs/lvdP/9AprtsFNrptLlrVfSy
 Kv55WUxRTDCmW9WztPf4S8GIw0D5F08UYLEoh2koXAvUTvd+VxfBw748j
 IR/wJ1NhNkcLQLxkCNj87RaafO7rgmig9ElGUnY1Pwie/+TMq63P/GbkB
 uhu7U3+Gt7H1IGjMnOwBlFIktqsfPal4uBAGU609hssbi4o9H6GaaEq9U
 5q+R8VKp5ygCr7XmxxLOSAqzelhJ5eN57xtpQEhHbh9D9b5r+wVotd5QO
 kkWXW/e81io0JwypYBVdYfL6i82QjpRjK4F6UP6ehNWOy3dXrVcKXQnHd
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lfxbsg+l
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2] igc: Enhance Qbv scheduling by
 using first flag bit
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
Cc: "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>, "Chilakala,
 Mallikarjuna" <mallikarjuna.chilakala@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Sent: Thursday, 3 November, 2022 5:41 AM
> To: Zulkifli, Muhammad Husaini <muhammad.husaini.zulkifli@intel.com>;
> intel-wired-lan@osuosl.org
> Cc: pmenzel@molgen.mpg.de; Chilakala, Mallikarjuna
> <mallikarjuna.chilakala@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH v2] igc: Enhance Qbv scheduling by
> using first flag bit
> 
> 
> 
> On 10/25/2022 7:03 AM, Muhammad Husaini Zulkifli wrote:
> 
> One more that I missed...
> 
> > +static inline bool igc_ipv6_csum_is_sctp(struct sk_buff *skb) {
> 
> No 'inline' in c files.

In v3, I'll remove this. It appears to have been deleted in mainline.
We unintentionally added it back during cherry-pick from our tree.
Thank you for noticing.
 
> 
> > +	unsigned int offset = 0;
> >
> > -		skb_txtime_consumed(first->skb);
> > -		context_desc->launch_time = igc_tx_launchtime(adapter,
> > -							      txtime);
> > -	} else {
> > -		context_desc->launch_time = 0;
> > -	}
> > +	ipv6_find_hdr(skb, &offset, IPPROTO_SCTP, NULL, NULL);
> > +
> > +	return offset == skb_checksum_start_offset(skb);
> >   }
> >

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
