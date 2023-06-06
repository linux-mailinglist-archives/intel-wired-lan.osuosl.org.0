Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 728CE7249AA
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Jun 2023 18:59:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 089D7410D3;
	Tue,  6 Jun 2023 16:59:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 089D7410D3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686070769;
	bh=eaUyoyslXedIxPEGbNKq9utrlXpLQbQmo4XL/SH0c6M=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IaKMbz5ZbmNj7Dpj2vRzhLpeNPXlRGDWlbojJxKIxlKHi4ZMjQurc8c6BmMHVaJ1S
	 WJYOwlbuYRxqZndxPPkeH+ogmTlgOjLu5YtRxrvnAoKnm8Xo1mtf6qD0ncYcgaABeL
	 hbHOyOiplhZOF6Uvse+uZ4i2o0jUTjLwhDFLfhkyQ9EcVZJ5xLdC/r7OodwPek+psF
	 hWbi07JOQR7VtHTC+tKYtesS1N4ZD7X03LNUmfJmjjDbxbF5Sfk1LsCeZMVJGsdfQV
	 HJsZ4k20+kLs/0zsalb5NIRC2CZLBy/H2GUJD5maD8RUs+HOcioIiS6adL2J5uHchO
	 LkS6So1ITzGnw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dluHJifag-7X; Tue,  6 Jun 2023 16:59:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7FF25410C8;
	Tue,  6 Jun 2023 16:59:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7FF25410C8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 170881BF294
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 16:59:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D8C0660F2A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 16:59:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D8C0660F2A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QvXrXPUVHSdn for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Jun 2023 16:59:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 84FFA60F21
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 84FFA60F21
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 16:59:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="337095994"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="337095994"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 09:59:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="742239655"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="742239655"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga001.jf.intel.com with ESMTP; 06 Jun 2023 09:59:18 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 6 Jun 2023 09:59:18 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 6 Jun 2023 09:59:18 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 6 Jun 2023 09:59:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g5S2ryL8Pnu2DVfTdeGfzrbHDjGjUlVMijzQkSbwMIIcHsoq1RcJ17MnrlFf/pV8Xq15gAdg3nlDWGvOREPrHh5THurWpOnGkv1YpKvhxbaXsyQ7CBUUtRqnFL6DxFeiB6UyZxcQp9y2AV/uAudr8GrUTHRpRSnkAbX/X1w4BFRhV00zioX9RQvywqsJN9812qIJgVjXlwbPx1uyHF6yBgCCR3wEqnY8vAC/xjOxMI8+gFO2lAVXazGn1fBlfzycMGlX6PTHm7sa6bPgEJfPz+bIYxmXpCHwnbpzvguMG7ePq0ydBNS8MwplJdOdTdaGyVm0Bvpe8cxNLV9ZJV3o8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eNBdlOAQmA3pvM4SyLlm1GvtKDbhD9jmO4qdoMIrMtY=;
 b=YH8zn+VCdIvzPdwJ47jzhhEcc0Wwxkx4MEEiPanT0qvk84jpY3PTdCREoPS/WUHnFH51eNtNckZeQuwPQ8ryO3tujBjZt3Z35j7YVQi0HfmQQkGEzxQbEJwM/45u4NZFT6kIoE/dsKzliFDDhBDCwJgWELgZBDjXdiP/jH696MDWAFYPVa4m4QC7286f7VpcL8ZlYpPqX1Vk1L6/0CBxSxv5WA+9bZU/BeojxPt+LkTNeGJiZ8Il9nBqNO/G68ZDmAqVZqN4NAa6//nS8QxE/+Z5SpkajybPETgiP4HfPtro4luAG/u2uQ3ZSn/vkMSCPfEKiurXCDomNZ1GvzbhFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW5PR11MB5811.namprd11.prod.outlook.com (2603:10b6:303:198::18)
 by MW4PR11MB6715.namprd11.prod.outlook.com (2603:10b6:303:20e::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.32; Tue, 6 Jun
 2023 16:59:17 +0000
Received: from MW5PR11MB5811.namprd11.prod.outlook.com
 ([fe80::5c8b:6d4d:5e21:f00f]) by MW5PR11MB5811.namprd11.prod.outlook.com
 ([fe80::5c8b:6d4d:5e21:f00f%6]) with mapi id 15.20.6455.027; Tue, 6 Jun 2023
 16:59:16 +0000
From: "Ertman, David M" <david.m.ertman@intel.com>
To: Daniel Machon <daniel.machon@microchip.com>
Thread-Topic: [PATCH net v2 02/10] ice: Add driver support for firmware
 changes for LAG
Thread-Index: AQHZmFej+ovTuI4E8UO9ky6b6ZWas699/vYA
Date: Tue, 6 Jun 2023 16:59:16 +0000
Message-ID: <MW5PR11MB5811CAA2FFE2BB3BB26A143ADD52A@MW5PR11MB5811.namprd11.prod.outlook.com>
References: <20230605182258.557933-1-david.m.ertman@intel.com>
 <20230605182258.557933-3-david.m.ertman@intel.com>
 <20230606091640.i4eqc4hc7kskk7e2@DEN-LT-70577>
In-Reply-To: <20230606091640.i4eqc4hc7kskk7e2@DEN-LT-70577>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW5PR11MB5811:EE_|MW4PR11MB6715:EE_
x-ms-office365-filtering-correlation-id: ed6a2bbc-f503-4b38-d6da-08db66af5d0c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: G5BzMLO07vR2dPi1Q5Un3rRJMMe90QNoyAXk5lu/1bqf01xy0u2SGc/ZsDB/HbQ8xBnvJbl9zrY8a0vFogvvn4TFHOa3qqRNQqDsmuUkCe8MzSknA/PSYkDKIeh5tfINRawC8DOvSj7UtK4JkH2kel1LK6fVk+DYKaFA6PH5i9seTOHDT1ojK1fe9TygmpSzNcrSldP9Qby4MrNmEBKO1Uwhi3j1JUFbAVjbWTleeCQcmMxZAK9Px6KHHcyCcCmVV5pUcipamqh7TCqpcPgFLSXishJb5V+xO0iTNo/vTUPEkTOsVgO03b+l6HZf99TxWA22/aW00NoBLYWcODd+qIAtzH/icCmd4Xuxz9c3yIdwGK6tgamuS0cOriGlBO4li4irHZ2vRpgdTBtlVV0Kqph0P79z/m7FPRjzUfvcI1m3ZDiVzDgiJnEFR/7hflA7vGuHklfdg6EsQCreaurdbgQ3B1Imd3SLSi74/6gwXaHmoOR87+D5SJKghUMS64/XVXTgsINeXlumW54VRfcYGNhaN0UVRmDesWss8q8PJv2AoqHs0KPuqjeGXf9tliQvL8BdqyxVSDfHtuMzBMRGWPgE/f+hvcFv9IGMNZzVbRUDpwopeW2xQzw3O05vJG55
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR11MB5811.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(366004)(396003)(39860400002)(136003)(346002)(451199021)(53546011)(9686003)(6506007)(38100700002)(41300700001)(7696005)(186003)(26005)(83380400001)(71200400001)(478600001)(54906003)(82960400001)(4326008)(66446008)(66476007)(66556008)(122000001)(64756008)(6916009)(76116006)(66946007)(55016003)(316002)(5660300002)(8676002)(8936002)(52536014)(38070700005)(33656002)(2906002)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fiasLM7oTloGWgTPtFLUJCyEFvG2voGIXxlRtTXlFxl02ydMU2mKRnM90aNW?=
 =?us-ascii?Q?2ASvIpfr8hOVF+PWm5bhXBN25//eNYuvYhvSZt4fR8N3+lE6cls6VYv23ImN?=
 =?us-ascii?Q?oWyuQuxRtoIVLRi1XcC9QJmm1WRHsvsoBHrfbE1XnVWPN1Dts54hn8782Mzq?=
 =?us-ascii?Q?+9v6u0E/zD2rhzmBG5R9QOWhYwn0kxL61K6JBU8sUCrNsqPzg//lUNNzmJp+?=
 =?us-ascii?Q?Pd7jSq/pMCquPJfgJ3GlnErZ9XXLyGH+JPRaavzUOEDN+xsKkzT4G86to1kP?=
 =?us-ascii?Q?cPhDeXTcmTKbtbXsLzR9qM6ZSrC+u9ContnuQFqFXtsuLVb5sB0YRTzLoVJy?=
 =?us-ascii?Q?N8uySYjEORUrR5JzVKtcWh4PibutreWswW+hTqHmrBinvc/OMITnGh6B1XlC?=
 =?us-ascii?Q?5+PbjyLcOe/gAF/CIzJOU0m7skVE6RHu7tlmOccykqJDKBZZQRzAwIaCMyio?=
 =?us-ascii?Q?jHwmloQMehlbbbKyzwHf6iXRb0j0zRxv1YjbB+R31Fhjnbu+bOe8x9HvVyiW?=
 =?us-ascii?Q?Kbc5pR7e/fJsXhEuM8+pJQl9yFjU7L/izGFqi/TFDaYwr+R93XIL47zCeYdH?=
 =?us-ascii?Q?mk2Fy8jArZv6e9uNY4FEMhjYhfiv2Ayft5hM4uMl5qS0ZYCYwSFOgDB5U4nJ?=
 =?us-ascii?Q?Ds8zxVW5QZdBHVl6ARzSBQ0dlkFhU1GpA4UzNqcx8cfIjio1xEiEMUn7ipuS?=
 =?us-ascii?Q?rZ6YCvIZkvfOa/PMKR18i8JX5kwyTR13qgwDW8GOSAo9ftsbfs71Dcsdv30U?=
 =?us-ascii?Q?4OB/JeNXgn2z1QP1JeDti4gkm3RdfTT+SQ7qt7moXb2U+80vcWywrOq+6MLZ?=
 =?us-ascii?Q?CBrnnHPlqWsaGdtBSc6xVnrV/lzKw0UzImlswvnWoL2wgMc8NJ6TUQ5JBGY9?=
 =?us-ascii?Q?IRVsZaGCZqO1G0QyDNYTYsqYnROVqdE8gS7WyXWqBsqwl8tu/RB7T1B16dtG?=
 =?us-ascii?Q?ADeXSVpbjrj6FNEYzJtb6zh3IcUpt1cM2YWCyy0g8E8rjOZWIRprtHFyEYQf?=
 =?us-ascii?Q?UUZ+5T8ejOy4TAmagk7ajEh9iGMXObZ6Fzi7Pi1fM5Rb4k0MFiqDDB0+cG78?=
 =?us-ascii?Q?NEE1G4ql7TUHGaJ7i+IXSHp2Q1ZUb/w9o9hfQRbJZehOau5gTSSFkqzoHyNA?=
 =?us-ascii?Q?LdL9dtBfEs4JMP5M4Wr4cUFWSypv2M8+oJW2I0Ck98LIFt0Z0oWl0Cw4LW1m?=
 =?us-ascii?Q?LkjD7BuutoOd64grxBrhLyJlIJjlZeEsJm0qztz9VEFMYSVvTOaYKjlkJ+7h?=
 =?us-ascii?Q?jbBGCC+NTMAgyprJhRV2ODa0Qtu0r6UaglQbEiNdz/Fku/ikfIatuPxuVxBv?=
 =?us-ascii?Q?sPlMcP1EMaQt/q8qJxNwDhtQq76wUPHwd+GZmBrTNk29QbiD60wZFjfQphuR?=
 =?us-ascii?Q?G7SiLAWrrow9TRCRtpl4+iMitCbLF2jRD2hKojio+I6kJxj+xiLurF4vCBjs?=
 =?us-ascii?Q?bfLn+ryKqZuLfYBKFF6gUj2UJLMK+nfrsuId7sBs+5LrTM2G8Sk41pwJCUof?=
 =?us-ascii?Q?950ZcjJTB34bcHoEGpfN2DQxlRXhoQYUTHZwvqpKG8Y87NOZL+VxduXlb5Vh?=
 =?us-ascii?Q?1cB/3CHV4G9L3jUwGFErLaqytpJdzk5jd6jiboFm?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW5PR11MB5811.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ed6a2bbc-f503-4b38-d6da-08db66af5d0c
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2023 16:59:16.9357 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qzWgE3yw8UkHj//DBcC5XH0yVXMEnE8KxbGCbSE3oMPcjt0zYOhrzHE6OLrbOZgeTjNWOLGCry3nVQaEK16q12OSKm1UIOPahOzv3XXLZnc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6715
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686070760; x=1717606760;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7LjXfvzlk0Xa4LRCVovkDFKPKnf1sWh+JypXLquJyFE=;
 b=MdnOoFgsUZJVoO5DAQq59yE94FNge/uZClEQ6RlvkbAWg7iw6a7bpzaH
 LBTLLsZSE5AxHh78EakFnCSVaOduecvO+GMyOg4Is6XaIck8Zo4SkFxBm
 aL3N7y4pHsHpfCgkHxMP/8KZ541LydCV4tLuTL+Eb+MnsTmHza967GCDO
 GHBLsunpmmC/hxjkKNrHlP6Ze0SxRUU5yrkJkzD7/YcZYOQTa3PHSIC5Z
 0eQBAwFgZREG56f5zFn278BAde2kf1ynLo10u7hKIUTyZv2UQoF84kbgd
 1q9RhZ72dXjBkKtqxEkBA0+Yg/icTrPaIbCkqKN5YYVN2pN2ekJDJ+25W
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MdnOoFgs
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2 02/10] ice: Add driver support
 for firmware changes for LAG
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
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Daniel Machon <daniel.machon@microchip.com>
> Sent: Tuesday, June 6, 2023 2:17 AM
> To: Ertman, David M <david.m.ertman@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org
> Subject: Re: [PATCH net v2 02/10] ice: Add driver support for firmware
> changes for LAG
> 
>  > Add the defines, fields, and detection code for FW support of LAG for
> > SRIOV.  Also exposes some previously static functions to allow access
> > in the lag code.
> >
> > Clean up code that is unused or not needed for LAG support.  Also add
> > a ordered workqueue for processing LAG events.
> 
> nit: s/a/an/
> 

Change made.

> >
> > Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> > ---
> >  drivers/net/ethernet/intel/ice/ice.h          |  5 ++
> >  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  3 ++
> >  drivers/net/ethernet/intel/ice/ice_common.c   |  9 +++-
> >  drivers/net/ethernet/intel/ice/ice_lag.c      | 53 ++++++++++---------
> >  drivers/net/ethernet/intel/ice/ice_lib.c      |  2 +-
> >  drivers/net/ethernet/intel/ice/ice_lib.h      |  1 +
> >  drivers/net/ethernet/intel/ice/ice_main.c     | 12 +++++
> >  drivers/net/ethernet/intel/ice/ice_type.h     |  2 +
> >  8 files changed, 59 insertions(+), 28 deletions(-)
> >



> > diff --git a/drivers/net/ethernet/intel/ice/ice_common.c
> b/drivers/net/ethernet/intel/ice/ice_common.c
> > index 23a9f169bc71..fd21b5e38600 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_common.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> > @@ -2248,7 +2248,14 @@ ice_parse_common_caps(struct ice_hw *hw,
> struct ice_hw_common_caps *caps,
> >         case ICE_AQC_CAPS_TX_SCHED_TOPO_COMP_MODE:
> >                 caps->tx_sched_topo_comp_mode_en = (number == 1);
> >                 break;
> > -
> > +       case ICE_AQC_CAPS_FW_LAG_SUPPORT:
> > +               caps->roce_lag = !!(number & ICE_AQC_BIT_ROCEV2_LAG);
> > +               ice_debug(hw, ICE_DBG_INIT, "%s: roce_lag = %d\n",
> > +                         prefix, caps->roce_lag);
> > +               caps->sriov_lag = !!(number & ICE_AQC_BIT_SRIOV_LAG);
> > +               ice_debug(hw, ICE_DBG_INIT, "%s: sriov_lag = %d\n",
> > +                         prefix, caps->sriov_lag);
> > +               break;
> 
> roce_lag and sriov_lag are both u8 - should this be %u for unsigned int?
>

Change made.

Changes out with v3 of patches.
 
> >         default:
> >                 /* Not one of the recognized common capabilities */
> >                 found = false;

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
