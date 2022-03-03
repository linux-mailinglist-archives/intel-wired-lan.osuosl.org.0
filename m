Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 80DEF4CC360
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Mar 2022 18:03:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 77F9760B2A;
	Thu,  3 Mar 2022 17:03:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VzfVlIm1EIJk; Thu,  3 Mar 2022 17:03:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 56AFB60A83;
	Thu,  3 Mar 2022 17:03:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0F7AA1BF402
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Mar 2022 17:03:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EE968404E7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Mar 2022 17:03:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nkbRrvKhonGr for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Mar 2022 17:03:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 19275400F6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Mar 2022 17:03:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646327019; x=1677863019;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Oh/xn4t1PVBr4349D9ZG5SwirnQKWGq+twewUsdE56E=;
 b=Jk2tzjzrnklz7K7EgqcAaLCNhzOdjqyq45Gden813XTNvWMaYC/P40BE
 ED1yot5wBC9maKNTdq4nxhu/pEZOdR40Qfb8Qa4kgzepGclKLk/HS8bKt
 50+qEHDfZBRES52TUF2MhGi8WJkRbTkaPUQJY8Jq7auFBIXBvDg0ypbou
 qjkdOeeavh99eKhzmU7eLev6i0KFaK66mGOlT7tzN2fuUQFLGNm3IOPrR
 VYyj+3O4wJoUId+ZdWNwrWQxz/NDmeJlZ30VKypuDd+rDnHPmc9fgK4Kj
 2DV6QAiBSZbEa83CqC+kZZkg751AnFtSgV5iRJ/HM6GbIf4MD0PnCZnum A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10275"; a="340163033"
X-IronPort-AV: E=Sophos;i="5.90,151,1643702400"; d="scan'208";a="340163033"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2022 09:03:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,151,1643702400"; d="scan'208";a="545926519"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP; 03 Mar 2022 09:03:37 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Thu, 3 Mar 2022 09:03:36 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Thu, 3 Mar 2022 09:02:53 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Thu, 3 Mar 2022 09:02:53 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.177)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Thu, 3 Mar 2022 09:02:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jMzCNmLMEoP1K0xL6cXdcjNdaz6Ey0AEA+lLOXYwxQh7I3jq+eNbFRFsn7sw14W8s3v+besub3rTJKcECcOrrnewwzZ1q9C4HWlsqsf/B36TC2sdzCMHb8MOgZDksrn/nIFSIWVuXEHZ+aAvakuns9uLfUk4mg3A5V6bypO5P0idZ2qYQtQPT2fhmubndn6TyBJ4HwSOpqFpCTja01dJIaPmWxGZeEdtfu0DV6OLJEh/VoPFj2aQNWksIhtBvVskVR+grOsxIAMfpv5Mxl25Cu/2wanj5vzsSfIB4+JMfOIB6COswwTPvAAkBXQqr9cXDzj6WMR6SkSZmqbD+OLuoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QW6RRe9HHaXtTTcNCS/xMmXEHQBpa6ZytJc00p8l9tE=;
 b=EquzB8FyK1nRO9sYG1k8SZN3Jexz6awNVXIcN0UlQGf9FHoBnB8fNPmp6T3vfUR5VgrW4kPfRGnFnXv13jtICg8UfTGz8cD5H/cj/c6Aw1Fm9w2z07OhUgQmNZeYHrXoslw7xBVgSUi53WXeMWHpMeYmfyT9CMPiJTh7kspA7T9w//nfCAPJi9HPqK2pJCtGdK4daS6hlcU92Ip54g/6WT2i+TDMAS+OpjwKvm5TU0hwQie/aKUH6IhI40RpPLR50Y8QQ92osGOlS/5iEmoZCKmFGKszFPjHMUI5u5JKgr3hPr69edqVsJbUcaVB9aIGYKOQUQQb/9Zdwy5/jpJJeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BY5PR11MB3973.namprd11.prod.outlook.com (2603:10b6:a03:185::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.25; Thu, 3 Mar
 2022 17:02:26 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::a594:7b41:f854:2478]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::a594:7b41:f854:2478%3]) with mapi id 15.20.5017.027; Thu, 3 Mar 2022
 17:02:26 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Ertman, David M" <david.m.ertman@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] ice: Fix error with handling of
 bonding MTU
Thread-Index: AQHYJQ8OG75M8XlQnE+RIuz4cvVUsKyt9qWQ
Date: Thu, 3 Mar 2022 17:02:26 +0000
Message-ID: <BYAPR11MB3367FCD501B3B6E891080398FC049@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220218203925.1890573-1-david.m.ertman@intel.com>
In-Reply-To: <20220218203925.1890573-1-david.m.ertman@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: aaf2bfb3-936f-41af-e4f7-08d9fd3797cc
x-ms-traffictypediagnostic: BY5PR11MB3973:EE_
x-microsoft-antispam-prvs: <BY5PR11MB3973049E4B63BD4914C122B2FC049@BY5PR11MB3973.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hBzOzT7td/wnwK5W/7C9na+5kHiM09SZqWW/Hm4N3snowwfR2e54+QgP9r1KfDhjIjASlPcPNg0VZBxzX98FtrXCgrd22kxv9xZBsSkXtLq5huGE0WwCuvshaYeZvyA1zMgk8MzB8KKFHCNcnSVful5uSDBrjLM2/+hlu+tzZl3XdPdrIjjIxJvQ2MojYkhMpZwtbgbEifI75d9h/EaLuUUm2yOVNPgLjCTMjTmPjzSK2nVBGEAvF8mnKhndbPx1hksV1NCu2KLXePTQVo0eaXxq+cQKbkjvF9V6bM6CYdJdNquQzeIHqu0ahewLNow3yTWCSp+ulHTtbQxjgshblNHk4azB5AdLq055sO0+D5Dh2MZPZ5Mmvm6VnO0k0tduAHYpyBx6iuLa1K+eQ62thxhYRsEKJQVR4G/drKtKXeLK8LuFmlC0HRgU+ZqOeevg5kMx3vQPFdSrE9i0WZI96ypoeHaVciVOohmVNgcIoGbdlnwOyioe3uPKDhxYU2i6DWP2YSRA8L9oK3ttJL5fZqQG7NsNcx7SD4Wc1UAIK8I/5TubZvi68gkD77e8SLbHdkm1oow2NkifTAH7ELf7uvrTLkT1pIEjgmUhKyI+A8k2ccst5q3781zD2LfeQAdd+kHN8/wj4gGAQg4ynXhufPDoskdYc9zLwpZYVhXDYoRF/XTZQw+eMWNOwQQu2P+TZxf8o7qLQRPwXkQW5a+jIw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(9686003)(316002)(86362001)(5660300002)(52536014)(38070700005)(8676002)(64756008)(66476007)(66446008)(76116006)(66946007)(66556008)(8936002)(186003)(26005)(6506007)(53546011)(7696005)(55236004)(38100700002)(82960400001)(71200400001)(122000001)(508600001)(55016003)(83380400001)(110136005)(33656002)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fqgg+rV3uaJMW+5VNFKipI3PHwg7W+RHcXaOMxOux/ykH0xm1EeTtLQy/ljC?=
 =?us-ascii?Q?+R76FOTEEo38Y25eP1SXE92DlnrFRfydyBLD0fcxQ5jxaNUA4M3YAccoeRTc?=
 =?us-ascii?Q?4NlCYKj1jjULqLzN0Tn7jgR0l7IM/nvxk0YNKWOYz4ZFZybS7VRY6LATsosG?=
 =?us-ascii?Q?iYi/05CAzplm1KfuR+PRSoBZfAvEYgUQmx54wHSVLGxmP5S3is5yjJQbcDSa?=
 =?us-ascii?Q?DPdS33yYq6TR2XEH0MZcpXtpVC2hWGx3jEJUUYAFD4Tni5fGm4x6CQqswri9?=
 =?us-ascii?Q?ZhXacG9GhNE4QZfQzbA8rnDcT/c5EijDDAqSWRjAIcetOQDim9T8XfoE5gKt?=
 =?us-ascii?Q?J9nKYGC1br+JnPOYMuHkWdW34S5k6ID5QadmEWQwrNOxWUi4pzaB2PeTUVqv?=
 =?us-ascii?Q?FBPQw2fShTy8uMTis8ppyluu2PTHnM7OwQuwkjU1fzxfPdTjSv1ZicL6Uuwk?=
 =?us-ascii?Q?rtd5fBkP77MyssqiqAjZgb76sbsaE4R+V/BGMCIJn8dySgJEnEeLn7Odd9Ea?=
 =?us-ascii?Q?LvAO1PniA+pc70TbrbzogKH/Ng0a/b8c6q5LsVFrNi2IRz/X9+e+f4yfbvU9?=
 =?us-ascii?Q?P7+SDwiRhgEJ+j3KeLxMDrmLEkahexrlEUKSkM2izgH0F+q4RQ3CO1teSRNt?=
 =?us-ascii?Q?oEoBe70Qx4UA8vlKtPHuSRguj1kV/ZYNcqL09UXW2re8XIqWq4cYqa26GYXw?=
 =?us-ascii?Q?1KSE1710M4GwSQPBEM+2a62BkoUz9PVeGLOJa9yr2wibChlc3KK5AiZgOeNJ?=
 =?us-ascii?Q?xPLhRujC5yhVBpCPhsB8Qso9BfRVVqE/KBOWjHLOYT7Z7RKoEGNWh9IcFrt8?=
 =?us-ascii?Q?bK3eBHcv7GfDHQM7Yk3Zr7+cBT8Q4nd+l7x/bOKPzAqiQDa5WIkGvdYijDHa?=
 =?us-ascii?Q?sVblkvUY4LD/K8uDKF0okpK8bvww4zfGvOhw+t7hamdFRihUwnzEQcA68FpC?=
 =?us-ascii?Q?zbl7Te0Wx2lPG+xTUEmlxCrW3Ifd1Ydiz6f8BJjec7sT1V8IpRjrWbfXEDZC?=
 =?us-ascii?Q?/RZBgcamixVSJcip5bbeD97+Oo2x7agg7mbkKXWn2m3JATpi1TL2O07niIh2?=
 =?us-ascii?Q?7XWLNqKzcJH2o2sNF8FkqRLImDBBKKiLDGH5XLAVDHLPA+U47uSpwgz24Q1T?=
 =?us-ascii?Q?OgwT22qcOxFBXuZKsXSzV4ceSl7prV9XRPi19BEWx6+IUAzRQZzDaurjT4xX?=
 =?us-ascii?Q?gjT1DhL/+/ZvYKigwXWnrwjjMDaGQwOB3dKUGq+/XnOk6MGeZi7GCB06rq6Q?=
 =?us-ascii?Q?WAetlxplKAUO8trL+GiYSlXb95QroPKEAwHO9xHifbnpd1JSqoOK4O98RKVN?=
 =?us-ascii?Q?i7BeXa6QPPbA8HeA7k7oEJV1rXWjKWCv1NlMGg8bjZzHLNkuafdfDBvmFFJp?=
 =?us-ascii?Q?AteJbz0INyyg6JCEpqySQCl9fmuzQP1Wo/fJ+WFh0yi/MO4REoAyzaefTtA9?=
 =?us-ascii?Q?+m5eUDbEmF4YxRF8ntYNbACpUMOWRS6vLrAXEQer3Ncnp7wc8PWQ+73p5+YX?=
 =?us-ascii?Q?DgThgPrgNGytIFrV8TDAb9OujEcCfj2aDB+nccQEHQMt2+kjGKV6ZIXkWNDT?=
 =?us-ascii?Q?AU9Q85UrFe7jo5Fz349m3CC4XEf3WNFWLHmxxvFP57JReRmLBniqLHg2kFCj?=
 =?us-ascii?Q?mQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aaf2bfb3-936f-41af-e4f7-08d9fd3797cc
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Mar 2022 17:02:26.0514 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oJHBoMCFFtNND0sooDuPPPUk2KB0N2HaFYnQOzoJVId90pKsKJ67SL9JxepF8WBo0nQT+tWsBIA2EC+Mm0D1QA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB3973
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: Fix error with handling
 of bonding MTU
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
> Dave Ertman
> Sent: Saturday, February 19, 2022 2:09 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net v2] ice: Fix error with handling of
> bonding MTU
> 
> When a bonded interface is destroyed, .ndo_change_mtu can be called
> during the tear-down process while the RTNL lock is held.  This is a problem
> since the auxiliary driver linked to the LAN driver needs to be notified of the
> MTU change, and this requires grabbing a device_lock on the
> auxiliary_device's dev.  Currently this is being attempted in the same
> execution context as the call to .ndo_change_mtu which is causing a dead-
> lock.
> 
> Move the notification of the changed MTU to a separate execution context
> (watchdog service task) and eliminate the "before" notification.
> 
> Fixes: 348048e724a0e ("ice: Implement iidc operations")
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
> v2: target change from net-next to net
> ---
>  drivers/net/ethernet/intel/ice/ice.h      |  1 +
>  drivers/net/ethernet/intel/ice/ice_main.c | 29 +++++++++++------------
>  2 files changed, 15 insertions(+), 15 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
