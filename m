Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C275754D79
	for <lists+intel-wired-lan@lfdr.de>; Sun, 16 Jul 2023 07:55:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 31367409B2;
	Sun, 16 Jul 2023 05:55:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 31367409B2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689486951;
	bh=12u71wM9yXGYzjRmV8BhFd+jU122EppLj17Xa/o8dtU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zg6Qqctjz1TSVBv+/R985BjTAn3SpRslvdwQjhDqsdg0szNbC7CFnrRqaZGnxkMnE
	 /kKVBfhDKhK0FKhq+1rQGDG59JkOY75+dJPmGpSQFddYhPEY23ILtF9wNF+Wh4o6oe
	 Cm6UYm38OLsZCVgbh5sE5UDVhsnX3upMQWwUfCd+zjbqia5q92gGLIz4fb5x4gd6he
	 9lOcmzCxXYZLVSVQ58Ui5bmRwiuET7RjNZfxUr4iPi8fyPfix/P8mMkr8A9VHfWk3f
	 b9ahAQIC32GT/dF7ieXGYgDsPRrPcPraWoEvsZ4Ji3wbxiWtOMZNmJjMQ/UiYoPoFe
	 2rge1CFmcOUtw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yNAiy5B0L-Tr; Sun, 16 Jul 2023 05:55:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 66503409A4;
	Sun, 16 Jul 2023 05:55:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 66503409A4
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0AB151BF3BB
 for <intel-wired-lan@osuosl.org>; Sun, 16 Jul 2023 05:55:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D51F840489
 for <intel-wired-lan@osuosl.org>; Sun, 16 Jul 2023 05:55:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D51F840489
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gz7ovdFuYWXD for <intel-wired-lan@osuosl.org>;
 Sun, 16 Jul 2023 05:55:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3CE9740354
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3CE9740354
 for <intel-wired-lan@osuosl.org>; Sun, 16 Jul 2023 05:55:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10772"; a="396548600"
X-IronPort-AV: E=Sophos;i="6.01,210,1684825200"; d="scan'208";a="396548600"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2023 22:55:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10772"; a="812896243"
X-IronPort-AV: E=Sophos;i="6.01,210,1684825200"; d="scan'208";a="812896243"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by FMSMGA003.fm.intel.com with ESMTP; 15 Jul 2023 22:55:41 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Sat, 15 Jul 2023 22:55:41 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Sat, 15 Jul 2023 22:55:41 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Sat, 15 Jul 2023 22:55:41 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.175)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Sat, 15 Jul 2023 22:55:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ObeIGsjh9zq8/bcT2Z9mGZoj/UHOX/6cYVOkVeA8BUnY6QAcdfsgilhw7IqXsS9g/+tD3yCR/GasaRalKIn1tfVfJLjthBxomwY47BUibgRYn6Htzjq8e+SCLd7OTdlzC+hNucxdsymn0O32JqZil0SPVVLAGUM1biRqA/dVnfsWDaLh5pOhFlvQRJpIDsaIud5EB/RKkFc7TeB7tPOhMrnKUsJ7EfuXplUMg5gxpNGNvlhhgOFYr9U8cy4T+oTocMRpWRy5ufTOsYBzpe9xRDrb0aJJGYyJT33X2r5oDTmmnhH2BcTwkWi90jxIHtAgpz4iRqaHso8EIV163KmTgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZhPWo44NjS4o2P3H1ctm9/x8I/oYNioWAa0fndZI6q4=;
 b=aQhgOndGb5QeuUVUeEni/JQfOZSGTLeaazoKXtVR2lYjvMYh//bDasLaz1uO0vnkDJ4kYxCZVorkcvxnpQmlVaJ3RSteq41rrG0PSVyEY14f1o1Dy4lltDjnFtXXX5pezMgblpNeeCozzqjYqU59fjwGvd6czLRQKP/7D2cf9WK8gziHgeg9AQHPIfzprYBehx7UM58bde4kkcl14A4P5kVz+6WOelt0JA4tsHrfRRXeG5mVb04Ri1TopCeL04Gd1BHq9NhyIt8BBbpDe0+Da+QfGMsDHdgDxtAR9em1gWuqsQRK20wJJ4dVw1nuacdE7lDZKYnDvSbsbukpkphT5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 by PH0PR11MB5612.namprd11.prod.outlook.com (2603:10b6:510:e7::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.31; Sun, 16 Jul
 2023 05:55:38 +0000
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::dfd2:5a47:bfeb:aa2e]) by SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::dfd2:5a47:bfeb:aa2e%4]) with mapi id 15.20.6588.028; Sun, 16 Jul 2023
 05:55:38 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: Leon Romanovsky <leon@kernel.org>
Thread-Topic: [PATCH iwl-net v1] igc: Add lock to safeguard global Qbv
 variables
Thread-Index: AQHZs62Nv7BQ4a9JnU2IeVMNIyRLfK+0L+WAgAe5ugA=
Date: Sun, 16 Jul 2023 05:55:38 +0000
Message-ID: <SJ1PR11MB6180150AF1B6967DBFF24F96B83AA@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <20230711040820.16235-1-muhammad.husaini.zulkifli@intel.com>
 <20230711074513.GL41919@unreal>
In-Reply-To: <20230711074513.GL41919@unreal>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6180:EE_|PH0PR11MB5612:EE_
x-ms-office365-filtering-correlation-id: 9b5f03d8-26ed-478e-8125-08db85c147f1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: f3rQX+iqfz1z7xacBzyKNUY6IOi1CB6PvC/CxeaPB17YBbIJpC33l1TXwiRs1qGnfY8wBNXM0fECGCQwxTKnKwTBMs6/7vrM3MWlsKe+m1jnZqngecXzmJlGNqeyCwBWp0vZLyw1zvzAWyuzCz5KbQ/6QMy4GObu7R3RiB05G37RKPyMfzTG22x61jWADyOQ52iYofGGouBtTO3tNAa4H3AmMaYKG1vrG90/feqO2xj6AsWt5W2y7g7Rwr4JV2IZEaa8O5skPkFJ7tbhoTMaQqx0oHj5ti4TK8NjiORGtegltGYB8r6FrLinf3+2ekxic8iVMJONH2vNjDCHk6RFOfg21yfuKzcb6GfHt9bMJCiGHxSj03bNtKoi8/GueyhqcGaxUcRZXcJan1UXdToUPhH0hK73GQJdz2xSHJmDSyJkm9UMm9Pz/rmJhlfOMUnaRRMtI4qtpBlc5QMGtalaOtIjRJXY7IVJz22+0Q1NpU8TtkXCiYoB/B+KgUnS4gTufA4rEyNJFIgzzzNXsGf2su0TewsQsOWX6q+ilBSI9RJhCjzKN3zLlOSjS0dcoQvmcdhnEeWU/FV43mInlAFpyfc7aLfqGTsEcNFiSqtnye/MgAX6oCF59TpblYNkDzx5
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(376002)(366004)(136003)(396003)(346002)(451199021)(86362001)(2906002)(33656002)(38070700005)(55016003)(83380400001)(186003)(53546011)(9686003)(26005)(6506007)(38100700002)(82960400001)(7696005)(54906003)(122000001)(76116006)(4326008)(316002)(66946007)(64756008)(6916009)(66476007)(66556008)(66446008)(8936002)(478600001)(5660300002)(71200400001)(52536014)(8676002)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?RrK1U+Xnuwhxao+O7kt40eSBRG8R3RGojs1p/EK4r5SPaAeIWR1dr9nzHW3k?=
 =?us-ascii?Q?WI4wkL/QuYETL+QxZavG+65oQzgGiOmEfB9Cvc+fs0mv+ZrJeXwUsUyoJ/l7?=
 =?us-ascii?Q?uYfL+lAm8NvDaf/Rw8rHXpbXxKJ80cvHsD2a+T1SDHkAUKCsH1Ha5NdAvvXf?=
 =?us-ascii?Q?bE/qh9ZRiulL3++OowADZmS0CQuCE6H0a74kleJYDY1avxU2yrQJv/2YOMJ3?=
 =?us-ascii?Q?Z2/LW4rIQcvL72f58rjeZ81B4kOvkdgbCtZW4CtDCRN6AxItZA3TcY2dTnTV?=
 =?us-ascii?Q?rFbzp2eod5huc9Pd461afeYeykUCpaRM3kCUPoj8jYW/lwWiSmkmeDwoJi9W?=
 =?us-ascii?Q?my7omoafdwxkpQ7FjWUHL5+kCsT6MB9jPuAhieVSq3MF/NwKTl7lsAT+NkUp?=
 =?us-ascii?Q?tZCjgGTwur9IzU1KRjefzerbiyZXdYDTN3bn4wn+nbSCjiy443WqpFjIGC2l?=
 =?us-ascii?Q?4dCMBskiSALkvtb2t6OGHecogetNmk/rx0n7VgUAndaQ7x6hYDFRb5NqMQK/?=
 =?us-ascii?Q?LJgTToKaIopw0bmNgsu6nXzzSppRM/zo2mfWI2yzQvUYMFHqZkPNItF+0UOF?=
 =?us-ascii?Q?2NensJnOaR2H8IcWFG5mCeZpMmVg+CdoTRgl/CQ9i2pobes/CuFdHMnNVKDJ?=
 =?us-ascii?Q?ZQduEPjbsQlzXgCffTTGob+4UxCrta1YSBhrqMXA1KE0U/43aGEqNPuiSKHW?=
 =?us-ascii?Q?gmJ6ZzP675iOq0OY2jLntkdQ5iT1q79XDhY9L0WTimJFf+cKN94chuLjQ0KC?=
 =?us-ascii?Q?9V+vgwaHzfnbW0kyMR+gtPzA8Dx7p1xWXbzb1TGkhputPRluoEkALbnr1baA?=
 =?us-ascii?Q?xJzk97C6NOJPejCyq0WZ0jsK2xM5CVEtXJuW5oqxPRToBKIqUPcXaaSn0U7v?=
 =?us-ascii?Q?PVRgngULlu4r/5IYq43uks4vR0og5oKt2v2DSC9pFD9tDTEvOEmy35axL+Y/?=
 =?us-ascii?Q?TEiBB3ZovC2KQvdHwbGTosCayAzfMYB7fYXOcUMY79eiUQEdhRbm4/OKxFHV?=
 =?us-ascii?Q?0BHc7JlX4LdvQQcBywmIRYpT48rHJTt/FH9BhoXwM376v0KVBWRPobMh9lfQ?=
 =?us-ascii?Q?zw3eED0jrxVC4CafvQO1qS86KGQU0NS3qvWWNnTd/MavU/95VDg+mhTwVGwi?=
 =?us-ascii?Q?loB+IgGJiQbA+jb6OVmK2ZSQToJVwwtRNkFpzFRYjUqQavX6Ik5+ePg5ka3S?=
 =?us-ascii?Q?SGeZkXFS5OAO5TdHbOvu81Zi30Js0JqWz4yBhybOdfIm5knCw+HR9iYo4Nyv?=
 =?us-ascii?Q?36Ap6/Jh0lNEWhD+IDa16gEJiJUOiirQDO27U+/xYTdhowpHKjpbZCBBtU3U?=
 =?us-ascii?Q?tExoTDOE0qsfF+c9YdUkMO6HmlXOSqhMdv1UyLiSqBLt3EfGx4mzNGHgRrM6?=
 =?us-ascii?Q?pSMLwOPQWC4CG0Yz2b6g43un908tSCt0Dk5JAXaB/lygXiAIv1YT4zbXLtCV?=
 =?us-ascii?Q?CaJx+POE8NCrLCEBSb6YCwCSS57zDqPV21o5yRnZEkBKYQF+V5WN6YIsr2Is?=
 =?us-ascii?Q?Kv72SPHY2PkIOzmAIomFDZqsHKwHF2f8IXjw/1kN/voo/vmmVaC1vtVwfOp0?=
 =?us-ascii?Q?EaICHQA2eVt3a/jidk3RlXXiGB+leK6d9uLPAMzTqMg/q3SOMautwg86FfmA?=
 =?us-ascii?Q?WDy1tejEShzUrDksARvbl7o=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b5f03d8-26ed-478e-8125-08db85c147f1
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jul 2023 05:55:38.4655 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8g879mmyTAV1F0KwVWC7gEoj/wmJ/RvpCartC4z1tQDnUfL8bOydlZaS2aCgOLM0VcU8FMzvAcSLrBRKicmkS6LTo9YojqRFzyZk4Q5tTF8v8YqFzhIY3QiZT3YPimyN
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5612
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689486943; x=1721022943;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cicN7osgqVLC1SanOuI/hH9DLisPO/WkoL3kviFRO+A=;
 b=GhaGzMwCm0gHq+hJFhYbPNicXw3P/4h6A9/MMtDnejRwv4LVMo6phZCX
 gbca2MyPS+WFtOgUOrrw1XqpruUqEN7r950DA7ds2NMl0mOV2cHrXw8BK
 dLAV84jyCAZz+YdVy/yJ7UB+57FOEy/nJzCO1teYE5SqY9V6xoAyV3dAP
 R6bXLh8cFjlm5rS5qk+Bc4paAa/nklerJEmMfUJ8SRkIpvHi3X41l5iyf
 9uaJ/p9MDhmjvSmMAQUMtmXw+hVXINoxZFx5WPTakp398vy6YdW4BTGC5
 /sgAU7ySCu6Ie7lRWbDnx9zxODkf82W3m+WTHEyAmtj7aL3jTMXA1phYr
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GhaGzMwC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] igc: Add lock to safeguard
 global Qbv variables
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
Cc: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>, "Nguyen, Anthony
 L" <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Leon,

Sorry for the late response. Replied inline.

> -----Original Message-----
> From: Leon Romanovsky <leon@kernel.org>
> Sent: Tuesday, 11 July, 2023 3:45 PM
> To: Zulkifli, Muhammad Husaini <muhammad.husaini.zulkifli@intel.com>
> Cc: intel-wired-lan@osuosl.org; Neftin, Sasha <sasha.neftin@intel.com>;
> Gomes, Vinicius <vinicius.gomes@intel.com>; naamax.meir@linux.intel.com;
> Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Subject: Re: [PATCH iwl-net v1] igc: Add lock to safeguard global Qbv
> variables
> 
> On Tue, Jul 11, 2023 at 12:08:20PM +0800, Muhammad Husaini Zulkifli wrote:
> > Access to shared variables through hrtimer requires locking in order
> > to protect the variables because actions to write into these variables
> > (oper_gate_closed, admin_gate_closed, and qbv_transition) might
> > potentially occur simultaneously. This patch provides a locking
> > mechanisms to avoid such scenarios.
> 
> I have a general comment as this patch is targeted to iwl-next and not to net-
> next, the locking should protect access to shared variables and it means that
> lock should be used in all places where these variables are used and not only
> in one function.

Previous patch of "igc: Fix TX Hang issue when QBV Gate is closed" was submitted to
Iwl-net. This patch were introduced as a fix to that patch. Should we submit to iwl-net 
instead of Iwl-net-next?

You're correct. To prohibit unauthorized access to these variables in several locations, 
let me send the v2. These variables could be modified with different contexts.
Looks like, we might need to modify code in igc_tsn_clear_schedule() and 
igc_save_qbv_schedule() as well. I was thinking about separating the qbv portion
into a diff function to improve the readability of the code in igc_tsn_clear_schedule(). 
Let me send version 2 and see if that is OK.

Thanks,
Husaini

> 
> Thanks
> 
> >
> > Fixes: 175c241288c0 ("igc: Fix TX Hang issue when QBV Gate is closed")
> > Suggested-by: Leon Romanovsky <leon@kernel.org>
> > Signed-off-by: Muhammad Husaini Zulkifli
> > <muhammad.husaini.zulkifli@intel.com>
> > ---
> >  drivers/net/ethernet/intel/igc/igc.h      | 4 ++++
> >  drivers/net/ethernet/intel/igc/igc_main.c | 7 +++++++
> >  2 files changed, 11 insertions(+)
> >
> > diff --git a/drivers/net/ethernet/intel/igc/igc.h
> > b/drivers/net/ethernet/intel/igc/igc.h
> > index 9db384f66a8e..38901d2a4680 100644
> > --- a/drivers/net/ethernet/intel/igc/igc.h
> > +++ b/drivers/net/ethernet/intel/igc/igc.h
> > @@ -195,6 +195,10 @@ struct igc_adapter {
> >  	u32 qbv_config_change_errors;
> >  	bool qbv_transition;
> >  	unsigned int qbv_count;
> > +	/* Access to oper_gate_closed, admin_gate_closed and
> qbv_transition
> > +	 * are protected by the qbv_tx_lock.
> > +	 */
> > +	spinlock_t qbv_tx_lock;
> >
> >  	/* OS defined structs */
> >  	struct pci_dev *pdev;
> > diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
> > b/drivers/net/ethernet/intel/igc/igc_main.c
> > index bdeb36790d77..cae717cb506e 100644
> > --- a/drivers/net/ethernet/intel/igc/igc_main.c
> > +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> > @@ -4801,6 +4801,7 @@ static int igc_sw_init(struct igc_adapter *adapter)
> >  	adapter->nfc_rule_count = 0;
> >
> >  	spin_lock_init(&adapter->stats64_lock);
> > +	spin_lock_init(&adapter->qbv_tx_lock);
> >  	/* Assume MSI-X interrupts, will be checked during IRQ allocation */
> >  	adapter->flags |= IGC_FLAG_HAS_MSIX;
> >
> > @@ -6619,8 +6620,11 @@ static enum hrtimer_restart
> > igc_qbv_scheduling_timer(struct hrtimer *timer)  {
> >  	struct igc_adapter *adapter = container_of(timer, struct igc_adapter,
> >  						   hrtimer);
> > +	unsigned long flags;
> >  	unsigned int i;
> >
> > +	spin_lock_irqsave(&adapter->qbv_tx_lock, flags);
> > +
> >  	adapter->qbv_transition = true;
> >  	for (i = 0; i < adapter->num_tx_queues; i++) {
> >  		struct igc_ring *tx_ring = adapter->tx_ring[i]; @@ -6633,6
> +6637,9
> > @@ static enum hrtimer_restart igc_qbv_scheduling_timer(struct hrtimer
> *timer)
> >  		}
> >  	}
> >  	adapter->qbv_transition = false;
> > +
> > +	spin_unlock_irqrestore(&adapter->qbv_tx_lock, flags);
> > +
> >  	return HRTIMER_NORESTART;
> >  }
> >
> > --
> > 2.17.1
> >
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
