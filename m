Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53F39587FA9
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Aug 2022 18:04:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 45789408C9;
	Tue,  2 Aug 2022 16:04:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 45789408C9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659456279;
	bh=3AAdgBGSLVOB1nZohI97b4M2w1W8fbLaTg8FkbgdaN0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZZ8XDMDzLhrx7NJ3ybYJv9BNYmqo/nnq7zuIip0NVIi2BJm08ULxL6tZAYKBWpdcG
	 /QDPo4pUyOe06XZHTezh/X18ZxSgDq77Df+YC/fg1wlCVYEqAkaNXc1XNaGM42fDd/
	 1J6tAPRIUJt81dpeYNvfnUvwwX+XMce2PFf35wsRczV4RJfbHeqrMW3J/9+FxW/JvC
	 qhWj/Xb4X03m7/YAEu61jo8Y4HOHWlr614CYzht3Ddn1IM5lMOpPPkzPCzJRNGfJ0e
	 MZRjaWtCWzbDNNwKj0v95crNCF39hu1hdaiYP62r30haKdKfsdrhb0D9TpOSmPQxGI
	 1erni/MW8u2Qw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VaDe8hZjJ27S; Tue,  2 Aug 2022 16:04:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 22658408B6;
	Tue,  2 Aug 2022 16:04:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 22658408B6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 316221BF390
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Aug 2022 16:04:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 07D958149D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Aug 2022 16:04:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 07D958149D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8q8yiJcieSvX for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Aug 2022 16:04:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 62B99813C9
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 62B99813C9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Aug 2022 16:04:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10427"; a="287010147"
X-IronPort-AV: E=Sophos;i="5.93,211,1654585200"; d="scan'208";a="287010147"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2022 09:04:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,211,1654585200"; d="scan'208";a="630766443"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 02 Aug 2022 09:04:30 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 2 Aug 2022 09:04:29 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 2 Aug 2022 09:04:29 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 2 Aug 2022 09:04:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FWdG9pai60Fw6aFfPboB5KQH7qKJ8CB2JumVPudv/tseHfecWXf49p1Ga+tQmUfVRtj7sHOAtVqkTXT347w7u30bCdw9fnv/h+7b2XhglNUb01JHGpyXYH5rAtaItAMD2ufPHflUjF6QwGs3FYOo3X2x88e75F80zFRLVS2ukwDovbhOULaxOCU63mHLfOdwELejtF+l4w5CHyPOKsK17v0UuWHVyV9avIdMqp3WbDYsk9E2OsaKh+CtS1Zib/I9qU3MYnFh+sWc4K/zy+qsSFV6xP9f4/YfDR+mvFCI/VCqessLpylmynjlzgFdYXCxdF0TAzy6tNxhmnQiIkpHtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yggytetfca2WHj7Ocyi7EUG2+lnD5q2YnS5B+kfLQNc=;
 b=JBfCnG8YZURlLC/EGj5QSGWtafyOLX8RPIsF7xykzMV1Xq3TXLJgFObx/HXTIVp5i5dozV7kU50Qo9diuCKY0A3AJo9qFhClvobFfeIW4o5PTUE5Rdk0GcdtjEsdCEe3tZYx/ru0Dcvj7V/LuZ2CIWOjHx5U6EarYccAsUnn3mPQv9NVJAYrwuOT/otjtlnTbvq6tLzzLO4/Avo6VywSEnfz/8ixGS0YItgcEr8kteEmNU9yOyteGP/Au3whc0QaJF9+IGwuDlQDf1GxpbY8SsMqTweUBbFnRYxg4905sqG+5NxJHuBtTds4fvGqj1fcYWCiODM7AI8qYzybVnnTHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN2PR11MB3614.namprd11.prod.outlook.com (2603:10b6:208:ea::11)
 by BN6PR11MB1489.namprd11.prod.outlook.com (2603:10b6:405:c::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.14; Tue, 2 Aug
 2022 16:04:27 +0000
Received: from MN2PR11MB3614.namprd11.prod.outlook.com
 ([fe80::e90e:14af:b1ae:7edc]) by MN2PR11MB3614.namprd11.prod.outlook.com
 ([fe80::e90e:14af:b1ae:7edc%4]) with mapi id 15.20.5482.016; Tue, 2 Aug 2022
 16:04:27 +0000
From: "Sreenivas, Bharathi" <bharathi.sreenivas@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] iavf: validate dest MAC and
 VLAN from tc-filter code path
Thread-Index: AQHYgnQ7BWBh+HEjsEqEJ4A0lMUsr62cCmdw
Date: Tue, 2 Aug 2022 16:04:26 +0000
Message-ID: <MN2PR11MB3614DC2C3D4D270427BA56F18E9D9@MN2PR11MB3614.namprd11.prod.outlook.com>
References: <20220617175000.2168164-1-xuejun.zhang@intel.com>
In-Reply-To: <20220617175000.2168164-1-xuejun.zhang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 851ea292-cee0-4748-e795-08da74a0acd4
x-ms-traffictypediagnostic: BN6PR11MB1489:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: n+uzZKiSs/H/0UZsgWXAQ5NNVzGdqNyI9e4EHp8BsNwxLKkF5fVJhOj/vAn/hVDKmBn/NbWQpnsveupked0DMhpTr47zZ2+WRbck875i0w2MFAPdDBLnqLF3yErmAtkf0Q8taIqTTiEuGClTtNzsd6bxsOIretC3o/lGqA+Ay+F24ppUkDF2caz903kmO5X98+apkXt5TY2XxEg9z6Z2lXSuwiZ9qFNYES+X8chBh0krkSa7btIgGaVRUdiU9nQ88KO9xIR/1/u1ba/Dl48+rCPTTMfMqfGRI0DQ6bjVEc8kwTBuUxxllk7fDbCY8ZZlyoZJ7soy4NSthab0Mk+HCnGQg1jXM2r94CdL6X2bumccFVbCLz8dgfRAYaDrwhF3gko+UUHfKfW22zxzf5AVBBWAINKrSfG3u+TkOiIiyDNae0JpPwmQJMVj2Emlt6+mtIdBbiYOGfZaiBXrRjG/cEqCLXP5MTNJ2ro2BVBv4ZquZ+X8DJ30wyHq2yM7C35PQb3WMqVd2zSOSpGjRX+YkcfvkZxk4BFIzZrv0WLB1WqGao+O6jrnSeQI8ollYgCIZ1rwYcw0HWZzjCUpqo5rdo5vk/RZ3vHmMJdayFWquU7Ws27IYPkYBZx2JSWCR/a7ltGlT/dVAZd5zvP1ZgpFwIE2zQIv/UagaUBE+uSTc4XifhIogfEsgmevuzmjurrIQ+hcsYcR5TkP0wgLlDQsBxrbe/qEbICiaGyQDE8cQy8P8zGqZxyc0jD8dxY7L/aU5iU0mIDBppJF2oJb5Co42vUjmJK7rRB19EV5Pyj/inY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB3614.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(136003)(39860400002)(376002)(366004)(396003)(478600001)(33656002)(83380400001)(316002)(15650500001)(2906002)(71200400001)(55016003)(41300700001)(53546011)(66556008)(66946007)(64756008)(38070700005)(66446008)(66476007)(26005)(122000001)(6916009)(9686003)(8676002)(6506007)(7696005)(86362001)(76116006)(82960400001)(8936002)(186003)(52536014)(38100700002)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?QuJ5DnG0utX5kUBvGovbM+SnNiFd1nZtcPSR6IDt+paGd8+jCZP4EW56rv8H?=
 =?us-ascii?Q?VbuWvvEgDNhF5VjrrJ1/oFTN2ZF9zgLIakhNFnk7FOUz5GKSM6c3kMcVg4hd?=
 =?us-ascii?Q?fFt8R0DTN7qmgHAkwLyqNfLgNYHUhXo3Y5LllEsh8Tut0bA+4GFZgbY5MnaV?=
 =?us-ascii?Q?4ZW8CXl9l1Ug55Z03UO5b0w/f3w30rWA9QbeTdMFB/s0uY/A4huKY5lSID92?=
 =?us-ascii?Q?8Msv4Fg0C4ZaeSnK4IhhU3+ZFt7voMOrkitQmicB9dPwULLFJFmUvzGY+aWi?=
 =?us-ascii?Q?6k/0XEZ778z4bJVHBYPtjG7QA61zsTHkjh9twthiZzwvZSoCvZ2jUxE2ey/I?=
 =?us-ascii?Q?Oohf5Y0+olEVvbeiPb7S2J2poYDNSw5nct5E0r5XGGN4JoaLmKkIEa+a6s0u?=
 =?us-ascii?Q?fhxvlyOsNeXgEfQIqH8u/lh//86NUOb2YfiVTfxG+cvT5xBRxkmWnXoAggZK?=
 =?us-ascii?Q?xyIpXmx3YhCeXRW9fDAHbs6unJZnspHNWJNFCodkyYrXptVQIIyCvAV/pItB?=
 =?us-ascii?Q?ltTA+p1c3maot0sfsZ7LZosStmZqKMlh21np6D8k4f57H6tJXrSP4RS3ka1G?=
 =?us-ascii?Q?FLygH4TZGOCXlma+lQLOw2oNdXLyQuAblbQlurXhrzoXj+HajC8ZFiqRW/C9?=
 =?us-ascii?Q?AZdSflzlgh3DN0eTYeRb9MYdnCNNMSis2PvC9Gtz3Vv0ZYjPHom9DHHCTTrk?=
 =?us-ascii?Q?FPlRI5INEs3BmkD3kO4G1lCV+hg0TCQGLeZ5IkjZgnLbor55rVQLyloCi7wh?=
 =?us-ascii?Q?I+17d+iDU+mPXSz/uC6elm3GZub94oPEEByotssPPDkDxSqmCNtsXUKiTqEe?=
 =?us-ascii?Q?kdkz5mwH8CspDZlomTkm+8eMXLlgVQvToRdlk8bLeJa9CRiSnDdRyQgU8jTU?=
 =?us-ascii?Q?skZgFMoJL+BWuzApPSKPbPhTZHFG26zOGANWFF/c42qSFyzepfM8SzW9nKtd?=
 =?us-ascii?Q?/8y9hWTx6PQ3fAXGnbN8uLmO9AmxxrgiyHWBBRY5rReG7A0O64AI9BIugEur?=
 =?us-ascii?Q?gCcZxjRFu5wiHJiBeUpes8ru779R/W8vaS541B6alba9sNPVgYl5DoJ9rDKh?=
 =?us-ascii?Q?wpPrZO4SDcjmRYOnZD3SOkECxvLiQ2UVHQV0KdIZpeDoGmHbOesof8CYF844?=
 =?us-ascii?Q?fFIKds2D/bkNBoWfYp3o703eQsZeElr1zgz8xno0JJBgPRexqpyxHp+61NoE?=
 =?us-ascii?Q?2x4aDwTIe782qDYFdkgMjF/FBl1FzMjy1KwdXNUUIhTuubjSyoTWaKHIUNiD?=
 =?us-ascii?Q?RGT2XPUxatpm+Y2buS+clS5TkDb++26BsZcNWh5OXGmVl2oNHU/MrA0dm4Xq?=
 =?us-ascii?Q?zpI2f4CCVPxRZs7SJ1gTqip/Jr7FwFa8L9x4D/FdiRS9TbjpXGWOdM/TSssR?=
 =?us-ascii?Q?8XdyA/Z1yuDWRiHjm9v8KEjnF1ZKLYNPF6hPotO9m0Mmto9zbK5VzA038Ezk?=
 =?us-ascii?Q?5jYjnLOczqunz6m4Ji2sHnl/pQ0cRnABl5sEBmL/HVo8mvW4W5BQ8WvVyWes?=
 =?us-ascii?Q?6/HnaFETY+gVpJosTfDrPlNXiY9avY4rMR9agEJEtoIs9YRwbHMWEvx3noMV?=
 =?us-ascii?Q?vwzav+L4N2wfZJUChNawDfi1sPeKLZdLUdOJvprIYEXoWfYDlrsh5+XnBWZg?=
 =?us-ascii?Q?ng=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB3614.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 851ea292-cee0-4748-e795-08da74a0acd4
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2022 16:04:26.8944 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cVgUqoGSFxG7XLpr7guxas4CotbhPKchY1/jqObvB8mqX0q+izUw4lALQPFZbPX0GKzWac0ZxJx/p3NA8QORHAbB7JYgNiKrHwXoeXfYWpk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1489
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659456271; x=1690992271;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=RDDY0D+8fWBmS4mel0ncaPib0SmPTcuWK0+4iVm/afk=;
 b=LY7eigR/mbWyrG94FXBMJdWPFVTs7cK2YVMpBpSV0xy1ijuaeLtFzvBO
 jEklR6XrKaJ3uzK81uOXIicHA1iEVd52KkYW2EgpmDxC9rWttbjX0W5Fp
 umPXKHymJDD0mFOtKT4pb6ygY7QH8R5Iujs9rcai7YAbmH1C8bXzmXMMl
 E8FiR8JCadqnH3JBIj3rz8Am2Xx97Y4mSxkPaOC0sVjyVP7agrf3PmwMa
 S6sUt7Kddl+Bq6J3ASQEjZNoNrXW7eucamFbEm0wtBYLHkPG2bECh2b2J
 voaEWlzphZIzd3o5yYrVht3xfsyJ0urYTjdLGGNO3x2aMlLoD0+Vm8TRs
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LY7eigR/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] iavf: validate dest MAC and
 VLAN from tc-filter code path
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jun
> Zhang
> Sent: Friday, June 17, 2022 11:20 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Kiran Patil <kiran.patil@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1] iavf: validate dest MAC and VLAN
> from tc-filter code path
> 
> From: Kiran Patil <kiran.patil@intel.com>
> 
> Before allowing tc-filter using dest MAC, VLAN - check to make sure there is
> basic active filter using specified dest MAC and likewise for VLAN.
> 
> This check is must to allow only legit filter via tc-filter code path with or
> without ADQ.
> 
> Fixes: 0075fa0fadd0 ("i40evf: Add support to apply cloud filters")
> Signed-off-by: Kiran Patil <kiran.patil@intel.com>
> Signed-off-by: Jun Zhang <xuejun.zhang@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 62 ++++++++++++++++++++-
>  1 file changed, 61 insertions(+), 1 deletion(-)
> 
The patch test is failing while adding a filter with MAC address on VF of a Fortville card.

#tc filter add dev ens803f0v0 protocol ip parent ffff: prio 1 flower ip_proto tcp dst_mac 6e:a5:60:1f:d6:54 dst_port 5555 skip_sw hw_tc 1
RTNETLINK answers: Invalid argument
We have an error talking to the kernel

Dmesg Error Log:
+20.796049] iavf 000:86:02.0: Dest MAC ff:ff:ff:ff:ff:ff:ff:ff doesn't belong to this VF


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
