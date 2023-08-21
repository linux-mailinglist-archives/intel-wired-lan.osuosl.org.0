Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E7FF78247D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Aug 2023 09:35:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 97069409B5;
	Mon, 21 Aug 2023 07:34:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 97069409B5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692603298;
	bh=f+YW33zFefqQs47uCqcDSjq0vjOBicz6P1BXX0Fzdp0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3PktQNZR2NXdABDdunKWDdkpqYfRKzKgPg8asHxXxjsu4CsL/DvjJxYN8mMM8qcjl
	 UqQE/epodBh3YJjwlf7G+RJXLnFDLWDMKBGWWaY/E5fyZNOOW8D3WqCN4/c0QSDMG0
	 QVxZQirbmRWQqknC94ZELdSFkPS+ahiXM5N5RnjCrJ3Symzhm0kLbNbNgPDkJV0MCL
	 RhALIpSSyf961gZUgkUM8BK5NY+G9MI1UqMn/mM3IFoK63PznAKntd72h84uzCF7WJ
	 OkwmIo1zHag3xrAumG7aPk9StUDlC3rH/uSYcRn0m2zVMy0Fq9abGx7AueKeDeZEwR
	 PXgXNASf2Sw7Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ww2sn6NIXVBT; Mon, 21 Aug 2023 07:34:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 32C0040385;
	Mon, 21 Aug 2023 07:34:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 32C0040385
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D5F1D1BF304
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 07:34:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B533160745
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 07:34:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B533160745
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hg-vFaklQsIx for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Aug 2023 07:34:48 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D177E60625
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 07:34:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D177E60625
X-IronPort-AV: E=McAfee;i="6600,9927,10808"; a="459885997"
X-IronPort-AV: E=Sophos;i="6.01,189,1684825200"; d="scan'208";a="459885997"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 00:34:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10808"; a="801161690"
X-IronPort-AV: E=Sophos;i="6.01,189,1684825200"; d="scan'208";a="801161690"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP; 21 Aug 2023 00:34:47 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 21 Aug 2023 00:34:47 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 21 Aug 2023 00:34:47 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 21 Aug 2023 00:34:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PvF9Nfk0Ggl4IgQR79PPzchNXOOFAcwvULS8ZR3G+YWeGER3S9aRWoWndtul3jVvFlpWZuM4co+gcilUQIGu5+xEYhfQo9feT7T6KrEcBMcIoI+mOsY88xSf3KanypYuuqx8MvZlhNEaubGU5JqB5B0hGXqaTXD6rNyTAOxuUb7+2UQ+SKpkLRRshOnqsVjTM0QHwgF5CkJ8L7JBTaVd5bSxo91ZfpXarVwwgqtNK5eiKhpG3xTd2EkAhvESx3nZPE0UcLk0I7qyxT4dh4e860DS1RIJrgOCI20SBhl1TuK8ScM+US2xOUIb0vKClQOyzk8ooE/taTK1R76QZrys6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ALm7rFozSS3TtyFkGsahKXYvvv2u0stDgoJiOzDsQAM=;
 b=Y4DWz5vatVuEFWAfCNrVkHR7wpJbcyPQas/5ItqWdJKuj8G4NrG9YSUC8rc2V+pGO8PCdzfsvLpFIY8dAkZdM3znrYfeI3Qf+Z+4tjM4IdG0qDGO5nGWzM4WkYwGITMG3CUlbpUcvgJLzoM6wORYt1hejmZHG/k7AAAqR5xcAHR1LVN0fjIu9wSLTIwTdI41fSy4Rwdj9modACI03dMmM0yNUiAosUHW39UYnbhT1pPngcd4HYFC3/2i8iUGuzDhChKyHuLz71C9hL9Ywgcoy+9eP2H66vj5T+YhLu5wfjDhDD+yMvwSJ9Lu3AcG/zTZg/x70iKn3Pzf996nXQQn3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3723.namprd11.prod.outlook.com (2603:10b6:5:13f::25)
 by MW4PR11MB7102.namprd11.prod.outlook.com (2603:10b6:303:22b::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.26; Mon, 21 Aug
 2023 07:34:45 +0000
Received: from DM6PR11MB3723.namprd11.prod.outlook.com
 ([fe80::ce6:bce1:eaf8:ad80]) by DM6PR11MB3723.namprd11.prod.outlook.com
 ([fe80::ce6:bce1:eaf8:ad80%7]) with mapi id 15.20.6699.020; Mon, 21 Aug 2023
 07:34:38 +0000
From: "Guo, Junfeng" <junfeng.guo@intel.com>
To: Simon Horman <horms@kernel.org>
Thread-Topic: [PATCH iwl-next v5 01/15] ice: add parser create and destroy
 skeleton
Thread-Index: AQHZ09ijYFelMPzDika6yBhxTGMJEq/0WEWAgAACnwCAAAB9oA==
Date: Mon, 21 Aug 2023 07:34:38 +0000
Message-ID: <DM6PR11MB3723437003B055BB7C74AF63E71EA@DM6PR11MB3723.namprd11.prod.outlook.com>
References: <20230605054641.2865142-1-junfeng.guo@intel.com>
 <20230821023833.2700902-1-junfeng.guo@intel.com>
 <20230821023833.2700902-2-junfeng.guo@intel.com>
 <20230821072037.GB2711035@kernel.org> <20230821073000.GC2711035@kernel.org>
In-Reply-To: <20230821073000.GC2711035@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3723:EE_|MW4PR11MB7102:EE_
x-ms-office365-filtering-correlation-id: 40141e7e-2def-4ac9-df66-08dba2191324
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: e4+4YB9+YA/galQiQnn00X6wr7IzfvSkGtV5bNugkvKGqOcr1xZcRkuEYPpHmSJmezceDUzHyPj/x5z1uUCtR+qdQpaTkb6L0tH5vxrxq3IZA+b2UUmOEcTzWPGD8st/w+IFHDbttH0s1+KgpCbUkbT0cJ7HLoteoLK+OQObFZsDC8OCwwvAMQafrrFhIxL7Xj/wK0j+Z7mhEiMtUcyRKUL8RX8lHUjIzf5P8LgR4jieHm4s+OSwYpS/qDpFzFQ+ZGh8KfKYfXWdl4jIoUI76zJTy3BGZdnlFDuLNXmEIbpeWeXZbMcMR7q11FCn8zVCaNO7MET6dygMQEly1jWimPiTArk1qB3InkDCv90b1KTvUJfx0P33CoEtyZfMdn8ClpKAeysBJL9T9oaudm/rIkwY5lhrRqxPE7jJthcO9aRMiPgWaqocp4AIkORGN2amNditJUtaXQgU/rKO+Zu/A3geQmdjL8Z8Pmjm4aYEHQi0flwnhCnBucnaWMQMU28Yvk2boQvkPtTjiI8T0NmwU9eCImmzw/MFVYXCqBYLpIWMBYDYRFTVU48L2eHIW9KcuQJ6QKd5mD7mkmQd0KiYD5PjiRaNRxjbSGGzcQW8Avo1q+Mo7CKhBsAtuYlyXdZ0
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3723.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(376002)(366004)(396003)(136003)(346002)(451199024)(186009)(1800799009)(54906003)(76116006)(66946007)(316002)(66476007)(122000001)(64756008)(66446008)(6916009)(5660300002)(41300700001)(52536014)(66556008)(38100700002)(38070700005)(4326008)(8676002)(8936002)(82960400001)(26005)(2906002)(83380400001)(55016003)(478600001)(86362001)(33656002)(9686003)(53546011)(6506007)(71200400001)(7696005)(107886003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?a1EPc1PXewZYrtkZxA9NiFNXvpqjqT78igdu6OAjFZ9vDSZ3Gt4g440R2JOF?=
 =?us-ascii?Q?GAy+B0kAMrWJMcMlto23Dz1hB8xQ9my59Kp2oV6U+r1F7QApRekpcY/kR+7S?=
 =?us-ascii?Q?mmSecz2nmC79nrwbPyG8TsjurwDkkIt45N3qFegId/Yqu/cnAri/ZCcByHme?=
 =?us-ascii?Q?HdK8WqQnoZJ2nRwnGKmVaOST6LckcGRYng1oN4Gu8C9my2iCCQXFzWOS5GFe?=
 =?us-ascii?Q?98I6gFlo8MDqlJqSxTxf8zM8uMnzoOgZ+c+MMDGDTuTonXGUjykjgyqtqQeb?=
 =?us-ascii?Q?jqqhqJxkxRAlLq9ev4L9JPFIvsIl3WP+nKmZc9Xt/bPL7TW12hSaycpNNBke?=
 =?us-ascii?Q?7bppQsqCQF+yWRgAGZ2bzEVeVxRvo4fuEMXBqdM6b61ecobqMGZYMc9Yt++C?=
 =?us-ascii?Q?UD/viMQDd+88n8LtzIuabX51QDxejgxTEYpteLOsglkdawekPHvSmi0pKmcH?=
 =?us-ascii?Q?t9JjrmYx0RJ41UbULbFO5zVsikbz6t3dM5lBMIqy1yp2zHpH3T0BYPrqVkmZ?=
 =?us-ascii?Q?WJKiBwfybpHPs8cpztVB3hb1U3lwuUQxitbomyTm866VrGRKfdwOvbozD3Lz?=
 =?us-ascii?Q?MJjBk875xLqyLipRjZoCoqTo39LzsBo4fGXSd/iA/W2I4E1q8erQoq9P5rK2?=
 =?us-ascii?Q?zo9Uuu4RI6ZSpdhCm/lOzD9kLbWja2qTNE/mOC2pLdbu3Q7vnmnOKz6MeT5r?=
 =?us-ascii?Q?XVRrR6oz+1kRd/lB767sO2kxDUVRyTopstcLqUuRM0BvrEMc4xNtGIFnliT7?=
 =?us-ascii?Q?XUTQ7gq4ZyS8fwHh8+71R68+si5dbNz3q1E3ePOHJW5t4IqDxUp/3vN+LFkZ?=
 =?us-ascii?Q?z9IK/ShvaDm2riMWlmls8LKJxVXfViMYQIgRShFk2b1RPptVF8lv43nPVcpQ?=
 =?us-ascii?Q?KiQIWx7zWzSZagyny10YuUqZKbW2FfZeUqmsRe2BbdwrnczJ2f6VYTnl4RDR?=
 =?us-ascii?Q?ky9GkBYAbp0TLZTNxBrriNXV+Y4KskW4g7008XpkudTyfAm3VWcT9OHzJ5JX?=
 =?us-ascii?Q?dTjKfTLn4wOOpo1TMDGfGi1DsJsAJ4lZg2qrcKwwiuBG47/4vYpr8RqHuZVV?=
 =?us-ascii?Q?jZGUKxJjxbECOa6q4F0NMMNlytwMY/fajs/sZSEVWTNIEWxFGKVDX0fAFnS9?=
 =?us-ascii?Q?94MepFd8PTFErZM2HULcQnHMeGXFzCfkMdDJIvgEuyW2aV6cSMFXJPTe4Vbe?=
 =?us-ascii?Q?YzoTGUak3kkHu8rcI1GkQvzIejoAAg2IUOfsxyFSKFqPeETr8ple/bO39a2B?=
 =?us-ascii?Q?S65hwwwRmEkPPjOcuu+70cjlb9XjHCrKa7fvcu+8GdFtYN3e8T6wDIqn/Eda?=
 =?us-ascii?Q?E62b6p6iQH88vRyiu+HSTmC3VPDj/nEPjw0YUw8/EnIR+/+3sGwygsp+ryAC?=
 =?us-ascii?Q?Ad2JQMd47tF7kRyKQ2CYY8N9dV8NzvznJIC7Rj1XC0fBx+13ICYrg3Lq+6FK?=
 =?us-ascii?Q?8hwC1FsFPLRcyDmqYRRMrA/uvBkq8jBN5VQOGYV65oDiju4ueBjcHVR0Fu+R?=
 =?us-ascii?Q?T1yLyZnUnqHXc+X6MjPnDETqXLEV4CLVszWS4wcEN7t3z4+QkUWurNEVMvap?=
 =?us-ascii?Q?yaHGeV/Oro2CwC+htchd0A5H4soyIKbFOtjsXp85?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3723.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 40141e7e-2def-4ac9-df66-08dba2191324
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2023 07:34:38.1562 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oYWCjvXv4O/XSZpvuZULWetaxLgn149qllC/qeFX9ODQ4o7TEbkyVw0/PmMCwOZ31ArtRdpdABAv2CPouFhuzw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7102
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692603288; x=1724139288;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WtSnmcbcg19OEqPuXSIiwOWp3QjhVfRJqrkigivug/M=;
 b=Cr0HL9Qw4sY+gEU84l60vcpeKJ15hjaXnAIdgPyfiSoXDvHYU4LUFTiN
 MOBbSoTAycZLt+r/oMUVIac2YSsIe7pTylSdiQGMpkRwOoyBkeTp6Z5ke
 sOwjHOWgEUUYYd3jtcYZSMo483tN1uvmYI48CvKK2UemP4xYrKX4EDhRt
 Ya0/ZmHWL/ngGVzY+2+8OdCPRESW/1eGHKPQQC3Kv2JbwM7De0IyM/Zt0
 1Yumfrqw2R4Uct4+UjZiBQKWI8oVmEl3zpPMEYGg349w6mL3G4HmvWDht
 eh2A9mDYMuZRgThFULJpxgLnF/9uQLeIe1zHxf3f5mjFPKkDP9wBllGlv
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Cr0HL9Qw
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 01/15] ice: add parser
 create and destroy skeleton
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
Cc: ivecera <ivecera@redhat.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Zhang, Qi Z" <qi.z.zhang@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Simon Horman <horms@kernel.org>
> Sent: Monday, August 21, 2023 15:30
> To: Guo, Junfeng <junfeng.guo@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Nguyen,
> Anthony L <anthony.l.nguyen@intel.com>; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>; Zhang, Qi Z <qi.z.zhang@intel.com>;
> ivecera <ivecera@redhat.com>; Samudrala, Sridhar
> <sridhar.samudrala@intel.com>
> Subject: Re: [PATCH iwl-next v5 01/15] ice: add parser create and
> destroy skeleton
> 
> On Mon, Aug 21, 2023 at 09:20:37AM +0200, Simon Horman wrote:
> > On Mon, Aug 21, 2023 at 10:38:19AM +0800, Junfeng Guo wrote:
> > > Add new parser module which can parse a packet in binary
> > > and generate information like ptype, protocol/offset pairs
> > > and flags which can be used to feed the FXP profile creation
> > > directly.
> > >
> > > The patch added skeleton of the create and destroy APIs:
> > > ice_parser_create
> > > ice_parser_destroy
> > >
> > > Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
> >
> > Hi Junfeng Guo,
> >
> > some minor feedback from my side.
> >
> > > ---
> > >  drivers/net/ethernet/intel/ice/ice_common.h |  4 +++
> > >  drivers/net/ethernet/intel/ice/ice_ddp.c    | 10 +++---
> > >  drivers/net/ethernet/intel/ice/ice_ddp.h    | 13 ++++++++
> > >  drivers/net/ethernet/intel/ice/ice_parser.c | 34
> +++++++++++++++++++++
> >
> > Perhaps I am missing something, but it seems that although
> > ice_parser.c is added by this patch-set, it is not added to
> > the build by this patch-set. This seems a little odd to me.
> 
> Sorry, somehow I wasn't looking at the entire series.
> I now see that ice_parser.c is compiled as of patch 12/15 of this series.

Yes, thanks for the carefully review!

> 
> >
> > >  drivers/net/ethernet/intel/ice/ice_parser.h | 13 ++++++++
> > >  5 files changed, 69 insertions(+), 5 deletions(-)
> > >  create mode 100644 drivers/net/ethernet/intel/ice/ice_parser.c
> > >  create mode 100644 drivers/net/ethernet/intel/ice/ice_parser.h
> >
> > ...
> >
> > > diff --git a/drivers/net/ethernet/intel/ice/ice_parser.c
> b/drivers/net/ethernet/intel/ice/ice_parser.c
> > > new file mode 100644
> > > index 000000000000..42602cac7e45
> > > --- /dev/null
> > > +++ b/drivers/net/ethernet/intel/ice/ice_parser.c
> > > @@ -0,0 +1,34 @@
> > > +// SPDX-License-Identifier: GPL-2.0
> > > +/* Copyright (C) 2023 Intel Corporation */
> > > +
> > > +#include "ice_common.h"
> > > +
> > > +/**
> > > + * ice_parser_create - create a parser instance
> > > + * @hw: pointer to the hardware structure
> > > + * @psr: output parameter for a new parser instance be created
> > > + */
> > > +int ice_parser_create(struct ice_hw *hw, struct ice_parser **psr)
> > > +{
> > > +	struct ice_parser *p;
> > > +
> > > +	p = devm_kzalloc(ice_hw_to_dev(hw), sizeof(struct ice_parser),
> > > +			 GFP_KERNEL);
> > > +	if (!p)
> > > +		return -ENOMEM;
> > > +
> > > +	p->hw = hw;
> > > +	p->rt.psr = p;
> >
> > It is, perhaps academic if this file isn't compiled, but the rt field of
> > struct ice_parser doesn't exist at this point of the patch-set: it is
> added
> > by the last patch of the patch-set.
> 
> And I see this field is added in patch 10/15, rather than the last patch
> (15/15) as I previously stated.

Thanks for the comments!
Yes, the setting for rt field should be moved to patch 10/15.
Will update in the new version patch set. Thanks!

> 
> >
> > > +
> > > +	*psr = p;
> > > +	return 0;
> > > +}
> > > +
> > > +/**
> > > + * ice_parser_destroy - destroy a parser instance
> > > + * @psr: pointer to a parser instance
> > > + */
> > > +void ice_parser_destroy(struct ice_parser *psr)
> > > +{
> > > +	devm_kfree(ice_hw_to_dev(psr->hw), psr);
> > > +}
> >
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
