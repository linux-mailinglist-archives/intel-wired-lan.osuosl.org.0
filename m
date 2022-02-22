Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9857C4BF4E1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Feb 2022 10:40:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 127868139E;
	Tue, 22 Feb 2022 09:40:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m0zIcTNIZ36K; Tue, 22 Feb 2022 09:40:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EBB69813BE;
	Tue, 22 Feb 2022 09:40:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2BD1E1BF2B0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Feb 2022 09:40:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 14E6E408B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Feb 2022 09:40:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UCBuLnlKsL3O for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Feb 2022 09:40:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CE2FE408AF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Feb 2022 09:40:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645522807; x=1677058807;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=mZTm7Fumv4/cUCmbBMxo86vKL7YcszpcQXunvGaeh0M=;
 b=TYaS4F8ENmwqUpqjXbbdcl8RtosWBKn9c79o+GcVmLMTqQTGifT1f6mZ
 bsmFfkhGLEpZYlV3ZLp3tq+v8qN4bQD0GxYxqWaswaSi9HFl7rHVzu1JT
 bVPkN4jaRu03Z4T4zVyYjJItHNSBL0/Gd85OZwXjdXJfW1CVuk7nifWQV
 BRsgj6GiCbcnw8Co/CHHzMEy3FOpDVXPIfgPvKe1hxUCbKd8NVua46AiW
 WmndDP8N514s45fdrYk34HiRvq8P18rII4hI0lGaH4IHob/hni1+kdciF
 kWgDkiE5zHgN4Ok9FiROe7iGXmC8GXqB8iFDLaVTyEEWrMB90FToGf/8N Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10265"; a="250475981"
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="250475981"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 01:40:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="507919975"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP; 22 Feb 2022 01:40:07 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Tue, 22 Feb 2022 01:40:06 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Tue, 22 Feb 2022 01:40:06 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.108)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 22 Feb 2022 01:40:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aZEUsqBx4PlAr7KjsOKkM7BuAibLMVbArfHrFIOUuoERAyQHbLZ6rC8/vWRFdQVhFZ9YEzXlSLESDcYz4XD6kPx+4EmuQj4ybSM5bAPxdcOYfN69ssbhMESgCvCsniAkc8F6PQ63YeFp1sYKyHeGnthkkOsA7nMegsdEaeufCT/56tDTk3QZPXnekR8YLq5eRPEpHv2KiuBePBFT9dOyU3BEfLDhRsh9Ddj9OpMxv+pdCPOpO0Xo84+HUOLWTnWWc6XSaD199Yb8+eKAXRDxtjzcygSDfxFis5/x69onhe639t0pSCUSlIPuirUflSgMOrImyRoJ4ztQu4D2ECaFHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iGPF8PhMUvxoF3Gcv67XWVyyINgD3wLNrxt9ga5KArk=;
 b=BwP10IrwJ6IwvlXvBQ3A12fKs8dqMvUplaZP8ei6ojAVb+nyJr5mFfhPca+dP/4J/Urog85uEqM+dGqhHuPTlFrTAuRVS3zqdgqQVdN10RHoch95waoUx5xWjD975ZjZOyOyLvj7xqCVOCWzN5RTj2BWMA0DiETwuLgzpLsGucoKsBw2IznWtTpmqdo2FeuCT2XKKxxbuA8PWliBOHi+S6Ig2UHuU/8cpufueYPiNFpcgV+5ptcgXrqCTPeOhvXtKxZqD+2EjjKYgMG/w+/sp+bcihdU2iyo8N5b3a1moEoCJJX+3OvL9fbUjyHq6iXqU4+b169SrFRKaYb9gzjRdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by LV2PR11MB6024.namprd11.prod.outlook.com (2603:10b6:408:17a::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4995.27; Tue, 22 Feb
 2022 09:40:03 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::88f4:40a1:ffe1:905a]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::88f4:40a1:ffe1:905a%5]) with mapi id 15.20.4995.027; Tue, 22 Feb 2022
 09:40:03 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next PATCH v2 01/11] ice: refactor unwind
 cleanup in eswitch mode
Thread-Index: AQHYI32AILqFc1tl5kmS5zrAWHv/UqyfWSJg
Date: Tue, 22 Feb 2022 09:40:03 +0000
Message-ID: <MW3PR11MB4554732D42CB5EEFFB5E74AD9C3B9@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <20220216213738.3826664-1-jacob.e.keller@intel.com>
 <20220216213738.3826664-2-jacob.e.keller@intel.com>
In-Reply-To: <20220216213738.3826664-2-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f2d4c014-9e00-4f80-fe50-08d9f5e74d61
x-ms-traffictypediagnostic: LV2PR11MB6024:EE_
x-microsoft-antispam-prvs: <LV2PR11MB602455120003D0F37B3525039C3B9@LV2PR11MB6024.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /sWFc//iqvW8+nfvJoUmAHUB12OBKChqJVIU+giPnDJbCgOTd/bGkFFaMcD8PUA+9Slm/+fVoUG6wVPfXr09h6j8OBY7lQZrA8XbvJZ8oun7gUoBvg1W1sTyRdoQjTgYKIMjEaa2R1k8KKLDXY+mgzSpSXmNFO1+0D5vnbvWtPK8ZoWPXgm65QLBA+XjvCR71vsSKxiseWVK+iWoJR81WqrWO3pf9Gz0i614UqHaww54p4jC8uo6YV6doyz1yL1TFCl++elH3jTbIJYxFxm7Tr8S2mX41rVvxUpgSCwhmcGVAt2rXFHoF14NrJesZLoIGEPVyqSyfrb7VULJw2vEND9ExvHNkRlvxai0p0pKGnsCcVzN1YXPDq914FtDIuPeAlSzRx1eGjk+t0Bggfq92/bxP8ELA7UKioBYWyd6Y+HNiyNQgl0mDftEcuHky0q4OVCb/wfSY7u9okmlVU1tN3mhH9gHerH8eyEJTlZRCqKtOGeRXwENYPlQk6ih53bLPr+mvWwvps+HQU1QKfuFkU0sPA1hIt3cGkVDTUeesaVkFXcBP0TORcn8IGEK6MUBhgqkOpN0aqOorYDh2WITJ7xJtQwfJJ5Ih+qsJz9G9wLNGAl2agQ/pp0L7XCg4ZbJpLy7fRinNuJ8P3rKS41TbY0bQsS+rQaA8x5k40diFQKXV2UWP2XJd1o1+v2LZuNCH2B1hgKOFqODjwiJC42/fA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(86362001)(55016003)(38070700005)(38100700002)(82960400001)(122000001)(110136005)(316002)(186003)(26005)(66476007)(7696005)(6506007)(66556008)(33656002)(9686003)(83380400001)(8676002)(76116006)(8936002)(64756008)(66946007)(508600001)(2906002)(5660300002)(71200400001)(52536014)(66446008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?30a815cKUNnJJHuMVVgZroCNYFBrE/n+Df27qEpnEliFshMAjRJ43s0cN8i4?=
 =?us-ascii?Q?t3SjVMJ2AXohcdeubjoGXFehC3kZyoNGaf6kJy0KLuW6i7YPVTgDa54AlkXn?=
 =?us-ascii?Q?VVPtyAx0Sny13CToJtuY/zXP31Jk2HQiFx/hnRYQWkiJvgxpYKpEc5SRUOpR?=
 =?us-ascii?Q?AnTzFCXtHgM9WKiOPiEAMKEDzRA8RD3N3iozZ4tARfVVOIba3h3OCR9RuCdY?=
 =?us-ascii?Q?eLDV8AV2Dk5GZhaeuOsTG7a6pYQzORJEh2e4OD8CZ0SZlusRTEnHUp1kFjZn?=
 =?us-ascii?Q?kQjyWWu77LrhJFh5XHjMaSiA3Ki45tl/uR+gJnQYrKylgAwW4/UBS0S6s9OQ?=
 =?us-ascii?Q?96FtCKdOF5Xz73lSDf1o239nujFn27rVcpCzlESrcIjBbY9iPBJLGBM5hfI+?=
 =?us-ascii?Q?8V/Oi8YXK44GljRmS4JFjc6v1ak10kgVO7v2/ZxQHPDb2xoD4HgXlsL81yZQ?=
 =?us-ascii?Q?FEGb0CISWXuZmSGDnKZw54AJsgKnMPkVsxZkV3am0lQ2jojGJ7tEKjgdpqkm?=
 =?us-ascii?Q?2o5C1f4l4PH1GEKEe6tLKzbCb0+TA2ARvAXj1Q81cWiyjGANwOvCLpCIqCy1?=
 =?us-ascii?Q?cKf7CATVdbjvhpCOcBuwvdlMRtVANUasmZjlAXOHpDR/0HEqzqWX1Fdk8ej4?=
 =?us-ascii?Q?Tolnu3inPFK1UXPq6ppwlJ9ta6V0YwDcQfd0qdUKL0TiHgGU6N9B9Sxs/lkv?=
 =?us-ascii?Q?wERVdrjFsZ2O1hr6+YJ8YMWMoUThQ6XS69pX3uNibw8ctgflf5Y7hxLUnB/c?=
 =?us-ascii?Q?lkSY/OYt2YvlmjmKqQiEG5JtIbiMAe1kXfqpELK1aeUtYSlVXIfCl/hsZ0Mm?=
 =?us-ascii?Q?h2I8fR/9C8Yx3P/O6Zx9LK9Hx/rfssBO/jHLoRbB/Rl4+Zh0uyenUV33PHK+?=
 =?us-ascii?Q?5Mpc15Ac39dZTLGSTY6Cx3HGk/YIIJB8VKWBxcyrSRkfEqN6rbCtDW1kh2bb?=
 =?us-ascii?Q?HW4TGpEgOLQ9wHVSy4bgjoB6xtiiog0EPqw3NdRuaowSQLRumShkzPV0R5X3?=
 =?us-ascii?Q?m2PRqDn8btFmulFDOE6TidnAHLL79HYKmcigPq0DhrNpL2ivIh5cLgvF0ANI?=
 =?us-ascii?Q?O6JnrDlUoz30bbth/aJrXWZHX8ogjnupwxWMRDkDSnPS6f2C7q80d6Br/Jp0?=
 =?us-ascii?Q?bgdjzDRWnF82ZRxSj9H0s7KoguatnW6L505fOLCc7WCgY4KIANu7xon4VlxV?=
 =?us-ascii?Q?DfjBln4gGTxo34y6FnHofzmQ3xOXvtZIMW3ZwT0DmCcTgeyNEHEuIXwoqDhv?=
 =?us-ascii?Q?sE4Yn8YIBcaKPvxrHMF2M1DAlzEK8xe+ppYqAz4HjrDmyuGmwQ87OxfWFbaX?=
 =?us-ascii?Q?I45bU3iTyuIlojcuTLkUEx83i15xe/rdb9NBCecJxaTo58appxhvauWI8iOw?=
 =?us-ascii?Q?9ALqTlCVQgImCuhxWCynBLLkJsp4xajDZ4sIrFDT9V3BQuqf/eVVhauU6qoZ?=
 =?us-ascii?Q?SaQtKx+HBFHFlQaA7OFWCG1CBGF6f/hrRMzIBal5+WLMWthIlgWcNzpYWiRp?=
 =?us-ascii?Q?CedxGsAuK5Ql0alxjbvhZ6SBZpL9UyI6S36GCS9d5plbUkBGNnaZuh0ssXzP?=
 =?us-ascii?Q?QMfu1AXHgOVbWVbj/8xmzYMmSSzY6otnQ/Kw1rt3rzK4TIJE8sA5y1p7yBpo?=
 =?us-ascii?Q?u7OhG8WFV5p1mvt6ZlxYE00wGHCMl4k/ILIn4ZwOfcSa4dy+vf5u98B+x2hK?=
 =?us-ascii?Q?/9N+ag=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f2d4c014-9e00-4f80-fe50-08d9f5e74d61
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Feb 2022 09:40:03.2794 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cYndxacwlsrznt6+MN62Kpnx7oi7dKFEmBOdyB86TsFfcdJS6OKQF4zB4C+WYZmIssZS2hDg4bCS9SeNeiYq8TNfEB4FBNnLrRUgB1AUVdM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB6024
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next PATCH v2 01/11] ice: refactor
 unwind cleanup in eswitch mode
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

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Jacob Keller
>Sent: Thursday, February 17, 2022 3:07 AM
>To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
>Subject: [Intel-wired-lan] [net-next PATCH v2 01/11] ice: refactor unwind
>cleanup in eswitch mode
>
>The code for supporting eswitch mode and port representors on VFs uses an
>unwind based cleanup flow when handling errors.
>
>These flows are used to cleanup and get everything back to the state prior to
>attempting to switch from legacy to representor mode or back.
>
>The unwind iterations make sense, but complicate a plan to refactor the VF
>array structure. In the future we won't have a clean method of reversing an
>iteration of the VFs.
>
>Instead, we can change the cleanup flow to just iterate over all VF structures
>and clean up appropriately.
>
>First notice that ice_repr_add_for_all_vfs and ice_repr_rem_from_all_vfs
>have an additional step of re-assigning the VC ops. There is no good reason to
>do this outside of ice_repr_add and ice_repr_rem. It can simply be done as
>the last step of these functions.
>
>Second, make sure ice_repr_rem is safe to call on a VF which does not have a
>representor. Check if vf->repr is NULL first and exit early if so.
>
>Move ice_repr_rem_from_all_vfs above ice_repr_add_for_all_vfs so that we
>can call it from the cleanup function.
>
>In ice_eswitch.c, replace the unwind iteration with a call to
>ice_eswitch_release_reprs. This will go through all of the VFs and revert the VF
>back to the standard model without the eswitch mode.
>
>To make this safe, ensure this function checks whether or not the represent or
>has been moved. Rely on the metadata destination in
>vf->repr->dst. This must be NULL if the representor has not been moved
>to eswitch mode.
>
>Ensure that we always re-assign this value back to NULL after freeing it, and
>move the ice_eswitch_release_reprs so that it can be called from the setup
>function.
>
>With these changes, eswitch cleanup no longer uses an unwind flow that is
>problematic for the planned VF data structure change.
>
>Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_eswitch.c | 63 ++++++++++----------
> drivers/net/ethernet/intel/ice/ice_repr.c    | 47 +++++++--------
> 2 files changed, 54 insertions(+), 56 deletions(-)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
