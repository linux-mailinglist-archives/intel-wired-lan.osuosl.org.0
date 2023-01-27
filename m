Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7996B67E097
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Jan 2023 10:46:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E85AD41CC0;
	Fri, 27 Jan 2023 09:46:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E85AD41CC0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674812785;
	bh=MX+9Pxf2PnsK0WpFoe5UKDap6sA2mLhhhbN88BcfS00=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=K5tXIkdiM82mNf6v5IwrRWHAGpcsKeea3na4yvVDvgu04fWNxw7a+wBJ2QLKU6WMa
	 1XnhoBIESVjIyyxTev6bEeK9zTRXrjpl1mlArwSb8nevADC7a+tb5o+WmDlTVX39fl
	 CFCPaupHES6+2Tt4o6Bre9cpL3Lj/G2tydqx0ojCSdXpVEza7I4MVwza2go+sYe3Ft
	 eRo25Ne0whG892sk+VhwyK5hIw0mMz7WNiBj135NenEfG+yO/5egQ6BT/DXHF9N2UK
	 FJKcRYsbJ8Hy1wX/38pXGQCTbyG2G2EZppyfzxtff0JlY4kucEqkFH8tszdVP07RhM
	 mpZbO7Cl/5AfA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VXWkFdTvYZNM; Fri, 27 Jan 2023 09:46:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8BA6941CB1;
	Fri, 27 Jan 2023 09:46:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8BA6941CB1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DE3151BF346
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 09:46:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B51006121A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 09:46:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B51006121A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lEUY_lksnDyI for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Jan 2023 09:46:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DB4E8611F1
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DB4E8611F1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 09:46:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="354350454"
X-IronPort-AV: E=Sophos;i="5.97,250,1669104000"; d="scan'208";a="354350454"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2023 01:46:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="992003718"
X-IronPort-AV: E=Sophos;i="5.97,250,1669104000"; d="scan'208";a="992003718"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 27 Jan 2023 01:46:17 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 27 Jan 2023 01:46:16 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 27 Jan 2023 01:46:16 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 27 Jan 2023 01:46:16 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 27 Jan 2023 01:46:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VFXPsgAbE1xnKs00NpRIHIuGvAoGg5i8CI7jyH04eSvPYHfur3Ob9pe4cb7c4Cb9U4pWtjfdO/aAs4wBDAC9vWUQzEZARwE/q8TgcsqNKoLyvtGGEJBRXuxf3qL2Nx3knXdyFv4gVy0XEd7izDALjOYz8484p48thpMB7Q9WG39F/rXlYsA+Y65kddZ2zF4crj1qsKXz7CIRTOjm/zkM0LkA418jLgmcG9f6+Xkm72/ZnpCb8Z1yBFp7p7eDZz3PSHwYwL3rsDV/vn+6UxnxGQsQdxav08tmjE+1r4A9D9jiYF7FqaH1m6X1ysGTbPIZREWfZVPoqJBGzql4Gf2RYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9F09LBZ+u+pbpRnI41j0A2K4ke3mXEtc/GxEuAVTEa8=;
 b=W8DreGD4+flL/Qu77TuCk/9FDcZ9VkGEUcNfEmBtS5nvv1Jw/OJHclm0CuPTc/LmhF1iXicRg4+1sxhMgGlpRPxKZty58OabqU7HFX1PQLFeue+SkzFxxpvkEORkrJcaHzlTxDLb8P9kyMDw8tB03qoMjnES/9WYxTMVeiPc4nYZx8VsjiH6AK6kFnXnk6IOEQvZt/wcjfeNgLPw2ptobnsWHauCAyUOAVv5DrkObCteHCqIeNUpmhNDQdNWfryBZhizy47FDYc1ZCVDQDqKM0yz/FvUjjl/RBcRKWWt0DNWqkTt1Wmfb9MBFsb9csMoUpLCyy8C5v7itTjfc1Yxyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7364.namprd11.prod.outlook.com (2603:10b6:930:87::14)
 by SA2PR11MB5210.namprd11.prod.outlook.com (2603:10b6:806:fa::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.23; Fri, 27 Jan
 2023 09:46:14 +0000
Received: from CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::d0ef:473c:502f:986e]) by CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::d0ef:473c:502f:986e%8]) with mapi id 15.20.6043.022; Fri, 27 Jan 2023
 09:46:14 +0000
From: "Szlosek, Marek" <marek.szlosek@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 10/13] ice: convert vf_ops
 .vsi_rebuild to .create_vsi
Thread-Index: AQHZJ5/QGeWaDBlpMUychznAALDxQ66yGPwA
Date: Fri, 27 Jan 2023 09:46:13 +0000
Message-ID: <CY8PR11MB73648EE2633DD5FC8005768EE6CC9@CY8PR11MB7364.namprd11.prod.outlook.com>
References: <20230113223735.2514364-1-jacob.e.keller@intel.com>
 <20230113223735.2514364-11-jacob.e.keller@intel.com>
In-Reply-To: <20230113223735.2514364-11-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7364:EE_|SA2PR11MB5210:EE_
x-ms-office365-filtering-correlation-id: 119849b8-0c0b-4bf9-93b6-08db004b5422
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cC6DqNu1GqR3eUbtGPKfvgnO1Ow7xqMZA1G+2+G6GhZbp0rpwSOepMeiCMTSYMsbJZMPSFWlXQLKaDsWwhLJ5j/ZuXUHaUmOe0TlEck5C4iVjAmHq6gD9N2f2IKQr0Wm2VOol1fSWXU8WdAQsrh0PCaP+l80pjr0UOB9XKBVYs/0CLrm3ARcZiq+5uqYZgT/BGnmroy8NkQg3Ksr4Ra9GUmU4eIXcLG0C3Q3K3N4MV3204UtDMHqfQILNkwtteKAaKXX/y9m9Z4mDzKRerB6gKsJjrEd96blRc9nhG42vIB+N3VPal0cMwtwkKBSDrW8+hbrx2gWH91AAnIpSUfTnR25I2Pb/97yX3itVKF5Lg6l/DwUq+8ENBFjQmu12kNWyDrTCHGWFSnEB+JfuMOSnMhOCkjBbvQa77XfyI/3N15ZhU2OawBfijrvSXQMHHlc+bQakF9Buiw+lSRXgsGMnKP05PVKRh+7/MqZMwJ8lQ/bNxkZXJS2pwjvVGI41jXd7KVAUhNnaA/zwuDytAByC1fHXaRPOogG92ARe445B/QWu1b6OoaswOm/7GdVc2uFi+Lv5z1hil3jWaqom9IBhowzFJUNtkVjNdmdxKgrXyxgKpI9BU2dZJMlKBwmBAl+7uhvQ/QRm6u0CyXKzWDUeOEjuAERu38So4jTsfPnU+feRanWygXRjPK57+gmG6G2ypaNtO/RNavg5TSnyu5jrXBds39S0LhgBcO+sfbVLJs=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7364.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(39860400002)(396003)(366004)(346002)(376002)(451199018)(7696005)(478600001)(6506007)(53546011)(26005)(9686003)(186003)(5660300002)(8676002)(76116006)(66946007)(2906002)(71200400001)(316002)(66574015)(83380400001)(8936002)(38070700005)(41300700001)(52536014)(86362001)(33656002)(82960400001)(55016003)(122000001)(38100700002)(6916009)(66476007)(66556008)(64756008)(66446008)(142923001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?C0qdKnoXV5VEXwPBHbQXAXdtnDetkUTPIC+RNGP2jpQN1NE6o/FFm+eQAt?=
 =?iso-8859-2?Q?3Mf3qAZCcy5/UzGeIHg9zcqWV+xNTNJ1MCt/WXpHtDtB3Nd/QU8/IUYAGl?=
 =?iso-8859-2?Q?J5AuD6ck2TrhihQVCxySU42LPOTakGwYXu9gb1gR928RnLKIgFcQOJ6RXZ?=
 =?iso-8859-2?Q?f7n3K36W6znhVihPON88LAieC3wYC4mOzIKTcB+kcKC+xG9N2Wc2vCpy3j?=
 =?iso-8859-2?Q?QyP99oPNSfzie6QfFPFXE6D3Ar8yRNysSfQjbGfdx0luudtekzj6ciGgWD?=
 =?iso-8859-2?Q?8U05t1aL38c0ZlkDV6fH+ttjL5oKlvsb1F8eAIC/14/wp1pJS8aWFeJY8v?=
 =?iso-8859-2?Q?HCYtU5IfA3Ews4xa6Jfu8blhRddNa+xGgLNr0WM/qyuUoPfWZkJoUB3uHg?=
 =?iso-8859-2?Q?NqjHfCE/duLS4PyM5G6DZlo7r+gTm0jJ6OD/d4KU1qgrafc5n3JzWhP6Sj?=
 =?iso-8859-2?Q?8x1fJVhKNP4cqhkt+imfHo9sOdCAul8E9WZOZx+v6dM5PwTh0nOz4z/rz/?=
 =?iso-8859-2?Q?O7a/Gkg1uC525JPK5jR/a/38XvaNybqwNlku2HLa3/yGUeTdNrJ0ziGKk8?=
 =?iso-8859-2?Q?tid5t7sqtq3fkWsgT0fvm929LZBxyU0ojCC9pB0uxzw7s6AFPphrXOQsSu?=
 =?iso-8859-2?Q?svs+dGapVMBgcavjHEe/nb1gRsHGf9JNU01/wOhtD0Fcd7lXaP8syFdwS6?=
 =?iso-8859-2?Q?RZEPl6S98rM6c7xLfbdygR/NGuPewQnupBAMMZdeBuarkPxesDYsVm0Ojh?=
 =?iso-8859-2?Q?nuW8seVN4Zw/AnGn7uawPNfz75AGZQsQBUp8MpdBC6yWhU10y2yLW4Y9wH?=
 =?iso-8859-2?Q?sVr6YpfgRjFrhiZDLWz8t2XG0Gb1mTZYHDrjceF+8tzMm8ll0+uH8zz/I0?=
 =?iso-8859-2?Q?vqMIwqNMv6WCmFfJ7dutxqAIVu5BmIY8VQcD76K0qG/4sP93YnpqMWShEY?=
 =?iso-8859-2?Q?nJxxN4sYvoHwbsaHcjUeoZFxqZqS4XdK42r6cnbDTFaIUZib/lnzEOyU3i?=
 =?iso-8859-2?Q?eX2CnG1HVTzT3I3hc90fiMEcS1SZpFJZ/H1S1u13k1eHFYC45FB2eyC1ik?=
 =?iso-8859-2?Q?QFDwehNGrwS/ktBIwpZSe5KUdAoh+FtS5zSfa5dc8bSA7UPT99ZDotUys9?=
 =?iso-8859-2?Q?6zW4uJhnB/Rvu26OKQgVslOEQItRn3jFHzsdFeMuKTuN60/jFBBCpp3gR7?=
 =?iso-8859-2?Q?Bmnfal54gkujY+Nmb5a/3WnrITpaW87bqtFSx0hOgSAppVhCisSIJrq1Gk?=
 =?iso-8859-2?Q?Wpdl0oTgFRhqUEK10Vn4Zt88hOvciTJ4COwqynjepQ6N3HrV1gz+KTgZK9?=
 =?iso-8859-2?Q?NGAbLqyhmR5fKVd0c5qoGDtQSDUs7eEPenkqFWRiqiCpV1BbebNfOIRLGf?=
 =?iso-8859-2?Q?lAtlBk5Z7/1JkPF98zHKLUIJg6es2ML1mzyTlbQF/XJZ4cesZdl/Vbeh8w?=
 =?iso-8859-2?Q?PU0tX0aV1Hk3lnat8UyPSQkTZLSEOsACLxLoemA4/RGjPrOgtC3oMsmdFP?=
 =?iso-8859-2?Q?+44ROYnoT6i7Lf+2oiVFABs2sDN1oLh06hKJAAnNVGPPbnBRwdWn/64ntb?=
 =?iso-8859-2?Q?Pt+7a55g0Zm3eqX4Q9SKL89yZjBv8Rcm8C+pvVhHBtwgHmSfF4uPeUMPfj?=
 =?iso-8859-2?Q?XkqmAxCnmZ7EcNETlM0Ql3Ye65VVMlauFV?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7364.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 119849b8-0c0b-4bf9-93b6-08db004b5422
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2023 09:46:13.6844 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: palRHj3jYxjgcuy21f9HW7LCoTWD+gH4UDszcfCGXW6toUX86PEVYisOhXjdQn2ydygP1NnBAjDhHiI+jfO9hA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5210
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674812777; x=1706348777;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=FF8sYetwp2KU5+iMNav1hBQm5EIYv4bXwMcj9S4cN6g=;
 b=lC24IsUTGXxMpKGkkghRex7gyB3dsXDLEC/vURWUqw1rsUeHYynHh9IX
 YCHpMuHSEqdabOJxSdUTHzQiVAr+TFu1ak1Z/ias8ThmoRyLrpPC8VG9F
 m1NIWUGz8f8J6LHcWzsfqTXJKhFNinILRr7w2qispyX5U2iJK7U34j8fd
 cDlZQn0XtGU20Rv18I8hHrqzsNho6rsCPmoUPVeiEpr2TMnnFzRgbXXaA
 T5qcHwSxi7s1Vw7+rThAgAn1hHuXc7vyPrvUjbmYCq+BJcTWKa45mDN4i
 E/IBvKsLTtfj8Xtag4hZ4Gzmxm8DacpJcU/7Qisw6PRVZLpNpPsyl8QaH
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lC24IsUT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 10/13] ice: convert vf_ops
 .vsi_rebuild to .create_vsi
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
> Jacob Keller
> Sent: pi=B1tek, 13 stycznia 2023 23:38
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next 10/13] ice: convert vf_ops
> .vsi_rebuild to .create_vsi
> =

> The .vsi_rebuild function exists for ice_reset_vf. It is used to release =
and re-
> create the VSI during a single-VF reset.
> =

> This function is only called when we need to re-create the VSI, and not w=
hen
> rebuilding an existing VSI. This makes the single-VF reset process differ=
ent
> from the process used to restore functionality after a hardware reset suc=
h as
> the PF reset or EMP reset.
> =

> When we add support for Scalable IOV VFs, the implementation will be very
> similar. The primary difference will be in the fact that each VF type use=
s a
> different underlying VSI type in hardware.
> =

> Move the common functionality into a new ice_vf_recreate VSI function. Th=
is
> will allow the two IOV paths to share this functionality. Rework the
> .vsi_rebuild vf_op into .create_vsi, only performing the task of creating=
 a new
> VSI.
> =

> This creates a nice dichotomy between the ice_vf_rebuild_vsi and
> ice_vf_recreate_vsi, and should make it more clear why the two flows atre
> distinct.
> =

> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_sriov.c  | 22 ++++++---------
> drivers/net/ethernet/intel/ice/ice_vf_lib.c | 31 ++++++++++++++++++++-
> drivers/net/ethernet/intel/ice/ice_vf_lib.h |  2 +-
>  3 files changed, 40 insertions(+), 15 deletions(-)
> =

> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c
> b/drivers/net/ethernet/intel/ice/ice_sriov.c
> index 6f46d23ac382..fb9fbff56332 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c

Tested-by: Marek Szlosek <marek.szlosek@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
