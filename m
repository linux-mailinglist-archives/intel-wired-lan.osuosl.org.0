Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A67F727FAD
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Jun 2023 14:12:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E527441F8C;
	Thu,  8 Jun 2023 12:12:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E527441F8C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686226375;
	bh=pQckvYLD55MekZKjOk9V8AQUal+RxV+PgeNX4qpbTLo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=29iHmGznEo9Sj8AweAlS6s1cJ3NZUbC5qfiJCpeaSBna4ehCp5O9gZjTR0xFqJWPL
	 x4Sb+/5OgoII/TwyNz6E2MkkPiLkwub56qsjZKUz2CCPz22PQj5rZ9NtBCZ4dQIyEi
	 qQeX3+dCR9cwkilIwPHWpjK3lDsnwd1o5WuZ/WHSrnFU7YGQxiCZEc3NLEtFUffMHl
	 jIoJg9X0oLAvUHbQZyrL4aamueWpVPbOqmBxbwgHGtSvy9fumWsxA0KRzLDUaFjhI3
	 tVrpoTLAXzqotAEO9r4MHVQzR2mp0cUEDtXfsgtgDvw/xo7LQm530gJc2Cwpyv3kJb
	 4Wtf3B6yoXSoQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FbAKP4pWx6jf; Thu,  8 Jun 2023 12:12:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3543141F80;
	Thu,  8 Jun 2023 12:12:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3543141F80
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E64FD1BF35A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jun 2023 12:12:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B5CF141F80
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jun 2023 12:12:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B5CF141F80
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T1d8lH7xHlvT for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Jun 2023 12:12:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9A4B241F7E
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9A4B241F7E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jun 2023 12:12:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="336917953"
X-IronPort-AV: E=Sophos;i="6.00,226,1681196400"; d="scan'208";a="336917953"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 05:12:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="743088391"
X-IronPort-AV: E=Sophos;i="6.00,226,1681196400"; d="scan'208";a="743088391"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP; 08 Jun 2023 05:12:46 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 8 Jun 2023 05:12:46 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 8 Jun 2023 05:12:46 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 8 Jun 2023 05:12:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HrKeEaT28toNyFNUyfk6NDE/aU3Q7l2RuatKEnMOakXgc6dB7cSGzXZ6Un4zKtCLkQUnvqhs5IguDA65mawQxTpI79cOaxq7mVP4VVeX5+sChShlWN9gKfNwmZKRMKvUzHUH5C+mk27EODRrlasUC2UeOMPPxcbb5kHSRZfpRjRD1YbnzjWtMQy/yZlAszsexlk7E5L/pzNXiC2Rri6hJ/NRLtzyJXJAVrP+AJtptHYhq/COiMQWs6b9xrAMWq3ViyKLiH4/IdrkSi4o061h6GkIZtG0bHMQpJSZ1KyxE5ym1QN4RhrNJWZpGqDn45xTKKMHo+d4yPRfBhBTlmPY3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ytWJ0Pq8a6SUBRkK71lI6NHODtjjAmrRp1j4i31pShA=;
 b=i/Omp1l7+4Cr/E+DEZKz1UAzN4By3otGfC+veUkoYq3DAtB8VUzVd/vu1OhMDeXTrOo4NvVlcG6k/IjgVALyVdYxIk1mY3M332u66xVO09Q0u1ZN9PwCPJO5PO5TP+CUASpgJgL4VCqLRwMBANwUqOD1G7l2Msc2KcE5sQVbJ+Tjvb/5b7LB5xcbkluEpaD0qeRFOP3WBPobXKW77jjAqv8OkEOuhKmOgLDTUO7MCI0LnPuA2P2RtCrcKMe+7F0/Qb06YjcShCZVn1hDnVa37SnJENDHJ8wMN2f9uElDL3emOjDBste/PoATNtishOsL3vX8DpixHGpl9plcZMqb5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5354.namprd11.prod.outlook.com (2603:10b6:408:11b::7)
 by MW3PR11MB4618.namprd11.prod.outlook.com (2603:10b6:303:5f::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.33; Thu, 8 Jun
 2023 12:12:44 +0000
Received: from BN9PR11MB5354.namprd11.prod.outlook.com
 ([fe80::cf52:d7:14f9:f2bf]) by BN9PR11MB5354.namprd11.prod.outlook.com
 ([fe80::cf52:d7:14f9:f2bf%4]) with mapi id 15.20.6455.030; Thu, 8 Jun 2023
 12:12:44 +0000
From: "Arland, ArpanaX" <arpanax.arland@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v3 2/5] ice: always return
 IRQ_WAKE_THREAD in ice_misc_intr()
Thread-Index: AQHZlM5Tcf8ndh5t4UWfZdAeytiwPK+Az7mA
Date: Thu, 8 Jun 2023 12:12:44 +0000
Message-ID: <BN9PR11MB5354108560D9E2033DCB4F7E8050A@BN9PR11MB5354.namprd11.prod.outlook.com>
References: <20230601211507.707619-1-jacob.e.keller@intel.com>
 <20230601211507.707619-3-jacob.e.keller@intel.com>
In-Reply-To: <20230601211507.707619-3-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN9PR11MB5354:EE_|MW3PR11MB4618:EE_
x-ms-office365-filtering-correlation-id: bfd0a9df-32cc-4e6c-0b25-08db6819aa5c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xCqyQvHIy6ZSgIkRvHqpeMAX90BQ7avA3rUWdjqc+/s1352ys3WmFmq1OJ0b2I/z+4JcDjODiZ5wL/DcyqPtFJB9Wa3LwWXeiuCBaplYaWWNUrHb73w5ALEVpAGtRcNBnUpFPPxzxe2OCMOunTphNN2QeuFHxnHmChJt9YYn2rmZGHQwyFRwPXBQRJ6Uw3dwiYNIiyn9Amq7fZYosUZsHzg+UKj8Qz34iOh91xn0cJPNOgG2dhAh1+ECyiOeoYSy41gKBUITCPpraXRfw5S92MwOa3u6V5xu/uSlHblXQDCceR9k3Rp7wiBH8CvTt1Tkaru3xQHZxYAL04KNpEDfDhxP+4yPVZejgZ5kxIblfjBuwLS1nY+2kVAv25IVFnL38nB0QLI+cVtBr3V5X0u1RQu4tbSFs9F4G0ueI7MS9wUUR8Mu80yGRvQKswhMPkkgIXPRBGULeFF1hNQHWJcP0hyXDvwD029h+ZYh0n4n/hmobeNOHQ4jzmF5KZG9bCZR5NL79yrAik+IVLHpUmqUF5dC+fFQLRqZW2x80yZ/6Noy+z2U0l+mxeBU2jTW/L71fn0NIYZZVGibWIvRr9U/j2VZOlQFYZd7bh3vpoWy2fw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5354.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(366004)(396003)(39860400002)(136003)(346002)(451199021)(6506007)(53546011)(9686003)(26005)(107886003)(52536014)(83380400001)(122000001)(86362001)(33656002)(186003)(82960400001)(316002)(55016003)(2906002)(5660300002)(8676002)(38070700005)(8936002)(41300700001)(38100700002)(966005)(76116006)(66446008)(110136005)(66556008)(66476007)(66946007)(4326008)(6636002)(64756008)(478600001)(71200400001)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?iHaCXQ+FMIEAWlN4md0PzQtLeDSi9JGac1gN6+Yn7sSemfmpraC4jU4ymW0a?=
 =?us-ascii?Q?Mo2DzJSFQRb2LtIXaIPuZqHdzS6Tr51E3sCY/GILQi1HSCzWmqoydh8W8R1v?=
 =?us-ascii?Q?lzW+Idnm/JU8xMfKsUyu7a+LHQ9g7BbWd9I2gu6X3suRPc8axz8V7HSCeLWY?=
 =?us-ascii?Q?qA9mJ2Sd7h723hzess1WjItF6CNcaebr/ZX45cjKhI1OxC8Mjt3mdF2CaG3p?=
 =?us-ascii?Q?z4U0hN+xH9epbHdKNqfGcpGSJkFIfCIKg/Sr2J5DmvGLPgTAqE+T3nnAurEb?=
 =?us-ascii?Q?0zInOVYIQAm/spmx4cdZZzL740deA8A3gL/vx8yPERcVSRZwrc80GxiUTK0I?=
 =?us-ascii?Q?xImUsk+qvqdM3LQZwnP62c2aEQzt6twJVB2HI/l9C1rlOeGPSTyi9KFkd3+F?=
 =?us-ascii?Q?CHgG6JGsB0JOJYrpddbUz1k557jRlNY4i1J3QhPHBAyO3r8g5yHInug+TCj5?=
 =?us-ascii?Q?I3kGtvxueOKvo0lCbvEFcR01KJQz98ZEPwx6SsM9kIfh4xJSClcAyVYAHMmD?=
 =?us-ascii?Q?1t9JOq9keJErPq5xnDsLwo5aDVD0Ki4fMybLWWJl5Z0rdg7aW5OORcewxl5q?=
 =?us-ascii?Q?EjMHT9I1mm21KhMeazmLyyD7mShuMIIkdzGGqA8fHEBNbiOiTuG1x3XdiWTH?=
 =?us-ascii?Q?OJbtl1/7YofmPNh3wHiPm+/uACGQDFvY7hCVIHLFp/S8u2xs7o21UwPSb60r?=
 =?us-ascii?Q?HHv3HeA3OmmNke/BoKVl8znpGoRl2Sk/CXE/bRAXFBp2oS+7+l2Sgq0c8wRu?=
 =?us-ascii?Q?b8S2iJgxTlEw4Yj0bMry0cLm5yVcuweF4yzYSz+33lLx+C4Ctuv7n0JmDnK/?=
 =?us-ascii?Q?NJVh34/eqUqjzE25KXJJdVjt6Wc6irAvXeCv7YPoww0hz65fc99Gx7V12v70?=
 =?us-ascii?Q?ISePttK3r1FmMqeDMacxYuoXZcA2BVFFxE58IQml9gor4+3BG5ZbFGqAf2Wz?=
 =?us-ascii?Q?9PCbLKd1VMwRF0NLzm0JBD+t5gFmiAh9+WN62DFV+boftCfgxmg9i0VVplk0?=
 =?us-ascii?Q?GFqob0d/xNsybJxzRloJooARmWkq+vZEOz2sXCbpemJ13vMQcjvl6Paq+vdr?=
 =?us-ascii?Q?0VFKr+GtVe7e8UBPyp4rTjeWyAOb7MrVAvPSvbxN41U3XxgkbtpYzhZItgNk?=
 =?us-ascii?Q?44RvQCbA8GisO6ezQLvEpUXQOzqqSwNzbWigEw5LI+iG6Gf/bS/EUIelF0RN?=
 =?us-ascii?Q?0kih+kMsveNuuuUg8Hj3a8AzSBgWrh8aiyex2Gt9g3LeazGg7jFSg2uOqtME?=
 =?us-ascii?Q?gxXytcWd5VTeBrHxBYCBZTxoArftSMMY46t3Ite/RszKh5NBlIDtwReHx6Sj?=
 =?us-ascii?Q?7luEEdIobXz3yVZJT5aq5V8pNMrBC7CzQXsL7PWXgp1Jwjf6uPpsr2QXbpOU?=
 =?us-ascii?Q?9QlXOJsRgH+TPfoCKFYqC35tNkY3BCm5zgzqodqvuUmZVScMuaJ33OGnuvr9?=
 =?us-ascii?Q?mLcYmV0sUAPVGi4ksb5uEh43/ztN1yXPM01gz0+J1eLRdXXBdyJOnxRdV7Lq?=
 =?us-ascii?Q?lGZw4b3zccavGxi5PNsZs7zGZgP9D6f+chBfdIhY+GK7Phc81c+PA71XS7XZ?=
 =?us-ascii?Q?2zRyREA2b3UF7y4jgnorPxXT6kDf+TR+PFFlCyLP?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5354.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bfd0a9df-32cc-4e6c-0b25-08db6819aa5c
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2023 12:12:44.4636 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jUwEx/oXMppVOGRIcutEvxu1YvEhklbAslkRok2YyxFpqnpeDvYneSBpx69m45xl3To/gBOQMyeWbIxFElb/49YzDOvmBMxwm+mCj+xrzaA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4618
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686226367; x=1717762367;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fad+zYToCJhB2wZjQfenhoaYObcJBXE0h3AQDiVJKbI=;
 b=n1IkpL5O+AvFTWRNl2mlOpVSyyrseYxpm5XHPZeYPhCCG4gBUEfZ11fP
 YV4sYSgESxigeKbk7eXpwRziX6Nsli3AzliS9vSD1jYzj8DJ20RrL0LS3
 74V81kIL1fetqBFEv65l9HdIa25PlrDytmNPZ38RIeuOikqaGnOaRGrP6
 2j8DPiPY+EvRhmQmDN7vH/1plnX19IzHZrFyGkOJLkGAq6R6Xsye+Ycxc
 BRDDkB6Hgg0nwn+7he4VmTpdPihF3dR6r9iCWYkoErq0VZRbjPQT9eEfC
 mquJX0OrDcRg8bgrXp4nxOtPsZU5DA7uiqY6vMaBvgsduo4+b9vnfuRM8
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=n1IkpL5O
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 2/5] ice: always return
 IRQ_WAKE_THREAD in ice_misc_intr()
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
Cc: "Kolacinski, Karol" <karol.kolacinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jacob Keller
> Sent: Friday, June 2, 2023 2:45 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Cc: Kolacinski, Karol <karol.kolacinski@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v3 2/5] ice: always return IRQ_WAKE_THREAD in ice_misc_intr()
>
> From: Karol Kolacinski <karol.kolacinski@intel.com>
>
> Refactor the ice_misc_intr() function to always return IRQ_WAKE_THREAD, and schedule the service task during the soft IRQ thread function instead of at the end of the hard IRQ handler.
>
> Remove the duplicate call to ice_service_task_schedule() that happened when we got a PCI exception.
>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 14 ++++----------
>  1 file changed, 4 insertions(+), 10 deletions(-)
>

Tested-by: Arpana Arland <arpanax.arland@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
