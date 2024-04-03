Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 04EDC896AEC
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Apr 2024 11:43:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8AA7A81221;
	Wed,  3 Apr 2024 09:43:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hlZPRCou9Vtr; Wed,  3 Apr 2024 09:43:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CA78A81185
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712137432;
	bh=ikInghKDbt4WEWeG9iRODbAko+MErc/HgOMyeVWTyvs=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4vmAOjEmg/WWRrmcKtczWLTVUp2qTrx6HgodZ3kdJ6QGikLmovWLGZjPdLlJgA7C+
	 spTuTisZtgxn1R1woENaNnWUFQ9TxQ9SGNV1CcEepD2wJLXoG8oMDkpcSCso83xMn6
	 K7jTJcZPJ45WMPe/oUVgpoac1jnHfSWysPauBPISyIuh+UYm+gyaBk2p9lSrll+ReJ
	 tOgyK+IyyNo/Rnk/jc/fK0FygqNDXNPCldx55HuU2gFDvW+pIuNaXW26eP2tDKrTEP
	 /2e0XheNoN/XzgiMDNKNVyBmOzQLsQZ36LkyFnA3KZkCTfanH3nzBp7XZhtnVNiisS
	 uMKT1aMczsZMQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CA78A81185;
	Wed,  3 Apr 2024 09:43:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3BD901BF271
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 09:43:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2783640B1A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 09:43:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gvNAwUC6ulaQ for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Apr 2024 09:43:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A88964040D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A88964040D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A88964040D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 09:43:49 +0000 (UTC)
X-CSE-ConnectionGUID: u//BfV4vT+2pcg2uiVrvug==
X-CSE-MsgGUID: 7TO6SJdWSTSe8F73B6z6Bw==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="24814169"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="24814169"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 02:43:48 -0700
X-CSE-ConnectionGUID: CvH1CarTR0mJuViYggoetA==
X-CSE-MsgGUID: k9PedyhOT/6pj76fonYJpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="23081130"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Apr 2024 02:43:48 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Apr 2024 02:43:48 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 3 Apr 2024 02:43:48 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 3 Apr 2024 02:43:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TjAbfGtwSzESdLQW3WKhOVJx2Kd4g8jJ0kwjNnzYTgDMurHPmbrEGBvM+ONBa6oiGKCZfUCiYml4/OdjTljO8kucLcvi64oQd1pP0Ipn/ZyC/kpa+LtiwUcNGzpgUW8U97VwAjQ90JsTiSxic7yveRQnrkcXZwJ3BLMh23UCjp8sLuERm6u3OLQTe7J8841cWxXmgP9tYJoZPP/a/CyzXZDSAJ0kwT6BqD0Do4UVL25ipwTlTDGef3cVHwnWL2P6+SZsSGdpVZdOtTC715mzMjE8YyUIspMdN0qA0psuwo7rkH3C4NX1ii49Z29lyd5z9s6CQS7EX9avcLvlcjHHOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ikInghKDbt4WEWeG9iRODbAko+MErc/HgOMyeVWTyvs=;
 b=ajB0ZdOcQryPp1fiDRlOxcxf3NI2/qAevXp96MyN7QeZwMxIFYje17risQTklO2IMy2gHmePSyAsQtqiwHkFD8CiXwhxZuWP36FKTPdof87cUcp5vZTR70U2ti8cGfrohevGJXsjhlXPabswGBv1Rxdms1lV2XuJrfjzFNNTApQbRSjXf1PrY90ANV7kbWmnNu5XWLLzUCXb4ePKO21yuHFE7wyQyGY1j6ESOxg8P5LRBjJcDpFZcGBSZwMLkGmitrrB8raPNFo7XiBSBjjud18NmKJ2X38u4KCo1dlysRA6g8v+t0D9PrU6zAeFRmH7qdo3qY09RW5m6xJ3XFF79g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by MW4PR11MB6888.namprd11.prod.outlook.com (2603:10b6:303:22d::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.26; Wed, 3 Apr
 2024 09:43:44 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::27b8:e131:8ea6:a4b8]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::27b8:e131:8ea6:a4b8%3]) with mapi id 15.20.7452.019; Wed, 3 Apr 2024
 09:43:44 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] ice: fix enabling RX VLAN filtering
Thread-Index: AQHafvHNSe78eITRl0ihBVQKRQZoKbFI9mGAgA1iIsA=
Date: Wed, 3 Apr 2024 09:43:44 +0000
Message-ID: <SJ0PR11MB5865AD8922F34A36327CC7248F3D2@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20240325201901.39365-1-poros@redhat.com>
 <ZgHqZ5ebaO9VkvYx@mev-dev>
In-Reply-To: <ZgHqZ5ebaO9VkvYx@mev-dev>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|MW4PR11MB6888:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: J1opvD0PHElK7z/lxzMaBmkVyUX0KjkZ8LqOzdyDodY9Upe9dVKLxYm4HfegXiBOX0Kym9oM4/QJq14sutdTYIqjcDA9maXa8IkSG6JuOLBLRl+xeBzEYrrVhXmV3MGWl0iQyTzKC5B9ue8tLU+OlMioLq+fMmJJMjFRjQBaYZRMnpxZTnhF9MsRLMt9spg0HY1R9K66djGX+EPoVabaMGHZ6J7PLn4DDqKzWJyMGZJdY4SzJBjT6vREUlYxEf/qHoBhdDVyFtM5472ZnQnpzG4U8XUroR4R7nXPq4tAgPqVtkD//wX/JBsni8B2ewFo6PyiCV6NdZAASdApiICF53EHdcDuVBQnWW1D/tCifuaijJNz5wAoNfPw/u2mVCsQTLCYBXD8seYreivJDtcaxx2nmfzGcjRnGy8MR7q0Ywi3S3AsKN6xeeZ5QYzJLoTes8Xy6QZe8B8AyuYquJoQi6y+GYmujyT4g5vT9sOEKNJQteCQ6BXf4/9yn6COZG95MxIb8+2EwfNPIeGraVAwYvANcep6jyWmcMuAUvsycNilNwSr4CIyehSEVwA5aD7/N7M3vRLRuqYMuXCAr7CY9r6gTlRfFKBrBx7FcLVUBVAYv3u4jyaiFya2YDlhG4b4JyxCIrMvpKHS+EqqhtW2JsZOKxgje7WchR456NMvRzg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(7416005)(376005); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?e6fqhJd3RqmHlT/+Jp3yl6ZwjGBXKSA5nD2/XcSI64q/AdpJbef2rEBNe8+4?=
 =?us-ascii?Q?P84OhkoyPO40OVMnLfIjZ8ewV53WGv9/dUPQo7mjmrbdM3KL9Eaogkeq3QdL?=
 =?us-ascii?Q?KfLkt9w4K/9o/w8YKEz84yovxQTREwHCe0ArGRQ6Lr+qlOPqBmXqyTXQVR8T?=
 =?us-ascii?Q?2249/l32rlcJsuil+hA189pa54nWvYOmibgyNenc4TvTxjrZ5OSXDCgO9d+a?=
 =?us-ascii?Q?OQspL2UEyeJrYtk4xD3733K0LoLE87pNx8ByAnY1hBwqiFtfQupg52ax+Bic?=
 =?us-ascii?Q?RGMbGHZaqFxWPDTWg3ODPHwQpIrHLk/5WeSvN+nUSnAlrcwe4EevdC+taeBB?=
 =?us-ascii?Q?YAjtE562r8E4Lu87dy5hKMhlyJfdaWcI2DMGYUFg4VubfIFp+xYOEgkFieDe?=
 =?us-ascii?Q?7fViK/tyl3Tf7r5qvh30jDLLmEL7oluQI+byECtuoYwVTAQ1648G39PDGcj5?=
 =?us-ascii?Q?uiXjODuXEyy7kh8IxubB5m6IFkynh6EoKGVLaExeZCWpFnctKSkVQyvvP0Fr?=
 =?us-ascii?Q?nnSz9wL9n7wbXlNkvaFIS8fp0vm0PSBpHpXy4NFtUmXPuqMpptJHJuKuYe0q?=
 =?us-ascii?Q?BfQ6VZxhegDxPdhIzLHz+gHe1dPl76na/Y9oqgaeCuEZQ5NAcx7GMMq7hQDi?=
 =?us-ascii?Q?hqzZ5SlrpNQwyogP6DYhUDUkCt5hZAdRuKZpZh9dQktxNZwCrXVl3bUfj5vz?=
 =?us-ascii?Q?b8tSOVDZTAZGsLyzavp9L+pttQcJ9k1qQx7a/blUn732YZpBRXQB5Sm6Igzp?=
 =?us-ascii?Q?ozic1m8Q3JLBR7bK4DuWiocKwjCo6mBvNUp6qRgmbcrPpgqCegPufLcu5x6E?=
 =?us-ascii?Q?dV0JJnPRzbgCJ3Z0h0czu3lqTL7qAVBW+7yIgXR+TLJJqvvJn3e4LqLD5fTQ?=
 =?us-ascii?Q?epnrnXAGnxXGumq0cTAG/aebU85eSY5DtDFB7qMXI7yB6NwMyUyKsrcluEfQ?=
 =?us-ascii?Q?1nnk4IYa6h16IX1BaHxUPE9vwosSvl2xcQCmoH+/sti7x2wmHhCGuGS+UEhx?=
 =?us-ascii?Q?FJ9b309BBInqFwWq7dblAu5PK25negK84XYX/J/rFgQx8xSDJYxk28+M6V+6?=
 =?us-ascii?Q?pSdiYAWga0KhzfSE92ZmDbE5gSt4TaaTQ9sFINyYgAdhYzwQ/hOuk8SGyqEf?=
 =?us-ascii?Q?DuCWtR+THEFhcl9mvir7LiKC5xPeBH9DeQzbF1D3zCy0p0mCq4S4kNnskx1e?=
 =?us-ascii?Q?m2YiUqnmCrKtkXO/eWC8r90SWgevroZVFVsFg4koEMwPfDufnRJ8+p64SVd4?=
 =?us-ascii?Q?O5UlFWIu8T4yCl9IkWK9z3uZgeYQiF7lco9iFr+Bgkw8e/VtEkL47cHi6Jsl?=
 =?us-ascii?Q?kEHotVB7pXYxtKgfggy4T5dgfoB8oYRAPulpB0LosRcyYXDQJYEn52WaDQuU?=
 =?us-ascii?Q?z2Xz/YgrHLwhRx99/QnUYSpylqvU/mK+mV4FfaMGhe8dkIC69GKJwPCKPj0F?=
 =?us-ascii?Q?rGdZ2EMZuSX3y0poE0ytVNprIG0EqrgkYtO7co0vMgEZgKeUUyeqKI7eGOqZ?=
 =?us-ascii?Q?syGK8LKIsFfbnBYWXi/wJ3enITbQ4uNihyroXRR3V8qfx2RVHG1zY4jF8H23?=
 =?us-ascii?Q?Gcg5oIMetgA3JGuqn2F0+4nb2Uk4l3u3qrL9pm2t?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 278fc37a-92ff-4459-0f83-08dc53c28db0
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Apr 2024 09:43:44.5023 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SpBmFaZS60EruRGSBGok+LNXUjM0x4aaiiVbY1baRTIzkWw/Lj9Y+S16iQArtKe1Q0dgLq2y4HIe8mzzNZCHVItfxIbgYPiq+Y3HveS9kJ4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6888
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712137429; x=1743673429;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rQuioy/xMyKzRK5o/PAW5TsjYanbUDk+tjbC/x61uB0=;
 b=TMC643aTOL0P8bPR0IK+lkuKSwKD2/bxbTMH5XsYOaZWsOxbRYy1YjZK
 g7hv262Voe67h+VH3y0riBanxlrXBnHfBTnMj/TT9uHppX1z3hsKs1Tn3
 VlQq6l68Ry8FeE5KxJFUrDsej3A+afNojBrrFJ9TU4/ZKyHw6SDbAQeOP
 Th0KFS5m689XfPJXe9i3wgGNSZzkq87384SG9Z7LvaVFZmGHCVbS4KVps
 q4GIM7fKJEEAxA4UIt/fPn3p5XmZ0Uy7EGFf3JC5Jr4VgJWkzVW4Cye9O
 8G8PwJZv5ZErCiA55EwGlPcCu9xZZm2CFDJ8z+XyNKYaSyFVynEGeiCOg
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TMC643aT
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix enabling RX VLAN
 filtering
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
Cc: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "edumazet@google.com" <edumazet@google.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "horms@kernel.org" <horms@kernel.org>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Swiatkowski
> Sent: Monday, March 25, 2024 10:20 PM
> To: poros <poros@redhat.com>
> Cc: Drewek, Wojciech <wojciech.drewek@intel.com>;
> netdev@vger.kernel.org; linux-kernel@vger.kernel.org;
> edumazet@google.com; Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
> horms@kernel.org; intel-wired-lan@lists.osuosl.org; kuba@kernel.org;
> pabeni@redhat.com; davem@davemloft.net
> Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix enabling RX VLAN filt=
ering
>=20
> On Mon, Mar 25, 2024 at 09:19:01PM +0100, Petr Oros wrote:
> > ice_port_vlan_on/off() was introduced in commit 2946204b3fa8 ("ice:
> > implement bridge port vlan"). But ice_port_vlan_on() incorrectly
> > assigns ena_rx_filtering to inner_vlan_ops in DVM mode.
> > This causes an error when rx_filtering cannot be enabled in legacy mode=
.
> >
> > Reproducer:
> >  echo 1 > /sys/class/net/$PF/device/sriov_numvfs
> >  ip link set $PF vf 0 spoofchk off trust on vlan 3
> > dmesg:
> >  ice 0000:41:00.0: failed to enable Rx VLAN filtering for VF 0 VSI 9
> > during VF rebuild, error -95
> >
> > Fixes: 2946204b3fa8 ("ice: implement bridge port vlan")
> > Signed-off-by: Petr Oros <poros@redhat.com>
> > ---
> >  .../ethernet/intel/ice/ice_vf_vsi_vlan_ops.c   | 18 ++++++++----------
> >  1 file changed, 8 insertions(+), 10 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice_vf_vsi_vlan_ops.c
> > b/drivers/net/ethernet/intel/ice/ice_vf_vsi_vlan_ops.c
> > index 80dc4bcdd3a41c..b3e1bdcb80f84d 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_vf_vsi_vlan_ops.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_vf_vsi_vlan_ops.c
> > @@ -26,24 +26,22 @@ static void ice_port_vlan_on(struct ice_vsi *vsi)
> >  	struct ice_vsi_vlan_ops *vlan_ops;
> >  	struct ice_pf *pf =3D vsi->back;
> >
> > -	if (ice_is_dvm_ena(&pf->hw)) {
> > -		vlan_ops =3D &vsi->outer_vlan_ops;
> > -
> > -		/* setup outer VLAN ops */
> > -		vlan_ops->set_port_vlan =3D ice_vsi_set_outer_port_vlan;
> > -		vlan_ops->clear_port_vlan =3D ice_vsi_clear_outer_port_vlan;
> > +	/* setup inner VLAN ops */
> > +	vlan_ops =3D &vsi->inner_vlan_ops;
> >
> > -		/* setup inner VLAN ops */
> > -		vlan_ops =3D &vsi->inner_vlan_ops;
> > +	if (ice_is_dvm_ena(&pf->hw)) {
> >  		vlan_ops->add_vlan =3D noop_vlan_arg;
> >  		vlan_ops->del_vlan =3D noop_vlan_arg;
> >  		vlan_ops->ena_stripping =3D ice_vsi_ena_inner_stripping;
> >  		vlan_ops->dis_stripping =3D ice_vsi_dis_inner_stripping;
> >  		vlan_ops->ena_insertion =3D ice_vsi_ena_inner_insertion;
> >  		vlan_ops->dis_insertion =3D ice_vsi_dis_inner_insertion;
> > -	} else {
> > -		vlan_ops =3D &vsi->inner_vlan_ops;
> >
> > +		/* setup outer VLAN ops */
> > +		vlan_ops =3D &vsi->outer_vlan_ops;
> > +		vlan_ops->set_port_vlan =3D ice_vsi_set_outer_port_vlan;
> > +		vlan_ops->clear_port_vlan =3D ice_vsi_clear_outer_port_vlan;
> > +	} else {
> >  		vlan_ops->set_port_vlan =3D ice_vsi_set_inner_port_vlan;
> >  		vlan_ops->clear_port_vlan =3D ice_vsi_clear_inner_port_vlan;
> >  	}
>=20
> Thanks for fixing it.
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>=20
> > --
> > 2.43.2
> >


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>



