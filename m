Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 67A486890E6
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 Feb 2023 08:32:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0E79582077;
	Fri,  3 Feb 2023 07:32:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0E79582077
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675409568;
	bh=0kzaok2S1a2QbECQvj3auSeynO1f0J6o3N3epDolnPA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Owah+zWOsFHTLRrIn862JrjihxNxBlpjy8jDhgH5QCCwaDtS3etoEWFw8je/nn7Vk
	 6eHPMeMChCxN4+Ij1aAMzM6+t9DWddOWG/5oUwxHunbk5fNxqzjZnDL3kmxMXmaWgP
	 FCEP6w750dLi0A+jtRgKoOD5BhHYJxTMgRUDSBlfaSWjwHl30J3C02H/C3GX+q4Ipj
	 SaR4WfYE6b/r8Uwq7aB7uaCi4Jtr3UVJRKSr1WvdjEY7eEbvMpEpPxIdwyRCk+AxOG
	 CHxW2g+4Q0G8frGTM2oQmhTq0DrHQCb2uyLZ0+zitqm7eAmIDZpSSyWDRXC+PmG+sb
	 gbdofX22FGeng==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jHKjxkxj1xMb; Fri,  3 Feb 2023 07:32:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 19F73813B6;
	Fri,  3 Feb 2023 07:32:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 19F73813B6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B1B7B1BF3A8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Feb 2023 07:32:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 964C681F27
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Feb 2023 07:32:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 964C681F27
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YHw2DAZ9JBE5 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Feb 2023 07:32:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 401DD813B6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 401DD813B6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Feb 2023 07:32:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="326377008"
X-IronPort-AV: E=Sophos;i="5.97,269,1669104000"; d="scan'208";a="326377008"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 23:32:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="839511562"
X-IronPort-AV: E=Sophos;i="5.97,269,1669104000"; d="scan'208";a="839511562"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP; 02 Feb 2023 23:32:38 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 2 Feb 2023 23:32:38 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 2 Feb 2023 23:32:37 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 2 Feb 2023 23:32:37 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.173)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 2 Feb 2023 23:32:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cXAEPwNu3ni6Ui3IcyXvP25sSYf1sSdZdW5kswUFa1QSzh0lptcSQao8WXCjRiVFvZZZOJNqYLq0JQi8uB99Fg3EMQl+mfuU4R7hvHRf79rKi5uC4BdXoujSLtRtR/TZ549MRZd6RzXVYH3UhhM2rwFyUIJelxnnEojxwy/A/EkNkrACYFUhNaxiOLpi4qB8IWUaP4jl+hIqAJvGXbslPs5CX+ZLZzNoa/xZcLc1l4Yq/ub3FBTO7bIi+DA1QoNrQWkr+kRfbikQa62ed0f5a1vjcSkuspZ+c4zrG8B8vI0OtPTATx3tApkGP6abv39MMqYnqimN3dD8uv5G96Okug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w6DCWYSCuyULlAmwwqRs10k5wC8d9flnBERtZaAQdWU=;
 b=UhaoePIZe6RhGc0QW6xa9NzRNXnTMUWP3GVFQ2NeM3VVlKJBRQcZS3Wx7QMjRpySP5p9rbRwe9ws2At/H4fOGzvHqXQLcgtINs+PGgzfVE0pWNKDlUaLL5o1z6C7w2VcdMml8ecAm6CECFA/nCO6JaZdDXkM3cvGj/5hnXr5fm9L429RWoXto0LEKOjxyXNMpFBVfCVvwekPbd6GnL97gTWuKEZvCJjyXgBZMQdif6yGKAC3xnrM6hnCnh1Xnh+dh/Ix8pVqLxfWTei1jA7sSy10oU7Ybgvok2SUXa8xe/DMhK0YnoAJ+faPpSWyPO35bt4ZarqOY8+ycD4a6+vkfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BL3PR11MB6532.namprd11.prod.outlook.com (2603:10b6:208:38f::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.25; Fri, 3 Feb
 2023 07:32:35 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%4]) with mapi id 15.20.6043.038; Fri, 3 Feb 2023
 07:32:35 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Sokolowski, Jan" <jan.sokolowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v5 2/5] i40e: Remove string
 printing for i40e_status
Thread-Index: AQHZJDPuUpd4BqClg0OgUedNip6PvK68+rMA
Date: Fri, 3 Feb 2023 07:32:35 +0000
Message-ID: <BYAPR11MB3367FDE98EE537BA47263AFBFCD79@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20230109141120.3197817-1-jan.sokolowski@intel.com>
 <20230109141120.3197817-3-jan.sokolowski@intel.com>
In-Reply-To: <20230109141120.3197817-3-jan.sokolowski@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|BL3PR11MB6532:EE_
x-ms-office365-filtering-correlation-id: e63cf2fb-98e8-4815-56b4-08db05b8d1cd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: p/VDBKlGO6QKg5RIgQztvGDkhcfs6jCVoRPpZS4dRSpCkdybEXX519J7JvZai9ss19UV7DvfFq0EX02aZVZN7nyxKu3ki6JhHWuhRyIzUAjgwn7ilPpJ8Beste9oCvwv9OdvkuWbFBb3isGl1ZhtWbkpz5fdGA+rNDCiun9aNl5MG8hDU/WW/vfwSukgEpLOfOBhSqF+30RxBof7M02pOKRyyKu7OcCpuMUNfli5nQ1iM7iWvvALVoYcXHhSvRhrHjEUToAL2SjBssgM60h3ySQ/ETvCR79wylMIeaL209DuCXVVZwpA7x2KDimVqMSb62AHhVa4HKu2uNhEv5BOLlJNhQD5H6020ah4Bw8ccKtJU6AonMTR62I8yp6vNDSLB/jyoKxL/8Q5YHKo4nsvr/YLTfrpHP92DMk3NghHT9Ep998VDiw4aaWcvEk0+uCPisYrLwS6saNbcZpQ1qwAiPkYOORQHc/1wIezw4uf5ixCQ2dMki2H8WkZcoNOSJ/dlpspgIQH6HwJVWmoujDoYZSKk8ZPbz7OE+uF2k6iqaL7+YU8RzDKN/MTmww1X68hkNuc1hRxSxMDG7WBmakX5M3mem6h+a26AkOrs9gN1h/JFtj5HCm9RzT2YetgDNeoRjNP1A9rDeI82beDoD/6WGIB4I1NvZNeLZaeOZ5DSc+qcSGM9+mg3ybh1hLjQ43Xadl7+22gAM8ZFKqoECIkzw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(396003)(136003)(39860400002)(376002)(346002)(451199018)(8936002)(110136005)(5660300002)(71200400001)(7696005)(52536014)(316002)(2906002)(41300700001)(8676002)(9686003)(66556008)(64756008)(66476007)(26005)(66946007)(478600001)(6506007)(53546011)(55236004)(186003)(83380400001)(66446008)(122000001)(38100700002)(38070700005)(76116006)(33656002)(55016003)(86362001)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+c+UohcD/T/8XH8fEcZW9J++0sBIHvgac6Uu4W9kPuOYhkwURUyJ+L9/gOVH?=
 =?us-ascii?Q?jYwFvBnzR0gQc00VMSTW1pVABmnbfAqIfYaXOjCVok+5XINLYes+KfgKjbkV?=
 =?us-ascii?Q?z35y4s4L2Nyae/O0elPgqY8osNDdjrF3l9EkbOxcLRi40NrAlZgEargBOfKT?=
 =?us-ascii?Q?+FBjBSdP8GyQbNSQKOkzu47SnSzVPqQ9q3J92O83dLd1xwPzbbSljpMHoexs?=
 =?us-ascii?Q?952alTds3oAlVQrIRq7zxr1AI1TMCjK/LMIYEl9/L8EbQ4Tq0+5I49Gx2joe?=
 =?us-ascii?Q?5DI914/rl8+UO0W4gLYTyqf64Ljd/EEdVyZx1zsbFsFjNKN5M7DEMwsRfi2R?=
 =?us-ascii?Q?aQCSfGHbK6xfw6B+YH9nsQ5lYKlZ0tjTpK6iUhJD/DQSDETxNiPaZ2iuPHEl?=
 =?us-ascii?Q?JQDFTFS+dJv61aM1fylaKsCSGGk6sPAGRZRgorAMIpgQ+aUBKYoBe6E/oPzW?=
 =?us-ascii?Q?CgB///SAPJxiFE8w+rUCTQFeVqi2eTbwiY6S8TuSC6O6HoJWCiqH+5lbTCpn?=
 =?us-ascii?Q?2TKFZfmTMIb53MKIsaAI7RmrldR5tSb6d/V6+fudjhrZe5sYQXiWpSaKRvoA?=
 =?us-ascii?Q?/aOG33K1qyNlBFoPaf4oFKDwNOpqpl9LOOEebNdnMWbDPb+ohXdcNPxIIVbr?=
 =?us-ascii?Q?hZnOx9jKFiErwxmlVECWpiWsqBSUM8qxRAezG6AOi/YTq761mSXAWPk6VNL2?=
 =?us-ascii?Q?wblU+DhH6CpRX2Icx0ODNayp880Os8I/i6tJT8B6azqzy6atx34mvU2NtFdD?=
 =?us-ascii?Q?HdHOUuK8Jeo8myeShK/ydR6uneOXUpU7lEQYW3CvYVBZo39o6MdKZRctpdwT?=
 =?us-ascii?Q?t4PGbKDhhu5FyexQFmPYM7mt9l6NN4Zf/zn+DgjOKPOhzz/dyzbk+NoZqo3q?=
 =?us-ascii?Q?uEnVKROpzXgqndSXt0gTJRiGBmknP2Q33O8imp+IKJZIEnOI4dOa7K/1L0fJ?=
 =?us-ascii?Q?oM7nRasxPRP8Z2d5dP+uR9Md0iG1ov/1jwHQZML7/By/6niM7SOfCbgAosq+?=
 =?us-ascii?Q?1hPNzy3iksKNZYm4vNQazrJQD7jktAKf+5BT8qYlm7uhYJ6B6/vsc0i5H+dX?=
 =?us-ascii?Q?BAg9X428/bRJgkLZOi5uYio4yCjH52Cc7JmhL6a0wY9107jNpuJYRETE5kw3?=
 =?us-ascii?Q?Yl6zPWgS/0IHdr2HmSjs6aSprDDLX+VqXBxdWP4AmULuLH48aCaPaJXuFu07?=
 =?us-ascii?Q?021o6lhdTjSV/GCAM5Xn7n5sf03ap/i96C22O38uiQC7VQAdRKxE/WzCWptq?=
 =?us-ascii?Q?zWhnZIjxlLW+KMLZQeL2VwfoKuynRotKQFg/ED++HpyAc4QCCU5ZKvfPvKNW?=
 =?us-ascii?Q?m/pctgul/lsEs33HroKtwpJki04BS/L4AxGibYVdu2sFnqgGZhQOjkJTC1XY?=
 =?us-ascii?Q?XnQ4V6obXFPvwC4OUU8Rat2a3sWqwFglKfeBCYua2nCG55EQk5TlW9rHYufG?=
 =?us-ascii?Q?b2WVCP/JgCuq7LElKb8QFMx4Ov9+ufGfbbAWOgmrMiZ7NkShF657vCpFf2Xe?=
 =?us-ascii?Q?8aU+DsjHrz+6kRe9osbbxprCBRhCw6c8J8UcPICjpLPjgH4KgA3WEBVFxYuj?=
 =?us-ascii?Q?q0Rwy4vOkxex/kRkXxIgT91p3YkwGOyfK/8+vcJq?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e63cf2fb-98e8-4815-56b4-08db05b8d1cd
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Feb 2023 07:32:35.4605 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ob2iMFxMIt8ad+WQmXfZA6VCEjuCN1kwbXloQL7rF+Kfbb0pJaPi1KLsLCwpZL32M/s5c2SGGvVRVmdhusa3uA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6532
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675409560; x=1706945560;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=EUGwN3RAYBzH8T6Ev7e6ZcBi+yPBxV+EOX2Z1d0fpPY=;
 b=Qu4WAU1Q8k8SawQVksqGaMUJbLRAPeXCG++sXzn9cDL8TztdtKn5d2c1
 Cro8w8PHWZD/vVF+Sru4MtzZex9XF1KPpikNktJmwl4PgYSRvRoOIyh8z
 P91IxA3mGsUqrnTneneaUymX5dyeG8XLFeDpqvrZzwEUDfF1cROhCBAIt
 MbGOVdq+Z318OZafV9VMP0t4PyQPseQg3lHhdXcBBDcxMu8D7MyyLrmLY
 2sogf7Ls6sJDOh1SEIEUk1caOd7ENVPrmSP2VCYfSC8M1qNbIpXDPyIYF
 7Kegv8Fj4foQHt5q6CQOMj2VGor0JZP115ezJ3GlfiWltcJqAgWdlu5Ls
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Qu4WAU1Q
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 2/5] i40e: Remove string
 printing for i40e_status
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
> Jan Sokolowski
> Sent: Monday, January 9, 2023 7:41 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v5 2/5] i40e: Remove string
> printing for i40e_status
> 
> Remove the i40e_stat_str() function which prints the string representation
> of the i40e_status error code. With upcoming changes moving away from
> i40e_status, there will be no need for this function
> 
> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_client.c |   8 +-
>  drivers/net/ethernet/intel/i40e/i40e_common.c |  78 -----
> drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c |  16 +-
>  .../net/ethernet/intel/i40e/i40e_ethtool.c    |  41 ++-
>  drivers/net/ethernet/intel/i40e/i40e_main.c   | 315 +++++++++---------
>  drivers/net/ethernet/intel/i40e/i40e_nvm.c    |   4 +-
>  .../net/ethernet/intel/i40e/i40e_prototype.h  |   1 -
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.c    |  28 +-
>  8 files changed, 206 insertions(+), 285 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
