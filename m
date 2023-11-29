Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 682207FD43B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Nov 2023 11:34:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2FF2E43551;
	Wed, 29 Nov 2023 10:34:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2FF2E43551
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701254058;
	bh=akMGxkBQwAChmh/eq8C7GDXiOZ38IiczxsRhICeQyus=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Llb72DoaDgNjhXFBtk48mTmdLPFOrDWhGZdnDKV08+EKKYRCmWdpmY44kE8lhFxPz
	 8YyuTOarYTXXqnYmnmamLjVN6faHryHQqxPJSjh1wBH4+3Qy0lFi/Wgjhf2v511Q00
	 Rruu37IQpRTMXnw0c9jdYjUD+35td6wMq2mGx4SgX78zkw9WsNvzzMBFXn55bZKMPG
	 3J0Tm1P4r9sZTCJU/a15ToK8Q0EzwwBVLAZIth8V+IWYj8cBwXoZkNO64i8fWA3KIv
	 atu5q2qZf3EoJv1tbheV8SGAh2dKjpsPPYB++CG2EwHZbJs7/d9YFwh/xCtXqRVmc1
	 fQkM/zgy0+oVw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BXLakjvZr3zH; Wed, 29 Nov 2023 10:34:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CE0C1405D9;
	Wed, 29 Nov 2023 10:34:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CE0C1405D9
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3770A1BF2AF
 for <intel-wired-lan@osuosl.org>; Wed, 29 Nov 2023 10:34:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F2DE643542
 for <intel-wired-lan@osuosl.org>; Wed, 29 Nov 2023 10:34:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F2DE643542
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WitDWhr79LIs for <intel-wired-lan@osuosl.org>;
 Wed, 29 Nov 2023 10:34:09 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 29 Nov 2023 10:34:09 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C6978405D9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C6978405D9
 for <intel-wired-lan@osuosl.org>; Wed, 29 Nov 2023 10:34:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10908"; a="27499"
X-IronPort-AV: E=Sophos;i="6.04,235,1695711600"; 
   d="scan'208";a="27499"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2023 02:27:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10908"; a="912795952"
X-IronPort-AV: E=Sophos;i="6.04,235,1695711600"; d="scan'208";a="912795952"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Nov 2023 02:27:01 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 29 Nov 2023 02:27:00 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 29 Nov 2023 02:27:00 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 29 Nov 2023 02:27:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WfXs+DyBn4m5nk60rto+l5yijAmkEUXeru+7BGMR7PXVAWRIoDA0Nv5uhQsgK+6wv1RXmpKa7Y4ZiAwAxjnfrUDwz4L4II5Kpu4gxgpoi/FjE0eyyIaRShLe1yIrTiHe/EchhEmHCZEb6iJxrYa8Cqy9z/NrN6Gb+X6xKpO5zcFZps/9AYbqvT87ZKbOBcFC/7kj4pUwXD5JpOd+Untobt8IgYaGF3Ao0mAkZkPpGC/h5OFMibGSHvspDTIL8wLlB+u8/M1Qs8MM2nUsCYW+FVxf9qTP9JBlBTRqiLPKgVUPII/RSy7j3hRu1yBwyyZ3RED0ugMzGLai+lIT+IlU8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rtl0DziDqV289hYjEBQG+iEsI3fqrDeEVLh2KM37rHg=;
 b=C1x4wpGmrMhJLtjmj8GskO/K2qnaMGGwVB5xURObe7WvDccRgVehYQYTgJ/S14qrAoRloStiCpmq37DXw0v2rBtS67S6gd3ehXsmSxNjvnwBS5CJfXgFPNYpUt7Ws6drNIGRITFhvQaeLdM2FdB2JQoFrsK+xNJkHHyMtNbQHq+h3nrHmdpzKWZ09tHiGEDLg4yJ6ZAk1161kLw64vNuBmLY8WCF/GLmiGH+1TDqZN6fts7cFyOdPnVDd6LntlGCvIzZTWfnSqzgmWZFlTNF/c5E9L+TjEySExpSoP1VZMw3LouX1p/yDFvb4dBpOS5sKAugxl8xkcdc7AT+HZEKFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5819.namprd11.prod.outlook.com (2603:10b6:510:13b::9)
 by IA1PR11MB7175.namprd11.prod.outlook.com (2603:10b6:208:419::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.27; Wed, 29 Nov
 2023 10:26:53 +0000
Received: from PH7PR11MB5819.namprd11.prod.outlook.com
 ([fe80::8856:800f:b10:e0c9]) by PH7PR11MB5819.namprd11.prod.outlook.com
 ([fe80::8856:800f:b10:e0c9%5]) with mapi id 15.20.7025.022; Wed, 29 Nov 2023
 10:26:53 +0000
From: "Sokolowski, Jan" <jan.sokolowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "intel-wired-lan@osuosl.org"
 <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1] ice: remove rx_len_errors
 statistic
Thread-Index: AQHaG/uEjueFgv41KE+3176YpCiyq7CRI4Mg
Date: Wed, 29 Nov 2023 10:26:53 +0000
Message-ID: <PH7PR11MB58190A571FC08D16E58AC8599983A@PH7PR11MB5819.namprd11.prod.outlook.com>
References: <20231120112726.149409-1-jan.sokolowski@intel.com>
 <705464ad-8559-4096-a31f-4f4b6fc05770@intel.com>
In-Reply-To: <705464ad-8559-4096-a31f-4f4b6fc05770@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5819:EE_|IA1PR11MB7175:EE_
x-ms-office365-filtering-correlation-id: cf46cd50-e246-4324-2479-08dbf0c5b4b3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9GezSj1pCEC8C6x8HbuRly5F/vN7ANKCOMk8H2Eb9AXA7+ZWTWJ1t10HI3dINmrThgbzbnbeSLxWe3cUL1UMXsUa6HGXMkHYLf61P2oFOQD+L4goA9OyaR2DCwkZpGpTtnUrTOrZJ4FtbAJu3TduRDd+jHeFoX8BuMsNIdd83IWYZEl/4DXK6PhF/aJIdGOSYV/BLGb7wlln58nAKBlb2Ycepz75bMEYmhnf94q6tACVYJTdgCFODLmaF8EM2au0bN5cKtSxoMaPmPX82m4x537kFIDcV7vXbTzDP3JmE92WDN63y/OXof9lhIXKYiNlzrKE7rRnKVCLoRt1swDH20bKlkgDdqKyVBxevyIzeyjK11hfw94apXhjEzKjQn3+Hq6KmyATrluIG6paS6/jAHx1EtO6lB2pacLGI/rmcilvcn5QA6IKDJRCjcgFNJkPECW0kyD42fERfWyyssKtuqBHt03fbUlOefbMD545h7w9p8vVh9xDvAW8iD1ICupLRHNIHQ9uXO48iYG977aNcqae/3a/Pjd2k4xpMo9/hE1wqebU7v35g4J7Pe1ylnJ8tisUgp7Gj4gAzDe5Ufh8vkVplJJGRfpxZbdTqwIXJwA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5819.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(366004)(376002)(136003)(346002)(230922051799003)(186009)(451199024)(1800799012)(64100799003)(52536014)(71200400001)(8936002)(8676002)(9686003)(6506007)(7696005)(76116006)(66446008)(110136005)(66476007)(66946007)(316002)(64756008)(66556008)(478600001)(55016003)(4744005)(33656002)(38100700002)(41300700001)(38070700009)(86362001)(122000001)(26005)(2906002)(5660300002)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?YaeNE2734n5rTlEQmQu24BP86GnFgtPMgG0Uc2+j498Cvj/YxKcdeq+k9UXo?=
 =?us-ascii?Q?jZ06Flu2M+yIsP8rxv3RTr6pOuYFbxrXNkoE97KAoTrLYZib2qPb/izCwmIA?=
 =?us-ascii?Q?tNIQKbHr4lLHP+/9P8QYmEKiVYYzzZe2PVy/+fp3RXfLGP5vhOyYIMZdig3C?=
 =?us-ascii?Q?ZnGEljXAODaFQtIK3h8LIfRTFHzn4gMtVG/ZLWNA3WjL50ZUz+KmnBy9NNBm?=
 =?us-ascii?Q?AR6xZf8pM/mjzvouho3oMw7sKWnWUUzxgPRFmEUPxWg6xEEejwrR8nUsTxmL?=
 =?us-ascii?Q?8f33KPW6vNZmCB/D8piMnyxm5LHSXbKTizEEDmS0Afj3Q/f3K52BYDkBqjFq?=
 =?us-ascii?Q?gFA7dsq8BNtxqhERc5UMvuhhiLCYvSDM2p1n2OBBbvVUKFeStz+/7krI/qMV?=
 =?us-ascii?Q?fHVepFZYt8RQEN3Py+bvGyUDHlsVuEIz/YoHCIBjJcYMFI3GvYPoNhFCy5H1?=
 =?us-ascii?Q?Uji0i3icASk7GahPtLgdXvhhfkAwAnHMUQBVnw4I940NbwCeOgIIuyEWRYv4?=
 =?us-ascii?Q?H0RhbLGKTBKtjlNVmnqhSrSBJDskPjb8LVcCzmRl8VAFagQ8VPi3epcabJ/E?=
 =?us-ascii?Q?FaroJrjWLmpcjht+uKF8+UhAyFq0X1yKC2ZUSQQpWmul8drVOmc4jQYfOkNI?=
 =?us-ascii?Q?sJyiaOIlystWtCpwIZXAhDYXzNW28JcsfjhYcL3IUCX/1NQRd1S3phUfFyGy?=
 =?us-ascii?Q?Xoby1/rWRbiFZrtf2bPMA6bVXlo7DoBkcWMWHZkuu/c/d/Q7bZfpTvTdzJOk?=
 =?us-ascii?Q?5aV0vacN3BEz3y9j5V2q3JGeSIed+WwqOrNWMQnucsolz5LfMkmRJdXFx6rg?=
 =?us-ascii?Q?yBcmvZb99kLtZlY/h7lTdGr9m6h23XYBkqpxph6MrJp+vkOhR23DsQcRP7ot?=
 =?us-ascii?Q?cqUX8rIpW/CUu7OFbH2ENDHXneetyI1x8t/qpN37ghu191ahMj3ya1Y2wnT9?=
 =?us-ascii?Q?zpZ01x8cBrYO7u11BO5HHIwcHzi8F/AU8PKt8zcSWVp+T7acnFfdfudSQoc0?=
 =?us-ascii?Q?ceJ5zO0rifWEeDTgofc+SipPwb5x8YRebq1ONyP8JEkPWITFolbnQBASiiSm?=
 =?us-ascii?Q?28v9364ZhQTouO25vMHCcqHwuHZqIyx6YOX9YzbTHwYiDi40KOTtxtyF65Z9?=
 =?us-ascii?Q?U3+dZaizX69vQWuczav9NFIgh5Hwga8NpisT66g7MnAdaf/48R1z0B7tgu/o?=
 =?us-ascii?Q?JucFS2l5hEs+QMd0lf131eTCqP+WKHx0wCdIk3gWzRZSa2/eZiPLOcCAQIeH?=
 =?us-ascii?Q?l43Sgmd+DSW1n0ojkafgrqhWn5xp3VjDYQNDDiCki70tNmcmVHanwVEnzXPt?=
 =?us-ascii?Q?meqKwTnb+Kcvmg4gOgFf6nkqfwQlspXtwBjdZ3/vC1+AGJP3uSYmbLvNQ5zq?=
 =?us-ascii?Q?sV6V6qEsTEHqN0M/DVhCBbZI6bxMZSri4eDXL13dnVBg+7+mcXkOln8o2YGI?=
 =?us-ascii?Q?Lkb20Rqj1erqetdSNAi1nMcEriva1UqKaRhpLbhLLJ2Oh+qkQ40VOBIuZUi2?=
 =?us-ascii?Q?7tsrlmZ1rFg3x1Svcp824hcbRYnnFR/joeXn35iqs6PHEHkEiOnrIvVvYUu6?=
 =?us-ascii?Q?8qIw6R0UH9M8xXRm7fyn7bNOcA/xMooUDJFUyrdG?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5819.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cf46cd50-e246-4324-2479-08dbf0c5b4b3
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Nov 2023 10:26:53.3487 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9Lbd2iX0fNwoIliZ9PuCA0sS/miQAn7zwxuO7IK9KNx5m1UkFhnUMeQe60W+c5QkslRv4Pygdy0ZkJ2vz7JjEwkSUfacnCNZO7/bsn7xhow=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7175
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701254050; x=1732790050;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=rtl0DziDqV289hYjEBQG+iEsI3fqrDeEVLh2KM37rHg=;
 b=BX8RZdiRwzAphIi1ZM3t5RS0kKqfqjj6Wjk8Rvynpy912j56GItPEG/7
 /qm3DXjhdlqtulAnptT4y0pvR+jV2pkSzlXO/bbgwi9VtYTL/wTNpXRMD
 LcooFtJT9JADfFjQ16E/otPmmPJkTFFESJFUBLuO8Jo7C0FkGnDhTNntZ
 m6mlgxBrEd2fpQWzbOhqaadRIxSFVrzrBxJfU/R47PDPIfgSvjuCg+k3o
 yeStvyl8TDh2nQtvJk7blJNsCdqH+9BnGQmojLjUPx7DoCOvpBi+RfQ/Q
 xhzUWuzUC6L4u2N0fdnjsJzVTPH5eWAu+u6mFub1HEBPlsq3XBTdv+rmW
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BX8RZdiR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ice: remove rx_len_errors
 statistic
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

>
>On 11/20/2023 3:27 AM, Jan Sokolowski wrote:
>> It was found that this statistic is incorrectly reported
>> by HW and thus, useless.
>> 
>> Remove it.
>
>Is there any further information about what is reported incorrectly? Is
>rx_length_errors part of netdev stats and standardized? Does HW fail to
>report some packets or does it report packets which don't have an issue?
>

It's a part of visible stats, standardized.

According to the bug report, HW was misreporting packets that did not have any issues.

>I mean the hardware does *something*, so I think it would be good to
>have an understanding of how this differs from what we expected when
>proposing to remove it.
>
>Thanks,
>Jake
>_______________________________________________
>Intel-wired-lan mailing list
>Intel-wired-lan@osuosl.org
>https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
