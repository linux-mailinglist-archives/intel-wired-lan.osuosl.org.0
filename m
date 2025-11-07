Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 702B6C4010E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 07 Nov 2025 14:15:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5D47E41539;
	Fri,  7 Nov 2025 13:15:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rrkddO417dPy; Fri,  7 Nov 2025 13:15:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BC1BF41531
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762521339;
	bh=wcSz8EYY/e7cp4LyjhYOxKaKITG4lxKjad+0ZDY9/7A=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6w20iEo4qsGSEA+XgzXCEJ8QQZSZ0t98so+Zfs0sGUK4xNUda4RzYAgcB/3YouxYf
	 m6fiJUtYckVOOo94vbkf0SY2BG9nr2Icnf2G1PI4MvjZ6bATLGSyroSfVlbnnLr2ev
	 3w7tGMhdhL5Nfp3sPjr2P0SRqte9obQ3UpHvYyt2QGSvQfNgOQY5VGZHe1b+qt8mxM
	 C1lA6nlgPOfgdT+uXJcHKmRDmsk6n171aPHxBxnsVV47Brj1AGNv4EBLYJk/OuQnmB
	 BFbK4wF7tA1ltroPCyqFeGbYrNSY2oI52wz52khL0HRNauU+Xu5JXEQCjQMpLRzD+b
	 Mge0iduMIMYPg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BC1BF41531;
	Fri,  7 Nov 2025 13:15:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id AFA0493E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Nov 2025 13:15:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 96628405BB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Nov 2025 13:15:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pAiOYfhpd6MB for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Nov 2025 13:15:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C715E405B2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C715E405B2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C715E405B2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Nov 2025 13:15:36 +0000 (UTC)
X-CSE-ConnectionGUID: W++vpU6ZTCi/wZMFftJiqw==
X-CSE-MsgGUID: f5Ff+V2rTdWnA0uIxAY0KA==
X-IronPort-AV: E=McAfee;i="6800,10657,11605"; a="52235057"
X-IronPort-AV: E=Sophos;i="6.19,286,1754982000"; d="scan'208";a="52235057"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 05:15:36 -0800
X-CSE-ConnectionGUID: UXki2k/dS6OSVBAx2JkOXg==
X-CSE-MsgGUID: /HXeG551TjWp6Hvh+vfmYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,286,1754982000"; d="scan'208";a="193210184"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 05:15:35 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 7 Nov 2025 05:15:35 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 7 Nov 2025 05:15:35 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.70) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 7 Nov 2025 05:15:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vBn+wFeN0FbN3A3shY6ShfXoXaO8j/sgY2784qQei3CVma1VJonhb4rCfqzdC8SYNiiuBgEhkxR8XFnww/PDcDuZOBcG1tywKWwAIpmSesUTs6oFAFD/8gZ2GcnER5OG1W4x3jh+X4j42bp99Vcu07l6flyFHqHyfsgO919FicChwPdzndTTGhaXxpyAYrrpUiXW/SGCYOaFJjIzSj6volbfGrqziy0Fd+FNuyK/hYBLuMxXdQSMqrjC+9HqHzhAul4ci2NiM4V0FQgZagswA+ubPRj7WzWGadxMSl/BT7y2Z6UUYhYgdfqyg1kAQhOZRiqt5nvvOiIVH2N+ujbOMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wcSz8EYY/e7cp4LyjhYOxKaKITG4lxKjad+0ZDY9/7A=;
 b=E9J61BJYi/2q4gJl+XuAujfvvv8VItSbEo+7EM72V7CJA0gaeAUzYTsW4iAGGwcpXxHjw5BKkYdrQSwgjkQEMn/ScdwWUd9IEkzBF2y5EVt8Fe36X5MBjUAaD4fIsdbE9zLW522FWonUWQda/cTU9EXTmpghQfmMoQEWs1AYlzwL0gVXr6C9NmChpN+M4ySM63lgugyF4jPqQvWuB/MZZQuodGxdE3ZQLN9tRWl5tMq6iUuKpbQk7i1d+BGsAnxIKvwi92NKcRvjRcMQjRodbRtLetLiFvmdteSHwZhvQM9JU8qso/ILRv628qGccVl/GnU5wiDINyb25C5tR0z9ww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by IA3PR11MB9255.namprd11.prod.outlook.com (2603:10b6:208:578::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.12; Fri, 7 Nov
 2025 13:15:33 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9298.010; Fri, 7 Nov 2025
 13:15:33 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Alok Tiwari <alok.a.tiwari@oracle.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "kuba@kernel.org" <kuba@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>, "edumazet@google.com"
 <edumazet@google.com>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
CC: "alok.a.tiwarilinux@gmail.com" <alok.a.tiwarilinux@gmail.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ice: fix comment typo and
 correct module format string
Thread-Index: AQHcT+PE1qW/jXeV+EWFkOUrAYnuY7TnMVNA
Date: Fri, 7 Nov 2025 13:15:33 +0000
Message-ID: <IA3PR11MB89865DF31695CDC1018DB0C6E5C3A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251107123956.1125342-1-alok.a.tiwari@oracle.com>
In-Reply-To: <20251107123956.1125342-1-alok.a.tiwari@oracle.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|IA3PR11MB9255:EE_
x-ms-office365-filtering-correlation-id: de92f434-7185-468f-851e-08de1dffbba9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|921020|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?Eewj/k+pFFton7jNQnme0VGDxh7B65F0h/NGLSiY2T22S6NLKCAGVtn0g3jd?=
 =?us-ascii?Q?Oduvp8JWSKDpIm5QH6pAUHlkIbgiM0/7QIXh3rvZ5xerdzoWa60TGNgDjKTx?=
 =?us-ascii?Q?6+An3twnLccQQJTewJysvuUGSuiJvvGcyzxKWlEUzaeaFZCO0SCBlqKE51IB?=
 =?us-ascii?Q?+n8dt7QbPFtbfQzxvIdiSuPDBNVhAC/7ni2vABc+4TjTlYHF//C8m3/5O+jU?=
 =?us-ascii?Q?pn32QsDbHLwwVdAyGt/9seCNDX8ZQuAnJg0LvSWt3FXmyZ6MyQsZrmo54nwa?=
 =?us-ascii?Q?RC2bu0+xfdmA1klKFVcKcrmrHcx/q1FL8xq4XAvcGvU71ksMQDnoCIK8QEk2?=
 =?us-ascii?Q?LWAOop3P9eAOldZ1cjHC7hCpl9GlrDG0B6ClJ2VPEaHqfryEupG7jSZJ/GW/?=
 =?us-ascii?Q?wERtLOInLV4l5pmuqP3WxVTsDd+hfK0gnKTMj5oSEy94Rr1nCXPEVc/FdEAC?=
 =?us-ascii?Q?rUa6a2QoApe3/Aio1DkbpXqDnh8RVW6VdmzKyAqTHe2cQJMawjot2zF+H7dg?=
 =?us-ascii?Q?f9Ac7MTM/K9ElLkvOSjlr/tbRKIVUc1lHp1dYrtu0fZx2bVA+wEIi15xfPyg?=
 =?us-ascii?Q?ScmT1Fhywd7BDRw+Jkdy6XsbjQPSsBrQgbPXikL6O8bQgk6/D0Q5gnhpAq3F?=
 =?us-ascii?Q?+gWlRDArACIXlWdQT0V8cHfsu3IRlTtzQahNBM+LVutiR0USgTNLRpxX/XqC?=
 =?us-ascii?Q?3WH5iaWGcRVKR458gptYPAk6hz4MZSTo6a0PO9o2+3RFTtaLHA7zlgq+CN7P?=
 =?us-ascii?Q?8SJhy01R3KvH6EML4esKNwp4HtDBbfAd7fKC0s2+n/k4YRZB7kHLfGRD6bPZ?=
 =?us-ascii?Q?1sgew4CEqBla70Vza164eMqxpYIBCK4PAw0qkkppb92mJFEN847mtFa5qezZ?=
 =?us-ascii?Q?J88q246Uu4mZykhoLUtaty4KQICqwtbb8sh6I9Rb65X4/c1iUEyc5sOtHOxm?=
 =?us-ascii?Q?Hrx/RDO+7RlH7W3NhdzRui72Q2z0ax9Aucff5hN3RiyqyDsYHiEQIvr0Ojsx?=
 =?us-ascii?Q?Bh/kSFrJyOWOUacoBk5lEnyKI7yfdjE4a7d0tXmcaml1wkj4M7WUKz6EAk8y?=
 =?us-ascii?Q?yZr0YeZVYQCJ7XjkFYu5H16k/thBRjAIre403vTEh96nj1/NwP0Q/4QhOxP7?=
 =?us-ascii?Q?n/MHYl9rCIlN+7vrpduooWpvO15ia2A8o/XSfd+lrViSOXQaLBFbAbmfXf0m?=
 =?us-ascii?Q?rtlnlw5pWOpU5IvVgXQIjmhn1vbBW86E6l1+FohU8VpxbTplcTVfHcCwsvWS?=
 =?us-ascii?Q?LxM4yBnScB3tYdbjycIy7ZgTTyJgw35rWGrv6M20aJUzwGOpuGyjCYdSYPr0?=
 =?us-ascii?Q?TuCPku6QX/eTmSO8iK2yN5H0eejibNcThKee2RZ7OrnAZoFtKJfCUy9QLzqW?=
 =?us-ascii?Q?/W/kkulCDCjvRCbjJFwu/SR3qc00g0NH+XrWvFl/FWxsKse8Jre1utehg2DM?=
 =?us-ascii?Q?kaGGioZyKN82NgmPCWKdNmUA/kTDNy+fWgIrvFPe5VQNZQdf6cNXAx8mFJBt?=
 =?us-ascii?Q?3sc86a6li+KrzweNGUE53zOtCVF1GDyCKMS0aLuzJF5raz7A/Yu0FnY9YA?=
 =?us-ascii?Q?=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(921020)(7053199007)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?J3k+u5mSMOdzhAqnYlPYW9ZBwEMN5OT2ruwCvAW5jRi+qVZitMHkNTgf/Sve?=
 =?us-ascii?Q?i0Xq/+e3D7nfDwBkUvfRFvZ3B/3nx0oiP9Sx1BqBD+vHV0B7SZXsvhyR8hRV?=
 =?us-ascii?Q?V/FdFqJ7SFszYW4Gvg9z9zSCuqcHTOTYJRwP8MOJge3faTVjwJ0RihFo9qK0?=
 =?us-ascii?Q?ACpy3yM+vusxsFFVz9XADlpsfPHYl8Lic8bng5bTyyBN4Eoxnf+l0jCReUzA?=
 =?us-ascii?Q?Ovb5U1aJqWFvLs509aYjNqZc7rH/PnTYaU5NKu4O5sLAfDvM70NPHRR7/J3p?=
 =?us-ascii?Q?jA1RqBZ1KSMeCtqnoLYKhYshE3YVmxIsVidDgD2HBFK+XL4WFKca2zLt8Mhj?=
 =?us-ascii?Q?RtcH58OWBVRG7aHf6W4xrx7dah2+5D8koQTQq6lyw6rKXrSrAKvjfVkZHtIB?=
 =?us-ascii?Q?nO6OSFv+d6RG7OVjemgMPzCleNHsADdvhtAbOn02kluHCt/GOKI9MVQW2BFo?=
 =?us-ascii?Q?r0ziRiGndXsGtsLhCjnmXJ4Xin7twjimBZx3DbG1MIyKv/vs93D0G6Jqwy4U?=
 =?us-ascii?Q?MSbV0MYVhf0XEPR7oU0OilJu2cSjHhfvQcLQ5drDeQoQfiCmPLF5AREfu2T5?=
 =?us-ascii?Q?MWWQntZyPZlrqdkcChr7mUQfWsLgPLEhcBhebGBiPY4cIq2+iuG0FhmGrFF0?=
 =?us-ascii?Q?GY1NU2KxzKyT5MtKjxeLWoXlQ7o7wTgsmp5eJYrjyJffIuCQkGdT3wRpIZ2i?=
 =?us-ascii?Q?8OYCpNCQx+e/Yidm/QTI0v9K6yBRNW0DUDsApOt1q4t+sxY4cn0NSiKeCKRr?=
 =?us-ascii?Q?JMu8AZnYGHwoNVzJ7n6wtwhc9wIYUOYSTCkiVw8ViInDV1W7ZXx+DiDXKS+8?=
 =?us-ascii?Q?tewFGbNivXnXAZ6DqwlEQRyswTBotkeL6Mu2f3ITE+JPsuCekLzxbjuc3Zig?=
 =?us-ascii?Q?yBNd9jQtrXsBA5maRsIOjcR5mTZB8+t+754muexnRx3IF0b7YUtZAbRmxIw7?=
 =?us-ascii?Q?AhD8SnhuSwZuPNnsrtFrRSqD1YXY+WPOFAAeW3FS8K8xZQpw1JeqLL2av22H?=
 =?us-ascii?Q?dt3xBGxKf3FtRvHwCscrsomiXhdu8sl7nWJpsVuhuf+tMJCXpKiym8v1ZcFI?=
 =?us-ascii?Q?TuL7DNk6k1to65XKi9R3lFdQLoSyKY5xcjNMKBjOkI5WAsnk9sPpvfJHgnVQ?=
 =?us-ascii?Q?EgP9ItWtFNu+xR+fXhetHp1AjZWAnP1fQM7l3eZHf6MC9q4WiuLSClEw9I9B?=
 =?us-ascii?Q?9thuZlHHa84INYs+2tjNm9qPw/3xrSGuQNlZz5eMzRIQo8PqOFOqJEIOMreA?=
 =?us-ascii?Q?WC1V0gnFAAZ6s9ZFJFHCbUClVKvtRRqmmYgpUG+cCc+np24qrclSF43MWnP1?=
 =?us-ascii?Q?bOrPw9uCuV/Uic0oaD66bCRonygxVCwm1KTfJjMdn/YCqtfyPm3BMHlF2kBT?=
 =?us-ascii?Q?x/fyGzoFLxHdKtKOxhoo8uj+VvVtLKRZpLTMnTMDSa6S0gcYplMu/5BhZ69X?=
 =?us-ascii?Q?Yn9l8BaRocqEBV1ZS8fO3K7xH9Qhyl7zNLx2kqCoPGlii7APMHZQAMajaYn2?=
 =?us-ascii?Q?0zmoWYxdkJbbwGOMT7m9Kct6c6zvTqNiszoAXgUpwQicUFzEBtU2/JuKFLPr?=
 =?us-ascii?Q?rvmrkBePDhk4flbkZVBkmGgkA+ZulrV81c0JFfnhEeYCi2pqnyqrL2vQMcZu?=
 =?us-ascii?Q?Qw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: de92f434-7185-468f-851e-08de1dffbba9
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Nov 2025 13:15:33.5001 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uQ1f/7IjjsvGWX0c1qiO/AoNe2du7bM0EbVgxjNkORUVcUzeg3ROwRrl8/pcBVfnB92AQz2k99QaA0AkZUZ8KP4CDE1aNcOrAQ9AInAVXPU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9255
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762521337; x=1794057337;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=65RwNHIbB48Z4b9LQMsJk3fQ87PCB+D88Tub2tRDEOE=;
 b=PY5Q3NbWo1V7dp0Y6astxQ0iCRaDekZYe2tYp45+cWGl86CfwqFwxzwk
 sQKR+kT9tBL5hSFskPV747h/KwN+erzBSoyFxdFf6/Jn2xloNvCfWb3SJ
 s4Hl65yCP+eLDXa8GFX2c46DvhSx/+Jy1FphmTFyNInhhVp2F3LdFvW9W
 lKxV9B0Zd9bVHN7YBSuHMAHCK43GK9pKkYLMPcnIZ9Dg8MqrUhIoy7xD3
 Rb7qEW1gQyz6X6H+XKP9bIsFoIQ5omlst+LwdmI6PMO5aZl5E7XbjdFUm
 HJZOfrJxOC51MJCejsmP8QOY7avX4bo3e6627KYoLA9v3T7v3RPgjrEJa
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PY5Q3NbW
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: fix comment typo and
 correct module format string
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Alok Tiwari
> Sent: Friday, November 7, 2025 1:40 PM
> To: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Lobakin,
> Aleksander <aleksander.lobakin@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; andrew+netdev@lunn.ch; kuba@kernel.org;
> davem@davemloft.net; edumazet@google.com; pabeni@redhat.com; intel-
> wired-lan@lists.osuosl.org; netdev@vger.kernel.org
> Cc: alok.a.tiwarilinux@gmail.com; alok.a.tiwari@oracle.com
> Subject: [Intel-wired-lan] [PATCH net-next] ice: fix comment typo and
> correct module format string
>=20
> - Fix a typo in the ice_fdir_has_frag() kernel-doc comment ("is" ->
> "if")
>=20
> - Correct the NVM erase error message format string from "0x02%x" to
>   "0x%02x" so the module value is printed correctly.
>=20
> Signed-off-by: Alok Tiwari <alok.a.tiwari@oracle.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_fdir.c      | 2 +-
>  drivers/net/ethernet/intel/ice/ice_fw_update.c | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_fdir.c
> b/drivers/net/ethernet/intel/ice/ice_fdir.c
> index 26b357c0ae15..ec73088ef37b 100644
> --- a/drivers/net/ethernet/intel/ice/ice_fdir.c
> +++ b/drivers/net/ethernet/intel/ice/ice_fdir.c
> @@ -1121,7 +1121,7 @@ ice_fdir_get_gen_prgm_pkt(struct ice_hw *hw,
> struct ice_fdir_fltr *input,
>   * ice_fdir_has_frag - does flow type have 2 ptypes
>   * @flow: flow ptype
>   *
> - * returns true is there is a fragment packet for this ptype
> + * returns true if there is a fragment packet for this ptype
>   */
>  bool ice_fdir_has_frag(enum ice_fltr_ptype flow)  { diff --git
> a/drivers/net/ethernet/intel/ice/ice_fw_update.c
> b/drivers/net/ethernet/intel/ice/ice_fw_update.c
> index d86db081579f..973a13d3d92a 100644
> --- a/drivers/net/ethernet/intel/ice/ice_fw_update.c
> +++ b/drivers/net/ethernet/intel/ice/ice_fw_update.c
> @@ -534,7 +534,7 @@ ice_erase_nvm_module(struct ice_pf *pf, u16
> module, const char *component,
>  	}
>=20
>  	if (completion_retval) {
> -		dev_err(dev, "Firmware failed to erase %s (module
> 0x02%x), aq_err %s\n",
> +		dev_err(dev, "Firmware failed to erase %s (module
> 0x%02x), aq_err
> +%s\n",
>  			component, module,
>  			libie_aq_str((enum
> libie_aq_err)completion_retval));
>  		NL_SET_ERR_MSG_MOD(extack, "Firmware failed to erase
> flash");
> --
> 2.50.1

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
