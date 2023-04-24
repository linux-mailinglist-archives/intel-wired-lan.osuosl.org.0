Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id AB9376ED607
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Apr 2023 22:17:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 80A36410DC;
	Mon, 24 Apr 2023 20:17:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 80A36410DC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682367443;
	bh=CJi31ufqm8VwJ1YU9oOTYBlMNJlyEs/92tJI0bjm15o=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ap4yLrnsVXYcKaPdCMZf7P/6dtw1e6TI8duL3dl9Rbx1M0nLevZHnYpokIt1xvLv4
	 BjPUzyeRVUFQB+BBGVi64ahYPmv+D2g2klW/2/LtIp0w5Q+mdfjixzevCRFwc2n59e
	 jzcRFULCAy7yyz/assEBMZCebOdn6rJ93H6p76dX9IYvunBUetuHQ00z9UtuQAK/oy
	 Ba7kn5loq+pdfPpAIAxNX1GPkbcF5AqIc9ZKj74fb7TFEK3fIGGEnttPeLWkxjql9y
	 2qC8KIJk9jqw87/dONHamKne1tVqgyTAyLakWhP55JkEB1qwWH3yjbhJXx4L4/6Ij9
	 YjkLIuHYwn17Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rJnKW7n2-jIm; Mon, 24 Apr 2023 20:17:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 22DDE41687;
	Mon, 24 Apr 2023 20:17:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 22DDE41687
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 48B421BF476
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Apr 2023 20:17:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1BC2C613D1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Apr 2023 20:17:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1BC2C613D1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mkyGpIE6_lYX for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Apr 2023 20:17:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 322E1613D0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 322E1613D0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Apr 2023 20:17:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="346574880"
X-IronPort-AV: E=Sophos;i="5.99,223,1677571200"; d="scan'208";a="346574880"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2023 13:17:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="837124380"
X-IronPort-AV: E=Sophos;i="5.99,223,1677571200"; d="scan'208";a="837124380"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga001.fm.intel.com with ESMTP; 24 Apr 2023 13:17:12 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 24 Apr 2023 13:17:12 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 24 Apr 2023 13:17:12 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.104)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 24 Apr 2023 13:17:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SsySC7aNxxfp4vkIBRZxoFvSNXKanizVLxc93qLfjhxPN3pv4yc7fdDhyYgn0I3JXsZcxvMstlzpBVG2AfP/5eOdQQ0zKgr6hfiIlgSo8mDDLGNrwSbBkH66RV78rB/TTWWo3UCAcgPxPgq7HebW80qoTX4RkIxuU3cmywvXkKdtXTp4WVDVgFmcim6tUsGDgRjE38eSh03LV5DaDqM3TqCLh0TdLQY14ybmguTLE4Nda9YBzcqP0Buh7Vdp0pGN0X2IxU0uAX+eBEacFh5R0LLlEO2UFrwU5AtIbpCciGvXLclwAy9WCM1smAQgpdkkGamOIJfj5wO8TuuPBfZr1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XTXWtSC0mJ/Qh0BBhP6TFWo6vepVMSp6EaDXmtVG7dg=;
 b=cryzkBw7LUjsCfbNEetn7kCzt29OkZG+t7nMDxCRCcFKyCx+4fJuCtkoRoBfsTYGBS8BBYTHaWNEnW/I8293T9mJqL6Z9FaG1sIhXudwLnS1TGSHbOqT5n+w9fNTj92PldQX64+l7VGIoPrd1V0fWmSgvusDm2+HcUYM/mPwj14CKHVDOhXqdbToaZazaijt7QUKHWVHJJ1vW8DnEInUrREQ1xgsw6O4DC62pESj9JsLr6YuWfhJZkc7xbt2qsZeMW2N/ToB1UgXfPIDkxsFWCZE//jNqpUStlOsbm9C8ypTOe0/KSCuLfGkMNUtVNUpdgqtJm7RNkApq9FEnrRxwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5028.namprd11.prod.outlook.com (2603:10b6:303:9a::12)
 by PH7PR11MB5794.namprd11.prod.outlook.com (2603:10b6:510:131::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.33; Mon, 24 Apr
 2023 20:17:10 +0000
Received: from CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::48d5:6ac:3b50:10d8]) by CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::48d5:6ac:3b50:10d8%4]) with mapi id 15.20.6319.033; Mon, 24 Apr 2023
 20:17:09 +0000
From: "Mekala, SunithaX D" <sunithax.d.mekala@intel.com>
To: "Staikov, Andrii" <andrii.staikov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] i40e: fix PTP pins verification
Thread-Index: AQHZY8suw9VjNjkMuE6+SRW2lnbnAq87C3iw
Date: Mon, 24 Apr 2023 20:17:09 +0000
Message-ID: <CO1PR11MB502805EC4C2F39599613C136A0679@CO1PR11MB5028.namprd11.prod.outlook.com>
References: <20230331121937.1016351-1-andrii.staikov@intel.com>
In-Reply-To: <20230331121937.1016351-1-andrii.staikov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5028:EE_|PH7PR11MB5794:EE_
x-ms-office365-filtering-correlation-id: a9b3247a-865a-46d8-ea90-08db4500e221
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tjzZYEUTldOdkbVey3T+w2MATFJ5AnO423ugAWXkrpGV3nZrfNOrhV/5uA1Quru/VhW7mpHDV/iTwXIYc2hBVLl1Z4VttNSP9LVkrWRWEh/FxCir2gJkgCxCKvxequz5fOnRP923HtW8E3hE7dVwJPs3DJCWGdTDEB8TCmURS9O5bz/Rxc/g92WCAfi0S5EeihwEHnRc6hIgEh5echXXmxXHG94Tuf6Qp0CX/S253MK77HkzSmYsMwJwpfeGWOsGuSbW0/B5p9J3PSIpaNUBQybNMOGeeXFpRL/p16FoPbOmDZ47vpwihjBEcJpHU3iHE+jE5i3f4OhfFsRNuRwqLjfRWL0nCEPrk7y6xYz7Tzd7SftgPVhJcsT6CTn9fYGBsbeWV4xjBl70DpiDdHwvopfKZsY9EwByUahc4HsHwDar1OgF80f7sTRcnuZVnSMAAYTp1EFS5zgwGqHvY+zKga/nN/CX8+rl0BS3NgjCQt0pTZ1zinsp+BniG0wbwBz0LqmQIuTmkvyzqZ36x6aBoq5OFxAvREIYk/qxwpYOIhpAxo8O+60kihrrRCR8AaCv1KbECDg6zUtBwHEhn6vyNZQJUtLKuMr6t6+914PzPT6TAMskr4WLyqYvx45rOfq7
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5028.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(346002)(376002)(396003)(39860400002)(366004)(451199021)(107886003)(6506007)(26005)(53546011)(33656002)(9686003)(52536014)(86362001)(186003)(5660300002)(83380400001)(7696005)(71200400001)(38070700005)(8936002)(110136005)(8676002)(316002)(41300700001)(82960400001)(4744005)(2906002)(38100700002)(66476007)(66556008)(55016003)(64756008)(66446008)(76116006)(66946007)(4326008)(478600001)(122000001)(15650500001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?o6EJKiw+zCBVp5DtQ+3n7+T+txABtbtE9vqHvDEwdDB06UDLI1aEKt1G9aPc?=
 =?us-ascii?Q?NoN1biV3eOf36Am4x2UommG6g++ciL6ADdvs4ixYiXBq6lC8XnjGAOUlJwCu?=
 =?us-ascii?Q?lvM7TfiJbH/Qsr2xCxOMCxkzvpZ6ddaggUonTRE6erNqo74wIzGcRH1ISR3K?=
 =?us-ascii?Q?nvHAMTpIC4uzA8vJo6WeSv12K4uqb7i96lxKoOksLXcgPVo7LFnA9hQYtVAz?=
 =?us-ascii?Q?KTrtvCQjA4r+f43xMzIRMRfMdtaif/Y8/JpYldWqEybTY75o/IhpYNv4nOve?=
 =?us-ascii?Q?Ps1wV8BTfVNlnG88sPjMp1LY1JrGNTmYHZjHqFo4te+E2ebv0wFtEbTzOqpz?=
 =?us-ascii?Q?6mc5AB7QfeNA9zURbRXhaTPXrfDNsLz70AEQ0zcpYZiYLmjdgOu/b38+htk6?=
 =?us-ascii?Q?DAt6TCF8RlUKjo9e0GIeqod+s7dYxeqFkJMifrOiKbMLp8D8kpTUI5lQ5Koh?=
 =?us-ascii?Q?dIL2bBQrKvd3gkhpi1eqQSjg+MQnTf7wkElHPTOn6NVp/DfvK0FmF9TyMl2t?=
 =?us-ascii?Q?gehXd//ncA/28SBTQWqeCyIs/O6Cz+1ZQiJFpVvSPWT+4du1UweY/BZ2UcO4?=
 =?us-ascii?Q?VfoJcs+3/RNH1xaHQmoUuUQ8c7wgDHmB26uTxHf18IAlt+ELJAQiPSxZ9Wkt?=
 =?us-ascii?Q?sXNav/GfVOfu0LKD6ve10R9wf3lnDwxj37M7UxMigE0qZCDk58FsZH/L2D9D?=
 =?us-ascii?Q?Tjk8BXslbQj2QYDkbjReHCvl0zN/w1fOqXW+BARHG00IuQENpPvP+aZBtwiS?=
 =?us-ascii?Q?dhp12xZYuQBzescRnryERScYcp7OlAFEuqY6C0oFGXLHwtVUvaFHlw8lvpUJ?=
 =?us-ascii?Q?BtaN2WK8vU16ZcPyd+jpdEcSzALJ/Jyxn5bjQMVtQ/AR8RYjYezAkQ4GUtYx?=
 =?us-ascii?Q?yT9nGMoSUlZ+tk8Zv1hsMiBPC8w8MF8XoHAZHn9TppF3FLxmalO+4T+nMKFf?=
 =?us-ascii?Q?Oo++/Muz6d+axS0F/uyCuVXIwyRs23ZRu+xqABz9LOABA9UdJmc3kU6J2fWr?=
 =?us-ascii?Q?feABjfljKiVv/lKa8yw6oBlT8EqFfv/AhWx0CG7I8Tv0lKk2q5mG0/bhqw2W?=
 =?us-ascii?Q?/GLCoxKV+xAlJHfkaZUlunNBP23E/jqkSUY4wkCpmK2csk7ccvuIGf3K7WMH?=
 =?us-ascii?Q?idC7/KdkoFtLPOTbCnh8qf67HnvvLLR4D+ZboSIytE6FGVc9AjZxIcowirqH?=
 =?us-ascii?Q?IIro9It1IqOcm9V9TYTlAk+zr6+ebvzK8tUbw6nUvT+VEzBZz72QY1JsQ7+f?=
 =?us-ascii?Q?SiqmoBFUym3w2qfilEsCWGGjA5ss8yiiLFPJLFyK8CdIoD0wwi3aD3TSw28a?=
 =?us-ascii?Q?hqlq56oDy9RDsay8XOue9Vu8/uwzYdNBZQswolPYGYIHxLgaADfvrVVNTZio?=
 =?us-ascii?Q?iKh6q791yyE5qMMJqnco1eIfW248CUF2Txsw2Bjp99YISKWe37E+DhO3HwaU?=
 =?us-ascii?Q?CE2qikt5/z+1UOwm6LiHmfIdKRDMu+RDsbwBxs+aQ4Mf8NmQdIJ9pt82zPcj?=
 =?us-ascii?Q?Uh6QHiKqWbhgpEarEtPFnD4C84yg0t/RBTNIK/R3rGVuX9XAPHexxBDzUZhH?=
 =?us-ascii?Q?rpL1gbGwb3LA71C5lMCxIxv9vw6nfLvMNkQs1IMBBM0jTvUZ5/Y40UksmNAe?=
 =?us-ascii?Q?RA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5028.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a9b3247a-865a-46d8-ea90-08db4500e221
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Apr 2023 20:17:09.8645 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3JDaMuSJTgHtwFc8x3kccUx5Z3H5ibZKN5eMvkKlS0U8OriVEnUFqYWLv6CZplGCBGRcAuXzlQzFccINcc+V9VRyTqnVm2lEIAeesBkCNrY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5794
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682367433; x=1713903433;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XTXWtSC0mJ/Qh0BBhP6TFWo6vepVMSp6EaDXmtVG7dg=;
 b=H5V4kEWM+INhsyoaLCP7JSEvEUf2pvvjAh5WZ4j4Xtqj1Pjk7NSp4XPF
 +iHLubDZZN7JE0cK6AAHj8mBRt68PK3qC7JYv9x99Tn5kmWSe3wLPTHkg
 wnponJiMSm6TVdlPZg2ftgn9U2Qsz+ZdgpE0fnGkJIB9QX9nH6NX4ufV/
 fEV7OWWGt7/OR7PWpnIlrmH02wvHOpQBTRB+L17CTgRUhmxTqF5jcWz3k
 zTwJljCmXpKbFLtfqCqpKhEjstm0YCEe7qZfqbL13QEBa+l5NkPbufrWi
 K4D4cb7AhsPSriYMf6NlyJeFcRRcSIN8stHB/hwmfipE2hQOcNFwFXvYo
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=H5V4kEWM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: fix PTP pins verification
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
Cc: "Staikov, Andrii" <andrii.staikov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Andrii Staikov
> Sent: Friday, March 31, 2023 5:20 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Staikov, Andrii <andrii.staikov@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v2] i40e: fix PTP pins verification
> 
> Fix PTP pins verification not to contain tainted arguments. As a new PTP pins configuration is provided by a user, it may contain tainted arguments that are out of bounds for the list of possible values that can lead to a potential security threat. Change pin's state name from 'invalid'
to 'empty' for more clarification.
> 
> Fixes: 1050713026a0 ("i40e: add support for PTP external synchronization clock")
> Signed-off-by: Andrii Staikov <andrii.staikov@intel.com>
> ---
> v2: Updating the commit message to fit the 75 characters limit.
> ---
> drivers/net/ethernet/intel/i40e/i40e_ptp.c | 16 ++++++++++++----
> 1 file changed, 12 insertions(+), 4 deletions(-)
>
Tested-by: Sunitha Mekala <sunithax.d.mekala@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
