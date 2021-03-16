Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E75F233D972
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Mar 2021 17:30:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3ACD7431AD;
	Tue, 16 Mar 2021 16:30:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NQTNaF2bcLa1; Tue, 16 Mar 2021 16:30:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 22F0A43003;
	Tue, 16 Mar 2021 16:30:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4C13A1BF97D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Mar 2021 16:30:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3AAB9431A0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Mar 2021 16:30:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0ReMRGw4LTkr for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Mar 2021 16:30:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 763D343003
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Mar 2021 16:30:34 +0000 (UTC)
IronPort-SDR: dlyuOSfNVqmHwk4M0R9exL/i4CCgfbniQTkGf6w/3mu7iIczTfQtDwdQFGayHw2R35nEFW0XRh
 EpEKLJCLWzLA==
X-IronPort-AV: E=McAfee;i="6000,8403,9925"; a="169206976"
X-IronPort-AV: E=Sophos;i="5.81,254,1610438400"; d="scan'208";a="169206976"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2021 09:30:32 -0700
IronPort-SDR: E33rrOY4dOahRW+o6Z0maPAPe8WiXjzWQUNGrAIUyYqnq8GtIIR7x22mJhfSz1Vz7OjdqMQXAr
 uKPCOD+jIHHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,254,1610438400"; d="scan'208";a="590715297"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP; 16 Mar 2021 09:30:32 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 16 Mar 2021 09:30:31 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Tue, 16 Mar 2021 09:30:31 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Tue, 16 Mar 2021 09:30:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E0IGXRyp3IR5FLOXwb01vc/P44Gm5VUP7IUZvUWqS5gYEwkiWTwmyBFSAo/SHzCYrFN1OLXc6oz5R5r65vx7Os0SEToVzkOYqQAPh6vfyPenoQn8Pm8umD61+HicYOoBposdnkUC250gxs3+9Uo4Sad86gKeBBfb8KBT8hXc5OimhSPsMzzuYT8/Mkpdv3TgOD35txZZ+XX+/JF7f30i5j9SZh69XP1Cxm/zywbk5x3tfkqOJRBeoG2X0Fy+s8PWwWW7mV+34QCIyxF1oc+XtHx9EpSJsyeoW9yBNYu29ATIdfXaaD4S7Ty6UR8xaiEp1ADrd4ppO6D8Zw8lNWdqPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OSmw2F1lxeyRtRUCqXsMCxaVbdVZNt1F9+gbWImovog=;
 b=iuFwhsa29U8rxRyOXUj4uP/uoQmTrX4wvoNShcsJHFFj8cen6GFvq/t1EgE88Dzzyeo/3+HmJgEV8LBgJLLpyU6bVHIyuaGX3w2ftYHzXb7cSrmo7GNH/KqhDEHR5NCCnV5CP08eyZ4/XQOBnDATtpqVmvEEKJSGvc/vA+/MXEL3K1Dl47va5gdhLrN3sf85tPAdKMvQ/SWR5XDHGmXH8NE8mvKNqiuDdH8IvtAqgBfQPBca1aXHTzP9BmFwzvYQi40Oo+AExgSBKEve8ahCKJsbetWQXiVboUQh2UjKskfQ1CEiBg4mE/7F2pALZRMlE2fYyBBRUN8dRPagk55xIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OSmw2F1lxeyRtRUCqXsMCxaVbdVZNt1F9+gbWImovog=;
 b=XdZimTcCWDgTek2SIPTdv4gvH/zIuEWIoo49QyU4fr8Fjp7ahI2/d0UioexQ8N6XqgmspTUMKx1/NJOYnmQny84A0okl+CtRdOld+zv6s52nLogny4pkEtx+UJ0AeQJsZ6XUl3iQW7N8F4DHLpbzsgXKMqsQPI65s0w+CoWMyVM=
Received: from BN8PR11MB3795.namprd11.prod.outlook.com (2603:10b6:408:82::31)
 by BN7PR11MB2531.namprd11.prod.outlook.com (2603:10b6:406:ba::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.32; Tue, 16 Mar
 2021 16:30:28 +0000
Received: from BN8PR11MB3795.namprd11.prod.outlook.com
 ([fe80::ec6a:25a8:8c59:89e]) by BN8PR11MB3795.namprd11.prod.outlook.com
 ([fe80::ec6a:25a8:8c59:89e%2]) with mapi id 15.20.3933.032; Tue, 16 Mar 2021
 16:30:28 +0000
From: "Wang, Haiyue" <haiyue.wang@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Patch v5 14/18] iavf: Add framework to enable ethtool ntuple
 filters
Thread-Index: AQHXFJQBE15n3DVgkE++rDtqF/AV3KqG2hFA
Date: Tue, 16 Mar 2021 16:30:27 +0000
Message-ID: <BN8PR11MB3795316912F7B9B28CA10566F76B9@BN8PR11MB3795.namprd11.prod.outlook.com>
References: <20210309030815.5299-1-haiyue.wang@intel.com>
 <20210309030815.5299-15-haiyue.wang@intel.com>
In-Reply-To: <20210309030815.5299-15-haiyue.wang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.0.76
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [192.198.147.205]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ec9cc9b2-3e8a-42f1-f7c5-08d8e898cf5b
x-ms-traffictypediagnostic: BN7PR11MB2531:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN7PR11MB2531C54E3AAA6B0C4A43DE89F76B9@BN7PR11MB2531.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 88Sqv/ydhZm3w5atOow0iQPoF1Lpac86DjcS390va/s+pXjiLxysLKNa6i761KtPpmoDmWWnxHFjffcRyEoaUrqsNXaAnva2U8s/+26vajQbmRVXcD3KLRxzcb3SIe7zb3IOaz9WqPjDt3zYjC1kavUXiNq/GuazsZBsEci+FOSX1ZgPUBDZ7IBzTQddpqzU2zqp6GOJleGQaS/pk/XKDhdaVOXuGy+3UmHaEO77L4zcThUTufbmYmAgR+/jLjL69ETz3nh55Pr79ETbg4Z/zvhl5o34ESrv7dcmL1LhuEdpF0KuTAb/vtbvo4uRxv76bUZBhZnZHMaiB844JaECjzEwxemUG+QpOwddGosaP+X2FMx6iRs+dXPJ7uWKpaBiaoOl4zmeWrLFkTYCmlURqVl7SkPQ/znyN91t8JBPh/YhIyujy+n7H/kdZZcDdKFsfsuwB8fmJb7nQCDrcthqSJIDEk4djbKdJeuFBBEistBbqxqJK7IAIHeg0MrKwzYplTfsCvFs6gX9OJjBIm2JAf5qbTRyDcxamLGxEpw3wBaqNb349wSFrtYyfq87ynGR
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3795.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(346002)(136003)(39850400004)(376002)(366004)(33656002)(66476007)(6916009)(4326008)(478600001)(8676002)(71200400001)(316002)(7696005)(107886003)(6506007)(54906003)(8936002)(76116006)(66946007)(64756008)(66446008)(52536014)(53546011)(2906002)(9686003)(86362001)(83380400001)(26005)(186003)(55016002)(66556008)(5660300002)(4744005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?1uuNcLDWQKrHpUxZcovPtqL1kcE6jS2aW99XCwo0ZsESdRd/87RkW4dj3JZn?=
 =?us-ascii?Q?aU7BdsJwjk52Ah7rgk6jKpzi9lhyrELgaqE1T6/iwMNIHLQaJMWnN115h1gi?=
 =?us-ascii?Q?DRxMURBBd8MfTmRO+jrdyha6MuTqVKZMMFtjO9rd37uxIy3cWz82IK0YteMG?=
 =?us-ascii?Q?IlVTsXZe9zorAqAxo4PeZso+JlTqe9rS4GFwx9PYq4lyhIDTVw16WJIjxSVj?=
 =?us-ascii?Q?1b5DHH1bSCBF8V3lig+H83hJI7Su2aURD6HOIONe4WQZOOjEF0Z3rGBXYuOr?=
 =?us-ascii?Q?X4Q2mVMORaJdTjExtZdlER0vOCueMzNzp6TCbyJSpfaZgP4bmpOI5q7v5mhN?=
 =?us-ascii?Q?WCy2Qq8wAOom0Be5Nlj5ihygxJDAVlLLskuK452Jyp06c2K/i+V/nwAIzs8f?=
 =?us-ascii?Q?Nawtq6/cajdSjmifN3UjqkzjWLd9v8iz51j5GByN76sD+qmrXFMWMtduZ+eH?=
 =?us-ascii?Q?X4hIcwB/f1PPyt0JiuWQ/wnuiGdn4bw9YW5I51uh72BnEvObTKaRbNV+ddoh?=
 =?us-ascii?Q?PeE8bibI/pbKiViGUmWsNinGVRplNM61wivjK0CSpIRfi0tUgV1agQLxjO77?=
 =?us-ascii?Q?gvdYo/8pkZVLcJbmHhmUvGyiqHjyLx1LR+/jra4tzRgq9rk0LOtEJD7HrPxZ?=
 =?us-ascii?Q?o2GC+fuX+yrMI6Ytdin8zFlIyOK7JpisT2kOB+oSTuyppCCqESH+6uF1r6lc?=
 =?us-ascii?Q?1E2lwaEt4NKVXcjy9f8UJNuX+/vkdEkrPj7qJzxc/e8qOSo3AFsaB7UBDDBU?=
 =?us-ascii?Q?7MmG9uuHR3BgYL7J9lqH8BekYo9T41YCjEvShFyq/HT3a9i2D4SVOnJIS6zm?=
 =?us-ascii?Q?vemFmV7dWN75r+SxsFuHBFvtaCcs8s8Qo+ZCmw5QwOeslfXDj9U8dly8+vDE?=
 =?us-ascii?Q?VW9iUeoC7qKLDLSLm/cpgG5AbVP6TR/qr3nXpHfS0dc68vXmm2SmK31gZ3Aj?=
 =?us-ascii?Q?uPNvhXsRW/MC2YbJ6r5dxE6y13Mn1OkPCncTRelnwDG58JfDoZUJK7gZLzxm?=
 =?us-ascii?Q?HiD8E1d//JicE0OHvppI6wY6mkQt5HbnzznovNpm65+YL0dWtRJG/Uz1JxQw?=
 =?us-ascii?Q?fXanMQ0ugjabUfWC0291s8Yw2hbb07/7daRxQD67CCWGweD5B/ljLh571ZBD?=
 =?us-ascii?Q?5jy9p52YZtezaROPs8kC5XNY4UKfOPVcsNx7vJq+Y3rcKx2ZJa4JhLM6x62b?=
 =?us-ascii?Q?qJFKI0w9keSfcnW7uLT1YVotToDSziXpRyV3Zpa+Kp6RME+pvHX9Wu3efgtR?=
 =?us-ascii?Q?ayL6pJc3/Navl4Zac+Oz3uTp6Ih4eKkoPV28PThSIHql9pvW953YpSYAYCr7?=
 =?us-ascii?Q?m1zmu2RALp5iQD10rrhmOB/s?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3795.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ec9cc9b2-3e8a-42f1-f7c5-08d8e898cf5b
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2021 16:30:28.2510 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 90kfpEPE9EIdHgHs9lZDK3X6dlCBhjEBAAaoC4SeJgz015Dkz1nRXniMd/XVOUmIdKE/4dDngrPy5e1qjeRcRg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR11MB2531
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [Patch v5 14/18] iavf: Add framework to
 enable ethtool ntuple filters
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
Cc: "Liang, Cunming" <cunming.liang@intel.com>, "Zhang,
 Qi Z" <qi.z.zhang@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Wang, Haiyue <haiyue.wang@intel.com>
> Sent: Tuesday, March 9, 2021 11:08
> To: intel-wired-lan@lists.osuosl.org
> Cc: Zhang, Qi Z <qi.z.zhang@intel.com>; Liang, Cunming <cunming.liang@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Wang, Haiyue <haiyue.wang@intel.com>
> Subject: [Patch v5 14/18] iavf: Add framework to enable ethtool ntuple filters
> 
> Enable ethtool ntuple filter support on the VF driver using the virtchnl
> interface to the PF driver and the Flow director functionality in the
> hardware.
> 
> Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h        |  12 ++
>  drivers/net/ethernet/intel/iavf/iavf_fdir.h   |  33 ++++
>  drivers/net/ethernet/intel/iavf/iavf_main.c   |  27 +++
>  .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 187 ++++++++++++++++++
>  4 files changed, 259 insertions(+)
>  create mode 100644 drivers/net/ethernet/intel/iavf/iavf_fdir.h
> 

Re-send to Bo, as a new member.

> --
> 2.30.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
