Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E9633F32A8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Aug 2021 20:00:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 61D66406D1;
	Fri, 20 Aug 2021 18:00:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PkUl27FyFHCt; Fri, 20 Aug 2021 18:00:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3EA5E40113;
	Fri, 20 Aug 2021 18:00:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3AC101BF859
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Aug 2021 18:00:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2905140253
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Aug 2021 18:00:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EWnI7icu2zq3 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Aug 2021 18:00:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5FA10401B0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Aug 2021 18:00:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10082"; a="204014135"
X-IronPort-AV: E=Sophos;i="5.84,338,1620716400"; d="scan'208";a="204014135"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2021 11:00:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,338,1620716400"; d="scan'208";a="452856948"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga007.fm.intel.com with ESMTP; 20 Aug 2021 11:00:01 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 20 Aug 2021 11:00:01 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 20 Aug 2021 11:00:00 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Fri, 20 Aug 2021 11:00:00 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Fri, 20 Aug 2021 11:00:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Nf64WFDpiZFMnD16uwOIhm2eSsCaoGd/XMVCPoni3YyjnIJ4pPGIN3guCjQED6yH4cjGqBHC8XB9iCXvg0M/0sCixc+n8+qXJXJlQwW7DKtXyZJABdnazd2njgdL8wXAcSQGgoDF2wiLsuGtyOnH9BdYhFvUSWBvfkDdIfSyGRkUVAT5xl08u5uM4Hhqnz7/jFfqueEk3O0opoBqWin5qLez+4LtjAnmCw/Z3/k+/WgFOPsaikJ0L6DA/AIsQx5aRzJ3//R62HtfTKNSc4LGJ7nljrOUrlPdwG3WXJQGHulOHLmWZ/PwguDEAYr2sZSH+Oe5qtyZ5HL1elWGgUDAPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8At63mJddoIjvQ3yS3NjrOyvOlUgwNB6nBWp+PtepJc=;
 b=R1aYQLE9gafmmfgLPmVekCEAEFVoMtjKsYn99HaUIVYysNnCMY+piptT4InDo/sd3xr0dfjMYkOSyWreHQDTwGwfcsoSDxm5VxGFK3R0j2Hopar9UxXK1kT6X1C+LdKZgvpX1Gzb9asD3ePOWuXU2qQzXjJK/3Bl/rjXb0JEq1vLFTitDTMa/34s5hqPV6U1HN943eriwrNsQcgb0BRcaR2zUDEhO3dFWvohM1z27WDIeWVK2iejN0zQlnrnI2moqdpeGG/FcaiB8Z7+CGAkTWpL9AN0kj2i75TVs/cxEO3E+/mcijuuGpfe0zp7CA6isooQm3r3JYK/Md6eumqdWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8At63mJddoIjvQ3yS3NjrOyvOlUgwNB6nBWp+PtepJc=;
 b=ExQDqk8bl4dSAUJ0C0dMQ+saqMWZOfAJSGFHF4kJS5kyPqi2cRnDEx4bcfJK0IgfX1aDtDx2yZuppjCvgA51rzUtn0zeOshLfHXJm2XCudAuJaa2H2KwifIm2d+Jvl6xPZUGjH1RMlk01F/f5rMMvWLwmfiqASLmRch5Sm8NRGs=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB2767.namprd11.prod.outlook.com (2603:10b6:805:5a::26)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19; Fri, 20 Aug
 2021 18:00:00 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4e0:837:41ee:5b42]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4e0:837:41ee:5b42%6]) with mapi id 15.20.4436.021; Fri, 20 Aug 2021
 18:00:00 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1] i40e: Refactor parameters
 name in i40e_print_input_set
Thread-Index: AQHXla6PUZTUZCMUAkWwV9h4fWKqpKt8sAqA
Date: Fri, 20 Aug 2021 18:00:00 +0000
Message-ID: <945f4edae4f3640bea345d0594ba1d4e672acb1b.camel@intel.com>
References: <20210820103025.9816-1-jedrzej.jagielski@intel.com>
In-Reply-To: <20210820103025.9816-1-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5 (3.36.5-2.fc32) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e498ade8-ced3-40c7-a316-08d964045409
x-ms-traffictypediagnostic: SN6PR11MB2767:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB2767E148AC5105973406091CC6C19@SN6PR11MB2767.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RMyw5GKSDjbcnMCtxH4PKGr7mWDkf7EGteAEr665pAdAgIa+NZuYZc41wQf54O7L0Im7hlki8AS82mdTnt65pv1RNNR5T1sFPSJNieMj/1nDIbQypIsG4FXGvwgBDWvKAFLchsPb6pGN3+ykO6dJjO59JYxmEx+KmyyMjfhuQFG8fSSCcntt7evG4idZpgceZDIKHEBxzokEVePhlLnMl8+OJ+rWDaTXP2RVdYUp/YxWYHBFrZsF/ZtpvMBA4i8um5qp1/Mmi2hSyFJVFZzmXjT1rldB0lomYiXSZDjIzbErtTgEzHWPIHjZppZxSIUjWDdokhhVJEYRKLIJGFfxct0LZsbG0k0ySNRnPHbbIgLiEsP7PJ2fpHbeA7nfW4svM2ZqSXxaVlma7fQblRYUnyTeH9vpnI41GR7lNSjMbbgtNkS5Yw3k/02gtf5N0rX5mPML69xGCUHMTAaX/EisCOtPwic2a4RZRMDvQichG5LjRsGPgN6klsSnSFKg7AcX7d/NMcgsSIocnddD4LrQ64spaAG1QZOv0diP/JCEBYKUjWoF9/UVqXuWQUdz8N0xZwxzfKGZT4ytlSf4Q22H4oez5RojE/UruqVmGH1U0/5Gz1qcWEUh5aQjqJoT1jK4Uvw1oBFM0L2zw8c+dgeGnh0Kl15cqmOJov5j5wNdxSBTDiGq6LbpWx+gytMIItFZB8JbApH4+k5y+irwgVRuGg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(366004)(346002)(376002)(39860400002)(396003)(4744005)(66446008)(66476007)(86362001)(66556008)(66946007)(91956017)(2906002)(36756003)(76116006)(122000001)(71200400001)(8676002)(38100700002)(2616005)(8936002)(26005)(5660300002)(38070700005)(186003)(478600001)(6486002)(6506007)(316002)(6512007)(110136005)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QzVwaXd1djI3VkxGNzNVdUxaWWNxUzlnVytQK05NcFBqSXdWVFR2UUJKZGtP?=
 =?utf-8?B?OTk5MlFTQ0RZVURiSWI0b2Rzams4SVU5YUhQY1kvbkNtSjVRMFBpZStyb1Q0?=
 =?utf-8?B?VEdwT2xjSzZTQkFTTDN6VlJJUHpzcmFSS3VuOWtrb0xEM05URnBRWGVkSDZI?=
 =?utf-8?B?MllxcFVXQ0RjSnhXUXNEV2dIcjRFNEJSdWd0K1VOUTNNSVdIMUR6eXpFUzBM?=
 =?utf-8?B?NGw0a1RNNVZnYTdJN3NScVFFUmwxSVRaU1BvNEx1OUNlR0R6cGtYQS9SL3hB?=
 =?utf-8?B?akRleVptWmJYVFJkNzROQWtGbVZPNFhhem5HaUhnL2dwbWZZdjMvNkk2RWo5?=
 =?utf-8?B?MU14OHF6VE5SVkd6am41OXhQTGhseW9seFo1RDZwVjBsaU5OQ3RReFlUZUJK?=
 =?utf-8?B?MUc5UldhMmlkZVo3R3NLYmVRQWVOdk9haWFkdmdtU25nS1pLRTl2MmM0M3I0?=
 =?utf-8?B?SjhPYXFVSGdPcG55UVBxZXpDMzB5U0VlNnF6VXdJcDYzSmZKUnplQTMzZ2tx?=
 =?utf-8?B?UmM2TWFFMEJMQXl5aGQxK3Y4UzdYQ0lTcUZpWTJKWDRLM1hsK21RMjJkdkFk?=
 =?utf-8?B?R29zbXpaVndNS0RXU0QwZzE2UndXdlgwMG83WDU4bnpDS245T1VOaktYMXgz?=
 =?utf-8?B?d2tjSitPOUtWU3BZMFIxVFNsQUt3Nk5ycDc4alBYcHBVV25ZZWkreGdBSWtR?=
 =?utf-8?B?eVNzLzNsTHJzL29kWDB1V1Nvb3duVzkydFdRUGhBN0lIREM2aExUd0tzUGk5?=
 =?utf-8?B?eFR3OFBEa2wwWGpLYlJGWGVEL09VckhnUW9reXlDR2FrazdOdHh3OEV2NWZU?=
 =?utf-8?B?NGZVZWRwM0hJaTBFdEtPZVVudVhYbDdkczBmSWxHNndPZ21tYTIweTJvNTVz?=
 =?utf-8?B?Zy81OHdIaGV6MEQvSGtObTFNZGFWYmhLbHg4azFtUmlxUTk5ODlQUnNTeFlX?=
 =?utf-8?B?b2lTeGlORWRHZWRzdVp2NHRZNWlLSkYvaVA4Z3pWYU91VFFvVWszTEtlS3Mz?=
 =?utf-8?B?N3pOUTZTeXRXY1J4WU5oY0hxazhWbktGM25qNWkxTVdpaWEzZ2pwQ0VPWWYr?=
 =?utf-8?B?R1BtamJFUGdIN1A3SDREWFprNkkwK3p4cUpRWEZwMTRiclJkRjRoVFBDUkF1?=
 =?utf-8?B?dkZjdUJIdzNJczl1ZTZqRkNQYS9KYUVaWjY2UWJNcVd3RGg3Z1MrZHhXaDdt?=
 =?utf-8?B?N0ZVSzBmSlJSNzRCTjhrZ3BxckNyZnJxTmZuWDloVjlCYUllZlorVXozMzdJ?=
 =?utf-8?B?WTMwbS9mM3lvdHQ5RGxZaEQwUHhhOHBjU0U2SnVjckFiRzJydHBUTHdmQnpR?=
 =?utf-8?B?QU04ODFZVUZib2xzb2w2eUdSdnN4dmVNbklQNUIzV2ZwR3JRaEVmanVRVG05?=
 =?utf-8?B?SDZSa2g2THJvNkxLWVh0aXErSEJpeVZLT0p2RURNaExmcE5WZW1STy9IeTI3?=
 =?utf-8?B?dmQzcWwyUHk2dkk1eDFTMm10UUhRY0tuM0ZwVDNkL29FbEg1cU1GS3puVXVz?=
 =?utf-8?B?dXdtOStjWlZ2WXA1NzYzZm9LNlhXNzFBQUZhV0FwVGVKZU9OdUVYYzZ0Nm9s?=
 =?utf-8?B?eGFzdnhvaVVIUVJWU0JxNXpLS0xlY2lWZ2xtajJNZlZvM1l3OXlONkVZVE42?=
 =?utf-8?B?Q2FkMUthckY5V3hqSEpoVk5vcHdUa2hWbi9wSTZycU9XSUsxckJ4dGorVEpx?=
 =?utf-8?B?QnpNSDVPcTZ0RFMvZGQ0Yy9aZ21MMHFGd0hMc3k0SEw2ZzBCRE42dW1JYTFC?=
 =?utf-8?B?RWpzSWdsc1I2Y0NuWXBNbmsyYll4Skx4WHZhS0laT25LVUlZR1l3VUxQRFNo?=
 =?utf-8?B?NGFnbGR4dTFxd0hidE05UT09?=
Content-ID: <B6E1EB65E784B344B9F48E803261F8F6@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e498ade8-ced3-40c7-a316-08d964045409
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Aug 2021 18:00:00.1310 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Yokv/SiSNLParrwtmV3s5cpNbq/5RK2cBMeHOnKeotMvUdv4xsvy7NpHBpVc/F0l/ZGsp7xg7zk6M79h63DX8Vv8w66NjK37mZyWtvQkc7o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2767
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] i40e: Refactor parameters
 name in i40e_print_input_set
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

On Fri, 2021-08-20 at 10:30 +0000, Jedrzej Jagielski wrote:
> Change function parameter old/new in i40e_print_input_set.
> To avoid UT compilation problem with old/new name
> added suffix 'input' to the name of parameters.

I'm not familiar with UT compilation. Could you elaborate a little more
on what this is and what the problem is?

Thanks,
Tony

> Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
