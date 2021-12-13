Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E757473336
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Dec 2021 18:48:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 93EF0401B2;
	Mon, 13 Dec 2021 17:48:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Jcl7f8H_-Y14; Mon, 13 Dec 2021 17:48:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8CF85401B1;
	Mon, 13 Dec 2021 17:48:46 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 735301BF3C4
 for <intel-wired-lan@osuosl.org>; Mon, 13 Dec 2021 17:48:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6174080BCC
 for <intel-wired-lan@osuosl.org>; Mon, 13 Dec 2021 17:48:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com header.b="LQu0UKIk";
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
 header.b="BPgbGZV0"
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dDszC5ssZzkB for <intel-wired-lan@osuosl.org>;
 Mon, 13 Dec 2021 17:48:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C8E7380BC8
 for <intel-wired-lan@osuosl.org>; Mon, 13 Dec 2021 17:48:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639417719; x=1670953719;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=KdgfudThJSmbtMxEKrdd2lY3Bfm9ONt2jBcbUs7f5ec=;
 b=LQu0UKIkisKbP7PzYPfnfrlbS+NU8jSC6x56plW4hTKM/a4adCk5RBU9
 /u6OglDnVR9TPlYVoKpRUpgo17/1UIWP45XzRSWREn5tNBpHbIzFM3uWL
 pG2b70w8pFkVy3fh8UHL6Ycm0ohd9sVwb1MWyYJ1Ddj9ijkTLJ0KyEB1S
 N+KC45uW21uB+7rUGFAxk5V/GkoXKxlN2KXHodDGlzjR+EpzYruY3rMCc
 21n72Jxh9NYh58QEk1brfAHp3D+0aFVoY6ISx5rXbIurdrqSPMRD6M0P1
 x8ksXSodqFxVLbjiVblKQL0HnHqHqSWW4XC/holIQUmUtlO0bDA7ypfc4 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10197"; a="325058582"
X-IronPort-AV: E=Sophos;i="5.88,203,1635231600"; d="scan'208";a="325058582"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 09:48:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,203,1635231600"; d="scan'208";a="463462432"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga003.jf.intel.com with ESMTP; 13 Dec 2021 09:48:38 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 13 Dec 2021 09:48:38 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Mon, 13 Dec 2021 09:48:38 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Mon, 13 Dec 2021 09:48:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oAByPdxq5ZxpKfL6axJL5c6yw8oArlrJIb0303La8qDwW3vx8lPTYW5s6m3h/kK4sj/lYhVO6FOY1qtaDnYJzOs2aqrfBHV7MPX8l54M14xmqbb5LYk2LclLKnr117U/F1IBkbT4lZ6A2ZzZ2ABHCjr6xADZ35CV/B9ompEbZA10K+vWnjfWOTo6lTKRgXJUHV9o9XUIyIWOn1+UquW3zRGxWLRESmYe5nd3fZNpZuiF9sXv/0kMNk3TW/RsRMCMmQX/oczJgJn4o9mbfKgeCu1KKGZ3UwXFgdMuMKWgRiEcZoy4cTvKl37BgiUhFr3eKAMKlm5fXXeuk1UV5Nsssw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Dx3iM3l+lUGKwraGj4v/wEcJ+WHKTGVCPMF0dybQmAs=;
 b=DdOVH/GA8HSifsjgg8D1Dh28cTZFyamFSesjxV7uSnupvtwOKFKQXUAz/fBU8XihNn+cjNFnyDXbIvV0gShvB0BWcGbDYWWxaRPq9QfluBkUrwHaOcfWlmeeUVyqSLtsPGaKkEZwqbDnYTpB/vIjtyk/YCz4xUR5uBmnmpFjqIyGI2b6lXnE7GoqW9cEMVWnCCkeHlXdYYrlAIMXa/hsIALEbfSx5R0jNxOqLH7i06Glbec/V37QwU6hmxRa+WYXSeo7nWgbZhgpcgz+Prm3StVW/7Px5B134y0s20BrlgTyEb1Yr1Q7tNLJsi/5TPrGaqYKdvGbIXQrITQ01+86vA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Dx3iM3l+lUGKwraGj4v/wEcJ+WHKTGVCPMF0dybQmAs=;
 b=BPgbGZV0ow9AuWvn0dH6EhMVwiY+VbE+KSURzXnJSliUf1eeXiPOUWm771rADG/gowArhbd79Xd7s0U2J2As2jYMC7tE6jRIn8qoWCUPRNf3J5gklpIalhrnIELg8HFHqcWRtHiEabqT/vFce9o5IMHeEjFh2TjDoK5w5Ei6IAc=
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 DM4PR11MB5568.namprd11.prod.outlook.com (2603:10b6:5:39a::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4778.17; Mon, 13 Dec 2021 17:48:33 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::3114:bfaa:f64d:684a]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::3114:bfaa:f64d:684a%4]) with mapi id 15.20.4778.012; Mon, 13 Dec 2021
 17:48:33 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: Ken Cox <jkc@redhat.com>, "intel-wired-lan@osuosl.org"
 <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [Patch 2/2] iavf: Prevent reset from being
 scheduled while adapter is being removed
Thread-Index: AQHX7B2AGlFtIuJ7hUe11vaIogqgpawtK16AgAOPoyA=
Date: Mon, 13 Dec 2021 17:48:33 +0000
Message-ID: <DM8PR11MB5621CB277D30AD90DC758AABAB749@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20211208102153.669338-1-jkc@redhat.com>
 <20211208102153.669338-3-jkc@redhat.com>
 <DM8PR11MB562113838E512BF4DEFC2F06AB729@DM8PR11MB5621.namprd11.prod.outlook.com>
In-Reply-To: <DM8PR11MB562113838E512BF4DEFC2F06AB729@DM8PR11MB5621.namprd11.prod.outlook.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 525c0502-9541-4fc2-9053-08d9be60c847
x-ms-traffictypediagnostic: DM4PR11MB5568:EE_
x-microsoft-antispam-prvs: <DM4PR11MB55684CCD22ED178D86A60BCFAB749@DM4PR11MB5568.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: aLrwxjP2jyU6ri5HtTru8SJVcst80uX3gvlnDVj1gySwbqSNuWyLNtfUWQPVfiZxPTEWAz38bnfc3XsecaxD/p8xx3V2Hw50Idl8B2K9SVzQF7TeVFZAfusa6JLijr5Eo4olgzRKLf9f7sWVbXQ5U8QlIFS8TV+A3P2TA2mtgoMRIW2E7pPYD1ggy5+L79DysOP3I3uWGTuDh/vpWXsGekay4z5t1DlBWuVAB5KPyHKbcHjMBSWW2xRUMyxJDCsNEEF1TBwAYdZz8xmedQpxreGSZ5N9Rpy6iU7PUnujdh7/SuNCOOX8TBBQzDofIzpZB+FqF1niYAaBROhOgwjz27d8v3O+K70WApIazgAS4pzjYtY6vP8+96jmsqam3OlfhnQm+deIIRIYnNY7ocUiEN/+tbTVILwjtXtefu2tLPs4xFIfFE4nyT28qL9vRC48xJzd7HRvLUce3yMix72XhSSS11MfiGORAdzOQ2qAg0MfSWBFm/YaCl7JF2tiUYxOdI4/EbRgfFT8lFqQbex0d9dk88xKvbDUqMRYgjzPkMaZMtu8S/DBlRTJKAJD71REExf40WAU6vY80DK7p3QSUhptsvwvxItr43qyhZRzUUqZOeNp1tWl2LHtGe2mKHVoP7QS/J3nJzqAJUjgirKxlSgsCGHmJvSL7qB+a7knyGrvVTcRu/irMiTGWvE5GLrkTOaEPvGejOp3N2U84NSs3Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(26005)(83380400001)(508600001)(86362001)(186003)(71200400001)(38100700002)(9686003)(33656002)(122000001)(316002)(110136005)(2906002)(76116006)(6506007)(53546011)(66556008)(66476007)(66446008)(66946007)(64756008)(8936002)(7696005)(52536014)(55016003)(82960400001)(8676002)(5660300002)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?+SPlZXGonxjyPeOHqHBOcU+pE28F4JgBkjOIZtA4A1zncSVEnmntunSNxi?=
 =?iso-8859-2?Q?IU3SBJz8nqjHBCFkGyk2Rt1DM2vXoPu2CRRe+sNy7JY+vqUBdbZ0UtN86C?=
 =?iso-8859-2?Q?6jPxKTl1hfv+PSh15m+uc6zvTomHxn/9syBAvdaG+XR/JUkOA8JU1rsI7X?=
 =?iso-8859-2?Q?q10BLJfhuoVJoFz2ZweM1Wo3GUYmM+ugOm98WH6MOBJgD07K25rbO5SSdW?=
 =?iso-8859-2?Q?bg9P5GAZNXc8l6dyhxAV3VBjFWCaeuh0uJMEvwbFYXlUWM/Rg3b6gs9Q2N?=
 =?iso-8859-2?Q?yNGymsBMCEDlT3jA+WIcF1/rr22J4lYxaY3DUTYp1qlzIThx1euuvtAeXz?=
 =?iso-8859-2?Q?Xzp3/wh9w8FZY4KV5Io1GrPFDIAzqCPGmHRn84J70RPhGLs18xPWLD33pu?=
 =?iso-8859-2?Q?uv8lH+1Qg2MfKv1o0X9nbyT3S2BPzlFTs682+i2KBcqVuwsVJ4bZ2j6FXH?=
 =?iso-8859-2?Q?IWDqYWe1A9Y397k14cih//udF8Xz6Nzmkx44ypPxha91RwCvqvnspsNBHa?=
 =?iso-8859-2?Q?o/GJSJIlk91BwdBCggcFVTV0QAP8VkR8bzqAIMViMEspjNmtzCHGXpEP4R?=
 =?iso-8859-2?Q?kgEZPF9+N/JqLFb8Dhz3SFGGkl1lYigk9iC0p86dsYiLZm/3Mt34O9+blW?=
 =?iso-8859-2?Q?UA9rvP4dShzltO+/csrowwSXNt45+ot6GqHjofW7r/J4uFLASxaBi1LWjG?=
 =?iso-8859-2?Q?3qWoZL21PErUG05xyoWsgP1pnDJjG1Y6CF1WlVVBfI/IdkVO8VojsQsqdg?=
 =?iso-8859-2?Q?wvhpxsCnAL1ZaN803HbA8yapjuaWeHcKNksvTlm1gl81V6ZLiVusnpCCaI?=
 =?iso-8859-2?Q?oGapRVjhhEmKeUL+YqaW09sM5CnWLsu64xn5l49ZycYaiL3rLYkLhEdlBH?=
 =?iso-8859-2?Q?tTJjzL9a2Wf7l+Hywu2v43oNnGjhmZlk7DWkCKtDajVbpw1OR+uP6NPupx?=
 =?iso-8859-2?Q?y3ddIC1zRxtTcrLSoHG6OITBfDsORy+/Ykl6DGzCmIBCgkUOqBGb/xBZpD?=
 =?iso-8859-2?Q?ENVclZOc/FmKOWZ6R1mQGL71tOzJewvf2HUbaR7XghaAo+XiBcNnGVCnxv?=
 =?iso-8859-2?Q?CYXro2jPjT3KoSGY06yDbQeSNwF2uQJAzZ3JpBetXwO4yynET4VKwFtPyw?=
 =?iso-8859-2?Q?ucDS5dfE2UHhPpGoqPorki3ywlIQYITpju/TifLGeGu3m+Sd4eAzZ3cMvz?=
 =?iso-8859-2?Q?O6mU4VaKdMwUsYdmXw/Rh6Gft17b+TLtldC6mMChh+CT8sOcUfcBEBVOAj?=
 =?iso-8859-2?Q?IXyGmJyKMQnykxAUdg+Den9oLiu0qo9d2oyPdWLQZPXI3ZMqHDF/kFchiX?=
 =?iso-8859-2?Q?7Y1+4dfb7SauPWzbWzpaLKSJIhdAWPMbkjZr7wDbQeB9zLQ7eH+EYeqzGH?=
 =?iso-8859-2?Q?2OmWd0d/pV9jSdMKsqlxmNXnC+eyttCA/FdtAVEqlrfqpu5G9nU9w0EqLH?=
 =?iso-8859-2?Q?a0J+Ipsm/Dkprzg9XflSuzX5Ma3Pjcs07PdDYcy5+djFmba+B37nCvw7ey?=
 =?iso-8859-2?Q?jX6iUujF3KgWKZJRAtCldHdk2JpWmCNWw6t+blZKyHGgujrpKLjbt6+Sjw?=
 =?iso-8859-2?Q?ZeARc+vKVj01g/LDrklp3Z3AG1W0mwbH+OCtZ9+g8ub23cEUaiakj391H9?=
 =?iso-8859-2?Q?kU8OGy9TN3emNT/XMViAT8Gy/OJ0htTpbQiLOmlyvyqTeaGf/YFyTt+RK7?=
 =?iso-8859-2?Q?WjDU/WYWiH9JR+r4x3KHIiyWEJS1aT1SvyigE7y7gXR/Tnz3jcbjVxUfU1?=
 =?iso-8859-2?Q?DvPQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 525c0502-9541-4fc2-9053-08d9be60c847
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Dec 2021 17:48:33.4602 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 693VYwE4CfTBp/K5NHlhAzVZKHUvPUqY16aKr1YzPjEQRqtToT6tWHHwYNbHEMnq1oykCtfXmHBWE1Oq5xe6eeHdeDyHggvXVG0KeXB9/ps=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5568
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [Patch 2/2] iavf: Prevent reset from being
 scheduled while adapter is being removed
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
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Jankowski, Konrad0
> Sent: sobota, 11 grudnia 2021 12:26
> To: Ken Cox <jkc@redhat.com>; intel-wired-lan@osuosl.org
> Subject: RE: [Intel-wired-lan] [Patch 2/2] iavf: Prevent reset from being
> scheduled while adapter is being removed
> =

> =

> =

> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Ken Cox
> > Sent: =B6roda, 8 grudnia 2021 11:22
> > To: intel-wired-lan@osuosl.org
> > Cc: Ken Cox <jkc@redhat.com>
> > Subject: [Intel-wired-lan] [Patch 2/2] iavf: Prevent reset from being
> > scheduled while adapter is being removed
> >
> > If a reset gets scheduled while the adapter is being removed it can
> > cause a panic.
> >
> > The work_struct for the reset_task is contained in the iavf_adapter
> > structure.  iavf_remove() eventually frees the iavf_adapter structure
> > so if there is active work scheduled it can cause a panic.
> >
> > Signed-off-by: Ken Cox <jkc@redhat.com>
> > ---
> >  drivers/net/ethernet/intel/iavf/iavf_ethtool.c  |  7 +++++--
> >  drivers/net/ethernet/intel/iavf/iavf_main.c     | 15 ++++++++++-----
> >  drivers/net/ethernet/intel/iavf/iavf_virtchnl.c |  4 +++-
> >  3 files changed, 18 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> > b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> > index af43fbd8cb75e..3cf1679153604 100644
> > --- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> > +++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> > @@ -519,7 +519,9 @@ static int iavf_set_priv_flags(struct net_device
> =


I'm sorry, this was not sent to me, it is still untested
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
