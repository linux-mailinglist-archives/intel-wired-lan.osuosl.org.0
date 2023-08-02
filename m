Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CA9B76CA8B
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Aug 2023 12:12:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BD19A40A15;
	Wed,  2 Aug 2023 10:12:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BD19A40A15
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690971177;
	bh=AvSbwoIZ+P5SrBkEaFob+tWkP2fSG2c/dXZyh2OyhQE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=n6sNV79SqNJyoR72OfkM5NnzYkisnL6lQpOK4KV/j4+OMDw0djc8g8qi6Gbo35G8E
	 Hww4iSbFvF65FXDuCUbSC9UC3WzqLXVTLFZs/+hjFhg/Bj67E9eKVXnooB/1rP7WJ7
	 VLXzSL9cvT00ICbVpOf5EW5yAgSLH1/5khQMgA0zaGwJPK9FMxIL3JJ01fh2zMddb+
	 ByVswoU4LqBm9FA6iNCw8HzgXvP5tFd7d4QczXN7eckq3gQRgmg/qvMZosOenxSZqK
	 /xhQoiKGPkLprWYxTBwaHL4ShO149NMdP0oon9/Zur1jxlFHQ2CGU5JvuXxiX190dw
	 jXOyS2QWaZ7dw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OIJIPASdyfy3; Wed,  2 Aug 2023 10:12:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 39C7440166;
	Wed,  2 Aug 2023 10:12:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 39C7440166
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1C9381BF85D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 10:12:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2DF1581392
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 10:12:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2DF1581392
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1im6AJAcaTnE for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Aug 2023 10:12:11 +0000 (UTC)
Received: from mgamail.intel.com (unknown [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8D9EE8207E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 10:12:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8D9EE8207E
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="367003992"
X-IronPort-AV: E=Sophos;i="6.01,248,1684825200"; d="scan'208";a="367003992"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2023 03:12:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="1059767793"
X-IronPort-AV: E=Sophos;i="6.01,248,1684825200"; d="scan'208";a="1059767793"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 02 Aug 2023 03:12:09 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 2 Aug 2023 03:12:09 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 2 Aug 2023 03:12:09 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 2 Aug 2023 03:12:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BR0KFGkX/mQC52u9ExXqAXfB3hsxW/uuppksu2lgF6K4MhblVVuYOCTIgEYunfs0kZBY9z/VoyJnkGhq63n4vhshi+0VVYDsNICANBTNijKp0jcDespoRmbI7/KsChNP4ChNuVElkzkJEeNG9em5hFuCSfY7Dkfd27UmTkj81cVY3ziKnDpvuc27KgvSjFcm7pHxleTRXohiUpL6pvzh5n2WlvUKDVbK6WwZ09oVApkUDHL6Mc2I3avXAtXp5qn0cfDtW/LZWWOcMB/0Nxpig7HCID4zrorTadmUZaa1zci63SPONNjZ99NbrKGi1JZRuYKM0w38m4NgIU2CJWSnIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AAez07kCR+cFccdu+uOZ1G6kocEV015MF1Qp3zo5iBM=;
 b=KnKbY3g3+GZvlgouOu0rOk1g7E187yJTGE/SKXdZ5XnSd65NLdxzXQ31njQj6nGfbWVRkEefebQcQMDsTdayy3POLWs2G95zu7EBxx0Yi+B4qzNEKiw7rhjF4kHg7No0pkp2cdcUrKOGEF1AvOtJnfGbOk7l77nBtpXi4pzYIipvziqlazQ9ckRbGHzL+/+nGlURpscKZH2T9HWBFGm4HB6P56TLDRRiWjOapSlbtv0CGcWnH0aVOuP0/tAq6JmQjMvQHBMcxTHVHovawNVP8pf7EH42P7hTLle6G7Hs5ct7BikDF0jeeecbdMYpYsyb2841JHlTPfkUGxuwhm14rw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by IA0PR11MB7861.namprd11.prod.outlook.com (2603:10b6:208:3de::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.45; Wed, 2 Aug
 2023 10:12:07 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::674b:9823:4913:b800]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::674b:9823:4913:b800%6]) with mapi id 15.20.6631.045; Wed, 2 Aug 2023
 10:12:07 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Gardocki, PiotrX" <piotrx.gardocki@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] iavf: fix potential races for
 FDIR filters
Thread-Index: AQHZv8yTzu/LAlIFoU+q2ZRHJE2I/K/W0+Yg
Date: Wed, 2 Aug 2023 10:12:07 +0000
Message-ID: <BL0PR11MB352176D3F67EFA8FFD2B92B78F0BA@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <20230726141533.730620-1-piotrx.gardocki@intel.com>
In-Reply-To: <20230726141533.730620-1-piotrx.gardocki@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|IA0PR11MB7861:EE_
x-ms-office365-filtering-correlation-id: bfbe0eac-f13f-41c4-1679-08db9340ed69
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rgd7tTzWKHZIdvMEnBwctHCOn1sxi/vnQA9Pyx+j4m3oUjA6p20y51UGYdj98PciqKJ5uneaGXB0iXoA8un8wb3FvxskXBVqZtwIFGcK6U7g/tKt03JS5Ep/o/ELLiDv8r+VMXi0ZSs30TIzb9cK9o4JI5yi2x4EYYP0fYZ2/cH4nWoWniu7JcvfIU9HD6foz6he1etfYqNxFRD2vtL20nF8vz5rVG98x2DzdNT2FS13HVOLjyD8rh6T/DfexR4OpQm0XK2JG/B16L4CK3oKEGwD0j5wxt8ZwFk6KQxSqCMurYjOV4p2KxVf3uzCQKWov0ubZ/DkzX56XBacHoTHTAL2D/90CGg4HpWrurODCm2HGb/sQMkzby0njHLdUecglzBAiLECpg9QlJA1eB+9m0rpFmFCITSg2ecIyT6W5ZJ3WrpsqdOLKvaavVZ2pqNGrNol46TdVEX+lbOsCZFpn0kGXVZ7971sXKbAm85vmL1mT7nMj2ZYYlpi+RGIC32D7ZdG6xlnMbfBFBClf9JZ+iXgFIirUGiHf2NN+bQTDowniOlyMBUf/SEkldjs2Z/DLlXsA+NHd3I5QFtdOuscvRn9QZXwdIMyktz8tZTsJ9Ph7rfLQ/jf3iG/eviwis3m
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(39860400002)(366004)(136003)(396003)(376002)(451199021)(8676002)(5660300002)(83380400001)(122000001)(82960400001)(41300700001)(38100700002)(316002)(186003)(8936002)(53546011)(6506007)(26005)(38070700005)(66446008)(86362001)(66946007)(64756008)(66556008)(66476007)(76116006)(9686003)(2906002)(7696005)(71200400001)(52536014)(33656002)(478600001)(110136005)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?mmkC2dl+9qa9DDGpFsJ9MsaiK+5Uln6UKWYqQe3B5b7yB8Thx5nvdXrXM3?=
 =?iso-8859-2?Q?Um2JW7g6gdZbUjuzkNtrRjkrHNZuI3hbwbplSnavxHxtTS0/Fu9xuiE3OF?=
 =?iso-8859-2?Q?sJrr3TKUxmKk7WNoSHqyvfSkSCajWYeh4PwNMfHyvm23BwMcdGIgIYwZxi?=
 =?iso-8859-2?Q?lbAswsMS3XyjKSqXUMOvNtmaG3i8aRA1p5HVWDk12Dsem02iP9f2siDcKo?=
 =?iso-8859-2?Q?DZE+EIM5GLrq8LUOvVJ46Gz27yFOJnLIlnXtBD9TEdiA85xYYgxKCHB+cg?=
 =?iso-8859-2?Q?PHjTcqA04FUhnRAGdxO7hclC3PB8HZhDL+E9RWQb6P743ZsZB8fLqFuGqT?=
 =?iso-8859-2?Q?yzQqtoxNjS4Ft2ZGfnVDKmciN359pN/nFXxj0wC2nYgxLqmRxkZaMkDBFz?=
 =?iso-8859-2?Q?skV9Ny+70Jzigb4kVupqpaXJfPoQ03xtWv4OsPClWo5K9d4X1wEPWJb4/t?=
 =?iso-8859-2?Q?IbRW5jrAt/ZOCOOk4YQEQOTWXa60tugxPzpEsz1qkdPlzpEZ69WCXENUAE?=
 =?iso-8859-2?Q?q2Cg9lDPK+bxFIAybzm/X5WwdFaiwMxTyghxlX1BXvm1SdztBfjTvqCEfx?=
 =?iso-8859-2?Q?a+lHYFYygZFPDMXw5T/QBRp0pLBq6ouOn7kLLFrLhpRDWMhv3Eun7lfk/Z?=
 =?iso-8859-2?Q?xT6A1nIxruinsKhowCrZJIpWwR3C4QWco1vaSMVxkQ+pYM2tLxX9D27lpY?=
 =?iso-8859-2?Q?nl3FXvAlP0/AxNpzEmudeixKPpFYTwvnpSwBofjZt+3WtUpa44JwiGK/rW?=
 =?iso-8859-2?Q?vKZd1olxqEwxDuFD72lxIYg7DaoGBtEGzxjQyFPw/vtZdT0v+xe9c5K9EM?=
 =?iso-8859-2?Q?zDcqcBbKLp6jfnrFUpulAmgIdqpLtiWjHaGZ1MbUMH0Kv2IeRKYX56JeqF?=
 =?iso-8859-2?Q?ZAdYJiPhiT2Ol32EW5HaplDnfOqRwetQvYWQiL20+E7CzN8KEx4dcyEmFM?=
 =?iso-8859-2?Q?IS76aWPaHmutJEF2tudhxv5pSHPAW/ty7QsToHm/Lj38WrLXl30nk2/02f?=
 =?iso-8859-2?Q?ly/K8PReOAZUsfsuaaHRmekbmPSNNNyEU5EtYLNGbEEyp/yEJIiVhnFhpx?=
 =?iso-8859-2?Q?DLockx/ZnhCgmxw045Tl/X40EwIlqmI/aaVHFl+ykdjkeepPLN+WnaTFQh?=
 =?iso-8859-2?Q?gjA14aMFz2Cs9uceZBa1o0t52D1UEuO2+UuwArZWb1BGRydcyHP3kjwsv8?=
 =?iso-8859-2?Q?BGNGzBBp8qwgQNacjvqiy8DQcYWH3dxjKabftA3tswV/r31uC3fF7lkBgD?=
 =?iso-8859-2?Q?eFbYGKt4FAEnBhMHykMHnuqleJhYZvvwqFl+lV3gknsEpU4vINoZg3rUaH?=
 =?iso-8859-2?Q?caBv5jSPUFel2LvvCJ4u4MofqpE9HUZlof9d6QLv4xmUMRfHOAGoTfxA1+?=
 =?iso-8859-2?Q?8BcmBRMj5jKQJ7swBYaNk5cleEB72ZezCeX9JmAjky2FaJgEwjGn5N/W6G?=
 =?iso-8859-2?Q?gu/l1/8v8+pYQkhJMYZOJ5qm0drHDG+JqyyfguXT8Ux/DBCMdfdrhIyKu1?=
 =?iso-8859-2?Q?aHu9/mPzb1LQAAtWKmyd4cZoD9UWgLayBH08dYwOgpo84eNc7mvL08U3mU?=
 =?iso-8859-2?Q?8xVOFa+J4oF7gDRN+LDfoHyw3lHIy3EmOqo9GTnUFiO8fhbB/P63aBAW+5?=
 =?iso-8859-2?Q?vXDrWet54jwB2B1gPWzgUA9X48DqhKaSibU4qwtaDlty84RJVPrX1KoA?=
 =?iso-8859-2?Q?=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bfbe0eac-f13f-41c4-1679-08db9340ed69
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2023 10:12:07.3172 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1ZCF4xpPWucWnLnq2oRtmsrK5jXvS/sfN8lpGWY52O3xUY/e/MQ8QDGSCmHlZQHQNLzZ2RS/t0u+/reZjezpieQunoF+fMCP8vHZa+PmNlc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7861
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690971130; x=1722507130;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=cO4aXAryPMLYnCS92OE4IFsWBrRy5h0vO3fxzU139tA=;
 b=eZy7TfbGu9bRpzipsJ7CZoCPMBKcvglVgtY9VDjufzC/hUNVHGY8EC4R
 ZzKGgBjIyvKCtr1ngY/s4WtMD58s8Nx+pfMm2UWiON9Fpr9hPv2ieVGrw
 SVAH6dT1ftyWQDyY/UWVnhiIyMfrNmJiEjfyhChocQLjCeIZGa+FcVzCP
 kWIvQDUyTpesiBVFpYbYLwW62w5MgXKC1LIBg/AVc5YTyOOuMtE85kEh0
 HtVvTHx2ju7sC/YRatDcJb9JC1TrOUtM9vyVpzsqbyQ+Qp4tBzvtsVl0b
 R0LmAjvR8ar9lYd9/5vvqPzNRJUxMltcLRkbuxJkwMRg+5PAjjOQb2buP
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eZy7TfbG
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] iavf: fix potential races for
 FDIR filters
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Piotr Gardocki
> Sent: =B6roda, 26 lipca 2023 16:16
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH iwl-net] iavf: fix potential races for =
FDIR
> filters
> =

> Add fdir_fltr_lock locking in unprotected places.
> =

> The change in iavf_fdir_is_dup_fltr adds a spinlock around a loop which
> iterates over all filters and looks for a duplicate. The filter can be re=
moved
> from list and freed from memory at the same time it's being compared. All
> other places where filters are deleted are already protected with spinloc=
k.
> =

> The remaining changes protect adapter->fdir_active_fltr variable so now a=
ll
> its uses are under a spinlock.
> =

> Fixes: 527691bf0682 ("iavf: Support IPv4 Flow Director filters")
> Signed-off-by: Piotr Gardocki <piotrx.gardocki@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_ethtool.c |  5 ++++-
>  drivers/net/ethernet/intel/iavf/iavf_fdir.c    | 11 ++++++++---
>  2 files changed, 12 insertions(+), 4 deletions(-)
> =

> diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> index 2f47cfa7f06e..460ca561819a 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
