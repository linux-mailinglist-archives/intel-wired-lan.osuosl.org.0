Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AF9F5891304
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Mar 2024 05:57:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 01EC660772;
	Fri, 29 Mar 2024 04:57:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XSMEVpRF5uGK; Fri, 29 Mar 2024 04:57:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 35D586078C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711688277;
	bh=nb3iJitsu6sydNji+j+9KDpNs2HWWdauEjR7R+H3yXI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=asguaFN7IU6C4gcZlFHxjNy/K/hEbHFjMve4eb+MlvH+5HykIy+zSSmBZGbhRECCr
	 6Ldhpj3fI+HevI437H76cyn70YywFBH6IqsiYz+inncMehfSWvzxAW2Yh048V2LUs0
	 XekeFy16aVEPNsbfsVcqaUn91D6VhmMa/K6PQ8JXGVAhKQqSwQ6/Wfr88ietEr0o3r
	 vXFhP5GxyXv1RZGFkKslodZPuSkEI7RyVLrd+Kde0FyrB+A3OIK6UTLdqGGLgzrOkY
	 5bOAiDzNg679QTgbvf2e6xmupz4QeMOSwrYq90UfehXPxAmVuutPExwLl8ZYcObPuq
	 FkArxlITxj1BA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 35D586078C;
	Fri, 29 Mar 2024 04:57:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B74701BF982
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 04:57:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A1782416A2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 04:57:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0MgVh5k6XZnw for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Mar 2024 04:57:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 62FFE41691
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 62FFE41691
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 62FFE41691
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 04:57:52 +0000 (UTC)
X-CSE-ConnectionGUID: 4g5TPvEaRSe048JKqOo0Lg==
X-CSE-MsgGUID: lDxze4RsQA69QxlLxOEiOg==
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="7471659"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; 
   d="scan'208";a="7471659"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 21:57:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; d="scan'208";a="21335102"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Mar 2024 21:57:52 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 21:57:51 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 28 Mar 2024 21:57:51 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 28 Mar 2024 21:57:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DOc/urMKUPsqkdvUYYyQgIt3rv0bF7wQZzmNxzcvuawCV09IBxSAVybO5Fn8W1063A+URClrYmTrIWct3qnifHhEzVZ4zWkudW0tWaymibJVnleaRifcjNWayGCcdPTAcH60700yjLp+HNQRqEWmhk4edvTOO88JFCPbotrT3nSrQ0/g+TWtxTJRWDlit2CYPlEwHCo5vR5ejBDDWT4ODq1mmC2f45WoFT9x5qFpznQNz7fKmTkEh+teCBPdMLqNBqxf6/WEDyVcJ7Ep8L55NwGOpMrZ0/zeRQTQCmbUTer/FvjIICSiWGX0VaOhimLouhsrVZVtA9/GZLiedqmRAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nb3iJitsu6sydNji+j+9KDpNs2HWWdauEjR7R+H3yXI=;
 b=cEFf1yeUfc/c43TuyUfvMjFoedUif0/mFl0i+2TLkj+hvrCHiC18HzBMM2cOrT7fhZlsXTj3bq4dy4dd31hPBHpY8fgeQ980FM2jH4cuF0RjtHBH19RU/KyoeGEkt7yiOM5zw7tM+LEfaLrbGJpFx37+1VmntSBtDOxN256G2uNDiqZkIS81B0a0/wKcLuYQqVCHgP7LzVtdf1z+9JqjmZ5pRpr/2H6sKvmsOIz6XC9BHVaDDpGRdZXP+rGy1NbE8aXSeK+UWwMKmxnPG+r1/YxfsIqcnTSrtOMeygQzCGo0KX7ch4jlewtZF936817/6rLfghYLZpjLvAYjDJILKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by DM3PR11MB8736.namprd11.prod.outlook.com (2603:10b6:0:47::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7409.33; Fri, 29 Mar 2024 04:57:48 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4434:a739:7bae:39a9]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4434:a739:7bae:39a9%2]) with mapi id 15.20.7409.031; Fri, 29 Mar 2024
 04:57:48 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: mschmidt <mschmidt@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v4 1/3] ice: add ice_adapter
 for shared data across PFs on the same NIC
Thread-Index: AQHafws2ZzKhRyBf4Uyh68uX2UvKnLFOLL6g
Date: Fri, 29 Mar 2024 04:57:48 +0000
Message-ID: <CYYPR11MB84291DF07CFF3129549B8DF1BD3A2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240325232039.76836-1-mschmidt@redhat.com>
 <20240325232039.76836-2-mschmidt@redhat.com>
In-Reply-To: <20240325232039.76836-2-mschmidt@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|DM3PR11MB8736:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: G7X5NLp+rSKwJHZA3t0GfyxuXfsQv08wZG53atF+mRqT48e8Xhbm6mq/IPy8eTZC3vG/c0JlYwYvxXS8cVHJFYG8iCbHkKgrghaewg4XV3INxMRQJVXlHaAdFrkqF5+yMTElq+fMOc5jwCQBLmYAqwjsOIbF2pK+WevLsxQpZ0Av0VONPV8d/dR/ZXZpmW9qbhAwzBRh/0rqJj3nooL0XONjBTG0IKf7uWGxLEI8vAlE1KCjiVY02IMZhy3GsMu89SJ9H5Jb3l2dS6bgKH928PAWwyyJDUdpaq5jgUw4X4I/nleU3UC/2Vr3FmPMeS5T1I+wD0mRryKs3uw5yOHYxbGMREfYirHzKmZlkxKzMaI7m8FvVqE3D9vlOtNWoyYhVCQrrR+AVUJk1rXe5qB52FNrMrym/epVu/Wo7ZezMhfpT8l72eIvL1FbbHSqLfrekSmlTLqSd922JcCew/QqlMIKDysw1dLTm2l2GMJyMFv4T9iY5ZLLn7eO3sl/HaHDOgcBmwSrCCIb/4obKqZl52n3g/mH1re5ABI7oGjW9sF6QhyEYEJbrx4dc97t1hGck2YMWnpM9Q2thOdDBH3+dymMpk2UpVKft3sz6nWshRBR9Wb9hMs8fPfnaKqjm0l7fcSlnorwYZPslQFaNk89+LTHax1YhXkqBod7SMAzPSk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?LEVbnZiGmS4gCtGhwh5ukp4ryfVIs6pYdaWlTOaDvhhShuBEUkJBKgxE+rSz?=
 =?us-ascii?Q?ss2g3EvAigVekhEtGTeMv9rMgunOWiyarzdWPC6NsDMoWc4EzELSbmHmnBAp?=
 =?us-ascii?Q?Sq9QakYbfg6Mepsck8N+9w4vJOMtIg3EP7qmAMUsnST78ZeSHqF7uI9WQaz7?=
 =?us-ascii?Q?dipxg03tnshorZnRl3RSqcyH+qxPe3fycwThem4lVtvcsiogdnbyy3RIxyJX?=
 =?us-ascii?Q?Z7TQCFnwLl8MIMPEey74tT+p6LBbAaI9q4wV26mM2Evf+h75WPbKsblCaTV4?=
 =?us-ascii?Q?qfjO+hL8PBby12IV29do8FsTPLlARKzOI3TTXsRG8KN38g4vm9ztb80oTeFP?=
 =?us-ascii?Q?MZIQcp9Kzg6Mtb/Fp1TOE1/DO1e7HTyM2noYGDtx+EAqz5WujZmgiYIHVTXr?=
 =?us-ascii?Q?7uoLLOUNMBgnl4c9YcH3ODcgZy3bGVa1HSLFuisLDYs5Ysk6d9F45xp78bqq?=
 =?us-ascii?Q?XdOH2rNwCKYI39WYjeuiFVRqui1XHzC1HdfpqoeVxmiRZoTx1ErRWxvZUV95?=
 =?us-ascii?Q?+8jOJEJk0pSRsg3ZOT8J3W1Yn3jkBm60G7y0lJVkDdDMWBgNtX6gQi4Z18BU?=
 =?us-ascii?Q?zwrnlBZiycuq1LRFjRUf4mA/TQ6KZtIIW8QvWOTi8+vAML8V2xd4RQ0KTSj0?=
 =?us-ascii?Q?KKjO9FPk0qFi7Bpao/JjfUmvfBbVR1Giz0oEeh0+6VpXUkzgIvNPrd18uwP9?=
 =?us-ascii?Q?ADqVfD1gtoSCNq/6sMdE/jHTjFDLXD6A4kz27HJfAWhP6oEqRfLhiZPgsk6t?=
 =?us-ascii?Q?HgJ5BRbJt+xCAdgbns4AJx4AgBTtpjFIexQuR4mkgO5rkijbD1q3rLQrsF3q?=
 =?us-ascii?Q?1vVTDWI5dcI9OiBcdcQ3T27n7y+19H1pagGsRIvZMpJGlRGnOEl4WHB63Ycg?=
 =?us-ascii?Q?YrKmW1L1CNdrGRugYksVsPI3SF+qqNzUK8w4YNrEL4UEwAPRGr78a2coaFH2?=
 =?us-ascii?Q?7TmJQZy86slbeOHZNxOuueowhxH+5HkmEXvoxbCiZIcZUkiDBkvzjXo50sQo?=
 =?us-ascii?Q?5zHTBhEquyRvdjIntlx+1Pu8AGCVRJqwThcH39cnl9GChkVENYqDi1jlLF2j?=
 =?us-ascii?Q?jeYO4c9MA1a3mwdS3dl0EO1i3TyTjQ1aAUhEuANv+FJCGi1AT/+A2Govc/Ne?=
 =?us-ascii?Q?Bb67OmQkICNDgF/gDolCI387ZAODJ42Oi/M0BpQZS+AEe+3QoUtraGddLQWo?=
 =?us-ascii?Q?01oOxVnIZ8eLa7pxh2oYaFWqEPXylHqpa8MOk84RVlYaxunkFnICDsvodOJ7?=
 =?us-ascii?Q?0fRMLFRBINcV1RF15F8y0xERTfC0bzszfvo9fHsKZqCHHrP2GWzAmWtatbXP?=
 =?us-ascii?Q?XM8fxgXF+losujuc1ly7A31UjzCiKvZAVFIYoNyZNbA6urZ46c7k8Moipdh2?=
 =?us-ascii?Q?KYatNTkkGu7xOkLP3rSVoxYQaqh+4l8gtc1MZkk2dmYZusYXq90yX2ss9qk1?=
 =?us-ascii?Q?IRCju/Wno6Gbyl/id3soLFYPg9ZXwDDJRS7JGU6aXn82+pydJLT58ORxEas6?=
 =?us-ascii?Q?gcQTqy3qIqZe5Rfg+Q0ez4+aJgbLpFjr7hZaZe/voA6I3M4HbTnPZjmiK4tK?=
 =?us-ascii?Q?K6BIwOKVCRvr7LE1oqgoY24Jvr2PwIDuv7P8UMSbquTnYbchRLloS5zoXYK4?=
 =?us-ascii?Q?Vw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3465d2db-7fc8-4492-0935-08dc4facc7b5
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Mar 2024 04:57:48.2713 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lTQU7ReeeRW1H+o4GKvHQ95RztYWAYm2n44t5+HniGpGF0icAcnHcIsebXQLZCKygL9TOTe22dCp6xz02ttOnYvSBmahKOuP8N85Y8fGVeVlo7ZO48L8wp9dDUGTD0Ve
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8736
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711688274; x=1743224274;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=u8gqqn5EdeNvyHCFZDMO0Pauc6D7KP06K7R2qBwlYX0=;
 b=nuPk+rvPLTKLBb5yPSKEq+MQjtxdBRfed2fuDDG/wmun+Y+82uMoVV4f
 1MVv4wBaKX5YcLec5EKFYYSjRZLU0n7t3z4mZ4XeCVha8G+BRBe1w9sas
 iNrkFA3G4awdH/1Zm2+IfdKr8qVNJbCvkJ/MPHhI9k5x+aEhGt0DSP9Uo
 TwjF+hEU8WKb81n0qYhJdzWRxs7PMihD45dIun6ZsIJxSHxgMMPU+gZGC
 tH0HODDpdhSlNO4lt9sIGPX8slfQVGBlIL8Rovun/3SswiVOWEDoV7jHp
 aDzTFrA50z7KchiUUNHl3Ybg4SP0RCLpXlYwHXgcqe8pbJOKBWUPoOFmv
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nuPk+rvP
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 1/3] ice: add ice_adapter
 for shared data across PFs on the same NIC
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
Cc: Jiri Pirko <jiri@resnulli.us>, "Temerkhanov,
 Sergey" <sergey.temerkhanov@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Richard Cochran <richardcochran@gmail.com>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
ichal Schmidt
> Sent: Tuesday, March 26, 2024 4:51 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Jiri Pirko <jiri@resnulli.us>; Temerkhanov, Sergey <sergey.temerkhano=
v@intel.com>; netdev@vger.kernel.org; Richard Cochran <richardcochran@gmail=
.com>; Kubalewski, Arkadiusz <arkadiusz.kubalewski@intel.com>; Kolacinski, =
Karol <karol.kolacinski@intel.com>; Marcin Szycik <marcin.szycik@linux.inte=
l.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw=
 <przemyslaw.kitszel@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v4 1/3] ice: add ice_adapter f=
or shared data across PFs on the same NIC
>
> There is a need for synchronization between ice PFs on the same physical =
adapter.
>
> Add a "struct ice_adapter" for holding data shared between PFs of the sam=
e multifunction PCI device. The struct is refcounted - each ice_pf holds a =
reference to it.
>
> Its first use will be for PTP. I expect it will be useful also to improve=
 the ugliness that is ice_prot_id_tbl.
>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
> ---
>  drivers/net/ethernet/intel/ice/Makefile      |   3 +-
>  drivers/net/ethernet/intel/ice/ice.h         |   2 +
>  drivers/net/ethernet/intel/ice/ice_adapter.c | 114 +++++++++++++++++++  =
drivers/net/ethernet/intel/ice/ice_adapter.h |  22 ++++
>  drivers/net/ethernet/intel/ice/ice_main.c    |   8 ++
>  5 files changed, 148 insertions(+), 1 deletion(-)  create mode 100644 dr=
ivers/net/ethernet/intel/ice/ice_adapter.c
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_adapter.h
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

