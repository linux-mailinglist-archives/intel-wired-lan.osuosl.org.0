Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id ACA3757DFD9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Jul 2022 12:29:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1C3AB42373;
	Fri, 22 Jul 2022 10:29:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1C3AB42373
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658485770;
	bh=JWPbyZKijPmOjBbie9nKqNprTSArJ+ov0EZjx/KNO6U=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OxN9AiJRhF6wON500rwOqyRPV1MeRKJZip0H4HaFhvshxjaYcvV7kEboLAVfaJciq
	 XDP21O9sm7nJDPoZRyp5rixCkno13LdNegg2z1iBigUBNbbVSj4741PgZLi/Q1qJ4I
	 EArDTfVKUA/z9xGpzSNMA2OxAFOkXoTapZnhO8bkD2jMwKeD57N5lSQr+O9rO50NZa
	 9VnIPyzvHE0dmp2QIldmzIf+ADRXLY+aPT1nPiGDvFr9ZimwJSMTKqTnxoB95Of1O3
	 GYR60dAIOl1II20+DChNhGoPIRas9G8U7A2wEc6SonXS4aWHYmNJrN7r5B0k2qekPO
	 0tvaEyZOad/Gg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xu9duTM_a3PH; Fri, 22 Jul 2022 10:29:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 71CBC42372;
	Fri, 22 Jul 2022 10:29:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 71CBC42372
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 965481BF32B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Jul 2022 10:29:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6EC8040484
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Jul 2022 10:29:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6EC8040484
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n173ib_USMIT for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Jul 2022 10:29:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 284DA4013D
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 284DA4013D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Jul 2022 10:29:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10415"; a="373584451"
X-IronPort-AV: E=Sophos;i="5.93,185,1654585200"; d="scan'208";a="373584451"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2022 03:29:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,185,1654585200"; d="scan'208";a="701623024"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga002.fm.intel.com with ESMTP; 22 Jul 2022 03:29:21 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Fri, 22 Jul 2022 03:29:20 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Fri, 22 Jul 2022 03:29:20 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 22 Jul 2022 03:29:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O6G0ma3+wmaQP4ykynZnRr2nXUzoAqyFU2AA9ym36c984KPMx/wcav+03N/KPn3jvo2bNeYF18iapMacMDJf2VZBu5Vwu9E/7Q8b5F+r5vUiFjng8LpwlNn14Gfuvn0/sjANwrhNKa5ckeriI8B1qhA54KdBlk3fmlHwROPaerlVkJN6r38PM5q4AzYVezd/Hrp6wC/1C7XWtdCidMfwe1l/Jg0SZCFmJr7hbHDZZMn1iFEFYgMNlLuX7jJm10VScEd+tM9KZjThg2RiUsh9dZrX+gfbKYAIYctszSpVcbmZFKMfI8hugNEfVtsIsYQYFXSyvMr1PeBVObFPOMCAmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=57kOQJliBAQ9p6M9L6rCWPkdNuH0WlYTKOObbJyS0fk=;
 b=gVIiB/duq+vS3sflsV2HE+rQ/ORWH5RTajo2TyqC5XvluygfKhnYwI+Jy11XQ2wnC7/0KOdlsQwKZmUM9d849cHzS8MpzOE6AR/aUG+Y0YdVOgiUKZuhFx1Bb1gjkbyyn3h6AwknawVWFBE4eykfriYRTlZdWPU1UamN5zeUpsRq/KEIDSkmTWYlcZBUHxTCQZKivajRB+93vlPxTq4NkHrsfOTfovolgC7g+RRDiTXBecGqGZUGylgOHLKgfJ9LIgUXCxnJMOmPdlIQAMMHH96pCBbMnfXe7KVJk5WLwPODLYgKIGZ/YKT/31z5oqZXnb9tLPuIRpuviHkEIJcrhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR11MB1624.namprd11.prod.outlook.com (2603:10b6:910:8::12)
 by MN2PR11MB4336.namprd11.prod.outlook.com (2603:10b6:208:18c::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.19; Fri, 22 Jul
 2022 10:29:05 +0000
Received: from CY4PR11MB1624.namprd11.prod.outlook.com
 ([fe80::6023:b392:54a4:a0a6]) by CY4PR11MB1624.namprd11.prod.outlook.com
 ([fe80::6023:b392:54a4:a0a6%12]) with mapi id 15.20.5438.023; Fri, 22 Jul
 2022 10:29:05 +0000
From: "Szlosek, Marek" <marek.szlosek@intel.com>
To: "Wilczynski, Michal" <michal.wilczynski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v3 2/2] ice: Fix promiscuous mode
 not turning off
Thread-Index: AQHYj6fct1CWbfcUnUe8aeVx9cmDiq2KTEOQ
Date: Fri, 22 Jul 2022 10:29:04 +0000
Message-ID: <CY4PR11MB1624914F3EE7F862BEBC6AE5E6909@CY4PR11MB1624.namprd11.prod.outlook.com>
References: <20220704131227.2966160-1-michal.wilczynski@intel.com>
 <20220704131227.2966160-3-michal.wilczynski@intel.com>
In-Reply-To: <20220704131227.2966160-3-michal.wilczynski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: afc45290-dc7c-404d-fa9d-08da6bcd00b0
x-ms-traffictypediagnostic: MN2PR11MB4336:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XZjX0Meb2FPDDy+i+VVIKah84iafilMBllNrA/vk3tzWHE8+1x6N0d3sB1dwvA/t2aaYncBeriWzdjXOwJO7FnPapJmUYSrwFBX0dRVKHshysEGvtHP60V6HnBtp6pVXpkP9eAuY1mhW2f3azLcbpJKP7JtoGeu5vqMAz4OoQI7VpcaWsTsuMEhO7dxK7pBqHX465Re6CFSVuNRYsg8kwTfaGuqr/a9lts3d0tKwXys4SSCecLeiLSx1Xee3TDSzJhomNMgMC0qnus/PjHKSAnd9cb9QPn6HxACCgPxsqoYswVmOHJtDoYAtw2b8ecntf0l5jpbDTzhAfV7oUdPSIfiapoiLDy1yXMcYt8KUL2diK+aC/7srF0QmUDXnKGyWzG0c8ASVZVZoFhWi6uNWsMLnr1gHMhGQoYgssIo3+UJ1Y3wFlME+aMExYZamw4DvA6N9x8eNgR4P8I9vRV2b2uVy5Zv8o9xBrdif9MuaklUpohCZwe80wiKgWL2EKUXqhHdCRdvYXe2VRNkCsVlLh4KTP6f1Snq8XFoqYr+GUUXDJbGqh9uDgBv2ASjo2+Qr5S6xLlavLSwXitsqhdmSBHyWcVe4bMpRQE+CDLIfH7J2uaZbZqRrJWk7VDYd9j/En3Qb0CYTADmDyO1YVC5IQTF3cGd3eRaXHfVaizkMt64r4N+RBVwBK+MB1aqWKRylDM+u7oql+NIdjLMd4U2Y3JGld2PGEV/WIiDq7XzWYm9djrmHAr2FSdtR6wzZ1aAnJe/pVL7VgjLUeaM2JbNvZGDi09P+gq/hL/vEr9VbeQHc9EcoZZBgfZxyBl6igRLm
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB1624.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(376002)(346002)(366004)(39860400002)(396003)(66556008)(66476007)(66446008)(64756008)(83380400001)(186003)(76116006)(8676002)(4326008)(6506007)(66946007)(86362001)(478600001)(2906002)(33656002)(55016003)(122000001)(82960400001)(52536014)(8936002)(38070700005)(5660300002)(316002)(26005)(53546011)(41300700001)(107886003)(71200400001)(110136005)(9686003)(7696005)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?zchklVyEYCsjNHVfrNLLcrjTR4j2tzcORBztxlSZCjPM66OWiXzXSn8Jlv?=
 =?iso-8859-2?Q?a1NWpydVDIJXVldjSBJCmNHnZ0rugmzXgswp242M2HR769wXrUha9a/Vvb?=
 =?iso-8859-2?Q?FbE+QGZ9bVP0+tCJB3CJNXpeH0CUEwndaX/+q+b6c/dLVkls2d66bTZsPL?=
 =?iso-8859-2?Q?tXIr1+AhBt8ykW0NFKS3EVR42KjvAQLDtJD1+UL+YmtGPtqFyhoCMTi3p8?=
 =?iso-8859-2?Q?aFMvcxmDuNggGh2SstVg1SxAXvS7At097et2tbMw23WazUwDNuWrfmRogM?=
 =?iso-8859-2?Q?LdgiOIG2jXfLMTFq3BviwOOlnpXfnXfIUH3n/qRkMcUeR/iw6HsLPsjA9a?=
 =?iso-8859-2?Q?6FP8/7w1ItkrP1aA7gJLh3vqLO8/Wekteq/636M5BAc0VCZ2SEnH5Zf5fb?=
 =?iso-8859-2?Q?O5ZxSG8kIr87SvpFm4iEDhTkkkEeZCfxFizpFjhiwH8g9+1W4R9/L3bS1z?=
 =?iso-8859-2?Q?sDZU5sMeMPMw5a/mHbI1D8osXrM3kdjs43xTH95fZdIyPPJLsTJLmidq7G?=
 =?iso-8859-2?Q?LKw8dGW6hf8rxUePsuM/KPQ1zan/mg6y6tsJ+724chw7ORiZ8iZSv6fMBs?=
 =?iso-8859-2?Q?BY+Ks207vYjArh1viCqTkidi3LvBtmo/dnlmBgxuiGqqKlnVy1mA8dChQ6?=
 =?iso-8859-2?Q?Aj37F2a4yqtFV0qp748xAf0eZVJl54mhqFxhhOsPHTCkHmJyuA8SSwRthL?=
 =?iso-8859-2?Q?CsUEOO0q5bk2upBB7FFfr0dKwAiUQWd8Pm2mA4JPC7qJo0mJhpWoB6SQj+?=
 =?iso-8859-2?Q?rjQZ6n6v8IA2KHSxF3y0+Bu3kI6rJU6VhGGVehMdnUqFEsmraOP38ry21l?=
 =?iso-8859-2?Q?3hF5QwrMicoa7SiQ9ecH8N3WoQsyNMVPSPW8r9aTpxd9SRmn3BrL+ivB6z?=
 =?iso-8859-2?Q?6RxVfcyYPa4Zv2COtfVKQiuAq5k3EWWu9Ssro4uV5sBts2qG8yunD7l3Lh?=
 =?iso-8859-2?Q?kxBUqLOpf43Msa3GcNfURgV8MRUCNej1+whqCXeog+XSOtgYDp6IpSbYC7?=
 =?iso-8859-2?Q?stbZAN7dkt6+XINUJtlAHvVgursqZ9OIyfOAJfb8KWwyN3ObmAI8lc+8Wj?=
 =?iso-8859-2?Q?HLY1Qe5GZbmvxXvyZL+sjyDeIFz/JIJOkhoQmnchqDIID63q+d6GcM93Kw?=
 =?iso-8859-2?Q?q8dlRa8QPzjKIP75jj7QpcJPqhq9beY0QA2bQKv1Vfej4eI399LSxGQQ/X?=
 =?iso-8859-2?Q?jO/BJw02+8M+nFvPhbhyYBig+oY4N40mCHaDgymuhDiRwFbNsDRcWVLAJs?=
 =?iso-8859-2?Q?rqnItMzNUmbxwgw5uYKmFeSX4MZ0UZekEjNbvMysWpc9DrnOBdm2l1P5LC?=
 =?iso-8859-2?Q?iX5mSKlGItimTv3eWCYWuRdv8xto1mQWDTYn1dJcn9niR6E0Y9p6tULcWy?=
 =?iso-8859-2?Q?4jbq1FjsFEFyEm2IWKWNrNPtMe7WKyxH/eRkoznS7nR2OxrIyrKK3UddV5?=
 =?iso-8859-2?Q?x5Ek8PbBfGAIolv4jYroPgJzJVXFpnJBNY4kgTyKZaf1ZpXNO4f6fYy5oa?=
 =?iso-8859-2?Q?vDqr+UOsJLVqwTHDY0t5kijGAH9liCLGDXPVFAqnVGp1s+R0zY81xV4PHt?=
 =?iso-8859-2?Q?Ib+4IXrRH0CtJ2eqJ3DGhmpHr8612cUfPoN0wmnvUfg3hARsS5gBZRP8eA?=
 =?iso-8859-2?Q?4z8ZWD1KdmPiU4q19f1DBBTtI/uIW8rsuF?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB1624.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: afc45290-dc7c-404d-fa9d-08da6bcd00b0
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jul 2022 10:29:04.9787 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DLrknF8k/LZA3vRptdk9x8bmmdzbhteWQxDOh2PF2O+3nA5Y06R/GlIi3H0RoUjCDSUvyIVspcs3+f8NPewSBQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4336
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658485762; x=1690021762;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fMa+MV0zf1xDqvRXofod26giPERmdFL4HFF9KwH51NI=;
 b=M0e9YggZWxF5Zybml+gFAbgyTWYrMzBS/bwgZ0KnjFUZ9usJ0QfbDi/Y
 gZUljO8+Dm8T2BDLjP0eI9qB5ChvothK2tk3eq+pSwrtuoHLHM1vH3NHw
 38NcsSqKNjKQf2aGs48XJzcb8Mwrw2qytFmBJyIXQiLmKIZ7Agyr/0qHh
 U78QSqh0GPJzWBFHzyiuW/cGnAKB4/WUdClhFhLVHnFMowPb6uPlD7ykN
 VVsHC19yaaPBGr3UsRhG/W8Y5HeQwc7Q9qXYldvLO0yPgx9oevdOFwOh6
 Q5ti6SR8P4jdUeLxMXxSFgc2tqaP807SueQ4/UYQrVNPPMD5SHxQ28GfB
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=M0e9YggZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v3 2/2] ice: Fix promiscuous mode
 not turning off
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
Cc: "Wilczynski, Michal" <michal.wilczynski@intel.com>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Wilczynski
> Sent: poniedzia=B3ek, 4 lipca 2022 15:12
> To: intel-wired-lan@lists.osuosl.org
> Cc: Wilczynski, Michal <michal.wilczynski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v3 2/2] ice: Fix promiscuous mode n=
ot
> turning off
> =

> When trust is turned off for the VF, the expectation is that promiscuous =
and
> allmulticast filters are removed. Currently default VSI filter is not get=
ting
> cleared in this flow.
> =

> Example:
> =

> ip link set enp236s0f0 vf 0 trust on
> ip link set enp236s0f0v0 promisc on
> ip link set enp236s0f0 vf 0 trust off
> /* promiscuous mode is still enabled on VF0 */
> =

> Remove switch filters for both cases.
> This commit fixes above behavior by removing default VSI filters and
> allmulticast filters when vf-true-promisc-support is OFF.
> =

> Fixes: 5eda8afd6bcc ("ice: Add support for PF/VF promiscuous mode")
> Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_vf_lib.c   | 79 ++++++++++++++++---
>  drivers/net/ethernet/intel/ice/ice_vf_lib.h   |  3 +
>  drivers/net/ethernet/intel/ice/ice_virtchnl.c |  9 +--
>  3 files changed, 72 insertions(+), 19 deletions(-)
> =

> diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> index 9038d2687ba6..8fd7c3e37f5e 100644
> --- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c

Tested-by: Marek Szlosek <marek.szlosek@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
