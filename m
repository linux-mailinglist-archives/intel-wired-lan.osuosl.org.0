Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6410558EC31
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Aug 2022 14:41:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EA35040BF9;
	Wed, 10 Aug 2022 12:41:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EA35040BF9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660135299;
	bh=R6JJl922d7Q6XIkeq9fpYPq/MR75QYC8SRBbGFr7s7c=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2RDpRTFLJxeOQ+qXp7YtLyass0IrC3PhoU7NXLr8sh6E0Tgn4crL/SpDRwp+YI2Dc
	 v1mZOS3p6vS0kmUNCkYqyN+tjZ6SIIcu5QtRfKhe/dC/WOu1iUZPhx5WXbBeFnbF+U
	 aHYgG2c2ve43KyWvOp4Aq7+Y/cQym/Y3NRRr/k3kEb1RWWw4ukIh71MibibZWetlF7
	 hilIpf55gLIeQM4wRoAK+Jwg+cHYos7U8IPRvXYuAO7y7nv7Zv0yWtAGo7BeZVYIqy
	 EOyDY07Mkd6egrqmdM4c9KnO6ZUP3xH3GS+6WFBlCYSrGpkxLsvRpBXSx62tRwF6q3
	 NT120/MyC8igw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aaSEt_QZkn_K; Wed, 10 Aug 2022 12:41:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D50EB40BE9;
	Wed, 10 Aug 2022 12:41:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D50EB40BE9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DCB271BF312
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Aug 2022 12:41:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B61A460E49
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Aug 2022 12:41:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B61A460E49
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Km7laQM5Ke03 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Aug 2022 12:41:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D2E3260BB3
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D2E3260BB3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Aug 2022 12:41:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10434"; a="270846117"
X-IronPort-AV: E=Sophos;i="5.93,227,1654585200"; d="scan'208";a="270846117"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2022 05:41:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,227,1654585200"; d="scan'208";a="932876471"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga005.fm.intel.com with ESMTP; 10 Aug 2022 05:41:31 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 10 Aug 2022 05:41:31 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 10 Aug 2022 05:41:30 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Wed, 10 Aug 2022 05:41:30 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Wed, 10 Aug 2022 05:41:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DrSm9BmBIGWPAHatrS3oG59AXhMoj4ieVwLMEqhJq/D242K8p/8DYDXTSOq4bDP8BviWgRBLdCyCUISt9ZD9oH/wJGQRHWBWulC99Jbq0iXGxx1FByvoyQuUs7gbA0zKRajQCA8O6ojO1GHe+Lkysz97w29AinW4fOR+o+Eafrb8AfhvG2IDmwp2a85NNqmHBtPvLLYOgImV0mC2DVXNbibz/nWU1ZmjeL5QHGLQd+TUpbHpAxjwOiXb+7SkO68xkbna8iMyKTpe7wVwi9EzEKrECP088ihWZL4UqM1s8n/9fPHlce8rrFF/MM7WDUVCul46iCx9egFnUBCE7Jyb6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+2aBvWfbj4mUrgUFz52qcLTIJ+FjXudcbuQ5Yx+weRU=;
 b=OuvwjXeSeo7JJElPmLYiVan0934lEd8DEjo1eVziKjrl2eLdrxCFh7+cUf4EpOXk4dlEYFYFrHe6gvFuZtnZpRcAn/vjxIU7tbTURIjF0j+ev4nscfgmpBezzEN6MB8TVLcI9hfUnDJyU2AB83IzYNgsy28Rw/PekmdATDwKZ9SZJmJq0mfe/NsAZVULPRQv/inxS+5c+scfG45+R/7nolXpKlVor/f8TWgOS/i7wNOWKG6vmZmyD9S9Ty/dZsfi/hmYHBqLEwjkpEqdjbJYrCmKmNC6b44tEmnE8gzeeV+ZMK5m6l3yuz9RgInBSGe9067tYA19S6HmmwIHokOQEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by CH2PR11MB4312.namprd11.prod.outlook.com (2603:10b6:610:3a::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.17; Wed, 10 Aug
 2022 12:41:27 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9%4]) with mapi id 15.20.5525.011; Wed, 10 Aug 2022
 12:41:27 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next v2 6/6] ice: introduce
 ice_ptp_reset_cached_phctime function
Thread-Index: AQHYog8MdGtuoVW+ekiDDnQr6y37dK2oKLuA
Date: Wed, 10 Aug 2022 12:41:27 +0000
Message-ID: <BYAPR11MB3367280B01552541C4CE9484FC659@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220727231602.1625980-1-jacob.e.keller@intel.com>
 <20220727231602.1625980-7-jacob.e.keller@intel.com>
In-Reply-To: <20220727231602.1625980-7-jacob.e.keller@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 32a8ee9a-448e-4cc2-c1e1-08da7acda467
x-ms-traffictypediagnostic: CH2PR11MB4312:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: p+FgaUto9ztBHfxYFY1S442+O80z2IUTqTN/HFWOMYO6GzxZRnDmfs0TwUEs3IAb7VsMQnOepTzx0MgY3Ct7PcHsDdZhsakjXCv81d8mwZgGxzHcjtXqrure3T0utilaeg1U5sXzP0p0PchVAzDes7wybc61/6t2CHHIRfXPBdjxkosoeHQqGAwtU2PXAToN0i76q+A7hMHh21WN2Opg2cTfmIb+2gffKP5ia/RtB0Z+LV5iF5r1nCm9z11LlznhOC/14oSMjN3sB9PAX8HH9mPUHgs+3XsB7qomZys1NY08xnzPjsBKlKcf0vvTtqWrrew4HocjyJSGSWWcLXOzDk5bnZ/lyNnmLI1xtP5oLWQQ3R/D/uPHCeKKtBT6Ea0aQuSmAWf0Bz/rG7V9S23DSVSAhQ9XysRS+WVcc3fZh8B5419Vq7Fk1Cu4iJTzcmAStxWuVuFp383Ritp5XDrBIXC0kczzAzLkB9srlr0upPNAj+hVXHTrAgTefrZnBzfaMa1IZLB+Yuw14OFoNcf4joZ4lCK5C8SIY1ap4uucWs0Vp9GkPJZuAWTyY1SPZrydLWOimxW7QUGKX+3e45mRWyI8s8Z5Y6czbDgLmK38fI2/g5KMsyde8qE3r9AtmPDBuoWKW1irgIKybhQzirriDoTvPjb4Va5cnw2yX/fgkTEBD4I05IigbfshxuIQejY/ScYoURQYrYme/kquoL1Pb3Xrp3uyuKhscPSuxIgK0QmBsz5ZkOYZNmnQFSWATxX3lsd7uToPZD4n4glav8ymgPB5x4PrSBb5wTZ1LApbOVsrXvZfjO3WPFNKvpMJx3oh
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(136003)(376002)(39860400002)(396003)(366004)(82960400001)(38070700005)(186003)(26005)(71200400001)(6506007)(41300700001)(53546011)(9686003)(7696005)(8676002)(110136005)(38100700002)(478600001)(86362001)(55016003)(5660300002)(66446008)(66946007)(66556008)(316002)(64756008)(76116006)(66476007)(2906002)(122000001)(83380400001)(33656002)(52536014)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?FSC6nE3+u+6Y/1TzMbHMDaaCHOX7nZ+TDi8T8zxMBM2AZJTp0vrkAZBYu6mi?=
 =?us-ascii?Q?MNVkoJZK74vAmPgj8+06yIkUcH/s+Z2sYSO4PBY0K050BDnLfnRtg8rJVRNy?=
 =?us-ascii?Q?xHViy9u2L/zG4GSZQecsVdlgeBWOREJ7l0bMBiqM3LEKw3ijl8uhVy1OyZP3?=
 =?us-ascii?Q?/rtxUIRQ8ULuh5brojypU9CS3cqAmQ28HGhjkBqGpGagL3wHQHRAap7Q8N5k?=
 =?us-ascii?Q?xstMlmLqkIrqnvMz1j12n9kNkUtx+2yl6Wz7L6rF5G2sIGeyos606zIFzAXi?=
 =?us-ascii?Q?qgaVIepHH0+x3bmmMmSTF0B3c5+Vc3CqqRZvuxuEg9lmlxMHQyBGx9wpCDgG?=
 =?us-ascii?Q?+hPKzG8BzMryyQOFHsb70/60PMm5G88ztj5G3kkeUQQH42Y1ou1FvifAgIxK?=
 =?us-ascii?Q?mD/fiHHcCItENFBa/mna493f2sNuTE8MG6OTgrLCca5CHl7E286NQ5bkCwl4?=
 =?us-ascii?Q?xLYnzrGjUPyJdugzw5iEV0D6kJ96OyPmI8JvBN3uts+lvD34Ph7/Bt2RzWIF?=
 =?us-ascii?Q?9TeTisomEWM7IXoa+fpSCQnOg6RHoacGKc3q2H+oMIgNgz8pmkV/B7I3SKfg?=
 =?us-ascii?Q?S1MP4iZ/DrS4gvpz+ylnmTz22xHqf4KvqKcs3OSCs2yorfru10s+MSAXBzwe?=
 =?us-ascii?Q?87sXjF6s0mlg/ucXK9MR1+4rklqOaovBF5mx+TvE9ixnDtd0NLFyuIKw85r2?=
 =?us-ascii?Q?pak73fQ+2mc4WORCaHUZ4P0euH9X4/0Bgh1l/ml2CRDENXo9YHYMC3r8hWmU?=
 =?us-ascii?Q?C2V5y1kPxKySf9HKexFLUkp3nsrfsGoKKgnrSTxrbLeWRSzw7hzecJkT7jFw?=
 =?us-ascii?Q?tbNkXiccbyvDZbziL2Q19z1WOG5RxWMimIsAUVGZey803ihHjnyQPhAcOjrm?=
 =?us-ascii?Q?UpAWN4pHi8le6I9vYoJ9Dt5t5WSt5bxVDD9j/wPxZPaI0C/nsFfHGyUDZkKK?=
 =?us-ascii?Q?VmBblA+Lwb6F4Htu6C6uaSevO+oR+1GejJ/nYSlAPNj3ZYa38aZY3PEpv+5s?=
 =?us-ascii?Q?KEo5iwGhthmkMe74BJviU+yViMsPwsMCaMtR65WAZLUiFrlEX7kCA6kiFaQZ?=
 =?us-ascii?Q?QQb98AW7Wmq8q3xw/aCr/Lv6u8GwEcKLoCaGGSbrswcXHn7bKdGAsujJplbp?=
 =?us-ascii?Q?+z/hNdmuF5sGCA9fWm4B6lmYzhAmVERlZoJyv23791tt88C3FE0V64PHa9YC?=
 =?us-ascii?Q?nIZBzcZGn09Y3nehsQlIj0u5RWSqzyPdHGehTjR/QgW0keVtwHPNYakCbs1F?=
 =?us-ascii?Q?kKWjjQVQI4D0zCfCFQGrW3x2heG+NBDKB8hemtZkjqjq05ancuLyTCeWSUet?=
 =?us-ascii?Q?vBy00+z96W6JPgT3dXEE5TeFuyFcYiRhY+DVRjVcwa60X3c+silk/kWQmmJY?=
 =?us-ascii?Q?EcviYtQUTYXuiB9hK1qHnMiXjf3d/ZZS3+BFUB24j+da071YhWmTUSV7htXc?=
 =?us-ascii?Q?5NUMR18jCF4d95wHMy7COCYu0JlP5uKyycVxuyrUIY1B9WtmypKdpa2U2Z4p?=
 =?us-ascii?Q?rCItcm2/WHKjyj1sXlxaWYcYeYHrXs8VZhKaIYVWx9pxAGXevOAjLqHgdCva?=
 =?us-ascii?Q?YPwsxNL4/ORuVqnKIdgeIlkozQoRp5QjG2joNymG?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 32a8ee9a-448e-4cc2-c1e1-08da7acda467
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Aug 2022 12:41:27.0869 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: l3+DppBp6a756OQ31lOs+9y/Tv2q3LKDFaUsIqOOY0NiGRmqB7c/m7XIhPTT7JJyqPiOjTRzGURftQf/gTMkxw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB4312
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660135291; x=1691671291;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=UEeAevMsUoK3kcXe5qgM1JgyL2mAfgoZf5NTflI5Lxc=;
 b=MU8T9iL7SowTxsOubTX53ZMiTYcSUEbdOFry7i/YpmaSRt8KNx+SrO+l
 RtkTb9iNngOtWAp/CPqiyj0nxBnYbG6pcJuSmdxlBSoCGF5ohB58Y8SS4
 Jkz90fg2BImNWB9U+MXRHuZMhZD5iRNO0ijKM+jlPh7Q/5QgCo+DTcYzl
 LirxJOo4aveHXUv4L/hlqrG28VDCEIY5frlJnZCfwQPFUt0bor2oEVwF9
 NGhpaIuezi5LYej8jwWmiRfZOuNLVZnz8t/zUpVkQ+lT3cEChyU1IoMCd
 xXDkvKichul8xtuYQClYGjcZxlYC8zsR27UDv2eQKvlGNM7hUycSfFrz1
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MU8T9iL7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [net-next v2 6/6] ice: introduce
 ice_ptp_reset_cached_phctime function
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
> Sent: Thursday, July 28, 2022 4:46 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [net-next v2 6/6] ice: introduce
> ice_ptp_reset_cached_phctime function
> 
> If the PTP hardware clock is adjusted, the ice driver must update the cached
> PHC timestamp. This is required in order to perform timestamp extension on
> the shorter timestamps captured by the PHY.
> 
> Currently, we simply call ice_ptp_update_cached_phctime in the settime
> and adjtime callbacks. This has a few issues:
> 
> 1) if ICE_CFG_BUSY is set because another thread is updating the Rx rings,
>    we will exit with an error. This is not checked, and the functions do
>    not re-schedule the update. This could leave the cached timestamp
>    incorrect until the next scheduled work item execution.
> 
> 2) even if we did handle an update, any currently outstanding Tx timestamp
>    would be extended using the wrong cached PHC time. This would produce
>    incorrect results.
> 
> To fix these issues, introduce a new ice_ptp_reset_cached_phctime
> function.
> This function calls the ice_ptp_update_cached_phctime, and discards
> outstanding Tx timestamps.
> 
> If the ice_ptp_update_cached_phctime function fails because
> ICE_CFG_BUSY is set, we log a warning and schedule the thread to execute
> soon. The update function is modified so that it always updates the cached
> copy in the PF regardless. This ensures we have the most up to date values
> possible and minimizes the risk of a packet timestamp being extended with
> the wrong value.
> 
> It would be nice if we could skip reporting Rx timestamps until the cached
> values are up to date. However, we can't access the Rx rings while
> ICE_CFG_BUSY is set because they are actively being updated by another
> thread.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 99 ++++++++++++++++++------
>  1 file changed, 76 insertions(+), 23 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
