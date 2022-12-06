Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 73C46643C2E
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Dec 2022 05:21:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7524740925;
	Tue,  6 Dec 2022 04:21:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7524740925
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670300508;
	bh=vMlNogvmbBP43jujAMaR4D8DVnDIPze0FxCKx3okWp8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2ToX0ytCqspodhAqeEbruwQCDPTsNR3elHyLtjjRy3/QMbR6836AHc23aCsHCgrzM
	 cpTCSH1An3nNWHMrvaiAKRWGnLRnEN4SWqXMPSufoZDQ8SjtQ52hYCLXdd3+Z6yFjK
	 mSW+je3lCToJgP5qRFq+kMEkIbot0wa866gB1owY0NJfRC5J6C1NJToIun5ry7a3H1
	 3jJmMGadlADgFA5tY4jYAQHE978i0tCl2rnVXXGA+Y7dsbW3HUCFFHQ7OzBowHiJgT
	 KRCLDiMzTJ193+C4tg9H1dTMZyScUrZ0zxgS9xR0Z/yz0yUY162eQDIQlYHw8yx1Pi
	 Q38nCKaiovD6A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HAjHcEJyyp4s; Tue,  6 Dec 2022 04:21:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3439F40921;
	Tue,  6 Dec 2022 04:21:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3439F40921
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 015AA1BF358
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Dec 2022 04:21:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CE98D60A9D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Dec 2022 04:21:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CE98D60A9D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ETzE63qvwywn for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Dec 2022 04:21:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C4160606EB
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C4160606EB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Dec 2022 04:21:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="380823968"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="380823968"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 20:21:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="734848565"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="734848565"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by FMSMGA003.fm.intel.com with ESMTP; 05 Dec 2022 20:21:39 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 5 Dec 2022 20:21:39 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 5 Dec 2022 20:21:39 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 5 Dec 2022 20:21:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OKePRuSib9nhlZyVqpV1H9akRhF+SrB599tBZRYkFyYHcMu8Woo6oGdSjQ7sDQ70ocLNCmU2/075L3Z0koBjNJIeLouU6OKv/3KNqVNYx3EhEKNv3xp+BUEMiDGk/abY/NTkEChPhRTo4RfrVoosLU5ccjoPnOXJXrzHdEk3ThoAkZnDgsqUch2fzEH5t81ghdzuYI+2FGy3/W2XWxK4fkOVGAj8gTWn+/kqVzDpmIxxddBDbUxDTBL8P58x7yQgwrCqgWlMK7xITOtZCnwpprBMl6BO8TrnHbgPQ1NmXwwg1UuBwbX9d5cSpohF+GNYEOr7bdtL/ahgm1Sb2ajmPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ex1Jqyd1SNIGb42rn2j+EDmBCzWIL+EU9uMn94510x8=;
 b=k4Qjkdu8bK9AJjZA7Ym8ZpxiyZ2HXIrVnUvROw0Jld0oxkpcniSgshmjXPzvgGTfafNk4v2KUE5i+kK5UrTtTzaM0NdX1sGdHBZX+TcZQWCmhOLBOLyONZkMJuYL3CSF2eJtn4+C+DRLkYWdEhqe/Y+mgkbFp0mfOtvPwS6hgebxd1tBN4u900sDiTnMAPCwC1PRgqNzwB7DXhmpbpxXwtaDkqDZDp6PXn+LWydfsFyCesiPkxTZA127rgTAkEcuKXhltCu3pWadE8oXXv3CPSt6Hj+qtg3imtdywdOtiTGsctUKS6C47Zu+2PMCyPsviBUXf4PdevMilxVbedKT/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by CY5PR11MB6535.namprd11.prod.outlook.com (2603:10b6:930:41::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.14; Tue, 6 Dec
 2022 04:21:37 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%5]) with mapi id 15.20.5880.013; Tue, 6 Dec 2022
 04:21:37 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] ice: Fix deadlock on the
 rtnl_mutex
Thread-Index: AQHZAyLrRpeL1gH3XE2ZFt+4lohcpK5gTgxg
Date: Tue, 6 Dec 2022 04:21:37 +0000
Message-ID: <BYAPR11MB3367BDDA1795890AC73902F3FC1B9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221128121054.167142-1-mateusz.palczewski@intel.com>
In-Reply-To: <20221128121054.167142-1-mateusz.palczewski@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|CY5PR11MB6535:EE_
x-ms-office365-filtering-correlation-id: da9077fe-dbf6-4341-814c-08dad7415dbb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XDDAAWGhVhoY6CNRbzSi+YKenARdsICHV2LPjzVA3BYGCHqrtzxQ3QmydyYTdfoLAuewZMN9PuddSacNBR7jeDfRCZ1yP8gvtpBC/AMAzDxRy1o9X7EcZEBlkdbdPHVFmqQ7WPM2AHTcHEdvcEhnXHmH69MWzIzJqbmfsFJFSrQ2RCRk9dfd1UrlJikSJdHYU/zNEkctn8RvdfzpvHeXNCgGxSqQwlFvruuuoc+0coJZ6Q/T5eLNglRYpVErf3DOT+YsoeRltfMHsw3zFYUfNClYeT4ak6+GzSl0bI+Pxn3AlyW8U7nW0drXMd018c/MYi0f7nWGMnqL4lOvcDNuGlwnuFsYgFuvfV+Gt/CRcg5LIB3jRkmN71ZMByZU6dBv/3i1Lr76MisajlCrxrr3CP7uGwo43GwaYm4XwTXXU/ytWox83/sx+TZJkRbDSRBcJiJBAEZh413sQhzL6SjZzTbsVqvW9XCsmcb9cAgydkqBxxzoiOYPp11Ldcw34YF2VDJxxrKc4mQ2HXX2rW807JUHl2WArnOYvt4uwSEI3ZUPotX5W3xbDgalIaAl7i1v7C3kHTdlCnf9LzqqNyvfVOQIFqde1tw5/xuEQf7wFRm1ZSoFbD7KlkEyCPUicDm0LDtqFOLsSuq1lmufnxL9CO5ikPCbrWBosT7mEpsY88zpqgvaNXDSlzEYDq/2/X5Q4NmEIpOXjX4IBzvuEH1BYw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(396003)(39860400002)(136003)(376002)(366004)(451199015)(2906002)(66899015)(8936002)(5660300002)(66556008)(66446008)(66946007)(66476007)(76116006)(8676002)(64756008)(33656002)(83380400001)(82960400001)(110136005)(86362001)(316002)(52536014)(4744005)(41300700001)(478600001)(53546011)(55016003)(38070700005)(71200400001)(9686003)(6506007)(7696005)(26005)(186003)(38100700002)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Gc7DwyvfD0V91BWmhCR+zlsdm/ENxQ76wc45G4IqlmNJ+JIC6ACcV0CW/nmF?=
 =?us-ascii?Q?184AQCNAdf5wVLZ1dGxWIVP/AKIfKbXZBL9H7E4zy3tytSwOaMslf213UgWF?=
 =?us-ascii?Q?rm0PWY4U10EykSbaQg/5BR9M7wXpX4ENvNWOTouXwKtXQUKiSZkbCankkz6/?=
 =?us-ascii?Q?9QjflvZHgvKuIm0FJ+gXp2Idd0bxAzcPt5ETo08Ijea9Z12rEfND/pk0qNh6?=
 =?us-ascii?Q?DCGBRHdB4pxSsdFhrz43jbMfHdMWUqpO0ecPRWhX/bt9wRPrtQEDj3rd8R9w?=
 =?us-ascii?Q?6acOi9oR4o8O2ZGPzIA4C8AZKRpJPg9C+ofggNFAJIFTVcLM2MaMqPhNJE4O?=
 =?us-ascii?Q?Yw8L55J3bUc5l43vkmnTLyf0DVygA5SaV8i5dQuy/5dmxqcXj7PzMJNj3Agy?=
 =?us-ascii?Q?azC5liC2TsjyC1TS3tISX3rFl0Eo+ev8sLWtNdwC8xBcWdeX+VAU8HIMUjrC?=
 =?us-ascii?Q?/WPeF33zryNuKygBmZ2fVG48eVO4TeCjfZr+mwX/jze+Lg21dk3o3ZTYlKDh?=
 =?us-ascii?Q?j0lKBZKS+mA0f/QetIDAyX/zxEr1Yc+FS6SyReLNsoX5vxgiLM6ulqJGB11z?=
 =?us-ascii?Q?wRRyCB/unQpzYTKEmqoF0Zvd8jZd/I45bSTbObOgwJ2c4twgXPp+J9qAxCxv?=
 =?us-ascii?Q?TVeaX93I3s9Vf3SUE/iTONaznrkCAPi7PyaYHBFvZIqrwBFQ/puCbZLq2HdQ?=
 =?us-ascii?Q?VNfk++tN9Vz/s5KC0M+dtTsM7mLdfOceeRa10e4xzXTtKgHPStBDqf+Sjehy?=
 =?us-ascii?Q?WwiN/MgpPlqWY3XrhL+w3KSCbniV58wAgdZV2fn8zqViaDk9nqHkhNxi+5sD?=
 =?us-ascii?Q?I43gW2a99ynwS2/doEOKXG73wqdN943bfFGq2fAzugFxaxdrFhMwyli67O6n?=
 =?us-ascii?Q?6cuPnTfqKP+W9aVnws4vnZR+Rbq549T2vHkhcrqUBdqT8Xd3cFcjPZ2TszPC?=
 =?us-ascii?Q?izQQucxQscfF6Zt/4Xx1fQarSq+Prfl+5wrEMFqPXFxQfL2XN6QfjF8Ly0AL?=
 =?us-ascii?Q?ApDhGsUGP8rjTQR13yHlNgFnOnIJAgz6u1VBftKjwnGlzj2IR8cZqfMIjbZC?=
 =?us-ascii?Q?ZWWEVdHuSkFtmpMRl/vHbKBEX3u+88gdDfLCIf/6FLZ3bB6nmGFw2VTq0dQ3?=
 =?us-ascii?Q?Z4JEwOoLPdM24nM/qWT8GXv+wRqfM70YuKkPb4WsgxYXBCfcwh5MdqSOPCsC?=
 =?us-ascii?Q?222JMknd7MASBNJzOD4KpopHgAtXmzty7Kk+HMJV6cdKgdun/ytvLBX1QsBv?=
 =?us-ascii?Q?Tn+04q2ux+0TVBdLYhn6LMfoafI0unygsvAtcxeyftM0MMz2axAWJ1nzHypP?=
 =?us-ascii?Q?t1k8llATSFVvXPd2snJMrpel789j/dNEyEyAuGIrciwV6nVfx+CYfm/bavju?=
 =?us-ascii?Q?DJR5NypF9fQLDM/yS2ax+epJ+kpntNo2fVx12bdUD3xD2pQEG3yG8OtSIiZd?=
 =?us-ascii?Q?xfUvWZudmqeaeHZcOy6QXyiM+1bT4U8Ea9japu8RTu+apH+xcCa/Fqi1YKzY?=
 =?us-ascii?Q?006vKiJu62FqT1E3FYGVPmdwxYvQRwvo5L1lt9Vi+ja2tpuhOM92CjFK7A08?=
 =?us-ascii?Q?bNSRzIsPKYm1Qj5QnVYnL8bO3fjO6UB5S3pRH4d5?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: da9077fe-dbf6-4341-814c-08dad7415dbb
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Dec 2022 04:21:37.1449 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xtShYHT/PWIdyK9E/Tp4r75fy+fGntntaYUq+Pg6MUQ/MxczloV+O9a6t+qYWLMNUIilY5aNRGBxYZwRahBPaw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6535
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670300500; x=1701836500;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=RkuujQLbJT+BS2cVvJ+UCXr/ux/m+DPTf1DWAEMSRSA=;
 b=mVypR+fE0wlmYsTHKebl7cBPI2zjVz4Y5OnfBs8eNjXj7mr4FI3IO1qK
 YZ3UegEElBWayNQhrEQeka7ExBYhunb1ZChigj1MK6dJRwbLwfUimiJsw
 Gmkd8LkttwRmUNzqstXAqv2HzlCaiSUjNB0bzLvJwx6TI+9cq3d0JstUE
 Pw1g4epUOhZOYSOnDL/zg2fU3KgQdUfZP3AHMskKv3l2vYd7qGZqyXgOt
 Lk2zpsYlxEbb7jbhrQvMzf4pYTIS77//KVAjBbwS1H9CDEeqFLTrTqtAx
 9jT5wQxq1lnLIcCWXb/1t1xq5CKjcpjNg5/smYeS1MoPm2c7cCeyeolIR
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mVypR+fE
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: Fix deadlock on the
 rtnl_mutex
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
> Mateusz Palczewski
> Sent: Monday, November 28, 2022 5:41 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net v1] ice: Fix deadlock on the rtnl_mutex
> 
> There is a deadlock on rtnl_mutex when attempting to take the lock in
> unregister_netdev() after it has already been taken by ethnl_set_channels().
> This happened when unregister_netdev() was called inside of
> ice_vsi_rebuild().
> Fix that by removing the unregister_netdev() usage and replace it with
> ice_vsi_clear_rings() that deallocates the tx and rx rings for the VSI.
> 
> Fixes: df0f847915b4 ("ice: Move common functions out of ice_main.c part
> 6/7")
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c | 10 ++++------
>  1 file changed, 4 insertions(+), 6 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
