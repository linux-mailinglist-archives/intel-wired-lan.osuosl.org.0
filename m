Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EDAF62D856
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Nov 2022 11:48:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F141682085;
	Thu, 17 Nov 2022 10:48:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F141682085
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668682081;
	bh=1Diq/7czUsWkzywF55VyfU5JT0HnZktwCFD3ZJVC3Fs=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yUM4KKH0ZDFLYMIlgZKhX2FNZByAGnMdHcakEGEDJm7hWOME8zGVGeV8QftVwfJm6
	 mZYI7t1dYMDcZZjCAjo3zcYouSNDriMjowoN55IGzZGOZd011d96K4J7PsHOY2kJlo
	 rQ/RimGXovi+FSIoJTbBuer1ptjN3V3xsx27wH8k8hIG0R8JuLYxQRiDtsiL48K7oJ
	 +ik4PaJSmvqe/7g8HeM3T5gjn1rDqQEEmwtcU+OW92X5JXCfY2xSlwcRNwzaA3EzCv
	 fbb0b31xT3xT3lZofkqiwPF6vxjy+3QbOmXXExAh+iV+L7ges9IEzulM8+YYczmRQQ
	 XIdaYDbOxTmxw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ODPo4eoRPG2l; Thu, 17 Nov 2022 10:48:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E024482084;
	Thu, 17 Nov 2022 10:47:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E024482084
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 047271BF3A1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 10:47:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DF171404B2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 10:47:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DF171404B2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 19xu8gPoJPtI for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Nov 2022 10:47:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 134F140420
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 134F140420
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 10:47:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="293214582"
X-IronPort-AV: E=Sophos;i="5.96,171,1665471600"; d="scan'208";a="293214582"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 02:47:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="590576626"
X-IronPort-AV: E=Sophos;i="5.96,171,1665471600"; d="scan'208";a="590576626"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga003.jf.intel.com with ESMTP; 17 Nov 2022 02:47:53 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 17 Nov 2022 02:47:52 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 17 Nov 2022 02:47:52 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 17 Nov 2022 02:47:52 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.44) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 17 Nov 2022 02:47:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WkEjx5E4RZarsRdf7FknzYZ1ArBBhTVRNNOZJM2Il70YRZWyyyiklzxqj7Rathv63o1d7XRGlTYeJIy67ejGsTQH+SjvvEh9NEXv+mY2/DVI5sNJTVdtn7Yh44sprqjevrUhvRktA3wCeSiPaFtHtJYLAmXU3hNbxkGtO14hgCd1TvGlzpaRCif+0IYM+k3Afqc43EVZWhUEvyXVd8omqzytB6aN3cb+CUYkTpNRsZTwpzMl8joAke8tG3gJDrcakJbrkhsVAILOMlJhZW4qoqtlUaKN4olkcwXedF8Xc0HMsxxHrwDztV/WOSy1tJKxBQZM8QA8U2If+6bDkh5tWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=F5NfAzHGWLXQ3Ad6C5yVKp5JkQjxLmw0EesvRt4sEow=;
 b=c0bQaOoxhon3gDYHPIkbK6v8gor6lfXFj8MdAVcuAfCh8/I5qswI1Yj3iKH31v/xwn4XlXPEs33PVIMOCBMLiHi+HGqG51OldKk56x4OwGVulDqw/K4ZVzm2AT8lcOcc+asQTi4oOzOAhMgtIsMXjMOpMiybaO2NEI1UqN7Jbyk5OLYRXMdKIELRKKPTeLG8PckOwT9KY3vrHhEofHvjAOdoZN0zxhVkJ3sDOTxTF28lczgwyUYmDmd9iNwXKQLfW+06Qpp/sEZFSOlZm6hsf5RPZxzf2Gkmso3mUS1sRB46e6tey5mKFLV9Pq6EX4JszGyNWE+gNdIt/Se8QFb9dA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by MW5PR11MB5930.namprd11.prod.outlook.com (2603:10b6:303:1a1::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.20; Thu, 17 Nov
 2022 10:47:45 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%6]) with mapi id 15.20.5813.019; Thu, 17 Nov 2022
 10:47:44 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 12/15] ice: handle flushing
 stale Tx timestamps in ice_ptp_tx_tstamp
Thread-Index: AQHY79AULYVVshd2pUuZTweMP1Gts65DBDMg
Date: Thu, 17 Nov 2022 10:47:44 +0000
Message-ID: <BYAPR11MB33672F1DEC5BB543C41E421DFC069@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221103220145.1851114-1-jacob.e.keller@intel.com>
 <20221103220145.1851114-13-jacob.e.keller@intel.com>
In-Reply-To: <20221103220145.1851114-13-jacob.e.keller@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|MW5PR11MB5930:EE_
x-ms-office365-filtering-correlation-id: 05e8b203-639d-4767-d1e5-08dac88928be
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MRcuSl1DpptIWqPdZ6F9DhipK5qWnRB0lP9qYFIf+bN1iY+n2k5BvlFpJM5ZiyYpnYDtoWkWjLX9TriKuQmxu5U69XkLgger1feEB6C3093CMIxY9KwlijES7m7ygimRqC6/T5H1rXJ2/eKMv20I7HhDdoHbXKKTS+uObdyQJ5M13HAL/SVNFrlb0rK3aL58smeqKXspmlRHGv81Zz2/XKX4/i774yMyD9Q2q2Nx5noP8bR2hRtJhfrx8M69mxUq0cA5Vezh1tVTGSa8fueG/9qSYURRkLCFd3gY50eSRaD96deIwQ42HofBXebfFV6abtAlfcsF5FaAnDsCmQYCDFiE1178/1MfFqR0bCfGbmunJvDpq8plFQeQz5MIrAUHIi37xNdD+UdR3hucy366q3D4A3XpcNaBv2kv9NJwXpxlg/WuNR6RHN67b95cnCYOOokTU8LwGOcvQ9hbtjmpvIJZAa1wz9aKsZsS5vAVdbMs9iVSXPIUkyC0sBs+6RdrPciVwwQ1yzfgRPr3gHi+RRj/0I2NxUf8xnSXg5HWZ7e3ED1pa2SNudKpGmvmlfbiFPlvxSTH24NXmcI9SmWYMMJyS+OWD3HeMCrx5YsJXIsZFCM5M0qGOgIgQqpPDX+jnBWGPkFnUyiEh1J9y0ywsc4TNrtqNDXTJhwwon4XswADiYRfKLtBkXkqbn6YGSaTKAVipC3uTME9YziH0w50qg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(39860400002)(346002)(366004)(396003)(376002)(451199015)(6506007)(7696005)(316002)(9686003)(2906002)(26005)(53546011)(71200400001)(110136005)(66556008)(66476007)(76116006)(66446008)(64756008)(66946007)(41300700001)(186003)(8676002)(52536014)(5660300002)(8936002)(478600001)(83380400001)(86362001)(38070700005)(55016003)(33656002)(82960400001)(38100700002)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?tLra89beyej05v87EySslaZfXUzILY9fzNkRH+Vc90tfbZN8TKvb2DJBpakW?=
 =?us-ascii?Q?VVqiUI1HHb52dJ+13vBkRnhh4iOY2N+u12iWFTELB4X7y4fOluXNko0r3stU?=
 =?us-ascii?Q?C+jF7I762brPJGN4i8fO+p07lMfD8PcDOmRn3We5fekiOjYd2n9Nd8zZpDn2?=
 =?us-ascii?Q?VmElhRkKwqQA3r0TWWngANYgnjXvZZaRlsYSboJFQlcw+HgRm/r659abKnZ3?=
 =?us-ascii?Q?c46Rnc6joV5yjBFiQCqt2sdZO695NNzOtER14lZ4SSFdYIleqgDaGoobAuYU?=
 =?us-ascii?Q?F4Pq5y9H2BHhn4RF38YzwI2r3DF3UCjyRvb9muI14tyKzFt20OtJUuIUxlXK?=
 =?us-ascii?Q?q+bPPMfTqnrY4CVHXqV/FO4EUb7qR3eSvYoNo7JEiUooEUBxDYf2GRUsZnfz?=
 =?us-ascii?Q?WYpEZp3qhh9E/GTUq27FI+6UW5SPHHYx3HR2enAfZoxe2i5/rXfnLc/GSD6w?=
 =?us-ascii?Q?EESwAUA3r3k8ItyTlVFS3ux92CJKdEjomk9qx2n72AzAW9ilirajxyM0bR6Q?=
 =?us-ascii?Q?Lrb4mivfoxgwyn+uJyg5wLgIiNj+HPZUb0hbBbwMmVsa04mUjwTkkklfe6U6?=
 =?us-ascii?Q?BDuwdg9jQypc193AC0bWekaQ6KGpIly651oe661keAZVKJIZuUPd2/xn4vWy?=
 =?us-ascii?Q?OXCrQSboMf/oVm0GeQA4lmDdkdB03p3d6X1w2fbQQIxUMLRcBnfEK8TI1m4i?=
 =?us-ascii?Q?DQ6FsNDlIoB2CFQXK/OJ54SX2KqA6jPOrxSEkKAl15WNed3KKkAVkdnkZrPW?=
 =?us-ascii?Q?rpFLEXEZhaJ8+HtFRK8yjWMKCNilXc4C7ytfcOhl8T1HXN7pHdJAIRIAX9if?=
 =?us-ascii?Q?Bw5yCUuCYshU0SxFObVTevS4B/+FDbbXrAYuUyN9W+csyQmkaLrsrgVNVAHr?=
 =?us-ascii?Q?X6k48mDKEtjKCAJpEq8/fCKNY0MV8E72n2t8da7x8vMfbPhnlrbqblvgpUJJ?=
 =?us-ascii?Q?X6/KAMyjznhdRam556cSWsJodp02VXS5rKKUsuw/U+xGabrXjM8RktF4xcvW?=
 =?us-ascii?Q?l/xyoH5RRdsYblvvRDCh8/0MuMA3dHPcv355fiWdYs+yx0BeHoTUQ1Nf8aX8?=
 =?us-ascii?Q?iDvPRgZJOURA0OrGJeAkZdbL6ymu+H01syJ5cX9wDRvCvFV0p7C0jJt2FRhk?=
 =?us-ascii?Q?vrZX4bDSPPcdHEZkgggcVuBSG/rsXDRRDO1l0fj8ugqpklR61K/NNKANsaIA?=
 =?us-ascii?Q?GbOCMHO3/3nQxhdqXzMCznEYINEs1gr0v+dO3g+hvG/nZNEyWx9KCjUJY6Ku?=
 =?us-ascii?Q?JQK0JaewApvZMfXUvvIlFpKcaZ8ss81HIafPOHmsnXCN+Onz8B+gdKV075sm?=
 =?us-ascii?Q?HFNKPamgSCI+CAdQmdnUhNWh1VsjLR5e3J6c7sykOUXMtn69C612g9+S4aVN?=
 =?us-ascii?Q?/IWJ11EKyYZOEvVxV7arJgB01D7SL1tz8R5NfHaRSUaF+Z8aq+fr40bZjPH5?=
 =?us-ascii?Q?FGmk/FcukVuxSCRHMaA832bTNYINqZK8qAQZ2Nk66WcmQKAPFPWEiho0PIMx?=
 =?us-ascii?Q?bdit40YkBzmhCqMwATDEolwMWm9f0vFDkId/Fy1V+ux3JwF77ktIFAczA/jO?=
 =?us-ascii?Q?sfdhgjp5/jI7hGreesbR1CwKcJ90hSMEAJRGbE7B?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 05e8b203-639d-4767-d1e5-08dac88928be
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Nov 2022 10:47:44.5546 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cucljJpRLhUQ6axjU0t1alsu+5gpb0aU1tYCNLDOd3nZGv4gj5aPE0Q4FVmHURS0K9npL717PWM4rNspHZyqYg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5930
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668682074; x=1700218074;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=vGjRmihZ0VsOHMFPWpGX8/bR+9pbOSH1b0JpsII7fhY=;
 b=IPDjGjL4YeUvO/neX+VxbCLeJZPv9wHxx8VdZdiJR3LxAhe7adRc+bJK
 P2sEkZefpk9fp6smSyq9Wyl5VKg1iV7jQh/7/llGSicHB/JSvI5Ow58Md
 g5svZDgke5oDZ8emUK8FqFxNo9KqgRRdEXBPwflXgU7hobpxlNQ2K6C4M
 XCq1NpEe5Mrafs9wed0uO+9IBkwBO3Xg5uqJG0gAY/cBbu9D6w/WsR2PE
 pDDe/dD2eNdC8WaEyExjiQ0nyyJtfdeUz0gRWByuTCZltWkNhzpuM/WxO
 lO6F7RQg6VhQfFXAGOVjwxMj6D7i43ZQJzfqv+8NlF+1JKcPTPtdQq+tR
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IPDjGjL4
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 12/15] ice: handle
 flushing stale Tx timestamps in ice_ptp_tx_tstamp
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
> Jacob Keller
> Sent: Friday, November 4, 2022 3:32 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [PATCH net-next v2 12/15] ice: handle flushing
> stale Tx timestamps in ice_ptp_tx_tstamp
> 
> In the event of a PTP clock time change due to .adjtime or .settime, the ice
> driver needs to update the cached copy of the PHC time and also discard any
> outstanding Tx timestamps.
> 
> This is required because otherwise the wrong copy of the PHC time will be
> used when extending the Tx timestamp. This could result in reporting
> incorrect timestamps to the stack.
> 
> The current approach taken to handle this is to call ice_ptp_flush_tx_tracker,
> which will discard any timestamps which are not yet complete.
> 
> This is problematic for two reasons:
> 
> 1) it could lead to a potential race condition where the wrong timestamp is
>    associated with a future packet.
> 
>    This can occur with the following flow:
> 
>    1. Thread A gets request to transmit a timestamped packet, and picks an
>       index and transmits the packet
> 
>    2. Thread B calls ice_ptp_flush_tx_tracker and sees the index in use,
>       marking is as disarded. No timestamp read occurs because the status
>       bit is not set, but the index is released for re-use
> 
>    3. Thread A gets a new request to transmit another timestamped packet,
>       picks the same (now unused) index and transmits that packet.
> 
>    4. The PHY transmits the first packet and updates the timestamp slot and
>       generates an interrupt.
> 
>    5. The ice_ptp_tx_tstamp thread executes and sees the interrupt and a
>       valid timestamp but associates it with the new Tx SKB and not the one
>       that actual timestamp for the packet as expected.
> 
>    This could result in the previous timestamp being assigned to a new
>    packet producing incorrect timestamps and leading to incorrect behavior
>    in PTP applications.
> 
>    This is most likely to occur when the packet rate for Tx timestamp
>    requests is very high.
> 
> 2) on E822 hardware, we must avoid reading a timestamp index more than
> once
>    each time its status bit is set and an interrupt is generated by
>    hardware.
> 
>    We do have some extensive checks for the unread flag to ensure that only
>    one of either the ice_ptp_flush_tx_tracker or ice_ptp_tx_tstamp threads
>    read the timestamp. However, even with this we can still have cases
>    where we "flush" a timestamp that was actually completed in hardware.
>    This can lead to cases where we don't read the timestamp index as
>    appropriate.
> 
> To fix both of these issues, we must avoid calling ice_ptp_flush_tx_tracker
> outside of the teardown path.
> 
> Rather than using ice_ptp_flush_tx_tracker, introduce a new state bitmap,
> the stale bitmap. Start this as cleared when we begin a new timestamp
> request. When we're about to extend a timestamp and send it up to the
> stack, first check to see if that stale bit was set. If so, drop the timestamp
> without sending it to the stack.
> 
> When we need to update the cached PHC timestamp out of band, just mark
> all currently outstanding timestamps as stale. This will ensure that once
> hardware completes the timestamp we'll ignore it correctly and avoid
> reporting bogus timestamps to userspace.
> 
> With this change, we fix potential issues caused  by calling
> ice_ptp_flush_tx_tracker during normal operation.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> No changes since v1
> 
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 102 +++++++++++++++--------
>  drivers/net/ethernet/intel/ice/ice_ptp.h |   2 +
>  2 files changed, 69 insertions(+), 35 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
