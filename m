Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D83D6ED5FF
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Apr 2023 22:14:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4A0B9410CB;
	Mon, 24 Apr 2023 20:14:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4A0B9410CB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682367248;
	bh=Q1BDrLRvivSPIraYDrhrUTGeuVIotSSoIanfIFlXqFQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tfI44X8a4zMWYY1QlzOJK68DnqLIi+1O5etOBIPxc91R0eN1JZK9yDuFN8wvXHkVm
	 yi9wRkzRpJ0grReCmRIUNWZaNVnNR2fBp2i4CuVvaG9pApXJ3ONhyJvQ3DWu2Bcqwu
	 /qy1YRUi1rwnxG0xIw0+n3zRqjMXxkXm6tuViN9fmlsQPczrTssjoxQ8ba5Gt9KG6s
	 8w3hx+GQlE1mkH6jhZHwXJ4EvV8zzK56Tl7RUYuyV4pfZtDqfjb8OJdy7I9D7W+Kr7
	 iphqncq01fsc66cWPTQ5HVWEK1EAHPQ9FX3RvR+jCUdX4OEmPTlpsjcnTuDZwQvGdn
	 DAYlzwJicWn0g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mT-YMamp0EFm; Mon, 24 Apr 2023 20:14:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 053A340990;
	Mon, 24 Apr 2023 20:14:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 053A340990
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 30AFD1BF476
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Apr 2023 20:14:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0C7AA60E25
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Apr 2023 20:14:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0C7AA60E25
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qZ1M1O8fZeNn for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Apr 2023 20:13:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1954760C0F
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1954760C0F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Apr 2023 20:13:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="344038954"
X-IronPort-AV: E=Sophos;i="5.99,223,1677571200"; d="scan'208";a="344038954"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2023 13:13:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="723723077"
X-IronPort-AV: E=Sophos;i="5.99,223,1677571200"; d="scan'208";a="723723077"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 24 Apr 2023 13:13:56 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 24 Apr 2023 13:13:55 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 24 Apr 2023 13:13:55 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 24 Apr 2023 13:13:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YhGVBtV4ION+kCfVr65tSgmZJE6DRLR1A8XZJmk6DGT9oc9QnxQSZlnkZrMZsqdEhGpMMZ6XnK/bLanNPnjwK3BcLJNB39AHH0YfqZWu/QkbRb6YdzgF2lFalNoqMNi9v+Sg43drJB/1R11zojAEhp2IwE3xYg6EwHnqSrn28RZWyk9ugiM2X8gFQwymzk6iXaO3TiKW5gx1ywYftyceR8kHDsrpFSRQcFNOukOnBYDVHexBXsHGolJPFUirlDFsFbJqaN7QnRv/vvJiC4XMFmzrzwCozyBDkZ4pwHejtHx/RfFLDYj5/lxQETwKrdlDbAbDnVk3SsnRDTKYHVkCsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wCvWZ/7JWGPdteYKGE3BTVw9zKboN2iTDV0VBl7vQvc=;
 b=GBotJ4xhp0TKcm3jcrZMD/Cb7cUt8/+KSEJ11+bBgkW1gh5WHmkGJFY0JITpECUlXdgyPxBl0sPC8GVd1vV26SQrXfrZXRqN9UbNm0bHf5bACRKSPamMxYyKt8n4mIMaIBZvPdH3nwQxNtZdbCu9JUljWFj/mZADefxk6W3nGcfUodbjAv6mTuM1kMzq5I+BlFi+0Rjv/scfGwn0CvJuIF5rHuT8K4clHsiT71nIc+G7juVrJZBXbFAcqZdYZL5MGVt3PtWJ4dBu2eBciXMWzFqF+NV3QT8hMVe4JCtzDx4jrB7xQISdBq1zemBfH2fIrjhbvPb35y6EO4t9vlheew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5028.namprd11.prod.outlook.com (2603:10b6:303:9a::12)
 by PH7PR11MB5794.namprd11.prod.outlook.com (2603:10b6:510:131::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.33; Mon, 24 Apr
 2023 20:13:53 +0000
Received: from CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::48d5:6ac:3b50:10d8]) by CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::48d5:6ac:3b50:10d8%4]) with mapi id 15.20.6319.033; Mon, 24 Apr 2023
 20:13:53 +0000
From: "Mekala, SunithaX D" <sunithax.d.mekala@intel.com>
To: "Staikov, Andrii" <andrii.staikov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] i40e: fix PTP pins verification
Thread-Index: AQHZYtfe1rjKhH6knECHIug29msej687DFmw
Date: Mon, 24 Apr 2023 20:13:53 +0000
Message-ID: <CO1PR11MB5028727CAFEA6A86405D7BB7A0679@CO1PR11MB5028.namprd11.prod.outlook.com>
References: <20230330071759.3405263-1-andrii.staikov@intel.com>
In-Reply-To: <20230330071759.3405263-1-andrii.staikov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5028:EE_|PH7PR11MB5794:EE_
x-ms-office365-filtering-correlation-id: e354e8ad-a995-4392-4b53-08db45006cd8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uiRubNvcaT9gbecobPD/OZIK7uhhdNoQbpK6i4CGPhxOTWUla49fFyMib5BcmYCOcVent9c5oHUjWkDKc4dW4rlxQDCRBlh1F8JWfFqKHs0MB1yqopaDo8YhUgxh/0OvpxI8JO6GUAwE4PTJbvJeok8dO4UeMdskF3FltEEUh9207eTIutU7X/CvrbUUkl7lun3Uho24zvgwxP9nmQXRZ6KP7aWr5XVbonWs6e5bgKhrLhuNHprw37ZfU1VevVjj4J4gArtCMKV3VJ9fU2mDcyJi5qpL196RcME4sCVvCgSRSQ65tS73vQdl8srKzoCRbzpD+I3PgNaSHNB/tZbv8P/mTjzUWol/+/gK9/vnCKFWSL2sR/f3a6JP6ly1ThjWc+as57xcHELKp75Iiiw6JPlkP4OAa/U5NU3c2tUWt6OlQmIWAEdofRf2OJ3G2xBQYzDgu/2XqqKZNsfu+v5X2pUX6gsv6g9f/0rdiG9TIYMYl5p18p93c298YladDhWUEMsYsnStqk4oALk2dcT8RoZBGV82ALYus8MGQjoQ7wYbEM4WJc1RKBkvgAGYiPibpnUPTvHpFB+7JrzzWklD6M1asT0GtDKSTlYrBqUV0tReEL/ERtooBJbypAUTbhEw
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5028.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(346002)(376002)(396003)(39860400002)(366004)(451199021)(107886003)(6506007)(26005)(53546011)(33656002)(9686003)(52536014)(86362001)(186003)(5660300002)(83380400001)(7696005)(71200400001)(38070700005)(8936002)(110136005)(8676002)(316002)(41300700001)(82960400001)(4744005)(2906002)(38100700002)(66476007)(66556008)(55016003)(64756008)(66446008)(76116006)(66946007)(4326008)(478600001)(122000001)(15650500001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?BeVM2oUaTjAmfTLstDA9ITuMyjZs4HStIzuvx3+kTyapnkeXHsdPrxAzv7TW?=
 =?us-ascii?Q?Cje6xGF7tRpMBeKF1G0NY3V8zvAXueZ3GEyeHaWUydI92O4o1NHCE8L1Jq8g?=
 =?us-ascii?Q?BjTANrPgfKTxxeIIsSWhpFTou4sFJcFEry4sIpjayxN3hlJJBfM8MVPbz+Wq?=
 =?us-ascii?Q?riNtTAesImOdKmqWCrgtnRK3ohLUAylMml/y8ZbosDNEmvP4P5bh2nnE6UKw?=
 =?us-ascii?Q?7ZT/EYFMi2xSvCgItNN+kI/YA3E3EFIZuicyQ2hQ5VOTSDHffrkYzToj4OZb?=
 =?us-ascii?Q?ASxwGsE2FnoT22h6XxoD7SwmwR7OlnwYSr4s5XCwnd4q8+D6ut269xYcFEb3?=
 =?us-ascii?Q?v49IEtR4toGrxXP4GY204F5dAogYep9FFVUbxgSCGqhrAD7hKEr73gzrT6Ym?=
 =?us-ascii?Q?NsIshN7soepWbpCv2N2r/9Hj+wgWwPxdGyZN6LhfBTy1PsVM7GxbvqdEr5B1?=
 =?us-ascii?Q?cipyRhhZGH7uHW13kaWMD9X1YvTO8i1UJNA1RCI8+/24fTBCoA379SlgwptG?=
 =?us-ascii?Q?gOiBr+oMbN63pvFjnhGbLZbyQsKchmHzmNVU+SRaY4yLojG9RA7dXeUQlrGU?=
 =?us-ascii?Q?8AnfBacw8ZM+INn3G2xWFtG8vLQc/hrgSUV3FmwMPheJFoUmL+ofIiJq48rb?=
 =?us-ascii?Q?NwWhD18aJozvMyQjUqtsUJiemSj8D3yTQu02ndJ1/kePCwasMRWxXenXWBKS?=
 =?us-ascii?Q?ut0oo87yFXibp5GFK9/X/Am8R8bK3mJXz4Jwqe5hPptSrrfZmGR0864347Ln?=
 =?us-ascii?Q?ywSE7GAuf3hNDqSz0gQTUeAgLB8Gd/hCMcFtM070uRfMlwAMWDdJv0DQQpdE?=
 =?us-ascii?Q?J75H8SfqZ1W8725DlEK6SL8oBKJjxjr8nTZntbQFi3fMcNNks+gtMQ9FkDIH?=
 =?us-ascii?Q?6geCo7M82xfCzuUaZl3L7WLyl7O17QFgEJDuQkiF7z8RGPLBBwGJg8Nvulgp?=
 =?us-ascii?Q?CZgzKSshr1wWJF7TxVupoRmj95x9n/k9mWc/2GwmjKCUJcRlNIyfS9Qg6kX4?=
 =?us-ascii?Q?FxLFo225nLdPTHg9iLHKMqiTeuPkE87QlZx5Z70bVYaw+1NSp1ySIY5aLVl8?=
 =?us-ascii?Q?vd+IP6awvHtVM8Ywjc1D6vDUujK+nmElSj5hMwVZQ5H7dd76v4SZ/OakM2vu?=
 =?us-ascii?Q?4LH06IgsAqdRIp0cNyyZbemtyeQ7tKD5g4HM9g43VpwgKNF+7hsWLgMXr6Op?=
 =?us-ascii?Q?o8/NKNUvwJ0BbfvyKOJKxvrmL73vJXYYKHPmH4RWEcvdxp8h3dyBX6gIvoqK?=
 =?us-ascii?Q?DptS0XzDzhEJ53dKWi36n6Z2ys8E+Mtb2NVCrPFcfrXy8EtgpFGS6mIWoYA+?=
 =?us-ascii?Q?TIHTI8OO9/ZHt5U8nGWae3CNY0IrJQyg2j4yANIgcpZg/qwqc07lEt3yNDAc?=
 =?us-ascii?Q?jkoMMQAIXuvdfP0gNnDTQyBypxov7twPsVIdXL2Pq66/ipjONZfn0bdIH9Zv?=
 =?us-ascii?Q?/CTm3R4QfLPNMG285PUWoqsniQ5rd8b3l5aazJMCQS7Uoov+DvhJrYBYLBEr?=
 =?us-ascii?Q?eLKnFoWVDwizNawTkcuEpys+KMW5tooZ8Oj3ji+1X2C2CSKoi2PIvMGNs3bT?=
 =?us-ascii?Q?oVeAf7M7ZiYNsLGtYhf/PcYJNWj3e+7YJhHP1DxS3L+dBpVo85FbUnExeEM1?=
 =?us-ascii?Q?Dg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5028.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e354e8ad-a995-4392-4b53-08db45006cd8
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Apr 2023 20:13:53.1444 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uuU3HkHL3XhF2Zqt1NfUYUp2SU31KzD+8dHFrPGVMSmdffVNbUwEKUN98rI4q21FyWgN0Jc9MucbLxbOoEHuE4TkZjsTwkBLRJl926WVKMk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5794
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682367237; x=1713903237;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UaQtbugiUeiC1gqosKfZpecCjtWXuwUc8SRNRPQFR+k=;
 b=CxW8ZwjSxKuZZl8Oy3oLZstS5FFvpuqQ5oETRfbxNmAZZNJlTsel0SkW
 fTK24txjvjO4snWJ5XxNqol9pMIx+YcQDQ7kRGEKTlHqzIHhNxGDR8dYF
 WSiWPe+D1Dj6/+ATtV51IXkH7wN0T086vIkKD6EqOBa86iEzpCImItvkn
 lP3IluZRSqYOsahMSBkaMncnlj2/qDoiHIv4wpzfQuXjeFVoZdIn9f5BL
 zLHeXfKyKBjyPqhwCP6DuRNLg4ksuJ/p6ak1Ip7Uel6gAueD/4Q/S2UZm
 gSe9v/rjRzazeLh63LFdMEkX+Dip5nzwKq+1TzLpexrCFVSWLpAjz+iYc
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CxW8ZwjS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: fix PTP pins verification
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
> Sent: Thursday, March 30, 2023 12:18 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Staikov, Andrii <andrii.staikov@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1] i40e: fix PTP pins verification
>
> Fix PTP pins verification not to contain tainted arguments.
> As a new PTP pins configuration is provided by a user, it may contain tainted arguments that are out of bounds for the list of possible values that can lead to a potential security threat.
> Change pin's state name from 'invalid' to 'empty' for more clarification.
>
> Fixes: 1050713026a0 ("i40e: add support for PTP external synchronization clock")
> Signed-off-by: Andrii Staikov <andrii.staikov@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_ptp.c | 16 ++++++++++++----
>  1 file changed, 12 insertions(+), 4 deletions(-)
>
Tested-by: Sunitha Mekala <sunithax.d.mekala@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
