Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E76D623433
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Nov 2022 21:08:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 69A9981358;
	Wed,  9 Nov 2022 20:08:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 69A9981358
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668024496;
	bh=qclTmjOREV4d/h3M0n1awX+JlRCrTaUUuptmKfAXFvM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZYOQxktJXArqu1h6c1LCx2GOJDBxQWiD6B5mgXzQdS+GpshrIE0pPpzf0U40Z+xyD
	 MBoPT0wUl7zDQKyX2/mOYup0CZqzGyOdv3R/gfiowpDMaB7DMHz2mq1lubKYg4FGdn
	 eEurhLK+GRPqhUfZhomF1q22v5KDBNpjsy+LnzBH+siERo20ZDaW3rny5TMtYwqc+/
	 YCIync0+zMBsXOeTQDSuZJeBbMXHXrrtBYsFeKjDZpVBjHTnjY7SAPRxr1L6kwNpMb
	 ni9txd8LvPwvICnhU46S0wlhPARA1gdsnQgkEfrHabMaPZ2IySbRtOr4w05k+K/NW7
	 l1sWI4Vy1HI+Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4eLK-mnZYD_y; Wed,  9 Nov 2022 20:08:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4574F81363;
	Wed,  9 Nov 2022 20:08:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4574F81363
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4DE391BF4D5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Nov 2022 20:08:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1D630403A2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Nov 2022 20:08:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1D630403A2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qRpW6fG4L9tV for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Nov 2022 20:08:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C2BED4031E
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C2BED4031E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Nov 2022 20:08:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="308713236"
X-IronPort-AV: E=Sophos;i="5.96,151,1665471600"; d="scan'208";a="308713236"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 12:08:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="587898867"
X-IronPort-AV: E=Sophos;i="5.96,151,1665471600"; d="scan'208";a="587898867"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga003.jf.intel.com with ESMTP; 09 Nov 2022 12:08:07 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 9 Nov 2022 12:08:07 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 9 Nov 2022 12:08:06 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 9 Nov 2022 12:08:06 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.107)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 9 Nov 2022 12:08:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I/zpXrr6eY9L4wbmmVSzvYTmTkWrJ/eI2dk6tXLZy2sWj39hdSc0eTMQj0fE7yH2HHHW8vYTfcY+vdx1wQEtuSidgz6uIS6RaplSbjLIm6duLw0b2o4dZgySMareUBEGauIIp1Sp4pKMC/sTZim/DmYk8hJTPbGIgG/O8aJPOGHs/F2cIUn60ai6iw6IqdxpviFjSnHJrWB9LnvP/ktTgYF3V6Orl2Va1RbIse6+z0O8Qux6KT6sbVxv71nSsXAYDSoGPjSJIeq0BLPgnbVbFe1jON3iNpg3ObCQBBgYwQWFp1+WGCCHswwO5ngi/nxEyMFG+6U6rkGKeIbxLpaQYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=l34qMGBuXt1IQu5fobhvN7hpojHJlM0HLPz58dB8uEg=;
 b=ZJaZsp2Shlxe/0EDMRk2XWKVt02lyzqgw5p6esP3CiHvWtJxVzdfxySCN8bIfO2+nOCYjMhw3cTB6P7W4preV8Y4tuZaASNZ9h3Ib8NnjosWC/dOOHqnt9alheYJjF9fSSXsxlRwbDYLIcOr5HbYF51SnDq09VP+VK9obfab6jeBmUlXv+iF5IC9uLyL6M/EutVbCNX2+vs5SNREubX6imtVqLd0pLdSB0d/Q0aiR0aNz+dYRW311TH//HycFVPNJN0SRDxDNQol7ib/2ilr9Z9YNoKvl8Ybuk4/DhIQV48tg9+qa+5AuIHqJRDEMssa195+t5PEBwyMCOU60a+Mjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SA3PR11MB7628.namprd11.prod.outlook.com (2603:10b6:806:312::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.27; Wed, 9 Nov
 2022 20:08:04 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::9e54:f368:48d1:7a28]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::9e54:f368:48d1:7a28%3]) with mapi id 15.20.5791.027; Wed, 9 Nov 2022
 20:08:04 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Miroslav Lichvar <mlichvar@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "Kolacinski, Karol"
 <karol.kolacinski@intel.com>
Thread-Topic: ice driver bug with PTP vclocks
Thread-Index: AQHY9E7Q9e80SdGUBUOObQtVjKlpFa43BNAA
Date: Wed, 9 Nov 2022 20:08:04 +0000
Message-ID: <CO1PR11MB50893D5955D9B1BB50CE2807D63E9@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <Y2vFIq/6rB7k12Gd@localhost>
In-Reply-To: <Y2vFIq/6rB7k12Gd@localhost>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5089:EE_|SA3PR11MB7628:EE_
x-ms-office365-filtering-correlation-id: 641dfafe-09ef-4a9c-f272-08dac28e1c85
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 011wBAoPFjFyYJxwo59hxovvMJe+zFIlHDjuR6pkl0XoI10ZoYiqe2BkG/ALlo8+EqezOJVmpMf1W8xd1uuswG0Prl9CSbvbePJpq8CZMKDbeVLuhBnYujDm5lI6RMV1bnvobSBHaBE5m0LFdRnWqcYQ/RIHuP+IWonxQg62xcM/0MJkSk5I536s4lH7asSm+7bgV+2B6W5HgT3mwBatW22wy8yIpRZsHH1lzuxeBlobvznlVfYmAlMmJGpZfwmJczesE2oFGANVF8cP7MirfAJuEJPJs6+gQ8PHB8JWdbuwEF0lEzRaniZie9rp1SVmeoXMIwCzYXBPNsh1/GcpdeAY8Uxh3QDqAr5IIM5e+U9qGGFGrseR82/do6P72N6PqMKIGhdb/ebiyBh27CRmSpH9jOcXhsbiwYCPCrH+XZPlHmn0F5YYsgx2UNxU1AiBDPZ6UBOquysfT53F8NSYDOwMD1f3YJINZv9/fCttWwUWDg2v+uQZRlAZdBbQIWNFKFnXAQr3cymCBiJMncoxFRMtBBO09Aek9ugJctzCfxlNckeEs+kFHFwrViFqzmCicxsav9RE7DxiDHnv4WLHUSch3ajwSZDsFF32clWPBgjnA4PekyDMEo3ACjxdZAX8P2GiiIrGb5kzp6zjBgvZsk8mX2kT6Xn3faf5TMKcv9zoJSmRIMVkmooXynKTUGLc9EiIEnPF8vwBkduggNlT1xOdlPWCaBBKt3/+1oj54Wcn5YkiZdO+sy0EAKQ9JALzgdBxQ1N4LA4nOrjGyc0NSVe4k7Wey5ireuLoZAgsIDs=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(376002)(136003)(396003)(346002)(366004)(451199015)(82960400001)(38100700002)(8936002)(55016003)(122000001)(33656002)(478600001)(966005)(38070700005)(86362001)(83380400001)(9686003)(2906002)(71200400001)(7696005)(53546011)(186003)(6506007)(316002)(66476007)(66446008)(52536014)(64756008)(5660300002)(66946007)(41300700001)(26005)(66556008)(6636002)(8676002)(4326008)(76116006)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3PXXcSEjo4SJoQFwwzTB9F0k2awvftDVmG4123Oj6VvIzkm1p0ARMihZhmUB?=
 =?us-ascii?Q?TBcTX6WD3NRktQnN38ymiNBPTPNceOrRTOX4raTjm0yChb4joQIV5Ib82xYR?=
 =?us-ascii?Q?eSAZkowo0Dbq6BVuUgwv/Gcc4WYSqWDRV1GkRQezSLIwY1so68L3GXDkCNcy?=
 =?us-ascii?Q?gj0y6StaB2jn7vMZkIzYV0ticpnbrowsQoREEHt/3cJvMaRmUgHhR+g6zDka?=
 =?us-ascii?Q?RJ+GBwFYCw6ZlqqLmCfESAo+EU0i7XAIfTvih00UJ3zPGHrxlY2lq8h0yMEh?=
 =?us-ascii?Q?jBpieAaHFSSKhSA+gfOamemNAHTGcnBHqQqY0E7xCv+rVDBjmlal1Hxp77aH?=
 =?us-ascii?Q?R5EV9kgte9BCXeSS++X1r9bAfBkPezYIMW+blrYVQdjkQL7bL/YIWzgGQviR?=
 =?us-ascii?Q?A310vLPOqw4HH4SmbFYc91NSGHJ6xzkIbgnJorRE3926CrztNZ16J46Gl5ls?=
 =?us-ascii?Q?1G+eW15MRIPGLH6cUMp59wzXENt2JgnCrqGTmD58nK1HIzJys+XCrnCSHuhI?=
 =?us-ascii?Q?DSMwJQGJBSMglw6rOf4PxQsqhYiNa+27wChfMBYcBz5H/Pw9tA3rFlQMJGmp?=
 =?us-ascii?Q?7GerLEK8JQudCS+tM9e6Ih/Y4PCcgIWZp4/axCJaF6aX+0AoJV0LV+5GwRR1?=
 =?us-ascii?Q?qT1sMIelU2dN9hYbUeYgVXf/8BB+T36v7yIEdoCb61XsFZBAQxbGEHh8WUP8?=
 =?us-ascii?Q?yPPZ9bZOhgFV5wHf0pNHuILe3BLD3mS/6KDSEPrOzKTEyGKfwQkXs1AvA1KT?=
 =?us-ascii?Q?JKaDnb3PaxGEU7hWPDGcLzRE72zA6Vpp/080gFUZsFr1Y/h2f8GQ5RwbDfSa?=
 =?us-ascii?Q?FLq/bKDvJ7EtUmbLmuCDjj3QhM1f5YK/iXt87iq4PuTRX94QUnQIlcCd7crw?=
 =?us-ascii?Q?k93qxQvkuxDsg4mexWTB3OiRXccGWbqqXK2j4kdhj4AdvNwRr0+kgzhGG0yE?=
 =?us-ascii?Q?CW2FKpE3oR7R2XX3OpcD6lnjrYJDAlzzduHavb/9/p7SQ05ORerqWlyU6fWu?=
 =?us-ascii?Q?tVreXV/w36KiQDIaEunIq0bsaPmJKeATWMJEhMHghpQrqos7ZN0EL9Kf7wML?=
 =?us-ascii?Q?DfvtxvybFyHD/8M62ORFRFJmgFByfVGRqb0/3VSkCTz+Yshczu3WNh+OFI59?=
 =?us-ascii?Q?jPXSBUoqlGL0qBL1AYBjXhENI3XVhPBvUaSCH9E5D6RG+f9UKC39rldG48v7?=
 =?us-ascii?Q?rcMaUn6pd5ClABAbUM6NuiiSh7XeS2cYIWBqBC2ubkIBMnOjMvyB8p7sO9VE?=
 =?us-ascii?Q?ep8zO5rlOLfTtbGdqzr+Mk6PLBpEXK5oriUWxT4xqUeNZ51NHrk9AXpldxPY?=
 =?us-ascii?Q?vvqs1dzJAVfZ3tzbCjgNDbF99h9dI+nkRXo4JoYMwVnPrQR8MHXVupLt3ksZ?=
 =?us-ascii?Q?EijH+XHhZ2CW3wulRYk3ch+QfT2gedjQCm3blvscvFlV5kbe8qCIJ7xk5GSb?=
 =?us-ascii?Q?zDVypNod9Gvwo1X7aY4LDF5JsvbjdUrFlZ2ueoMZyU/Nr6kcllQsqt1zn9rz?=
 =?us-ascii?Q?zdkAQrO9I4KptFhUZHT4JzBg0MXNy6F9tDhG9X7tGTqV+xBBLo43mjYJsNXk?=
 =?us-ascii?Q?RJf45TlsfwN3U8ge2hIoxABf6StuNj0FGrPqHe+WOXvsejBTriHd5JkgUE0G?=
 =?us-ascii?Q?OA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 641dfafe-09ef-4a9c-f272-08dac28e1c85
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Nov 2022 20:08:04.5875 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mAJoLEFit0boOgANCstKttOCfDhwq4/Xl4fWt5eiR3CvJXQL4TVYYUyvlMYvy6k2geuPLd4HtSdpdojqFyaqd6g2eLALIDbTnf+LnSCVq4s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7628
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668024488; x=1699560488;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cZ8Ujap+6/Rhi1RhqgQJj03N/4OmWV1WX1nsWQBuJsc=;
 b=RMsAgxHXHgXF4SccjkDoA32ZoBXzLlKBGLxmD0Cc629Zp8owD+QfNdz5
 kt0oBxcrhNp61O4IOrDgo9phySXcoG55ZoZZAcb3V4ulSxgo5b8pfWJ4W
 tt+1VGapsgyvID7RGAEpNkAl4pG7bDEo+NAWHj1kH5Pyjysn8QCLSi8nN
 ux8WcLDMgz9kkdhJnITDFuNeEurO8ZfLKNV+Cec5122dCVmX+k9yNImvs
 q0Wig4PUuusWvWknJ06CtZ1/bwyu2CZ1vikW/9gXdtFVI7rvZ/Mr3isoZ
 IZeBCH2zF2gZFekGLD9lyN+DKZ5DjKAI9WgtAnx42Lym14jgcn6OT4NON
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RMsAgxHX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] ice driver bug with PTP vclocks
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
Cc: Richard Cochran <richardcochran@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Miroslav Lichvar <mlichvar@redhat.com>
> Sent: Wednesday, November 9, 2022 7:20 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Keller, Jacob E <jacob.e.keller@intel.com>; Richard Cochran
> <richardcochran@gmail.com>
> Subject: ice driver bug with PTP vclocks
> 
> It seems the locking of the PTP clock in the ice driver conflicts with
> spinlocks used by PTP virtual clocks protecting their timecounter and
> cyclecounter. I get the following report when running ptp4l+phc2sys
> pairs on multiple ports of an E810 with vclocks enabled:
> 
> BUG: scheduling while atomic: ptp7/3859/0x00000002
> Preemption disabled at:
> [<0000000000000000>] 0x0
> CPU: 1 PID: 3859 Comm: ptp7 Tainted: G        W          6.0.6-300.fc37.x86_64 #1
> Call Trace:
>  <TASK>
>  dump_stack_lvl+0x44/0x5c
>  __schedule_bug.cold+0x81/0x8e
>  __schedule+0xe82/0x12b0
>  ? get_nohz_timer_target+0x18/0x1a0
>  ? timerqueue_add+0x62/0xb0
>  ? enqueue_hrtimer+0x2f/0x80
>  schedule+0x5d/0xe0
>  schedule_hrtimeout_range_clock+0xb5/0x100
>  ? __hrtimer_init+0xe0/0xe0
>  usleep_range_state+0x50/0x70
>  ice_ptp_lock+0x39/0x60 [ice]
>  ice_ptp_gettimex64+0x31/0x70 [ice]
>  ? ptp_clock_release+0x50/0x50
>  ? kthread_stop+0x170/0x170
>  ptp_vclock_read+0x37/0x90
>  timecounter_read+0x14/0x60
>  ptp_vclock_refresh+0x2a/0x50
>  ptp_aux_kworker+0x1c/0x40
>  kthread_worker_fn+0xaa/0x250
>  kthread+0xe9/0x110
>  ? kthread_complete_and_exit+0x20/0x20
>  ret_from_fork+0x22/0x30
>  </TASK>
> 
> I tried to fix this in the vclock code by moving the PHC read outside
> of the spinlock, but it turns out that's not a complete fix and it
> breaks the update of the timecounter's cycle_last value. I suspect I'd
> need to modify the cyclecounter to use a cached value which would need
> to be read ahead of the timecounter call.
> 
> Any chance this could be addressed in the ice driver? Any suggestions?
> 

I think we can look at how to fix this. I suspect that we are using udelay instead of usleep. Alternatively, I think Karol recently posted a patch that drops the PTP semaphore around the read accesses, which might fix this as well.

See https://lore.kernel.org/intel-wired-lan/877d0yt0ns.fsf@intel.com/

> --
> Miroslav Lichvar

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
