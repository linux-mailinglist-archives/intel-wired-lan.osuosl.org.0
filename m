Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D60473ABF53
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Jun 2021 01:26:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 058D4415B8;
	Thu, 17 Jun 2021 23:26:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ex1tlzWObzFg; Thu, 17 Jun 2021 23:26:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B50AD41596;
	Thu, 17 Jun 2021 23:25:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5B37E1BF2FD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jun 2021 23:25:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 49BF283CE0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jun 2021 23:25:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Qd3tOvqb7o4P for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Jun 2021 23:25:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F01DF83CDF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jun 2021 23:25:52 +0000 (UTC)
IronPort-SDR: aff2qX+4pK0C4fpBJ8dAjrkLswNWu3IUTDKUUM2dYatNyCQT7jP3oWLbMUT8PEaPjKv+m/LhQF
 JsoiFeiZg1NQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10018"; a="186159444"
X-IronPort-AV: E=Sophos;i="5.83,281,1616482800"; d="scan'208";a="186159444"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2021 16:25:51 -0700
IronPort-SDR: WQbc5b87tfxBZq60ZB7AvGHBh+KgOWfyQMutlMukv8R11WMRdusDUPWYmjxNm9vnhdDsPW6w0T
 QzfOTp6fnznA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,281,1616482800"; d="scan'208";a="485461551"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP; 17 Jun 2021 16:25:51 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 17 Jun 2021 16:25:51 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 17 Jun 2021 16:25:50 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Thu, 17 Jun 2021 16:25:50 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Thu, 17 Jun 2021 16:25:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fFNRDFaSGq+oaD7L7Lfnv+SAxQdrqH19wUjECIGH+j1nfqoXqq5VbzakaFAadO3InmEXPnvlEjhNHYPxh6kiLqB64LZD6+EBcNyZr8zRHSPtgWNe2QtCTgF5u6OY8Aa16Z7bfeD0ph3STuYYNTcRV4VtxV5lPJqtx+I/QeUsItcXTdHyeF1ntVm29xqHfLpKloGALRchaydjcopOY0nPOxSKUaipi5zDOIyqzOtIIQd5ezHFHSRn+HisgvrAb526NDeLz3wN/csQEQpB/yXdkQZizn+Eb8BjmeCd7fA9Rv5esLm2Wrbk72+Q3jH1JVQbQgMEPVVUAa/Ln1SozN5Vrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9aJJJFY9xOlkehEktdL9wT3UNN4IMh3OLzaQ9ZDWF8k=;
 b=Ih5c7062a0ZmgwhZPt91sCMJjfeE1xtL0WF/u+Xtq2VV8xUabLEr8f/QnBvozaekMLIAlGHp5Xnz8Vs6EkL3w7Dycz3c7WcB+6Ajvh8j+Jz96xT59PA+dBRSQG5AZNLHE3UAynMkXy0l/Lkosd80GY0d8WE4JR1/0oTqbYUcnSL3nUfeIynS+7f1ND5DAp6fzkKbrYWSwoDCLydyq/OLMbDR+YKvFpj3VCpFsraSA1phVy24PWCkVIffqbe/k/KC8q2VL6VY93Mkv189HZsWi2xb0EplPPymdlYwncmh7cWKllUfIzEe+UtTl/eKi7J5XB6L9rU1ZiNvfjE+kALZGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9aJJJFY9xOlkehEktdL9wT3UNN4IMh3OLzaQ9ZDWF8k=;
 b=mJoTdFQaQ2hdb9zdYR4ipl5fOMaE0hv6Ym+a5xIuF3zT8+19ncfZNFJ8aTIrXO1dwnfRuSGc+703d6AyBv+mJGwgcS2cQoPDBqBe/TxqqV7HVv55HrJosQjH/9M0ISNAf06L8UpHNgcTYeVQBnQ7t4+p4anwXnsFEGhnd6oY8R8=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA0PR11MB4528.namprd11.prod.outlook.com (2603:10b6:806:99::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.21; Thu, 17 Jun
 2021 23:25:47 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::15ab:e6bc:fd6e:2a1]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::15ab:e6bc:fd6e:2a1%5]) with mapi id 15.20.4242.021; Thu, 17 Jun 2021
 23:25:47 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "davem@davemloft.net" <davem@davemloft.net>, "trix@redhat.com"
 <trix@redhat.com>, "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "kuba@kernel.org" <kuba@kernel.org>
Thread-Topic: [PATCH] ice: change return type of ice_ptp_request_ts() to s8
Thread-Index: AQHXY8NeUXl1lFFg6kiroZKVr0i9WqsY2XOA
Date: Thu, 17 Jun 2021 23:25:47 +0000
Message-ID: <c968aedc8f5adf398068293f6f75fcb1a701c597.camel@intel.com>
References: <20210617215419.3502075-1-trix@redhat.com>
In-Reply-To: <20210617215419.3502075-1-trix@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5 (3.36.5-2.fc32) 
authentication-results: davemloft.net; dkim=none (message not signed)
 header.d=none;davemloft.net; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.219]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2b74de19-60b6-4530-9503-08d931e73cc7
x-ms-traffictypediagnostic: SA0PR11MB4528:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA0PR11MB4528107143F41AC78D86FBA9C60E9@SA0PR11MB4528.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1468;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4TLYPtJKlSI++HGe5xftMO1bpJRsIWW8SIFmzrP6kyAriBciIedkl90Bcr3ihhqiI5wJxw0IQOcKcoRRyTcnzNmFLZBZJ+7ZNJFQvhmmyrlOmkg44OeT29oMIb2xlkNmSDX6A43eAC5lizHJHwbbNpD0EOqWFwDwwcPJx0sJcp2KHlot0HIT07xeaCA6av1ZrnadWuvD3AFijlJO5IPlwkhK3RyFXVuOor7JGuqEQJPP4WIievsnueOUoEAt39gzv4MViZnY3lfP4dOxDr/u69Cu4SjQxK5YZ/o/DSU1kcOxKimLdjZab4I7ROlY/Yd5sS3qdLE8RPUCWOFHr/eL6WQCn4mjLPHzUILmd2SKQ+kehK07s1g0lfcgE0EaAOx1tYtXdFrmU2HBAAZqJf7FLS/olgP/zs7e5S5+M4BdXCgPBMK5UZ9xv/27EuQ82+vy6u08yRFlUDNAShhE2JYjeVDhGqn9xUbPE08v+tMvz3qkkfqGm+OYXQhRVyhTyikZ+p8/ei7InZT+B3UOV0gLaR7cIfMckjYBFLU2mUTAavGD5EEZVGr6IFSfsHM6SwDwfS85IrR/osTwGorHWKvJV+l4Bpf0zrsn9xUa6rBWRabkryZxuya4FOpg1iSrCeFpVARpMDbF/zViCbKn7rc+LZjQZqtC7OFchzSTRhG7A9LGIMiIGM7UTKlOfVwr6ySCe73XywxbPejbiWEQRUyjzuuWE9DXOjE2h6Hq+O7zOfw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(366004)(376002)(346002)(39860400002)(396003)(966005)(38100700002)(6506007)(122000001)(76116006)(478600001)(91956017)(54906003)(64756008)(83380400001)(2906002)(6486002)(66476007)(71200400001)(4326008)(36756003)(186003)(26005)(66946007)(8676002)(66446008)(4744005)(316002)(66556008)(6512007)(110136005)(86362001)(5660300002)(2616005)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TkVrRTd6bmRTUGxpU2Q4ZFUyaW5tMGlFc2s1dkNaM2tYMkdNUXlFRVUwenp3?=
 =?utf-8?B?SUhhYlFINkUxNFhZVEFzMWpKajQ4Q1RkSG9KN1FxNXI0L3RFaHYvdnpMUkZv?=
 =?utf-8?B?TkI2LzVZOG0yZXRqMThNMDBlWFZXUC9udHJwSE9GLzBBOHVXc1pwQnlnSzB1?=
 =?utf-8?B?a0ZacFhwUHhxR0RxNitBOTFUU09oTVlUSjhRRnIyaGNWZVE1WW5uTzl4dWlQ?=
 =?utf-8?B?VWExMWl3N0dxMzc1U1J3Q28rMGI2YUovOFVuRUE3ZGdPQTNDQVFvREpNMXdM?=
 =?utf-8?B?Si8wdkhuNGMxVDlsWno3MERVVCtoUVJjRWtuRTFVcGZkb1dFaUNTdnJJdG9R?=
 =?utf-8?B?V1NSU20wVTk0RUpwWVdudXFLUVpmQ1VTVXR4allyN3VtZHdxSDh5ZGdYc2t0?=
 =?utf-8?B?L2NrVjUxQmUzU20zZlgzWjdJM2FPaS9HR1RadVBKdTFteTVLMHo3WVQ5RDl2?=
 =?utf-8?B?K204azZSVTNJb3A2enRRTlRqcVRMVm54QjFPYWdqMUxBbEFBQ0hqNUpkSFZM?=
 =?utf-8?B?dEpyUm1NakVqRlJjalVKUVZsR2tNeERPRzJ4b3ZxbnRDR1lhRmpZMEUwanpq?=
 =?utf-8?B?dmtjVnpzL2pqamVoclRGbEd0WEhyZzBpc3M3eXlXcGVycGlnbEI3eEEyRlla?=
 =?utf-8?B?VXk5aUFaNkdrSkZoWm1DK2JjSVNNcnhTMEhqR3E1YkI2QzcrWmd5K3VjYTBn?=
 =?utf-8?B?bm9hOEV2KytNWEtIbUxRUnpDY2JFMFdYS3J2R0hDbmY2QVFqcTA3YWhlRjZ1?=
 =?utf-8?B?TzBaL21ZUzJVMXU3cmRTTVZHR1JxS0FOcmQyZHQzWUZicmZaN25vdkVSdXdG?=
 =?utf-8?B?bXFkVmE5L094M240dC9VbWRITllZdmx1L2l0aXEzUnlhZDVhc0hGL1ZOcmt4?=
 =?utf-8?B?ajFxeFE3TERMTUQ2SEpUYnpHL0JrS0FTcno4TzkxdzVnd0plUlFqaUFTeFFD?=
 =?utf-8?B?QW9RQnhTc1dnbDdBZTFMMWVXMGZvVXVZVzhaQkQ4c09rN2h1SlozMWkvNFlm?=
 =?utf-8?B?S25maFhDdUdsUFlmcDBmZFphNEw2aUg0clFicEZKamUyYVhVOHpuUkhYbVFi?=
 =?utf-8?B?aUhFZDZIS3p2ZTZjNGJoVTR6SFpGQmJLbi9DRTVTWko4dWRlWVVIZTJsZDYv?=
 =?utf-8?B?eldWMEFNOTl4S1RPTWNHdDhmQkxyVytsaFZEc3h5a2Nuc29zNGIvZHZnVjk2?=
 =?utf-8?B?ZFNzNHptaDE4Ym90T1cvemtQdE5vNExhMXJ4M3IzOUVKaFlpY0w1OW5VR2pp?=
 =?utf-8?B?WHl0ZXZTOXYycFRYTUo4S01pYStORVZzVzdxSHFGZ2R4cWxkaW51UVNkWnRJ?=
 =?utf-8?B?SnVhNWlpVExrMlZKRmRzTmk4MHVGOHp5aVVXQ2g0M3AxWUdtSzdqQ0xPVzlX?=
 =?utf-8?B?cUI0eFdVTUtBeC9CaWYzVGRlZFBvTzY3bnBQQVRUcDhkb0JXamd6N3VpRlox?=
 =?utf-8?B?bXZTd1ZHM0JxYW9RcHBZb3BmblBST3FjOVFqMDZ1djB6S05RUmo2TjV5QnRs?=
 =?utf-8?B?YXRvdWU5dVpHNU5QanBUODJUWVFqRUVOOWh2QW1XMjVWblNSd0RaREdrb3V5?=
 =?utf-8?B?WVptWENHdzZlM09nMUtEcTdmQklaWHorS0dXSUwwSmFnL3cxdyt1Y21pWWdU?=
 =?utf-8?B?MzNFT3BnSzZmZjNVWUVRSTdWYXJRVTFhTm5vUlpINE40aXM5T3prMjNtaEV4?=
 =?utf-8?B?SHFWcDFSakhTNjhFcDhBbkhDRmFydkdVNnFmcyt4eU5yZFZ1NkJsUEI2SWRO?=
 =?utf-8?B?cisvbEtRUFZkRGdQNmFMbkZ2Nm0xUmhWRGpnNC9pb2JmTU50clJpNiswSHFM?=
 =?utf-8?B?czZmZG9jQVh2Qk5HbXErZz09?=
Content-ID: <9F0BD210D1A48B4FB98F0E1BB30C9DC6@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b74de19-60b6-4530-9503-08d931e73cc7
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2021 23:25:47.3786 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eq5B6ZukzfSsDFjVPU8OUkYHW8ldNZnRt5v+yfjXZBwH5jdQzsHV2BOUe6OsbBI6XUzHcnyKl2hzTLZSZ0cHo9DROdH/u7htWvtzOtsMcok=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4528
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH] ice: change return type of
 ice_ptp_request_ts() to s8
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 2021-06-17 at 14:54 -0700, trix@redhat.com wrote:
> From: Tom Rix <trix@redhat.com>
> 
> A gcc 10.3.1 compile error
> ice_ptp.h:149:1: error: return type defaults to
>   'int' [-Werror=return-type]
>   149 | ice_ptp_request_ts(struct ice_ptp_tx *tx, ...
>       | ^~~~~~~~~~~~~~~~~~
> 
> This stub's return needs to match the decl for
> CONFIG_PTP_I588_CLOCK, which matches its use in
> ice_txrt.c
> 
> Change the implicit int return to s8.
> 
> Signed-off-by: Tom Rix <trix@redhat.com>
> ---

Thanks for the patch Tom, but Lorenzo recently had the fix accepted for
this[1].

- Tony

[1] https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net-
next.git/commit/?id=4d7f75fe8006a1345e6a52b3e3a4c82633f20564

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
