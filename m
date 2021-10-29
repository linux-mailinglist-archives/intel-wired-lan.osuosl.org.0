Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A0E8440487
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Oct 2021 22:57:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DD96C60617;
	Fri, 29 Oct 2021 20:57:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8ca-6dfe_Qjv; Fri, 29 Oct 2021 20:57:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D914F605CB;
	Fri, 29 Oct 2021 20:57:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7F0001BF83A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Oct 2021 20:57:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6D75560617
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Oct 2021 20:57:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7tKmtOQNbsng for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Oct 2021 20:57:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B4DC6605BE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Oct 2021 20:57:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10152"; a="294211637"
X-IronPort-AV: E=Sophos;i="5.87,193,1631602800"; d="scan'208";a="294211637"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2021 13:56:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,193,1631602800"; d="scan'208";a="598355300"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 29 Oct 2021 13:56:49 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 29 Oct 2021 13:56:49 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 29 Oct 2021 13:56:49 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.46) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Fri, 29 Oct 2021 13:56:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bjxgwsdTlIXdc1Pkp3d56qKgYsy2M/kl2J+oQ3Dc+vYz9RydehYCNeCsj+75oVdXiYh0mG5oNZ4hRTUMQZjXIJyf3Uppwu+GMLYdgEqNGg3MGRWZ2h9C7tzeLLQjhTMejqHXhiD/uQxJyjmllIB9GSs0Fg/fixkqDxDd0RgOl8HMMrgCCSv70nMyol1SkdwFTK+HpaRTuC3kPvjekaKjLrMMb8wgOXcf13w5s+g1tb2QJZ5WazqcukkhNhtBFoWeWxLNaYPqe7NBdJsXJBlMZjCjF/DiIsaClbc+kqEbIEndraijMI+xF5602wUaBio0jaaKhVzk5blgm764tECdPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I3EDS1zSMjPKa/YV6mKFMqs9G0XnNA4vn3mi+SNsMm4=;
 b=O3I1iZd+mLGyVjvJAkyqU71QKFQvoEstZGr54WgPzonOoS78hrEgvc4K0+phMOeoAJ52BaU0/O1e9AEUuIC0twDGj3Oz/A4L/s9VqQGIFcW2TCAXZPgirLjrjHx8MxcyaaLIk4MlTKH4lRNZ8F1cxtYGdcWB3hVTxzJ2UQTzNhTWUGT5zY99b0mo+Lsd9umt/z6anmh8i3ojP/xfSwVTsFbHaO/tud+IZsalG+QTSJo8iYo5NSk1aSB1KoKp6rFBrFUqDcG7bNp+kCiRE/uSmVCV705h1Iz0+tDsW2te9Zfcd8NBQBka+8VMa4Vk91wPyzyZUqxFIk9jH4oho54fnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I3EDS1zSMjPKa/YV6mKFMqs9G0XnNA4vn3mi+SNsMm4=;
 b=akbpInrY/clOLqeljOirvtg12HoTC7vKG5N7ngBeQviPw2PNOosV+3NWuj+SQRtsPtFWEauQts3mFRo3G6H7NbylJa9GWR8pIxwOZV3ISCBR2xGEmMDRfuBYzahIX7C3z+NbpybBUHoiKVccC09MMhOhJyb9+MmwnMZ+6ryVGAs=
Received: from MN2PR11MB4224.namprd11.prod.outlook.com (2603:10b6:208:18f::10)
 by MN2PR11MB4760.namprd11.prod.outlook.com (2603:10b6:208:266::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.14; Fri, 29 Oct
 2021 20:56:48 +0000
Received: from MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc]) by MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc%2]) with mapi id 15.20.4649.015; Fri, 29 Oct 2021
 20:56:47 +0000
From: "Brelinski, Tony" <tony.brelinski@intel.com>
To: "Sornek, Karen" <karen.sornek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] i40e: Fix warning message and
 call stack during rmmod i40e driver
Thread-Index: AQHXPDgiwJE1E0fhOkutLORqxl5DHKvrlnQA
Date: Fri, 29 Oct 2021 20:56:47 +0000
Message-ID: <MN2PR11MB42244257802EA7A80EF5F9E382879@MN2PR11MB4224.namprd11.prod.outlook.com>
References: <20210428081941.4765-1-karen.sornek@intel.com>
In-Reply-To: <20210428081941.4765-1-karen.sornek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.200.16
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: faa0c635-16b6-4b43-c6a0-08d99b1e9fa8
x-ms-traffictypediagnostic: MN2PR11MB4760:
x-microsoft-antispam-prvs: <MN2PR11MB4760BB3AF18698E672E2538A82879@MN2PR11MB4760.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:489;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rfVbiN1tYVct16naCTkn4RetvoB+xgSvYTKrRJ/7zPcOL34G68Jd0h11FPBoOUR1ygjplzv/M1faeizTpAGTD2XEIbcfV9xVRc+zw2DIRopK8zFZqGR06VpyZxQL/uvDyEsYYBY8jKL8NgoCBM6moMhmFL2P1iQXL18zPIhHARKYQGkz7lQTQ+0XoTj99edf6rPvm9DZ4OeAqH1qc3LWaPMWmMYzL038BPDwnztQWweJi5J16PGGn3YKOqrPASqmY31WTQfe8cmoGPi4AQVhDOkSMaQ6S/iZo4xFKPR4bamQ0WO49rdTAKqXuLkcUv0gD96gISRdsnGsw6vLRtWpfOauJT5AXBcPQIgdzUKRuFQ6/mASLoUGg2IBtM5sTliibCtkuxx+0fuCSg5/ICmyzZFjM5IWrF8GVN3Gjqb6ymJWElWfzVOrGdRoAiFfHgsDXhVx2FdEz3/78MWjLnUwjsxcWXmio9ZbOe31n/tifzKDWZndkb0ehSSqKwn6RFg69mxhnrZy0mvA9M1/bTmEwxOxO1vfCwlxqtCqf0VfKNDDrmIkmP8cOOQOVfx123yF7R+TdT4CW6MBtH6gkJy4jlI/hziPuXPur/5HRg6EjnbbNQgcg6KJX/RtpCn/rE/7GDRSE/wKncjLyI4eVKMG/khPf4xyLWernyxllmRkUaOlD784Xw2PXztrdUVjxRx4ylcc6C03Erlx1C0tczn35g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4224.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(15650500001)(38070700005)(66446008)(66476007)(53546011)(8676002)(66556008)(64756008)(2906002)(5660300002)(66946007)(8936002)(110136005)(7696005)(122000001)(316002)(6506007)(186003)(76116006)(82960400001)(38100700002)(83380400001)(4744005)(55016002)(9686003)(52536014)(508600001)(33656002)(26005)(71200400001)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?rZ3lravqfiCzyPHSEUJtRBy1l6fsLFYvxULUCeqsXyle94HzR0UkuZrqHls+?=
 =?us-ascii?Q?PQbxVYiPaJ2vz+o28aMcoJT+WU6WhdqvBxzABXxo/JPI+XzgJfpCLo7D1DZ6?=
 =?us-ascii?Q?ymkkIaFubuXWC8KbLhy+U82GT4j1qYiWooy0m7pc9hvo/CRehnErZahLGQ3B?=
 =?us-ascii?Q?y89S4yw3hRogEcPGBgEI1I3mKw4TpfdJevleWc2N8x525XfhTJXybt4/Pncp?=
 =?us-ascii?Q?KvqIz0pmcODRv1DzhuGjN15jwIoxC4OCuxI7biRf8/n6ru+iyXtcPKYTOn3w?=
 =?us-ascii?Q?uXsTMF6THiM/rZiMJalcgnU5vX/7ynluAh8lOCN2k20aIWzNxqj00RB3Gtz/?=
 =?us-ascii?Q?sonvLgg+BOA9BkSbvVWmL1kEv4Mr+GQnUuVNBVveqRI/DCNhL/Ym2a1GbpOZ?=
 =?us-ascii?Q?dpi/xW5ppjmKXFgE0FIsTwitHTalU0HeS9xZ7a7Yjpftf6avXMvhGOfDyLEd?=
 =?us-ascii?Q?W1zen5EJ1nWJSsRmoHUDB369P9jZPovsZrX0Ja0rBhB1/+2CL9KvVfZu8GWR?=
 =?us-ascii?Q?AZ1GMoodo0aZi0dZTQxurMlRFCtPnzghPR2gwoWY+SPVw5GDWlvFvDEoxi6P?=
 =?us-ascii?Q?PRiVDfryqJEag/DNLJOZihfvqux1+L8C/9IXHPTYbXFbhzNcqFtthaQZT5i0?=
 =?us-ascii?Q?ANGWIFeMNoD40i0wJF31mpochikmtDk9n9y21DfUfpxZkObQRCEy5RE23tNP?=
 =?us-ascii?Q?ngb36L6yLOznW4ll20FtVhl2rfPhlXhdEhU4irZj1ZwGnqRC/Ux/pvj9cDj1?=
 =?us-ascii?Q?+caxoMYu1oIOYmCIgA+9h5xhhwwKbGeYjUw3oYC1gwgr8nQFX8VuBTS1mopV?=
 =?us-ascii?Q?dpczN9eZrxRLSNCr0RMDbudR3LMTzULND5B1kQUZxgTckJhGWx5NszyvuYEC?=
 =?us-ascii?Q?9Z5GtulsAoB8k4m/WBi5BOKWZLZudOVh+3v97EgsRxY6I8VshsLJr4mRNOuB?=
 =?us-ascii?Q?2AB31jVoKCif3sie7QlvwhKIsAevJmtly+KhojAgOogw9HKMyBn67ckv34sX?=
 =?us-ascii?Q?DuMWkqBs9Qz8UPJuKj5mHSaooWxNj2uSWFrvfb1kLP4+qEqHXym8VsHavTlb?=
 =?us-ascii?Q?TXzx3+cYaxGyDuDlRogRZLClmeYuxA4dyxBnTi07P4+rb5gIYJ4nI/QlyzYW?=
 =?us-ascii?Q?VkOB85zh3G/QXYqm28dFA0coVI9cidfQZD34DzPrSDEXS7po7T4qXDte3db0?=
 =?us-ascii?Q?70XM0rNX9/2tVr99P8SPsq0Y/NV+Jx4IbbOB6gYMzi7LEzDfMQJPpxhZSl9E?=
 =?us-ascii?Q?qZieWFwgrh4S1bq7H3GXyN91Kd/Y0Wr9/0z9xiJTEh3LfjZbDFUh8oj8NeNl?=
 =?us-ascii?Q?w0nKj8FLFlcq6rh+lmq8rNMMllSOrzvRUXygUWtU1Zn4KcgSaXsU7i9ff9Da?=
 =?us-ascii?Q?A6PGsPszUI44HCVcuOj+9rj2nbKSib3u7hgYh+iz0FwDL3s7MLlZ+2WgIrir?=
 =?us-ascii?Q?wIiYm0UM+jdYrL+H5kDO3K+vLvotXTdIbrYJEsngSiDgeHgIPuQad+OHIfFs?=
 =?us-ascii?Q?cMNrWR9D345w3qcFI7Wj9DeMNKnsA4/9O/1zSoMKgms3Oxf4OGHizgRYtUe/?=
 =?us-ascii?Q?3eIFIKJ83MarXs63hZkUcvm2RmHmZxMUt0hNJidrLzLSIPeRd3VDP3xn3Q4P?=
 =?us-ascii?Q?Tth+lM52CIrJXw7vVkd738cumrLeyzo34hyy9Wz0C/prDRl1NAesZDss/0xK?=
 =?us-ascii?Q?hYFSLQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4224.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: faa0c635-16b6-4b43-c6a0-08d99b1e9fa8
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2021 20:56:47.9038 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IzpPJjksZbbIfamI4B1cprPXkcII4EV7mrqqmGZiXUa1qgerQ5gFew1nh08YS/Yy3d2pBj7wc/UQQuRNFMTQOvKjWT0iV72oh4IGtEGOIgk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4760
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix warning message and
 call stack during rmmod i40e driver
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

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Sornek, Karen
> Sent: Wednesday, April 28, 2021 1:20 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Sornek, Karen <karen.sornek@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1] i40e: Fix warning message and call
> stack during rmmod i40e driver
> 
> Restore part of reset functionality used when reset is called from the VF to
> reset itself. Without this fix warning message is displayed when vf is being
> removed via sysfs.
> 
> Fix the crash of the VF  during reset by ensuring that that PF receives the
> reset message successfully.
> Refactor code to use one function instead of two.
> 
> Fixes: eeeddbb80640 ("i40e: drop i40e_pf *pf from i40e_vc_disable_vf()")
> Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
> Signed-off-by: Karen Sornek <karen.sornek@intel.com>
> ---
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 53 ++++++++-----------
>  1 file changed, 21 insertions(+), 32 deletions(-)

Tested-by: Tony Brelinski <tony.brelinski@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
