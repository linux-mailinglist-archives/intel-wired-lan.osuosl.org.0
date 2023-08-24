Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B14278765A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Aug 2023 19:04:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7A60280BB0;
	Thu, 24 Aug 2023 17:04:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7A60280BB0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692896650;
	bh=ApID8QJ5/uVoUnlDicWtAaEEYk5qqtr3xnBDuPGTkSY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nQHFTApKPullgD+3mtZ2OzsaTl2y2M1fjy1P3JbBOaxWMMPasNkjQwxH98sl9Cls7
	 cJh48TjRPS4F80qTOZr4iRykjGcmorrO5zavmBJKEqUs9LWSlGSTMe/d4Abf56qFO5
	 gVVjGMgaycZsgzs6KqFfu/ZGGDWV7g89638JEfaQJWjyvpgixWBjZdJzO6fyJ4PG7C
	 i3nnkOY8vawTZf3FmpWDXYdUUF4/Y7VrBS0cocwu/6UmwkwMr5DmWCSSTU2UoVo870
	 1YKoJPpoQOoQYxUiICVc8wpjnieZoBGbCbFvZMa0E+LbNtM7j90HXUJ9H6r3G4aloT
	 ebI2ZatI0sjZg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YyCimthRTsHH; Thu, 24 Aug 2023 17:04:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 70C6981301;
	Thu, 24 Aug 2023 17:04:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 70C6981301
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BF1671BF85D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 17:04:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A2BB060BFD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 17:04:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A2BB060BFD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9KdPLsLzcU-2 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Aug 2023 17:04:03 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9ADBA60B99
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 17:04:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9ADBA60B99
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="405501063"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="405501063"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 10:02:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="910973261"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="910973261"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP; 24 Aug 2023 10:01:51 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 10:01:49 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 24 Aug 2023 10:01:49 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 24 Aug 2023 10:01:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iRc4pFyEMq4tT8IxuAs24nubHrPxIf3xTLKXaTy3t4K8vg7V+JU+EFYUWbSTcK92UbNjEFtat1WH4L2bHKwSzxeBlXDr4stHiVhL4B2Mf5Yckk5kO6nGl9E4jK9vE1e5CTb97jNs5yFxRTrSVTtBnfsC8XYX2w6SkhfXvlY2Ofw5X0A8uNJjeYYlQpRF3bYlugEHU2A3So7A1oJAnRf6daNDxGKk+EhhkbIuNEAYWWBqO+GOgSUTMwFgZd+XXPPAQWlf79S1xjvk/IQQe7e0oRuJRnHq0PgkBgSj4XiObgffignFCGNLchrHeTy5/V2VTfJqnaaLXD6R1qXMOmy0rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GdTpiCnV1CN31sK+Iaqin3P2qUlK3RnC6GRC4vNd+z4=;
 b=cp8ypVIosReag7fgLLiT3MCrLv1plqJulcelgEbKINETmQEXYCpTavXBF3MHwpK/5jl8bEw2JraAda5ysSMNqeSdjdgDlU+UYjjvd43idWnZUi6O4QMrGo9qVROZg8Ddoi/9V1T7NdhqK4ZFV6iAIqCBOCxhI8Ycssqph2MwJcu+vJZWdcdLgIXo8XewyKdfFBXTGh2VWVrXHfXyO4kvir77UZ0LaEFM/M+g/sSvLCylc56M4YtkFvuXulD2j7xqIZ7xDyxAiVHoRKEIuvcRDxYmfynZ/+K8v+ocOXfFpLZiM6GyBjov4TX3ZBV93Kh+QLC5XTYrBjX+29FyRpLPnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5354.namprd11.prod.outlook.com (2603:10b6:408:11b::7)
 by SJ0PR11MB4910.namprd11.prod.outlook.com (2603:10b6:a03:2d7::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.26; Thu, 24 Aug
 2023 17:01:46 +0000
Received: from BN9PR11MB5354.namprd11.prod.outlook.com
 ([fe80::cc5:755c:8f90:184b]) by BN9PR11MB5354.namprd11.prod.outlook.com
 ([fe80::cc5:755c:8f90:184b%4]) with mapi id 15.20.6699.027; Thu, 24 Aug 2023
 17:01:46 +0000
From: "Arland, ArpanaX" <arpanax.arland@intel.com>
To: "Tyl, RadoslawX" <radoslawx.tyl@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v3] igb: set max size RX buffer
 when store bad packet is enabled
Thread-Index: AQHZ1MOF+CO9AwiPJEeSNJsEzxQTK6/5bzwg
Date: Thu, 24 Aug 2023 17:01:45 +0000
Message-ID: <BN9PR11MB535437D42384975B05AC9223801DA@BN9PR11MB5354.namprd11.prod.outlook.com>
References: <20230822063938.195187-1-radoslawx.tyl@intel.com>
In-Reply-To: <20230822063938.195187-1-radoslawx.tyl@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN9PR11MB5354:EE_|SJ0PR11MB4910:EE_
x-ms-office365-filtering-correlation-id: f5813a5a-9c12-45b6-4d85-08dba4c3cc84
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UFoSx5N2gm9NbXEYSSQCSlgIt2/pvcWvhw5thOFJKv7tQWJ0gTEW2PagO1gNFj1iyHzYq8AokMc5hmpBYe0tUeH3iVjYuaPjaOtTtyxNEcC4jP3bmPE7RfkgbZVGEb4fv+rd8L56N107NZDIQUpICwIDoOhXjxh+Pk7by+keBomTF04f1NZERMxtG5pBUIezGso2EZbyNFovxOwcHPoWouhYXpNAWSCPc9yJ3BH9X9JnRYTVwDRz3+IyTQEiW3O4RRKOpmUUoxxH465rHvDoFLXQUDZnfneLql9ngkZHWmPZUcxEUUXxoJZ4d6XdCtmOqaUqlNYlwDquwzvuhQqEftGfrcP5US951PJ2gUtd/qyGFraYIymzZeeqmhqwKOoq+5nL4FoMiHZi9VRnu2SsMCjXxYOTMxXoOWfxms5KUZMHQDarWBLB7WELdj6HMIa2ODab1UdPlinipTLwSEhiAIw2JAx8ou/hwLDFHpnoHELtpmCd0zEzmKaLrrOKKVIbSdPeP2Nuvnar4uBnUICDwBHzaVLNNzJI4Bv0cIZ7MtF9g+yKW5NoJ6Ortn1PDW10BWr0EiuxSm01bz+aqmNk0CmUVeb9ilzOIiKbP7r8Lt8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5354.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39860400002)(136003)(366004)(346002)(376002)(186009)(1800799009)(451199024)(7696005)(6506007)(38100700002)(71200400001)(9686003)(53546011)(83380400001)(122000001)(86362001)(38070700005)(33656002)(82960400001)(55016003)(26005)(2906002)(107886003)(64756008)(66556008)(316002)(76116006)(66446008)(4744005)(66476007)(41300700001)(110136005)(5660300002)(66946007)(8676002)(8936002)(52536014)(4326008)(478600001)(966005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?bsme/NQs9WxRWteKYeusS/ph3rZwQfdWcFoFYW5NLi6Cpg6vlQpL0FSsfK/1?=
 =?us-ascii?Q?IUTsAS3wQVPizE9qzQYpIgtQmjJhHaPUgb1VXgOoAA+/irukL36SGUR0WspQ?=
 =?us-ascii?Q?KfEuyCKkaIGHvEinG4GPlE9jdMenRjsKUvTbSJlwPgzsm9fJLhIvkDQqXqat?=
 =?us-ascii?Q?HfJlVGDktiPASsSQ4D5+jf+Z1f44IxuYsi/zKdAvY5mjF904U9FOXlRK3oni?=
 =?us-ascii?Q?CxngRFGsfPLHMEKiOIx2sd4no491/tRXYPMO6rUyHY2hzej2b5aGz70RWN6r?=
 =?us-ascii?Q?smMmjVQ/vd4UAWGY393ehDD+nNSRs4JS4ZcHUWrBeOwqnnaFQdeVW9sItYc/?=
 =?us-ascii?Q?3/drmCMXhSO1PqEm1s2/z0X42Q5sN8a4arvIuBr+wZkoXsvHkb/br+Rrm74K?=
 =?us-ascii?Q?PH+gv6NqaEpvwkEMaL7f6Rtv2Iz8X4T5xgtupNTdPI+/1HNzQCO9/WyfTs0d?=
 =?us-ascii?Q?HAvVq97LnRtY4D+7zvnu3z9HfeIS6b9a++RCYleeRd8geBhp2EK6TFW2NFuB?=
 =?us-ascii?Q?9yu1Nktf/veTovAF4XFlsTiwe+hD05xO+dnbIYxFe6/4v1y4/CWN09yO+9J/?=
 =?us-ascii?Q?80dqSqSdMWUC3+Cj1Q6Kfd2Mtw3LVSJqpT8P3yM7E/dDVrRtHnQ9n8WspX2V?=
 =?us-ascii?Q?r8zeaF9a4pbCN7QxPH07hhgxfTC2L65U0WRaQujXb6wGCddjMoVLap6zg/gu?=
 =?us-ascii?Q?nnapuWMl4dnsGzlCdR+lG2/1akhVIHRaC8Bi5o/LH3QKgUFMwuomMxRTZBuH?=
 =?us-ascii?Q?KKwihCmLQzRZ6O8xwXeCQOm+b2zJf01cLaY1tjJsGXZJ4yB3GrU3ez3cuxG2?=
 =?us-ascii?Q?y4ghCAOcdUHjJGayJwzNCsY8zwRDwyQTM/Jzi9Ee44Zu7QrOwTXXpJn289e9?=
 =?us-ascii?Q?KPl9F0VE/oRXvwMAuHgXS7ce1mjUyYOBmSL9QTZP7U1KnoUo2RE+tUa8bv3K?=
 =?us-ascii?Q?3tkKVSlFsu0zM0LRyTWr7f01g0dEZECxwNb2CPmaORT/1dVZQQz5L7adkb7r?=
 =?us-ascii?Q?AtkawOQC/MSWHozvI9s5zk6a0pX1Ahqzr4hHQKNBm772Wgcr3acDu08v1j4T?=
 =?us-ascii?Q?G13oltujubtaG+ty7K1LHoFzRTiy/en4/+DTtD+eBG/fNFh+rFmVTfssqNIe?=
 =?us-ascii?Q?EhEB9CvBV820hsyCftphXFxtKiXECDaScYuFny9cqo/KMPxSTwEllvnNF/cl?=
 =?us-ascii?Q?6JYBCmO2XcpEw+xLPAPP6gNBEtF/yyxWkfTROr/LVUZzUXC52xcXlHy5d17P?=
 =?us-ascii?Q?/DkqAveCLPvbcKHrazsJ4+LBFhBQpO6XTrre95SM5FQw2vLvIQaVA36L0PmZ?=
 =?us-ascii?Q?EbeS0510pkHAfk8vC7hFEF55olficCNF6NO7fAnHjGZMaYNjI8ylBleZ+/Br?=
 =?us-ascii?Q?tlJ1XnuT0ATyKq6GE6LpEVHaW3OfdbWVZuzO/6z7IGrxzGmcIyUJRdMZ/tL5?=
 =?us-ascii?Q?WJ+muuW+H3Vep7le8X+X2rbtDu6LiCXCJlu3Uy3uw9rm9cXeHKiSCxDvGZ75?=
 =?us-ascii?Q?pDhrwUVwSEuWGUNUneqT7TCyLQtxlyyhc05e988vUuWNaeYvY6LtDOGMPHaW?=
 =?us-ascii?Q?frhPHGGY7BNhMDOFJHRXG0x2+mm3dqFFRebPenFi?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5354.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f5813a5a-9c12-45b6-4d85-08dba4c3cc84
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2023 17:01:45.9301 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xZcQlp91EvE/ahNUhDuNAgTc7RZfHYJjZU36OH0rI+xwEpXcuqdZEoJ1OhtJDvpfxhJsx01YvtwwRQyacY3U29oigj4OlUEGvc+sPuGGZ0U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4910
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692896643; x=1724432643;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=W2xclned1x/8pGImf/8Tk2Bzzc0A0f+EePIzQrCR+MA=;
 b=fEZ8fHRgmzmknfG+uxuWuH+mp3U6JgWNW5InltRNKon6m+D0DkzGLD6L
 8neA12jJHqUAoec6rq5ytJ0BV9VIti57ROXw72DH3AnqzOB9Ee5yUpRHC
 tXn/hxfkcJcvZ2FYHPwLw1TXIQ78GtHmYf7hGNYG6BijpoLRU0ZvrJDgX
 SNYYsxcwnSnyMSbsOKQ3OQU1YkwdLNuP5BIwcfijRJOrXA3jfKgH69Whs
 1WmoNRBaETmEGprLdlH7QjCOpipHB7nqyVXnR5nu0xLxAw9QJRjxDQspG
 FfrFwBfhR8ufhsZHgmkM+mlti1LlAH2SjFuytiRITFDI2yY+fxTDs7uTz
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fEZ8fHRg
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] igb: set max size RX
 buffer when store bad packet is enabled
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
Cc: "Tyl, RadoslawX" <radoslawx.tyl@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Radoslaw Tyl
> Sent: Tuesday, August 22, 2023 12:10 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Tyl, RadoslawX <radoslawx.tyl@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v3] igb: set max size RX buffer when store bad packet is enabled
>
> Increase the RX buffer size to 3K when the SBP bit is on. The size of the RX buffer determines the number of pages allocated which may not be sufficient for receive frames larger than the set MTU size.
>
> Fixes: 89eaefb61dc9 ("igb: Support RX-ALL feature flag.")
> Signed-off-by: Radoslaw Tyl <radoslawx.tyl@intel.com>
> ---
> v2: fix lkm build warning
> v3: add new line
> ---
>  drivers/net/ethernet/intel/igb/igb_main.c | 11 +++++++----
>  1 file changed, 7 insertions(+), 4 deletions(-)
>

Tested-by: Arpana Arland <arpanax.arland@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
