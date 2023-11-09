Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E9197E7537
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Nov 2023 00:41:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5068942098;
	Thu,  9 Nov 2023 23:41:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5068942098
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699573295;
	bh=0cLGnNcMG1yeJFiy0tzkr3cBsfXsf8arlkRIB+tTvsA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=K6AAqV3FlUMiEymoXW3eq8ZFsbBwDriqKmXHNNAvj0fJBfeDdHNbbsH7Vd7QAK6n3
	 sxuoZTIm0WzV9LmSe15EEfjQ7ZeCGQPjlpi+bhEc8r70S7K3PjJcij5SsNtR3pG8PI
	 1bnGoSouyEG207ZATqNx1RMXoDOcKXom3qaUJ0ooHNpkPxiYzRgnNrudBofEft+XS3
	 hF9NmLiz1064xa3uG7SRK2Bratdh0hDh+dGQbZpB+vhzUABsjxe+HBExeKAtNer0uG
	 LDuoYHorQ0LF+CEbCohmXSV4MC4UiiFJ72CcnNmsnHk0YiNusWiCBMSx78HsGFBWsl
	 +HwluYqtgZiaA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GeFhlBWiB7I6; Thu,  9 Nov 2023 23:41:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1A64B42015;
	Thu,  9 Nov 2023 23:41:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1A64B42015
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7EDB81BF371
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Nov 2023 23:41:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 618E060D79
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Nov 2023 23:41:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 618E060D79
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ofZaKrRdHRcw for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Nov 2023 23:41:28 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3258E60D71
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Nov 2023 23:41:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3258E60D71
X-IronPort-AV: E=McAfee;i="6600,9927,10889"; a="389905528"
X-IronPort-AV: E=Sophos;i="6.03,290,1694761200"; d="scan'208";a="389905528"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2023 15:41:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10889"; a="739989471"
X-IronPort-AV: E=Sophos;i="6.03,290,1694761200"; d="scan'208";a="739989471"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Nov 2023 15:41:26 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 9 Nov 2023 15:41:26 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 9 Nov 2023 15:41:25 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 9 Nov 2023 15:41:25 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 9 Nov 2023 15:41:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LxutUOUg6V1VXBJ+HR+dZ3gyZJnCD/qNBqDF48unteA/RNSdWV0XbrqeFD9eATq71Yd290t0Nc3MDzL6FcDJLf15VZI5tDaqkMafpZQq7vnv+yQGwAY9jpTOutzIal5tDGsLw7OtIK6arbHNVGv+Uxsdgkcm87C1znqUtYfYtfZd8rE2DSexWY0Fqv3GRzIrTkQn9bpAgkrCBdzs8pYUGEbojE3n/fq/Yfa93eMS7rKKFG1HuTzkIOBYpsjh88XWP7cvZ2Y0FDK6zph1b7oZXcK+ybhbtzOhWrDl/e9HAkga0GAOyzzZhCwl+j/UCMNDU7pA7IcjegJrXhCZE3+IvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2EvVct9xVO2rvagrET5XzCWD3vtikDhjPK2bhrjmfCY=;
 b=gIVvRB5T5QCfcoJQQfHSM0hflpQMWL40Z+vUnrAxXAeKIEJV4cL8LaYqzI15ObNql2VFhT8dU33W1cCEA0mmvlRUSrp6mP/L3kVRJLyiIqoNBWT1P7C8XpbNaHTV2CsVC/+UgA/lRFPLOpjluBc8gBN3Qs9J5s5G+oE70j37EUjk9QN1QZvlGF1qnognNKga4tJCrLufjjDIwv1kpzYCGC4kG9J2xAeYOM5inuKOhIQUQraolD9SSNMm2dKWdKUiddVUZViTJW5eRIzQSnZT2oEwrL5ngc4gVXwmxdBNbVMXMn69KBsz6DP67fCD5tHEt/4uF4/ct+ESFVBlsQ1p5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5028.namprd11.prod.outlook.com (2603:10b6:303:9a::12)
 by IA1PR11MB7341.namprd11.prod.outlook.com (2603:10b6:208:426::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.28; Thu, 9 Nov
 2023 23:41:23 +0000
Received: from CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::57c9:d0e:9f47:4c63]) by CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::57c9:d0e:9f47:4c63%4]) with mapi id 15.20.6954.029; Thu, 9 Nov 2023
 23:41:23 +0000
From: "Mekala, SunithaX D" <sunithax.d.mekala@intel.com>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] ice: dpll: fix output pin
 capabilities
Thread-Index: AQHaDB09rvYa2jqxtUKqmmDrP+lebbByrV7w
Date: Thu, 9 Nov 2023 23:41:23 +0000
Message-ID: <CO1PR11MB5028F733FF0E2CE387FE65F3A0AFA@CO1PR11MB5028.namprd11.prod.outlook.com>
References: <20231031170800.1115223-1-arkadiusz.kubalewski@intel.com>
In-Reply-To: <20231031170800.1115223-1-arkadiusz.kubalewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5028:EE_|IA1PR11MB7341:EE_
x-ms-office365-filtering-correlation-id: 15ed40a9-e56b-42e4-bef2-08dbe17d61f9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rWzKtBXhEHTNNMoV2coqriTgWZIwd1iGU56A+8qY2zC+UFCrXiq47EIf9s2iDUR/f9gYwFwBAp1ySx66Dx95XumZ53n07k+GEKKAHV1ueNisOAn3BrmZGocElXYVKJ/zc5kMgC+LvyYNSgF3jK0w4BLSL+PklQB1eC9uDEFRn9r1KFggy4zbEGgZZVHoUlpy0FALeqzsuLEPciJp9cYPjxpLXM3Lcmw4K+tN5jxuQGmsrJ7V0fJ6nm5FySIaKEB3iqo8ocOnBd1JpbTkkIpzH50OQhaJ0jpWULZbF5W0lzxAXAOUirUGme6OTxQAaI//nv3fQEPCYrBsu/HjbbzkV+pyfjjWl1PuzMTNBnRi+ZFSTIwJ1A5WRm64Q1wYAjay21rbOxdGP1IMIfzPkj763OvP0ztnwk9iktYNJFrfwV5yAwZOlIqxIuPW2w2XacwlX6E6CC/2AVsiIczxZPjXLqS6TbZDztthAMNKcfK4GAbE1dn+pP4hScbQONtzmy+zEIxq9nQpJx0exjDgE21Mebg07zk634GeXdqzfLbevmF0RHTkr6k0aBf8cOA1tB7vvMLRd8h1eNOoUGN4w0ieDxa3dO8bfLtfK/mLTgDA4DE36mZoe0QT4ZY8ATTolnZW
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5028.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(39860400002)(346002)(136003)(376002)(396003)(230922051799003)(186009)(1800799009)(451199024)(64100799003)(5660300002)(6506007)(9686003)(71200400001)(7696005)(107886003)(478600001)(53546011)(66476007)(26005)(110136005)(66946007)(41300700001)(83380400001)(66556008)(76116006)(2906002)(8676002)(8936002)(4326008)(52536014)(54906003)(64756008)(66446008)(316002)(38070700009)(38100700002)(33656002)(122000001)(82960400001)(86362001)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zxrHtS8+k3FUGRr6G2GCLRdLY5u4pL+jssqn+8raTNa3UHSoAGy9iHeVm4H4?=
 =?us-ascii?Q?fIRUxjSUc8iiphjFmPBgubXIXXp3n2kKeJgPLeFcssUL12Jx+rNnA2A7qT2+?=
 =?us-ascii?Q?zZB/apIjhYPnn48DzFtDEKWx+QcObr4tliLGWq8H1fe3OBy+sPDPb9/sCD0L?=
 =?us-ascii?Q?oGe/B1untcb88zum43CnJDtgVSqMvVB9z9sz7pU8aUiiT3uogyHqHUcqubH2?=
 =?us-ascii?Q?JWDolTlaklEghv/gSvuNdEKlXpK7ITSvKDhqi/dDZaHgfj9pn7whJi8pROzp?=
 =?us-ascii?Q?si3UmFlBILEQOgU4+bxJIuaYimgr1OmQHq2oYQiTCxSVQBKS3exZ/K78WEzR?=
 =?us-ascii?Q?nH3mjF5Gfn2mLrhxygD5KEWKUY+p96/ON8rAfyBDKOHOAdneG26k+wQxbKsW?=
 =?us-ascii?Q?MWPmhjTt04rc+eUQ2Vy83ZIiVbraBBjwzWtiA+xoULsZNR14tedu0ORsbN+z?=
 =?us-ascii?Q?rg4iX8z88FTXwlTJTBJoR+xMSX3klrbcROpS4hG6EFVoZ1v5FCwY4c7bkC8j?=
 =?us-ascii?Q?CnRrhUpQ0SYt60px2TzbIgUYegZjQL6wi7i8N2SFAPHeyJyqlPRX34XK0oJY?=
 =?us-ascii?Q?VN7SortW60uht2kHGha9VIEoqRu8TVZJOhI6OKZ0j+ASrfoF0wjfFQhMMCAT?=
 =?us-ascii?Q?Uq6IhfnS3oLkvQlltgLcsM4GYIW8XUuRILyTMNMCNKIoriP+t6ZVLY7NEB0A?=
 =?us-ascii?Q?rUeBObvpoWT8H/tWAug/1PSMd+U5UXtKimzXt49ydZyTqQtcKgx5P7c1/XLN?=
 =?us-ascii?Q?qtd0et4bP6L2hV1oE3u5h2iyilOJ8ls2V8O5wsS8zuwJM15L65+Ww0BQ6B0+?=
 =?us-ascii?Q?uzM7vHcDwlIl2n5ktB7sbWjyBKe6K4AkqQyx928n8V73kwp9bGVfhWC/xHKU?=
 =?us-ascii?Q?Z9ATZ8ysFqzxJBTDNgE5EayQzl9UTuYw5iu8DcNndGwp+p510N1Nzz8bSUPY?=
 =?us-ascii?Q?nT45+5jPPCUUqDFt1+xkC5Irf6rMBHepDB71ar+ZKV6M6vla42jUU+8yasFL?=
 =?us-ascii?Q?DWxLbGFw7IdzVsu61QgT9dfj3SYvA17HILIIyTV3O6DoFRwgkWnejWxsVqin?=
 =?us-ascii?Q?sFp7z1fxuM/Jo0bHejA/lcPPvsgrG77Gh8pkvW/Qpv+M9agbVWnbOE4tF72K?=
 =?us-ascii?Q?X04oXuC90RcmbFZK7uRDAj0v/ECnqKAFwCuDQqh83VR2di9FJOW347e4QrWB?=
 =?us-ascii?Q?/PtA3a81hYrZeCcBjXO1sqohx2+aNd2oKW2kBSfiFHTCQIrqKGYvQE8zFbXG?=
 =?us-ascii?Q?UOT1V2O3bDHgB2CIcbODejNdd0jKsnLmqxTDO6MTyKm/6eUhPvxI77kYtNl/?=
 =?us-ascii?Q?XfW5WVKdHF7hi+PH4oQ2+tb6WP4jPVNwUY7ze9GjObDR2MXczxIA0uRMFL/k?=
 =?us-ascii?Q?h2l1LB/bjQWnkYOGILaHqltZzoRSYksa7KyaGujU7KY4GBnutne8Kv53k6ov?=
 =?us-ascii?Q?J8SiUifCT+NKFYOenwc2ld6qb6uLReegByWd1Xo20uR7WxUdhntarkbm94aG?=
 =?us-ascii?Q?TOSxGn9zKwJ7SXy0owSBFNtZuhM+p/GqVRVEESt4mgBZMS9v8VFcAH9d+DKg?=
 =?us-ascii?Q?ax0ymfuIrYbzRgQt09UkfE5QLMc5KOW3Rc1v+hTI?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5028.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 15ed40a9-e56b-42e4-bef2-08dbe17d61f9
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Nov 2023 23:41:23.3427 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XHb9wslz1WK+VmIILfPmxcECw3G4/xgIA+022jNiaXuK0TuuG9Y0dVYJYLlWa4fm5eS8oe+/Eoh+BoAnEIhl9OE3/wTzhAfRuiafn82xdFo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7341
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699573288; x=1731109288;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=It1CJbrzwlWdbccjfD3CwQcnzCHLqSbEyzYueRQB/Js=;
 b=FbAMpOQsYTScK2zjlzf/PVM/4UD4NXlUg4HT14FuCcPdvGIBNAIQPtgU
 p10bgf8wAgFdkMcckbpvRDdCsje3SoYoamq+/bD+0MLZdGrzlvK7lRrcM
 p4KCEDxJfZcVoDkz0bPRacQfGhpBnd6W/7+ZeQEN1lAeBrKXua+mDwrAX
 Jff2v7aWke9mv6kvdyOz86UfJ3UCy+tFBTVjtbPjNOFwd97GURDgPtDSb
 Arw1cbDCC4dhuZQlrhvFTRAw36tpHsYpcd6ZvP6LA8VL+Z/BCwCfEGcN8
 oynb/5MmSf9tJMz6s67c1RWmPIpGEw/k2nYzAcY7I0i0Dh80LE2qVj8Xh
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FbAMpOQs
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: dpll: fix output pin
 capabilities
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
Cc: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>, "Staikov,
 Andrii" <andrii.staikov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Arkadiusz Kubalewski
> Sent: Tuesday, October 31, 2023 10:08 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Staikov, Andrii <andrii.staikov@intel.com>; Kubalewski, Arkadiusz <arkadiusz.kubalewski@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next] ice: dpll: fix output pin capabilities
>
> The dpll output pins which are used to feed clock signal of PHY and MAC
> circuits cannot by disconnected, those integrated circuits require clock
> signal for operation.
> By stopping assignment of DPLL_PIN_CAPABILITIES_STATE_CAN_CHANGE pin
> capability, prevent the user from invoking the state set callback on
> those pins, setting the state on those pins already returns error, as
> firmware doesn't allow the change of their state.
>
> Fixes: d7999f5ea64b ("ice: implement dpll interface to control cgu")
> Fixes: 8a3a565ff210 ("ice: add admin commands to access cgu configuration")
> Reviewed-by: Andrii Staikov <andrii.staikov@intel.com>
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---
> drivers/net/ethernet/intel/ice/ice_dpll.c   | 12 +++--
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 54 +++++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  2 +
>  3 files changed, 64 insertions(+), 4 deletions(-)
>
Tested-by: Sunitha Mekala <sunithax.d.mekala@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
