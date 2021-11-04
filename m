Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 215C04459D4
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Nov 2021 19:37:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 68210405EA;
	Thu,  4 Nov 2021 18:37:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8IqzIffu-EEt; Thu,  4 Nov 2021 18:37:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 661DA405BC;
	Thu,  4 Nov 2021 18:37:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F00511BF3AD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Nov 2021 18:37:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DB1BB81985
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Nov 2021 18:37:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yEIEi6l8K_KT for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Nov 2021 18:37:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9D40181980
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Nov 2021 18:37:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10158"; a="211820948"
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="211820948"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2021 11:37:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="501646910"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga008.jf.intel.com with ESMTP; 04 Nov 2021 11:37:00 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 4 Nov 2021 11:37:00 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 4 Nov 2021 11:37:00 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 4 Nov 2021 11:37:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Truj0eLBbRuy4xmRRt8xGgz/T/+vVfFVAY1ofFDJHCgG0E16RYizS8f69Xb5VYn2CRGu5h3ilhLKdjiTpBGtxdqFQJMpXxk4OAlxDXKkxpgLSvp/H8/B56zMTIdlK+JGhq3wYd3+qSjaFBRDnTf+ycEosQJUUT7R3nW9FSf/lOBJskjiNbHkNtnuQQuK63nDhPkZ8eC5dBqywmhPE7Mq8cb7KiaBGyi3SPkrvSzYMAB3ExxR2iJ1HjBboP/AFzWZsz6MlFreoPZMS70IebjGY4X5XfDFbYeMeXXXZqrPq1I4yBoJhXN7iObePlUdaJ2pFcC33E+crujY0eCGlmiHJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fD4HwnFoFx5Wmvc2W8dzh/VkkfjYaPyG4zoaNSYca/o=;
 b=OHQhZ4Drmw+RD9sFF7Sis9qPLrJmCAYdOECEB+IoZJaEWmew8CrWCU+cUoARj7UKQSLyeLD2BeK8NWy+jYL4UCqPM5G4dhkhitrlI2ty1xM2QXHbawBtScxZgmyM19aYtBUflwJcDHW/d1cigGa0RU7fh6Nc22El88IHxJCeznJvUUm9ATOpqgy77TWt4jx2MA1Y5yFHg4bdwrEDAug02psAll0dxwEQ2v0Kk/qnDKVIxwOuXDNGnjyibGXnoePpdIfwBNLL3BMF0w4tNl0m2uVzgLw6hWmwlNAaEsAA/sO9xk4iU88hQKLkTavfiH2JacrGv+odHzS0/8W7EzZCTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fD4HwnFoFx5Wmvc2W8dzh/VkkfjYaPyG4zoaNSYca/o=;
 b=mht1lupsMTXdH5E7mwIELJmwu+GKB8+HsXFgbad8r0jkyfRWuf/l+Tug7sIK11KaArRMG/k5FBpIficAeajJ7hD0uo6QADPg/02Rp4aXabMb/2RxDam/KroVpuLrmRE4xI5kgtqshYXDUEptPn3BXckziiRo3ukFogl+i73X9PY=
Received: from PH0PR11MB5144.namprd11.prod.outlook.com (2603:10b6:510:3e::20)
 by PH0PR11MB4936.namprd11.prod.outlook.com (2603:10b6:510:42::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4669.10; Thu, 4 Nov
 2021 18:36:53 +0000
Received: from PH0PR11MB5144.namprd11.prod.outlook.com
 ([fe80::f5e6:293:84ac:6f0f]) by PH0PR11MB5144.namprd11.prod.outlook.com
 ([fe80::f5e6:293:84ac:6f0f%5]) with mapi id 15.20.4669.011; Thu, 4 Nov 2021
 18:36:53 +0000
From: "Kuruvinakunnel, George" <george.kuruvinakunnel@intel.com>
To: "Sornek, Karen" <karen.sornek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1] iavf: Refactor text of
 informational message
Thread-Index: AQHXnlCyEHQGxswHsEWrqH3ZSwltdqv0GFJQ
Date: Thu, 4 Nov 2021 18:36:53 +0000
Message-ID: <PH0PR11MB51449532535F0A45DF55FC89E28D9@PH0PR11MB5144.namprd11.prod.outlook.com>
References: <20210831101202.3532-1-karen.sornek@intel.com>
In-Reply-To: <20210831101202.3532-1-karen.sornek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a6cf7483-fda0-436f-a2b0-08d99fc212a4
x-ms-traffictypediagnostic: PH0PR11MB4936:
x-microsoft-antispam-prvs: <PH0PR11MB4936C26C3D8B5ED226E284CFE28D9@PH0PR11MB4936.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Xug0FNuHhfIJASUnt61gXhdGbnpaTnbVpZEm9QxIan3dWuxKF5s1VsjLNROKlyrCQzqpGffBjWAR4ii4w+114C1wDcP6x2/U5gK3+r5STDii1mpfzGIkWeuyNP+sNxDuoUj6De+hMDmy/kA/E9xY4g2AgOLcZLlK7HT0vuPdoR7qcnr664ddlIncW43YMwAZzAOtT71RtxP/kQ33f3+rdHal0udGF6gl4W7R6fLr8gHLa+gP+E/ugz2GFPRVz97fnAzODh2fglOwQ21bMdr8d4+tcTBWmN9rv/Z/59Zkjxw8pmLsxxGshH/2huuNpRDCadtRc1JJEotfWD2mI7Q7mlCAgHnuXnMmzn6DvhJVsFHeF8ML8b2U06M4Ysx9zCcPLTjkt+51LZE7Y37DMLixFkQBe7WKAh/cYOFHwjvAsP8dap1WPpbq/k9FYKWVAJtebbW4cl0KodNsmYMjAnYSXsEZT3pMIhKWmxomP6SItb+sMl9ryhgQaO7/oMPdK4ddpfMPrEI+IwyRhI11+AfvXAVesCOFIbh2rE/w27G8bJq7hRJ+YVPCQqbidboQSPG8ZTEWtFg1YCUvp8iIIXp6OR0BGh/6DPkhIyR5Spx8Vg/fqgFIq7jNSZ52931A9u49U539c28TFD/rX7FhSwpqFUxjS9g1XdjNKCan8tSv0nFH8C/IS5R6AYx1ND3L0M0Hv0UutU1wftwbcSzk5tgcNQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5144.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(66446008)(66556008)(64756008)(110136005)(66946007)(54906003)(52536014)(66476007)(76116006)(83380400001)(8936002)(316002)(7696005)(2906002)(15650500001)(4326008)(4744005)(38100700002)(6506007)(8676002)(71200400001)(107886003)(55016002)(9686003)(26005)(86362001)(186003)(508600001)(53546011)(5660300002)(33656002)(82960400001)(122000001)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qTXs3KdIXTNBeBpMls2/6ZDYu4pZMSTKera5sygo2y+64cb3ujoltOtlfv5J?=
 =?us-ascii?Q?kp/MRtD+AnQ6l5ANT2vBIp9SZJog5CbNMwG60IZKKwP6PtpPbctWODoXjhc3?=
 =?us-ascii?Q?dDB+9zQiGaqvYTTr0XysxGrlpXBVTgdkPCCIphNi6JJW0pNoiK9S3C0iTEml?=
 =?us-ascii?Q?kADfOK0W5YDlKbt8B1nPH6E4f2SDonfpnqjvMq0ilVFJoYDJ5f3r9FVvLhI6?=
 =?us-ascii?Q?t3AwEvfi3gqoLecgJOFVaJBo+SbPttqPvZnPDNM3kLHV8gAvAOZOgMuEr1Sm?=
 =?us-ascii?Q?UybizscJm+zqPayp+k0x4OPJ2DyVu7fUuphs6673n0RVHwhlhn1y4xHeftNx?=
 =?us-ascii?Q?cBnSIy5owmMfnlWrnrQi8M2zCC84TS4WlwJVdnhGAS3kC+ADS8EGOh7Auysg?=
 =?us-ascii?Q?bvpIrq99xMC4VZ48lXF4dnQYjwKljrrvz3GxmnqyrAkbBTGE+RXS45VUUKx7?=
 =?us-ascii?Q?M0IZoSRMik4Yn6fZIk5PZcKvH/4VKGj99AuMKlZlo1aly1MS5oyUA23qnguC?=
 =?us-ascii?Q?djI3wpFaQiC5TU3N72WByGiVNUcM5beBPe6ffbVjDdF5F3cuz3iuYjU6Z5Fc?=
 =?us-ascii?Q?52rCH6zOELUFlf8Lu/qV8QXw4aal0cti0w/KNvJPltJoZI7vJMbkGiv+CJAL?=
 =?us-ascii?Q?XyT/6q2wr5BTBQwyhpiY12cNYAFnPw6WHBqPON10KoIEaKhl1nYpayMP0eih?=
 =?us-ascii?Q?IhVFgrUXtu8inaMNe62THrj6lSa1AFcAvQ9tH5WRAhZi9gCgoW6MkDzHXeR4?=
 =?us-ascii?Q?DN2Hx1NE9KVE+sWcPBZJ92clKVRtcqhmx+4rZbPWcReT88tdrFYAZSpNHCzg?=
 =?us-ascii?Q?+QMhoUCHR7BlEd9RoiNq+1d4txR49PaMKb1xItmdbFiPHrdbp4PMzLf03npm?=
 =?us-ascii?Q?0RTfO3vHIW8B9slXNFxXnhsFB2edx5OR28qqnXpqmpp9G97bsu7MF5cfafbv?=
 =?us-ascii?Q?/FC9TSJYDMkz5XJmS3nz59jaEsM4MXZr5fwG2jaXL7KAlj+AVrYmOywLQq6o?=
 =?us-ascii?Q?yOGQzyaYSJxzBZIGqzF/MuB5Oe9MwKhFKxN/Y9wbhVnL/ZCLnXIyFIBFzJMv?=
 =?us-ascii?Q?V1NMuxbA23bjGRj6QP1SfmrZkPFGP3LoTh4JXidO3S3z04v40bY6KNywyvqo?=
 =?us-ascii?Q?lpv1WkoPquvUc6NcipT3mbYiMYGoxXZ+fcNFvMaa4KoO+i4iz6UPHXFFK1t5?=
 =?us-ascii?Q?2RujGfaGpawAA/YWu16xo4mmpDuYcUMlg3Sg8YSx4EiYw3Fc0lkio6S5dD8G?=
 =?us-ascii?Q?AqI+hENCsPPgvf4m6LNOzjEh8bSoqfWJZFK4xs8K8S6zZcYcQ5GnHW75qXyH?=
 =?us-ascii?Q?mX5xlLIw7R6MRuyD4x0O1+PxwYjsfmG90eWNMJ8RbHdXLVGqR2n6ek/49Ypw?=
 =?us-ascii?Q?4hWr10a3606XIzryctHvpcO5z+e8f9qpsFcVoKpdk8HiEfkoptv/dovdSMkR?=
 =?us-ascii?Q?K2x+xgUiRBVSwMuBF/QeK28FRoRnxJsl64pUT/gBxxtNOA3L0NIDoYNImORa?=
 =?us-ascii?Q?XJThPO391+C7mGBaBSRj2kVNGfj1OK1nZWxhqeN3dfd9gwTrK7vQ66qUN4zr?=
 =?us-ascii?Q?L50SfroYCp4W/FQroy5QCww2BKgyBgW23+RorLpguriqSmBaELGwpqpmtg0S?=
 =?us-ascii?Q?99JAAUX/R2KbbEkDsrYPgD5pIo8r4+zr0JOiH8rr19L1C7caWLfBn50pPIor?=
 =?us-ascii?Q?v5dJlw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5144.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a6cf7483-fda0-436f-a2b0-08d99fc212a4
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2021 18:36:53.3991 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BgZGHe+lrC8AQJV/e1qaTCAmdFFdNwMpfdiMeXkKrAzQECMYrXJcXDV3lG/SSnMjYfV9JATb4H9iC8rLVUiwWcWx7Z3/K4Rp0vKfWki7zWo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4936
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] iavf: Refactor text of
 informational message
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
Cc: Bruce Allan <bruce.w.allan@intel.com>, "Sornek,
 Karen" <karen.sornek@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Karen
> Sornek
> Sent: Tuesday, August 31, 2021 3:12 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Bruce Allan <bruce.w.allan@intel.com>; Sornek, Karen
> <karen.sornek@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v1] iavf: Refactor text of informational
> message
> 
> This message is intended to be informational to indicate a reset is about to
> happen, but the use of "warning" in the message text can cause concern with
> users.  Reword the message to make it less alarming.
> 
> Signed-off-by: Bruce Allan <bruce.w.allan@intel.com>
> Signed-off-by: Karen Sornek <karen.sornek@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_virtchnl.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Tested-by: George Kuruvinakunnel <george.kuruvinakunnel@intel.com>  
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
