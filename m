Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D3CD72E453
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jun 2023 15:37:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E256561126;
	Tue, 13 Jun 2023 13:37:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E256561126
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686663468;
	bh=GYLQBXpbhO/bUyCkv6wW6T9A+V8DpKdvuoe+JdnAxgs=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rJ9tl+YPtXB+DXbs7P62IgOE8gM+4i6vKyHyPz4yQJDeXDRwC7Gj/gb7qFGdliUwb
	 d5shGebuG5vDl731XHnn56Ct8Lf0haDriFxlUrU9mkyTW1ra7WoqJ6JFRipLTYKZwe
	 2+j9QMzmmleUWRhjF/ufQqlTMrCloJraa0ZwS70rDv+Ussiaft+I0vDnWsCi72AfHj
	 e1DzlvyQ3CWY4/z0/1QaoGT/jJWmxqjKJ51XXl1UAzO2ZeTEAtYwo4wEiawVO6JLn/
	 FEK7DWaEFm2vguT/Mm1j9Kg/jprh7RtU1/J/g8Qi1p0epu1SdeuRhchXr+O9+VRRHI
	 0E17ZqomNwtWw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zr5r-zR1PQOs; Tue, 13 Jun 2023 13:37:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E0B6B61149;
	Tue, 13 Jun 2023 13:37:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E0B6B61149
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 34D281BF2FA
 for <intel-wired-lan@osuosl.org>; Tue, 13 Jun 2023 13:37:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 16C7C414E0
 for <intel-wired-lan@osuosl.org>; Tue, 13 Jun 2023 13:37:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 16C7C414E0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uRFzaa__3SXv for <intel-wired-lan@osuosl.org>;
 Tue, 13 Jun 2023 13:37:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2EA6841496
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2EA6841496
 for <intel-wired-lan@osuosl.org>; Tue, 13 Jun 2023 13:37:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="338689590"
X-IronPort-AV: E=Sophos;i="6.00,239,1681196400"; d="scan'208";a="338689590"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 06:37:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="801491931"
X-IronPort-AV: E=Sophos;i="6.00,239,1681196400"; d="scan'208";a="801491931"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 13 Jun 2023 06:37:12 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 13 Jun 2023 06:37:11 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 13 Jun 2023 06:37:11 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 13 Jun 2023 06:37:11 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 13 Jun 2023 06:37:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bFR6VIn1+iM+NAMUqpaV7UBrvOYKZvrPdwFPZEz3kjApqhZo9REfnsMgWLoouEHSB2y82Jd6CVWTQXq9j+RsehPk6EepYZeq4CTQ2R/w7bnkKCOWn88D9gXx1B3faXYGoHbUPBjMJcIMVoqgAuSnjZZ0Rkwjga7J4m8fIjqeI6exwXMoODBr7GqKaQOz3r/LgMFGpM/CmR3PkWg0VuvxOz5svpMl2Ctwq11ZOM3e2UiRCHTpYJW+mGwXZD2XV8MqJi0ccqYR6h9BnkroFMThfdvZ6y3beIg0X+PujbOs91GQHmnlyBXkbkJMMt8h0SqhSRuA5xsPUe8gyhV8Rfajtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wmW8ksCPYSJhnPLC5EmKzq4Y/yAgXmKUMr0jqRK1WPg=;
 b=l4/GkU56jjy8L8o64ryg8imBibTGZqcdHsuI9giN/RRjI38PArXL7kyH/Jl7K1wfQgqHNsyqS4ChKoDj+8nI81O8NRWH1yzdH3YtM262Efo/pJ3E2SyJ+RQZZYvNActd9X0JgRzPbaix1EGex1ifKQYZc27YGhc5lAbmHjllj1cI5CuTCtIFqCL0avDJI9TBQxng4gK+mW3ovPzQF1IMqBeInU946KEN+P1gikg5MYl1Ur+tdppe+SgF3f+5O550Hwj6wmBus2W38+AXSENHuTdXqcXPwDSeMCNU0rsWcHPiTtnrglA49vOItfV2Dw67tWnV87JiGXZtX25kjgxw8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 by SN7PR11MB6774.namprd11.prod.outlook.com (2603:10b6:806:265::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.33; Tue, 13 Jun
 2023 13:37:04 +0000
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::dfd2:5a47:bfeb:aa2e]) by SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::dfd2:5a47:bfeb:aa2e%4]) with mapi id 15.20.6455.030; Tue, 13 Jun 2023
 13:37:04 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: "Gunasekaran, Aravindhan" <aravindhan.gunasekaran@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: [PATCH iwl-net v1] igc: Handle PPS start time programming for
 past time values
Thread-Index: AQHZnfb5OThRujMS/kWx1owoTJ7Cla+IuMSQ
Date: Tue, 13 Jun 2023 13:37:04 +0000
Message-ID: <SJ1PR11MB6180F0717F3757355DEE06CFB855A@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <20230613125948.60575-1-aravindhan.gunasekaran@intel.com>
In-Reply-To: <20230613125948.60575-1-aravindhan.gunasekaran@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6180:EE_|SN7PR11MB6774:EE_
x-ms-office365-filtering-correlation-id: 6c08c420-d799-41a3-9d33-08db6c134633
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cnT6vtpFvBQ7Mj5qyae6tYhVLcVPaFAJCOBnDiuZUF+a8Z1eyM1bRRddJxnmQBA5m5RvuAgAuWgVXYXkN48PcEdM6WcX8gnfuFZ856cuedlW9tTQMv6tnXatCCy4txnSxKrHBIzL4SXwV3pxceuEciQ+hSUn0W751gw3SnPQt/tkE/WKKOczKELyrsdDG6PkuuGdG8UU38vbCWfRkLpOnwAeOwfGPmEw7+MQA8HiCnqknQQZG0Ly9NONhAh/DMoq94xwA2s9BcDLLBYCGsYLB1GB8/ZcmPuRkPIK8ghjrhZPrg+eFTy3ULYUiUeILISw2r5M0Zc0F2D3zioST6PpGMyYfMp5tNc4m3TVtqVeyJhDFC6m+7dNQF1SG32IYO9YT1b7oRZLMLDQoxHFEgfRWupZem0uO41b17xgKAe81oNa6PT64I8IXWbxzJUWufTDrFr1/eRL5tG+vlp9cZ2zxa59RbxbpfU1UQLE9I13Yg9nwq6LVHm812bYmSGVTMJwWzZhSKEYo02Hj79DVRl3yCjLNPhGMl4VGfHBLePerouzbytyGUwxQD8WZVqWAQdqjTWjiRppHm81DbPPs6SHYv+lXL+NTAazxybMG6d57K+rP9fG8Muuc+sYmuFeftaq
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(136003)(346002)(366004)(376002)(39860400002)(451199021)(55016003)(33656002)(86362001)(71200400001)(54906003)(38100700002)(41300700001)(7696005)(76116006)(83380400001)(110136005)(66476007)(66556008)(316002)(122000001)(66446008)(52536014)(4326008)(82960400001)(478600001)(26005)(9686003)(186003)(53546011)(6506007)(2906002)(64756008)(38070700005)(8676002)(66946007)(8936002)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Jl9F4A6vW3TtSR4RV+SWOTkX2Ht1Uj7381YKH1bwPIe7zpYMKzOJnHeHjnvP?=
 =?us-ascii?Q?ihxjarb3k0OmIZtYVtWccr4qRmZ99hH+ARexBCpNL9gcwlqC/5JNy+YE/Uht?=
 =?us-ascii?Q?gq/tH9DJUC1W3egHX6e+ZeUVfIkGqGI5aqJI5CtptAmFachaAdBS28UjGpGM?=
 =?us-ascii?Q?3N5oWuNWdNTNKTCSEzcij8J3akpGSLmJ9/c/g2o4gT8REm5URXtuGe7do83a?=
 =?us-ascii?Q?XwxBICNqDzxD4ZMgv1s1Bla7+DwVw8L5d2uJX9JbEHd6eegS++sO8qGiQjkl?=
 =?us-ascii?Q?GvPkeQgTEL1lNfS65kBHuLWfcoeva4HLBdRsRGXzghLYrgher6oCodaI5Tiy?=
 =?us-ascii?Q?i0d/r9d4b9DIBCzi2iAikc/98tBpWeqHinJ75++wuCKcyBvn56zTXJwxKMYK?=
 =?us-ascii?Q?L3WDJJuyx6xu2oHIxyBJ40JveoauwwKS9+iYssRoW+/+w3ntGrUQBBUOgZXL?=
 =?us-ascii?Q?JjK5K3V7JsA6MCtaJwXvnZOx/xCjSfu4NrLJbpkHY91frKT4CXBp/KJtIL/D?=
 =?us-ascii?Q?HuWidu0Jd5JnjXSiWijuOTaM8iW3CoSKecd/LrGRE9NoOpGOPA6QPrZE4HV8?=
 =?us-ascii?Q?gO94v07RQLryki0GoLgwm23C56nmkE+PiFw4WdKsw8GCabRl0potj9nlyPLq?=
 =?us-ascii?Q?KRBSfjPNCm0m3F4/fOHO84ThHW3yamC27JdP70AUXKgXDHMAOvz4yoiWHIuL?=
 =?us-ascii?Q?h5qVowV0T67M2WSdZuw7/0vTRoNL6b6AW13xvl/kS7/TNh7TvInU5LdJxdc+?=
 =?us-ascii?Q?n54NB/Fexebw+BWMaVwK65J76MVlB+1QxtF2I7fmCcoeglya9Itq1y8JYVKQ?=
 =?us-ascii?Q?9k9KSYZnEldLYCxRGUI5ycgFHXAcBRvxwcuK/0K/QdomJ+Is1c6SHxYxThDY?=
 =?us-ascii?Q?hLcwugCZAZLylQjGVToJfizbanw38xztJ5frIzGrXjEIR3MefM+ceOvmmG+X?=
 =?us-ascii?Q?5MSCjlxHhr4mA+SPtk0IznxdQJBW1IeCweaddOEKKCb9BJb0EBvvjp9O820U?=
 =?us-ascii?Q?xX00BGY7Qa8QpLs5r6/ItHzoqe/YW5RLBsrUKzxvZB1r9q8V2+vRaBXGdwkZ?=
 =?us-ascii?Q?fqW9wvu/bkpNroKQWcdTJkGE8993pAyjWVDKiqbJsePoIq034Ru7cnyn9rcZ?=
 =?us-ascii?Q?Y9zIYc8qqAMYBv67ByDfLsM0zXqYPLxKJm5eoKLWZrXPJXuUYSk15l78fl2a?=
 =?us-ascii?Q?b5r03PqoGCWOatPMIehv21Bgf5u+A2Oh7+n4Jl+pYRJevHkwCk3vfUEWJ2fP?=
 =?us-ascii?Q?6qPDkQLli/1z+hqpqVsH29qE1S2W+m2CE3AiQ8mj506MatgbobAONClkY0va?=
 =?us-ascii?Q?pU9ufH/Z75mwrnCMvgc2iWwEzsh5+mHhd1S3+mhn5M18g162CVaUeNXA3BDn?=
 =?us-ascii?Q?EiB8GFOGzCn49ilSbf4YaZyzFxWrFzARmuU+bFn7TX4TSV7PZJLeMaH2GSsp?=
 =?us-ascii?Q?gabq2kkz2n7+6DUuVQ96M1X+vXoU36Od/nMG++Fttgn+9fMVEaJfExM+oWDg?=
 =?us-ascii?Q?8keCps/eS+GMMsro5pnOiahzsfTkxXeG8qK0bOHNagBbruoyCBpF7Hk4wu1d?=
 =?us-ascii?Q?igS0sGO0ae4r6m85J4sxPzAtED244IRr4A7BPrIOmWcFvW20gH+Rwtzzg/b4?=
 =?us-ascii?Q?ZakzFawJsVysqvQPgrZmgDg=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c08c420-d799-41a3-9d33-08db6c134633
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jun 2023 13:37:04.1009 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8pyJjMr9DOo2xynAHd0ZFugrRtiUhI8ENoynftU+2xFTZo0opaA+GTb1SSKIQR5qWtvZUuRp5yk8WDg//BU+ez3mr9Zylilt/fJa01/CNROxVdFqkhmf51SATCP0KsWr
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6774
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686663460; x=1718199460;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=POrv9j6XPhj3LgkWAAagK94j4FKC07I7B56Qol5eT54=;
 b=PyGaQ4VI9N1abS103gGt+jIWnLZ5mmPdjJ4WsvBEBSNdoUNXpBNOUs+B
 IHynYAeuIVF6B3D+X/JdUea6K/i4g6ALhOAfrdK6MaY7UzcG5rgqmJo3e
 jOuXq+cLTNLyrpauL3UzBq+fcUvUFZ57ypuLzvX4ZEvIFNvJUu/Q0CGot
 7uSpr10Wk8fUAVwcxyODu/AVqa5VpQdrOkAELq9V9SWCKI4cK2rMbvb9f
 qw1c3vJEsx2/GxKSKV2+7bCQpDjqR0e7IXqhwzqiUht5BlOjlGdgebG7B
 8VPvUX1pqshTQaf3MJEL/2EWjfhhLGcBht6oqYjeTchIcgmOQKABrHiJf
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PyGaQ4VI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] igc: Handle PPS start time
 programming for past time values
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
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Aravind,

Thanks for the patch.

> -----Original Message-----
> From: Gunasekaran, Aravindhan <aravindhan.gunasekaran@intel.com>
> Sent: Tuesday, 13 June, 2023 9:00 PM
> To: intel-wired-lan@osuosl.org
> Cc: Zulkifli, Muhammad Husaini <muhammad.husaini.zulkifli@intel.com>;
> Gomes, Vinicius <vinicius.gomes@intel.com>; Neftin, Sasha
> <sasha.neftin@intel.com>; naamax.meir@linux.intel.com; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Gunasekaran, Aravindhan
> <aravindhan.gunasekaran@intel.com>
> Subject: [PATCH iwl-net v1] igc: Handle PPS start time programming for past
> time values
> 
> From: Aravindhan Gunasekaran <aravindhan.gunasekaran@intel.com>
> 
> I225/6 hardware can be programmed to start PPS output once the time in
> Target Time registers is reached. The time programmed in these registers should
> always be into future.
> Only then PPS output is triggered when SYSTIM register reaches the
> programmed value. There are two modes in i225/6 hardware to program PPS,
> pulse and clock mode.
> 
> There were issues reported where PPS is not generated when start time is in
> past.
> 
> Example 1, "echo 0 0 0 2 0 > /sys/class/ptp/ptp0/period"
> 
> In the current implementation, a value of '0' is programmed into Target time
> registers and PPS output is in pulse mode.
> Eventually an interrupt which is triggered upon SYSTIM register reaching Target
> time is not fired. Thus no PPS output is generated.
> 
> Example 2, "echo 0 0 0 1 0 > /sys/class/ptp/ptp0/period"
> 
> Above case, a value of '0' is programmed into Target time registers and PPS
> output is in clock mode. Here, HW tries to catch-up the current time by
> incrementing Target Time register. This catch-up time seem to vary according to
> programmed PPS period time as per the HW design. In my experiments, the
> delay ranged between few tens of seconds to few minutes. The PPS output is
> only generated after the Target time register reaches current time.
> 
> In my experiments, I also observed PPS stopped working with below test and
> could not recover until module is removed and loaded again.
> 
> 1) echo 0 <future time> 0 1 0 > /sys/class/ptp/ptp1/period
> 2) echo 0 0 0 1 0 > /sys/class/ptp/ptp1/period
> 3) echo 0 0 0 1 0 > /sys/class/ptp/ptp1/period
> 
> After this PPS did not work even if i re-program with proper values. I could only
> get this back working by reloading the driver.
> 

This problem occurs only after the "igc: Fix PPS delta between two synchronised end-points"
where we set the TSAUXC_ST1/ST0 bit?

> This patch takes care of calculating and programming appropriate future time
> value into Target Time registers.

If above "yes", I believe we need a fixes tag here because you are sending to net.

> Signed-off-by: Aravindhan Gunasekaran <aravindhan.gunasekaran@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_ptp.c | 25 +++++++++++++++++++++---
>  1 file changed, 22 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c
> b/drivers/net/ethernet/intel/igc/igc_ptp.c
> index 32ef112f8291..f0b979a70655 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ptp.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
> @@ -356,16 +356,35 @@ static int igc_ptp_feature_enable_i225(struct
> ptp_clock_info *ptp,
>  			tsim &= ~IGC_TSICR_TT0;
>  		}
>  		if (on) {
> +			struct timespec64 safe_start;
>  			int i = rq->perout.index;
> 
>  			igc_pin_perout(igc, i, pin, use_freq);
> -			igc->perout[i].start.tv_sec = rq->perout.start.sec;
> +			igc_ptp_read(igc, &safe_start);
> +
> +			/* PPS output start time is triggered by Target time(TT)
> +			 * register. Programming any past time value into TT
> +			 * register will cause PPS to never start. Need to make
> +			 * sure we program the TT register a time ahead in
> +			 * future. There isn't a stringent need to fire PPS out
> +			 * right away. Adding +2 seconds should take care of
> +			 * corner cases. Let's say if the SYSTIML is close to
> +			 * wrap up and the timer keeps ticking as we program
> the
> +			 * register, adding +2seconds is safe bet.
> +			 */
> +			safe_start.tv_sec += 2;
> +
> +			if (rq->perout.start.sec < safe_start.tv_sec)
> +				igc->perout[i].start.tv_sec = safe_start.tv_sec;
> +			else
> +				igc->perout[i].start.tv_sec = rq-
> >perout.start.sec;
>  			igc->perout[i].start.tv_nsec = rq->perout.start.nsec;
>  			igc->perout[i].period.tv_sec = ts.tv_sec;
>  			igc->perout[i].period.tv_nsec = ts.tv_nsec;
> -			wr32(trgttimh, rq->perout.start.sec);
> +			wr32(trgttimh, (u32)igc->perout[i].start.tv_sec);
>  			/* For now, always select timer 0 as source. */
> -			wr32(trgttiml, rq->perout.start.nsec |
> IGC_TT_IO_TIMER_SEL_SYSTIM0);
> +			wr32(trgttiml, (u32)(igc->perout[i].start.tv_nsec |
> +					     IGC_TT_IO_TIMER_SEL_SYSTIM0));
>  			if (use_freq)
>  				wr32(freqout, ns);
>  			tsauxc |= tsauxc_mask;
> --
> 2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
