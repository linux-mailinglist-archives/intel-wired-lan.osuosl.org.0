Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AFD445879C5
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Aug 2022 11:20:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CAFB38139D;
	Tue,  2 Aug 2022 09:20:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CAFB38139D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659432052;
	bh=FAQrSoJAaYbcThzT61riQCm2sZ715uFD7wOlL3xpVAM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YryjiIM7qdvfXpSg8+IRmu1H/EtlE6RH1xCIEVNgWM3gzpxufO45HNDAo6mebIbWJ
	 vNc8nuV/UgJD9xHYo6GQj04XfgARgwRldcrkI5e/BXp6NG9oo5MIIAkt2NJ+mJpvPY
	 ecuwbu6p+cSmM3crcqnzgXIPwABWRLHnz8U7Tda2S0udI5lQHIcA0HggoLSwercvGA
	 HjaSrPmgZ/S54JnAb/SO/tZn4q8pJ7MsqY7eKaV7X0VEAcbqS3Ep2vZFyHtyKu2Whg
	 70moeuakhu4xOzyTg5K3j0mpZ+r6ImBGxhTJFJ7bRD01BV8EmWFIJNak/hCA/zaVlf
	 G5wvBfizkyjGQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g1nfIaQ25AKW; Tue,  2 Aug 2022 09:20:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B6B688139F;
	Tue,  2 Aug 2022 09:20:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B6B688139F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9B4E21BF57B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Aug 2022 09:20:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7181C40500
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Aug 2022 09:20:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7181C40500
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U8VSjeSbnsJt for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Aug 2022 09:20:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9B722404F1
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9B722404F1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Aug 2022 09:20:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10426"; a="315204584"
X-IronPort-AV: E=Sophos;i="5.93,210,1654585200"; d="scan'208";a="315204584"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2022 02:20:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,210,1654585200"; d="scan'208";a="728770460"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga004.jf.intel.com with ESMTP; 02 Aug 2022 02:20:43 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 2 Aug 2022 02:20:43 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 2 Aug 2022 02:20:43 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 2 Aug 2022 02:20:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IdENat1YHWGqfcM+IyV1SwjLHpyQq3eIgGZavq4VnTH2fWS3VdvN/G7Q3b6lk5YC8C2Lam273TrGX25JW1nIDOlcke8nJSwQ4wVTCtA7mCAwQdzwO9wsdp5VIFUFMH5jOdOIacE655hJKGO2O8TUuNSlgv2+XJ5RQVd46/UttIgpJ05zD6IajAnJ+F4z1EJwvSNBULYw2JEthzKIHeCNy7giiKNqZXzVFR0l4yjh726qyvPX9GAwCaxCTf0WXxBgqIGkclnWOe/YYOL4nA39TZ2pXeudI7BlXWlc/bHrS/BgHOYvBCW65wXaHN0QlOItJhgWKofnmuENkqtfELmQSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q1fRdPGJvzucPsFsgPolUDcOgVA/5Es3l+dB4eGwEis=;
 b=Onh+BcD0FPhfR45G4KqSU4UEGG4v98eglWxBbeSUyI5U3U0KEn1N7mzm4YnJczpe3UgegoWKaA+kLFyac+pGqKdvIJctyHjMfVPkxNVfvO3yFnd5tGIRz4y8s7M9CdSDHyONfEpIzzmOxRO/LPIGRVQHNk57w4B2rLosiMX6zqr8G6IEEVekajAp0nbMbzmoDjnToX0NPLfL42oJgcmWI54o6wx/Uczkm3VdYXdnSRUh50kD057yGMHMC7zzOcEK+R8wInyneP7l3y6SGaJUGz4T2pNDDHmLwRPoOppa+m/djpa2wTXzZF85qzs8VPwlb5iWUs4Y8LKDpHA9nbUhhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR11MB1624.namprd11.prod.outlook.com (2603:10b6:910:8::12)
 by BN8PR11MB3841.namprd11.prod.outlook.com (2603:10b6:408:85::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.11; Tue, 2 Aug
 2022 09:20:40 +0000
Received: from CY4PR11MB1624.namprd11.prod.outlook.com
 ([fe80::6023:b392:54a4:a0a6]) by CY4PR11MB1624.namprd11.prod.outlook.com
 ([fe80::6023:b392:54a4:a0a6%12]) with mapi id 15.20.5482.016; Tue, 2 Aug 2022
 09:20:40 +0000
From: "Szlosek, Marek" <marek.szlosek@intel.com>
To: "Mikailenko, Benjamin" <benjamin.mikailenko@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] ice: Fix VSI rebuild WARN_ON
 check for VF
Thread-Index: AQHYmJqLRViSTbRGJEa1FRyD9iFEYq2bUOjQ
Date: Tue, 2 Aug 2022 09:20:40 +0000
Message-ID: <CY4PR11MB162405ADC05722CC8CC1B53DE69D9@CY4PR11MB1624.namprd11.prod.outlook.com>
References: <20220715222707.44312-1-benjamin.mikailenko@intel.com>
In-Reply-To: <20220715222707.44312-1-benjamin.mikailenko@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 59abf926-ac36-4616-9bca-08da746844e7
x-ms-traffictypediagnostic: BN8PR11MB3841:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JIR+6cmz7/1yHczqr99FlIO2rsZ08KLIk3nkO9+Cc8zZRjR9Uo6b7T5RkgsNASWau8YeI5nuYK1WdTsCgksTWDqp+dqsMymIHlY1rd5P3a6ed9EbmIibHchNV0EepNze9EKLM7VsOFZae8KYvJU9Kp9AxJuKw0JYPzBuq6FlVReLX3VVnBW3Pk/gfKlYkV3hq7nD/WrVL4Z7TQOOh2fynLo/HXGjSsFKWSXoWhbo1Aj6J61zo6jvef2OgAIouirYjagNiy81qvVWwOaiMEVWOb+/3jzdIaEvult+EOCbcId+DJUcv9ukfVPnSLR4AwkGdQnaq55Lxip5owudtDfC6KenkS/eItStZi2JWoTvqNVVfj2jOE4HVRxpOBM1L3Xz7N2psk4ZajH5KBIRUhlbYtmJapGWE+hjyPjry14m+6aJ+XPxndS8V8zv5wxXcVnt0WGzOrEVN2z6k6bMtTuqXqHrBRdd7DgWFfEiwLJC3ifob71HpT3nZz8uGoxkYqppbcSrxqw+pYoEL09Z28uMyF/m8DEuEuVJUBPZMHubvVfqSzCNW288vAgOT1JfEsi7xKoxJ3lPMT3icbRz5nNkAW49blPoMx748QXyDkDy7Sfv4XE+FtVslDhcuCMjWm6gZE/fn4cD2KFqKG6rmEwN2rtqqg4GJVTPutP9exWGO33IF4iQboXpxh3+KXpc6ln7wravxYo2X3gyJEFn6Av7M8mx3cdZt63GMPnKzXufcAtbf5qrLSI2UT3Uz6dTDicvaPtillUd2wCTLdLeJ84mxdrK4w1w0I2YBpgNCa8pHylrahUhZnKRYK1+1YFxZmGC
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB1624.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(39860400002)(366004)(376002)(136003)(346002)(66946007)(66556008)(2906002)(83380400001)(107886003)(186003)(8936002)(66446008)(52536014)(33656002)(76116006)(8676002)(4326008)(66476007)(64756008)(5660300002)(316002)(55016003)(478600001)(6506007)(26005)(9686003)(53546011)(110136005)(71200400001)(41300700001)(86362001)(7696005)(38100700002)(122000001)(82960400001)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?NcXFNZjQB8Fgzf8OYNLbPnHbof2lZtBQ8DKQNBJQB//xed9vcQ32L/GjdOs+?=
 =?us-ascii?Q?1lDM3CNiEeuSFI3MWskg2WXjYU781NyJ5VDzeQPXOpFvsOmLRXT5gObAc+18?=
 =?us-ascii?Q?aLRQXOeMBhm+p+7yo/ubzqDSHAIiDcRuhtwEVIus6R2m1gfcjM1odahCbBCv?=
 =?us-ascii?Q?AuEs+BI19L8ZMG5smfdqux55/f4amsZWS5Og4Pl7kNvHdzkWBvSbU+GE8nx0?=
 =?us-ascii?Q?Yc2tHJ6H7saZj+VMic00bfVSQofHtb06GCC2g+9D2vBpSeo9arAR5TBG/Ldm?=
 =?us-ascii?Q?1nAQL+8QlUBWgtPdSpCAK/rcNLpZ82vao2ekeguqrUDg20qTwFDBKdU8xc30?=
 =?us-ascii?Q?Z9X1g49NGMW9kvDs2JO21bg+qtKozeAiS+4Qz7FiK1mSp32Q50pGwN54q0Q3?=
 =?us-ascii?Q?KEzLZb1o71nh89H8AZUqqbdIIsZz2Q//o0Kgs60oQjv0cka04rkezL5XsZAw?=
 =?us-ascii?Q?LQKr2CRXXIrOGyh5TSBoEaNlsXHn44ejwWaxR9x3EIAlV4+nNGfgAQr9IzyT?=
 =?us-ascii?Q?1QXelRvuEXwC76J8EokrxcDtaKmOurkKOVqoWg1mFimLW6r1NL5FOjsGaX5Y?=
 =?us-ascii?Q?EmsEbuYQ8Cx6aWYkbS7J26jEQmeXcJdLMciHvikuW04l2cnkU7e3ZGhcwPfb?=
 =?us-ascii?Q?gkMqaJNzvl1eBzkDnL+oA7CfnW6yt70x9avT0CjF+M5727NuHYIl7YkLsrbk?=
 =?us-ascii?Q?XrP9iKgdm0INMDlyA0kimRtB0Iid6dDBuT8szumMfFxMCQS126eBBEkUPfY3?=
 =?us-ascii?Q?VP0ia8nqa2r1P2dBY56YLHJUu0xmncgA8USglKSAMVQbjFLW8NgPO40TAkDx?=
 =?us-ascii?Q?i0flKqBRjQUCC/2ImqYjBg/4rVxvAZDw9e1zrCtaWT0Bld1EZR0nVD5ylV5g?=
 =?us-ascii?Q?BGZHN0N6RxFnOqmMmKmQ9Y9uJb89qfJG7laMS6jq9GoF2ObufNBvMqEYukZy?=
 =?us-ascii?Q?XFCoVnZ4/mNtzzS6sVOfA71G1NdQ09ub7xUD3WiAYzujKJZ9CJN++TVx8J6g?=
 =?us-ascii?Q?bPvGSerICVQGVvoXfQvMt4pC+tNgjWO+yn4XXLuh2Vpjq6TTcLUMr88wlhXe?=
 =?us-ascii?Q?ujO2CJfnQIWCZxYpdF31Mkos8Lk5CSN/jDP178QujmqkaOtBOJaTBX0pK0hW?=
 =?us-ascii?Q?npU7nu7XigPQaQiz5ZEgVaCHGie4YUgPmHg9xfH20cMd2GMeIqTy86sX87RK?=
 =?us-ascii?Q?+hl1yAaWi6IKK9wAoeEaaTeGqFAsZSc8vN7gv19sM1+6MUNVZu9bK/cP/brZ?=
 =?us-ascii?Q?Rrndx8jCScxKJtnyNrzABXVwPZjZK6K0zq0u+Uo3pe1imUOuO48lWRqg5yWH?=
 =?us-ascii?Q?M2colwvLbdK/qUbz4lB8d24Mrfix7tH7/KKSQRS+f0TS60he14iA7d4qeBMY?=
 =?us-ascii?Q?52bm2cJxO1C7JgkUlmnH2yyWcX3TstDSz9rkGWVykV/wf951XUnEKSWX8sih?=
 =?us-ascii?Q?1etXX77pL4/fF42Jey0St44vA+DC8gPFyTKcFHGDH7pMfSEKNp+pBHihIuOS?=
 =?us-ascii?Q?LuCrPfamBX8iBdy4ltScVcCPvRD5j8N69IeU39q2yj5QexlTH7ehkbs3SspU?=
 =?us-ascii?Q?2ORJ+cD1MUJbvt2sGnf7A/4ashBi1Tm6THxhY35t?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB1624.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 59abf926-ac36-4616-9bca-08da746844e7
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2022 09:20:40.7484 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fawlASW9XUKUXzMd9HmBqLAveqnj4jS1LraVFjZkubRUUL9wSh9J+nGY8D7IE7js8vsoMDlBdsWMSFpAJg6t8g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3841
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659432044; x=1690968044;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gcDDYPupt9AWnsJHIwvviza3zUsaIU6rsBCeqTzrz1s=;
 b=Pqwh6WV1bKeqSOzSmXPz2VGhr9xW5uCGbNTcD63sCD/ZlMK4D8Dycz7U
 aVXOS7KZ5IiY4fRj+AELscRQTcvOB//2b2MOmK1+/96xZgo+93bm/wRAP
 J/irvK0UgHEdxc4pROvm+0xOyJ7bCta1OQbw4cdsSLvEshXAGhRpA+nlI
 mxQ5GTYrWOdpC3oz7qNLwXX8JsxDEGDMzFEVGORbxkfQ9RgM4s7PGmXY/
 Xcxw/LFNRycxwfmQaF19Rjg4xLYyGqBoJRpYgbRlk/LT6GL0gp88cCIId
 9xJqxtFMc2JrXJ+7PuHsVfeGszPWQRHQx4P/wJC+pIwJXsa0uY2nPp+U0
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Pqwh6WV1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: Fix VSI rebuild WARN_ON
 check for VF
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
Cc: "Mikailenko, Benjamin" <benjamin.mikailenko@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Benjamin Mikailenko
> Sent: sobota, 16 lipca 2022 00:27
> To: intel-wired-lan@lists.osuosl.org
> Cc: Mikailenko, Benjamin <benjamin.mikailenko@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1] ice: Fix VSI rebuild WARN_ON check
> for VF
> 
> In commit b03d519d3460 ("ice: store VF pointer instead of VF ID") WARN_ON
> checks were added to validate the vsi->vf pointer and catch programming
> errors. However, one check to vsi->vf was missed.
> This caused a call trace when resetting VFs.
> 
> Fix ice_vsi_rebuild by encompassing VF pointer in WARN_ON check.
> 
> Fixes: b03d519d3460 ("ice: store VF pointer instead of VF ID")
> Signed-off-by: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c
> b/drivers/net/ethernet/intel/ice/ice_lib.c
> index a6c4be5e5566..c67144952f94 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c

Tested-by: Marek Szlosek <marek.szlosek@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
