Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BB7963F048
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Dec 2022 13:16:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8DE8B81FD2;
	Thu,  1 Dec 2022 12:16:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8DE8B81FD2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669897002;
	bh=ZeBuyBx+MIzGNW/QvcTY/mCLldPmCS8HM0/OqibjUPA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xMiFTITJAH2Vz3iCGkwhN1kly3vM8pF35PWYwbKN4q+Uazc6UH3S6hFA0Ne03wMyU
	 EH3G6U94njdpKJH4xJL2TyNtF8vE+TIoLvNEjE5uHfx6/+9xKzqrepONADKhgMou0U
	 g0GMikNRyByM+YzZf2jpowceO6GEQ3r9IQDtY/Zg04Z5rDvkuknfjbPUAfqzjC8Nt5
	 j3LoU4IHq/BG173ezdBT1HA09xy168q+eA+VsAo7DKf3Bp7NITD1UObvGY/ILQB0CI
	 cyKNtao+NNwPH9KtTXIvIPODUQkCSJkuokhDhtFUnd3UXAbnBWCkumiZRRY359ITN1
	 Y+r2M8HCBn1tQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2XZyeIxW2M-I; Thu,  1 Dec 2022 12:16:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 847B381FCC;
	Thu,  1 Dec 2022 12:16:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 847B381FCC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C5AA41BF3A3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Dec 2022 12:16:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A945881FCC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Dec 2022 12:16:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A945881FCC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6qdhtgCidLaI for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Dec 2022 12:16:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6123881F3B
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6123881F3B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Dec 2022 12:16:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="379956260"
X-IronPort-AV: E=Sophos;i="5.96,209,1665471600"; d="scan'208";a="379956260"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2022 04:16:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="638370786"
X-IronPort-AV: E=Sophos;i="5.96,209,1665471600"; d="scan'208";a="638370786"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP; 01 Dec 2022 04:16:34 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 1 Dec 2022 04:16:33 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 1 Dec 2022 04:16:33 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.42) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 1 Dec 2022 04:16:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HqJXGDl1ZcjFhmr92u1npPvsYklfC6ckgfnnR2FT9tOGEKVE1drsfhCsLQb+WIu3Vz7kvKNc+CafEsluDB8fxpSJz6Nf61MGvNXOaEWThTSjbrHoicUKrcZ/NxS+kYn1zl6Od3F63HBBxbPVoWzfRNgRBhjmOcBk0nICIStu2YA4RGiV0u4JmJ/JtxT5ElzflXZiFvUjEaqsmeNuf1ziA3uMuKrC2+tR1JnhxPI+Z3ZzuO5+ILh3E5+rIbQJ6tpx5fl79CivP9oE7KMlpFZNya3a7Xw8L7ONFc1tpGz6zcbwHtamQ1pEXsgolU8A90ZY496D5cfhjtF8Z+URFuKL2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BbTgSg6u28Azig+lpxavHBnepAHpwel6bvbtS0VJ/Rk=;
 b=LWE29OVvZLT3gYJWCRtb6BoEpuNir9QObTD3y5ty0qDj/1rh2hdT4OOQkVdYH+n93xl8UHKqfpx/RT/+UfY4CKqRdUY89FwHl1rfw36WxDc9j/u+GwenFVJCR7n3P0QNBG+MkVj036pg2D1G5A3Umvjn/8PFfIoBGThWzDqK7ozOKCHjg3ac66kRShBHNMozL+N7rUJEc2Z4RZNCAVDoDqMQ0jv7DgR0XoPrGY+/lvH5dlQ6f8gkFGzisNHMmOj3sK9oUJCkYjhK2vdkWbHDmcExyI/R/elUreaMEg6VjoSLqZCBsGvqucL0kyzvYBg+36kRA0nYiLHPalWbWTnMbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by SA2PR11MB4857.namprd11.prod.outlook.com (2603:10b6:806:fa::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.8; Thu, 1 Dec
 2022 12:16:24 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::cfab:5e4e:581:39cf]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::cfab:5e4e:581:39cf%9]) with mapi id 15.20.5857.023; Thu, 1 Dec 2022
 12:16:24 +0000
From: "Drewek, Wojciech" <wojciech.drewek@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Barsehyan, Mikael"
 <mikael.barsehyan@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1 2/2] ice: Implement
 ETHTOOL_FEC_ALL support
Thread-Index: AQHZA0trGne2KlgeLki6IcqYhj9cq65XyaCAgAEnz/A=
Date: Thu, 1 Dec 2022 12:16:24 +0000
Message-ID: <MW4PR11MB5776E7A22A81901F3EDF06A0FD149@MW4PR11MB5776.namprd11.prod.outlook.com>
References: <20221128170354.2537171-1-mikael.barsehyan@intel.com>
 <20221128170354.2537171-3-mikael.barsehyan@intel.com>
 <db3bc7e0-2d68-cfba-8803-9124e6b3d915@intel.com>
In-Reply-To: <db3bc7e0-2d68-cfba-8803-9124e6b3d915@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5776:EE_|SA2PR11MB4857:EE_
x-ms-office365-filtering-correlation-id: 9044f435-d5a6-437e-0139-08dad395dda2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nC9iQUDIj0kKrX1hvZ7G7mISynnYKL2lAZ8L/vexDXBfeD9ej5/+ybJ8SqdGXxYCZ/uHJbqSK44sl3wVNNZ24e/STjnPVsx0CEUiB66gjMmYwrldiDt6bWijIY02cJns17orDJy/442Zr12sZNJXntvmPx3ZDoMQqAnlhLkrm0t1FGpMQ1z92hUtW+TAn9xoMyhLy6TG6n13PMJzWCKapSBzIbMmnqu30dKq9RveDtXxFtCglmmxOcGFAydmE7wTlJ4F4DvRO77F/T7cboAP5Te4QDq88hAUGM0idOJd260uXuESmqHQwjfKUaLMCWRjKutq9Pa9KNfLLUeE9RTrmKfUYyP5FWTenT3pPfkkvF5FRWwd3J0ineAV0qY7iTsdkJS+jjNCJsYlFCNITB3c7Ccf30jSx5FUzka6ftU1bCbAngF+tesX3p/l9tiKwDw0EumxhdTG8KLc6nXJpMbVjSgVgg2XwqQM6eq4v2gAhd+f+wU/T+NYYZwCez1Emzn3VrJr/Sneh/TvvaYjsK4KhBtR7sqys2+aDudRu7JmtGgl3XwK1glnpFtOVVOvZ2YlVRnCEI8j+2tfDt1lzevyd7rC9pXzACgxS6jkvXzvLKRAO9CaOCiaMHM1mW0YEM9cpqMdz9i71DrrQTDi0Zah2M+ZUrxHmaQ5NymkjLrh6EjWLjlwPtJh4meFe8xOm++tyitPREsHt8835a/eVZ6hBxoWgRldeQ7Vo4koGSCJnzE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(376002)(396003)(346002)(39860400002)(136003)(451199015)(33656002)(86362001)(53546011)(110136005)(6506007)(7696005)(478600001)(9686003)(966005)(71200400001)(55016003)(38070700005)(82960400001)(38100700002)(186003)(83380400001)(122000001)(52536014)(41300700001)(5660300002)(26005)(76116006)(66946007)(8676002)(64756008)(66446008)(66556008)(8936002)(2906002)(66476007)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?vSRzhp5zB8zQ9IIcaFNmBCoidfcHW4qlcvw2Vxl3UgFX2xrV0jz6kL+n/D?=
 =?iso-8859-2?Q?ZKSzjQ4e5Fx6NE8KDCn4ZN+jl9jKBgHJ6LaWjfIa8PhdeicQccbfpMBOlA?=
 =?iso-8859-2?Q?b/sedNaT8NmYBS/OiynZLd2l6y2Rkb5VmMeuoci0c+nMXG/K9kytZK7311?=
 =?iso-8859-2?Q?GHzGPk9t0YttPHCZqPr5t8FGrmKG2JJQ07BJim8zCNqp0iyDy6BDi9ZXBW?=
 =?iso-8859-2?Q?4lPkLHd6mgu17AoIkRwcsE4nMPpZSa6e8UG78WTirO7dktNhdubZjYxoIx?=
 =?iso-8859-2?Q?SRoPbRJBK8Ls36f5j/dcgGoFWwgm/imHUCd4d+EbORoXIbzYxR3cwBGtyc?=
 =?iso-8859-2?Q?4YJ5B+MKMnh6AkAvD6Zza+kS8AX+MMljNDlt1e4EBfT1KEjMM//3YojBp0?=
 =?iso-8859-2?Q?HBjAL9+seES5SzUpJCSRkkQdI4AZdkSnBmLs01y1y8EiqsyDi8byvOgIOh?=
 =?iso-8859-2?Q?eTiM6/H0lvRskAGTtob5iaQtoIIZKbb2NA4ebyWMiWNxI8BoAI929GJ6kj?=
 =?iso-8859-2?Q?zYYJNIQEjTLn2i1MDJgLgGVXAQ79hD7NLlxF5k3M6BG7OlxjJQonOW1ddW?=
 =?iso-8859-2?Q?iSBxvJDjwzOUZZVEC9SM/pDWg2vtaBwXP/cG/QiJ69/M3uH7yHvOCyRxEz?=
 =?iso-8859-2?Q?bBWjlSVlYopdBR4ZmYkE5t5W5/YnVoHC596GeToRGlCyl4qsYcqc/RpFHB?=
 =?iso-8859-2?Q?0PjO+CNqBbo7rC/kSjeiZOxCtfmM2t8Ef25xn4NGwniNgwTw3xsf57iIAp?=
 =?iso-8859-2?Q?2cMFb3QdlLH9JCNFuy5jRCxbfnF8GklWho62wCtdVxkxwPea+iOQ45cU2b?=
 =?iso-8859-2?Q?fllsgL77FzCWvYJ7s0yloIYOG2mrWBS/fZ2broEBEjgg17nshm684z1uib?=
 =?iso-8859-2?Q?hOGdRZK5QXwg123v6/JskuINdh8MpJb2CUaK6o2PWzzg69AWRkgOV6rcoL?=
 =?iso-8859-2?Q?Ptq59gPAEFHQ2dNtal3WtLmtvGqVU1KN91OeBbs+dn1jUNDEkLT1KurEY9?=
 =?iso-8859-2?Q?G1O59ufUvGxc/9EV2YoswlRDtoDb0EwC6ulCfSl2O01uNtgjEPJGh1RUlu?=
 =?iso-8859-2?Q?NfRv8U53/TuGya0J0xDkXLjbvpEwt3F/2YKa+GPIgQBSH+fQUMXJ/O2gmC?=
 =?iso-8859-2?Q?PrBVdr7woqJWFgJX9vIQtwn7BcCCV3a3Pwd9yivrwhwCvFlRNDt8ti7sE7?=
 =?iso-8859-2?Q?5/h+HpppeDJWLVYDi3ps1CoaA8+gSOBDhB69msKPOKsD2pjMuZQImmENWq?=
 =?iso-8859-2?Q?faWVELyVr30q44dxqSwcBkhyxak0u1lucO7tmej6bqvRIkUYYaglQZKspJ?=
 =?iso-8859-2?Q?o6tRfsuvaXMVqsHTaXJVyE2wLtoWSkfGymYFK2JJxurfPldtB73BbfbeFL?=
 =?iso-8859-2?Q?s9qV1PHypImaFvRW47qbV26HUKQbbjYXM/Fv1JGyD+98XMQ/njrw/3R7oQ?=
 =?iso-8859-2?Q?6EqvCI5VpcraNvadbz8q9CH0UyvRJbQmZJ73GyhMZJfgumqLZ2eIRUu/pq?=
 =?iso-8859-2?Q?dP+I4zsNEtJEpV1g7ba47m4THBYi6kz+CJrYRQ4sxkmPLbcSZXc54vKh+H?=
 =?iso-8859-2?Q?JkiuqZE6O3ySEKHdRlJv1G4uNPss1TO1I342F092lHQ+kkm46txNz/zjeV?=
 =?iso-8859-2?Q?zOA5P+50jNmjk9jOkfJM4hxrMLSAaBYZ1j?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9044f435-d5a6-437e-0139-08dad395dda2
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Dec 2022 12:16:24.8003 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lKoI3OaXFHn7ZEUKoQTAcuO/6QUshTcummyrON10MxLWJF7Ge7HrRj3LjAtidNbe4geRB+6/zAZXn4nvVN6gV5bOyYcPRZZkL+MeXAcMKIo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4857
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669896995; x=1701432995;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=kqhvh3HMvd2d6o3T7qUWdI3fWwsFji7oGM5RpQtGAdk=;
 b=WjdBO1gmC5w1QW66jto5qEkvcBoBHahhwppXvfWSJI+SkNo49G83f+iJ
 GmwFOJAEvNLTCp6+ZU0w21mAoIEEE1YwYZz0v8aRB0w+LEcjB4XGVNU+Z
 QpDbum0KK4P8+hrEgtKQ5tdeK3MhJZpG+ADHJcGcX/h92FQEopAz7Kytq
 GifmMVXK/IQDHKOaKV9Ndk5mNcOY8xBfQNMtez80s+s7uUW14MNbMKuX5
 aKN3kWB1ClLFUfJfbL2DYmstRunCSv9bgJgDPIW/qXZDXQgIjcnwwuqKP
 RIMdEWAkslGQq3IHYYRcxmD0UeNT1sD5C4lB1K1ALr23gLD41r/uTKE6W
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WjdBO1gm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 2/2] ice: Implement
 ETHTOOL_FEC_ALL support
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

Hi Tony,
Thx for the review

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of T=
ony Nguyen
> Sent: =B6roda, 30 listopada 2022 19:18
> To: Barsehyan, Mikael <mikael.barsehyan@intel.com>; intel-wired-lan@lists=
.osuosl.org
> Subject: Re: [Intel-wired-lan] [PATCH net-next v1 2/2] ice: Implement ETH=
TOOL_FEC_ALL support
> =

> On 11/28/2022 9:03 AM, Mikael Barsehyan wrote:
> > From: Wojciech Drewek <wojciech.drewek@intel.com>
> >
> > In case of ETHTOOL_FEC_ALL we enable same flags in fw
> > as in case of ETHTOOL_FEC_AUTO. One additional flag that
> > we anable is ICE_AQC_PHY_FEC_DIS which allow to detect
> =

> s/anable/enable

Will be fixed

> =

> > No-Fec mode.
> >
> > Introduce ice_fw_supports_fec_all function which
> > checks if this feature is supported by the firmware.
> >
> > Co-developed-by: Paul Greenwalt <paul.greenwalt@intel.com>
> > Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> > Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> > ---
> >   .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  1 +
> >   drivers/net/ethernet/intel/ice/ice_common.c   | 53 ++++++++++++++++++-
> >   drivers/net/ethernet/intel/ice/ice_common.h   |  1 +
> >   drivers/net/ethernet/intel/ice/ice_ethtool.c  | 13 ++++-
> >   drivers/net/ethernet/intel/ice/ice_main.c     |  3 +-
> >   drivers/net/ethernet/intel/ice/ice_type.h     |  9 +++-
> >   6 files changed, 76 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/=
net/ethernet/intel/ice/ice_adminq_cmd.h
> > index 54c87ced4fad..4e3934c4e9b7 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> > +++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> > @@ -1141,6 +1141,7 @@ struct ice_aqc_get_phy_caps_data {
> >   #define ICE_AQC_PHY_FEC_25G_RS_528_REQ			BIT(2)
> >   #define ICE_AQC_PHY_FEC_25G_KR_REQ			BIT(3)
> >   #define ICE_AQC_PHY_FEC_25G_RS_544_REQ			BIT(4)
> > +#define ICE_AQC_PHY_FEC_DIS				BIT(5)
> =

> Perhaps ICE_AQC_PHY_NO_FEC_EN would match the existing naming better

Agree

> =

> >   #define ICE_AQC_PHY_FEC_25G_RS_CLAUSE91_EN		BIT(6)
> >   #define ICE_AQC_PHY_FEC_25G_KR_CLAUSE74_EN		BIT(7)
> >   #define ICE_AQC_PHY_FEC_MASK				ICE_M(0xdf, 0)
> > diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/=
ethernet/intel/ice/ice_common.c
> > index 0e9584e50d82..f7db43ac41e8 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_common.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> > @@ -3300,8 +3300,11 @@ enum ice_fc_mode ice_caps_to_fc_mode(u8 caps)
> >    */
> >   enum ice_fec_mode ice_caps_to_fec_mode(u8 caps, u8 fec_options)
> >   {
> > -	if (caps & ICE_AQC_PHY_EN_AUTO_FEC)
> > +	if (caps & ICE_AQC_PHY_EN_AUTO_FEC) {
> > +		if (fec_options & ICE_AQC_PHY_FEC_DIS)
> =

> I believe this is a capability bit which would mean that Auto FEC and a
> module that supports No FEC would report FEC All?

I think so.

> =

> > +			return ICE_FEC_ALL;
> >   		return ICE_FEC_AUTO;
> > +	}
> >
> >   	if (fec_options & (ICE_AQC_PHY_FEC_10G_KR_40G_KR4_EN |
> >   			   ICE_AQC_PHY_FEC_10G_KR_40G_KR4_REQ |
> =

> <snip>
> =

> > @@ -1257,8 +1265,11 @@ ice_get_fecparam(struct net_device *netdev, stru=
ct ethtool_fecparam *fecparam)
> >   		goto done;
> >
> >   	/* Set supported/configured FEC modes based on PHY capability */
> > -	if (caps->caps & ICE_AQC_PHY_EN_AUTO_FEC)
> > +	if (caps->caps & ICE_AQC_PHY_EN_AUTO_FEC) {
> > +		if (caps->link_fec_options & ICE_AQC_PHY_FEC_DIS)
> =

> If it's a capability bit, this should probably check
> ice_fw_supports_fec_all() instead.

Agree

> =

> > +			fecparam->fec |=3D ETHTOOL_FEC_ALL;
> >   		fecparam->fec |=3D ETHTOOL_FEC_AUTO;
> > +	}
> >   	if (caps->link_fec_options & ICE_AQC_PHY_FEC_10G_KR_40G_KR4_EN ||
> >   	    caps->link_fec_options & ICE_AQC_PHY_FEC_10G_KR_40G_KR4_REQ ||
> >   	    caps->link_fec_options & ICE_AQC_PHY_FEC_25G_KR_CLAUSE74_EN ||
> =

> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
