Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 59A4D7F9A5C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Nov 2023 07:57:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D94EB81314;
	Mon, 27 Nov 2023 06:57:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D94EB81314
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701068239;
	bh=YgqKIzEYAYhHCap95QJuZGpFpLFgUuzuD4OtoxWbec0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wgh00YkeifHaDoz7LHHp8fENo2wkuFJ/GY0PRR/CGfGep1ljw6SqZ3Ec06HNwblhg
	 9KkQV3aIkUocTAh5XlVw11NUibiVB2ShA57MkmFcuHY4TtX8PWROJnLGj3UjMxSjiX
	 3Ro5BRSTA1k4IMHGeRvdJfj//JQ+KIDMZa6/8m/i5af/iM045hhHvYSYDNebEy1TMV
	 teVyf6EL4CYxgDf2fe+q0OsN/blyGIICiDQKPJOTNQiCpVT/ojvX+oYRmgAkr8FlzO
	 gPL0wcEq0wWNpIUy/3dKzx7HTe2/5XcEpZJ83Jetlre96Crkhhijgjjcyxk2H8ZD1W
	 whxvcwR+ni5Dw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w-sg-iUaq3Z6; Mon, 27 Nov 2023 06:57:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9673C812AC;
	Mon, 27 Nov 2023 06:57:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9673C812AC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8B9CA1BF41B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Nov 2023 06:57:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5D3EC40169
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Nov 2023 06:57:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5D3EC40169
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zQmP3iZ6K9SW for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Nov 2023 06:57:12 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4A1ED400AB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Nov 2023 06:57:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4A1ED400AB
X-IronPort-AV: E=McAfee;i="6600,9927,10906"; a="389793184"
X-IronPort-AV: E=Sophos;i="6.04,230,1695711600"; d="scan'208";a="389793184"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2023 22:57:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10906"; a="1099668208"
X-IronPort-AV: E=Sophos;i="6.04,230,1695711600"; d="scan'208";a="1099668208"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Nov 2023 22:57:11 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Sun, 26 Nov 2023 22:57:10 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Sun, 26 Nov 2023 22:57:10 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Sun, 26 Nov 2023 22:57:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aytpXRiR9i+bxD6Ve+Mgoml8SMIzmYmqn4qQ5EsPt6NZnbmes3TTIQVyG/U8Zf6oP12qXthaujU/u+ySEpxw3t0XqBCbPt2WZvPDvP3g8rrV+aiC2/JbAU617wDYyPkw80+jqupHk5zkfi9ueaKp3+ipbwep1SDJXHlERoHfMuh4kzUQsVnoielV3E5/88dR8MuRsj9TTC7PvrrynIb6ozEhrzRjzeNkLcN4+kGx8BcBg2QdXWj8n96iGZfrcCgeJi3wEXm63y1El8vpzDBwPnBbBlszcEspYtr4Z4W6xMkIP3ts4StAU1cDNsBjk7TgMEDbPSplqfbBtnU2NmttEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NGirulcJZaA9Ywq+E4O+pMg2qm65l/ydZGmN0JPAu1Q=;
 b=mhwLbGz50mOHq5IEtu3lAPdzd/QjmKGN0qKxDEigykWnjSjD0B/JeaGTT2jATg6JPtlJsXIvNFV8wIb6QI97Bz5/ckekA+PQSX2QTWH3Nv2N47mW9r6jil5Z6Dwn7IrKdoRboLWOGha4PUASo/IThCFrBdL7v63ux/XrU0nUnYVPL43NCEOxVOxUnSarImATQQU8Ry1o2PNlpztoViZNpqqmnqNc0RHQcoubbncv2T/SEtpNY6At7rdAykOPQBbOOMOO/PgpluTR3yVRnwzcHE8NlBJUsv3MuE2CM77YzSxkugWFo54xAntAs7ZGZ/3SeIqIeBaCWlRU1HST2M8B7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by PH7PR11MB6857.namprd11.prod.outlook.com (2603:10b6:510:1ed::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.27; Mon, 27 Nov
 2023 06:57:06 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::81de:abda:8d25:dff0]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::81de:abda:8d25:dff0%3]) with mapi id 15.20.7025.022; Mon, 27 Nov 2023
 06:57:06 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: "Ertman, David M" <david.m.ertman@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v3] ice: Fix VF Reset paths
 when interface in a failed over aggregate
Thread-Index: AQHaGaL8Vs9VR+l6U0aBlMczMjP0lLCNynyA
Date: Mon, 27 Nov 2023 06:57:06 +0000
Message-ID: <PH0PR11MB501330FE2887D292B2C7A45296BDA@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20231117221234.2004841-1-david.m.ertman@intel.com>
In-Reply-To: <20231117221234.2004841-1-david.m.ertman@intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|PH7PR11MB6857:EE_
x-ms-office365-filtering-correlation-id: f4c27f17-d012-41ba-88a4-08dbef16116f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: a/TkBVEaJ80Rwg8er1YxD6Yk+oclFC6zkKFDduprsvA42F1i0MCDErER/iH1Bh4hyvtJwzgXMh68NbvsuFBXP9DjzVXr4SJZ+bF7McKhtV+Nu2bbUDIHsY5fi/cl/KXPoZ4cJUIjKQFRdGYPu44NJzhtdDzWbD3dMT6J5uEhqD1yr5znzniujEPSd8S4MV6bWTY9B4rl56DbAHKxYjQWq2jhjn/OSEhSv4/VRGKIy4uuzM7wI4INHpcE3+Xb17nEO3xT+rKz70RJ2qwuglFm695kAdz8ozHQJuHC4OmVV1HFGSh3tih9AIjVnvlB2dy/+517JALC6bKPsS1ECh+UA48Fl10OmeMRS5Cixq33bLP2SeGDpTOu+ipqKw6JaCeF+qlIHinjUZKkPb4S5ePEqXgRZMbcJwV1kGKnG7NgUTN8JL58sRiNkX8HcqMl3J14zHI7vV+sTX1o6LDc6/MZlckgqOWR+8TtskBSEh8Je0sxDgSssRzIjgXw3VtkTMCArcGygNpykKmLU0sYnnpKRJBupEtLMj6PZzthXtwXe4jLSez5kHulMRfAK3Ap8rRwDFWaCbX3iULTzskuUJtMH4FtGA8ZdCLTN+JWiAnCx7d2K/M2aQ4UAjR1Zg7ZYiWT
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(346002)(39860400002)(366004)(376002)(230922051799003)(186009)(64100799003)(451199024)(1800799012)(86362001)(82960400001)(38100700002)(122000001)(38070700009)(33656002)(478600001)(66556008)(66476007)(316002)(64756008)(76116006)(66946007)(110136005)(66446008)(26005)(55016003)(6506007)(7696005)(71200400001)(53546011)(9686003)(5660300002)(2906002)(41300700001)(8936002)(8676002)(52536014)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?V7UEz0mr5FeVGYKcPRN/g6XZaPXhYXEj2p48r9r6i0x9KPkoksIiZIDWWmJV?=
 =?us-ascii?Q?68vmTjVt+kUI9L5PxFIKBwKih6+NDGyaRDV9gkVSrtyhIQCBE/v9t1KZAx6O?=
 =?us-ascii?Q?GGVqFNECcHNe6sxXA07Hlv8Cg3FuBy6E8W0CVqBvgdhhkuI47jCQpHHYLUOA?=
 =?us-ascii?Q?v4hLYXv1KQm3e8C+MLPgEyTtE6+8ZlN0qSqTDWpNjh4zfNzo6w4hBqTsgDCV?=
 =?us-ascii?Q?NT/U9CU+pNr/jn60Iyw7OcDlfHBE2pPm4cYSOKrypncpvNlgWs2vhiWUsBfO?=
 =?us-ascii?Q?vkCVW4IZjqotuZBhrR4fq18pux4h7/lkS7I+1eJXq7AyeL/2U2WQ0okMOqJu?=
 =?us-ascii?Q?TmIpKHdO8ZWiyUYyYiqZytTgYL7yTgWrUA0xPiYsVHOrYMocAd8efXoOUTdP?=
 =?us-ascii?Q?s3mawrKXzx4Zwlbpt1qUUipgO9R9MbFdcjZ4qYok4AWi2dAvcfZ8ytmznBh0?=
 =?us-ascii?Q?2xvmEeYmJhyDTmZpcnzYUyUe/Z9ALlBVcTqF4WrYkVAbwApP5AESZZuAlV69?=
 =?us-ascii?Q?lsOQN8QwuQQyHnjhKgWe25VKIFEMkeggefWJBn5uJzHMrG54B0S8pYiKIgzb?=
 =?us-ascii?Q?3N8oDFG3am+8x6cuD1zkaD1sRI5OS6ginymocTCUD2Cm5Dx6HMU3TLN2eKqo?=
 =?us-ascii?Q?KhiW6ktbagKkfvoxA2idnSLrfBjdacHo3K3wTdtQ/YMgkBoLQ9edtFHShX/h?=
 =?us-ascii?Q?NV7b9jjMJ4v4oto3kQyIupv1hggfaHb8ZdepnLMzykVqCRbg0oOupxr49BuE?=
 =?us-ascii?Q?JDI7fSg8uwT5EQHMVqSK+a89AupSa5gqCT0Jh/XBoqepmsp4SxWsaEma797K?=
 =?us-ascii?Q?ce7bECpEMaSJr/atmcCokGQNmf04ZT0Y52b9IzJ115p/ymMLwhOiss2m4Pxl?=
 =?us-ascii?Q?yC6DAQ7v7ByX8y14QoDYSWxD/dsO/Ajp2zMxrHCmRU//OpyMCyQWOzfoQI3s?=
 =?us-ascii?Q?/wpRkxf7wVQYmmXF23UMGRfPQT2lFuN0EOFNzIqJ6v1rXxjz/UGQtBfKVeuo?=
 =?us-ascii?Q?Gk76YqfdJ2o4cGht7h3ZAHWTiRVddSK1mOze/J5JnSoEsxGTrIfJdnD0aI+H?=
 =?us-ascii?Q?3Dkk+Wjj8hRrK9jm7fFLco+OBhyTnsu8LHtYF/hNZZ0lC+/+A9OQp6T89m9Q?=
 =?us-ascii?Q?Iq2ROy8ZiXpFjVZTFYu6HhnozvchbPtaCOCPkmT8q4dS57b2W3XQxzO8bEB8?=
 =?us-ascii?Q?f0Y96U2gpVaKUdGvl5o8W8xoOie8tLUDO8WtH4NLLhyrtRfQyA8aZzzyQhtd?=
 =?us-ascii?Q?o+KEiSMfuvTxTa0nvifwlOg+2X57jmEwpx8u+bcUKMF+jlLm308BekMD1f6y?=
 =?us-ascii?Q?cHUCz6FJ3dW9/4O2L3M+49iaY2QugqJ0orfeaygB8lKo7sA3jowvKVQzW57x?=
 =?us-ascii?Q?8wpkdL7HK/Y/nGJje8vT1Oa9R9H9wwQEUXj+iI0iyNqBwbkzZOZe8ZM6MEcR?=
 =?us-ascii?Q?is8uRmLo3k9Hd4WNIs5X2BegeolonpmsY3LNdG3aNqrW2OJblRmzuY6wdVZu?=
 =?us-ascii?Q?ZcYE7t/6psZbu/H4/YYPLRtOSQB5W/7+yTkA8JZVxLgYTD2NbHHL2wZtkbw2?=
 =?us-ascii?Q?GuxkwWUBzy8IsYmE1uMGcsKaBFj9VwBno6fB9kHzohqzAet7p+SU9JeT28KC?=
 =?us-ascii?Q?7g=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f4c27f17-d012-41ba-88a4-08dbef16116f
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Nov 2023 06:57:06.3485 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RfKpYuqZZEq0nukA+3JGU6GGVz2j5iifnWjgfVOGONCTbiKcaycT4dqulDnU6I2ujWYK0pwQfsTmUA75QLZNqgYm41C41nSU1yDniZ+iea8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6857
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701068232; x=1732604232;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=iFuDMVffI34Ks8FkOyoa3yTf6UE6AfVVVaAISb04QxM=;
 b=J0cHj6i3DZeeBxN3xKtrZpqD919TD6ctFI+eTvzAKmS+DbleApVkDWSt
 er+yQ1yu8wwoiNd+qcPRg2PYZoMewFdeT+k117qB/mjYEvyt4iRiwqswJ
 rGXCl9d39RizeDq/EkPeP+r5OxYn8ujB7WGTFC8SX3ipGi4ekv/MO+3Ei
 Dqd25gGBczy6JiBSdEz8YQSKRd2cuLmFQZmSrmkw3nXeuSNk8YehSZZ/D
 zaqrxtushCXVWftVR4XDucmUxEycCE1cR6sVV0tA8aopF6mauZlDLYNA5
 6QiWyMLJAMWjVS2G63z24nV7Y9eZE6iijrhu/oqemsMAT/YvLFuAdNmzj
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=J0cHj6i3
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] ice: Fix VF Reset paths
 when interface in a failed over aggregate
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
> Dave Ertman
> Sent: Saturday, November 18, 2023 3:43 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH iwl-net v3] ice: Fix VF Reset paths when
> interface in a failed over aggregate
> 
> There is an error when an interface has the following conditions:
> - PF is in an aggregate (bond)
> - PF has VFs created on it
> - bond is in a state where it is failed-over to the secondary interface
> - A VF reset is issued on one or more of those VFs
> 
> The issue is generated by the originating PF trying to rebuild or reconfigure
> the VF resources.  Since the bond is failed over to the secondary interface the
> queue contexts are in a modified state.
> 
> To fix this issue, have the originating interface reclaim its resources prior to
> the tear-down and rebuild or reconfigure.  Then after the process is
> complete, move the resources back to the currently active interface.
> 
> There are multiple paths that can be used depending on what triggered the
> event, so create a helper function to move the queues and use paired calls to
> the helper (back to origin, process, then move back to active interface) under
> the same lag_mutex lock.
> 
> Fixes: 1e0f9881ef79 ("ice: Flesh out implementation of support for SRIOV on
> bonded interface")
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lag.c      | 122 +++++++++++-------
>  drivers/net/ethernet/intel/ice/ice_lag.h      |   1 +
>  drivers/net/ethernet/intel/ice/ice_vf_lib.c   |  20 +++
>  drivers/net/ethernet/intel/ice/ice_virtchnl.c |  25 ++++
>  4 files changed, 118 insertions(+), 50 deletions(-)
> 
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
