Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EA48723F8A
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Jun 2023 12:32:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1D0F060ECA;
	Tue,  6 Jun 2023 10:32:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1D0F060ECA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686047555;
	bh=WhPQSGozk8dPQCfnHrpuEhDZf40MKHEnHBtNGkjTfK8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=K/8ZAtwyEWKvGXJvelBFUgA0TctuqayfKYSwJvzfGKdcGoAQHkbqAAn3agYb9V85L
	 YJmWR8QeFn+Usxet03MV/WKehPuz8iQye3t76ONoxU7ziufTUSdOlf5vn/Dcqaqe1B
	 BYK8fsDI2GBTmbOOjdjgnmhfg9lSqNECZYWv4xjXqAb6W17KinyEQA2og0KDnKk2F6
	 nrni6qD6oozK3pcX8oywBMQkOaAK/b8qWegL3YAp16vz9uzpk8aUd/n7m+aOJFxp6+
	 JVep7T0gD9SsF3yCqCsZsvg/SnmGb8NsHSd49G2OqJ78x0zm1bxIfzUpqYFmOJATrF
	 K9EjJKsOtgcwA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ORO5GQoaHlrP; Tue,  6 Jun 2023 10:32:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C584760E84;
	Tue,  6 Jun 2023 10:32:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C584760E84
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 415511BF31E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 10:32:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2584240191
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 10:32:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2584240191
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yk-FjrV8oyqM for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Jun 2023 10:32:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E7ADD401AE
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E7ADD401AE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 10:32:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="359084102"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="359084102"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 03:32:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="712162951"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="712162951"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga007.fm.intel.com with ESMTP; 06 Jun 2023 03:32:23 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 6 Jun 2023 03:32:23 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 6 Jun 2023 03:32:23 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.175)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 6 Jun 2023 03:32:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Umzu+OwiEPCQOp3jSeKZZ4lmMXW0vMpfyFeDySVbHirugBebXDCsZ3QkpS3lBk0f91ev1RQMern9sxYHrArrod8WyfCBQTeqfir6eATau/LwCqGOIhUCLVsiDvq1vJpgWBcb5CLxCx2SMPsEnqf3N163nMbBTzkZD077kaUt72Xg0z+WEBmtjWhNXCqFS/T80Igs9W4FSqQ4q6AtqF3uh/n0ijmw+8BfwiTNTdFezI7oaaJmXM81P88SezL4PAhhnGoHvzup0gMcGS1ox1OqPCWre3GSa2XwRComSuQBg5Bl8Tb5KDTQDrE/bLw/9RNQKYs0ba3y961ecJKndPnrjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C6WQUBZupJdxPsmmUaFsi206w0xVGewSDs7eK/O/GnM=;
 b=B3bfvAbMSu+lkZCHWwbHhqsqm6dcnkpkCLG+VEf8jsgNT5kLHOJiioKB2+dsM2Grt7BAgVbEI0hX0Z84sZ8+WaworVAlMCoODszqG+KIqRErlVBLFRR1Da9dxvFsmXiu0mD1O1D+btwY1qY6vc0msJtnn1OSak+zSZJfaY0SDmr5HCuExbTxXA8padu7t4ONp7L0t7iQHcXBZt6nV+PmEdlvM28KNRPQBhbd3jItYK6+fFnpd8QTKmJJzNEkQ+q4bh2+vkSp7/ym96/LC+/xHpRz64ImMiJd70yTnQneYaQh3dl6wZ4DlrqNR0KXB/ms+rwUkY9C0YzaBVsqFO3PTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA2PR11MB4889.namprd11.prod.outlook.com (2603:10b6:806:110::8)
 by BL3PR11MB5700.namprd11.prod.outlook.com (2603:10b6:208:33f::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.33; Tue, 6 Jun
 2023 10:32:20 +0000
Received: from SA2PR11MB4889.namprd11.prod.outlook.com
 ([fe80::c99d:1c22:339d:e48d]) by SA2PR11MB4889.namprd11.prod.outlook.com
 ([fe80::c99d:1c22:339d:e48d%3]) with mapi id 15.20.6455.030; Tue, 6 Jun 2023
 10:32:20 +0000
From: "Maziarz, Kamil" <kamil.maziarz@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1] ice: Fix XDP memory leak
 when NIC is brought up and down
Thread-Index: AQHZkw+p7Pp5PaAiZUOvcwqo5XGE1a99mokA
Date: Tue, 6 Jun 2023 10:32:20 +0000
Message-ID: <SA2PR11MB48892CB52720730F87ABB69AF552A@SA2PR11MB4889.namprd11.prod.outlook.com>
References: <20230525105155.105870-1-kamil.maziarz@intel.com>
 <ZHYdQUT7oCDR11U8@boxer>
In-Reply-To: <ZHYdQUT7oCDR11U8@boxer>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SA2PR11MB4889:EE_|BL3PR11MB5700:EE_
x-ms-office365-filtering-correlation-id: 584475cf-79ff-42f4-0cab-08db66794ebd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qd0BmR7RsnfALH+57DWKmEjHNCPLxZP2Pki4s3EY0Ur1gGT3/s7dpVJfWt/FsIbqFj5e/wTQj1jR5kKV4ITP0mPPbFd8NSPPOLwqLA7Z89dafs8DLRNO2w/uXRuB3l99IBgGW0K97BIDkEBJhKdRP5VhJCKj1rNTwg48trt80OYvIH8Kho9xMJS/ismHlwzdNsbFjU8S8BnFps7cr4euw84+V4EHY/pF+DoFcn4+97Po8/OTh3Nv0jbOz/L+DbwVR8buUkoO3RMMuWIoIm3anZjA/mQ/kgsVGa0e9C9bwcvCUWeFkFbsdTh+7ydE7WjfnU1sGhJ6pLg3FUumvYorKbbfsSzlwHYmyoa0OUKbBSpUr4c2cXLa3KZD7DQTN2pyiOqc8NzobPAhYQJxSpVa4J3zPpbR6zHmQs0l+YthLjlQ+rEf7H72pRzo+pf4sEYEos0rP9vphk4C93z8uBcE5YV8dzkiT0t0rIzWjjg3aGAgoperytUF4hkAFAo5T6PTtKtMYZ1ly2f8wT3NYolLHpJpnXRau1qQ8rtrEOkJqNhDZl+9duF6CBj2RHRgZDO38IIM7o8E+qTbishSUVKo7YUbaawe8Hy6fY1huRnVNCc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA2PR11MB4889.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(39860400002)(346002)(376002)(396003)(366004)(451199021)(86362001)(186003)(5660300002)(52536014)(26005)(33656002)(6506007)(9686003)(2906002)(8676002)(316002)(6862004)(8936002)(55016003)(38070700005)(41300700001)(4326008)(122000001)(82960400001)(6636002)(64756008)(66446008)(7696005)(66476007)(66946007)(76116006)(66556008)(38100700002)(478600001)(71200400001)(966005)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/cBiEHr0KyeB8iRtkmBKlxxvcUzmt/zzY6W8mjHpg5a2slUNmJLmjd1EuxUS?=
 =?us-ascii?Q?0JmjzGqytefvU9fBU0Szu7t41f9+OKorGPta3Cgua4K5VidKltnIlvKKJRcB?=
 =?us-ascii?Q?BEDXjNF8XcNExGiKV3uZ/MzEvbLSzPsg2e2esLEM/ON+7OHWr+jpFW4SccV9?=
 =?us-ascii?Q?Hf2cpGzhqULpAtUaHylzp2Fiwnusesj7WaWTeIUcwiLqESeVH0Kzz2l9yiF7?=
 =?us-ascii?Q?qcE022N4+C/RxxrjL2Bsmexm3Z4PR2u+2K144bouMTF1RKYw+6GrjW2LpVky?=
 =?us-ascii?Q?VNjyfrXnCdPus7hrYhWGmtL7bRbuNVml6M5JTeKSzc7HkDImAE1gI73mqy0B?=
 =?us-ascii?Q?Ms6Rh6h5YAMScGVjejvwJH7TFtTD2stqAf2oPtnBQ8RgHfJ0OlxHB2FJWN4H?=
 =?us-ascii?Q?uMsp0f7uOmk1L5Y7h0Q2OtlVpNM8/y0EZQFOLQajNG/bQJ4d+w+sRox+PIP5?=
 =?us-ascii?Q?YF2qoIaQZNkx/0G6hwB6EqDnNN0zjtDBhvWJXU2MYDS+RW/pn0AAAIb1LdVX?=
 =?us-ascii?Q?PRviuVKJkDNLKEzDFsbp1n2YAXLeP8dg0+dbyNAMKL1Lrh0F0wTNX3jAuMcT?=
 =?us-ascii?Q?eXACqSBKD/GAb/In1Q4NSyJHzbl9q5bqU0BvFEMyqnCN3VxqnXuoGpZwJSsV?=
 =?us-ascii?Q?2M7q6nrmPBU3seEILcm0GImdm/QvZzFZeROhkZWiGkaakdso7ZMuTvsPsXpq?=
 =?us-ascii?Q?PXQEjjDnwF09+3nkXbWFp310sw6kbNMhvNlZ2473ujukRKL2Xi4kJCE84TuP?=
 =?us-ascii?Q?heiEWhtG7AJlQHTHOwrs8ck5y9zYeJlIgfQIGj4zmV3vP81SIlJjlMEvQPX1?=
 =?us-ascii?Q?T++KGykn3eUZkS3DWEKx8XmNG+LAV1Nn8MNplbiWyCe/psh7nxOwKuTTZAT5?=
 =?us-ascii?Q?dGAPJRkM29dFTE/hKVJZL5xsdYT5v0NY0+Cc2JzIm2GVnmgIzyGICelr8v5q?=
 =?us-ascii?Q?gpR72y0qswttuCLvAMF3AD759PC7e+mBlX/zv3e3Z18PqHuvCUvWjs9wjNnz?=
 =?us-ascii?Q?gu9XGwj4cB9zO3GE9d0zyCsLFtZzRFGHzVcSDeoidH1f/+CIjNBUE02ZhdHJ?=
 =?us-ascii?Q?ph5bfMSdvCnQh5vNMr8WJrOnHUMGFPW69cZ+yddXoij5o5E5FWixV7UeiqJD?=
 =?us-ascii?Q?qq5f/5KjDXh9yrg9gj0lAhOIkbDlNlVWHyd163F62O0kPDg09TRhf2dMYRxZ?=
 =?us-ascii?Q?KL6fW79a78pqyqCmuVdTSdUVV662nqgmKCSFaxAPD4QpMdSrUpON12nFPxEg?=
 =?us-ascii?Q?HWOOoLP5JKNnnWpSrmOcynxXmm3S/zHIJdwlkRG0ibpn4Y4YkMc96Ikdyz19?=
 =?us-ascii?Q?pkuhQnsrvzm5PFRzP2V5bR6GNSUPSg8lM4V4DSHEojw+tKLDnofn07KAEWUT?=
 =?us-ascii?Q?LolsmJQo3yYT59TosUGHG78nB4mFd+eDmRJdx/St/F8l7IMmG8H6fj/p7FV4?=
 =?us-ascii?Q?I+jfPLDLS8oJZ+v+bZgA03Gp6dCzG2vR123cThQYvMTQ9RYecmT9bEZdgtRV?=
 =?us-ascii?Q?FHEDnYpRFQwWO32vXRJJ1gy94PDIhQuQlxw+l/o2B0ByT7SWHYwLOTL0o+Z0?=
 =?us-ascii?Q?NujRMxp+Ct0000ZIn/87WjZFYXXDQ4H5AplBGu2c?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA2PR11MB4889.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 584475cf-79ff-42f4-0cab-08db66794ebd
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2023 10:32:20.1045 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: twN+yZMWBFLtSB3SD+AMiN3k6Gt8WnutjvMdstHtyJrmYgPdqg9wb/EoThuA3ct/njRKQe1mQhtKfaN+sKyENg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB5700
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686047546; x=1717583546;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=L5pJDOsf59m02brpfEUhJeaaWmw4cImOdba/dViVdGs=;
 b=HF42HU9O1yx7FFR/lHyYl+ynA3AEwGcSdpzgP+cUb2gLr7sF7U4CwhwZ
 j0pPU1gdql4fKrNuI35V0s2SyK31jhAB913leI/jZ8bm8gEftk4IelXdq
 j0t8tfJ8cInY1hTzd1tjXPWfSn9c4QgDaTmwy0jttxA/Ejzy+5dmSMX6N
 3TWVeq4yU9QQ/GdA+ECda2mR0tfu9ueib6a18QD3XGLqpa9k4CB4YeSn4
 6DFJTAsKb05RdvR7CoHJEzqZCC1kZN4obUe9cA5KlAJ9/qpmvyrCsChg0
 ZMx26edVr8yWZsmN6dNvUuH9OMuYXAdi17bO9XDAP4tramnR9hrFN//TR
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HF42HU9O
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: Fix XDP memory leak
 when NIC is brought up and down
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



>-----Original Message-----
>From: Fijalkowski, Maciej <maciej.fijalkowski@intel.com> 
>Sent: wtorek, 30 maja 2023 17:59
>To: Maziarz, Kamil <kamil.maziarz@intel.com>
>Cc: intel-wired-lan@lists.osuosl.org
>Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: Fix XDP memory leak when NIC is brought up and down
>
>On Thu, May 25, 2023 at 12:51:55PM +0200, Kamil Maziarz wrote:
>> Fix the buffer leak that occurs while switching the port up and down 
>> with traffic and XDP by checking for an active XDP program and freeing 
>> all empty TX buffers.
>
>How did you spot this? Was this by code walkthrough, or?

While monitoring the XDP flow I noticed that after doing link down 
and then link up the traffic wasn't returning properly.

>Tx buffers are not particularly empty, they are mapped/allocated.
>> 
>> Fixes: cdedef59deb0 ("ice: Configure VSIs for Tx/Rx")
>
>i think it deserves a fixes tag which points to XDP support being added.
>The code you are referring to was just fine before XDP support.

I agree, changed Fixes tag in the next version

>
>> Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
>> ---
>>  drivers/net/ethernet/intel/ice/ice_main.c | 4 ++++
>>  1 file changed, 4 insertions(+)
>> 
>> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c 
>> b/drivers/net/ethernet/intel/ice/ice_main.c
>> index a1f7c8edc22f..03513d4871ab 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_main.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
>> @@ -7056,6 +7056,10 @@ int ice_down(struct ice_vsi *vsi)
>>  	ice_for_each_txq(vsi, i)
>>  		ice_clean_tx_ring(vsi->tx_rings[i]);
>>  
>> +	if (ice_is_xdp_ena_vsi(vsi))
>> +		ice_for_each_xdp_txq(vsi, i)
>> +			ice_clean_tx_ring(vsi->xdp_rings[i]);
>> +
>>  	ice_for_each_rxq(vsi, i)
>>  		ice_clean_rx_ring(vsi->rx_rings[i]);
>>  
>> --
>> 2.31.1
>> 
>> _______________________________________________
>> Intel-wired-lan mailing list
>> Intel-wired-lan@osuosl.org
>> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
