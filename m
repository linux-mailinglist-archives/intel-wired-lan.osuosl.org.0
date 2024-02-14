Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C193A855721
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Feb 2024 00:17:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 29F2541877;
	Wed, 14 Feb 2024 23:17:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lHLXssdEH61y; Wed, 14 Feb 2024 23:17:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 66C9C41836
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707952670;
	bh=UHMRf3zyYAW6WH7K7aYEw7MAJqbCEAXMW/mH9cJFuxM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uLaZzUzysCkmpO6rZ6iVInqHrD6rC+3Xt2xWWcOXm4xGXv3WQ3DepNHKRfcVK8rfB
	 mr+toBQU/rQxc8xRzySwvSu3XMrn6JEVQN4VDe7R9d+26gGhdCseKMSJXisnoDnDin
	 X/Mk4Eet8fn5rbEk+SVxNMVLvdaT/IxJIFPYug0Z1B5jDWxjRw1wqXU4ROhjb3n+M8
	 mTcGM1mVSCSVFtzJdoVm6o4zY8gyp+hh/rxT1y12IfFdRJdYJG4qQdksaq4Zzvy4ix
	 cCQYlKgpOaEi0rm5jYgDYx61cScuTSCVR2bM62o6W50g6Qc5jsr7AdIYO66/gS3SsL
	 4j3ABNfA0WH4g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 66C9C41836;
	Wed, 14 Feb 2024 23:17:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DB5641BF3C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 23:17:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D3F1841832
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 23:17:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id twc8Br9sy4sk for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Feb 2024 23:17:48 +0000 (UTC)
X-Greylist: delayed 428 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 14 Feb 2024 23:17:47 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org EFA3A41827
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EFA3A41827
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=sunithax.d.mekala@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EFA3A41827
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 23:17:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10984"; a="1879345"
X-IronPort-AV: E=Sophos;i="6.06,160,1705392000"; 
   d="scan'208";a="1879345"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2024 15:10:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,160,1705392000"; d="scan'208";a="34159120"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Feb 2024 15:10:37 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 14 Feb 2024 15:10:38 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 14 Feb 2024 15:10:38 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 14 Feb 2024 15:10:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zwv9oCK0YyYG7jtKCcZUYBlyhp4lWeyCYcWBIlIDoDJExPKsmWALPVupNxsKYL3fDDjzIxTopxbZqHP6wELl74UnfYTwwMpNL+n8URi21tGFsUWigWSt5Mjy61/tIdgvL+HNl9cDz0JYNwTWcNm9LEEw8KYZtW/C8iXWlJk+Da3RC1YFz+j4VjDuBa95JBBIvIh69/fmBGB33mh77dXHI4sl0CaQwc/RIz4/JT6rHvrLBf5u0BJEYy8fT3eZcVYbRY+KitJo5DKbWgAzN4+JkSFqTWC1e/RUp1B0WdKjOsdgvT73xTSaObEhtsP+9uzcMIvmvw80AY8OteuSN1skDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UHMRf3zyYAW6WH7K7aYEw7MAJqbCEAXMW/mH9cJFuxM=;
 b=cnxBRYwq06Duo80P9+wlJvzbmJrA1/Fkx6NGHgF8fh2EVjDD6txqsY/4YiqbxCNknqmpCFbQBfzZ3ipF85ryJWDu7AYRJnt25+uSeDc5wa/od2e4+9a/OYrDfmMII8dBncbutSBwxYEwB87a5hnAHEhOeZU5uEmMCUIzhBk2V4Jq4WBC2O1O1DfTEOI9yYwfeEQzXHF+JyMVPyf6fRFrXDkUjp2KD8tyHXVMslCPhjjlfNrS/5i8C6ZgSMgeUyjOSJNcmSb1md4TcaZW3tgOujSaPb+UrIhhkIwyH1kvkYeIX7oQG6ujDt3BQFZPPUjXohvO1ntaX+V5j+3If6bILg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7522.namprd11.prod.outlook.com (2603:10b6:510:289::8)
 by CH0PR11MB5409.namprd11.prod.outlook.com (2603:10b6:610:d0::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.39; Wed, 14 Feb
 2024 23:10:33 +0000
Received: from PH0PR11MB7522.namprd11.prod.outlook.com
 ([fe80::1f24:1bb4:2261:360c]) by PH0PR11MB7522.namprd11.prod.outlook.com
 ([fe80::1f24:1bb4:2261:360c%7]) with mapi id 15.20.7292.027; Wed, 14 Feb 2024
 23:10:33 +0000
From: "Mekala, SunithaX D" <sunithax.d.mekala@intel.com>
To: "Hagvi, Yochai" <yochai.hagvi@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix connection state
 of DPLL and out pin
Thread-Index: AQHaT6nlx3UqXB+qnk2fzJFCsUHrfrEKlSkg
Date: Wed, 14 Feb 2024 23:10:33 +0000
Message-ID: <PH0PR11MB7522E21E41485045721DA8EFA04E2@PH0PR11MB7522.namprd11.prod.outlook.com>
References: <20240125134055.624272-1-yochai.hagvi@intel.com>
In-Reply-To: <20240125134055.624272-1-yochai.hagvi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB7522:EE_|CH0PR11MB5409:EE_
x-ms-office365-filtering-correlation-id: 24fd2120-2bb3-4063-a0e4-08dc2db22540
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3SQPEN6RMo3dTvudTiBadAT0E2ju3p6pkaGFciR/D1e/k4HKIZq6UhjCCQQzBBvWatefs6B3B9+3J/gunoF0IDgQlSW2YMvXKBoLPW0lETqqTVNx+rw9WPFZgstk7befVQ4zjZ4UxLeN9fF+IhBCySgACAYEdl7+mGX3810tHEJtz2Qg2rS21WhcN33thzGgS3xu4Bzdr3HZ5qenFoT98JdeOh7lO7zcvmVjgmsag930tcC2Qjsyhp0Pdm7X32jw/cLTIf0sekyMBDrcZVct9R9oQNeN4aKqiCw6eg1h/DWbzmKB6tcC7F4qqXthixraHTO8fnfEt/BMF24HgKaI0sgblPSU5uZlzDSyc+IZGAQJXCZJS0declO6p4QT0zCcRYeEqVauWbJZ233rDMmwRhzIf4xzsu6NWVofoSn13XW1A5tcv8SgyWYPjU4LafNT7aTogqi4U21hX3Xo0gn2xVvMTGzIfv43eybYkNwyuPm6AiAWbUn1CgH1xfeVmMQwOfgc3je86ojD2KA2qbBG5sdpDxxJq0JaFWkDsOuBunOA1nerMpEWdTY5Ecirw1XmmaKY3pOHktRWtFGxq9RvuuEOaiEa4ZJdQ8OItxTsnBphxM7AkYHxPPjAnwC4yXbS
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7522.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(39860400002)(376002)(346002)(396003)(136003)(230922051799003)(186009)(451199024)(64100799003)(1800799012)(86362001)(33656002)(55016003)(66556008)(8936002)(5660300002)(8676002)(52536014)(66946007)(82960400001)(41300700001)(76116006)(4326008)(66476007)(7696005)(6506007)(9686003)(2906002)(478600001)(26005)(38100700002)(107886003)(83380400001)(122000001)(66446008)(64756008)(71200400001)(54906003)(316002)(53546011)(110136005)(38070700009);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?oTfJYUfT6Q+GOcb6E84aYio8Huz5il7qukfBu/je6Qqvmlaifv88RNna4LNj?=
 =?us-ascii?Q?muRLZ7PoVC7pAIkh2ihj4oqCXySY1SnPYCxQ5Zcgos0psUOZ5g4TX1YRuYq6?=
 =?us-ascii?Q?KAwn0V3Eh1HQ5ak4SyKvcxE9CREr2EC6zH3PyftnLl59XnT8Tm6TAWQ4pf/Y?=
 =?us-ascii?Q?hPhEfqSzYRKTAioeULZ7HyucRB3CvYbTAsyDlhfwYliJH5ETWCIoQGzpXa6t?=
 =?us-ascii?Q?sAnw2jL8CgsRqCHp7CsM823sB9fgvNDZqvyZuv5hIP8kCu42hykpW2uzaTO1?=
 =?us-ascii?Q?njeqorN8SCgBEGFQWdW85RstEtTsmkGx7h2wqptm+rdDa0aOJWkgxx+jYkij?=
 =?us-ascii?Q?wxSIkMrcHselEM4LLkmyy2lOYMl36r4XLXRB4dfRPXytfhHP+QFp2t8s88+E?=
 =?us-ascii?Q?277yh6wOVauubnJ5qvJaautBf1Slq6IJ8CqTBPyr+IRSoIrh7Xd1JItT+rJ/?=
 =?us-ascii?Q?dGT9YgSM+UBEz2+mS3vfrqlXX5KsSbQlXtUtVpfWAcu2BvgqcEMZhwGEx/bU?=
 =?us-ascii?Q?8tZavKnQO26R2OGwlyDaZG5UhkgtF0gmsynlECsh+gA6PyVn0WgUNGaRnCxU?=
 =?us-ascii?Q?fcBLocKfHMbUvKEHPFRA0ac23ajzI6l/sNUewvXIDdmPiix80Erbgd8Ev7yj?=
 =?us-ascii?Q?XX9t27LoHdC0rxC6JTxzdwvEHSXD9uDcFPMfxpHkz4pIx6Cte6dGilOVNVsB?=
 =?us-ascii?Q?sJL38W/H5dGO+8LLxPtQYs6CptVVYzAVFI0K81kHxNuZ+IVdq7yYFv4EpI+8?=
 =?us-ascii?Q?KcXVV9/+a7ga02svZLmzrdorwNKZBWiBceyVEJz9xV9D2QGdxj96Ysn2F87A?=
 =?us-ascii?Q?6h7+b/cDT6lVKSo0Y4xJCugHl03wsGmHjDAvqK4fErnZY6N6w7C/iSQFZHFD?=
 =?us-ascii?Q?oxcRo8orvk/dRsqys6f5eZi3mACrMbLyKvRtLr3IY/R1LLLWFHmGuzhGzIeA?=
 =?us-ascii?Q?agZzNmfRi3/4QEQ2y7QIdNhmMpNqLkOEDsP2DwSsgw/erKqric5muJkzAp3y?=
 =?us-ascii?Q?BFyGLBcm0Xbz+esIm/iguihDrFD5KIWEPpiHiyxqcISno/Jw2AT9xCom960S?=
 =?us-ascii?Q?vGxH2ird2LkaXP2ClMmUSb9WamnBcQmyLMhB2S83LGhx5/+ZZAHX1H+Ldm02?=
 =?us-ascii?Q?6A2YO79gNgXPTKFW2ITLfx31z747Rd40PyHS30ullnoxzFwbFQZcRXMzj1GH?=
 =?us-ascii?Q?MUPjyFBOod7zx8wBkW6JU+HtNJbigs3L1n4MewT1vvaii72quWv1UB1s3zKK?=
 =?us-ascii?Q?L9Lfb2yIfr7tOIvbi8UKVwWCpiAlXDBLDQ5Sz6rwn03sxLrwUwFPuJ55DtC/?=
 =?us-ascii?Q?H3CbvBOzD6CH8SOIQuoGFRwioygpGGzAMg4U445wHk155yWRtdSCpYpHI0Ii?=
 =?us-ascii?Q?kJdajE4CRyvKGy/Q5dvvUuLpVivXSR31v/GL45JA05eawAMu8Wpb7pIFmS4b?=
 =?us-ascii?Q?PNUvRPvqyl9cBzGu9i19BKQHPAsWzIG9jRe0mkALgcOO6xa1zJKbn63x2kYC?=
 =?us-ascii?Q?DaTlFjpoO12R08QIJtx9N8KGI01jSl6H/uDle0+/LmRF6tRFQvFpy/gDjO/B?=
 =?us-ascii?Q?pkBQsYZTRI5mAsMYD3zvjO9ylKkk8F2I7nMBwu3j?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7522.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 24fd2120-2bb3-4063-a0e4-08dc2db22540
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Feb 2024 23:10:33.1854 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DAea4sM0Uz91iCBZumXdHQm8C+Dx6kiPI8aWh35CG0OUsR8UA5eOZRVAhO2IsvBcO3yeNg7ieEthaEMu8K2vArnQFWx/mFcyx2NCXkAzouM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5409
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707952668; x=1739488668;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vqIgCAyQ8DaEBybdapOLLytnshqmiu3BF/CIlq56oCk=;
 b=HLbjUeAeu4Rj3G7gQ1gxx78fCipcdS26wc7pCUqUD/uVUh7pQ34lxWGx
 sh8M/+dlYC1rKVOEackGC8pHE7d6xK1iqcwiRLZvNIE3QMmLVvGDB0LCi
 5i2TwBCimClVZAopWJP2q/6gqkkBXMnl+81av01bpq2Smu+oR1aXpwy/l
 rNokIs9/SKbZW9b/7AAL7jeGMeYoT+c+FF+BNJjEZ7jDt7Kd68w4SIRUd
 ysPGgzzXs8N48oCHecyJGEqcMaAFTmQANqxFr5n12+omevUKaJOGgt2n/
 ur1W3Ro5+C/VuR1/gvk+gjULXV6Gy11R9yZ0LFLCHYSr9X9HvBqq58hx7
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HLbjUeAe
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix connection state
 of DPLL and out pin
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
Cc: "Drewek, Wojciech" <wojciech.drewek@intel.com>, "Hagvi,
 Yochai" <yochai.hagvi@intel.com>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Y=
ochai Hagvi
> Sent: Thursday, January 25, 2024 5:41 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Drewek, Wojciech <wojciech.drewek@intel.com>; Hagvi, Yochai <yochai.h=
agvi@intel.com>; Kubalewski, Arkadiusz <arkadiusz.kubalewski@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix connection state o=
f DPLL and out pin
>
> Fix the connection state between source DPLL and output pin, updating the
> attribute 'state' of 'parent_device'. Previously, the connection state
> was broken, and didn't reflect the correct state.
>
> When 'state_on_dpll_set' is called with the value
> 'DPLL_PIN_STATE_CONNECTED' (1), the output pin will switch to the given
> DPLL, and the state of the given DPLL will be set to connected.
> E.g.:
>	--do pin-set --json '{"id":2, "parent-device":{"parent-id":1,
>						       "state": 1 }}'
> This command will connect DPLL device with id 1 to output pin with id 2.
>
> When 'state_on_dpll_set' is called with the value
> 'DPLL_PIN_STATE_DISCONNECTED' (2) and the given DPLL is currently
> connected, then the output pin will be disabled.
> E.g:
>	--do pin-set --json '{"id":2, "parent-device":{"parent-id":1,
>						       "state": 2 }}'
> This command will disable output pin with id 2 if DPLL device with ID 1 i=
s
> connected to it; otherwise, the command is ignored.
>
> Fixes: d7999f5ea64b ("ice: implement dpll interface to control cgu")
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Yochai Hagvi <yochai.hagvi@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_dpll.c | 43 +++++++++++++++++------
>  1 file changed, 32 insertions(+), 11 deletions(-)
>
Tested-by: Sunitha Mekala <sunithax.d.mekala@intel.com> (A Contingent worke=
r at Intel)
