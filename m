Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DD7CA4B7C97
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Feb 2022 02:43:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 656CF40902;
	Wed, 16 Feb 2022 01:43:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KPqHag5RImIm; Wed, 16 Feb 2022 01:43:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0AF3D408B9;
	Wed, 16 Feb 2022 01:43:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 467A71BF5DC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Feb 2022 01:43:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3285D401C9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Feb 2022 01:43:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Nnw5YtcGmjRW for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Feb 2022 01:43:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3F6B3408A8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Feb 2022 01:43:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644975794; x=1676511794;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=5lYRKk9x3/rKFo8GAJGVywhe71egicilvt7GblY6BX4=;
 b=RVWwa7qRLIRGE+NP/nVhGQ7DVg56mvcJmm25ylomXB5JKaDm72Pic0Vj
 WNmEyrHIRgDB/AKYK+WUfeUSfYl6mvMEJf/M52CcbIDCFZz2LiUzS89EQ
 e5FlVGni1Au8q2Wu24dgodHDjIn0AIvqEQ5r7NXX5pd8zldajp1vaVHYy
 bIF36CFATKNiIFv0thlru+p/uToj4nhamfNU1eNew4agRhE6RJ/VLsPZ0
 wJxpKmzb0nBHNRV4qDAtFcDcCIyHduq1oMYnFG+3BOJoJ+6cFM9wBHYJt
 uR6x1TomR7WeNfh695RkuSjOyyFMw/68ZgewnyLquXXUzTXtkyg/YduLi w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="313774418"
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="313774418"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 17:43:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="486561422"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga003.jf.intel.com with ESMTP; 15 Feb 2022 17:43:13 -0800
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 15 Feb 2022 17:43:13 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 15 Feb 2022 17:43:13 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 15 Feb 2022 17:43:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L8/9ADqmX/0iZ/9Gs0K0sJdHWx6j5fcOqwGPegThg0Kgc+irHp9hzBIbqU4Sngbj9O/kS2Z8gb6nnHlWMBBWPh1lANexT4l1S/CymjL+m+Mua+qpdA98BIKEYbGL3lPtB/Gj/a/HGqQR3Eaa6x3pyQ5iroOECi+lNhrqekq+Q00yR3iRGv1PeLkFzFWIf7cGNMbOYPQXxU1DZmm9aIuDJ9PVZKd+D85U/ne8Aos6OSiFGR8rfUIIx5gsuKdG8fKlrBwZtNtzFUdPdy7Ngtq1IwADIzjLjk0o7hkP5AnqF4GuWRXFW7wnXxCnW9lbB0KcFwC0D+uqG+mfzjX9GQeBqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Jbtuy4vZswMfB3+nZH8rbcVkDBTLy5lHlOri7HbUBXc=;
 b=NGS8i8o/VLSM+7RDvKBpuL3XF2X5dZjurSwhaiH951z6r8alsJEKqt9nwh9JMqYSIjIAUBxA1koYiSgOusHDIVKTxL/0XxLJNLhsyOFeVER9ZLBkVjMr2cp564p8lKefE7AX3erM2d28kTLLaB1mHEe3DoxQ/6r9QLrJvRI/cnbLUk2r/7KWalYQJ8X75X37dgtEqlsnYfqOcOU7Iwe4rfTKHfC1t75EOFaadkk9w3d/rKPD/hCig7eO3ktcQSZaP+H6mcCeyFyvV0dDmWKWJAOQqHLxB4682kTXJr5DH0DzjBT0ZW3+EzX4Oj3MrSXu7hbUbkpTZ2Uui14g7nUeyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SN6PR11MB3261.namprd11.prod.outlook.com (2603:10b6:805:c1::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4975.14; Wed, 16 Feb
 2022 01:43:04 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::bd9e:6244:4757:615a]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::bd9e:6244:4757:615a%9]) with mapi id 15.20.4995.015; Wed, 16 Feb 2022
 01:43:04 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [net-next PATCH 11/11] ice: convert VF storage to hash table
 with krefs and RCU
Thread-Index: AQHYItT38PLRmVkoEkKVsLstkCCjx6yVZx2A
Date: Wed, 16 Feb 2022 01:43:04 +0000
Message-ID: <CO1PR11MB5089757A206623B002A8C6F5D6359@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20220216013127.3263153-1-jacob.e.keller@intel.com>
 <20220216013127.3263153-12-jacob.e.keller@intel.com>
In-Reply-To: <20220216013127.3263153-12-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 17ff37ff-61d9-4fdd-5dda-08d9f0edacdc
x-ms-traffictypediagnostic: SN6PR11MB3261:EE_
x-microsoft-antispam-prvs: <SN6PR11MB3261DA10B7C362BE01E8D7B3D6359@SN6PR11MB3261.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:849;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Gr29JW5fHwPlsPhNzgzfQtPwx5cI/8YxmNykP0jacD/6nJ+OrMv+BGSnJ8dNVqNwLWnfyrXxMz6bCMBcLvuXm3II04vSDIFxnDbWWUOYGgWdBR7UDasiakRjUGgUw7qwfK9YaDrQSIORB0pxe77cIi6a4sJj6iVtfpxPFBpXRW/i0LXbd8PdWFC+yRDBh4tzwcmy2QbCifQgDJsrg+x4OZwaU+kHf4uTTf9CAKjp8IvDt9l/SVL/yg/5jgfRTnV5unTz0kpX2ZmE4pX0sjb4r4OtnWbOqBciDVRh3CFQ2DD9X+nmnavlENMYO3L9tPnl43f0okxMD0An7Vos+aXes9XjbX3XOm0QwoasjW4eBafD8TyE2dCmF4ks8qJ0Tkvo27FMoFX1aPXJwHPABbRNWGctvWf5K/502aE70hn2YF3+37QgPJlsXUscc/MjLMUWEivQrGolbVmOwHLkDSPoEgeUwI5ekaB/6G3qguNuo0RWuG7ktmmZhzHyZo1SOyxaCrri9bDqKQio26eKYqMxIk7XQ5K1giKso83psUwiERSMg+8CKMY5M2Lg7B03MNXVjSjyKlG7cAxLa2JM8K/8DrEw0o+Uf/KciTODNSFBVyoolsANgKz9xP9kJlehxI2heqDpnTaK51RgOWY9LMqG5o85sn4VDzncT7A1U0pCWjhbXvgFv5cE3NoijgAP4Rw3FXIUjjNyCjjSlcFnfUI7gg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(76116006)(53546011)(186003)(6506007)(64756008)(66476007)(66446008)(55016003)(38070700005)(66946007)(52536014)(66556008)(122000001)(7696005)(33656002)(38100700002)(5660300002)(82960400001)(2906002)(71200400001)(9686003)(508600001)(30864003)(83380400001)(26005)(6916009)(8676002)(86362001)(316002)(8936002)(559001)(579004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?SYD4+dHI6j3gszMeyRLnFwJw0jZ0D7vfJi8tQbqJt8hWwprI+9hZcIZRSSil?=
 =?us-ascii?Q?3tW9sECCs8F8cf5heHQQSF9cLD1sRlel6vYSAsTrdVbYSESo9xQVf9AfV9nF?=
 =?us-ascii?Q?gNc7rx9J8TPVcyF1M1T9sONbUxzzFAhkSIVoPNVGv/+guGk3cHet7cM/qK2C?=
 =?us-ascii?Q?OxAvUw7eKLM0iCd7NNwVsckVSuAuELOmxkT2xv7JXgY3Be+9KjtwRKiBhJWC?=
 =?us-ascii?Q?ZtV9ru43nexSugiQW2lEHp/Lhhnyyd975siP3zY72tqVjyv1n/oc2jVQ06hB?=
 =?us-ascii?Q?qOyaYQ4lTFZI5dI1Bc7QqdAlnR68Wh7N/JEFH/pHCccY35UEu+jjhGH3wB4B?=
 =?us-ascii?Q?Pm7GENA/JUOXwtfGgDpHJL3+bF1VBKVKSojFp7ESQ4/muDxwrrylYPwAjbDJ?=
 =?us-ascii?Q?tPvIJS5U9CmiAkoZa02jCSuwUZyMQApY+o5eQFespun3iOFJynDOzTELXA6R?=
 =?us-ascii?Q?te+fUBwIlwHzUr0xBYCeN1fMi+Ptv+/I4Zf1iAhtcu4MrPu+BQ9I71BcpmiS?=
 =?us-ascii?Q?+I89qSmrFig/RfMRkXVtmcIFDJ9dhLVvKQswmaGX5dhCWrmfkM8Rs+9rY1yf?=
 =?us-ascii?Q?4vc2c/0ZsNW9VnOMqRM/m+3B9RfdjZKJ0G1cep6sJb/OYaZnXNpDOWCQW3Nd?=
 =?us-ascii?Q?6JShGEHbn5aosI2pmCtgy5CQBp4u6qK7bwdGXaH1WmCe1YMDn1S9V/f9ITE7?=
 =?us-ascii?Q?80FgSbpK1TNzlO7gzOyNQClPTqm5vhtZXojXYUpuhQ2hHAEArWl+DdTSYChV?=
 =?us-ascii?Q?+O3BwWqxh+NMRZX9JqchH10vktwtdqyaD+nvcwHegTCyw4fngBxIsy0Mli+z?=
 =?us-ascii?Q?Hub2i8MxYfnZkekB46cq5MVASz1kCyZSH2S4fqpVu69oVxOHBum0utNtbjLN?=
 =?us-ascii?Q?VATpMJQIaostqcddxbDcAI06C/Q8B602nvs293gqnEiw2TcTSFk1gTP5YGtJ?=
 =?us-ascii?Q?HnxJP6BiNeovtzy9wypC45mqDZ5EZAHEFygerG1UVcExgEK1/vKWm4dQt7Mp?=
 =?us-ascii?Q?pAWUcHOBurj7NLOquKA2GMstuwkb1DUYWHktKrAXMspb97VbfQvujT2mzv29?=
 =?us-ascii?Q?eBD1BWel9rvMQto8UOopXvcWzHBx9r0a4W6fyLlaCWmHwuxOIPLvS7z+c6DF?=
 =?us-ascii?Q?5BFvPe18P4FVJpl5PlrFVPKfQopyPcDp9Ns6T/u16o/73s5NLRvvFc70+X9u?=
 =?us-ascii?Q?75juriaxAoq7+r+UgxNxZ56l/0gOqp54mkT/H1SnqRZ0c3RSvVo0EUvbpM5y?=
 =?us-ascii?Q?zKi7ZyIdusxg/59LOl4dK6OcCNyZlJtvnFPswyug5FUfJfeiM6Bcr8tUR3jz?=
 =?us-ascii?Q?f8KqfaTNncn8vgR6TgbExAmnZolQhKti1NkbRJNEx1reKRhQLIN7CVoqksLX?=
 =?us-ascii?Q?q3/xCyeciZiBHsBktrXrZQu9G2c837PJWq7fxRgejH5dkhV7+ACICk6sNqn2?=
 =?us-ascii?Q?JefuPG8LxmkwjV0iuJDatt/8/9IaQ2TetM8gblTwgp+5RqUmdNDZTtEHYU/T?=
 =?us-ascii?Q?6D3EU/GV6NdC81E2H0G23XTdCzUQXrEbPWAdYrg7RXkkiAopVTjaMsdGoWTc?=
 =?us-ascii?Q?mzmbeG7LWQGjmVXerv3z1i5ccsRUunl+5ZAasU1x9IkH5uKiuSo9c/U+ugIi?=
 =?us-ascii?Q?oxOfSjLL8bHe1cZP0ZEfKLrNPN5/SBhcm8CX2Q30AGC1PQ7V5eKdmGs7C9Fc?=
 =?us-ascii?Q?inrIGg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 17ff37ff-61d9-4fdd-5dda-08d9f0edacdc
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Feb 2022 01:43:04.6580 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Bn2nwdIxY3uA10SxuXNaaS8shYZ3KCizaQmFxDLtW+FWsIxT0pELCyW6959iTng+lZoLWWfarHOlwj54Q3w1t8q96OLQnvr3BaQ9gXW1+hs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3261
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next PATCH 11/11] ice: convert VF
 storage to hash table with krefs and RCU
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
> From: Keller, Jacob E <jacob.e.keller@intel.com>
> Sent: Tuesday, February 15, 2022 5:31 PM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Cc: Keller, Jacob E <jacob.e.keller@intel.com>
> Subject: [net-next PATCH 11/11] ice: convert VF storage to hash table with krefs
> and RCU
> 

Oops. Rather embarassing, I forgot an ice_put_vf() in ice_vc_process_vf_msg, which results in all of the VF structures being leaked. I'm carefully reviewing the remaining flows to check if I missed any other ones. (Thanks CONFIG_KMEMLEAK!)

I'll send a v2 with the fixed version soon.

Thanks,
Jake

> The ice driver stores VF structures in a simple array which is allocated
> once at the time of VF creation. The VF structures are then accessed
> from the array by their VF ID. The ID must be between 0 and the number
> of allocated VFs.
> 
> Multiple threads can access this table:
> 
>  * .ndo operations such as .ndo_get_vf_cfg or .ndo_set_vf_trust
>  * interrupts, such as due to messages from the VF using the virtchnl
>    communication
>  * processing such as device reset
>  * commands to add or remove VFs
> 
> The current implementation does not keep track of when all threads are
> done operating on a VF and can potentially result in use-after-free
> issues caused by one thread accessing a VF structure after it has been
> released when removing VFs. Some of these are prevented with various
> state flats and checks.
> 
> In addition, this structure is quite static and does not support a
> planned future where virtualization can be more dynamic. As we begin to
> look at supporting Scalable IOV with the ice driver (as opposed to just
> supporting Single Root IOV), this structure is not sufficient.
> 
> In the future, VFs will be able to be added and removed individually and
> dynamically.
> 
> To allow for this, and to better protect against a whole class of
> use-after-free bugs, replace the VF storage with a combination of a hash
> table and krefs to reference track all of the accesses to VFs through
> the hash table.
> 
> A hash table still allows efficient look up of the VF given its ID, but
> also allows adding and removing VFs. It does not require contiguous VF
> IDs.
> 
> The use of krefs allows the cleanup of the VF memory to be delayed until
> after all threads have released their reference (by calling ice_put_vf).
> 
> To prevent corruption of the hash table, a combination of RCU and the
> mutex table_lock are used. Addition and removal from the hash table use
> the RCU-aware hash macros. This allows simple read-only look ups that
> iterate to locate a single VF can be fast using RCU. Accesses which
> modify the hash table, or which can't take RCU because they sleep, will
> hold the mutex lock.
> 
> By using this design, we have a stronger guarantee that the VF structure
> can't be released until after all threads are finished operating on it.
> We also pave the way for the more dynamic Scalable IOV implementation in
> the future.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_eswitch.c  |  16 +
>  drivers/net/ethernet/intel/ice/ice_ethtool.c  |  13 +-
>  drivers/net/ethernet/intel/ice/ice_lib.c      |  21 +-
>  drivers/net/ethernet/intel/ice/ice_main.c     |   8 +
>  drivers/net/ethernet/intel/ice/ice_repr.c     |   4 +
>  .../ethernet/intel/ice/ice_virtchnl_fdir.c    |   2 +
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 377 +++++++++++++-----
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |  45 ++-
>  8 files changed, 362 insertions(+), 124 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c
> b/drivers/net/ethernet/intel/ice/ice_eswitch.c
> index c27013afcadb..9a84d746a6c4 100644
> --- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
> +++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
> @@ -209,6 +209,8 @@ static void ice_eswitch_remap_rings_to_vectors(struct
> ice_pf *pf)
>  		rx_ring->q_vector = q_vector;
>  		rx_ring->next = NULL;
>  		rx_ring->netdev = repr->netdev;
> +
> +		ice_put_vf(vf);
>  	}
>  }
> 
> @@ -223,6 +225,8 @@ ice_eswitch_release_reprs(struct ice_pf *pf, struct ice_vsi
> *ctrl_vsi)
>  	struct ice_vf *vf;
>  	unsigned int bkt;
> 
> +	lockdep_assert_held(&pf->vfs.table_lock);
> +
>  	ice_for_each_vf(pf, bkt, vf) {
>  		struct ice_vsi *vsi = vf->repr->src_vsi;
> 
> @@ -251,6 +255,8 @@ static int ice_eswitch_setup_reprs(struct ice_pf *pf)
>  	struct ice_vf *vf;
>  	unsigned int bkt;
> 
> +	lockdep_assert_held(&pf->vfs.table_lock);
> +
>  	ice_for_each_vf(pf, bkt, vf) {
>  		struct ice_vsi *vsi = vf->repr->src_vsi;
> 
> @@ -430,6 +436,8 @@ static void ice_eswitch_napi_del(struct ice_pf *pf)
>  	struct ice_vf *vf;
>  	unsigned int bkt;
> 
> +	lockdep_assert_held(&pf->vfs.table_lock);
> +
>  	ice_for_each_vf(pf, bkt, vf)
>  		netif_napi_del(&vf->repr->q_vector->napi);
>  }
> @@ -443,6 +451,8 @@ static void ice_eswitch_napi_enable(struct ice_pf *pf)
>  	struct ice_vf *vf;
>  	unsigned int bkt;
> 
> +	lockdep_assert_held(&pf->vfs.table_lock);
> +
>  	ice_for_each_vf(pf, bkt, vf)
>  		napi_enable(&vf->repr->q_vector->napi);
>  }
> @@ -456,6 +466,8 @@ static void ice_eswitch_napi_disable(struct ice_pf *pf)
>  	struct ice_vf *vf;
>  	unsigned int bkt;
> 
> +	lockdep_assert_held(&pf->vfs.table_lock);
> +
>  	ice_for_each_vf(pf, bkt, vf)
>  		napi_disable(&vf->repr->q_vector->napi);
>  }
> @@ -629,6 +641,8 @@ static void ice_eswitch_start_all_tx_queues(struct ice_pf
> *pf)
>  	struct ice_vf *vf;
>  	unsigned int bkt;
> 
> +	lockdep_assert_held(&pf->vfs.table_lock);
> +
>  	if (test_bit(ICE_DOWN, pf->state))
>  		return;
> 
> @@ -647,6 +661,8 @@ void ice_eswitch_stop_all_tx_queues(struct ice_pf *pf)
>  	struct ice_vf *vf;
>  	unsigned int bkt;
> 
> +	lockdep_assert_held(&pf->vfs.table_lock);
> +
>  	if (test_bit(ICE_DOWN, pf->state))
>  		return;
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> index 83680eaa3565..399625892f9e 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> @@ -316,15 +316,20 @@ ice_get_eeprom(struct net_device *netdev, struct
> ethtool_eeprom *eeprom,
>   */
>  static bool ice_active_vfs(struct ice_pf *pf)
>  {
> +	bool active = false;
>  	struct ice_vf *vf;
>  	unsigned int bkt;
> 
> -	ice_for_each_vf(pf, bkt, vf) {
> -		if (test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states))
> -			return true;
> +	rcu_read_lock();
> +	ice_for_each_vf_rcu(pf, bkt, vf) {
> +		if (test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) {
> +			active = true;
> +			break;
> +		}
>  	}
> +	rcu_read_unlock();
> 
> -	return false;
> +	return active;
>  }
> 
>  /**
> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c
> b/drivers/net/ethernet/intel/ice/ice_lib.c
> index 94ba40a34402..a04869380c1b 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> @@ -439,8 +439,10 @@ static irqreturn_t ice_eswitch_msix_clean_rings(int
> __always_unused irq, void *d
>  	if (!q_vector->tx.tx_ring && !q_vector->rx.rx_ring)
>  		return IRQ_HANDLED;
> 
> -	ice_for_each_vf(pf, bkt, vf)
> +	rcu_read_lock();
> +	ice_for_each_vf_rcu(pf, bkt, vf)
>  		napi_schedule(&vf->repr->q_vector->napi);
> +	rcu_read_unlock();
> 
>  	return IRQ_HANDLED;
>  }
> @@ -1345,11 +1347,17 @@ static int ice_get_vf_ctrl_res(struct ice_pf *pf, struct
> ice_vsi *vsi)
>  {
>  	struct ice_vf *vf;
>  	unsigned int bkt;
> +	int base;
> 
> -	ice_for_each_vf(pf, bkt, vf) {
> -		if (vf != vsi->vf && vf->ctrl_vsi_idx != ICE_NO_VSI)
> -			return pf->vsi[vf->ctrl_vsi_idx]->base_vector;
> +	rcu_read_lock();
> +	ice_for_each_vf_rcu(pf, bkt, vf) {
> +		if (vf != vsi->vf && vf->ctrl_vsi_idx != ICE_NO_VSI) {
> +			base = pf->vsi[vf->ctrl_vsi_idx]->base_vector;
> +			rcu_read_unlock();
> +			return base;
> +		}
>  	}
> +	rcu_read_unlock();
> 
>  	return ice_get_res(pf, pf->irq_tracker, vsi->num_q_vectors,
>  			   ICE_RES_VF_CTRL_VEC_ID);
> @@ -2894,11 +2902,14 @@ static void ice_free_vf_ctrl_res(struct ice_pf *pf,
> struct ice_vsi *vsi)
>  	struct ice_vf *vf;
>  	unsigned int bkt;
> 
> -	ice_for_each_vf(pf, bkt, vf) {
> +	rcu_read_lock();
> +	ice_for_each_vf_rcu(pf, bkt, vf) {
>  		if (vf != vsi->vf && vf->ctrl_vsi_idx != ICE_NO_VSI) {
> +			rcu_read_unlock();
>  			return;
>  		}
>  	}
> +	rcu_read_unlock();
> 
>  	/* No other VFs left that have control VSI. It is now safe to reclaim
>  	 * SW interrupts back to the common pool.
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
> b/drivers/net/ethernet/intel/ice/ice_main.c
> index 418277550633..a8d4a772b725 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -521,8 +521,10 @@ ice_prepare_for_reset(struct ice_pf *pf, enum
> ice_reset_req reset_type)
>  		ice_vc_notify_reset(pf);
> 
>  	/* Disable VFs until reset is completed */
> +	mutex_lock(&pf->vfs.table_lock);
>  	ice_for_each_vf(pf, bkt, vf)
>  		ice_set_vf_state_qs_dis(vf);
> +	mutex_unlock(&pf->vfs.table_lock);
> 
>  	if (ice_is_eswitch_mode_switchdev(pf)) {
>  		if (reset_type != ICE_RESET_PFR)
> @@ -1756,6 +1758,7 @@ static void ice_handle_mdd_event(struct ice_pf *pf)
>  	/* Check to see if one of the VFs caused an MDD event, and then
>  	 * increment counters and set print pending
>  	 */
> +	mutex_lock(&pf->vfs.table_lock);
>  	ice_for_each_vf(pf, bkt, vf) {
>  		reg = rd32(hw, VP_MDET_TX_PQM(vf->vf_id));
>  		if (reg & VP_MDET_TX_PQM_VALID_M) {
> @@ -1811,6 +1814,7 @@ static void ice_handle_mdd_event(struct ice_pf *pf)
>  			}
>  		}
>  	}
> +	mutex_unlock(&pf->vfs.table_lock);
> 
>  	ice_print_vfs_mdd_events(pf);
>  }
> @@ -3680,6 +3684,7 @@ static void ice_deinit_pf(struct ice_pf *pf)
>  	mutex_destroy(&pf->sw_mutex);
>  	mutex_destroy(&pf->tc_mutex);
>  	mutex_destroy(&pf->avail_q_mutex);
> +	mutex_destroy(&pf->vfs.table_lock);
> 
>  	if (pf->avail_txqs) {
>  		bitmap_free(pf->avail_txqs);
> @@ -3779,6 +3784,9 @@ static int ice_init_pf(struct ice_pf *pf)
>  		return -ENOMEM;
>  	}
> 
> +	mutex_init(&pf->vfs.table_lock);
> +	hash_init(pf->vfs.table);
> +
>  	return 0;
>  }
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_repr.c
> b/drivers/net/ethernet/intel/ice/ice_repr.c
> index ffd428719863..f8db3ca521da 100644
> --- a/drivers/net/ethernet/intel/ice/ice_repr.c
> +++ b/drivers/net/ethernet/intel/ice/ice_repr.c
> @@ -396,6 +396,8 @@ void ice_repr_rem_from_all_vfs(struct ice_pf *pf)
>  	struct ice_vf *vf;
>  	unsigned int bkt;
> 
> +	lockdep_assert_held(&pf->vfs.table_lock);
> +
>  	ice_for_each_vf(pf, bkt, vf)
>  		ice_repr_rem(vf);
>  }
> @@ -410,6 +412,8 @@ int ice_repr_add_for_all_vfs(struct ice_pf *pf)
>  	unsigned int bkt;
>  	int err;
> 
> +	lockdep_assert_held(&pf->vfs.table_lock);
> +
>  	ice_for_each_vf(pf, bkt, vf) {
>  		err = ice_repr_add(vf);
>  		if (err)
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> index df7a3f251cd3..07989f1d08ef 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> @@ -1578,6 +1578,7 @@ void ice_flush_fdir_ctx(struct ice_pf *pf)
>  	if (!test_and_clear_bit(ICE_FD_VF_FLUSH_CTX, pf->state))
>  		return;
> 
> +	mutex_lock(&pf->vfs.table_lock);
>  	ice_for_each_vf(pf, bkt, vf) {
>  		struct device *dev = ice_pf_to_dev(pf);
>  		enum virtchnl_fdir_prgm_status status;
> @@ -1634,6 +1635,7 @@ void ice_flush_fdir_ctx(struct ice_pf *pf)
>  		ctx->flags &= ~ICE_VF_FDIR_CTX_VALID;
>  		spin_unlock_irqrestore(&vf->fdir.ctx_lock, flags);
>  	}
> +	mutex_unlock(&pf->vfs.table_lock);
>  }
> 
>  /**
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> index 45fcb95a0807..0e997bfce5da 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> @@ -182,21 +182,61 @@ struct ice_vsi *ice_get_vf_vsi(struct ice_vf *vf)
>   * Locate and return a pointer to the VF structure associated with a given ID.
>   * Returns NULL if the ID does not have a valid VF structure associated with
>   * it.
> + *
> + * This function takes a reference to the VF, which must be released by
> + * calling ice_put_vf() once the caller is finished accessing the VF structure
> + * returned.
>   */
>  struct ice_vf *ice_get_vf_by_id(struct ice_pf *pf, u16 vf_id)
>  {
> -	if (!pf->vfs.table) {
> -		dev_err(ice_pf_to_dev(pf), "VF table not allocated\n");
> -		return NULL;
> -	}
> +	struct ice_vf *vf;
> 
> -	if (vf_id >= pf->vfs.num_alloc) {
> -		dev_err(ice_pf_to_dev(pf), "Out of range VF ID: %u\n",
> -			vf_id);
> -		return NULL;
> -	}
> +	rcu_read_lock();
> +	hash_for_each_possible_rcu(pf->vfs.table, vf, entry, vf_id) {
> +		if (vf->vf_id == vf_id) {
> +			struct ice_vf *found;
> 
> -	return &pf->vfs.table[vf_id];
> +			if (kref_get_unless_zero(&vf->refcnt))
> +				found = vf;
> +			else
> +				found = NULL;
> +
> +			rcu_read_unlock();
> +			return found;
> +		}
> +	}
> +	rcu_read_unlock();
> +
> +	return NULL;
> +}
> +
> +/**
> + * ice_release_vf - Release VF associated with a refcount
> + * @ref: the kref decremented to zero
> + *
> + * Callback function for kref_put to release a VF once its reference count has
> + * hit zero.
> + */
> +static void ice_release_vf(struct kref *ref)
> +{
> +	struct ice_vf *vf = container_of(ref, struct ice_vf, refcnt);
> +
> +	mutex_destroy(&vf->cfg_lock);
> +
> +	kfree_rcu(vf, rcu);
> +}
> +
> +/**
> + * ice_put_vf - Release a reference to a VF
> + * @vf: the VF structure to decrease reference count on
> + *
> + * This must be called after ice_get_vf_by_id() once the reference to the VF
> + * structure is no longer used. Otherwise, the VF structure will never be
> + * freed.
> + */
> +void ice_put_vf(struct ice_vf *vf)
> +{
> +	kref_put(&vf->refcnt, ice_release_vf);
>  }
> 
>  /**
> @@ -210,7 +250,10 @@ struct ice_vf *ice_get_vf_by_id(struct ice_pf *pf, u16
> vf_id)
>   */
>  bool ice_has_vfs(struct ice_pf *pf)
>  {
> -	return pf->vfs.table && pf->vfs.num_alloc > 0;
> +	/* A simple check that the hash table is not empty does not require
> +	 * the mutex or rcu_read_lock.
> +	 */
> +	return !hash_empty(pf->vfs.table);
>  }
> 
>  /**
> @@ -223,10 +266,16 @@ bool ice_has_vfs(struct ice_pf *pf)
>   */
>  u16 ice_get_num_vfs(struct ice_pf *pf)
>  {
> -	if (!pf->vfs.table)
> -		return 0;
> +	struct ice_vf *vf;
> +	unsigned int bkt;
> +	u16 num_vfs = 0;
> 
> -	return pf->vfs.num_alloc;
> +	rcu_read_lock();
> +	ice_for_each_vf_rcu(pf, bkt, vf)
> +		num_vfs++;
> +	rcu_read_unlock();
> +
> +	return num_vfs;
>  }
> 
>  /**
> @@ -244,6 +293,32 @@ static int ice_check_vf_init(struct ice_pf *pf, struct ice_vf
> *vf)
>  	return 0;
>  }
> 
> +/**
> + * ice_free_vf_entries - Free all VF entries from the hash table
> + * @pf: pointer to the PF structure
> + *
> + * Iterate over the VF hash table, removing and releasing all VF entries.
> + * Called during VF teardown or as cleanup during failed VF initialization.
> + */
> +static void ice_free_vf_entries(struct ice_pf *pf)
> +{
> +	struct ice_vfs *vfs = &pf->vfs;
> +	struct hlist_node *tmp;
> +	struct ice_vf *vf;
> +	unsigned int bkt;
> +
> +	/* Remove all VFs from the hash table and release their main
> +	 * reference. Once all references to the VF are dropped, ice_put_vf()
> +	 * will call ice_release_vf which will remove the VF memory.
> +	 */
> +	lockdep_assert_held(&vfs->table_lock);
> +
> +	hash_for_each_safe(vfs->table, bkt, tmp, vf, entry) {
> +		hash_del_rcu(&vf->entry);
> +		ice_put_vf(vf);
> +	}
> +}
> +
>  /**
>   * ice_vc_vf_broadcast - Broadcast a message to all VFs on PF
>   * @pf: pointer to the PF structure
> @@ -260,6 +335,7 @@ ice_vc_vf_broadcast(struct ice_pf *pf, enum virtchnl_ops
> v_opcode,
>  	struct ice_vf *vf;
>  	unsigned int bkt;
> 
> +	mutex_lock(&pf->vfs.table_lock);
>  	ice_for_each_vf(pf, bkt, vf) {
>  		/* Not all vfs are enabled so skip the ones that are not */
>  		if (!test_bit(ICE_VF_STATE_INIT, vf->vf_states) &&
> @@ -272,6 +348,7 @@ ice_vc_vf_broadcast(struct ice_pf *pf, enum virtchnl_ops
> v_opcode,
>  		ice_aq_send_msg_to_vf(hw, vf->vf_id, v_opcode, v_retval, msg,
>  				      msglen, NULL);
>  	}
> +	mutex_unlock(&pf->vfs.table_lock);
>  }
> 
>  /**
> @@ -546,8 +623,6 @@ void ice_free_vfs(struct ice_pf *pf)
>  	if (!ice_has_vfs(pf))
>  		return;
> 
> -	ice_eswitch_release(pf);
> -
>  	while (test_and_set_bit(ICE_VF_DIS, pf->state))
>  		usleep_range(1000, 2000);
> 
> @@ -560,6 +635,10 @@ void ice_free_vfs(struct ice_pf *pf)
>  	else
>  		dev_warn(dev, "VFs are assigned - not disabling SR-IOV\n");
> 
> +	mutex_lock(&vfs->table_lock);
> +
> +	ice_eswitch_release(pf);
> +
>  	ice_for_each_vf(pf, bkt, vf) {
>  		mutex_lock(&vf->cfg_lock);
> 
> @@ -595,9 +674,9 @@ void ice_free_vfs(struct ice_pf *pf)
>  		dev_err(dev, "Failed to free MSIX resources used by SR-IOV\n");
> 
>  	vfs->num_qps_per = 0;
> -	vfs->num_alloc = 0;
> -	devm_kfree(dev, vfs->table);
> -	vfs->table = NULL;
> +	ice_free_vf_entries(pf);
> +
> +	mutex_unlock(&vfs->table_lock);
> 
>  	clear_bit(ICE_VF_DIS, pf->state);
>  	clear_bit(ICE_FLAG_SRIOV_ENA, pf->flags);
> @@ -1200,6 +1279,8 @@ static int ice_set_per_vf_res(struct ice_pf *pf, u16
> num_vfs)
>  	int msix_avail_per_vf, msix_avail_for_sriov;
>  	struct device *dev = ice_pf_to_dev(pf);
> 
> +	lockdep_assert_held(&pf->vfs.table_lock);
> +
>  	if (!num_vfs || max_valid_res_idx < 0)
>  		return -EINVAL;
> 
> @@ -1507,6 +1588,8 @@ bool ice_reset_all_vfs(struct ice_pf *pf, bool is_vflr)
>  	if (!ice_has_vfs(pf))
>  		return false;
> 
> +	mutex_lock(&pf->vfs.table_lock);
> +
>  	/* clear all malicious info if the VFs are getting reset */
>  	ice_for_each_vf(pf, bkt, vf)
>  		if (ice_mbx_clear_malvf(&hw->mbx_snapshot, pf->vfs.malvfs,
> @@ -1515,8 +1598,10 @@ bool ice_reset_all_vfs(struct ice_pf *pf, bool is_vflr)
>  				vf->vf_id);
> 
>  	/* If VFs have been disabled, there is no need to reset */
> -	if (test_and_set_bit(ICE_VF_DIS, pf->state))
> +	if (test_and_set_bit(ICE_VF_DIS, pf->state)) {
> +		mutex_unlock(&pf->vfs.table_lock);
>  		return false;
> +	}
> 
>  	/* Begin reset on all VFs at once */
>  	ice_for_each_vf(pf, bkt, vf)
> @@ -1583,6 +1668,8 @@ bool ice_reset_all_vfs(struct ice_pf *pf, bool is_vflr)
>  	ice_flush(hw);
>  	clear_bit(ICE_VF_DIS, pf->state);
> 
> +	mutex_unlock(&pf->vfs.table_lock);
> +
>  	return true;
>  }
> 
> @@ -1735,8 +1822,10 @@ void ice_vc_notify_link_state(struct ice_pf *pf)
>  	struct ice_vf *vf;
>  	unsigned int bkt;
> 
> +	mutex_lock(&pf->vfs.table_lock);
>  	ice_for_each_vf(pf, bkt, vf)
>  		ice_vc_notify_vf_link_state(vf);
> +	mutex_unlock(&pf->vfs.table_lock);
>  }
> 
>  /**
> @@ -1855,6 +1944,8 @@ static int ice_start_vfs(struct ice_pf *pf)
>  	struct ice_vf *vf;
>  	int retval;
> 
> +	lockdep_assert_held(&pf->vfs.table_lock);
> +
>  	it_cnt = 0;
>  	ice_for_each_vf(pf, bkt, vf) {
>  		ice_clear_vf_reset_trigger(vf);
> @@ -1889,18 +1980,38 @@ static int ice_start_vfs(struct ice_pf *pf)
>  }
> 
>  /**
> - * ice_set_dflt_settings_vfs - set VF defaults during initialization/creation
> - * @pf: PF holding reference to all VFs for default configuration
> + * ice_create_vf_entries - Allocate and insert VF entries
> + * @pf: pointer to the PF structure
> + * @num_vfs: the number of VFs to allocate
> + *
> + * Allocate new VF entries and insert them into the hash table. Set some
> + * basic default fields for initializing the new VFs.
> + *
> + * After this function exits, the hash table will have num_vfs entries
> + * inserted.
> + *
> + * Returns 0 on success or an integer error code on failure.
>   */
> -static void ice_set_dflt_settings_vfs(struct ice_pf *pf)
> +static int ice_create_vf_entries(struct ice_pf *pf, u16 num_vfs)
>  {
> +	struct ice_vfs *vfs = &pf->vfs;
>  	struct ice_vf *vf;
> -	unsigned int bkt;
> -	u16 vf_id = 0;
> +	u16 vf_id;
> +	int err;
> +
> +	lockdep_assert_held(&vfs->table_lock);
> +
> +	for (vf_id = 0; vf_id < num_vfs; vf_id++) {
> +		vf = kzalloc(sizeof(*vf), GFP_KERNEL);
> +		if (!vf) {
> +			err = -ENOMEM;
> +			goto err_free_entries;
> +		}
> +		kref_init(&vf->refcnt);
> 
> -	ice_for_each_vf(pf, bkt, vf) {
>  		vf->pf = pf;
> -		vf->vf_id = vf_id++;
> +		vf->vf_id = vf_id;
> +
>  		vf->vf_sw_id = pf->first_sw;
>  		/* assign default capabilities */
>  		set_bit(ICE_VIRTCHNL_VF_CAP_L2, &vf->vf_caps);
> @@ -1917,27 +2028,15 @@ static void ice_set_dflt_settings_vfs(struct ice_pf *pf)
>  		ice_vc_set_dflt_vf_ops(&vf->vc_ops);
> 
>  		mutex_init(&vf->cfg_lock);
> +
> +		hash_add_rcu(vfs->table, &vf->entry, vf_id);
>  	}
> -}
> -
> -/**
> - * ice_alloc_vfs - allocate num_vfs in the PF structure
> - * @pf: PF to store the allocated VFs in
> - * @num_vfs: number of VFs to allocate
> - */
> -static int ice_alloc_vfs(struct ice_pf *pf, int num_vfs)
> -{
> -	struct ice_vf *vfs;
> -
> -	vfs = devm_kcalloc(ice_pf_to_dev(pf), num_vfs, sizeof(*vfs),
> -			   GFP_KERNEL);
> -	if (!vfs)
> -		return -ENOMEM;
> -
> -	pf->vfs.table = NULL;
> -	pf->vfs.num_alloc = num_vfs;
> 
>  	return 0;
> +
> +err_free_entries:
> +	ice_free_vf_entries(pf);
> +	return err;
>  }
> 
>  /**
> @@ -1958,14 +2057,10 @@ static int ice_ena_vfs(struct ice_pf *pf, u16 num_vfs)
>  	ice_flush(hw);
> 
>  	ret = pci_enable_sriov(pf->pdev, num_vfs);
> -	if (ret) {
> -		pf->vfs.num_alloc = 0;
> -		goto err_unroll_intr;
> -	}
> -
> -	ret = ice_alloc_vfs(pf, num_vfs);
>  	if (ret)
> -		goto err_pci_disable_sriov;
> +		goto err_unroll_intr;
> +
> +	mutex_lock(&pf->vfs.table_lock);
> 
>  	if (ice_set_per_vf_res(pf, num_vfs)) {
>  		dev_err(dev, "Not enough resources for %d VFs, try with fewer
> number of VFs\n",
> @@ -1974,12 +2069,17 @@ static int ice_ena_vfs(struct ice_pf *pf, u16 num_vfs)
>  		goto err_unroll_sriov;
>  	}
> 
> -	ice_set_dflt_settings_vfs(pf);
> +	ret = ice_create_vf_entries(pf, num_vfs);
> +	if (ret) {
> +		dev_err(dev, "Failed to allocate VF entries for %d VFs\n",
> +			num_vfs);
> +		goto err_unroll_sriov;
> +	}
> 
>  	if (ice_start_vfs(pf)) {
>  		dev_err(dev, "Failed to start VF(s)\n");
>  		ret = -EAGAIN;
> -		goto err_unroll_sriov;
> +		goto err_unroll_vf_entries;
>  	}
> 
>  	clear_bit(ICE_VF_DIS, pf->state);
> @@ -1992,13 +2092,14 @@ static int ice_ena_vfs(struct ice_pf *pf, u16 num_vfs)
>  	if (test_and_clear_bit(ICE_OICR_INTR_DIS, pf->state))
>  		ice_irq_dynamic_ena(hw, NULL, NULL);
> 
> +	mutex_unlock(&pf->vfs.table_lock);
> +
>  	return 0;
> 
> +err_unroll_vf_entries:
> +	ice_free_vf_entries(pf);
>  err_unroll_sriov:
> -	devm_kfree(dev, pf->vfs.table);
> -	pf->vfs.table = NULL;
> -	pf->vfs.num_alloc = 0;
> -err_pci_disable_sriov:
> +	mutex_unlock(&pf->vfs.table_lock);
>  	pci_disable_sriov(pf->pdev);
>  err_unroll_intr:
>  	/* rearm interrupts here */
> @@ -2133,6 +2234,7 @@ void ice_process_vflr_event(struct ice_pf *pf)
>  	    !ice_has_vfs(pf))
>  		return;
> 
> +	mutex_lock(&pf->vfs.table_lock);
>  	ice_for_each_vf(pf, bkt, vf) {
>  		u32 reg_idx, bit_idx;
> 
> @@ -2147,6 +2249,7 @@ void ice_process_vflr_event(struct ice_pf *pf)
>  			mutex_unlock(&vf->cfg_lock);
>  		}
>  	}
> +	mutex_unlock(&pf->vfs.table_lock);
>  }
> 
>  /**
> @@ -2166,22 +2269,36 @@ static void ice_vc_reset_vf(struct ice_vf *vf)
>   *
>   * If no VF is found who owns the pfq then return NULL, otherwise return a
>   * pointer to the VF who owns the pfq
> + *
> + * If this function returns non-NULL, it acquires a reference count of the VF
> + * structure. The caller is responsible for calling ice_put_vf() to drop this
> + * reference.
>   */
>  static struct ice_vf *ice_get_vf_from_pfq(struct ice_pf *pf, u16 pfq)
>  {
>  	struct ice_vf *vf;
>  	unsigned int bkt;
> 
> -	ice_for_each_vf(pf, bkt, vf) {
> +	rcu_read_lock();
> +	ice_for_each_vf_rcu(pf, bkt, vf) {
>  		struct ice_vsi *vsi;
>  		u16 rxq_idx;
> 
>  		vsi = ice_get_vf_vsi(vf);
> 
>  		ice_for_each_rxq(vsi, rxq_idx)
> -			if (vsi->rxq_map[rxq_idx] == pfq)
> -				return vf;
> +			if (vsi->rxq_map[rxq_idx] == pfq) {
> +				struct ice_vf *found;
> +
> +				if (kref_get_unless_zero(&vf->refcnt))
> +					found = vf;
> +				else
> +					found = NULL;
> +				rcu_read_unlock();
> +				return found;
> +			}
>  	}
> +	rcu_read_unlock();
> 
>  	return NULL;
>  }
> @@ -3006,24 +3123,27 @@ int ice_set_vf_spoofchk(struct net_device *netdev,
> int vf_id, bool ena)
> 
>  	ret = ice_check_vf_ready_for_cfg(vf);
>  	if (ret)
> -		return ret;
> +		goto out_put_vf;
> 
>  	vf_vsi = ice_get_vf_vsi(vf);
>  	if (!vf_vsi) {
>  		netdev_err(netdev, "VSI %d for VF %d is null\n",
>  			   vf->lan_vsi_idx, vf->vf_id);
> -		return -EINVAL;
> +		ret = -EINVAL;
> +		goto out_put_vf;
>  	}
> 
>  	if (vf_vsi->type != ICE_VSI_VF) {
>  		netdev_err(netdev, "Type %d of VSI %d for VF %d is no
> ICE_VSI_VF\n",
>  			   vf_vsi->type, vf_vsi->vsi_num, vf->vf_id);
> -		return -ENODEV;
> +		ret = -ENODEV;
> +		goto out_put_vf;
>  	}
> 
>  	if (ena == vf->spoofchk) {
>  		dev_dbg(dev, "VF spoofchk already %s\n", ena ? "ON" : "OFF");
> -		return 0;
> +		ret = 0;
> +		goto out_put_vf;
>  	}
> 
>  	if (ena)
> @@ -3036,6 +3156,8 @@ int ice_set_vf_spoofchk(struct net_device *netdev, int
> vf_id, bool ena)
>  	else
>  		vf->spoofchk = ena;
> 
> +out_put_vf:
> +	ice_put_vf(vf);
>  	return ret;
>  }
> 
> @@ -3048,17 +3170,22 @@ int ice_set_vf_spoofchk(struct net_device *netdev,
> int vf_id, bool ena)
>   */
>  bool ice_is_any_vf_in_promisc(struct ice_pf *pf)
>  {
> +	bool is_vf_promisc = false;
>  	struct ice_vf *vf;
>  	unsigned int bkt;
> 
> -	ice_for_each_vf(pf, bkt, vf) {
> +	rcu_read_lock();
> +	ice_for_each_vf_rcu(pf, bkt, vf) {
>  		/* found a VF that has promiscuous mode configured */
>  		if (test_bit(ICE_VF_STATE_UC_PROMISC, vf->vf_states) ||
> -		    test_bit(ICE_VF_STATE_MC_PROMISC, vf->vf_states))
> -			return true;
> +		    test_bit(ICE_VF_STATE_MC_PROMISC, vf->vf_states)) {
> +			is_vf_promisc = true;
> +			break;
> +		}
>  	}
> +	rcu_read_unlock();
> 
> -	return false;
> +	return is_vf_promisc;
>  }
> 
>  /**
> @@ -3085,6 +3212,7 @@ static int ice_vc_cfg_promiscuous_mode_msg(struct
> ice_vf *vf, u8 *msg)
>  		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
>  		goto error_param;
>  	}
> +	mutex_unlock(&pf->vfs.table_lock);
> 
>  	if (!ice_vc_isvalid_vsi_id(vf, info->vsi_id)) {
>  		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
> @@ -4210,7 +4338,7 @@ ice_set_vf_port_vlan(struct net_device *netdev, int
> vf_id, u16 vlan_id, u8 qos,
> 
>  	ret = ice_check_vf_ready_for_cfg(vf);
>  	if (ret)
> -		return ret;
> +		goto out_put_vf;
> 
>  	if (ice_vf_get_port_vlan_prio(vf) == qos &&
>  	    ice_vf_get_port_vlan_tpid(vf) == local_vlan_proto &&
> @@ -4218,7 +4346,8 @@ ice_set_vf_port_vlan(struct net_device *netdev, int
> vf_id, u16 vlan_id, u8 qos,
>  		/* duplicate request, so just return success */
>  		dev_dbg(dev, "Duplicate port VLAN %u, QoS %u, TPID 0x%04x
> request\n",
>  			vlan_id, qos, local_vlan_proto);
> -		return 0;
> +		ret = 0;
> +		goto out_put_vf;
>  	}
> 
>  	mutex_lock(&vf->cfg_lock);
> @@ -4233,7 +4362,9 @@ ice_set_vf_port_vlan(struct net_device *netdev, int
> vf_id, u16 vlan_id, u8 qos,
>  	ice_vc_reset_vf(vf);
>  	mutex_unlock(&vf->cfg_lock);
> 
> -	return 0;
> +out_put_vf:
> +	ice_put_vf(vf);
> +	return ret;
>  }
> 
>  /**
> @@ -5784,6 +5915,7 @@ void ice_vc_process_vf_msg(struct ice_pf *pf, struct
> ice_rq_event_info *event)
>  		ice_vc_send_msg_to_vf(vf, v_opcode,
>  				      VIRTCHNL_STATUS_ERR_NOT_SUPPORTED,
> NULL,
>  				      0);
> +		ice_put_vf(vf);
>  		return;
>  	}
> 
> @@ -5793,6 +5925,7 @@ void ice_vc_process_vf_msg(struct ice_pf *pf, struct
> ice_rq_event_info *event)
>  				      NULL, 0);
>  		dev_err(dev, "Invalid message from VF %d, opcode %d, len %d,
> error %d\n",
>  			vf_id, v_opcode, msglen, err);
> +		ice_put_vf(vf);
>  		return;
>  	}
> 
> @@ -5802,6 +5935,7 @@ void ice_vc_process_vf_msg(struct ice_pf *pf, struct
> ice_rq_event_info *event)
>  	if (!mutex_trylock(&vf->cfg_lock)) {
>  		dev_info(dev, "VF %u is being configured in another context that
> will trigger a VFR, so there is no need to handle this message\n",
>  			 vf->vf_id);
> +		ice_put_vf(vf);
>  		return;
>  	}
> 
> @@ -5939,7 +6073,7 @@ ice_get_vf_cfg(struct net_device *netdev, int vf_id,
> struct ifla_vf_info *ivi)
> 
>  	ret = ice_check_vf_ready_for_cfg(vf);
>  	if (ret)
> -		return ret;
> +		goto out_put_vf;
> 
>  	ivi->vf = vf_id;
>  	ether_addr_copy(ivi->mac, vf->hw_lan_addr.addr);
> @@ -5960,7 +6094,10 @@ ice_get_vf_cfg(struct net_device *netdev, int vf_id,
> struct ifla_vf_info *ivi)
>  		ivi->linkstate = IFLA_VF_LINK_STATE_DISABLE;
>  	ivi->max_tx_rate = vf->max_tx_rate;
>  	ivi->min_tx_rate = vf->min_tx_rate;
> -	return 0;
> +
> +out_put_vf:
> +	ice_put_vf(vf);
> +	return ret;
>  }
> 
>  /**
> @@ -6021,17 +6158,20 @@ int ice_set_vf_mac(struct net_device *netdev, int
> vf_id, u8 *mac)
> 
>  	/* nothing left to do, unicast MAC already set */
>  	if (ether_addr_equal(vf->dev_lan_addr.addr, mac) &&
> -	    ether_addr_equal(vf->hw_lan_addr.addr, mac))
> -		return 0;
> +	    ether_addr_equal(vf->hw_lan_addr.addr, mac)) {
> +		ret = 0;
> +		goto out_put_vf;
> +	}
> 
>  	ret = ice_check_vf_ready_for_cfg(vf);
>  	if (ret)
> -		return ret;
> +		goto out_put_vf;
> 
>  	if (ice_unicast_mac_exists(pf, mac)) {
>  		netdev_err(netdev, "Unicast MAC %pM already exists on this PF.
> Preventing setting VF %u unicast MAC address to %pM\n",
>  			   mac, vf_id, mac);
> -		return -EINVAL;
> +		ret = -EINVAL;
> +		goto out_put_vf;
>  	}
> 
>  	mutex_lock(&vf->cfg_lock);
> @@ -6055,9 +6195,13 @@ int ice_set_vf_mac(struct net_device *netdev, int
> vf_id, u8 *mac)
> 
>  	ice_vc_reset_vf(vf);
>  	mutex_unlock(&vf->cfg_lock);
> -	return 0;
> +
> +out_put_vf:
> +	ice_put_vf(vf);
> +	return ret;
>  }
> 
> +
>  /**
>   * ice_set_vf_trust
>   * @netdev: network interface device structure
> @@ -6083,11 +6227,13 @@ int ice_set_vf_trust(struct net_device *netdev, int
> vf_id, bool trusted)
> 
>  	ret = ice_check_vf_ready_for_cfg(vf);
>  	if (ret)
> -		return ret;
> +		goto out_put_vf;
> 
>  	/* Check if already trusted */
> -	if (trusted == vf->trusted)
> -		return 0;
> +	if (trusted == vf->trusted) {
> +		ret = 0;
> +		goto out_put_vf;
> +	}
> 
>  	mutex_lock(&vf->cfg_lock);
> 
> @@ -6098,7 +6244,9 @@ int ice_set_vf_trust(struct net_device *netdev, int
> vf_id, bool trusted)
> 
>  	mutex_unlock(&vf->cfg_lock);
> 
> -	return 0;
> +out_put_vf:
> +	ice_put_vf(vf);
> +	return ret;
>  }
> 
>  /**
> @@ -6121,7 +6269,7 @@ int ice_set_vf_link_state(struct net_device *netdev, int
> vf_id, int link_state)
> 
>  	ret = ice_check_vf_ready_for_cfg(vf);
>  	if (ret)
> -		return ret;
> +		goto out_put_vf;
> 
>  	switch (link_state) {
>  	case IFLA_VF_LINK_STATE_AUTO:
> @@ -6136,12 +6284,15 @@ int ice_set_vf_link_state(struct net_device *netdev,
> int vf_id, int link_state)
>  		vf->link_up = false;
>  		break;
>  	default:
> -		return -EINVAL;
> +		ret = -EINVAL;
> +		goto out_put_vf;
>  	}
> 
>  	ice_vc_notify_vf_link_state(vf);
> 
> -	return 0;
> +out_put_vf:
> +	ice_put_vf(vf);
> +	return ret;
>  }
> 
>  /**
> @@ -6154,8 +6305,10 @@ static int ice_calc_all_vfs_min_tx_rate(struct ice_pf
> *pf)
>  	unsigned int bkt;
>  	int rate = 0;
> 
> -	ice_for_each_vf(pf, bkt, vf)
> +	rcu_read_lock();
> +	ice_for_each_vf_rcu(pf, bkt, vf)
>  		rate += vf->min_tx_rate;
> +	rcu_read_unlock();
> 
>  	return rate;
>  }
> @@ -6217,7 +6370,7 @@ ice_set_vf_bw(struct net_device *netdev, int vf_id, int
> min_tx_rate,
> 
>  	ret = ice_check_vf_ready_for_cfg(vf);
>  	if (ret)
> -		return ret;
> +		goto out_put_vf;
> 
>  	vsi = ice_get_vf_vsi(vf);
> 
> @@ -6227,23 +6380,27 @@ ice_set_vf_bw(struct net_device *netdev, int vf_id,
> int min_tx_rate,
>  	if (max_tx_rate && min_tx_rate > max_tx_rate) {
>  		dev_err(dev, "Cannot set min Tx rate %d Mbps greater than max
> Tx rate %d Mbps\n",
>  			min_tx_rate, max_tx_rate);
> -		return -EINVAL;
> +		ret = -EINVAL;
> +		goto out_put_vf;
>  	}
> 
>  	if (min_tx_rate && ice_is_dcb_active(pf)) {
>  		dev_err(dev, "DCB on PF is currently enabled. VF min Tx rate
> limiting not allowed on this PF.\n");
> -		return -EOPNOTSUPP;
> +		ret = -EOPNOTSUPP;
> +		goto out_put_vf;
>  	}
> 
> -	if (ice_min_tx_rate_oversubscribed(vf, min_tx_rate))
> -		return -EINVAL;
> +	if (ice_min_tx_rate_oversubscribed(vf, min_tx_rate)) {
> +		ret = -EINVAL;
> +		goto out_put_vf;
> +	}
> 
>  	if (vf->min_tx_rate != (unsigned int)min_tx_rate) {
>  		ret = ice_set_min_bw_limit(vsi, (u64)min_tx_rate * 1000);
>  		if (ret) {
>  			dev_err(dev, "Unable to set min-tx-rate for VF %d\n",
>  				vf->vf_id);
> -			return ret;
> +			goto out_put_vf;
>  		}
> 
>  		vf->min_tx_rate = min_tx_rate;
> @@ -6254,13 +6411,15 @@ ice_set_vf_bw(struct net_device *netdev, int vf_id,
> int min_tx_rate,
>  		if (ret) {
>  			dev_err(dev, "Unable to set max-tx-rate for VF %d\n",
>  				vf->vf_id);
> -			return ret;
> +			goto out_put_vf;
>  		}
> 
>  		vf->max_tx_rate = max_tx_rate;
>  	}
> 
> -	return 0;
> +out_put_vf:
> +	ice_put_vf(vf);
> +	return ret;
>  }
> 
>  /**
> @@ -6284,11 +6443,13 @@ int ice_get_vf_stats(struct net_device *netdev, int
> vf_id,
> 
>  	ret = ice_check_vf_ready_for_cfg(vf);
>  	if (ret)
> -		return ret;
> +		goto out_put_vf;
> 
>  	vsi = ice_get_vf_vsi(vf);
> -	if (!vsi)
> -		return -EINVAL;
> +	if (!vsi) {
> +		ret = -EINVAL;
> +		goto out_put_vf;
> +	}
> 
>  	ice_update_eth_stats(vsi);
>  	stats = &vsi->eth_stats;
> @@ -6306,7 +6467,9 @@ int ice_get_vf_stats(struct net_device *netdev, int
> vf_id,
>  	vf_stats->rx_dropped = stats->rx_discards;
>  	vf_stats->tx_dropped = stats->tx_discards;
> 
> -	return 0;
> +out_put_vf:
> +	ice_put_vf(vf);
> +	return ret;
>  }
> 
>  /**
> @@ -6350,6 +6513,7 @@ void ice_print_vfs_mdd_events(struct ice_pf *pf)
> 
>  	pf->vfs.last_printed_mdd_jiffies = jiffies;
> 
> +	mutex_lock(&pf->vfs.table_lock);
>  	ice_for_each_vf(pf, bkt, vf) {
>  		/* only print Rx MDD event message if there are new events */
>  		if (vf->mdd_rx_events.count != vf->mdd_rx_events.last_printed) {
> @@ -6368,6 +6532,7 @@ void ice_print_vfs_mdd_events(struct ice_pf *pf)
>  				 vf->dev_lan_addr.addr);
>  		}
>  	}
> +	mutex_unlock(&pf->vfs.table_lock);
>  }
> 
>  /**
> @@ -6423,9 +6588,8 @@ ice_is_malicious_vf(struct ice_pf *pf, struct
> ice_rq_event_info *event,
>  	if (!vf)
>  		return false;
> 
> -	/* Check if VF is disabled. */
>  	if (test_bit(ICE_VF_STATE_DIS, vf->vf_states))
> -		return false;
> +		goto out_put_vf;
> 
>  	mbxdata.num_msg_proc = num_msg_proc;
>  	mbxdata.num_pending_arq = num_msg_pending;
> @@ -6436,7 +6600,7 @@ ice_is_malicious_vf(struct ice_pf *pf, struct
> ice_rq_event_info *event,
>  	/* check to see if we have a malicious VF */
>  	status = ice_mbx_vf_state_handler(&pf->hw, &mbxdata, vf_id, &malvf);
>  	if (status)
> -		return false;
> +		goto out_put_vf;
> 
>  	if (malvf) {
>  		bool report_vf = false;
> @@ -6458,12 +6622,9 @@ ice_is_malicious_vf(struct ice_pf *pf, struct
> ice_rq_event_info *event,
>  					 &vf->dev_lan_addr.addr[0],
>  					 pf_vsi->netdev->dev_addr);
>  		}
> -
> -		return true;
>  	}
> 
> -	/* if there was an error in detection or the VF is not malicious then
> -	 * return false
> -	 */
> -	return false;
> +out_put_vf:
> +	ice_put_vf(vf);
> +	return malvf;
>  }
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
> b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
> index 179a4dda38e5..48e28b11bb12 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
> @@ -44,22 +44,45 @@
>   * These functions provide abstraction for interacting with the VF hash table.
>   * In general, direct access to the hash table should be avoided outside of
>   * these functions where possible.
> + *
> + * The VF entries in the hash table are protected by reference counting to
> + * track lifetime of accesses from the table. The ice_get_vf_by_id() function
> + * obtains a reference to the VF structure which must be dropped by using
> + * ice_put_vf().
>   */
> 
>  /**
>   * ice_for_each_vf - Iterate over each VF entry
>   * @pf: pointer to the PF private structure
>   * @bkt: bucket index used for iteration
> - * @entry: pointer to the VF entry currently being processed in the loop.
> + * @vf: pointer to the VF entry currently being processed in the loop.
>   *
>   * The bkt variable is an unsigned integer iterator used to traverse the VF
>   * entries. It is *not* guaranteed to be the VF's vf_id. Do not assume it is.
>   * Use vf->vf_id to get the id number if needed.
> + *
> + * The caller is expected to be under the table_lock mutex for the entire
> + * loop. Use this iterator if your loop is long or if it might sleep.
>   */
> -#define ice_for_each_vf(pf, bkt, entry)					\
> -	for ((bkt) = 0, (entry) = &(pf)->vfs.table[0];			\
> -	     (bkt) < (pf)->vfs.num_alloc;				\
> -	     (bkt)++, (entry)++)
> +#define ice_for_each_vf(pf, bkt, vf) \
> +	hash_for_each((pf)->vfs.table, (bkt), (vf), entry)
> +
> +/**
> + * ice_for_each_vf_rcu - Iterate over each VF entry protected by RCU
> + * @pf: pointer to the PF private structure
> + * @bkt: bucket index used for iteration
> + * @vf: pointer to the VF entry currently being processed in the loop.
> + *
> + * The bkt variable is an unsigned integer iterator used to traverse the VF
> + * entries. It is *not* guaranteed to be the VF's vf_id. Do not assume it is.
> + * Use vf->vf_id to get the id number if needed.
> + *
> + * The caller is expected to be under rcu_read_lock() for the entire loop.
> + * Only use this iterator if your loop is short and you can guarantee it does
> + * not sleep.
> + */
> +#define ice_for_each_vf_rcu(pf, bkt, vf) \
> +	hash_for_each_rcu((pf)->vfs.table, (bkt), (vf), entry)
> 
>  /* Specific VF states */
>  enum ice_vf_states {
> @@ -125,8 +148,8 @@ struct ice_vc_vf_ops {
> 
>  /* Virtchnl/SR-IOV config info */
>  struct ice_vfs {
> -	struct ice_vf *table;		/* table of VF entries */
> -	u16 num_alloc;			/* number of allocated VFs */
> +	DECLARE_HASHTABLE(table, 8);	/* table of VF entries */
> +	struct mutex table_lock;	/* Lock for protecting the hash table */
>  	u16 num_supported;		/* max supported VFs on this PF */
>  	u16 num_qps_per;		/* number of queue pairs per VF */
>  	u16 num_msix_per;		/* number of MSi-X vectors per VF */
> @@ -136,6 +159,9 @@ struct ice_vfs {
> 
>  /* VF information structure */
>  struct ice_vf {
> +	struct hlist_node entry;
> +	struct rcu_head rcu;
> +	struct kref refcnt;
>  	struct ice_pf *pf;
> 
>  	/* Used during virtchnl message handling and NDO ops against the VF
> @@ -193,6 +219,7 @@ struct ice_vf {
> 
>  #ifdef CONFIG_PCI_IOV
>  struct ice_vf *ice_get_vf_by_id(struct ice_pf *pf, u16 vf_id);
> +void ice_put_vf(struct ice_vf *vf);
>  bool ice_has_vfs(struct ice_pf *pf);
>  u16 ice_get_num_vfs(struct ice_pf *pf);
>  struct ice_vsi *ice_get_vf_vsi(struct ice_vf *vf);
> @@ -259,6 +286,10 @@ static inline struct ice_vf *ice_get_vf_by_id(struct ice_pf
> *pf, u16 vf_id)
>  	return NULL;
>  }
> 
> +static inline void ice_put_vf(struct ice_vf *vf)
> +{
> +}
> +
>  static inline bool ice_has_vfs(struct ice_pf *pf)
>  {
>  	return false;
> --
> 2.35.1.129.gb80121027d12

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
