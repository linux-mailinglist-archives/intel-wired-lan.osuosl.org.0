Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 89A9386D9A2
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Mar 2024 03:23:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C5D2E8238B;
	Fri,  1 Mar 2024 02:23:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RwzQj850xmxL; Fri,  1 Mar 2024 02:23:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0E9D682628
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709259795;
	bh=op1G0vqR/6BfW2Qy10+LogZxwSgMnh8m2pPLPf2R6Rw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Rw2SqLpDxfiBYj6vIZm0ohf/GLu93YzOZzH2C6HgSoUQaj8Vi5pzZSMXyHzYnA2Jr
	 tXW2Wx8DwsoKROP0sqGcnWuuUNK6/h2SJ3AhR69AYEdScbXbX9+Q8FEC+sfIyDdD5D
	 Dw9AgQxstnMU17cl2zlAadWGmQce6Zr+FBgQlJHRDjXaBImVNFqCKWqkwYBKSFm1sF
	 LlYYm+UL3Geayu900MCSyUllQp3tp6F2ty1xJ+Xpib6jIacpsPdNbANDT727QkJ/Hv
	 HbSuRZIms2ZKfKdxX8zLdQIAMrBueGHWdAyrxWt/dY/MLTIr/75McCVZro14GSUfz5
	 zF9Q1tL3SG9Cw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0E9D682628;
	Fri,  1 Mar 2024 02:23:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4ADAA1BF39A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 02:23:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 432E360F1B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 02:23:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pF0nHWb2WZ7j for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Mar 2024 02:23:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=chandanx.rout@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 514C360F12
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 514C360F12
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 514C360F12
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 02:23:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10999"; a="15215474"
X-IronPort-AV: E=Sophos;i="6.06,194,1705392000"; d="scan'208";a="15215474"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Feb 2024 18:23:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,194,1705392000"; d="scan'208";a="31227400"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Feb 2024 18:23:11 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 29 Feb 2024 18:23:10 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 29 Feb 2024 18:23:10 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 29 Feb 2024 18:23:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UUFgy22X3ykymsA74mpPgxcii9lgpNalBDPEbq+wnTZItrBfkk+2XIT/M4byh2q/ytzK+d7mXA+Yg7h25IedrBZf4//JiCKp5amo4j30pFsRcACryl6WCiBCUs8CGEeCd5BzZAau5zKgYPlwqsSbamcbqohvlgffe6WFVqEQPt0JNB8neGfJD0ZT1GapsmVaZjc8goVZ2zUsfrPOV8kF/PrYaLmg4Nb+GfWFmvNO+7HTFtA1OrBCOai4gl6V3njZVxqDdMjCxMxzcbA/mKXQ9ztPfIHdzdcfgPXpKL6BmtOf5AhFtuLSJw9wOfKWkjFqyFQOmJkr1F0ARxjq/WoRDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=op1G0vqR/6BfW2Qy10+LogZxwSgMnh8m2pPLPf2R6Rw=;
 b=Dh6xQCTZhStUYGY8BWV/TRsBHHCMrNjBBsOA0SVYSd6MCAdyo7F6bhU7iddK8lE+e1jjD3MeRTyUozejTk9qHFSHgr2gyk50/fIjGNZnmNO7adrUp5CgK2gSRRWwI0/SmPUxTrAYzWHDxy/7KBiV9TZWoPDVfiz7lJge6RUogxmgID46BAePcwwHnvKFnoUOlLZb0YYhTrLUi54wmwKw9VebSpt8jqYz+p5UnierkPrwj4hslmSuld57C+RiE2lkqFsh7O0pB+oLEtT8o8ym0FLDuwJ83MuMYuWl7VPgfTmt0PeSP7wkY2zFaOYp0mhT77FfbbUDw6vjHyd7yVn+0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH3PR11MB8313.namprd11.prod.outlook.com (2603:10b6:610:17c::15)
 by MW5PR11MB5810.namprd11.prod.outlook.com (2603:10b6:303:192::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.23; Fri, 1 Mar
 2024 02:23:08 +0000
Received: from CH3PR11MB8313.namprd11.prod.outlook.com
 ([fe80::d738:fa64:675d:8dbb]) by CH3PR11MB8313.namprd11.prod.outlook.com
 ([fe80::d738:fa64:675d:8dbb%7]) with mapi id 15.20.7316.037; Fri, 1 Mar 2024
 02:23:08 +0000
From: "Rout, ChandanX" <chandanx.rout@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 2/3] i40e: disable NAPI right
 after disabling irqs when handling xsk_pool
Thread-Index: AQHaZEZdODU5XssvX0e2YNR257030bEiNgcQ
Date: Fri, 1 Mar 2024 02:23:07 +0000
Message-ID: <CH3PR11MB8313DEB3A77E9341E86D8FC6EA5E2@CH3PR11MB8313.namprd11.prod.outlook.com>
References: <20240220214553.714243-1-maciej.fijalkowski@intel.com>
 <20240220214553.714243-3-maciej.fijalkowski@intel.com>
In-Reply-To: <20240220214553.714243-3-maciej.fijalkowski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH3PR11MB8313:EE_|MW5PR11MB5810:EE_
x-ms-office365-filtering-correlation-id: 323c9ed0-73b6-48eb-2e16-08dc39968895
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 76a+OjeILffoRhSDKCssHcgkJ7QlFWDkGYORJ8XSAuE6dFI8plCuixqfarf/v8QNT2S++s5lvinpA2NdIkgYKzUrKQXEzo920wbQHq2L7JwjUoh2C25YzR8EQvPTsttNH6ehZwaJ/f+DPOpsY4efC/ChMcvZ+KbRwvaroY6lAnAAO1p/wW3oASjSyrpOfuBNjDac8B1WY0ZHA54bRJeLBrp0hGX2HBtmlwzU1DnE5MuLnoKkNTDvcobVg9Hw2BSL8gNH0604GRTpVRlzEkoJRQyFvsO6JHAjG7DcptC0rs2+4MjGDbqsqXJfKlxEaIv5OBo9JAP7iBd3ce2rsCubR0hXoIFxvNF/c9u8goTgRgx9CKMR2ddN8H6fv3FpjDPufXCmXeiRjNeXPE8dAiFVhpaxjLFBtjrPT1RSbssAaT5Skd7HiCAm368xRg91xcncNvzBsOPvP+TRR+4q6UnMWHaZ8U5d/9AAAN8olWsoPoHE7DKhIW2QFL6Q6dJDqggiVPcVjAAcGQ7jivNngdskxoDuCKp38CMuWbDMvn/69AiqR3sAqx4yw84Vy5mh7128jCtwsVi9zJLoFeEYUKYqmikrl8t1mxvCwoUZ8AUP5YbVRBOZad7hNpO9Px6w8+t3yPPT8xbVyyg88UNSm5T5G2xMpkqDIiZo4prZ3Rmd07RNhPHz+AHO7SbUye4b+bTac6fA6oHnvUlM8jc3CLj7xwPlXFB4N9Oajo0K3TJ1/Jc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8313.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?pJ77fza5BuwhEqfn5GmDth3qcv8HBsnx/kSyHeMycivr3gZn+fN2khzHECR8?=
 =?us-ascii?Q?yyqDSIuuLRhsFeVSci4PqyoKb6TuXAxRs7mA5QF1smKVXaz0rTaRH9HFqw+G?=
 =?us-ascii?Q?5omXEU+GgG4OSfuAvjGGTv7fmEvGhSfgOHED8nI+DN1SsnbrVSXrCmgAAqwr?=
 =?us-ascii?Q?ByaBuQIZuBMuxBFSlr6OaUNb7KH7YHCjHmA+WNWlQaS/diEhDlJbMJG3Yf0p?=
 =?us-ascii?Q?StYJT6gdqCJjft7wgh+TgxdFH2BWCKsxAPgqknjHs2P2LMQA98QqXsnShxDY?=
 =?us-ascii?Q?QguaF1HckyfKuvAv0cBT+0U8ROytuIkuHc5tKxnAkFQxs3h7+/fLmQbq+oy5?=
 =?us-ascii?Q?jEjhAf/2QZ7G6oPkLGe45aO0U4xnVjp1N+4vIuDYESirneHCU++kVyalGEIt?=
 =?us-ascii?Q?i+UmwAQQU4ucnCzb+0YEfwECLXecqC0tjuVH2V0DIVglNa3daA+76uIb0h4F?=
 =?us-ascii?Q?LtllL1Ba2AAc6v1h5qq2mUmu8ZW2MGSdOB/E591o9Qyz0hYz7mtfV1UnwTg9?=
 =?us-ascii?Q?BYGhV8/LBA3M27DJ7MvRuKbzSYc/3XWyaYw7QstSmv1oQ4At2aabEq+6mCJR?=
 =?us-ascii?Q?rayTB4qIWi+RBf1jL0qIDwItveWStCJEqA8Ag8y7Tfkvg0VWjPARlgdxQupV?=
 =?us-ascii?Q?x59ssnJXm0FfEqkXyH9KQhkpfunzOOfpEq8zKiMzIpNyA9aaxK9pzbxjiN6+?=
 =?us-ascii?Q?czCptF72ktJ6s9hr4itmck9+SNbT6Dt4Pc9JEzCGF0AauwfdCoCxhkqNvDL9?=
 =?us-ascii?Q?F276GjTK/JnGDKmKt1BBstYTe08OFEWm+qQ87jGEJg7gVlOUPowpDAZXKc/o?=
 =?us-ascii?Q?udB6ScjGRakKdgraPrWoycQCEDtfMvKRPbFbQK7IKkJR9fdFMvXmy5IbCgLp?=
 =?us-ascii?Q?Sw3tFiIKP9+TIDAV1EeOl+Q6GpVvrj3tiuDUMaQC36FOkMzC7csRRAF4+ELe?=
 =?us-ascii?Q?DZTcT/qEfdLyiRF3h4YTzKiBck60qafF3akzbpkK2AeDOAprp1M8vtDPAuxZ?=
 =?us-ascii?Q?YteZHt8z3JGfQiaTv4CTyAN6PymNvISjva6QUWlyGv+vNDkInemsDTo+CLkQ?=
 =?us-ascii?Q?bMU2Qrne0X0dbsFsgLRcJJHKMqDMXPZs3ZHxNx7Bzh7UNjDtiLx/Yj7I3GvO?=
 =?us-ascii?Q?ih6BuuWOUI6Hm61nyfKGQWdtTqxc4+32QixdOTqrevQDR45zQe7CF7zFpJ40?=
 =?us-ascii?Q?s2xghwhs4iwDZCqHQ/pHdoZFzA4z1Hhun4dimwMk6h6VdRZRR/2ksSioCJxg?=
 =?us-ascii?Q?iW9JP002Kr+OUsPH0ODOhLkpVaC7fDGVNPXdUJcNZH7Q5/Tbj2m3gqb6cMru?=
 =?us-ascii?Q?iaOoR+D8h+jyMF3oKnAIFbvTGKVxr0sFMEhj5zl5Kc/Ku+SggCJzs1n3UXfT?=
 =?us-ascii?Q?Px6p87MXirzdue+LrgFQsfQEgyHvYgadi4/4exWuSbHYTKIX+h4ouPFV5Y+4?=
 =?us-ascii?Q?nRMjTesRTnFORoHHXMQg1b+gxh3+8uoaWtDnNL87dQ8tNgOyIsqd4SfHGjLS?=
 =?us-ascii?Q?4DR2IbCly9kC640emTUq2Zj3RNpUjwQ0TaBDLj2lFiSEChFdJ92ZvCOGfAX0?=
 =?us-ascii?Q?Pi33a17twOOXtlknYqFYmgRnzS2LBKiwlfXibtE/?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8313.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 323c9ed0-73b6-48eb-2e16-08dc39968895
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Mar 2024 02:23:07.8998 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: O+Wa4nPzm60Ma9lyOQBHXVXdAMTXme1ng0d93+bUvIQYpcPL3ZjISXdN2chC12fkYVD0ZosHyow7/llzkkwLpw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5810
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709259793; x=1740795793;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=op1G0vqR/6BfW2Qy10+LogZxwSgMnh8m2pPLPf2R6Rw=;
 b=JryiBxbtcmubX7SN3iIDWQAcm87/A7AiohmsgXWZiZjTqPbMkJtkGOTs
 aHOUn7dEbc70Adw/2Gd/6GfJTbvmmNGkSfGu0EBjgm4Z82gW0gYuSzSfZ
 7VHjKpp7mtNYIl0g88QVaePNOh+J/8oSUm6CHmGYUjukL8TQarst5XE8X
 2tTXFCjQh18r/3hkBYCbqaa7elehbzaKBnhEdfJVbXuUXvyxXSgLuOhbu
 8SWINSCW/ks401n0v+cyQSIfWfFIFfBPHK8PoKicBCLNiLI+g4OKpHlQz
 tr2lQiP6VAqh5MEuDlFz9ZlwXbUYOGS3NYY+voOaX3yBHBNLiLs9JBKv+
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JryiBxbt
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 2/3] i40e: disable NAPI right
 after disabling irqs when handling xsk_pool
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Pandey,
 Atul" <atul.pandey@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Nagraj,
 Shravan" <shravan.nagraj@intel.com>, "Kuruvinakunnel,
 George" <george.kuruvinakunnel@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Fijalkowski, Maciej
>Sent: Wednesday, February 21, 2024 3:16 AM
>To: intel-wired-lan@lists.osuosl.org
>Cc: netdev@vger.kernel.org; Fijalkowski, Maciej
><maciej.fijalkowski@intel.com>; Nguyen, Anthony L
><anthony.l.nguyen@intel.com>; Karlsson, Magnus
><magnus.karlsson@intel.com>
>Subject: [Intel-wired-lan] [PATCH iwl-net 2/3] i40e: disable NAPI right af=
ter
>disabling irqs when handling xsk_pool
>
>Disable NAPI before shutting down queues that this particular NAPI contain=
s so
>that the order of actions in i40e_queue_pair_disable() mirrors what we do =
in
>i40e_queue_pair_enable().
>
>Fixes: 123cecd427b6 ("i40e: added queue pair disable/enable functions")
>Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
>---
> drivers/net/ethernet/intel/i40e/i40e_main.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>

Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com> (A Contingent Worke=
r at Intel)
