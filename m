Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 646363521FC
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Apr 2021 00:07:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CE08D84B3E;
	Thu,  1 Apr 2021 22:07:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Joan-LhNZEqS; Thu,  1 Apr 2021 22:07:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 34E3484B40;
	Thu,  1 Apr 2021 22:07:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 03A801BF831
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Apr 2021 22:07:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F2DE184B3B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Apr 2021 22:07:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V0jwtjDsU1Sw for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Apr 2021 22:07:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id ADACA84B2F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Apr 2021 22:07:27 +0000 (UTC)
IronPort-SDR: 70qwaP6ZYHsCO8LnXCVOKXl0P/TOfljCt8iyL5+OgL4X01R3ckBxoexEjjU2Q05a7LoC0nK7rB
 /LoZGMr3HGeA==
X-IronPort-AV: E=McAfee;i="6000,8403,9941"; a="192443054"
X-IronPort-AV: E=Sophos;i="5.81,296,1610438400"; d="scan'208";a="192443054"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2021 15:07:26 -0700
IronPort-SDR: OHWszH2erhICQ4GEfmGDJg1g0xjwVhTqPFL7D1bhRxWWWBmw5hZs1Sqs2Jic2jT/FAwgVUOKnB
 V/G5g8J+dBZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,296,1610438400"; d="scan'208";a="446250303"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 01 Apr 2021 15:07:26 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 1 Apr 2021 15:07:25 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Thu, 1 Apr 2021 15:07:25 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Thu, 1 Apr 2021 15:07:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=goWNcUaEUV/w6FCjnT1J25s6Pt0rvymUnu7rP8lrj5OqIFqFIdLg4ZmHm/RZewJDVZMZt2xeMHZ7LrvuBYQrztw+T9fSu4wpeLkfMg38NNXUS4OP4s4zKVlNfE8KCIx0NtTw/0P9ZZw6QJUA0huE3y38q7R81qlCbFdP4/3Rvc7kHexgDhn6o8BAo8eIYzOxPCyEzpW+K0bS2jS7NcDP7KpI0LgDnztgsQaLyAqa2LerjRNDfydrL6pXvr858A1Vijw05lVVFRk+AFk9OP2IlvGCts96I86TfUzzLTf644blGl4+mjSiSQXWRut5w6NlE+joqoRzo3HFuSpTrhjV8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ojl4rOmu6+VBraVriBni6y9h5VfNB0rgK7mSNmcH3PU=;
 b=bX/Ady9V3OPk1joBpR/3llmr0rzqD7fmEzD6/WvBD5Uf/qf249AdmHM7HiosHkNRpYNVZyZoMDc6hOgcTf+lnT/R84ifG4GL3Fw59FH8uqgN5A7AC1dxf27qn4bG20DwjTv2vtDWY2Po0JALVgMV9ep4RWNm18mYCGdZDpUoZR3Pp2CsSS4Q5L+hwdbmwE7jfn6jL1rwneyohDClmVzFILOF+ISkRhNdOCwMPhLAmPTYO4Q6uhUe8RgMNLXESUShvwy0A/DLBEFEL3giZSZvZpkLZrc5VIVNnzfq5cMVIoMRCjuMDkZQarx3whZ6FheKtqf7t2JG/7uCVPzA2JPtdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ojl4rOmu6+VBraVriBni6y9h5VfNB0rgK7mSNmcH3PU=;
 b=y9oz2yBTHnQq/kFV5357DJjtQ144SZhf/ZEMAkYAz6K06gs3DN/YeHFKOys0XLA8/23d7h3B6PQrVJ9rIKLr7iiYqb1CaKFHfcepRW008OCykqz7z1A86i+I/PZtYk59g62n/jApaAERhvF0ZMOvPlti+jV25N6rZRRgDTlVbXI=
Received: from MW3PR11MB4748.namprd11.prod.outlook.com (2603:10b6:303:2e::9)
 by MWHPR11MB1648.namprd11.prod.outlook.com (2603:10b6:301:e::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3999.27; Thu, 1 Apr
 2021 22:07:23 +0000
Received: from MW3PR11MB4748.namprd11.prod.outlook.com
 ([fe80::a995:ea7a:29cf:d212]) by MW3PR11MB4748.namprd11.prod.outlook.com
 ([fe80::a995:ea7a:29cf:d212%5]) with mapi id 15.20.3999.029; Thu, 1 Apr 2021
 22:07:23 +0000
From: "Switzer, David" <david.switzer@intel.com>
To: "Siwik, Grzegorz" <grzegorz.siwik@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v3] i40e: Fix parameters in
 aq_get_phy_register()
Thread-Index: AQHXIIvsO9ip3g8vl0evQ4a7MzcmpKqgRV+Q
Date: Thu, 1 Apr 2021 22:07:23 +0000
Message-ID: <MW3PR11MB47487B607A77DBA3E6D0997DEB7B9@MW3PR11MB4748.namprd11.prod.outlook.com>
References: <1616576307-54213-1-git-send-email-grzegorz.siwik@intel.com>
In-Reply-To: <1616576307-54213-1-git-send-email-grzegorz.siwik@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [50.38.40.205]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a937dec0-aee8-413f-e09b-08d8f55a870a
x-ms-traffictypediagnostic: MWHPR11MB1648:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB1648281610ABE63F7D72129BEB7B9@MWHPR11MB1648.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:131;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9DihurLchNE68uOMYRO9Q7wEsR/s538TDiWbN/dsD+kSFlpHdnnNKKluyhz5+lbd2MbaLaNJkl3pCpGy8ZouCJ8dkUURBu4/ZUdzFxBxAxpTaPBhYVhFOf8oMrx1bSgW8AR1rkr6+Ry/sOOBJMcKzP29g0hMQPKNGC3yZr7dOw0ZgrictgSLO3z8rtKeWAUlmdIAfYMlM9LrFE3/Nmp525tpz7m4+HapWu7fgTOl+ccZHk8JlHkxn87eVE6IjYp5H6W+HjuhPWutMoJDxlIv8F5XsoAsP4i/EiXrKuy5z6Ana7Bere8Aae5Osw5gzhUWBmkZJiz7zW6Hmdfh2IwmQSDmzwm5EEbCzrLQPFaRl2rH9Grx76JqoBG21+viKH7OCsz1UctuOoaAwIOBcZbKW4iPfEU2YHn3uTL3QR36XQBTGE5oozKbUpWKKy+YJflCAINHjA6XRzERMx1b4RNnbfX/LFmf4ZXivtwddpELM1HkKAI2KjDuYGWFF4nNywRhNfYyB+N+joDQb1a4FyplmTileaJj5kt0xOO/n9YOy/2nQksXCeM0ELokn6n8h0es3eVXxhbSbr1oOlhBYaqRuU/d86JBfMb2bePEylsrT7mOSa6hqRV+WsqqhcuyM9ws0E3dHup86EVsaBMr+xSVZ+o950US6kWbywpACyGF7nI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4748.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(346002)(376002)(136003)(39860400002)(396003)(76116006)(55016002)(110136005)(7696005)(26005)(9686003)(33656002)(66476007)(71200400001)(316002)(83380400001)(86362001)(4744005)(64756008)(66946007)(66446008)(4326008)(52536014)(186003)(5660300002)(478600001)(8676002)(6506007)(8936002)(66556008)(2906002)(38100700001)(107886003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?zXFZPRCrbBIsD4Fq1Fz+0fIEObHTrIExoV99+i+chA7gp8LqECk5b3PzaiW/?=
 =?us-ascii?Q?xPW45MYLB63jgGrnN3b77rAsuqJ8rTxNKOOVgRhQr3XDHqd/lEWzii4PxjdK?=
 =?us-ascii?Q?7dkZY0aMUbhzwgsCUH5L0lGbvflyyOcvMfUh+uTIjZdWOnvX0/RQTAI5Qi0h?=
 =?us-ascii?Q?oY6I69aES3lZ3pvPbF0doj2sQ8+m/03uw5kYpFf8AWWi4mhuxAse5Qo0XCcQ?=
 =?us-ascii?Q?fljixyHtjzQ1cUQx8UQ6pTU0rchd5zNS8cTqwE+Dp7EWlsN17qImmqyOSOJh?=
 =?us-ascii?Q?YDTJdnREwpRwYmusQQ07ehE5AjZF6wOLosbIWfCxKRvkKpZSQLh5TfaW8Ht/?=
 =?us-ascii?Q?l/tpY1F4E+RbE76IEUTSj0A5lBx8NzszANFcgj9/h2QZkueaCfxxz2jrm8U7?=
 =?us-ascii?Q?lXwqxRsj7vaKdBG5qOg6jC+P6wNXJntyfoHe76F/Rbs2sHYwGzYGShC2ZmJF?=
 =?us-ascii?Q?EC8+SLh5P+EiqfvkNsl70459Ox8hYOzJF+w3wrQ3sgv1dbpLC99f/BT4o3SL?=
 =?us-ascii?Q?TjAALigJ0Ze7oiZkiSmqNFEXLPvu2gukVPyEEiJqFXODvx+4iqWqveRhDo/m?=
 =?us-ascii?Q?hvr+WVR4clMxUbR8IIRvYrqptQ8b7EEwlabeqeHN1Q+PzzZabEUSkfSjVsAU?=
 =?us-ascii?Q?ViuDdJQ2OfLte0rweVpR0PW94lLhYNRtVjqerumQw4lIEY/Xo4QQ3IUN93AB?=
 =?us-ascii?Q?M02onWYv0sIyKcEJapnH83L66SZMLjazIxakCCMlp/NM9KwOfcu2wNROsH7a?=
 =?us-ascii?Q?mpvFpwrZ8hn/9JreJJKZ3feuLBZX7T+7OkTvgASOSbqwQotO7JMzgrsGFi3C?=
 =?us-ascii?Q?VhckkUJooCm791cMuduGvyvvlbfSyYU6f2GTKI1CEt296POoyU+91JsGmrsT?=
 =?us-ascii?Q?FD34YZN63zqGulQ5Yr8hqH/u1JJ74EhVkaYIw25dMHf3NGra0f44Ae2kTEJy?=
 =?us-ascii?Q?9XHszi/sTdGSbvaC+I20RV4TX5KQc3da7Jf39Yuzu2JGcbS+eth6nI/fpiSK?=
 =?us-ascii?Q?x3IP47KzHzbfdZIIh6LLWnGsl9ibibFRtQW6iJy5AYerwIbF7jc69JDBOf49?=
 =?us-ascii?Q?rY/e3Q3kFjWzH6WZhydgGHoIm1WQJfu7REz8Du9crLm5kNcxSC0LsEUxUT+Z?=
 =?us-ascii?Q?L+BXLv42Y0DyD+2X+2scOyGGJLUC5/di52oiL8arix8rdYP3DTYcIHEyfR2u?=
 =?us-ascii?Q?1U46x7ntb7QpCGOdnz8TaGc8OHgkEr8r/zijtoHH2kF+grL0ZdS17VmzoGWu?=
 =?us-ascii?Q?kdRRXPFlV//JecgZ2dhrKD6jSVpVCI2qcUviIUDFDEPBmwjXNMmxk1GR8QdT?=
 =?us-ascii?Q?PXI=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4748.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a937dec0-aee8-413f-e09b-08d8f55a870a
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2021 22:07:23.2801 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ooEplvfAf9rIaHJiXRe6Va6eBJOHaFNzNRi3ZV4QmBUIC1R3ES6VPXHwVC/x6NdtzhpdkMv9Tfz7CoyaPwHwwg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1648
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v3] i40e: Fix parameters in
 aq_get_phy_register()
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
Cc: "Siwik, Grzegorz" <grzegorz.siwik@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Grzegorz Siwik
>Sent: Wednesday, March 24, 2021 1:58 AM
>To: intel-wired-lan@lists.osuosl.org
>Cc: Siwik, Grzegorz <grzegorz.siwik@intel.com>
>Subject: [Intel-wired-lan] [PATCH net v3] i40e: Fix parameters in
>aq_get_phy_register()
>
>Change parameters order in aq_get_phy_register() due to wrong statistics in
>PHY reported by ethtool. Previously all PHY statistics were exactly the same
>for all interfaces Now statistics are reported correctly - different for different
>interfaces
>
>Fixes: 0514db37dd78 ("i40e: Extend PHY access with page change flag")
>Signed-off-by: Grzegorz Siwik <grzegorz.siwik@intel.com>
>---
>v2:
>-Changed target tree to net
>---
>v3:
>-Fixed typo in commit message
>---
> drivers/net/ethernet/intel/i40e/i40e_ethtool.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>
Tested-by: Dave Switzer <david.switzer@intel.com>
 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
