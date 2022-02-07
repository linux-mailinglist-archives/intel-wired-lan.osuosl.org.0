Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 54EC74AB383
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Feb 2022 05:51:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 365CD4028B;
	Mon,  7 Feb 2022 04:51:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sLrzbxVohrYC; Mon,  7 Feb 2022 04:51:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 30C9A40284;
	Mon,  7 Feb 2022 04:51:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4374F1BF300
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Feb 2022 04:51:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2B6A7400D8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Feb 2022 04:51:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0LV2V40GRyy5 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Feb 2022 04:51:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E35E5400E5
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Feb 2022 04:51:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644209479; x=1675745479;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=/FNo9ZDATP3eCRdR6QSXs1AwTAojYf6/rZ9LOU9vdBg=;
 b=EjtHyAMzy1+OqnOmIl6F4EekWnd0wKKZrjsP30BGB2HTR48Bx0ig77Hf
 llGzfnGiPcQWtVQWexRkanDO2Ao68aPEkbC0nsMEaanJFKtboIu3Jhcaw
 onKfQuVixH8FgPUYWQSYtXLgc1kats0tPakQTTDk0o8Q1nUP1XV2YcQWY
 uRKD9UBrzKeHkcJJ8j8mclLK6EYULXRBOH/Zs1/lWb/WNcqxWY6CIHm53
 TARDH1SBCjf438/SCGo0vP0cHGRvKhRBUDK67dliRpWu39JnXlSpFr/+2
 TYVGFFAU7nk0pydtwFQZdgdQCR0BZHBHyJVzTXj6y5hMKACUpCx7OjPkq g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10250"; a="246230073"
X-IronPort-AV: E=Sophos;i="5.88,348,1635231600"; d="scan'208";a="246230073"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2022 20:51:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,348,1635231600"; d="scan'208";a="481458319"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga003.jf.intel.com with ESMTP; 06 Feb 2022 20:51:18 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Sun, 6 Feb 2022 20:51:18 -0800
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Sun, 6 Feb 2022 20:51:17 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Sun, 6 Feb 2022 20:51:17 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Sun, 6 Feb 2022 20:51:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=isafxFQpYzim5/ACJPpHJ1adn3le4zU3ksvQUd0EEv2UjM6leydOi6tEsios/WEAXw2IqfqFOa3f0Nf3gId/IRjkWAcQQ4eCNFK/ekA9qrqhg37/Qq7rSHNLKjonApI7wgr1/5qhub20MmFUa7tjOhqTtQKlrbXlI+6AiBjrzzvhxrK7BRBVI/xDjYLCojTc6YXgm80M46PtaU3dpQPJFLoILmvyc4+a/GxW3T8dFzZhJCVvU34/FnzEzTxMPDJ5DbDg8nrUrp1oLsrdaWmPu+0je78xwEqUH35Fi7Op81j3BHiBfAwehretdxkpEdzOfOKG3qfJK5/jHOouLuGV+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/13OAUvZJGpyD+EraRUZaWEfoP8dUnM720W9x2+D2wM=;
 b=P+GRY46Zs9vAYldnAqlbpebWma7MQHFfMzqlaqkjKPXpwu+bgE5n4YyqjHBafNzb2RcAG0CWneOUB9bgf0J47B8TsB00XlAFCOKpa4L9T2Wal1kIu8RktFFMrwYsi95MQJg8yqjG6QfJvbEpKN0MKNmjgpTVQIdZx9e0g87wpF1qisye1x+eg+6g+1cw4Mb/WDbzVyRppXshaLAgKzO2tEXOD/d3waOGBrXY45HVzACtdjeeIlWQdDwRNtq0N0aQIimixwviFdLpYHWI2AM7/yUGwKmA1oBbb5ZuSY/o5AKCyZXbAgpDtw4rhaTNnpMsNxpspLNStSo4z1hSIkWeTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by MN2PR11MB4222.namprd11.prod.outlook.com (2603:10b6:208:179::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.14; Mon, 7 Feb
 2022 04:51:15 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::14f3:c99f:8985:674c]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::14f3:c99f:8985:674c%4]) with mapi id 15.20.4951.018; Mon, 7 Feb 2022
 04:51:15 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ice: Add slow path offload
 stats on port representor in switchdev
Thread-Index: AQHYE4++L861tSznfUi52f1v4QrhPKyHlUqg
Date: Mon, 7 Feb 2022 04:51:15 +0000
Message-ID: <MW3PR11MB45547ABB8B318C324E1297429C2C9@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <20220127150426.368315-1-marcin.szycik@linux.intel.com>
In-Reply-To: <20220127150426.368315-1-marcin.szycik@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9f90a57b-fedf-48a1-c6b1-08d9e9f57914
x-ms-traffictypediagnostic: MN2PR11MB4222:EE_
x-microsoft-antispam-prvs: <MN2PR11MB4222DA5BB2FED16987F6BB939C2C9@MN2PR11MB4222.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nKbzZJ5F2iNR42/owLwNgaBjXy5s2AYH+oO3WjDWgeLHbVQgPSVB18DqZSO9HfWPM/fXhvUWpPV8YEqtBW+rWAvVmnVuHN0QkXI6Jr7eMiZ2OmZbtM4RzUSy1xKnaZNhzG9hcHpQM4FbIhITXGdbG66iQ5AU3hAS9al2jB2EZCUJoLKajwNuACKbQm59KqVnqSH0pAuAmWAK7hKZNTcj37qdYA3q1GpOZnhNMRLqWGwXllzzH9/K6UgEuN8mtQesTBTVvnFZ38FbDtHLsW8cxc4kbZKpTIkmGl/TfHCHt+bFEDECLtc6YlW6fIBMhwjuYXE+mNjyF78NsymmgpAQeLbC2LgczwGNm2pcbdP+nbxc9nRQ4UbZicJij9QAJe5GQxIr+GTwOcNofTtv813oLCzeAS7u00I1aZVRTfyCIhBk/5ksPew5w3u7HTvt8//h0pDhcTaqEB02FLp7ZatpEHcTxZ/qK2XJGcJEvWp/g8S3sNhx9nL4WxjFJ1vBwyliJJn1jdQpLxVZ51AmpGpO3Ud/4m/JkmXRlk1RFTw3ng1yk8G5AEA0yHNHxXel826LHIkI4Eq6b2Pyj/D+jKeu/+7H4NTpdj9KMKn+X+qKLRlW6CdlZ57/NY8I9zlR0gJ3iqBPV3m/MgaUGiEuoVomEnPlK7pewpf4CIPFRJURU1Hc7vHQwOvul0RVB/F6uBeq7rDhqrBWN3vGUI5GdyRUOw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(71200400001)(86362001)(33656002)(2906002)(26005)(110136005)(186003)(316002)(508600001)(55016003)(4744005)(52536014)(82960400001)(38100700002)(9686003)(5660300002)(38070700005)(122000001)(7696005)(6506007)(8676002)(66556008)(66476007)(64756008)(66446008)(8936002)(76116006)(66946007)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?IJv4EUGdV9eJb0D/WdVGI/FCFCNPlAY2BssUO75pn6dtBzbAik/0SrD1woYR?=
 =?us-ascii?Q?7mKZwdaPmrQbNEJLK6djN+9jxlUyQ0pM8SafU+OtlM0ZuWoNYp9NfujjBQyV?=
 =?us-ascii?Q?jdEMGMKMuV5uVUr7xiuw7bwzAhZ1BOomJaW71xFQm7P897tHaDmDKcwR3eiq?=
 =?us-ascii?Q?v3UpYXCpaDUwpc2E9Yy+JdFhUEj3zqO588zWFcJ2rERYq+ML7GhpqVq4KSQS?=
 =?us-ascii?Q?RaY6oX12sgI+1iBrYZYDMyAIvc69S5W/0nEzVRhirBpfyHKoi8Uy2jY+NNQw?=
 =?us-ascii?Q?eWJHGnbp/KtHTKRM37JBV4zGD9Oz+hnqkkWpOpYoRzLWekrPx675B8WFu+qK?=
 =?us-ascii?Q?09aIje6grO3EVMizAOIDwUP90+PppwnaaNclesAHW1K3/jX3RlgPth7RvNpZ?=
 =?us-ascii?Q?M9kA1e8k6WBpbfeve6a1pwvWl1iVx8RNWTZfTaZz/tnU4/dlNsonG8UTcPfO?=
 =?us-ascii?Q?lMkzJNB9jRL16gW8ptZcApa0TruCGioDnQoVfQCqpUEWAQWx7hHdacz/0Hlx?=
 =?us-ascii?Q?y63+6jNWIexxRwx2SM42kN5yuSBjAb+W4NpUm3sBkMtw1y6ZuZ/Wp+PWE9ts?=
 =?us-ascii?Q?5w85R1hfAqTtMuowsd79Yi0CzbUeJOaF9Co+41Ur0rHxmeZ+hBFJ5Fu66ef1?=
 =?us-ascii?Q?GLcX8vvsWK52J3oZjJSmngT1vtqqpVYa4c/hoIYFaQybgUyBi/46v3/rcII8?=
 =?us-ascii?Q?K7iBHZVkqjTIEkVZYxz1+V2HKHRI98N5ySgV2J+AGo+WwGEtvQk8wQBu9Jqt?=
 =?us-ascii?Q?QxJL4FbP3bh2YLXUrxToXHrjrb8PNxtcIGSI47rYi5wJY6k53tQgIiM07NWM?=
 =?us-ascii?Q?+4JhaenFpTnWp6RQi3qA5ae13/KDZsHN1bjJ1lbkbIy9AASvjwCQtFplnIPq?=
 =?us-ascii?Q?cw82U11P09vKheosgFw7OtTGv6V7+c4iHIfxeDr5EgpysgHKNRew2YHILZzk?=
 =?us-ascii?Q?O+wKd1heu1eSMBYmPRRksTAoIEnYgA3iu3gutd8NtqGCpdzmTRl/WdWIm4wQ?=
 =?us-ascii?Q?U9vkJAa8CtrCTrQI/xT6XXhAZ3F5QkzrbLTkx4Tatr80F380hW4naUkCfQG6?=
 =?us-ascii?Q?Ngraiwa4uOy+q8YaKEW+SNt6Kyc3vbopXr54feEkW3VYeeb0LiE7XAq9eulf?=
 =?us-ascii?Q?yZDHVQp3s4ATAhhuEBMpcEKI3ub6Jfgqqpf8bDK+Y1lRjk9eVVzoi1fv6avR?=
 =?us-ascii?Q?vrdDi1nHqrUPhzABa4L/qlQREWGznOfmhxEmL43EIWyP5iHvyZ0gJjoZXuVf?=
 =?us-ascii?Q?a6s4KDDlVmRMKbXNJCIGG+2DBCiBLtLCQ5VNAFxkbNzqeFuMQcZ2O1gLw5rE?=
 =?us-ascii?Q?wHxVGyD6pvNGh4Ee8gILc01X5UqObboGnNM3Epg733KkUHebDgIbsAOnRvNn?=
 =?us-ascii?Q?7/hZDUYTWyEoaIKiw9S6BmtCc+MtKGNDueeOKd4qU1J7No1zyacZNFRM3xx6?=
 =?us-ascii?Q?BBdUVY7VSkmHioB9WBlZMDqJ+XuhsDNMAZlIN7Mn+Siu2xm+ddUIv+X5MFG7?=
 =?us-ascii?Q?M/5WCKjJ2A6fapjB6/VZ3tM9s7/lvMXN3kCvuuXnaSxTnvHNiJT2M9Sq9k0w?=
 =?us-ascii?Q?pReNKPzraxz2jAK2vwuVq64nLRXrHeduX9wZ/ucVobj7p6Jq/7ZuypzXSHGb?=
 =?us-ascii?Q?slmU1V+zVZgt8eqM4HOnEl13TsskabuBmjd9pV29bmBsxxVU1zeKxEcxpQvE?=
 =?us-ascii?Q?+tSh5Q=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f90a57b-fedf-48a1-c6b1-08d9e9f57914
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Feb 2022 04:51:15.6518 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: U9sKfXdUGZtVL6n2XwoErVgBjT3NFJOLH5EwVXJ0melJsro78WwS8j8kvVt2WzQemCY37naxO/gYNGuhpjP6oA9D0NBadL57gtpt6Ya0wkE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4222
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Add slow path offload
 stats on port representor in switchdev
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

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Marcin Szycik
>Sent: Thursday, January 27, 2022 8:34 PM
>To: intel-wired-lan@lists.osuosl.org
>Subject: [Intel-wired-lan] [PATCH net-next] ice: Add slow path offload stats on
>port representor in switchdev
>
>Implement callbacks to check for stats and fetch port representor stats.
>Stats are taken from RX/TX ring corresponding to port representor and show
>the number of bytes/packets that were not offloaded.
>
>To see slow path stats run:
>ifstat -x cpu_hits -a
>
>Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
>---
> drivers/net/ethernet/intel/ice/ice.h      |  3 ++
> drivers/net/ethernet/intel/ice/ice_main.c |  6 +--
>drivers/net/ethernet/intel/ice/ice_repr.c | 55 +++++++++++++++++++++++
> 3 files changed, 61 insertions(+), 3 deletions(-)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
