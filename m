Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B565283BD15
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jan 2024 10:20:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 42DFF43545;
	Thu, 25 Jan 2024 09:20:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 42DFF43545
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706174431;
	bh=bEzuGiAwJFCvxqlFMIIyXDg/GHXb2kA6t1JJPRmHY4k=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JdFQ20OXp8Tktpni0zqu+Bpb4mfkLy+uDmWNEo9gSIg2XvcoLV5K8/emX+PptbixR
	 uA24trFHtf/t6ShRnDJgAFa9o+v2pZWSL1JFyXnpqzIAOp30nESZcqTNpPXgJQfg1K
	 N/qHqzhKdYBPd4mT0m9GW62ZycXIUkwyxG26NhKuTiBjP2sB3rpL3A4OLh5P2sWIOp
	 ROVyaykI1rBLG5SqKkpdt4f8blCX96w+/7G/B35QGu6kPVskmmzQ/aEvyRTXJw9pVA
	 OKyGDEkq9h+jzdnlv7aaVA74gmKB/O+S4j2aMekP8ryC6NPLycvwqeECKANE5EP3jN
	 RI+8PW9OOfcvw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ArPbmS0_Mdmg; Thu, 25 Jan 2024 09:20:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D5E7E401D5;
	Thu, 25 Jan 2024 09:20:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D5E7E401D5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AF8681BF301
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jan 2024 09:20:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8B3E541DF2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jan 2024 09:20:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8B3E541DF2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4rCNkJUB_32S for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jan 2024 09:20:23 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BBF1C41DAB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jan 2024 09:20:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BBF1C41DAB
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="2000703"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; 
   d="scan'208";a="2000703"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2024 01:20:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="736259118"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; d="scan'208";a="736259118"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Jan 2024 01:20:22 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 25 Jan 2024 01:20:21 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 25 Jan 2024 01:20:21 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 25 Jan 2024 01:19:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hKdezTAV5y4tGo9D9iOooPKsJRYJ+0eugAInGGdJXr75hZsKZrhJKNqOy1bjJdCZiQ1LWYkQho0knJTK9sX4SKeuOOumHZq7GThPs4aA6mAmSM9vSjDJ8d+RC0w9FRc7dTLuZyqQeg41SdfJ4IiHffk+UWSQiRvYphS/cBwroIdVaQEI4YwFHE73snAtJf5u+66mPX68JXM8x9CyesIyoYPneDDYl3KZySXX++Af9Abvk1fPAMTJhyeaGMd7M04qf76NbO2eF4VTD0Xg5VAAyS/9O2wzuvv144gqC3VURT+rnpvIyth1IDAPuKxHt0Mp3idRHNcetfYYUQnu/gEjYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bEzuGiAwJFCvxqlFMIIyXDg/GHXb2kA6t1JJPRmHY4k=;
 b=PAr4K17rYiJuVY55wErmpg9viHEnxzBexUJkiI9Ml1sf48b7xRpqaFxnROaaWBHYCndSBzLOlYMT5kZzaP9v3I9EjUnGtMND630bVQSZHp93fmmbeBonwRNxGECYxGxY+N2c2XKdawHd8nG0IOphGrIcn3fN89BVfs8x4V4HOaXJcSO4u3lwd4GJX4lYpwc7MfmTSArABNcWp1eUMY3+zwR80C3rQrMGsh4XlxVSfT6DZAhlM+/Pe0ax+8hksVqHeftcF3+GqTLbd4Rsk5UQnOJW/GQcoD6FabfjKgsQEEBWwhQpRS1Wx6u8dIzoy1RZ2EdPblTNUqJyjRoWy2fxDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by MW4PR11MB6837.namprd11.prod.outlook.com (2603:10b6:303:221::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.26; Thu, 25 Jan
 2024 09:19:46 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::5fa2:8779:8bd1:9bda]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::5fa2:8779:8bd1:9bda%3]) with mapi id 15.20.7202.035; Thu, 25 Jan 2024
 09:19:46 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kolacinski, Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v7 iwl-next 1/7] ice: introduce PTP
 state machine
Thread-Index: AQHaTepDPC8wExze102iGJ7TaVLnq7DqQv0w
Date: Thu, 25 Jan 2024 09:19:46 +0000
Message-ID: <CYYPR11MB84299C36FFD8568FC42A9009BD7A2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240123105131.2842935-1-karol.kolacinski@intel.com>
 <20240123105131.2842935-2-karol.kolacinski@intel.com>
In-Reply-To: <20240123105131.2842935-2-karol.kolacinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|MW4PR11MB6837:EE_
x-ms-office365-filtering-correlation-id: 39396b95-2997-4cd0-5972-08dc1d86c60b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WnUttzmbWCernpJf2fC5Tp40ev1baN9H1V447BO4S7PwI5PIAcmFbpN0l++SMer9YlD87oWp2WSdQb+6dUhLScWdUDosN0ikTzHakiZINUwCghQf4h6VZFoBA4LM1artRO6pjkIj1umFeCgInH0XBZz6al5l5klXT8A+vWgX0rqhPCmrS1cifBIm2GMeuNz6d3HYSiv9tzxq5EyhSzSy/u1dCJfH+ZlQIZKllSuX0R40yvYTu5QrFC04FxO0VeUD8379PzkxsH3keG8SlnHzAPHyDAE3duSpKIHz52Y4IeArKxpDMOTss/ODd4b9oTyM4uSGIPBKIZ70y/svuvtGykNCnuqEFclWjVR22owXHJvpgdjAzXsp4OJpRrH/MFn0tpuoSusAuRxUp7quLJ5xXi33Y5xrut7ybUmpXOkNWV6cQY73ULY7dCg0fQr510KgittfVACHFMdPkm4lSkvwybz9GteDKn9kxVhMHWKrNfwsPlIGgjEy0xNJJyx6ksYrZpn/a15Pn+bwrptZzE8YcB/IMknh3tnCZ5JSg7Zc+51bSOSKKZMY+TsMa5QCaHseV23YSUQ6wmUnIQv/jLfPhkGfnw7NBwFIUzIG4EwrnCNn1EHseZPqq18hUiXB19zK
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(136003)(39860400002)(396003)(346002)(366004)(230922051799003)(64100799003)(451199024)(186009)(1800799012)(33656002)(83380400001)(2906002)(122000001)(52536014)(82960400001)(4326008)(5660300002)(38070700009)(8676002)(41300700001)(38100700002)(7696005)(66446008)(76116006)(64756008)(110136005)(6506007)(66556008)(54906003)(66476007)(316002)(66946007)(53546011)(55236004)(478600001)(55016003)(71200400001)(86362001)(107886003)(9686003)(26005)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?kUfidyXmMXaYC4ZUxhjSVdVc/dFJ/98H2iQBIUdvPDsnMebQUDHzo3NmHTGU?=
 =?us-ascii?Q?HJDFVO3PqbwerbDumM1fGLZXIkO/DlQDNSxMdbtHO5nejigRmVjy0yKvKZuD?=
 =?us-ascii?Q?yeh4bFQVwLcyXgox8j+57tV8Y9GrqThgnnoq91GKBtJLgKaoARCzlYbZkw7B?=
 =?us-ascii?Q?DO/jqDcAXzIfyXhRU5x9Sq9tXEVRwHi3s9Ef0vXty3kfhCYKNeKWQDS5mVxy?=
 =?us-ascii?Q?6r5+nedDBs6/TGPogZ/nTTjVBJqLTV0cI3/y4ucG2lfUWB+Vj/XIGScN3Zmz?=
 =?us-ascii?Q?njcedMxJuJ+J2nAHRjZrWiLzOKF/xYkGF9kBIdqwudy3Q4kWlCOt0tRHVSZy?=
 =?us-ascii?Q?p8rr/DkMBFfEUyYcrc3t0EypQkjJUiEQCvmFanoEPB4AhO/KFOdiVjOt9/jz?=
 =?us-ascii?Q?8mNl5l70m5tgFxYDWikoRZBd9rRL9a2CHFsWt/aoLbTTUnZl7a3mD89gvHUU?=
 =?us-ascii?Q?mUHKt4L9gNiVpoknCzGDGxxWF/mA6kHvmWvLkmesH5sib1tVUM+kvKsCzLWh?=
 =?us-ascii?Q?ZcIxKgjYRusEH2Nnpob85fLYXQfkANuqqNsT+ZPaK3Os/q6yPD98i8YSeLne?=
 =?us-ascii?Q?tgqObG3lrzQtvM3eTYd6tpx3082MI98PQZUjAywzsLwO9TeTO/TyPXIemdhb?=
 =?us-ascii?Q?zFeOuSjLoQOYopKkuXOf3E03dUU8g5cxjCMq3bNPZzcF2Zq26AfHlzW4HtAZ?=
 =?us-ascii?Q?2Rjx1+0o4/OzG4A72miwOHxB3Whxy4vtu10FFouQxLphsoF8E8SpSUZgqkH2?=
 =?us-ascii?Q?X9U/bmL4kG7EpjIalgeKx+81S1FrkQamrxImlbF9fdGSoAnIUMorBsM/uDiH?=
 =?us-ascii?Q?2KANAw08uHi68W/34soMUA43CotdybWzw4IDP3sBGhFtDHkuc8YtC3we0a9J?=
 =?us-ascii?Q?LplfNZcpu2+5ZOelPRO5YOlFl6G2VIADGY4K12tm3kCnYCnCr3DaYsUxt/mw?=
 =?us-ascii?Q?8n/F+MEjNmjcTyIJnEfaMIV+duDV0mfoxcDTx4UfKVYI3i1P/2qP3CqcEQ3p?=
 =?us-ascii?Q?LthN+m+Eg3X/TKjF/dpwDVH93+jYYS8+eBRAVCP4L/9RhmdVrkoJbPgAZp3u?=
 =?us-ascii?Q?pHd6KUZxA3BgA/2MurBQA0lxBHBkK6CuLJP+BCAQZiPuajdgAEKRrRzktYza?=
 =?us-ascii?Q?3C4P5vSpam0n0HtwIEy3z+pweC7+0oHjuYlcMSdS7Ovmh9RCGVgNwdMT5Crd?=
 =?us-ascii?Q?XHyhVIJSFdgMHEx4DNPt3K+QAqEnEsS3vaNUDSkSUrx+ncgVKEK6eqhwHQ6b?=
 =?us-ascii?Q?2wlikqbzUxosL/mNs4xoV7xCMRhRT+aKS8zJvUsSIF7nU5nRSF/YJdDDxeuC?=
 =?us-ascii?Q?rPtyKlbH3qJ2ZjHESN6DLVgoGUB1FRm99DPWZfcdyPtMdXGKQLsTs0WH7Ix6?=
 =?us-ascii?Q?Dys4jHtGEtFZZf+YCayV1f/x+fgWM23BF+KY85RV39LUUoNAMQrhBoHhOpl+?=
 =?us-ascii?Q?+sNJYjtfU+9a04COHTJP4F00iHwNoPi5DEAwthKOAZCX66r58GiGN/jRwSy+?=
 =?us-ascii?Q?+9oOCoP9qO1HWfDBvumqdEhYHtkF2p6Sygayl+/W510qIb2po05ct97LedWE?=
 =?us-ascii?Q?kVZD+/+xX/MBQ9pl4Haa1x2VhjjjOB32CpKXl4OamNyC/WtsKqcO6y8EsNas?=
 =?us-ascii?Q?OQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 39396b95-2997-4cd0-5972-08dc1d86c60b
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jan 2024 09:19:46.5134 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MW7v8Xeeoy4PrmTKnRNKePyTYJ8kSsSc2hDcqrx0cmevSW99NomviBZ7VhowynHrYVmzzsq/yKj4eC+Kq7Mv2kyhCuPLWJQ95owUI90cor3TnzFoxikmQNFizfgDYHiL
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6837
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706174424; x=1737710424;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NBCNDl5kxNapbLPLqz41GeTsjzK3oy6EzO8XgL8+wv4=;
 b=IZNd1CsbSzFCScZ35s/Qw0RWu+S6nN93L6cniHnqhqvYIwYgAG8J9eYI
 4HOJQ+6dU3kMCSjCj8je+EW80tt4ocTZNPJXhXMzjZ5m/duzIQEc2YR02
 KFTfTMeAY8YKB2AHonhvUMRW0SUhDOfBq77DyxPhtSX5aTZjMq+bo/LPb
 UZBoRXJxmrdqj281NoSsnLhZHXqwWw3eilSba043bcvxjLVXST0mZOs5c
 /VQMvlz4f/K6k4lqjW9yNGJzdvRexejxcfCBn8Uo51V71oPzNQyXMY4r+
 99bDiLD+2zw42Ktp/EM8c9kpwsDO1aOAdlOZWSoyFLzurPLe/TJlUNI+f
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IZNd1Csb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v7 iwl-next 1/7] ice: introduce PTP
 state machine
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
Cc: "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of K=
arol Kolacinski
> Sent: Tuesday, January 23, 2024 4:21 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Keller, Jacob E <jacob.e.keller@intel.com>; netdev@vger.kernel.org; K=
olacinski, Karol <karol.kolacinski@intel.com>; Nguyen, Anthony L <anthony.l=
.nguyen@intel.com>; Brandeburg, Jesse <jesse.brandeburg@intel.com>
> Subject: [Intel-wired-lan] [PATCH v7 iwl-next 1/7] ice: introduce PTP sta=
te machine
>
> Add PTP state machine so that the driver can correctly identify PTP
> state around resets.
> When the driver got information about ungraceful reset, PTP was not
> prepared for reset and it returned error. When this situation occurs,
> prepare PTP before rebuilding its structures.
>
> Co-authored-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> V5 -> V6: refactored prepare_for_reset() bit in ice_ptp_reset()
> V3 -> V4: removed merge conflict leftovers
> V2 -> V3: fixed Tx timestamps missing by moving ICE_PTP_READY before
>           ice_ptp_init_work()
>
>  drivers/net/ethernet/intel/ice/ice.h         |   1 -
>  drivers/net/ethernet/intel/ice/ice_ethtool.c |   2 +-
>  drivers/net/ethernet/intel/ice/ice_ptp.c     | 110 +++++++++++--------
>  drivers/net/ethernet/intel/ice/ice_ptp.h     |  10 ++
>  4 files changed, 74 insertions(+), 49 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

