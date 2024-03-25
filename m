Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B6EF889443
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Mar 2024 08:51:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 18AB581E03;
	Mon, 25 Mar 2024 07:51:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NElJrg7g4EIg; Mon, 25 Mar 2024 07:51:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D5FA681DE1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711353060;
	bh=zFeEXIsjV1bM+HuNgTYXTXsciEtrO/SCK4YGdjn65k8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=o4Un4203JXh76i/pTEZNRKkrQ1NJQGTWUckWaiBaSvZ9EAwV9kNdmL7qn1hxXy8NE
	 RR1mBIkp/3W08yJl79GdSMjz7tKMirHCEOtNVm3iI31t85oiByF5ZSJ84gqtgjBhgK
	 0IMJlc3h/xFI95v8NRA8yMTtg7FXtI6BJ2A43lNNZEzkTlycCcSkDpD1De4GtkEkoF
	 jzZDlDkWxuBA++stGo/VYNg0OjgzlnpLZHIzVO4WCwsow4OjSAN9wgFeDJxbhbtRYL
	 gzCFGVs/kIoMXnfj4rsnF0XfZeuH/lfFeBAYHZHkK7Xekqk/vcv2WnzFuI/tC5luwZ
	 JVR09aORDq29w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D5FA681DE1;
	Mon, 25 Mar 2024 07:51:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DE35B1BF3A3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Mar 2024 07:50:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C555040683
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Mar 2024 07:50:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZDnJp9mSxBII for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Mar 2024 07:50:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3053D40681
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3053D40681
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3053D40681
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Mar 2024 07:50:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11023"; a="17734709"
X-IronPort-AV: E=Sophos;i="6.07,152,1708416000"; d="scan'208";a="17734709"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2024 00:50:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,152,1708416000"; d="scan'208";a="15937761"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Mar 2024 00:50:53 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 25 Mar 2024 00:50:52 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 25 Mar 2024 00:50:52 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 25 Mar 2024 00:50:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lSB985btpQHC9oyMTAx3Yb3M0wAUhHgOaF/sz+IxAqp7e/bkyxMpDCQ8svlmppWfjQ5rELufZ8T7qF5QfBtZb4nAJxeO4LVLFeBJgiu5hBfVjEN6Pgg4pRR4V1RzPv9pdcGFAByciFLqfo3gWNAZftF8CG32DJ/09nnyaDlDenbLPC5bRqmO9SpEhNVLjL7tLa84z5aO8iLOxcnU6qVFFATlZcDpQMYRASWJrd0KHNTqx+Ac8nUqE05jJ4rQJHTrrqUNOYQElqaECIxP+WgQzJgv9q8b3EDoy4XqA+/KTYssi2q9wp6f7gIa3LskY15k3+F5Ay4mIiWQQzfhT4IX3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zFeEXIsjV1bM+HuNgTYXTXsciEtrO/SCK4YGdjn65k8=;
 b=ZaOKtzUbqYhJ8J9wrHKu5ns+EmgBmj3OL8/Q2rpcAIuEA7iV3NFmLMF2MCUeIp1V1QEwsNGJKbfuR6lbK0kmDK8Mqs7B++Pykt+inxslobjBWNhQbTKy+KQC/9kbx/33g/3Bh9Iv/V2LwkGHb21EZfkQHn1bcbu3CW8BX3yLBoSFjCady2SBC6kDy29RRpcf26O/YzigFYhnjMuQzL+Acr3DAMPqQZxueKSGUelqfREq6l7NVE5lsapOekdzkY+tqsagilFO6T8hDHYpMAbwMbdTBtQCd4KZOastgGRfDim+yIfGFr2gb2sAF46z+7gopv+b5IUI2dv6Df4qBdN1MQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by SJ1PR11MB6276.namprd11.prod.outlook.com (2603:10b6:a03:455::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.31; Mon, 25 Mar
 2024 07:50:43 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4434:a739:7bae:39a9]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4434:a739:7bae:39a9%2]) with mapi id 15.20.7409.028; Mon, 25 Mar 2024
 07:50:43 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: ivecera <ivecera@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v4] i40e: Enforce software
 interrupt during busy-poll exit
Thread-Index: AQHad5aP/O1kkXJ750KzKIspJgdvRrFIIgRg
Date: Mon, 25 Mar 2024 07:50:43 +0000
Message-ID: <CYYPR11MB8429BAF4E7A862465F90302FBD362@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240316113830.230718-1-ivecera@redhat.com>
In-Reply-To: <20240316113830.230718-1-ivecera@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|SJ1PR11MB6276:EE_
x-ms-office365-filtering-correlation-id: 01ec98dc-af24-42da-1d61-08dc4ca04649
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RCJRuHDa3XkKOAxbvN1T25ifgFcSoVkwu79B3wtN4VRjex5B02ndfrv5Pt33BuCcZqiYaMY8wDa66+0De6ZMeqJ1dj+zxCLXcmh0QS8SgdjH9+eyk16SpVItwNb3DnGDVdQLvgkeIHVTtly/U7/6OZ8dTspWRDUFZkPMdTldIMS5seqZy2abEw9hKulQSVS2cvXgSqMSC2nn22j9M4EH5I4o5elUz+li0U++Y7GA8b7IatgatTMAUYHvwBYrFP7x6lqqrs1hE0KW1Hs1D/NxfglO0qdOSt3oortkDpX5w3nNineQZCiQTUAuyMLLKxKozxmNd6gpQniEd9ViARgiWuMduH803rTO25JwMbbrBBBGN8TfZ9ZAdtcv5XYkXGucYmaZ2x4ykvgid/3nNRlAUu1Qy9pMQTQiZYCNPt0lKmiocmdcrmuNxHuy4wiqVoJVLxzGOHGqkv6LvJk7VV0ONfQqjD8llTs9DaXcgeMxwmkki3ub7i6EHlacffeNkHObYf77AGPov5LvK69J1kLUNOqhAZ2DtMeKCWP4ZYaD0KRmT5hRL5fYtN4QespQPRnbtJ0UG4+5gT9+qC9l+DZJd0vKEl0sQtI7PSQHUSBbGajsdDKH/3QwDcEtn4Tnnevh749aBk9HoMyqh+u4WjkAeXDSzyOFZ6C7DBY67HJwlC11rglwbitxb+SGCFmjIn8jBhvQA8wPTx259RgqeUTz8wfBEQYHrpSVEDHHeqCQBGw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zqbRMTMC+QXDNt2tNURp3eS0pitsjZ5LD16R3QzK1miGJhG4Ki0tCnhV5e3E?=
 =?us-ascii?Q?uBYYDtaLTdnrJr0Ylv8TRr3+yuU7kVHDr5KJ6IoX7FBwRLomHIb5+7HzctAP?=
 =?us-ascii?Q?Q4RPjl+Z4P6KQSfdYQFyDEGNJdOa5+b2aDxTTHrcT3toOsDbN+Ilw7aO8Ez4?=
 =?us-ascii?Q?bZHqLQscB5j0Pj8t0NIKMEZSam+D4SyHm7RsMBmrsbg64LPHG4vsneGVQ4cz?=
 =?us-ascii?Q?9o3ZfxGboPVDmHdgquV2FGKPzVou1woovIzJzLSqWAlfhMZYfDktdLM8lz3v?=
 =?us-ascii?Q?0Ht8bD7YwIiOkfpiOZTTUY2Zw5fn2mccvqr610Q02wMqtf5CH60fVE627ukd?=
 =?us-ascii?Q?dmhdBCJitgTRm5g7qa6Pt3WX3x6dPsFilruRKP2UNYBcAQIVwTxmVLHKC1zL?=
 =?us-ascii?Q?zyb/wgCSYG4da31tohnwCNG5CiEenh5sI+52NvENHoTF7ZJExeQ6NE+NmsYe?=
 =?us-ascii?Q?CtInWMEUZ8a7yI78BoyL9gROQ4ldDycqk1kJJImibhEhjRtq07kRtHbOEGH/?=
 =?us-ascii?Q?BVbte7PWkquMJiECwYTIqhH2Q/ZgyeajgITFGVQck+bkcIPFsFWljQIgqPcT?=
 =?us-ascii?Q?9PiWTtR46k/CapM78LVKF+ZjLSRhNFKbECyS/NNnyrOItNFiQMGeH/Y6KLU+?=
 =?us-ascii?Q?eRvblgZo2tnTLoPa8eqmr6EF2s2+LinJ3Oh/KbvRBAMzI/czhabrPEyAzg8/?=
 =?us-ascii?Q?j1+uUbWAlR2kOw9gW+xotQl4o4mc5dlIsepP12XbjOHINEAdjOw6bkUMalXz?=
 =?us-ascii?Q?et2/sEvQis6/2H6c3Xavq4eAtQSgVrCwkXjOD5JaNmXFnpIjxMmGJVPd5atx?=
 =?us-ascii?Q?L5kCXyF172mHxb8aloGHDm6VQDO7oN38SFhjb0wL0oV7lMBZr5X7CEvgP8MP?=
 =?us-ascii?Q?lg3fq5WdL6DK/7SjKzNwyxQ5gLKcKP1dtJ3Ou4WB4JZmPNfIAfrWwf/6a9vj?=
 =?us-ascii?Q?1hmBmETKabQM+wcIeBBJwyBgHgtUE2jEupIAXnOugzNUsiHdvOJ6kiudoP/n?=
 =?us-ascii?Q?lbtncc9SFMVpYcfiajtenKermOBlDNQ995EuokODL8PCBqKixnKD5HFtqB/C?=
 =?us-ascii?Q?ajmH4cWMsdn0PTiyfGhr4XxTRWu6sM2fHs267jCVXcdc5JEOq0GzGQ+D+kDn?=
 =?us-ascii?Q?SelJqS7mw1WbX+2/uKk/RAW10CBc9yYYbg8o7yZv6O8ij2uWNgtqTGL0prtp?=
 =?us-ascii?Q?MjVL2fzbrgS13ZhDdVlfiKDeA20cEupBLoVHU3fvxP8HuHGRjpkRlcfFShMm?=
 =?us-ascii?Q?t7IewNiO6QW2xEc056lbYugklnhUQPzXxcyZXKhuToUzvmoZHW1+1Cg5vr85?=
 =?us-ascii?Q?Xjy/7Zyh8rMdwXnKwurrbE20UeCfjLcM3RtjDYs4BZHs+WsI5vyLIHGfa3HI?=
 =?us-ascii?Q?TdScC2UpzYuUC7xxR+R8UiKeFDOOTzpi7f9Z49qG0219qUgOY62RadlroD26?=
 =?us-ascii?Q?K6ewUSXeMcNaCkNJaufbrtNa2gtRFU1PB2TWSRMxf3qK1AXmsfNXiOcwm1pX?=
 =?us-ascii?Q?h0qMadeJbuBqt3LDro9K6DfLuAnq98OljIWz96O47I/4K88mTRTIeqpw/EvP?=
 =?us-ascii?Q?dcWC6aPxZ8JnU82nNaWOSK7Mqfp1713YjLG1cRqdj5w6h2xLMGBKKxp5Vlpf?=
 =?us-ascii?Q?smvMYUV3Pzm+k1kJTQFy6NeObinYf7Y5oJ9nyalqqQT+WXm0RQoPF4XmiJnv?=
 =?us-ascii?Q?cNNSqQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 01ec98dc-af24-42da-1d61-08dc4ca04649
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Mar 2024 07:50:43.7315 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jKXZqnDKyF/fVaS+RLB9tEHGLn87T4PzlTE8ivxNVBF4fiitFMLoT445gByU1Uf5mw4cyTDVMfgFtthYF7DjkpRAORwDTsgN81GTi6w5ZWya39dqof3Kyx8bt9pBoRMh
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6276
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711353054; x=1742889054;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QAe8UFag18fE8K3W/IFZpmhhnU3SfVJCrHWkPV0tXFk=;
 b=VfaI6lPaLsJxLkJOTzltZJdfh/4i3H/c602uh5pQKvk04tPENu6q7efF
 KU+Fu8JRKCcS4CZXSgqKM/4koM2r0yaz9ZfI6ji/MHx9yDs5FgYXytJ+x
 Ese0ZSxEYubeelTxNaI4Ma4cwDaynLA7TY/VYRUcpkrE08sze8hq5480Q
 FEBl3vjWacyoC18HwD6+fJ4waQMMfLppwx6bUKyJd5ZANjqge7J0ORbH/
 6KdzsVFqHH5dTovvqJX79d4XFi84C9AqClPg9Un9BHndO1MxK7387Z6fT
 rBubPco0Mwzk5o/XW0Orcg265A0zYWbiIL59XIV4ekA23g4uT7xh9YE1j
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VfaI6lPa
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v4] i40e: Enforce software
 interrupt during busy-poll exit
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
Cc: "Chmielewski, Pawel" <pawel.chmielewski@intel.com>,
 open list <linux-kernel@vger.kernel.org>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>, Eric Dumazet <edumazet@google.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Hugo Ferreira <hferreir@redhat.com>, Jakub Kicinski <kuba@kernel.org>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>, "Nguyen, 
 Anthony L" <anthony.l.nguyen@intel.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of I=
van Vecera
> Sent: Saturday, March 16, 2024 5:08 PM
> To: netdev@vger.kernel.org
> Cc: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; moderated list:=
INTEL ETHERNET DRIVERS <intel-wired-lan@lists.osuosl.org>; open list <linux=
-kernel@vger.kernel.org>; Chmielewski, Pawel <pawel.chmielewski@intel.com>;=
 Eric Dumazet <edumazet@google.com>; Nguyen, Anthony L <anthony.l.nguyen@in=
tel.com>; Hugo Ferreira <hferreir@redhat.com>; Keller, Jacob E <jacob.e.kel=
ler@intel.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redha=
t.com>; David S. Miller <davem@davemloft.net>
> Subject: [Intel-wired-lan] [PATCH net v4] i40e: Enforce software interrup=
t during busy-poll exit
>
> As for ice bug fixed by commit b7306b42beaf ("ice: manage interrupts duri=
ng poll exit") followed by commit 23be7075b318 ("ice: fix software generati=
ng extra interrupts") I'm seeing the similar issue also with i40e driver.
>
> In certain situation when busy-loop is enabled together with adaptive coa=
lescing, the driver occasionally misses that there are outstanding descript=
ors to clean when exiting busy poll.
>
> Try to catch the remaining work by triggering a software interrupt when e=
xiting busy poll. No extra interrupts will be generated when busy polling i=
s not used.
>
> The issue was found when running sockperf ping-pong tcp test with adaptiv=
e coalescing and busy poll enabled (50 as value busy_pool and busy_read sys=
ctl knobs) and results in huge latency spikes with more than 100000us.
>
> The fix is inspired from the ice driver and do the following:
> 1) During napi poll exit in case of busy-poll (napo_complete_done()
>    returns false) this is recorded to q_vector that we were in busy
>    loop.
> 2) Extends i40e_buildreg_itr() to be able to add an enforced software
>    interrupt into built value
> 2) In i40e_update_enable_itr() enforces a software interrupt trigger
>    if we are exiting busy poll to catch any pending clean-ups
> 3) Reuses unused 3rd ITR (interrupt throttle) index and set it to
>    20K interrupts per second to limit the number of these sw interrupts.
>
> Test results
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Prior:
> [root@dell-per640-07 net]# sockperf ping-pong -i 10.9.9.1 --tcp -m 1000 -=
-mps=3Dmax -t 120
> sockperf: =3D=3D version #3.10-no.git =3D=3D
> sockperf[CLIENT] send on:sockperf: using recvfrom() to block on socket(s)
>
> [ 0] IP =3D 10.9.9.1        PORT =3D 11111 # TCP
> sockperf: Warmup stage (sending a few dummy messages)...
> sockperf: Starting test...
> sockperf: Test end (interrupted by timer)
> sockperf: Test ended
> sockperf: [Total Run] RunTime=3D119.999 sec; Warm up time=3D400 msec; Sen=
tMessages=3D2438563; ReceivedMessages=3D2438562
> sockperf: =3D=3D=3D=3D=3D=3D=3D=3D=3D Printing statistics for Server No: =
0
> sockperf: [Valid Duration] RunTime=3D119.549 sec; SentMessages=3D2429473;=
 ReceivedMessages=3D2429473
> sockperf: =3D=3D=3D=3D> avg-latency=3D24.571 (std-dev=3D93.297, mean-ad=
=3D4.904, median-ad=3D1.510, siqr=3D1.063, cv=3D3.797, std-error=3D0.060, 9=
9.0% ci=3D[24.417, 24.725])
> sockperf: # dropped messages =3D 0; # duplicated messages =3D 0; # out-of=
-order messages =3D 0
> sockperf: Summary: Latency is 24.571 usec
> sockperf: Total 2429473 observations; each percentile contains 24294.73 o=
bservations
> sockperf: ---> <MAX> observation =3D 103294.331
> sockperf: ---> percentile 99.999 =3D   45.633
> sockperf: ---> percentile 99.990 =3D   37.013
> sockperf: ---> percentile 99.900 =3D   35.910
> sockperf: ---> percentile 99.000 =3D   33.390
> sockperf: ---> percentile 90.000 =3D   28.626
> sockperf: ---> percentile 75.000 =3D   27.741
> sockperf: ---> percentile 50.000 =3D   26.743
> sockperf: ---> percentile 25.000 =3D   25.614
> sockperf: ---> <MIN> observation =3D   12.220
>
> After:
> [root@dell-per640-07 net]# sockperf ping-pong -i 10.9.9.1 --tcp -m 1000 -=
-mps=3Dmax -t 120
> sockperf: =3D=3D version #3.10-no.git =3D=3D
> sockperf[CLIENT] send on:sockperf: using recvfrom() to block on socket(s)
>
> [ 0] IP =3D 10.9.9.1        PORT =3D 11111 # TCP
> sockperf: Warmup stage (sending a few dummy messages)...
> sockperf: Starting test...
> sockperf: Test end (interrupted by timer)
> sockperf: Test ended
> sockperf: [Total Run] RunTime=3D119.999 sec; Warm up time=3D400 msec; Sen=
tMessages=3D2400055; ReceivedMessages=3D2400054
> sockperf: =3D=3D=3D=3D=3D=3D=3D=3D=3D Printing statistics for Server No: =
0
> sockperf: [Valid Duration] RunTime=3D119.549 sec; SentMessages=3D2391186;=
 ReceivedMessages=3D2391186
> sockperf: =3D=3D=3D=3D> avg-latency=3D24.965 (std-dev=3D5.934, mean-ad=3D=
4.642, median-ad=3D1.485, siqr=3D1.067, cv=3D0.238, std-error=3D0.004, 99.0=
% ci=3D[24.955, 24.975])
> sockperf: # dropped messages =3D 0; # duplicated messages =3D 0; # out-of=
-order messages =3D 0
> sockperf: Summary: Latency is 24.965 usec
> sockperf: Total 2391186 observations; each percentile contains 23911.86 o=
bservations
> sockperf: ---> <MAX> observation =3D  195.841
> sockperf: ---> percentile 99.999 =3D   45.026
> sockperf: ---> percentile 99.990 =3D   39.009
> sockperf: ---> percentile 99.900 =3D   35.922
> sockperf: ---> percentile 99.000 =3D   33.482
> sockperf: ---> percentile 90.000 =3D   28.902
> sockperf: ---> percentile 75.000 =3D   27.821
> sockperf: ---> percentile 50.000 =3D   26.860
> sockperf: ---> percentile 25.000 =3D   25.685
> sockperf: ---> <MIN> observation =3D   12.277
>
> Fixes: 0bcd952feec7 ("ethernet/intel: consolidate NAPI and NAPI exit")
> Reported-by: Hugo Ferreira <hferreir@redhat.com>
> Reviewed-by: Michal Schmidt <mschmidt@redhat.com>
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> ---
> Changes since v3
> - fixed kdoc warnings (thx Tony)
> Changes since v2
>  - eliminated two writes in hot-path (thx Jesse) Changes since v1
>  - added Fixes: tag
>
>  drivers/net/ethernet/intel/i40e/i40e.h        |  1 +
>  drivers/net/ethernet/intel/i40e/i40e_main.c   |  6 ++
>  .../net/ethernet/intel/i40e/i40e_register.h   |  3 +
>  drivers/net/ethernet/intel/i40e/i40e_txrx.c   | 82 ++++++++++++++-----
>  drivers/net/ethernet/intel/i40e/i40e_txrx.h   |  1 +
>  5 files changed, 72 insertions(+), 21 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

