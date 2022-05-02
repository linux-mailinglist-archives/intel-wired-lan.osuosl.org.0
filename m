Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D34A517182
	for <lists+intel-wired-lan@lfdr.de>; Mon,  2 May 2022 16:26:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 34FD3415B4;
	Mon,  2 May 2022 14:26:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6-HRA2BsxM_L; Mon,  2 May 2022 14:26:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D47AA415AE;
	Mon,  2 May 2022 14:26:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BAD0A1BF39E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 May 2022 14:26:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A4082408F2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 May 2022 14:26:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i6aDfKkumlQU for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 May 2022 14:26:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D782A400D0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 May 2022 14:26:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651501564; x=1683037564;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=foRqeQcEndCJ5uMm7GAbVtdA0hvZ0XGH0rxwUEsrHCE=;
 b=BaFUAOrjdc+ibALk+RzuMCIdNoRSywDt+oGImJQPytA6b6tAGGjFtOpP
 1/nOgIUBahvbRZLuQfImmsmPN2f95GjYXOpLQdbMq4XaaZQ5GjH5MU1Ys
 Q+c0DMnM1x3VfGnmlV+X4pZOeZA52SUIRnO+cj73oFrT0xmNzE5HSU+cw
 LasZ5jVcw1khhN+HI0T9X9q/Tq4v7Kuari6UkKgjdftBAnjQ82mSJvIh6
 FdCB7RXiKRXtgFSe7mpZ44keuHLJm7o8JZi/lqDMzxgq80mfO7WNT+mdL
 8Ko2QbpQojMhvkZZWKhSaR+fRj4OMczx3zv8BENXC+oRx4vBpX9UC1Fa4 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10335"; a="353654650"
X-IronPort-AV: E=Sophos;i="5.91,192,1647327600"; d="scan'208";a="353654650"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2022 07:26:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,192,1647327600"; d="scan'208";a="598646303"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga001.jf.intel.com with ESMTP; 02 May 2022 07:26:00 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 2 May 2022 07:26:00 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 2 May 2022 07:25:59 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 2 May 2022 07:25:59 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 2 May 2022 07:25:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bkm25FXIZuy3JzVejVyinzuz05XyNTPv8a/aGOnAUgnOeUbvJO3JwVe1w/IEk9a7zmHTy3FIAafAWaWmYaBZNIcpYunTcFcNsHETRjlabdyotnJaE9qeNBRxXgu6hXKcbEFjs7YoSJJMYIblPkla2ETgCi5C7O4pFRR6nlSIIrX7CiMf/OYeo63+2/Em8vJyIyjqWBIXLfh6i6TpYz4TlmoyHqjTAvKiR0gS9Ab0k3K3XVezzLiSygGtxLY2AIvIpoqGXrLNR/nNMIm+ZitJ0R0J3NcKRVTcR6XASbA2I+P/j+hLXxQUKrZbqlAZIhDKiBADzY/CoXomIQvtAOitQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oyc8y6IvMoRZ/bQrWBqw+KjkTFQ2kSD0rDpDwYjFFyc=;
 b=Y3FPlFvhYHgvB3LiJuAE+ObprFEvTwn9M5EKfEHVbkzfeDn6ttuLffaDMx6jP5ti2LNO1uuvqTGrLBk2pXyRLH958pgQodG+MAc/NjnwFbq7okU9jCRKqSuOuOsho5sUyZHdyP8cZqYHBpVi6t+7/wRIkIZhS9O6bTvqSnHvE+9i8R9JUpfR0UsTGJAtYB4L9G7fxLTU6Wxm3QEs4HKFpVP94qN56hwDbf/G134kyLbOUtvuImIb6dTpHZ6O5TMgOlDESvJyiW7f3IeJURKXOE+rirV0kjKTbvfJVWEAPzY2y4AP6myyNDZiwdbmQa37WYBxPI98o1QakE6bv8c8fQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by DM6PR11MB3867.namprd11.prod.outlook.com (2603:10b6:5:4::27) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5186.15; Mon, 2 May 2022 14:25:58 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::829:3da:fb91:c8e7]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::829:3da:fb91:c8e7%6]) with mapi id 15.20.5206.024; Mon, 2 May 2022
 14:25:58 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Michalik, Michal" <michal.michalik@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] ice: fix PTP stale Tx
 timestamps cleanup
Thread-Index: AQHYVLF7rDPXT7dHYEOY5CUlHTNqTK0Lt5JA
Date: Mon, 2 May 2022 14:25:58 +0000
Message-ID: <BYAPR11MB3367C42485FDAA51FF9E45E8FCC19@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220420122302.574-1-michal.michalik@intel.com>
In-Reply-To: <20220420122302.574-1-michal.michalik@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f267ff33-7026-4c3f-e48d-08da2c47acf3
x-ms-traffictypediagnostic: DM6PR11MB3867:EE_
x-microsoft-antispam-prvs: <DM6PR11MB386781B136F28A8992BC3F4AFCC19@DM6PR11MB3867.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZUM9PWRtEbYHKAZUXqP/LVbu4qvIZgLVX9yQLiPnlve8m8k9iewL45EcUwCfgXZLKeQjpZtsbcCrUwFQjEjCJk/tkpozLsqmgrqJhzjrf7j5tMnV2CRKah3NdJoVlrPWk+fpTkDCHtveJVCHryxS2CJcn49JoUvs1RIFUInhlSpYydvPObeVgxf9SApC4EuMH4f8G3PSn77WetjansPbgN+L9uWL8qeaB4a9b/uH08SYB1FBfQT9VNf4jilfADg2jV7GagCAMicec7tRVe8U04iKtHKK+fudpqFiNWlnlPrzaF/oLNnia9laQG6w1wWx/QajcqeCwa0/mfiEPbTDqOneH9VDkMh2nkojrZywUoRA7PSvU/iRCf06grn1dcJvLgKJ3YK+0P/lKY7ANvBNWMdZdkD+g3YnNVQG5lcT5mqXB0LuTY+xrJ4T5Hlyvmb6gjq2rDgESTztS2wYd2Tj+w2g4WGDnUHOD/OxZeu2ezjHuGvcWxZPdtLYiXv6Rl0xL2ut69iCoS5ySsmQHvguEcWoCKc7e35fc1hi73PTl4b2rafhhAbAhtI+g0zaf1xcPcVLRHfu6I89DGfrvmtEw3DAWgjJ7tP71V02hIQ7xQFHiZsaDdJNsCErDjQXINHtJwqXC8uetpgqFxjEcjTemLCOlxxsQabGedEYRAkzcr2Re+GuY+ucsL39vlS/jFySVqufucrSjSiGhlCznOQIHzOmThWAxVHpnR1S7z3+6hSSCpI5vr8vEvmGLjboXu4g6BUM9Lj57RgvW7hpRClnSJiAfJFS07QbtfJvJ7ASL5s=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(107886003)(186003)(53546011)(38070700005)(110136005)(6506007)(26005)(9686003)(83380400001)(508600001)(71200400001)(8676002)(4326008)(66446008)(316002)(52536014)(64756008)(8936002)(66946007)(66556008)(66476007)(76116006)(5660300002)(86362001)(82960400001)(7696005)(122000001)(2906002)(55016003)(33656002)(966005)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8oiL/NbKhDNkrQJqcBvE4Tjxtx+xv0RRczR/+Cn+wIjNf0vNRnbbolY2/KMA?=
 =?us-ascii?Q?X0BwrP0n7NpclEobACtsNX+LWLaCA8P3aQ5yL3tpDQYKpJaYAnRyzKAGMzLp?=
 =?us-ascii?Q?9CbPZWD1cyZSZKqK/23Bm5JvQaAkVry6LC/LH+yd0j7tcUWMHCtVzXQJ0G+h?=
 =?us-ascii?Q?eYhORBlxn4QAgdZT4pkEKoaCU/FjJMdvucQsleqc0/huftFP6xHqDSeiriBv?=
 =?us-ascii?Q?5Aihm8/cut6gv7UhaRBCYZUwWC7xQntafcgPSRREzUAEnQWkrJWSmbYyFNwe?=
 =?us-ascii?Q?MpEIPu3eVNempTVhlYbc1nFfQCFmNqVCAXFIMUUjkGtwy+kUAg1HmNt8skc6?=
 =?us-ascii?Q?o31W4CADjDzezd7i0KJG66gVsq8B5ag+KPM44DOTYPFMCT1tSXJoG5mQKX09?=
 =?us-ascii?Q?+8YZOgXqI/NgRMxYSHecTR1pkxg4NzAL3mbs2EfCmWabQ73yGQ5CrWjBSLH8?=
 =?us-ascii?Q?PAariqOb1TuPvSzHX8az50qsog+3/7f+boUJIN+biRvAAfBcUm2O+D/oGXWL?=
 =?us-ascii?Q?GoZ3V9eQWD3lI3kZmxHlGtWJsWikumqb40wLRViXJUwD9NPRVRvicfQmiK6N?=
 =?us-ascii?Q?oJRsMS9jlZJkyBjOJsUbJyHmJ0d+9HXwrbpmsyIlcDctPOq+m3EYZ4Yto5lS?=
 =?us-ascii?Q?mmEPXuXKCFS2Se0gzvU6iAiTXhv77/a58jEfHaRHViK9OEGTUGMlCDmHPl26?=
 =?us-ascii?Q?AvDPTGt7BMgYyjTWPcTMCGO36bnC/TzrMnDH4tXfMlhj5EMKNvNENeVWZKRx?=
 =?us-ascii?Q?/44ZXSK89kCMSaQsyAzYhdfPnmzEb1FGjVI0jFe9EcTVG1kLqF4BwNJ/bBI3?=
 =?us-ascii?Q?qiMoHEtZprDFQkUCaV+8JCZV+oMCeAAlLWpc7SHhj+Fg/GHZIpZC8N8lkfgP?=
 =?us-ascii?Q?sYmaOIW5c4iXkuYobHpYwBXCwRmGfkC0FoKsTYTg7FLk+hIsSeoQefvsKF1p?=
 =?us-ascii?Q?5qWUuoFD+Xi0iQmrlhh8jHVvypql3AQulX3UYdc4YP8GX7plcZYZull1CGVP?=
 =?us-ascii?Q?2F+0nx8zcVhdzhYOCQi3pzLZiRWyWxcTEglEwxQj990ZX2edCwHVmRv+R28C?=
 =?us-ascii?Q?VapW+nowk2/TtPIiE2nbsf5x+u1kcC6jXGKO/Itp6OG3z0UmhAhDdtDRiL7g?=
 =?us-ascii?Q?Pq+uxJVamF4mM0pnxQVdZAhnHpYFM4SEI+QXfJNeMihU7y7M5Ksq7N3BsFmF?=
 =?us-ascii?Q?r6AEgWD0UoX0rlOq/9+U9OMGO6bCwBNt+rCgPHMMvJlkaTY7I8nwCnr9yVj9?=
 =?us-ascii?Q?42u3RsgeFaFXXmM2jfXmXXXTF/GUPUal8iiDsjrvICMAPPryZjHb/lH4r0N4?=
 =?us-ascii?Q?F5KTFVh9/6ho2VcnfZu/ztpNq9d919GAMf71pynCSjCaZj7Ta2huc+r2rL9v?=
 =?us-ascii?Q?u5NA4CQMY8EDkVZKd6Q0qkSr1nEP46YBTJPS/H0l7DV8rTi3jfGU7okmhoJT?=
 =?us-ascii?Q?mOh0+DUZWOmhPG16slFixirgfp+8siExMrFfKq8+W/rUg8cLafkeqbwAn52G?=
 =?us-ascii?Q?HBmmcWve0FXIFjBYe5NyDAQIUpjYT7KtpJ9mtof5FYdExZ/gIfmyyu3ohKvD?=
 =?us-ascii?Q?Ddw3uhu4FBJu9M7Qa/whOLCC1WnnOZflflovTV1XN2soqQc/y4rTSOAntPa9?=
 =?us-ascii?Q?wXLoAzbRucxZgr8LgaP0UJpf3qZAfPPzIgovQvpewvKHcpx/U4bc5M2fGh4A?=
 =?us-ascii?Q?f2YjFu9KyHHX6GN8qcUwvyJL4RGyYbzrLoIuQxptnKAT+qU0po2/T7tBaXW8?=
 =?us-ascii?Q?YTet9UfpmQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f267ff33-7026-4c3f-e48d-08da2c47acf3
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2022 14:25:58.2155 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XvgX9lDbU59wlJOmju9/f7iZa31dqYlzOTnBHuqa9WpXoxfUcDujTDSwZIE2H5yDYerWmh7vOt6x1SxhdbYtQA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3867
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: fix PTP stale Tx
 timestamps cleanup
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
Cc: "Michalik, Michal" <michal.michalik@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Michalik
> Sent: Wednesday, April 20, 2022 5:53 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Michalik, Michal <michal.michalik@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v2] ice: fix PTP stale Tx timestamps
> cleanup
> 
> Read stale PTP Tx timestamps from PHY on cleanup.
> 
> After running out of Tx timestamps request handlers, hardware (HW) stops
> reporting finished requests. Function ice_ptp_tx_tstamp_cleanup() used to
> only clean up stale handlers in driver and was leaving the hardware registers
> not read. Not reading stale PTP Tx timestamps prevents next interrupts from
> arriving and makes timestamping unusable.
> 
> v2:
> - update commit message,
> - added a comment to ice_read_phy_tstamp() call to clarify intentions.
> 
> v1[1]
> 
> [1] https://patchwork.ozlabs.org/project/intel-wired-
> lan/patch/20220414102358.13486-1-michal.michalik@intel.com/#2876713
> 
> Fixes: ea9b847cda64 ("ice: enable transmit timestamps for E810 devices")
> Signed-off-by: Michal Michalik <michal.michalik@intel.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
