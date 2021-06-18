Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AB3F3AD497
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Jun 2021 23:51:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 795AA6074E;
	Fri, 18 Jun 2021 21:51:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TK43eRSg3msp; Fri, 18 Jun 2021 21:51:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 813316070F;
	Fri, 18 Jun 2021 21:51:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 598F01BF5A5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Jun 2021 21:51:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 46D384227E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Jun 2021 21:51:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id efb5jndFffZn for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Jun 2021 21:51:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F342840457
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Jun 2021 21:51:49 +0000 (UTC)
IronPort-SDR: X0maC9lQiSKd8Tk6Vqhja3YsiO4W/zmMk7mfUZZ2d7mvPyQ/vDGHWUylc18QYvh/fJeYDgdwJL
 noAjQ84HXBsA==
X-IronPort-AV: E=McAfee;i="6200,9189,10019"; a="193940241"
X-IronPort-AV: E=Sophos;i="5.83,284,1616482800"; d="scan'208";a="193940241"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2021 14:51:49 -0700
IronPort-SDR: o8dNriJvzAbEjamTxRi15X58L5tAO1kjSCxiPyPhntLI5RN4MQ5xIPzpHD4e0oSgDMWNbbmz6I
 mZsqYtsKZRyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,284,1616482800"; d="scan'208";a="405090143"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga006.jf.intel.com with ESMTP; 18 Jun 2021 14:51:48 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 18 Jun 2021 14:51:48 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Fri, 18 Jun 2021 14:51:48 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Fri, 18 Jun 2021 14:51:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Mo1cBqQ9rXOU1tB7E3N4MjeYQB+2pG3flPLOJmFcqtYSCTpFjILwfsYGWe+hw4YCH1bh52rnhrxudKaC7AVW48R2+5x2fsk201BjPE4EZ11/nhObk5Hba2QHPyFCepAco/CCIEWIP0pK1X4clAvgoV73EKQ1lYFs/6zio/uS76XUIYTshjKLsjrUUkcPWF5Yu5KcNlGKtUAksGLDUvuwzRC8tksxZq4GsE5bDU52Gjvg4nUd9JXsdDzyStGCThyF1GpEmWAzOZFNScG+Rk/klHnJM+uE4R+MVd548H3J6dWThJzBtfT/Jpr/ueQXEujN/ruZ7AngRcnZC6JrBhzF1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vyUO23gHAge6yl7OgXYu8cQr0wnUVUM+Fc98gS1BGTM=;
 b=FSSVwYsJYI0TVvrCXIXBpo/iP1lxS5bOUw+zZrqv4ySU1kAeVCCkXDTGz99keFfNAmppwvNy99WrgiRf1DQbvFlcspwVk4k5S3kxHOM5sFmj0qE5QDZb3OD3gZ0z8LpFj8AshbKWtfKhmKuMgpGOsitE/KY0ar4sW1nd28xZY2F2X13cJePkLcjihRAd63WIZZGnErXfj5tkhj4uP3OjWXwjGiiAfScHjeapQVCAbPwU/LpSpgJsPrPpRtVC+puXZB+hu+gXsCP+apymVcAAHAOfDuPDXuBdWXjnEs6zhBdvUZg5Y8MnehydySAVN5iiJqdPGyLCQyh1u5funm6KJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vyUO23gHAge6yl7OgXYu8cQr0wnUVUM+Fc98gS1BGTM=;
 b=IgxniYRpe8Nr3GYU5UuJiiE2OdHjQvLjiK2ya5128dNShj5IojoSO9xdFF5167oD9U/oUH39qG04YJQ93e3FHeKoMksALYpRvQBBiZcwiTQ83eGvsjnIkUiNsLkfHud4jRrZvmX8Da5Gcl/wHpzqtn8JMIP6HhiazZAk3vUkM2Q=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB2749.namprd11.prod.outlook.com (2603:10b6:805:5f::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.21; Fri, 18 Jun
 2021 21:51:47 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::15ab:e6bc:fd6e:2a1]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::15ab:e6bc:fd6e:2a1%5]) with mapi id 15.20.4242.021; Fri, 18 Jun 2021
 21:51:47 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "sassmann@redhat.com" <sassmann@redhat.com>, "Palczewski, Mateusz"
 <mateusz.palczewski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net v3 0/3] iavf: Fix init and watchdog
 state machines
Thread-Index: AQHXZCEIc/TVlXYoFk6tMstM9WHyXqsZgCIAgADQp4A=
Date: Fri, 18 Jun 2021 21:51:46 +0000
Message-ID: <dd3ae8d68410a7aa766153e1cbecd1ccb4657730.camel@intel.com>
References: <20210618090346.12405-1-mateusz.palczewski@intel.com>
 <20210618092746.vhj334aaoiqinok4@p50>
In-Reply-To: <20210618092746.vhj334aaoiqinok4@p50>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5 (3.36.5-2.fc32) 
authentication-results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.219]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: de8b3cee-77e7-48bb-8201-08d932a3452a
x-ms-traffictypediagnostic: SN6PR11MB2749:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB2749D42A64256838650873FFC60D9@SN6PR11MB2749.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: by7zLQkaAGXS6zXD398hMPY++9sCDF+5+voJDygQy15U03tlg7gltdUFYb7c3CYbjebMWL6P6lZw6nnbNvJQzJkFNGpksDkvybKZfAildINbaiJT8ejQ7FWyDrnmYoswhTlT1YMOhryd7YeW7h0URQuhpuAsCOrddk0ITEYh7eBnXitmXeXOGc6ImG6wRnmUvbHLr4nNJX9nP8u6DzVF+utmK0sG2sJ4NeSM7iRgnaCWD0WlvqBNsJ4HNzejTic6xDnf3wuGL8YgZexrWUpyBaGXeOEwCcbbafPKjzu3ZKZivCFmPNujwj0WPE1IJFNWs5Ms3dvJkiYVAPLqixW0hDyXSTQH0GuEVXayj8GpXWnzZJAOljoZRq51+vG2zC977GFmFYlXEH4iDO6ENUFGrkrutoogjGB75RoY6zUV/BVLXeqkljwLVAcEjTA0VF/0L9sce+DqpmmJcNm0nZ7Xm3Ar7zIZvgMqP+CEektxBK4DPjlys0u/xvHleSpJJVLQMJ8tcaUw/NhHkgflxFuhVASqxQggWsi3JpbT+OCGFeR9AxEm/JtglyZZ87yrlj4vMFXK4YbS6QtdtgWbx5ZWsWF1kk04hyPGyUSIeX6ZHCwDNa0OEchaInMtgSy5n3QhnsTKisSZxXoykWk/7b7SVS3Drjt4gpUfLxTn9W/EnSfP9opCp8ciABrGYsU24o9T/ff0/q3qJnxfswqE4J21Y3fu0RLhBgSM+sppZpj3kz8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(376002)(396003)(39860400002)(366004)(346002)(6486002)(71200400001)(66946007)(4326008)(8936002)(5660300002)(478600001)(83380400001)(26005)(2906002)(316002)(36756003)(2616005)(110136005)(966005)(122000001)(53546011)(6506007)(91956017)(86362001)(186003)(66446008)(66476007)(38100700002)(76116006)(64756008)(6636002)(66556008)(8676002)(6512007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Y1JCaDZ6ZGFoaXVoSzZnYmcxbnBwTjBhQzdxOUp6UitLdWRCemdFY2pSRDN4?=
 =?utf-8?B?TEVDQllLR3pLOHF5Y3loNTh4eis5S2pTQzVraDhmZ1BvcTRoZ0I0N2FxakpO?=
 =?utf-8?B?Y2pHTDhQblBMVitaWTdpZUtaSWlFeDFpNWVFZHlFMXlSVVhiOG1EdjE4VXV3?=
 =?utf-8?B?NGxIMlJhUEgyS0tBNVFRZyswbHhsbkFaM05VUkNPYUV6VHQzLzFTR0dzY0JY?=
 =?utf-8?B?Y1pJdHRFbW9QVk5XNmxVSCs1QlN4N2lIdzJudEtJRXdJczRWVmpVU3hUZTBM?=
 =?utf-8?B?RGdqZjU5UHdRNUpKSDdSdHpHSWVwU2xiN1NCeFhNS0hzU21vQkFCdC9VajlS?=
 =?utf-8?B?Q3dNMW5ORllGb3VlQXlzMjhoM3E3cW5ib0lwbzdKNDAvK0w1ajVTOG5sbDl6?=
 =?utf-8?B?MVVpVmM3MVpwVWlxV1JQV3pWSHlBQ1p6NUZ5cUpnQmNaWFJFdmZURkJJY0Ja?=
 =?utf-8?B?RUJVaHc5SUdNQmFhUEVPOWxzRFZIOEZLcmJnZEZpODFaZk11M1pxSE5jYUNC?=
 =?utf-8?B?WFZ3bytmUDF0VUlaWXVlaU5DL25qRFVLbUwwTEtkZDlVQlhQb3lMT2Z1RWJa?=
 =?utf-8?B?bS8vcFBodUJ0dHlNUHFObm45UWJmVWlKS2taOWdybnNzb1dza1RyZlpiRUpp?=
 =?utf-8?B?U3p2RSt4czNPOWkxTVFJWXFMYVJZaE9NWUdWcTJieDZqNEVsRS8zZ0IvTDJa?=
 =?utf-8?B?TjlvZXFNVkNiaUplaEZSc1h2ekhPbEZuQjhxaVRDUC9qUFlHOHlnam4yVE92?=
 =?utf-8?B?S3JPRjI3RER3MUpHNDFLWFJwbjBLVWF1R0lFQ3ZPWFpmSjBvaXA4Nnc5Znlr?=
 =?utf-8?B?ai96eTgra0xDOUREamUzNWZyM2laaThBWkNSVXYrNzNVdjYvL1B3cy9lNGc2?=
 =?utf-8?B?aE9mL2kzc3FWZDRLazJORk94VTM0RE5yZm92K1UwOUxwSVZLWmI3SE8yTk1T?=
 =?utf-8?B?YlBSRHF4YXhIQUdjVFRST1ZDVTFYTzluNHd4eU0zTjRiUHBJcTcrWTJSQ3Az?=
 =?utf-8?B?eXZRdFUrUVF2a3hHdk5JNC9EWU1uRlpWeUJzUHJMVmoySnp1SnhOYnFibWd5?=
 =?utf-8?B?VXZQaTlscXhZMmlXSWpQMFJoMXYwMkJFdk5qRVo2b0tvV0h1aHhRanRxakpj?=
 =?utf-8?B?c1dQT2dkem9jVUdXMTFmSWhoRnluWVFkb3RDdFE2N2dxaUNzcmU2NHpxSTBH?=
 =?utf-8?B?VXpDdHNLYWVjUGROL0liQW9CZGNIbTVFakVHWmQ0U3o2dkljRFREc0dOUnY0?=
 =?utf-8?B?cE1maVNOcFpZWFRQWDAzZEpNR2I1bHE4WE5PRWFxUDhCWCtKVUl5RGkxbG5I?=
 =?utf-8?B?WlZ0S2ZPRFFQZWZmQnJqZUdyc1poeTRLWDhEK1JKKzl0dEdyVTBrSWJlcitE?=
 =?utf-8?B?c05ITm5HN2t2RHhjczhCbGJhNUdTRkQ0Wjd0VktGV0FYTmxROFFHZTF4ZjhO?=
 =?utf-8?B?SzRqRmIrT09JeVlRY0U0Q0hHaWtCSEd1Z0JzKzAxRTkzTmZSTUhoVEw3dXdp?=
 =?utf-8?B?aHhoQnBDd1RkRkZuTXUrU1dndzFuaXZHZWtOeVMrc3JoNjhlN0NzQ3VEQlB1?=
 =?utf-8?B?ZmEzYVVnbnV2c2dDTkpKUGZzaFVYZCtjQW1nZ3F2VEpOWU5ZMlVYc0N4NmJJ?=
 =?utf-8?B?c01JbWt2aXVvSktWelBIL1ZpbWFUazA5bVRLZWkzUzhyU2tFaTgrbFUwSnRM?=
 =?utf-8?B?SGl0OFlWOVBLSkMxdGR5anl6S1ZnckJselpsZnk1eUtEbXNOL0RoaW5PQjdo?=
 =?utf-8?B?RWlUdmN6cUt0TnNDUWFKR0h0aHdFMjdkNEgvZnVhemM4emRrMFViYWtiMjdM?=
 =?utf-8?B?MUNvckY1OHJ3ZTYzSExhdz09?=
Content-ID: <9E89CBA154D39A4895C1C5CE9D6F2C06@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: de8b3cee-77e7-48bb-8201-08d932a3452a
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2021 21:51:46.9878 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cUjqfTvGzRQjU24KNv8zmOpFkx9ZzR/BM4KiJqHYtAiZpOwPM9yHGW5cXFjQXO5qLQrgpn9Y2F1wYfDplbnOb/JYjR2zG7WBmzE2E353Now=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2749
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v3 0/3] iavf: Fix init and
 watchdog state machines
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 2021-06-18 at 11:27 +0200, Stefan Assmann wrote:
> On 2021-06-18 11:03, Mateusz Palczewski wrote:
> > Use single state machine for driver initialization
> > and for service initialized driver. The init state
> > machine implemented in init_task() is merged
> > into the watchdog_task(). The init_task() function
> > is removed.
> 
> Since this is code refactoring I think this should be applied via
> net-next.

I agree with Stefan. This seems like a better fit for net-next unless
you have a specific bug/issue you are resolving. If so, please include
that in the descriptions and put the fix in net patches with refactors
in net-next patches.

Also, are you using the correct tree and branch? Rebasing before you
send these? This does not apply to either tree (net-queue or next-
queue).

> > ---
> > v3: Added new file to patch series
> 
> Thanks for splitting the patches up!
> 
>   Stefan
> 
> > v2: Splitted the patch into 2 to make them smaller
> > ---
> > 
> > Jan Sokolowski (3):
> >   iavf: Refactor iavf state machine tracking
> >   iavf: Add __IAVF_INIT_FAILED state
> >   iavf: Fix init and watchdog state machines
> > 
> >  drivers/net/ethernet/intel/iavf/iavf.h        |  12 +-
> >  drivers/net/ethernet/intel/iavf/iavf_main.c   | 188 +++++++++-----
> > ----
> >  .../net/ethernet/intel/iavf/iavf_virtchnl.c   |   2 +-
> >  3 files changed, 103 insertions(+), 99 deletions(-)
> > 
> > -- 
> > 2.27.0
> > 
> > _______________________________________________
> > Intel-wired-lan mailing list
> > Intel-wired-lan@osuosl.org
> > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
> > 
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
