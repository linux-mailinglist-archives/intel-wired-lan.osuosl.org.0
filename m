Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 56ACA7809CE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Aug 2023 12:15:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 413478405A;
	Fri, 18 Aug 2023 10:15:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 413478405A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692353757;
	bh=hD9Vl/Cmh/jAk9MtUbzlBKaupkdYCVGkzn4J0n4MnBU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ReRnVPAh3oymqKhm0VCZ9/gF0rfQ/q6+z7TACcQKANKLUoCUvjn4u9coDc9463sXg
	 pl2Dl9+w/FAoCMd1cYTa0SiQm1eqFX5B11n7hRTn0dZh8TcOYv2VavWPBTGAV/yt7c
	 TiDMc/gfWXGTAdecbwZphWI1PlrU/Xxm0SlA4YWOJcCwSncBCE87fnHp7SPPiorki2
	 ruH9pMZ3YZa2mVRZgbmFJp4cMEGLA7pfNh33UYl2pxK+0tByS/bYWtDDjyFI9scy8U
	 7cagBD1Ez/RtgJvYGAfzm+ErAdPlWwNrY3I0RQ5BHtAr9BHT5uXyMIUOD6JJHsH1UL
	 uSCB77Ub+ubtQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Cmsh-h98yUQ4; Fri, 18 Aug 2023 10:15:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 273A984050;
	Fri, 18 Aug 2023 10:15:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 273A984050
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 84E701BF364
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Aug 2023 10:15:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6954184050
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Aug 2023 10:15:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6954184050
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id itnFH1w96Rmk for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Aug 2023 10:15:50 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DC7988404F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Aug 2023 10:15:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DC7988404F
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="363227176"
X-IronPort-AV: E=Sophos;i="6.01,182,1684825200"; d="scan'208";a="363227176"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2023 03:15:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="711944517"
X-IronPort-AV: E=Sophos;i="6.01,182,1684825200"; d="scan'208";a="711944517"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP; 18 Aug 2023 03:15:48 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 18 Aug 2023 03:15:48 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 18 Aug 2023 03:15:48 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 18 Aug 2023 03:15:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f8VXqU6ZBZ5kYXkNJHUfH4HImqApT5BAPSqxAspPQaRfUqYiMrjuBATXxuZ9kHtAG2sMtrTzWg/le8cdfHY6bBKg+i0O35PsgstBVB2VnOxsICD8vllvlwYTwQ0k5KU7hctsWzUwc3KhVbHGtE5wjMfZsajFTCNBltaH/Gsf30xGVfu5upqL+MK8zJNurgNGLmBS3pPu6tIXuZegMxqzvS/ZzK49z7GGGIAQwlnsQr33VJQe4I9z5U0Ma6ymwcoe3onAdY9HOqUEGXvdERqU8H8mLSWGxEcBG42DE2oMRu5/8dmuJ45qBXd947v7jL0NX8XzsxPuVtER16adYag1SQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9qYxS/Hshg1byasx3Nq6t293IFvkuQZruwweU8iKwH4=;
 b=EOpNujO7BNTW1g1UcX+7K8LoIYLST+9a5O0pvCU8CHhYQfHjmthlEbIZhtYKsuGSMpgIv7rpm7S7OUJd8tW22Jhvs4CPvG0FC/bpavYxiHXi2qkNQo4/x84Epo8D25QKb4rf4oKqRgEr49y17wk59NWIRee80aAZ+Y5BO+WJkSU9ys7xY75jQqMAitaXf5jGlQcB7sbbGE8FYCA8NrnnANW0+FQA1MaUYmeoWbF/e0fali6iBFBv0U6Fd3AbsENbKP/xPR7e/IkeNrvJVrYk4G9CDFUqVn/FQDlKkdym8aU+oc2xLmceFvuMrP8wcgehe+qgc79Qg/lkbXUpFZlF9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) by
 PH7PR11MB7100.namprd11.prod.outlook.com (2603:10b6:510:20f::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6678.32; Fri, 18 Aug 2023 10:15:34 +0000
Received: from DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::c3cd:b8d0:5231:33a8]) by DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::c3cd:b8d0:5231:33a8%5]) with mapi id 15.20.6699.020; Fri, 18 Aug 2023
 10:15:34 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: Jakub Kicinski <kuba@kernel.org>, Jiri Pirko <jiri@resnulli.us>
Thread-Topic: [PATCH net-next v4 0/9] Create common DPLL configuration API
Thread-Index: AQHZzI8M3L/+HbfEUkKmdDAnVNAwxa/qq/sAgACUSICAAAR3AIAAVpSAgAQzeAA=
Date: Fri, 18 Aug 2023 10:15:34 +0000
Message-ID: <DM6PR11MB4657374BF0A9361647444D239B1BA@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <20230811200340.577359-1-vadim.fedorenko@linux.dev>
 <20230814194528.00baec23@kernel.org>
 <43395307-9d11-7905-0eec-0a4c1b1fc62a@linux.dev>
 <ZNtm6v+UuDIex1+s@nanopsycho> <20230815100203.4e45fc7e@kernel.org>
In-Reply-To: <20230815100203.4e45fc7e@kernel.org>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4657:EE_|PH7PR11MB7100:EE_
x-ms-office365-filtering-correlation-id: 9013cf2f-b069-40f7-829d-08db9fd40f65
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pDShzggiwn7NTJKLn13BJP7SOsgTsd6fA2JjtIHvUQYbFYKsM1wxWJaHqkNRYFfZg0qeti6G3DU7bXufwUO8IsfeAKVtvWWUYgVL29/sb9tEYSMyJa33ZLraud2xkPlgAnGubKc5hUzS2rUgWBp0Ky6FyJDcYrTkmgjUSusUH3vFhOmUuxKZZhaAAo+st7bVIhlg+0v/s9WPuTThl8t6W6LvTqRHwxPHM1XCEUixjHNi4RNqpI/qTPca9RKfopQXvIQRLhdJzQNn8RS73281d9QflryLrKojBUVxMNQEsE7SRFARRIrMoxVo21+ZIlExuV5vsN2G0es9jEAoH48T3ogftxF4m7Gcf9WjZM719y3xjrrwDzIM1NIU6sFMU4fjo+En/VTPO3kokNNZ4cXlUCERr8kS7+uVUfSPZNCcnW4diDizLLi17kqRVPj7x2DrWSZQEGKpR0MNFY4LCURzhhISOCy9Fy66nXjhnjD8b62jhwZJlrehZ1ez9h71WMX3OsB3jpgzs3t9+7HlzLqqMhm8cLYwMsJh6W1QgZtTx22r2N4LAz0WPu47N8YsKUX+YgTb3y2S6bvp04cYw1TusCwlnVT4ya2RcDVNXufGz8c=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(376002)(346002)(136003)(396003)(39860400002)(186009)(451199024)(1800799009)(33656002)(86362001)(83380400001)(55016003)(4326008)(52536014)(8676002)(5660300002)(8936002)(2906002)(41300700001)(26005)(6506007)(71200400001)(7696005)(9686003)(76116006)(966005)(478600001)(7416002)(316002)(122000001)(54906003)(66946007)(82960400001)(110136005)(66446008)(66476007)(66556008)(38100700002)(38070700005)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?E255i9lb1k1bWahwYR+YoG9zbLcvhOVZsbkvT3yIIe/dFoiEubVIBUB3teu1?=
 =?us-ascii?Q?hlAKxsQ2P2YHj3MfhnAQTaOim2OAgCqPWV4UiShWqgLQq6qJSkPwCOh1uN8Y?=
 =?us-ascii?Q?muGVYDJs2900Un0wmf8P2VjeB8gVyoo0euQJqXlS5HmPhBxxKzCEAPaWKk3l?=
 =?us-ascii?Q?aFXhvrqypzEsK7NhQ9Aui62kSEAhYWfL8zG3Ev7teLH/uDWvhHAlkcSsxU/e?=
 =?us-ascii?Q?Xb+SqOh6AsEQoWVfsGXaFuOr36L7uxPH/s+w8BPYcwo5hJUiJj3SZw5eBJ/9?=
 =?us-ascii?Q?93nTAqnLqhW+05OgXAVr9Ryz4/cm+p+5McSvMUl8nxm8fwwkrvWkttene5xR?=
 =?us-ascii?Q?BUNocBSJYMrRJpjxSVoUKjVdj9wGOOxvtn4OyphzML1lJjcCvK72qR3Jqjwe?=
 =?us-ascii?Q?+EbK6ripbU2XAUMnwfWpbfNiY917M4CdY0fHpQkg6NrsxjwcpEm2O7Mtw9yr?=
 =?us-ascii?Q?QiY2yZo0MKnwvlI7M3HUl1egJTVdC1zkUZZfdes99nNF+SDbR7xsfTsITScw?=
 =?us-ascii?Q?63uctv/0eH5ZxYwduS+SYmVWyoaomsPUD7bsg6N5oa7WztF2imKW39xoG1mz?=
 =?us-ascii?Q?n0mnqDTnftU8lJ4RpSOgQZgUaCBV/c4rUH3hl3W1PwgdpgP8ufDBpI3UXUjP?=
 =?us-ascii?Q?/iX/qX+JdOHBG780vetloWDf06Vfit0QB7XxnICFsIykxRkLoqyU+G8YGcgo?=
 =?us-ascii?Q?Q5tnqmzI+0yfMa9IaHFl2DWbFTVIKWSRDzZwFuqxHMd5oc5RjAoILv8/tfuZ?=
 =?us-ascii?Q?4SGhP+jdjehzofFCTt8G2JU+EG61tmj+7kIKWRv+nPb6EqKAL4n6+PZ0QrBv?=
 =?us-ascii?Q?bMjYlAve/AjdARb7GqQNobZEJZFmQ6F56XjQ0cW5IAGgafQq5ZEHuyZuMgoO?=
 =?us-ascii?Q?jDdZTgkTChDum/YZ2UlZpXJ9S99KCM/yVasK9+uYYk+XVQuG9vnctOcu24jT?=
 =?us-ascii?Q?B9mK3LnWiaPqgIGGgDVuZISNWD/imp3EOuD3FTxo5n17B9hPtPUKKqcjQ+7+?=
 =?us-ascii?Q?VJms2dDRsvXC+GWZHkyLEq8ge+T1FzRJWzUiXmNj20WACA2K4CZkvKF8mXjT?=
 =?us-ascii?Q?Rpt4UOs3d84a9n3Q+ynLs1unUcbYbOr+IMDRBkPJ0niEV28C1T8nG7c4vi7p?=
 =?us-ascii?Q?xzues0kcSMps2KjXx3SQL/rDmI6WmhX4ji/axAMN2dDD/NLRtx3zh38lqDgM?=
 =?us-ascii?Q?1a9ytAzC8wiTs2PzKB4iUTDDelYH3IxsiOnCTdjvqhLCsQyCKJGXx7+UASRf?=
 =?us-ascii?Q?aN0IfFAddRloRxPmMH4tbdDT3QI5MXRKEbUPlA0UHniaodpFrnSDdaw+Lx1c?=
 =?us-ascii?Q?doFxCmBp3WxefWNORkTPWuJMpfA30VXdJ9Ltjh6On6/y51h0a0ulmxAxIvra?=
 =?us-ascii?Q?vlftqykT77XsOh+ZUlzfkHZ4ckSd4gu/3Qxw69PcCo53tossjEcp03jbQV/c?=
 =?us-ascii?Q?TXA/A9Z6QWHYt+NRJeScjSN9esnzKyJf1vANUWcwTus83crWhDmoshtCJV0K?=
 =?us-ascii?Q?iIcLtzNAYlSMRb5zFNRjCCDwsueQ08aGi1Dyd6mlWj/RNjk6A1mdZJUEy/km?=
 =?us-ascii?Q?ViZxrNVfZ6cLYwyK1WuyNtOFNu/FrWktBRD0B2FWO/ZzRTpfO/FxYaqdfHgj?=
 =?us-ascii?Q?Yg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9013cf2f-b069-40f7-829d-08db9fd40f65
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Aug 2023 10:15:34.3076 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: s4WAgpD97At5Ny8IgXw+uPLZ+D9XF3bMJRmA74F1v01idS1AGN9JW42hLvEztDr2SLMt4lU2c18L2S/pC/9Qx5+f59Ztg+tiezTPpgLNhsY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7100
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692353749; x=1723889749;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9qYxS/Hshg1byasx3Nq6t293IFvkuQZruwweU8iKwH4=;
 b=EqfPbAXLikkarPNeGfQMoL7FFP4P2ucz8ivbjT0l7usHJukmqtqzy711
 EptghB3MpfgFffbDUj4eFBgNr3S2NUPGV9yAfCWPgkszxQTu2QFWgoScR
 ifOhESsikLkxe8BODGFsWmMemVkVslsTr+ZJM4AQ6Y87o30CiscvI0TWF
 uFSko9jXuiTtbqNj8Bd7YuTucxn8wXSHuzV5XVtAS8z26YqgzEklrraTo
 H8676lB3oKcm2AHcJOFXU4Z5hp23vwlNXYmv2iKyydOKF1eWkTwvMFVPG
 myT11o0ah2XsxbtLQWZN8WpxUP0mOLwxI56UX2N3sk45Ui20DrLhAMetB
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EqfPbAXL
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 0/9] Create common DPLL
 configuration API
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
Cc: Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Bart Van Assche <bvanassche@acm.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Olech,
 Milena" <milena.olech@intel.com>, Jonathan Lemon <jonathan.lemon@gmail.com>,
 Paolo Abeni <pabeni@redhat.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>From: Jakub Kicinski <kuba@kernel.org>
>Sent: Tuesday, August 15, 2023 7:02 PM
>
>On Tue, 15 Aug 2023 13:52:10 +0200 Jiri Pirko wrote:
>> >> Feels like we're lacking tests here. Is there a common subset of
>> >> stuff we can expect reasonable devices to support?
>> >> Anything you used in development that can be turned into tests?
>> >
>> >Well, we were playing with the tool ynl/cli.py and it's stated in
>> >the cover letter. But needs proper hardware to run. I'm not sure
>> >we can easily create emulation device to run tests.
>>
>> Well, something like "dpllsim", similar to netdevsim would be certainly
>> possible, then you can use it to write selftests for the uapi testing.
>> But why don't we do that as a follow-up patchset?
>
>I was thinking about a test that can be run against real HW.
>Something that a new vendor implementing DPLL can run and
>validate that their implementation behaves as expected.
>And something that distributors and stable kernels could
>potentially use to validate the code still works.
>
>We don't have any well established user space to make use of this
>new functionality, there's high risk that drivers will invent their
>own ways of interpreting the API.
>
>Perhaps something that Red Hat could help with? I'm guessing you'd
>be writing test to validate this for RHEL, anyway?

RH is doing some manual tests on their own, but also works with Intel's
Validation. Usually our Validation team works with end-user point of view,
but here we had to engage them to work with cli.py and confirm that
control over dpll works as expected.

HW agnostic tests were submitted by Michal as RFC for test framework
with fake modules implemented here:
https://lore.kernel.org/netdev/20230817152209.23868-1-michal.michalik@intel.com/#t
We had an agreement on latest dpll-meeting that we will follow up with
patches that would test dpll over fake modules, and we have started it.
As there was no requests to add HW-aware tests yet, we are not ready for
such submission yet. We could probably extended Michal's framework to
make it possible test real HW, but Michal's patches were just submitted,
we do expect some review/changes there, thus we could think of adding
something simpler for now..

Is simple bash script wrapping around cli.py and talking to ice dpll
while verifying the outputs, an acceptable solution?

Thank you!
Arkadiusz
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
