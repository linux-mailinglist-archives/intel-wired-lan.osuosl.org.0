Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 54CC82FF1E0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Jan 2021 18:27:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0CC3521514;
	Thu, 21 Jan 2021 17:27:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G1xzV7KtulIM; Thu, 21 Jan 2021 17:27:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 45F6F22EC1;
	Thu, 21 Jan 2021 17:27:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EA9511BF5DE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jan 2021 17:27:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E4FD186D3A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jan 2021 17:27:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1Kzq1m6snMJt for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Jan 2021 17:27:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 81DCC86D30
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jan 2021 17:27:51 +0000 (UTC)
IronPort-SDR: cSdB3Ay+8p1mC5CHHEMKOFirwMIOt3b1RDUYBVTix+3oTxyoMO5D2WAd1hlhVI4BTUFkc+fXjb
 QArcJO9Kp37Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9871"; a="175800373"
X-IronPort-AV: E=Sophos;i="5.79,364,1602572400"; d="scan'208";a="175800373"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 09:27:50 -0800
IronPort-SDR: KcJyoywflGCgVLW3dQ71TSv3duLiwN1XDMnaq0p/3Ut941V+3aK2F9+ZxQUZN5NuTNr/CzMcmx
 5eEkMoU5GSbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,364,1602572400"; d="scan'208";a="347981824"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga007.fm.intel.com with ESMTP; 21 Jan 2021 09:27:49 -0800
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 21 Jan 2021 09:27:49 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 21 Jan 2021 09:27:49 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Thu, 21 Jan 2021 09:27:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AJ9JYpZQ1Kc1XGrYRUjZUZa9REUiIcHWDCZhrz9LjtbS5sZcHuH34YzUsK/YWkKVaiBDcxftLwNxaixT3+U+Aq/t5dVJJZgQT9eKXr2Tq9Z+DMIA9FexNM0eSZaGoh5lZZoBJa7k6jHRWYACLjfsvoJ9zj+70vpnRshfrRcbFsnnUtI0H9j++ZkwdeBVXMZJWnlZJbGyUDyvYUTI93HqxtiDUWjGwAntmmtBwnLDWydaC/ZB9L7LvwgRiXuWChYlg6TMfyY1LqpxQy4lkpYUCf7viPHQwiuZCZApmFKm0gPMEl+6M1UoqfTxOam0FyZo2O0uz5IbsYYB9ruWSexKQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zPO5cb/TVh6pQzz0BynJZB8SxeobIe6gVC19poCuZpg=;
 b=PE2eX8RTtiTciPuvrQVdApOilpshTZwvVBRZP6zBzTTlSA/hd7bBGh2Sdt6MjQ7Gf7B1s6r4BHGA5HsB6L8t8D10WMi91X+RPSp/4o2Ltw7lrBrWYb9SoQkWJwlFwowggYMbOlMDBOBPtvgSLaICpErLRydT1plLhH3vLwloo1dcIrQ3euukDVDFkmtITJwAsRGxZB5dX4gAVpUjGijjj68GaEf8OxBE3n6VEL0OA99pRZWRFTC/nkgsVcXZXLqsXrVU/gW/Ow62qzAjgxOWjufdVWDHtzseUQEbj6XlkZClzEQOsA5QsFh92so4i8R/g0bKW3uOsWPS14yY+Ku4vQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zPO5cb/TVh6pQzz0BynJZB8SxeobIe6gVC19poCuZpg=;
 b=i1CdtpayuaE84fF/xhjO8l0VGT8CsLWFgClkf1osSgiQUR1Esk6dA/Ou9vuZoZ1Cr4Nhliarr5q7XtdeaEpRyVRrrTIcCX8M8wdyaJvDdh9+uSk5cKhfxVD7kkhWPh7m3tavjHGi1H5rXvxcOYu45/tvkyyHWwwuVgDrn/OUpH4=
Received: from MW3PR11MB4764.namprd11.prod.outlook.com (2603:10b6:303:5a::16)
 by CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.9; Thu, 21 Jan
 2021 17:27:47 +0000
Received: from MW3PR11MB4764.namprd11.prod.outlook.com
 ([fe80::851c:df49:9853:26af]) by MW3PR11MB4764.namprd11.prod.outlook.com
 ([fe80::851c:df49:9853:26af%8]) with mapi id 15.20.3784.013; Thu, 21 Jan 2021
 17:27:47 +0000
From: "Venkataramanan, Anirudh" <anirudh.venkataramanan@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net] ice: Fix MSI-X vector fallback
 logic
Thread-Index: AQHW74gRYaQUfdrNY0OOoP5FUtmQfaoxq9YAgACiAQCAAAIiAIAAA5QA
Date: Thu, 21 Jan 2021 17:27:47 +0000
Message-ID: <f92462e266093015b84666eb482908772be11f9a.camel@intel.com>
References: <20210121075247.16666-1-brett.creeley@intel.com>
 <74b3c8c5-f611-d797-49f2-63f260869c1c@molgen.mpg.de>
 <0255cc56d4a93d84d781c21f857ea4389faa7f55.camel@intel.com>
 <20210121170446.GA44125@ranger.igk.intel.com>
In-Reply-To: <20210121170446.GA44125@ranger.igk.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.34.4 (3.34.4-1.fc31) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.139.74]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 754b2f1c-45ff-44c9-d719-08d8be31df06
x-ms-traffictypediagnostic: CO1PR11MB5105:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO1PR11MB51055EE5FE5E18B6D0BEC34490A10@CO1PR11MB5105.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AvyCuPTN/MHliTd+WntTl6bngDhLiynlGCC92vmnf03sF+AOnyNdbQiLAaC6ofdbth9SAFf/iPhjKxDI6eL6zBYw641K97FtZ4Ia7132rynHDPei2EUJ4pJrntzcjLK3LuQ/uMat+QrHVr3kMl4yQ1IQzvHbhHAfFChoAKMGB1AYHFLsfxecD4d7WEP7VCM3UkXoOpuek7f2gCUBgup1js8nHJQnfhlNy3Qv+tFXPeJTDaW0wImJWO62qVOw2fb0M50Yfk7NAPT9bXXO0u9pEEo69205WFfRR7BMtSYJ2Al4oxthGpe5fCMmkLkX8EAIrouVWfxYuWyUNCszCp3w3eGxqfW94wIcO21qGUHtBEYaxddtuUI1+R1OtmhRAR4hTEVhuZ4Y/uSz/galHpPGJ9i6jGV6t6oSZ+6aVNaJi0ugdhCujFNWft0Pipp6hSoSnpLvgk0qTFxg60g/XrSbKA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4764.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(76116006)(6862004)(6506007)(2906002)(8936002)(26005)(66946007)(66446008)(6486002)(2616005)(8676002)(37006003)(66556008)(64756008)(4326008)(186003)(83380400001)(6512007)(54906003)(86362001)(66476007)(36756003)(966005)(71200400001)(6636002)(5660300002)(498600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?MDJIc1lTOVdOMG5UUDNiVForQVdBZVdmS1FHUHJwenVmV1V3ZTExSk5MMVVu?=
 =?utf-8?B?Y2g0SkdLNmlhT2pKN0VONnNRNkp4S0hqcmtDVWpPZDRQS3VkQzliQTVZZmVG?=
 =?utf-8?B?emp4OWlvOFZiOE83SlNjK3hueUdCQVgxUUdYZFhXMEUxc0U0c1M3NGo1NjhX?=
 =?utf-8?B?bzViVVZPVGExSXNlUHRXK0xIVlEydEtSMHpNL2pGZkNabm5SZjZseHJ6QXls?=
 =?utf-8?B?bm5ESFlLaVNpeGxsQzZQeWJ6N2pTNG4vZlc4OUVBM2VoUXBsN0ZwY29tZkZE?=
 =?utf-8?B?bEtPbmxQRnBjcjNPbXpoNnRzQ1lGQ0hnVU03WUtFMi9sZWVJc09jV2xkQ2tY?=
 =?utf-8?B?bDJvUWd0d2tXZVc3NEVwcTdFTGNCdW9UMWRGdGVFL2Y4S0ZVZ3V4Vi8yV3U1?=
 =?utf-8?B?VXJiSUpGeWxjMlMreS9rWEVhTE0yNHd6OXlsVG00N2gvR3VPODdVMURmVWtL?=
 =?utf-8?B?NWl4UlF1WmoxbDhPWHFxa0dPTVIxbkgxZmEyWUtQTlN2ajRVNTl5R2dzS21x?=
 =?utf-8?B?S3hCdndBTXN5QmxHcFVTdmtYa0hkM3ErR2hQUDlNZ3JHalVqaElGa1JYRFF4?=
 =?utf-8?B?SW00ZThQejMwQWFkc0tWTmFqUGRvUUJwWEJCeWhTUUV3VEpKb3BPNTBRRTQz?=
 =?utf-8?B?eWcxMjhyZnZVdWkzdzBlZjY2dVpGSEVzTnByQVpuMnpFNnQyWkE1RncxazRq?=
 =?utf-8?B?ck9RdDlXZVFndVNMcnBBNkYyeWlMQTJSTFNTMUxmL0V6TUw5MmNrZmg0OVFq?=
 =?utf-8?B?eHR0NVVvMUtpRUN2cGV5QWZnRFZUdTd2MVptTEZkUWRnOGhjNFFubGhhbmVP?=
 =?utf-8?B?cTRjd01xcHRvOXcxZktPdjErRTFIUzk3KzBkLytoVThlTUxrS3JtSnptS0sr?=
 =?utf-8?B?NThyM3UrUENSTC9PQURlV2hIdDRCWXl2cmdjd0hYYzIyZ0lHVTZGOWhvaWNx?=
 =?utf-8?B?dVR6UXhkQ1Y4T2pkRkMzUTJsU1h3eVQ4M3d4RVNYUEljcWtOK2h5RmhEMXlP?=
 =?utf-8?B?dlFtekZPMkd2L0RIQ3cya1JVOVlyTjdVSHA0ZTZvSE1MMXpKY1craTRVZnBn?=
 =?utf-8?B?WFB5OGJBTjlGd0pMVXdrNEV6RHluQVpkUlRPR0xNL3o3U0lGZTEzeGFSdytQ?=
 =?utf-8?B?UXJ3cmhnR08vUHdzYzVmZnBRbVVLVWdvVmdVdnM2UFVxeVlMaHM1ZWgrWERy?=
 =?utf-8?B?SjJEMUxUVWN2aVRxQ3JrOWtrTVZvOWVLYzYyVUtqZUVZbnUrUE1jSWE1M2xF?=
 =?utf-8?B?VDhDZGxoNHMzZURnRzVSdWtxRFkzam8zWHJHV3RvVks3eWl6bTlYRWJ4MWQx?=
 =?utf-8?Q?ONSrrPCPpUFQzkrbQtuKaMKGs+/XV2+DxL?=
Content-ID: <C90001E6AFF6E844B6D0108DE4B0B441@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4764.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 754b2f1c-45ff-44c9-d719-08d8be31df06
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2021 17:27:47.6600 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wd+czL3SsqRpM+oUyfH7R0DZHXpByAvOz5APPH/kilY4P94w3kR9p7gaIp082bJ8v610WOAyXjyMK6TWHmCowAUGPyliJwxxhLHAfFy1HP+8FHvQFVtcJyvu6DbsLvY3
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5105
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Fix MSI-X vector fallback
 logic
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
Cc: "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Creeley, Brett" <brett.creeley@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 2021-01-21 at 18:04 +0100, Maciej Fijalkowski wrote:
> On Thu, Jan 21, 2021 at 05:07:21PM +0000, Venkataramanan, Anirudh
> wrote:
> > On Thu, 2021-01-21 at 08:17 +0100, Paul Menzel wrote:
> > > Dear Brett,
> > > 
> > > 
> > > Am 21.01.21 um 08:52 schrieb Brett Creeley:
> > > > The current MSI-X enablement logic tries to enable best-case
> > > > MSI-X
> > > > vectors and if that fails we only support a bare-minimum set.
> > > > This
> > > > includes a single MSI-X for 1 Tx and 1 Rx queue and a single
> > > > MSI-X
> > > > for the OICR interrupt. Unfortunately, the driver fails to load
> > > > when we
> > > > don't get as many MSI-X as requested for a couple reasons.
> > > > 
> > > > First, the code to allocate MSI-X in the driver tries to
> > > > allocate
> > > > num_online_cpus() MSI-X for LAN traffic without caring about
> > > > the
> > > > number
> > > > of MSI-X actually enabled/requested from the kernel for LAN
> > > > traffic.
> > > > So, when calling ice_get_res() for the PF VSI, it returns
> > > > failure
> > > > because the number of available vectors is less than requested.
> > > > Fix
> > > > this by not allowing the PF VSI to allocation  more than
> > > > pf->num_lan_msix MSI-X vectors and pf->num_lan_msix Rx/Tx
> > > > queues.
> > > > Limiting the number of queues is done because we don't want
> > > > more
> > > > than
> > > > 1 Tx/Rx queue per interrupt due to performance conerns.
> > > > 
> > > > Second, the driver assigns pf->num_lan_msix = 2, to account for
> > > > LAN
> > > > traffic and the OICR. However, pf->num_lan_msix is only meant
> > > > for
> > > > LAN
> > > > MSI-X. This is causing a failure when the PF VSI tries to
> > > > allocate/reserve the minimum pf->num_lan_msix because the OICR
> > > > MSI-
> > > > X has
> > > > already been reserved, so there may not be enough MSI-X vectors
> > > > left.
> > > > Fix this by setting pf->num_lan_msix = 1 for the failure case.
> > > > Then
> > > > the
> > > > ICE_MIN_MSIX accounts for the LAN MSI-X and the OICR MSI-X
> > > > needed
> > > > for
> > > > the failure case.
> > > > 
> > > > Update the related defines used in ice_ena_msix_range() to
> > > > align
> > > > with
> > > > the above behavior and remove the unused RDMA defines because
> > > > RDMA
> > > > is
> > > > currently not supported. Also, remove the now incorrect
> > > > comment.
> > > > 
> > > > Also, prevent users from enabling more combined queues than
> > > > there
> > > > are
> > > > MSI-X available via ethtool.
> > > > 
> > > > Fixes: Commit 152b978a1f90 ("ice: Rework ice_ena_msix_range")
> > > > Fixes: Commit 87324e747fde ("ice: Implement ethtool ops for
> > > > channels")
> > > 
> > > The word *Commit* does not need to be put in there.
> > 
> > Will do.
> > 
> > > Could you split the ethtool change into a separate commit?
> > 
> > Will do.
> > 
> > > Also, can you document your test setup so the driver failed to
> > > load?
> > 
> > The issue (fixed by this patch) is triggered when the driver
> > doesn't
> > get adequate MSI-X vectors. We made a local change to the driver to
> > simulate this situation and verified that with this patch, the
> > driver
> > comes up with a single queue.
> 
> What's diff from the version that was up on netdev?

The one on netdev was an enhancement to the fallback logic. There was
feedback on this patch from Jakub so we are going to rework this.

The current patch is just a fix to the existing fallback logic that's
buggy.

> 
> > > 
> > > Kind regards,
> > > 
> > > Paul
> > > 
> > > 
> > > > Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> > > > ---
> > > >   drivers/net/ethernet/intel/ice/ice.h         |  4 +++-
> > > >   drivers/net/ethernet/intel/ice/ice_ethtool.c |  8 ++++----
> > > >   drivers/net/ethernet/intel/ice/ice_lib.c     | 14 +++++++++
> > > > -----
> > > >   drivers/net/ethernet/intel/ice/ice_main.c    |  8 ++------
> > > >   4 files changed, 18 insertions(+), 16 deletions(-)
> > > > 
> > > > diff --git a/drivers/net/ethernet/intel/ice/ice.h
> > > > b/drivers/net/ethernet/intel/ice/ice.h
> > > > index 6efafe7d8a62..619d93f8b54c 100644
> > > > --- a/drivers/net/ethernet/intel/ice/ice.h
> > > > +++ b/drivers/net/ethernet/intel/ice/ice.h
> > > > @@ -68,7 +68,9 @@
> > > >   #define ICE_INT_NAME_STR_LEN	(IFNAMSIZ + 16)
> > > >   #define ICE_AQ_LEN		64
> > > >   #define ICE_MBXSQ_LEN		64
> > > > -#define ICE_MIN_MSIX		2
> > > > +#define ICE_MIN_LAN_TXRX_MSIX	1
> > > > +#define ICE_MIN_LAN_OICR_MSIX	1
> > > > +#define ICE_MIN_MSIX		(ICE_MIN_LAN_TXRX_MSIX +
> > > > ICE_MIN_LAN_OICR_MSIX)
> > > >   #define ICE_FDIR_MSIX		1
> > > >   #define ICE_NO_VSI		0xffff
> > > >   #define ICE_VSI_MAP_CONTIG	0
> > > > diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> > > > b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> > > > index 41427302332c..aebebd2102da 100644
> > > > --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> > > > +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> > > > @@ -3265,8 +3265,8 @@ ice_set_rxfh(struct net_device *netdev,
> > > > const
> > > > u32 *indir, const u8 *key,
> > > >    */
> > > >   static int ice_get_max_txq(struct ice_pf *pf)
> > > >   {
> > > > -	return min_t(int, num_online_cpus(),
> > > > -		     pf->hw.func_caps.common_cap.num_txq);
> > > > +	return min3(pf->num_lan_msix, (u16)num_online_cpus(),
> > > > +		    (u16)pf->hw.func_caps.common_cap.num_txq);
> > > >   }
> > > >   
> > > >   /**
> > > > @@ -3275,8 +3275,8 @@ static int ice_get_max_txq(struct ice_pf
> > > > *pf)
> > > >    */
> > > >   static int ice_get_max_rxq(struct ice_pf *pf)
> > > >   {
> > > > -	return min_t(int, num_online_cpus(),
> > > > -		     pf->hw.func_caps.common_cap.num_rxq);
> > > > +	return min3(pf->num_lan_msix, (u16)num_online_cpus(),
> > > > +		    (u16)pf->hw.func_caps.common_cap.num_rxq);
> > > >   }
> > > >   
> > > >   /**
> > > > diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c
> > > > b/drivers/net/ethernet/intel/ice/ice_lib.c
> > > > index 3df67486d42d..ad9c22a1b97a 100644
> > > > --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> > > > +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> > > > @@ -161,8 +161,9 @@ static void ice_vsi_set_num_qs(struct
> > > > ice_vsi
> > > > *vsi, u16 vf_id)
> > > >   
> > > >   	switch (vsi->type) {
> > > >   	case ICE_VSI_PF:
> > > > -		vsi->alloc_txq = min_t(int,
> > > > ice_get_avail_txq_count(pf),
> > > > -				       num_online_cpus());
> > > > +		vsi->alloc_txq = min3(pf->num_lan_msix,
> > > > +				      ice_get_avail_txq_count(p
> > > > f),
> > > > +				      (u16)num_online_cpus());
> > > >   		if (vsi->req_txq) {
> > > >   			vsi->alloc_txq = vsi->req_txq;
> > > >   			vsi->num_txq = vsi->req_txq;
> > > > @@ -174,8 +175,9 @@ static void ice_vsi_set_num_qs(struct
> > > > ice_vsi
> > > > *vsi, u16 vf_id)
> > > >   		if (!test_bit(ICE_FLAG_RSS_ENA, pf->flags)) {
> > > >   			vsi->alloc_rxq = 1;
> > > >   		} else {
> > > > -			vsi->alloc_rxq = min_t(int,
> > > > ice_get_avail_rxq_count(pf),
> > > > -					       num_online_cpus(
> > > > ));
> > > > +			vsi->alloc_rxq = min3(pf->num_lan_msix,
> > > > +					      ice_get_avail_rxq
> > > > _count(p
> > > > f),
> > > > +					      (u16)num_online_c
> > > > pus());
> > > >   			if (vsi->req_rxq) {
> > > >   				vsi->alloc_rxq = vsi->req_rxq;
> > > >   				vsi->num_rxq = vsi->req_rxq;
> > > > @@ -184,7 +186,9 @@ static void ice_vsi_set_num_qs(struct
> > > > ice_vsi
> > > > *vsi, u16 vf_id)
> > > >   
> > > >   		pf->num_lan_rx = vsi->alloc_rxq;
> > > >   
> > > > -		vsi->num_q_vectors = max_t(int, vsi->alloc_rxq, 
> > > > vsi-
> > > > > alloc_txq);
> > > > +		vsi->num_q_vectors = min_t(int, pf-
> > > > >num_lan_msix,
> > > > +					   max_t(int, vsi-
> > > > >alloc_rxq,
> > > > +						 vsi-
> > > > >alloc_txq));
> > > >   		break;
> > > >   	case ICE_VSI_VF:
> > > >   		vf = &pf->vf[vsi->vf_id];
> > > > diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
> > > > b/drivers/net/ethernet/intel/ice/ice_main.c
> > > > index fb81aa5979e3..e10ca8929f85 100644
> > > > --- a/drivers/net/ethernet/intel/ice/ice_main.c
> > > > +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> > > > @@ -3430,18 +3430,14 @@ static int ice_ena_msix_range(struct
> > > > ice_pf
> > > > *pf)
> > > >   	if (v_actual < v_budget) {
> > > >   		dev_warn(dev, "not enough OS MSI-X vectors.
> > > > requested =
> > > > %d, obtained = %d\n",
> > > >   			 v_budget, v_actual);
> > > > -/* 2 vectors each for LAN and RDMA (traffic + OICR), one for
> > > > flow
> > > > director */
> > > > -#define ICE_MIN_LAN_VECS 2
> > > > -#define ICE_MIN_RDMA_VECS 2
> > > > -#define ICE_MIN_VECS (ICE_MIN_LAN_VECS + ICE_MIN_RDMA_VECS +
> > > > 1)
> > > >   
> > > > -		if (v_actual < ICE_MIN_LAN_VECS) {
> > > > +		if (v_actual < ICE_MIN_MSIX) {
> > > >   			/* error if we can't get minimum
> > > > vectors */
> > > >   			pci_disable_msix(pf->pdev);
> > > >   			err = -ERANGE;
> > > >   			goto msix_err;
> > > >   		} else {
> > > > -			pf->num_lan_msix = ICE_MIN_LAN_VECS;
> > > > +			pf->num_lan_msix =
> > > > ICE_MIN_LAN_TXRX_MSIX;
> > > >   		}
> > > >   	}
> > > >   
> > > > 
> > > _______________________________________________
> > > Intel-wired-lan mailing list
> > > Intel-wired-lan@osuosl.org
> > > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
> > _______________________________________________
> > Intel-wired-lan mailing list
> > Intel-wired-lan@osuosl.org
> > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
