Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BB91F7BD8FA
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 Oct 2023 12:51:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 47F00817FF;
	Mon,  9 Oct 2023 10:51:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 47F00817FF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696848660;
	bh=LQaRxmGH8RwdKhYUht3aJo7felb31S5Z3UnTjRGXwsY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jdk/N9V14ZdawrjH5KHfgHB22pL5iWCqIORRa5mTWAdFUUkgQtiyti+Yn8L3v1rpu
	 BYnXMhnpzDBABPhm96gpYxwoXZabG6eME4cQBPCOTLnmd3j+i212tDUMGa56o/3Gws
	 V94L6lPSJ2Kj+hu3dj/yRs6CJQkjQqJWRLTqewCivwaL9eKNw04qvSgt2AdwKGK9sU
	 YolCKCgMUxu5w6LrxNfr40eRkfrEuMx4jfKtpVD/qgPeWTMi4xNXnB/xAWIf3BzO3P
	 NpPgNUopzFZpgITPuSfzmhwT6pl4oP5MRbSqOFvNNpVctOZtxiGVyCRfwY06A7hXJW
	 BhuLGIeADCF3Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ucS4AePdzSVe; Mon,  9 Oct 2023 10:50:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D47A18179D;
	Mon,  9 Oct 2023 10:50:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D47A18179D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A3DAD1BF378
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Oct 2023 10:50:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 790F6416B9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Oct 2023 10:50:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 790F6416B9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yeINHcyfqMlL for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Oct 2023 10:50:51 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 53E35416B1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Oct 2023 10:50:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 53E35416B1
X-IronPort-AV: E=McAfee;i="6600,9927,10857"; a="369179979"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="369179979"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 03:50:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10857"; a="1084289631"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="1084289631"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Oct 2023 03:50:47 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 9 Oct 2023 03:50:46 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 9 Oct 2023 03:50:46 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 9 Oct 2023 03:50:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HFbHw9UVjJ34d2GqCCbGl1qzdnukZ+CoDuKYDaBiKerWkpm05m2rSx3Ow3TQUueK5XYxNnHfVBs7Gjm6YCiiCxtzEsiiGOxVGzCc5/rBV2N+yrH/CHEJ0nPIzQ6Wsx0RePn4q+qLbWE8oTrkuE57Lyeg/nXtR+0gA7k0Kbt8ojL6vZUWiqjjd+FdsCdNa3Hus76HucX9A+/DZtMthcOih3yO4Wu7KEvEsKif1Jt0Nt0iekDFKj3sebg0UkGfVB9iRq0JZGfDsiNVMzPG4XPfQxb/DzmPG4RmBR44TUPVWlOnCCfangad/U6eZZW3jQzYRtY0kwufuWNf40Sz4Ry9xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HYkK6Fob/8LE+KgxqZI9XRUwPyxrrBZjKxkIytT8V6Y=;
 b=mUBlebrPRSIS6G+HVNoxcNTKaMsi+6+xp/cBPomj21xIDGHSB9la/4IqM3mRlLS5e/RCPS7h+sQDr5SD6Vr5fNmuvky21W0op7qgPB1ZVxj2/XasMAvG1z4qW58XNc8Rq96fm9K/UtztSTq2fDzZjBgS34w8zl/zby50xY7+Sl0nl7Iq1xikGnbanZXpHolC8JrySmiAMWnDhZUHJY7JXcKFw1fo5O0xPWmzz8xX4fIJN1hAbBkTl1qp5no9EXDocQ/Moy45nQQ29I7sWjBWqIS+nRXc/Fmn7nhOVVjURKp3X6NFs06VLYA9V5nDYZf8vs8UITZNZo+VB27Kv2Ce8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by CYXPR11MB8709.namprd11.prod.outlook.com (2603:10b6:930:dd::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.38; Mon, 9 Oct
 2023 10:50:44 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::a2bc:136a:3f41:c858]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::a2bc:136a:3f41:c858%6]) with mapi id 15.20.6863.032; Mon, 9 Oct 2023
 10:50:44 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Romanowski, Rafal" <rafal.romanowski@intel.com>, Simon Horman
 <horms@kernel.org>, "Brandeburg, Jesse" <jesse.brandeburg@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 0/2] intel: format
 specifier cleanups
Thread-Index: AQHZ9imUBhsgBp8lu0qqiq68v2AWE7A5pd8AgAM9zoCABGzLsA==
Date: Mon, 9 Oct 2023 10:50:44 +0000
Message-ID: <BL0PR11MB3521934056BC22A7C4C943648FCEA@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <20231003183603.3887546-1-jesse.brandeburg@intel.com>
 <ZR1slAb0AQ3ayARW@kernel.org>
 <BL0PR11MB3521CB784A9F8B8265C45F108FC9A@BL0PR11MB3521.namprd11.prod.outlook.com>
In-Reply-To: <BL0PR11MB3521CB784A9F8B8265C45F108FC9A@BL0PR11MB3521.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|CYXPR11MB8709:EE_
x-ms-office365-filtering-correlation-id: 880322da-3cf2-4181-0f8d-08dbc8b59695
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: B2hW5zbyqYaa1CGFbwOI4JVsLR4qdg4OtEwRUKCSoKEQSQY0vr02jqe/oULFSMZGse5S+cBoPqWGXPUYf7x3RYI3ezPw5azgmsPsXxP2LH1yPyn8yc6rXxPDKh+54UkJAasCIWuPwyvDAV1xiJKfwZ3d8gyGQ0dWl0Bk80j6t5hSvF6eWXvYwwqaxxZUdNztNbbWnyVBGrzNX++Gjc5hPqYgY/Gioa9pC7pWYvkB2SQXxU3ZpoU6GWJy+6r258K89MqAIBzesNoW3PQFwKr6qWYhjQROnNKyMyUJ+Pe8XkNxAZ2jX1uvxgyxSoVKD84nm45HwyZYZbMMWf6KyrcXY0TWpHH9VaWL7Ms8ZQvQzWvEyDY4kEHhTN8sh5wICrSiJRnaGMzMSI/2RIuqNB9oA4YONvFnCnX0kKjUA+SZlqFghVXz7mFJm04j7QjK50RJJmsQjRHS/mLjW4WEskZa+VeIlEvYdiCnoDVMNbfhNU5QGTgsd0mUUfhbLuib6LYEz5INSJsiwXDbi+T7+2rAH69HZofV6/52kwje0jRkt/ZI/t613o1/hLCPw/nTX2bclxzER6A1SYYpTs/FiwQPvCOpho526p7D3Cmm4B+b1KE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(39860400002)(376002)(396003)(346002)(136003)(230922051799003)(451199024)(64100799003)(1800799009)(186009)(55016003)(83380400001)(107886003)(26005)(66946007)(66476007)(66556008)(316002)(6636002)(110136005)(66446008)(54906003)(76116006)(64756008)(8936002)(8676002)(4326008)(5660300002)(52536014)(41300700001)(7696005)(6506007)(53546011)(71200400001)(9686003)(2906002)(966005)(478600001)(33656002)(38070700005)(38100700002)(82960400001)(122000001)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?kbMiPNM2TCFCC1rLh790afeOs2tc8EQppXz4YYw575erjxrhtawI9Ezagn5a?=
 =?us-ascii?Q?3MUP/ZDbKUTHzsJGjSynw/tt4PqRAaQxPoCfp5R4+ouoipCWDqaeLcsddOvD?=
 =?us-ascii?Q?BVGh7DyJyPfpI1ZEtbPFXriwT7l2jCjd9j0jpjvqaJmPn+Ww1ok8TBns7SpX?=
 =?us-ascii?Q?ZIjXyZXIwSONHlRBD9qcmDMBNVUEigRFvp4QGD+EJ/gb/Dop7fzHfVZjx4gu?=
 =?us-ascii?Q?MYZOmy1dj1ST7+P9GHBX7ob08ko4B2nfO+l5wyA4pdY6qAnWIFXTxDCyWuvw?=
 =?us-ascii?Q?rZo7+lqZg61sYKu8ZzaDWpvEniBSfPYGAEYdJSCRXyUCvN+zVZgY0BxcDAOv?=
 =?us-ascii?Q?KpFBAFw7eTxLEroW7hcpiTvYbZarqTq65qFM1onzLuNGUN5rhlRf/4k8t5QY?=
 =?us-ascii?Q?QDxQPlbP6JUrKNpyueaOPzpqXcjBCMimmy14XziGX848YEPo2em/9BnjFtHl?=
 =?us-ascii?Q?H4jhxBqhRQuhNevb5JdUJV8iUGo8BR5wndWSBU81KMEUBcpm/yphBB+WBsyF?=
 =?us-ascii?Q?NB+rXMJS98iQwwMJGoWKuAOWDh2FBDZqGAzaqFMb1o6urZEankImN+Br0HbT?=
 =?us-ascii?Q?rQNeooGjiiTI2m1HxgSzpXdjmsO1y34g/NFmZPNQvxmAloD1dOvObVodVaDV?=
 =?us-ascii?Q?WoesvzDMyQzHhVfAAWyCPy7Oe/xd2AxkTM9T27mesmwDuEGYaaIAU0FRKwiS?=
 =?us-ascii?Q?jCRwmTIeqdvKcJZ4C9IbzggNfQoe8HL9nerGnrPVWmCBcaM1YHlb6+jFOOiu?=
 =?us-ascii?Q?NCFacCavzlLnbLJt+XlzUmAQ4s9JW5War0V3/qS4HscpO4Mfi66nwBZBlcCa?=
 =?us-ascii?Q?G3rnVNYfK1AhujOVJqkV+BqI313IPfia7tL/iWPjKl/KFPiAcjr9DLGx77Gm?=
 =?us-ascii?Q?+QQQiyLUmyrlsBma6vQO79/jopK9oAJC8xcVDiEtDMCVh+uqLqPFxPxbZwyG?=
 =?us-ascii?Q?zqf8/RUlgfZZBB0AbfijrWt/3sNkvlMb20wxxjHRMxBwEtOd+rRlGMcxJNa/?=
 =?us-ascii?Q?jlGCNUdodYFyDaWoTs0Z+43wh0FQ8aqnMvzW/awXKdYB+Vyw70skyQbdEjZ6?=
 =?us-ascii?Q?5k+UvMPg38I5NfmdjoY2i0IGl2hPy9k2aa/aaQS0VoW9/CUA6/H3eXPxEvod?=
 =?us-ascii?Q?n0TnH3Kn7kIX5r7c0dwYV14kSirM7y6OSGlKDqVsL5lwzDYq8/RPe0kMENIq?=
 =?us-ascii?Q?qjqX0XYn0hJxwO5oQKWNAAmiL8Cp/fLN39Ci989vU9NFk4DJXN8X0fBi5vjN?=
 =?us-ascii?Q?nsZ4H3K/7LjYWlt8gAArN1zNEYcLQfgD1VsOAVLLsBt85fNZOmNcxVZbf3sQ?=
 =?us-ascii?Q?uy5YrTFUNG4M0Ds4TPsLXMBQzFk2qshwBRbHKdGOW8bZqoSQNt1hlkv/8PEX?=
 =?us-ascii?Q?ubE5M3uAXTmjwqcQ8/g7WUf55+Nv8bOJMCqOuASeAV0JQx3jc3HP0jyd7RPI?=
 =?us-ascii?Q?MrpEtXlOBTNmWNRFMyaDe8XYPOWa7RpBdE2oNZQOUZb7Bvpv4AB4k3ISQ1Mh?=
 =?us-ascii?Q?Mka5VCtWomfTsk74qsi/ztd+ICLladGW0Zt8GRPH37piCTsnp0vyEX3HICER?=
 =?us-ascii?Q?uNX/FeFxHX04Nz+OZPlN/mf2AMLfePdFtiBtoyWrt/DzVZ+XFZK2FQA1LH2s?=
 =?us-ascii?Q?Zg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 880322da-3cf2-4181-0f8d-08dbc8b59695
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2023 10:50:44.3784 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 18N+w2BYjNaNe3yruVEapZdV3kPIgoDMUwxSttgshC1S/ICINUsPVTg/N7z5Lv13ONrpPz7lpis0cnN7hdXLp5x2hj8OCLNM0ItjXCSfkwU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYXPR11MB8709
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696848651; x=1728384651;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IFeha2ufu9FVGbo6lhZVhg9URe4PyVdjOZB8fK9r8PI=;
 b=Ifzl509PqUL5kGFTSNs05gr2M/UbKMxExuDHTOyhoaOPgQMc5VLSxXfV
 vL44ORpDMdMDVRviw2wzNtPFuVLRdufQdDqZssGW9Rd2w3PEelPKN6QfF
 w1ME9CBcxdcrxEqSuoUM7ZSFUxLociEUslLfjdtlSCZdA73Jj50fzuUV/
 gc6em3gedPe6YTp84YnbVbA6+uCsVXBv7c+dvt5/7BRaEuW2mKjI5jOLQ
 znzz/k+zX6QJWMcFzOxQ/OF42dMC5iZwLdE0CvdQdmbfg5gFf7CUrB2gM
 VL1ncHLViItHonItOtkfK4gs5/kFlgSwk//r0/7IxSX4EnaQg2VjAG4j4
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ifzl509P
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 0/2] intel: format
 specifier cleanups
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
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Romanowski, Rafal
> Sent: Friday, October 6, 2023 5:16 PM
> To: Simon Horman <horms@kernel.org>; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>
> Cc: netdev@vger.kernel.org; intel-wired-lan@lists.osuosl.org; Christophe
> JAILLET <christophe.jaillet@wanadoo.fr>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 0/2] intel: format specifier
> cleanups
> 
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Simon Horman
> > Sent: Wednesday, October 4, 2023 3:46 PM
> > To: Brandeburg, Jesse <jesse.brandeburg@intel.com>
> > Cc: netdev@vger.kernel.org; Christophe JAILLET
> > <christophe.jaillet@wanadoo.fr>; intel-wired-lan@lists.osuosl.org;
> > Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> > Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 0/2] intel: format
> > specifier cleanups
> >
> > On Tue, Oct 03, 2023 at 11:36:01AM -0700, Jesse Brandeburg wrote:
> > > Clean up some warnings from the W=1 build which moves the intel
> > > directory back to "clean" state. This mostly involved converting to
> > > using ethtool_sprintf where appropriate and kasprintf in other places.
> > >
> > > The second patch goes the extra mile and cleans up -Wformat=2
> > > warnings as suggested by Alex Lobakin, since those flags will likely
> > > be turned on as well.
> > >
> > > gcc-12 runs clean after these changes, and clang-15 still has some
> > > minor complaints as mentioned in patch-2.
> > >
> > > Jesse Brandeburg (2):
> > >   intel: fix string truncation warnings
> > >   intel: fix format warnings
> > >
> > >  .../net/ethernet/intel/i40e/i40e_ethtool.c    |  6 ++-
> > >  .../net/ethernet/intel/iavf/iavf_ethtool.c    |  8 ++--
> > >  .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 22 ++++-------
> > >  drivers/net/ethernet/intel/ice/ice_ethtool.c  |  7 ++--
> > >  drivers/net/ethernet/intel/ice/ice_ptp.c      |  4 +-
> > >  drivers/net/ethernet/intel/igb/igb_ethtool.c  |  4 +-
> > >  drivers/net/ethernet/intel/igb/igb_main.c     | 37 +++++++++----------
> > >  drivers/net/ethernet/intel/igc/igc_ethtool.c  |  5 ++-
> > > .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  |  4 +-
> > >  9 files changed, 46 insertions(+), 51 deletions(-)
> >
> > For series,
> >
> >
> > Reviewed-by: Simon Horman <horms@kernel.org>
> > Tested-by: Simon Horman <horms@kernel.org> # build-tested
> >
> > _______________________________________________
> > Intel-wired-lan mailing list
> > Intel-wired-lan@osuosl.org
> > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
> 
> 
> Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>
> 
> 
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>




_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
