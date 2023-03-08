Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E22AC6B0BA9
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Mar 2023 15:42:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 69A8240C9F;
	Wed,  8 Mar 2023 14:42:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 69A8240C9F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678286573;
	bh=d1sJj2ps/b50WEGtT8iTKQqTLrAqeCY2LOm9FOpYTHg=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=j69eUD8RDU6tE7VoDiTMw5E1wsg6BjLPVRodksO69EGlbDb+KbX6YpbeUE4VOyKfi
	 x21jKiYRakZLxBjzlYeId1Bbqac4vPy4q9CViayCvg1UOt31/V4vpImpoOwWoes6Xc
	 YOauJhZ+6pncgVw3n/p0GI69uVoAsZhOANPbjtwKDfQjZjr+O6cXlREO9lfy9zaBte
	 wZiih7YhrBGj7MQBGyu/lGbAwar85ci3y+ngjhLXoWpcBcZZmRAsIMv8Klg4mKjlH+
	 7BLYPnEGO3Bkqyw+FlEaSoxZtT4vQCb+17c0h12Kidc9/LpAUxsDNZRjDCHYbhs9Wf
	 JRgEMuNwxwAJw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0wuDFf499dcy; Wed,  8 Mar 2023 14:42:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5997D40C0F;
	Wed,  8 Mar 2023 14:42:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5997D40C0F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BF64D1BF32D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Mar 2023 14:42:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A51EC80EC2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Mar 2023 14:42:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A51EC80EC2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1Ru9xu1NeLAV for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Mar 2023 14:42:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 04A4580EBB
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 04A4580EBB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Mar 2023 14:42:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="422436962"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="422436962"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 06:42:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="851109536"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="851109536"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga005.jf.intel.com with ESMTP; 08 Mar 2023 06:42:43 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 8 Mar 2023 06:42:43 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Wed, 8 Mar 2023 06:42:43 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Wed, 8 Mar 2023 06:42:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LjAtbj984Iv0fJMIqndtCc4zvmJa6DMKxoXoHlKuMUyv3Y8pnTRyJY+D2IEGZzesPv11ShqntjM7s8pGEMy3Q4uwMqHnFJkK+uYconx+V+6II8G03JZTM65BUBAEvttWyjTZ2crUAXPkME16nZW5Og5HbUQJWtOtZWXIh0cWTadiiusgzX4lPZUSOdnSpRyu9bc00Ej/Ukb2p/HjlNZMUzdZljTq6HA0glAR9KLWPQJgZQbeB2Id61GA8qVXw2UuhXNoqGYo5sZI3pHKHvshpk7KvHpoNB8qqtgI9Fb469HyHl46EbXnajealr1SXC/raKD5kFROt2zBpWMXjFCWuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n4ie761uc5Y5AAntvcKXG934RsdU4eVHjaYWYkBaSMw=;
 b=dxHC6XBGi98VPMPpAG/IeTNhAJxu5TpMQgRthGUfW6yLHn0KaMqk+NmOk7QD0FN2ZliJYrDo3GdVk4PiaE3CunjVji8Gt7cPKwPJ1Tb3JPUenF+LwjbDruKeV0x8DCLnXjDCNClO+HjN5eD07pFsYNbnhJPsGlJXcocPeDygEJKed8vnxmtQbca6TsMbToahr0q5i6v+/k6KynTdIMWisAKFYin33qSyvRlBS2XMLCDEvcszB+zt6KxUclWc4uwKCehHk6YzKv0pCI12kZcaKb/8A0/37yQcLO27esihfVKPTnWaEcuTSws8tV4wAt3Z/RIIKNWYGH1hL113usX3VQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7364.namprd11.prod.outlook.com (2603:10b6:930:87::14)
 by DM6PR11MB4722.namprd11.prod.outlook.com (2603:10b6:5:2a7::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.29; Wed, 8 Mar
 2023 14:42:28 +0000
Received: from CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::6100:7667:c884:a26e]) by CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::6100:7667:c884:a26e%9]) with mapi id 15.20.6156.028; Wed, 8 Mar 2023
 14:42:28 +0000
From: "Szlosek, Marek" <marek.szlosek@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH] igb: Enable SR-IOV after reinit
Thread-Index: AQHY/lTL+2nbhboorU2HD75/EeE66q7xNXXQ
Date: Wed, 8 Mar 2023 14:42:28 +0000
Message-ID: <CY8PR11MB73644BF89D1D4674D4834606E6B49@CY8PR11MB7364.namprd11.prod.outlook.com>
References: <20221122092803.31083-1-akihiko.odaki@daynix.com>
In-Reply-To: <20221122092803.31083-1-akihiko.odaki@daynix.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7364:EE_|DM6PR11MB4722:EE_
x-ms-office365-filtering-correlation-id: 11e050d9-f484-4cb0-7912-08db1fe35742
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 55EnjGC/kjvPSnld2Y+XwtoSkZayG23d8rqLad+wRR/ssLBE8aqeJZi2N2wqfzJNQySsPTYGU9NZsGtCteNanbgJzrWDJDZsugtZ9I0LIdnONayc1fLMUTfHUZ/0uQE/lglO0f85zO3e+H4HmRbSuCoezZTgnlq7MIfQqPz+O4RqrIFzFgkZGmDutC5amrCwIn6YpDIZfLMJ9KP0muUJLGCs303SLJfjlDV15SZCDmiDjbrLqi+KzsU23Oh61zdKmKiwMlOwXeWqVR1kJy+NkxZz7Dbis3iMKgPZUwWbVBXLC2ejQ18QuROiFApuLcHghIBGX8GKH/puO9NIJH7or7Nztaz+gxFc4yLQVJhgC50T8to8cIRvMhpT8kn+E/fzE389M1syW+l4T6ujQ7ZRxMT9XQ3Nr4ngU8uG6lKJC34rSy9AcmuHZOMtfExNdnTxy9Mgbexbcr9IPK7vhIGqzmVUcfgoDFS9Q4QBg0j1jYkJOdrfQiFb0RPZHn22YgUTKssVECuBEBT4m8K1TXQ2xhkFvgLf46d9dYp9dIjHnIzM7SuGP6UtR9g0m+UCJXjYjrB6HK/06sNOSAqE1wCp5R00B/JBvMd/H7eRgyrdXsD7XR0WaOC/R7KchhEz2PRUYYoTAVQ+/jf29OQdj87t3cmy7OFL9QOS5EahVYOWOVeMzBdtA6fIjb+GBIxFUb+van1PieQDR2cc2dL7aXP42Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7364.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(376002)(346002)(366004)(136003)(39860400002)(451199018)(2906002)(38100700002)(186003)(82960400001)(9686003)(122000001)(55016003)(6506007)(38070700005)(26005)(66446008)(64756008)(76116006)(66946007)(33656002)(66556008)(6916009)(478600001)(52536014)(5660300002)(66476007)(8676002)(8936002)(316002)(71200400001)(41300700001)(86362001)(83380400001)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?t+3zWvlRiPMWvMXFP92xmb15bUiCVWgPcxp8K6LEPl1KYobIhRvU6zhsBT28?=
 =?us-ascii?Q?3uqMbCohOim6FBu2/xFIg0QvG/x3JXzhk2uYSJfQmyHEKnv03JPURgf2jLT0?=
 =?us-ascii?Q?NcqxjCMJ07+v3tItxrnYQQlIr4WAqifVhKRaPbPc06PapWuhNwUCK+gwIsXH?=
 =?us-ascii?Q?DcU8bD8TRjFwSPDktZx4tQHuTtZy9qizAaktmnlWNdkM92mTUmvV6b6lX3GS?=
 =?us-ascii?Q?CoedQ+SYYQKFVhxI736sIee1j4khAZs6O1/c44IB7hYgMx+bT/MVR3oupsYx?=
 =?us-ascii?Q?qkXIA8lZFHzGD6yhxr9PY1bWxG+6EQh59dT4a7GsciUaQXPXCICeNympkVRY?=
 =?us-ascii?Q?zKKc17md8i7r/BQrjDuEjxlA+lMJqZ4V+kmq+VdAGmTdDqqoeBFqpKMmfuQP?=
 =?us-ascii?Q?bwCijj0CM9yhhuIB2NJFyrRj9g0rRx6Kns3iG4m4pHeoMu9Y+esoupByHq4O?=
 =?us-ascii?Q?NyI6OxMYzCD6lALLi1e6yvirmK7hzL5YbC3/SNdMau3PFt8GNfK8NqyAq+ZO?=
 =?us-ascii?Q?CU7cMUbFhnXILTUc/yvlwlCrU5dHgXTpFqxDKqjUFBfEI3OK/h22GWRgYogW?=
 =?us-ascii?Q?DxjvrQdSaf9DyGkzWbao9Y4bsxnww7nM7ffAOXfHMhbVQfl2u1RsMJ36sJKi?=
 =?us-ascii?Q?dghHH4jyNI5XpPKNHNMXyGsBw01hMY6AVttRRjmJf4TeRM7ym31tCLY4TUCT?=
 =?us-ascii?Q?2zevrK4NyUSgl/fkLNKWbqnOlwEroSFgMoALlsfZ+WTC4+b7xr3VjNwgeJfx?=
 =?us-ascii?Q?dhmstiWsukMn/fvMhAeafBOpKhVE7A7NSIwSD4i08eznxpR9+7qvTU9isl6f?=
 =?us-ascii?Q?4BUDWcGfM6iffYX96zY1K6Qw3WVQQ4PekKbJVnhAJA7QGnYJZ7Q/Aotne5zd?=
 =?us-ascii?Q?uY8b5KDz+Sg3JbnuEvcHQJK8nONtARWTkn+AneXQCwPaVWEmbW4M64rAMIj6?=
 =?us-ascii?Q?QnSY/ArpCjqHvRHjxN+ut0iGxjuvvWXPf8FKVQ/4pOt/kAAZS/9rVelnpQvH?=
 =?us-ascii?Q?61X+1Qo8xv8EH9RjT7XbMnD/oBP36ODoX2/PY4z3s2To+aM61+VunrkuZLUk?=
 =?us-ascii?Q?MIi2dTX9GDeIk15QyQEZnRHHMzDbauzqRO6rjJLt7Y10+Rn53L82q1rtHNxY?=
 =?us-ascii?Q?0OnvJtyQObGXGvQGlQRNHa0OrYzYKBLJ3Z9lHgovZAxG8XHTplKYAy30e0uz?=
 =?us-ascii?Q?CooG9yUojtY1ZND8KTjc3MNL/eX4u/MtxbHdLBKCEcCebR8E0//ZS4HijIFK?=
 =?us-ascii?Q?kTldfCA11IU66UMm6wBDodUQijSW64+MblXYWGlxIu0HSS20FFBDJHH87jUE?=
 =?us-ascii?Q?xQVA5qv4jeHhnhpMKxvemYZe1ulr5F88Nr8ZhLLxYTsr33sxadIu8hze4sI3?=
 =?us-ascii?Q?L3h4w110/rc6xTLxOihEpnLoQP4HZ9p2fdV9LG5Zt6E8lfx+5m5Ks+mJh7QH?=
 =?us-ascii?Q?ocsdz8ipyifPQEHF+BZnuc7vNL+hjMqsGOyeOZ2RAJGEOyOwpwwvbSh70bPb?=
 =?us-ascii?Q?Xu+Nh7JKEjffLe+A7f7T+2gkqfKgjHpA1i8XHn9KJI+Odw7I28IO0zTYQUXK?=
 =?us-ascii?Q?sPdjqX6GNgTkhZ3/C0Hv1v40dG5TyUNEzJPUd6n1?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7364.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 11e050d9-f484-4cb0-7912-08db1fe35742
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Mar 2023 14:42:28.4599 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Qpg2nvAHK5KjNLJdTIxfWisvPTKLJMnmbORu3/P5Dz8Kq2MlODIlQroXJB6hVjz02wKtjE/720VV137MH0qnzw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4722
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678286563; x=1709822563;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=bsXLumZiAj0FlTCDCxK+NcsBWnGgUHMKhrmVtxTjFxU=;
 b=KnadBF/FuVqRaVhZ84jUx5QP+3dY77U6xkR8ImbF+ZcS9NHBjZ/Iz2aB
 jr/StVmxJ9p0rBWgUxVavQKR1D4YtjV9wdY9aKCWVxxE+Q81XpumMzfhD
 pAWPaMkEhNSuMxpf64OSHx/R95JKl1oyfRtokaYTCS+hf23GfYBh6ddb+
 ddlbAGGNPNyVaFOazOVjf7BmtHGLf77DkMWM+ExTjJoYWjfh7NZ8JOJQs
 6Px/nyKG5RYgvOAChMpegefJD+IS9xzLqUAqdcqun0vyU56XteCNpcFl3
 eNE6fl7UXZTFz5rq3LUHKuOHQ6dUohdxM59Xzz5/Sfzxp4HnlqYnX+o5R
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KnadBF/F
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] igb: Enable SR-IOV after reinit
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
> Akihiko Odaki
> Sent: wtorek, 22 listopada 2022 10:28
> Cc: netdev@vger.kernel.org; linux-kernel@vger.kernel.org; Yuri Benditovich
> <yuri.benditovich@daynix.com>; Eric Dumazet <edumazet@google.com>;
> Jakub Kicinski <kuba@kernel.org>; Yan Vugenfirer <yan@daynix.com>; intel-
> wired-lan@lists.osuosl.org; Paolo Abeni <pabeni@redhat.com>; David S.
> Miller <davem@davemloft.net>
> Subject: [Intel-wired-lan] [PATCH] igb: Enable SR-IOV after reinit
> 
> Enabling SR-IOV causes the virtual functions to make requests to the PF via
> the mailbox. Notably, E1000_VF_RESET request will happen during the
> initialization of the VF. However, unless the reinit is done, the VMMB
> interrupt, which delivers mailbox interrupt from VF to PF will be kept masked
> and such requests will be silently ignored.
> 
> Enable SR-IOV at the very end of the procedure to configure the device for
> SR-IOV so that the PF is configured properly for SR-IOV when a VF is
> activated.
> 
> Fixes: fa44f2f185f7 ("igb: Enable SR-IOV configuration via PCI sysfs interface")
> Signed-off-by: Akihiko Odaki <akihiko.odaki@daynix.com>
> ---
>  drivers/net/ethernet/intel/igb/igb_main.c | 135 ++++++++++------------
>  1 file changed, 58 insertions(+), 77 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c
> b/drivers/net/ethernet/intel/igb/igb_main.c
> index cfe6bf6e2336..74694a27e35d 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c

Tested-by: Marek Szlosek <marek.szlosek@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
