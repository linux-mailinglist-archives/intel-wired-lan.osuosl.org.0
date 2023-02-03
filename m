Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C9E4689106
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 Feb 2023 08:38:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F3EF781F27;
	Fri,  3 Feb 2023 07:38:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F3EF781F27
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675409911;
	bh=9qSx9yYclpdG4WSFKaUh0/75nQM3EpYANEyoxwmwn64=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XrLwUpnSayHo/s8q7eCtSGmj1LroezYXImb66h5EqGGCSLKcCNsjjOlQPZX/PH8CT
	 0zr0GTgqdaHjVUUyPHxPjDOdXXxlk0hS2kXSFGmaMrN59v8zTtBttjyeSzEEAX4CWd
	 40UhIh/1TvRF4SZIIdvy2VEzSA8ko2TSdTkmXODdPmuSPsg/GYEV0Wpn9Viv1C7GqM
	 xLOG25P1tRMpdYFPY8qO8FEASgiVYG5DvmLiD+P1rMqEXhbTkK5ZiBwuoMeYliA66e
	 8U4fi9enXZy5FEVIvM1pGG5pZtph9cImw+rcuxy5A40zRw1HS0alpG966orFIav/Iu
	 4jHKGXMH9xUZw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y96-87rXKs70; Fri,  3 Feb 2023 07:38:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 910FD82077;
	Fri,  3 Feb 2023 07:38:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 910FD82077
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1D5AE1BF3A8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Feb 2023 07:38:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DB5BD429B4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Feb 2023 07:38:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DB5BD429B4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VdXh-oVk9NuX for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Feb 2023 07:38:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B343C41E89
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B343C41E89
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Feb 2023 07:38:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="391076563"
X-IronPort-AV: E=Sophos;i="5.97,269,1669104000"; d="scan'208";a="391076563"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 23:38:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="911046239"
X-IronPort-AV: E=Sophos;i="5.97,269,1669104000"; d="scan'208";a="911046239"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga006.fm.intel.com with ESMTP; 02 Feb 2023 23:38:21 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 2 Feb 2023 23:38:21 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 2 Feb 2023 23:38:21 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 2 Feb 2023 23:38:21 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 2 Feb 2023 23:38:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=adTmfoz0pAC5ddUigMkz2eoenFpvpXcNdyj9Y8ANS6gXv9Wv6rjRwFuEVRH5+4AOT1JzdW5dYEDCyz3tCu7CFWwcWAZDV7PwvV6zi3KX8Q88WU4bUpgWRkEc0hXY1shJMOeWJObQ5JqsZwBl4jXDkn+tJVenoE9LCrMmRuPwFmrfOPzPEQiy8cbxEMM6s/2ggeRGWyfsGNZhe0/Gh7JC6j2DlHw553KNkUOH9mMpRc70W/8syHiotdxuwLxrXjR/KQv2B81/UH55Abm3ykVCQzS1wmxf+cH7Y+TA028RbNLoEL8ZtddM4TCB+zKP21Hoa2etCe3q6Y+EGC6mpmS4Qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bpJU1R+TVpWvrKzyFoSkYmialw1xfHOPkCiuG4Em11Q=;
 b=hcZjkqhq1/rtnBzF9+pqV8UmCipotouPkDYxuemx5iaR9ei5zrKhCaK9abfs2u/8RhvA8ChAQ3LkdXex9YVGoYxWbgt3k8BQxP8AWvW0O9rJcq/KRa+FRqj/5cFEAL9LTsxLX9Nn3Y+pmj+LknWGZpBx9PrgIJ52y4gQs62VDFLX/inWBDjRVZof+00orkPkukgrfOqrlvC6tbgtIMf4MaG7G4Vs2ZNIXVBdAZ9x55e23PZc5V2CVYYvPv7NxaI8xI8vVd9BTKiRRNKKxCDizz3SFq8fqUKKLTCDoHZESWm7FGEE8M9XtC4lLtfmQR0Ab/X2qU0uZDXLUtxINIfubQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by MW4PR11MB6716.namprd11.prod.outlook.com (2603:10b6:303:20d::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.23; Fri, 3 Feb
 2023 07:38:19 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%4]) with mapi id 15.20.6043.038; Fri, 3 Feb 2023
 07:38:15 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Sokolowski, Jan" <jan.sokolowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v5 5/5] i40e: use ERR_PTR
 error print in i40e messages
Thread-Index: AQHZJDP/8g1ck/WNjEGcIDLwt8hWGK68/ErQ
Date: Fri, 3 Feb 2023 07:38:14 +0000
Message-ID: <BYAPR11MB33679EFB5CB6FE5018FD746BFCD79@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20230109141120.3197817-1-jan.sokolowski@intel.com>
 <20230109141120.3197817-6-jan.sokolowski@intel.com>
In-Reply-To: <20230109141120.3197817-6-jan.sokolowski@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|MW4PR11MB6716:EE_
x-ms-office365-filtering-correlation-id: 508e4529-753f-4990-8435-08db05b99c2c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: scQnshnphJbTcUwuxJ51rJz8aGfE2pMOlp6ulnO7ZOtwMCNMv8p/zKaxD8uL/ZLcRR+T2MFVXU1Ss/JCmO7+IjTfsx5/gu0vhN4uSjDkdvCf5wJ99AOaiO+b41SdES6tOlJvsz79sOQ4UDYPifk4XZU1CuJulQyIDHdYMGRwOl7Xsv52uCGm+WMicqD5vOCN2EQkaHF6YCanlk67oALE8oBZETOq0qOl+cwy9ZV6eIUb3KkDE/xv0s+njDB/kenrccyuNKz+UMu6yuFh4GBK/74egkwBQBB7x2xVHh6gSY5yHTXqDszQDVYq14wIAkK2s+AlekXZAjAYL1Q6CL7Wri5fhuaMYoP+SZD4YPOVey+4IZT08e7WMr/QbqcvsPqMjwGm3zIjujBl7KM1/AQQN/PMZLNV7C5/RqPS2f0awGp0psMspKlqrLjgVO5Ee85a7C+fzYN2oYfWbqtGSgp6SweYEnNotPFUcoID507dRBg6/ltxaYKg7rBRb1MxIEMNbdGWOhZJI8j/8vL+KJo2EkpIPUobXtHhyCSW6+7vzRSamtpHZVYHTQAw0dSMxlyGmZ/wSjDcPq6rnAKcZ99aWBkehqzXTGhUK5TrLstD+WX4EytBsPXd+zn64LMbt8tHrVOxoJw/D3dI8R647E99fdkGAWRJxohUwP3OutpVNaK9f2v0LXeYGYsopf5zJSXpO2HMKBAP2MBFNZcy1tM6aA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(346002)(39860400002)(136003)(376002)(396003)(451199018)(41300700001)(122000001)(7696005)(38100700002)(71200400001)(82960400001)(38070700005)(86362001)(316002)(55016003)(52536014)(8936002)(110136005)(15650500001)(33656002)(5660300002)(83380400001)(2906002)(9686003)(8676002)(53546011)(55236004)(6506007)(186003)(478600001)(64756008)(66946007)(26005)(66556008)(76116006)(66446008)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qqktVmudYVfQTSGovxYh6T1lGaCzdForRcWpw2ofjulKtnxfqWrGBGwM0kAg?=
 =?us-ascii?Q?OFMKNWGyYc0tK/qQ188fPYm6JQsnO96ROM4NB2FcxI2MjeH0G5ElKnedApBp?=
 =?us-ascii?Q?cr8lLKUwloTuqQd1YU4KvHh3GrBHm4o1G5od8nmAlG1rqTtlZvnHCYOLzhVI?=
 =?us-ascii?Q?PV3YAMEEArzINcONjBwnGSy3sjgWRSiIPkwIbnjjkkBemJKWg+cUi2lwdsGa?=
 =?us-ascii?Q?YbFUxkCrx351U/8aR4HIvZTqkJ0P5Q8yZ0lXfKHxLrTcyzaXTv/9DTcjECE4?=
 =?us-ascii?Q?wngso07oAoBbBd6CTUONh1/HLiE574WPCYdYRoE4nAMfQRxmywJVrTsmsu+i?=
 =?us-ascii?Q?mh4UPf7yItzbSQ3Fhiwiw/lZ4HJmPwykDi/HXeoRTuJ8HjbTYyL50GzWHIzv?=
 =?us-ascii?Q?vhqxQXEVlx5fznlZK278vE5K2UiXlNXouTcPqwlEpaeslXhknLq0o0BShgsP?=
 =?us-ascii?Q?sOezV3t+rj7z+pKybP84mooJtVvV3CiaoDZCQSMdSm1wqbcPKJYDnuNc4FCj?=
 =?us-ascii?Q?yNT2UPiJ87j+tnk2SXKUJ91JLjSBhVTUW2WXyFbsWoKJhdhv9mRzbAVcAEDx?=
 =?us-ascii?Q?rb/XB5cM9wT8goAQSrWvTpiehd8M+4FO8GdB/w/W48xcZNw+pK5mVazCiTrV?=
 =?us-ascii?Q?gXfPIenFw3RpYijEnKV3F9xWYuebUvvdFlR8Z7Ekk7a1l/9f08mdrqMaU0OT?=
 =?us-ascii?Q?20+9XJd9ETBhxEV3XLYHC5nkgVOrCrPNcJ1ccU9hKTmfAi8AZyriGdsNwUh7?=
 =?us-ascii?Q?Z1gSOxMGKBicRHr+GgbogIo9CSFgDvNni7HmAXCrsnkAgFuiXK95Urlnieiv?=
 =?us-ascii?Q?/AimSlCzuyyFJBXW/nPYvbWyexdWfmJkveV0UskZLEFMW1KIh5GlzRGGrHWs?=
 =?us-ascii?Q?O1s/69bPUzT40ufDhE1eWN5gJb126Wf9Ryr5vhxDnwJNZt+jZhkiyDYpsqpN?=
 =?us-ascii?Q?5Bl8M0qXRVdn+i6BizggOskzD+3XE9XrYYsJBENNdEv99RWz4HK7SCi3NYnJ?=
 =?us-ascii?Q?fXSLPJtp5s3BW6Alzpmx5D2HeEG8kgZ89iqFcYQMlD+U83mDYrBGiKCjrwm3?=
 =?us-ascii?Q?wZpkplCJJ+X/gLejFKJBobYu1rbLVtEvFMiCrbGyouul0JC4bzpgTla0rPyv?=
 =?us-ascii?Q?cjVks5DG++A7uSfP2lo06OKPbXl/AAapgne59sEc79/vNKqP1fmI2rrIq9rj?=
 =?us-ascii?Q?unx8jQzL8fce37Vt61VYjiV6HHksLLSS0ZxMUoA7gMns0W9gv+iYbj539wRx?=
 =?us-ascii?Q?xuG5tiADJI+9e/GZnDdVdtc0d8TcSni0Ad5TQqKkkQbk8HPXg1akPPnZfJQe?=
 =?us-ascii?Q?G10Z6FVYAN19GMd8Th3MT29Fbb3bTOmTOsCyhSQYdBr+Zg3rojdy4PdeMKdz?=
 =?us-ascii?Q?TOrQgVWanu7s5lq8G/Sl7wzfvK5FMiPRHp4Sb023to0al6dmEteWVPWkyeGY?=
 =?us-ascii?Q?RUA8CrGdnyeUEKr6lHQfwuTU45AHdAQjT6teHQO9BzPzVdN27fkMIaWNdR4f?=
 =?us-ascii?Q?uSHYlDV53ZXhc3+xv/SIcP4CPBaQ1DLJxP41RcX8ZT/FsQ4Iwc0Hiov2/GZ5?=
 =?us-ascii?Q?0/qgIE9oTCj42i4uC3fCZBuGtcjCefQ6H0l/zNLm?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 508e4529-753f-4990-8435-08db05b99c2c
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Feb 2023 07:38:14.9840 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VmYBsP9hr0YoMWyZ2eRv2RyxRJN1PvXHhrG646+IJNCTmSEBaQZicYQrrNqZxfVbDRQy+DdoMqEvQGM8D8NMOQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6716
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675409902; x=1706945902;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=2lgWAtKkhBsEd2XdAGRA9XKZhdNzfTanV4SYpO/gTkk=;
 b=VPrmXwoDBD8DhS8zAZJXhBSeRP4dnUh1Ad64st3EJXQ4mjJrxShIaqO0
 S8qANoBYOsSiS1xfLuqL53gKP5mb1N7exytqgDLiiT4lFBmhqC6DQ01ZZ
 oMBCLketwHGdzo6bWrgwckPvzl9d+/tkMyqO9pYU2z8cgzkMGPWCdH+Ny
 MF26V8y4Eug1fBkOKPyD3rtakFw0E2nKKzqggcY85fBKP2vT8gwkSXqxu
 K0grEqb4oCFMO6zltylmq1o4nsXg19J5RQHn2aQ5YLB4m3qNI7c6T01xo
 h3vEfoXoBWYqzcKP1EXwNr48dHX1m9QiIN7qTx2knqrr2YQ+P/uzo2Puh
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VPrmXwoD
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 5/5] i40e: use ERR_PTR
 error print in i40e messages
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
> Jan Sokolowski
> Sent: Monday, January 9, 2023 7:41 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v5 5/5] i40e: use ERR_PTR error
> print in i40e messages
> 
> In i40e_status removal patches, i40e_status conversion to strings was
> removed in order to easily refactor the code to use standard errornums. This
> however made it more difficult for read error logs.
> 
> Use %pe formatter to print error messages in human-readable format.
> 
> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_client.c |   8 +-
>  drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c |  16 +-
>  .../net/ethernet/intel/i40e/i40e_ethtool.c    |  40 +--
>  drivers/net/ethernet/intel/i40e/i40e_main.c   | 298 +++++++++---------
>  drivers/net/ethernet/intel/i40e/i40e_nvm.c    |   4 +-
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.c    |  28 +-
>  6 files changed, 197 insertions(+), 197 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
