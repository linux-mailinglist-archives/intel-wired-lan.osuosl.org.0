Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F18047CBC5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Dec 2021 04:45:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 18FEF40338;
	Wed, 22 Dec 2021 03:45:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hhGLU2T93mBh; Wed, 22 Dec 2021 03:45:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C4EF640210;
	Wed, 22 Dec 2021 03:45:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 60AD11BF343
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Dec 2021 03:45:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3D34441598
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Dec 2021 03:45:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B3RTVvtGSy3T for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Dec 2021 03:45:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 81EEC4148B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Dec 2021 03:45:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640144711; x=1671680711;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=saIcUe//lCU1D3gNelxnFcf14O73ngBeHUvXZ7TwtT4=;
 b=S5bUAoIZJqCy2XkEpJK/tXj94EYgF3yJX2nJOgcUAWAgHcgFtAZW5yMC
 VnMjcu+JoSbC3sMbRsXubJ8ULkxDmK/tQNv7ekWD+swsdi80cSd0Wa6hR
 VDin5cvDgkyN4Fe5K16Y9dcByG7t4BXujhCf7MtWyJFWgQ0R9A9JI1MJJ
 7EU7AQ0KQnsELN8QEmFEg6hLGRQz6pnA/WMb8Q2QDCBHYXVkXJVPawE1L
 AqAiCjavy2RHMiBgyIaoIVjYNjvtN4huCnPp90a7bar4GUL3NK+TOwqKX
 5LZvdRTcdvreoccpWMT9lkguoMifAZXTfbng3lgX3OixrXeEvRIggpbcx A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10205"; a="239289549"
X-IronPort-AV: E=Sophos;i="5.88,224,1635231600"; d="scan'208";a="239289549"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2021 19:45:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,224,1635231600"; d="scan'208";a="521514438"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 21 Dec 2021 19:45:10 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 21 Dec 2021 19:45:09 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 21 Dec 2021 19:45:09 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 21 Dec 2021 19:45:09 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 21 Dec 2021 19:45:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JRxT0g96I8fNdmT5hXIEqZQMpH9Pvvsus7pdZm2CTFEQpqid9prQu/x31Xz4EuyzEbt66DKNA72BmfQp9iupfZZ1YJ9yXmdATsP5PayFnXkanbE28EaoTUaQVaM2568Ehaoxb/BtLofRogfetMDkazZnr0EbDGqO/+P4geO3rb0Wqem1lCv37DOmpVRsMLan44Gt8wIwqP/a7wnWPxbEGFwsDLB5uY/GV5FK3PlbWxwkJyojz3qZk60fEzmSw2vbOEamGgO+AOMWn3KRLFlnNtGWvOSYeUq3K2OiW7hafH/2kOCR43BUQDxepnUCsIdZ5ppSBB4y6NNs0Pg3M4TY8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JqP6P9yWEt21CWfKUgQWy4U02ScmywNzQXlbg+zRfCU=;
 b=jSCRGl9Sx/rseCcr92rZpKDvxlJzuyYB/HQHceJuy9H/FpntIMew4FoT7n4Qy0r8ZKdmFV0z5l5j2kiL3Bet6wr1r23hXf+fBzxmPBtAczs3S8QJYd28DHWxieSlbj4a8IHWxCkk7EEwe0E5WJf3WzRFfWjsosxgLqYhNWDyQ7J4dwqA7sK+lXzl+8wcL/aCr39Qh0qD+k5zWuMoZ8hihkfVtXDQ2aBRn2hhgGK8yEmK/zLPL00elO+djh9FzHlx8p+Pfi7PA+M8qW21aklfr+UF57V9S39n4FPde92C0taSRMwTqfXli5Hfg1e8A4eaAgg4JDfnGsUccIqdzVJoTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BY5PR11MB4133.namprd11.prod.outlook.com (2603:10b6:a03:18f::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4801.17; Wed, 22 Dec
 2021 03:45:07 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::bc02:db0b:b6b9:4b81]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::bc02:db0b:b6b9:4b81%5]) with mapi id 15.20.4801.020; Wed, 22 Dec 2021
 03:45:07 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Lobakin, Alexandr" <alexandr.lobakin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 6/9] igb: switch to
 napi_build_skb()
Thread-Index: AQHX4I+aMaLdP+/JLEujuufZFkeKvKw+C0Jg
Date: Wed, 22 Dec 2021 03:45:07 +0000
Message-ID: <BYAPR11MB3367C988566786D2DEBC4A90FC7D9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20211123171840.157471-1-alexandr.lobakin@intel.com>
 <20211123171840.157471-7-alexandr.lobakin@intel.com>
In-Reply-To: <20211123171840.157471-7-alexandr.lobakin@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cdff7033-a282-405b-f0de-08d9c4fd7295
x-ms-traffictypediagnostic: BY5PR11MB4133:EE_
x-microsoft-antispam-prvs: <BY5PR11MB413324918D9CBDF7253C660AFC7D9@BY5PR11MB4133.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mOJHucdHQX+0t0gzuWYUZzZ4V7jSnQoTHSkZ39ZoS1SgIO0r2j8HVo2l9tBvPyyg+5QwmuPcSF8/oSsPmvt6VCiQn24lAFUeIo2mPsb8wWg4SHywpln3Y86mHoYCM7OrTJZWl6PrVSlNuu9iLNpwZSG78IkgIumOo2+I1AlMMvQ19742Fv+aVaKXCs61TqmiCspx3TMHfw/Y67sgCfyEt8LJH8pkk5wTIVR0g/VVRkx7t0dD0NQhKi2sQqi8aWdzoo44oro+AcA5uOsFjvMt48XjXZxQuN3/MHaGaXtRZlOgbPozZogFSCjEkD7cCGi21gP7RQoMoCC676FYPR4bVPJ8Z7ON8AkgKAXcRe73Les948ZEoKZbVk9EESVn4IY+MLPo7XIQBjsAWM+oFIpwMS1+TTo5vJJaSk3ZFh1C9QYo77ik/neid9lBX8YxUb8Jy+WPdYtkb2J3gC75yzLsELcY71c6/CYwRszPqsJrG17gErM9SBUBU6lOWn/EMqAhxSJEJDQMFE5wI8v/aXVsjLrBYDSrq7V+UjKQ7cOcrGzDynx23jOpKPyVuVMARWALeG7P7p0WHZg6WQeUqyMob6VqIyaoSlbGBBoq78PCc2QoW70m/e0hOpRpz9Ije/UtFYK581pqvdXa3V8IGnW80vA7+1YRdq03pe+8U4JNrhDFSAxaNFw75U7Ab0wtRiHjszPrNUDlzJX98j9tR/sTTA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(33656002)(316002)(52536014)(66946007)(76116006)(6506007)(66476007)(53546011)(8676002)(64756008)(5660300002)(110136005)(4326008)(7696005)(38070700005)(66446008)(55016003)(9686003)(86362001)(38100700002)(186003)(71200400001)(83380400001)(2906002)(122000001)(82960400001)(8936002)(508600001)(66556008)(54906003)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?sB1u+eotdvUi+Wr8bn5evjtGP45PWrP+YA+TJLMbbkox2Y2kqi5nCb6uf9D8?=
 =?us-ascii?Q?rYscHeg6JcpUPoXatpI0R6sDtLoOuIdsyMlmGugyU+/EGcO4aYU5M8idANg3?=
 =?us-ascii?Q?FQj4HT5l/K4QNTghCfwKYLqeQ9sB477l1FcT5NrVa2Hf3gr+Juzs/vMcqr3/?=
 =?us-ascii?Q?cqe6lfWI3ZxkybQPdjr1oRsjzprAooWP+aGpiL4s9Kop/13h/AMH6P6HX/JU?=
 =?us-ascii?Q?fd2U5IWCanZh6Uls4ckOc0xj38PZjQLTs/CfVemay7FnZEx03dZNniWIqBJ6?=
 =?us-ascii?Q?NIjbD9LmWSO79tpoQ4R1UmJYC8gGJy3BWv4+MzBS89ARDYRydzwAlc88uWEo?=
 =?us-ascii?Q?C3QXBWKCMC93JFpe0BoWF8T682yGgC07jELvA2Pt5szt9UyRBoFFh52QPBwZ?=
 =?us-ascii?Q?C811VbUXpsroUSKrqI07vkbW7Ng7/vlsJhd7Eo/eqKYFMkr1xzLihJiFgygW?=
 =?us-ascii?Q?WNOqtwwxaQVz5KtnTcNf2McDjMx8SeO7gF/jYNFEzFJIvF6CwUwtq1ivmkQ1?=
 =?us-ascii?Q?R3EE3kghotQava2FJf/Xh6WY97DpxxGWhE6VjkfpZa0JYZ9eMu9cG+VsKj2x?=
 =?us-ascii?Q?9Zzblvq4L3qqDlJgdm4rbTP/YrJvwdKAQfQc9oBl2ExFfb3wFFGo7gCQk1qi?=
 =?us-ascii?Q?PnMpj08KzKOSXuDxwnxjXyePs9PGEOfgB8fX3tctO3zJFsaeK34bQK1BO4Vc?=
 =?us-ascii?Q?ea8szdMXyAPo7EXlJFZ8Rp/G2Lr242WwBBdTBIzXsB4Jq0++uFIc7GTcIk4y?=
 =?us-ascii?Q?kXKoSj5IP9RcxV6gkwDeGECDXzIbs2r1EilTLsy8CS0Fw8vbmCZwAQP06xKn?=
 =?us-ascii?Q?DRlzdVE1KnsNI+lS0Zlw615wHEgaQxuSyRUFAIBhDgh7uQVNwFp3tVQnvmds?=
 =?us-ascii?Q?l5H/bWhFYEmwxX66tIlIBiPLSzVRKggkfeQWjK5tyy8wELotCqEfl8Ow3TAs?=
 =?us-ascii?Q?QrDSoYuJmji34CFLh5DvZLuLHmmKN/xehHq4Al7LA8XtRIrfS9y3jp6ncAMA?=
 =?us-ascii?Q?dsNtlqzmO8GWoBeqLfYCmPKADb7DiMwMlcTd3SU2WOQwavZ0sc+g6SYpCrhf?=
 =?us-ascii?Q?1zjdRAKXjThmTChDLzGBRiQpYCLGbOTLk47q3h24HbMJ1ZweRLhV1hMuczjp?=
 =?us-ascii?Q?AYqNGX7pYeC6MNbiwRxOHHPlHo5sjQ6rjBskgHUPOJ6OSofPIuUnmbqN97QX?=
 =?us-ascii?Q?SLFyRs0kDW96c8l0Q5G+G99iUkyIXwhIF7/vb9/eJYrLkKt1B5NeG2vRuKKC?=
 =?us-ascii?Q?V3gpqtX0mC6faNpDpHitHC3wbsc4cl9P8Lq2j+r4M3mUEDMcbi3VRKY5Fis7?=
 =?us-ascii?Q?jNfYu91TDRsIOaMKBZTVRIuJGxHJrjynJlbMJNS4+2IUmpyx0GuVvL1P2Hra?=
 =?us-ascii?Q?XqfQMT1KfbsNEvQwNt/IgUwkHQKntYrkOjXLU7NS7XLRKsldfu41Ql2lWlXl?=
 =?us-ascii?Q?WsfSZcw7ZaillmAag9Yie8raTP6fqLmCIElnjFhGdPai3zIFtZZPSqIKVQSD?=
 =?us-ascii?Q?Hd1cPQeSdEb6tDAdgTzBl2tunEduatR6q4USTvqUtcCnCDaf0cbLp2saONLB?=
 =?us-ascii?Q?IlB8shqdguLCoPIyYr4SDgJA03oDFZVxIrqbVN/IBrmXrmFHHa5Oiqx1TcF5?=
 =?us-ascii?Q?Aw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cdff7033-a282-405b-f0de-08d9c4fd7295
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Dec 2021 03:45:07.7210 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: noCdBx37OqZ9xhuSobldcUCujD/fP4xa5H+EogFFNmmxVJz0JPWs+SNbwIU3ub3kYY0kZ0bSmRXAhDdUjGDomg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4133
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next 6/9] igb: switch to
 napi_build_skb()
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
 "David S. Miller" <davem@davemloft.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Alexander Lobakin
> Sent: Tuesday, November 23, 2021 10:49 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; linux-kernel@vger.kernel.org; Jakub Kicinski
> <kuba@kernel.org>; David S. Miller <davem@davemloft.net>
> Subject: [Intel-wired-lan] [PATCH net-next 6/9] igb: switch to napi_build_skb()
> 
> napi_build_skb() reuses per-cpu NAPI skbuff_head cache in order to save some
> cycles on freeing/allocating skbuff_heads on every new Rx or completed Tx.
> igb driver runs Tx completion polling cycle right before the Rx one and uses
> napi_consume_skb() to feed the cache with skbuff_heads of completed entries,
> so it's never empty and always warm at that moment. Switch to the
> napi_build_skb() to relax mm pressure on heavy Rx.
> 
> Signed-off-by: Alexander Lobakin <alexandr.lobakin@intel.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/igb/igb_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
