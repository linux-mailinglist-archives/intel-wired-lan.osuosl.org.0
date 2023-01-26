Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0852F67CED3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Jan 2023 15:49:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0D1D4419C5;
	Thu, 26 Jan 2023 14:49:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0D1D4419C5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674744543;
	bh=raP7dkZLjH9Wzp+fT3iIpCFvRhDAKS3J4VS5UeeyYDg=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=eagLs82cRh8ySQJx2HcdrVe0E6T6IP0HAFd2m72P6Z2+20Etxam9JQKxdkyzxDaRo
	 6PVmnNr4tGd4STqnCQ60WRmfUXawenuTV9Tz60c+KHFIuSvtIds4CdTnNHV3+uayB7
	 GsncnagtYcgH90uW+CzOA1tv9wo9CnA6pdEvLoUtWD5R0lOP0xrljKS+QTX0U7zWZa
	 dLANuBTq0rvaMahBZJMl2IOW5LpI6ULDm/pJy54Zhi8Nx2W7koEBSM2CKA2etHQXar
	 XBh4a+ciy1NIuQijn/tE5SQJpm/KPr7IdP0GyUP45FiwoLIyL6RTfQE4ogY7ZXDUw4
	 hEWAIisuL/RKg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J_rUSrHnNgdd; Thu, 26 Jan 2023 14:49:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A18064152D;
	Thu, 26 Jan 2023 14:49:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A18064152D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EFCE91BF30E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 14:48:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C760A415BD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 14:48:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C760A415BD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YguJ_VHma1Ip for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Jan 2023 14:48:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7C0304011C
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7C0304011C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 14:48:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="413055347"
X-IronPort-AV: E=Sophos;i="5.97,248,1669104000"; d="scan'208";a="413055347"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2023 06:48:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="656194544"
X-IronPort-AV: E=Sophos;i="5.97,248,1669104000"; d="scan'208";a="656194544"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 26 Jan 2023 06:48:50 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 26 Jan 2023 06:48:50 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 26 Jan 2023 06:48:50 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 26 Jan 2023 06:48:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NQvE38QEwliRAvXK4UQHGZQWnqOJewrw23VEVAo9BidwhadzFOBKKja51ITx9zgJ1lWkfsnU2wFERz1plKCFvHNRqnO3TxJGFuRW/ffscdb0Qcx2UTbuswSuaGBP2JZP6d8Lc6EwmzHIf4SZZZ0BLBoewIYvN1chfcldmXOBKRKwSCuEOfNgifcd4EGC5vnQZ3VxptTqa+ZlDuNi9is0bkBM510pE33ZZRBXB+yRrTCzRJyI+oq5StLYSHYPpidjabyW8Eb2w6ZrEatJOMNXM5781pInFA2DBsOSZlFU/DaksyTs2cS3fDNwlgrVsTAt+nbcRZhg9qzl3s4SAKZl3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HwpmZz55tVS3hkHbDz51HV0BiwDJrcEP3QlORbHzKD4=;
 b=cSoFIe7JiwcFA9SOFKIHBkxC9W+A0XIFxhhlAtaKER5XxEfF5UL0SSD3CkPLQVsw6pAfhv+kV8nA6X7slh/eXXFZWtx1QdXgCOGnQGjdMrRorgOC7IRHah9M2JTKlV9YExlh9l92ahbZKIcI5DMi52kQV22COdzYU56tn0PWLkzrvrl92P9952jOugl/kwjhZqciM7CZvpOBxRmMs5I+oxMnYT/4RkXey7D4PvXBHUPJ9ps8Hj5bZLpTm21egK2lDcgPnN+zPyt4F5sRzkTQiQ1hEDYPj4b0bvvYt4xtzWRyemfSw8vkFjMd3EQhCijaGk/T9yzdRg2Sfsv0ZJbZDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7364.namprd11.prod.outlook.com (2603:10b6:930:87::14)
 by IA0PR11MB7380.namprd11.prod.outlook.com (2603:10b6:208:430::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.33; Thu, 26 Jan
 2023 14:48:47 +0000
Received: from CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::d0ef:473c:502f:986e]) by CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::d0ef:473c:502f:986e%8]) with mapi id 15.20.6043.022; Thu, 26 Jan 2023
 14:48:47 +0000
From: "Szlosek, Marek" <marek.szlosek@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] ice: Fix disabling Rx VLAN
 filtering with port VLAN enabled
Thread-Index: AQHZJqL5H97DYVnBbEatsQp9tTknZ66w3RwQ
Date: Thu, 26 Jan 2023 14:48:47 +0000
Message-ID: <CY8PR11MB736477D47A954E79B164CB9AE6CF9@CY8PR11MB7364.namprd11.prod.outlook.com>
References: <20230112145434.770847-1-karen.ostrowska@intel.com>
In-Reply-To: <20230112145434.770847-1-karen.ostrowska@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7364:EE_|IA0PR11MB7380:EE_
x-ms-office365-filtering-correlation-id: a532649a-40d0-41e6-3e56-08daffac6e16
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: L54CO/RB20NFgojkwot+wK0Z+jceYK8YACpoC/+g3PJuaVyFYQVdXF6mdVz0Hfsba+Ge7q3CGrYYOuda694uvdYLw5Gf9jPlLIHSbQJtwLdnHjvPNt5lhAEx+00gvcTxA0h6XmBIS+FYp2BRegDqNUaBwmxQlhzmGaUtiiZ7lMBCh5JXF4EsBeh8Vib32XgB3HwljhqoLK4TbYUsEsvxsxKw4TKuudFwo1IMYSxBPtRGCs9AUtbZaiw9fpkjzAEc9DD0InwRFRvNEwOFHA0NexR4GYUoQMQEOJJwe8qNAqjSVSd89lu/HRLcGyGA9mpZUD52MCKun/1fI5SyK1sCDnjxgH6joECI9P2rWcpvY8K3yeiLa36oyq4mU6v6RptNMH+GDaoBoQ5kKB7AglnesvYAJqOJLd9uHaHctTxA/uMBbFgLyIjrB6UYje3RpO3wJqMnCe6ZYhCNzX2IPr14cxlCru4Q/Ub8kDbnscTs+S8JWPjwuf9wNlQTjPM/XSR4KE8okxLBFfuj4no0lpKuT+xApRlxvQXLkHDwX5Bixg6V3ya5Xvf426SUZ8jxXDC+8v2iEUnCZFB+2fvyntjTAwdvu2BradMnr5XLTVR81S0kZVNQgrFDg6TsakdQg3py6+bJplpcxuYa9vEi3qPJPbxCqFU3C376l6I38cII1DwWXTM0cj6sdaRTTVmPcZb7
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7364.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(136003)(366004)(376002)(39860400002)(396003)(451199018)(186003)(6916009)(71200400001)(66946007)(76116006)(66476007)(86362001)(64756008)(316002)(55016003)(66446008)(66556008)(53546011)(8676002)(6506007)(26005)(33656002)(7696005)(83380400001)(478600001)(82960400001)(9686003)(5660300002)(122000001)(38070700005)(2906002)(52536014)(41300700001)(38100700002)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/OAUojaU6g3zCqI0vM8kgCLPooFQCtzkTZlp9zp6BiO/iY4SvVRFCX10pchu?=
 =?us-ascii?Q?rJXTlt95jwchTTKdR99T15v0Rs8ciEDbxGYWuMsvmsq00kHXiLXT87ZuWvID?=
 =?us-ascii?Q?0M0uY6hnCedGkpZY6YURpxPzXIBoddSm2B0LtUiOuA9a46ma2c/8DxPq7Lkx?=
 =?us-ascii?Q?3oFgAazDIvawNyFqxm6SZ8tGnXOnTLFi9Lvj44Bl5Ux8+6+m0rekwQUg0wAT?=
 =?us-ascii?Q?A2Wq3o59vHyPZcJ+vNjeeAdNXZ47ixYCIGQtVY1jvTPAJPDoasf1XQRZtPxj?=
 =?us-ascii?Q?fVmLykusgiFuVCoDg0Jh6mqGZzXLbKtzF7NI8RKiAdVVAQ/c1DYXZnWJ5fYl?=
 =?us-ascii?Q?+LtHtZd4YXD3SvxsEJqQxtNbOSOfjMke/7gW/YrhPvIBEFxMXos4y/1jHJQk?=
 =?us-ascii?Q?mEkVfgi5hVm1luZ6Uv3IMvr027s44iPMzf7oLefq+ksmlo3hweXJI0A9BtTm?=
 =?us-ascii?Q?4FjRSnvoPlShHUvarbIrlK30RWEIeAnu4KdosUodsntJlwAV8OuuqWgJnDX9?=
 =?us-ascii?Q?OqjIvby/BZpom2L9artO1NVsZQVORWKoqPlMNcbrXN2KueHNMA5h+zEZVLG+?=
 =?us-ascii?Q?3jUMM0EzkozTly96YoUSnwrGU6AyFXRnDRxyyyFpQPtgk2Fpqeku8cNFSDig?=
 =?us-ascii?Q?bwkVwso7ISt2e38Fi1BXupE+CSy+ytnQYua2C+lhKWKg68nRClDoA4uJv9wA?=
 =?us-ascii?Q?RDtdI/RrxTMMJYwgC/zW/6WwitQw/1tOtxWN24O3dvVKeT4OkHGESiU5Dd5q?=
 =?us-ascii?Q?zUJJEzGuESHsmfMlgCy099WT25Ju2R0+MxuLNthBlQUScqHL0apIOsDzHbgo?=
 =?us-ascii?Q?ND5ND4Gdie4ywNG1fzMfVYoY1IEojVYhXWFZO8KCZXf5kMMmHwPg5xeA6aN3?=
 =?us-ascii?Q?x5/rPdA8E+xRHDpOiIsKga2C20YJQSJfbvBibZJ4ZCEbiz4Zf4ivzUEimHLH?=
 =?us-ascii?Q?zC762mmZMQAsm8W2NhcGdJmZtB+68t4jkAqXFY/R7rs6BdvTzyscEKl9FcEi?=
 =?us-ascii?Q?FQI6hNZ251D/MT/1XDlBsLI0vCv2ShqI0r29tX6xMgA99X1QIvoh6nX3eZVP?=
 =?us-ascii?Q?ZkU26HoBz7jhznble7MYNIA2OPz4GDD6KAAyzh8BigbfqNfAdbRDEEXprp6P?=
 =?us-ascii?Q?SWzN2BQeTuMbqHUGXGVdJwRCmjal1smjRx1Sbo//mktQlSEdhjSvKk0Nwx7u?=
 =?us-ascii?Q?A0BgfZPL8l+sQi7WmqtwCw7IDxnjS/mdaFNhxS4JeAQPBdF+hXyekITIpxYL?=
 =?us-ascii?Q?i9ul9I7Zwdg0795LmMxrj8XYl/OOv+yYwjcqg0EkpZs1S8ki8/t3osRghQA3?=
 =?us-ascii?Q?fsMQdZZP7PnnpkRd+hgECo+DAiGy8Oo2vjquW05Tsf4TLdLnU6OY9IBpxIbr?=
 =?us-ascii?Q?bZw36JxzohF70w4EB9BXl5r+jYp80vdU0u2xT5mgj+UTfdkV+a5VjhAEINf5?=
 =?us-ascii?Q?vT+xCZiXXYHugOInDNT7Wxp2HAWmVXgvqdeQI02ghXIn3d8cj5Sz1qP4Bd1g?=
 =?us-ascii?Q?rdQRiIwzG/O8xHxCKi6DQ25BH2+Ozn3+9FCeBGY1EFIC0Zt3c9CIv3L6fwuP?=
 =?us-ascii?Q?8BMDlny8wJKbRYv22aJap0OK7dtS6DAsM8bJVycn?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7364.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a532649a-40d0-41e6-3e56-08daffac6e16
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jan 2023 14:48:47.2443 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UHPjRhrXLZSQwseQYcI4vT39le2R+t7PUTtXPKW+k51l1STTE151sFjyEr2L8F3ytUZ2926cfFv/aO57WJeiGg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7380
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674744534; x=1706280534;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=YvRBGD2O5ySdaG8Z3Z3t91YilSv720qhCp8VGERIy/8=;
 b=ZiQ57cK/zoWEoErhEZ1ZujokKOfWEIq3vUPw9i3ZBtt7Vk1+P2OYVuj2
 /Q7aemZZpEIsru/iMugSsDFaq3u/pUXxdp3So/HaamD7bCgyGki20Y5Em
 7XdvLO+56YHfSF6aLvL/A49qGfykCbHJkjIzx8c0EHFLZvFp8+FQja33W
 gLL6vGlnew6rGHfs+7mi9QGe3d2o8pQ87flUlxHG0ntoWaoaH9JSpyJ/6
 tCNSsynBpw0CJu/iti+cdWo5QuzEQTdr7YT1yVvJtvcTTECARLW87312i
 0ePWDbIvRlm//EpTOd7Ms2GlxwMj6ZcLo2w7qf8Ix7QsK/ysvsX0Dgx1W
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZiQ57cK/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: Fix disabling Rx VLAN
 filtering with port VLAN enabled
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



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Karen Ostrowska
> Sent: czwartek, 12 stycznia 2023 15:55
> To: intel-wired-lan@lists.osuosl.org
> Cc: Ostrowska, Karen <karen.ostrowska@intel.com>; Brett Creeley
> <brett.creeley@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1] ice: Fix disabling Rx VLAN filtering
> with port VLAN enabled
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> If the user turns on the vf-true-promiscuous-support flag, then Rx VLAN
> filtering will be disabled if the VF requests to enable promiscuous mode.
> When the VF is in a port VLAN, this is the incorrect behavior because it will
> allow the VF to receive traffic outside of its port VLAN domain. Fortunately
> this only resulted in the VF(s) receiving broadcast traffic outside of the VLAN
> domain because all of the VLAN promiscuous rules are based on the port
> VLAN ID. Fix this by setting the .disable_rx_filtering VLAN op to a no-op when
> a port VLAN is enabled on the VF.
> 
> Also, make sure to make this fix for both Single VLAN Mode and Double VLAN
> Mode enabled devices.
> 
> Fixes: c31af68a1b94 ("ice: Add outer_vlan_ops and VSI specific VLAN ops
> implementations")
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> Signed-off-by: Karen Ostrowska <karen.ostrowska@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_vf_vsi_vlan_ops.c | 16 +++++++++++++++-
>  1 file changed, 15 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_vf_vsi_vlan_ops.c
> b/drivers/net/ethernet/intel/ice/ice_vf_vsi_vlan_ops.c
> index 5ecc0ee9a78e..b1ffb81893d4 100644
> --- a/drivers/net/ethernet/intel/ice/ice_vf_vsi_vlan_ops.c
> +++ b/drivers/net/ethernet/intel/ice/ice_vf_vsi_vlan_ops.c

Tested-by: Marek Szlosek <marek.szlosek@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
