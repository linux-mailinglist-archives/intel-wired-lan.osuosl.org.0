Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DF5A60414F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Oct 2022 12:42:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 77EEC6119C;
	Wed, 19 Oct 2022 10:42:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 77EEC6119C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666176142;
	bh=y5u6Fed5FfzT5ZnyOn6tU4cbxtS3amHLQqEQon3UEbo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FX9Gty6aoYzJ0bM9YquXJ7gMqBs/gabdHriCVbUUYou4+eFiRNzFn2BtdEpAzhTr7
	 8Z41jeehts2mcbdTvLNOuWCA68kKnki0zWUlHNFPm9dNfCumKlGkNEOaQetxX1ghM7
	 lN4Z6Q7s4i1Df8MTGLzEF5F3oBIrMhinyafp46a8zr/3SVQKLH1+zR8rQHUpQCLA2G
	 XwUlh+s6eKdm4ZKsb6sGzfUhGuVOvoSBd0RGrIDWmLoMefT41tCaRmyZLuE9VmB3OD
	 HZ6ozHboInWsVYhgxuq5S76CQjH9WUoi7Ros+uGilDu/84WvdGNptOdKUH8mLXc4C9
	 huazcASDG3k4A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Cb3ZZE-6bDu0; Wed, 19 Oct 2022 10:42:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4C6F4610E5;
	Wed, 19 Oct 2022 10:42:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4C6F4610E5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 330661BF285
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Oct 2022 10:42:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0D6E941BEE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Oct 2022 10:42:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0D6E941BEE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cNSo-J40g1Y7 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Oct 2022 10:42:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 80A4241BEA
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 80A4241BEA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Oct 2022 10:42:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="370591647"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; d="scan'208";a="370591647"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 03:42:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="718423214"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; d="scan'208";a="718423214"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by FMSMGA003.fm.intel.com with ESMTP; 19 Oct 2022 03:42:12 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 19 Oct 2022 03:42:12 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 19 Oct 2022 03:42:12 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 19 Oct 2022 03:42:12 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 19 Oct 2022 03:42:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RHM4LSKNV1oKnb1mz1EzzCNdpa6yVcsew8Irs2a+hClUTW1I/y7HvLLkV8+8Kx3Zh6Wbei0t8UADU/yMpG24dcWEPtVtkGTNVEjPPDZK1NiaBA2U3ZTnTX+niTZQyQtOs3APS3mFwhHv5mLbf0XBY+eIizMTig7tRCN26g8iAlR00/pE/QnZFOH8M/U+OvrTE1HvEFbfkGQ0TAJptnApbhMpgrhRGmHaCQgE8xCHe6nlAe52Echit21O096nySp3IB6VtW2LDIRgGjn/0SQErGk/R5ng6R7XyHnQDiKYYHIdCfqSlWZeJ6L93L/x8HsH5ANS341LutM2cXQwvR9xHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xsuNIItSCiGMLkZMjDs68LV0XCjA1sF90Vs45novMaU=;
 b=JriFhx1a68D8m/f+VYqu2mGMF7C7c+oZg1UK51UR/EDUiOeq0txYxhcwxB51wOFk1rvT11tO3sUMLwXGgsQwmGt1An5Pm3Qh+I/eTJN7vrY/7nIlbkiNjQDM/LS3Lb+OQesq7KoUnBFnX2RLeERvtrezMDWFrvhNQIOMjOnCmJlDenKKTjUl8GgNK0cinlqIdMgyF94WKOnTOA5Po3Z4Ec7hWGuKIAIS73RKewCG+mrCK2WBgE+VvWBWQ2PVF3AcQ5hPRnTczMaCWXVz8hhGQTQenxWgBQ6tdXcx1xUrMrDZBeadcg76xMQcFoJYHjWn2aSMVttrXS+20fA6t1ubxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 PH8PR11MB7143.namprd11.prod.outlook.com (2603:10b6:510:22d::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.29; Wed, 19 Oct
 2022 10:42:09 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::4270:554e:8096:6c55]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::4270:554e:8096:6c55%9]) with mapi id 15.20.5723.033; Wed, 19 Oct 2022
 10:42:08 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Maziarz, Kamil" <kamil.maziarz@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] iavf: Fix VF driver counting
 VLAN 0 filters
Thread-Index: AQHY36lm0BJCFW7YqU+0JArAJ5x2j64Vj4Hg
Date: Wed, 19 Oct 2022 10:42:08 +0000
Message-ID: <DM8PR11MB5621F22CC7F002A4C36D4A08AB2B9@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20221014084537.2578025-1-kamil.maziarz@intel.com>
In-Reply-To: <20221014084537.2578025-1-kamil.maziarz@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5621:EE_|PH8PR11MB7143:EE_
x-ms-office365-filtering-correlation-id: 16a21150-1a62-4f8d-db1a-08dab1be9286
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FI3UCMWthjkGOtuW00HAn0+Xo918aW8AlX2lKuFEprFQUgLY38Zv79dRIioOVuxA3Q5BaU5eow1zC/2NE3jlM3BBhyGELSA70YFc2EX5WcHg782DCCIAXbmkfqa1Su4f3iq6VAEn2TGhwjYsJJomQesWVlR6tnlQDtRnqe4u4+utp5sB0TI0XnTMVxxp9rDIEJMYaxymVxYv7ZxKbr6YeO7w3XiqGjKTlT23/iEfZ0yt50V+VT+clp7fmh09fdOje6Kn8rCu3OyM3wReyjy+Il2qhBV7egp8iSWQ+zxfXhLyuXMznFYHUTtCyVD0D3k/X4KL2uDriavgkg7lWwbbYEluhAaLMIPo3FadUc3zWAAmJs8SNDUOTpUb0CMwNVIso2pVruU3LjIB4yalIY97h4433YRP+xMAfob7KnqLtZX4tZL9mWa0UR6sKwpGECKu6wtMDxYDie5bWoys1F3iFNuSRt/8yd1QAqDBrk8jynAmLSYCdwDpoHA1q0LN6PjLSl9DFWyUG8Zj5CZ3w+DNvA09Bh84nxDAtjRiEcmeUVdXxlp3R4fFnCAOpqG16DcRvqcDA71z99any3CHsOyIl89AYhQlk/aE3fyFaME6DBErBW/td/bBFMwC2DSLiyyT/yHFY1w9bUnv8VRhEFpZnKpBazdJUaZT+sc0DwrXylFb5d++aFHATM13l9kLJQzTQCCwuSFr4ObzFL2ny/YW//OWOEGHB2+ZQ05AWQ6h5KIGt6gAqvBZAxLNNT7f3v7+PqIYh1g5X2TBYHB5KASC3Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(366004)(39860400002)(346002)(396003)(376002)(451199015)(26005)(107886003)(9686003)(122000001)(6506007)(4326008)(83380400001)(7696005)(186003)(2906002)(5660300002)(53546011)(55016003)(110136005)(66946007)(54906003)(316002)(71200400001)(8676002)(41300700001)(64756008)(66556008)(76116006)(8936002)(52536014)(478600001)(66476007)(66446008)(86362001)(33656002)(38070700005)(82960400001)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7ttc3QqFyRIvECpV8J5TGU78ER1uj8dkFrYzs/AdF64hw3dX658caz8pq+zU?=
 =?us-ascii?Q?6VBX5F0WUifyzRJ2pwhY1zVxymidVWKmttkCF5MkcpHKaiG4wyepkNj0eFUa?=
 =?us-ascii?Q?3XS/Wyr/D4Dj9wcWYvaecdZKGcg1hht+xAJa2casyGJyL96scX9suzS78Zwb?=
 =?us-ascii?Q?awSAF0CHYR17104J0+VHsl3MGUCrrWnxe+qQ5Ut74kWjPfzRMuVtpN54MFfG?=
 =?us-ascii?Q?sygiVVh0x4mVhq4d3LKbU7gZb+82UlrRH+dLzxp8UOp1WTzp88fS6dfhq64W?=
 =?us-ascii?Q?nh2175IHlyI0Ly81Qk0Z98qCJsoHDwsSOyGqqOsJyTxqVYQGPuOmNpwT9hoW?=
 =?us-ascii?Q?mx71V6QZFxbCRDjkjzI5bvyAADqidL7Wg42ZXC+/5YcLZ3tpg+OSK5GBnYai?=
 =?us-ascii?Q?vjGwc9mPiMXf6PWzZPhi7l0QqzqOVFt0TTBVl8ZrkR5xTHC3gpPokaGkQWiK?=
 =?us-ascii?Q?LHYrW+DZrK5wsZzD0CVyKxovkbN+pJj/HRLpqHbPtZN6cFj+QvCrWwTsC+3j?=
 =?us-ascii?Q?medJaUb83dNUPQm4kLvJHNaonLUhrHjo0Go0SpkLSLOTdFaqZxn5gjpBwqDg?=
 =?us-ascii?Q?sve5vnEVIaCwi2uIPRKTa1k6pPmamusCsjPTDOReAkU/JrfY7hiWsrR0FS3v?=
 =?us-ascii?Q?DSeQKJrDh/vRl49ojdhN3VrOAj/ZAI867oGC+lAhLdlc6GpUJRnfU9wMth5X?=
 =?us-ascii?Q?1KECCk99/nv0t8ykp2wZEac6ggijHay/nQk1UGPuP2PyOjYtszOxeTpuN2Ub?=
 =?us-ascii?Q?YByRVv91i43yKWGW/rCHkNR5WZNMXEcJm3rIm7I/dlKFyhGaPqhUtisJkp7x?=
 =?us-ascii?Q?Q9bFJbrLVQ8hhqC0U/uZc7Duj26MjMD7Cmr5gRdRpka/6W+Qg62jEyk4zdxe?=
 =?us-ascii?Q?LP2eF7/X+f+0sy4wMVvrn8JiO1JVzSXusN688d3jzFHI0BETG+Y1Zap4gREw?=
 =?us-ascii?Q?p/T25oNlW2b60i7869yOi5fexTB/z+eke1vjrj4RNfMlmvT0kyKFGJPEPZ6N?=
 =?us-ascii?Q?T6QzKOLPhn9yMX+7wfaaS41m0x+IWkSPYXS36RSyMbJLShmJIszBz6klqs0n?=
 =?us-ascii?Q?EwBVqGO478xaGW14A8KJRi2QujY4aHQkIzBFKscELm5UOLWCS6GcVwQ7qrgh?=
 =?us-ascii?Q?NCrI3AWrNjsFvd2GG40VrJuX5CIVd+mTmZh6CK4Ft6mqsawqC9L0C5M00/sb?=
 =?us-ascii?Q?xt3EvqobfmX0rG+JsAsTNGpAgJU7R0sdVwRZOJfhuKbHM5gKSP9P1X+gOAMQ?=
 =?us-ascii?Q?iHTvInhTw5/HaohOfpb1AW1UzR9huYy6//e39PZ+keB9JMlMpUGOjUWWk4TW?=
 =?us-ascii?Q?X8K0SLnTCTnL2BTKNKshmqEsl+SbHF4SIp94/FNqkVS7AynPzjjf4Z7BL/5L?=
 =?us-ascii?Q?C1F+vS0Y3oR3G4wkQzzW5qfhWDYq1BcteEeVoUprz8f2XDrpkSc36NkhoeuD?=
 =?us-ascii?Q?sY5XjJq9l55+9PzxHpnkOf04gAMOSNeYfoVgaDQQfiixvOXr2EDrdR79f939?=
 =?us-ascii?Q?4Fzmk9gU908tVBYgHNkkZQkm6vnzsKPVpGQwK8sIGjgUmta8VBCzQIpHUaZ9?=
 =?us-ascii?Q?P4+hbHXeq6/DpR7fXnt2OSYUsUD7JyPJV4QAY6GfbLPiM5KNO+XIkL4NgRrm?=
 =?us-ascii?Q?bQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 16a21150-1a62-4f8d-db1a-08dab1be9286
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Oct 2022 10:42:08.6403 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: brSIXHcvRidSylGbSvB7Jzc73u4k6KgwQzAGR6woIXKSAYyw11UswHTbUIO+wBlrB1xTE+iaiQ8jt8rm6Eb9Ucu+cSdZY9ju96iW71Y1Kig=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7143
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666176134; x=1697712134;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9i12GzYwyC7U09PY7ROc0eiXoNcjySbzTHcMiPGx5YI=;
 b=bJy/yzuV2FnOwfqdFWF54JbV+TiW2VibdGcYy0oPcS2e3jf5OIua0nXc
 G1EVWaIDiN90TAAwzvCL7Tkgsk+FfKGmzTpOK/IHKPVcUmO48kfPLhRfq
 WrcEmfvdUa6OWEYBXjK/GawQtor0jF1+ccDGj39RU2ILI598zZAzqKHKd
 FoGvPcX5n6o05MtMSoJl1w/qSEtGZ52B4D/OvjBIfC5WOXNXl5vxNYlFX
 1oqHNqidGlIFCzIb6ndianxm9jMCN2gAfA0O/8kresjb2t6EMSI5Xlslz
 hm9/gMPucLKIZbPKCWAn+lZQPl1vGje4Z8m8Q1Zo+9T8BIIrDpk8MYPKD
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bJy/yzuV
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] iavf: Fix VF driver counting
 VLAN 0 filters
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
Cc: "Jaron, MichalX" <michalx.jaron@intel.com>, "Patynowski,
 PrzemyslawX" <przemyslawx.patynowski@intel.com>, "Maziarz,
 Kamil" <kamil.maziarz@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Kamil
> Maziarz
> Sent: Friday, October 14, 2022 10:46 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Jaron, MichalX <michalx.jaron@intel.com>; Patynowski, PrzemyslawX
> <przemyslawx.patynowski@intel.com>; Maziarz, Kamil
> <kamil.maziarz@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1] iavf: Fix VF driver counting VLAN 0 filters
> 
> From: Michal Jaron <michalx.jaron@intel.com>
> 
> VF driver mistakenly counts VLAN 0 filters, when no PF driver counts them.
> Do not count VLAN 0 filters, when VLAN_V2 is engaged.
> Counting those filters in, will affect filters size by -1, when sending batched VLAN
> addition message.
> 
> Fixes: 968996c070ef ("iavf: Fix VLAN_V2 addition/rejection")
> Signed-off-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
> Signed-off-by: Michal Jaron <michalx.jaron@intel.com>
> Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_virtchnl.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> index 5a9e6563923e..24a701fd140e 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
