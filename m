Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B8643521397
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 May 2022 13:21:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0E8BD4000E;
	Tue, 10 May 2022 11:21:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c-OPsrRE7K6Z; Tue, 10 May 2022 11:21:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AEEAA41674;
	Tue, 10 May 2022 11:21:53 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6972A1BF5A0
 for <intel-wired-lan@osuosl.org>; Tue, 10 May 2022 11:21:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 56EF640167
 for <intel-wired-lan@osuosl.org>; Tue, 10 May 2022 11:21:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ImesZvX7zDmu for <intel-wired-lan@osuosl.org>;
 Tue, 10 May 2022 11:21:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A32DB400FB
 for <intel-wired-lan@osuosl.org>; Tue, 10 May 2022 11:21:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652181707; x=1683717707; h=from:to:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=cvzYSSc08CyMisFNEIWJhx8axtkyn21KLnrcY19Qnq0=;
 b=gdfYhkaXxXm/xW34aowhybobplBDW8I2EvM45cgpTqGOugFMAzVFP3Ko
 uBzAaQr3N9G1I/VUcA/CJY0OyfTjEO29Q8vspm7rlRiTJWe7QuNYhZFaU
 IdW5P5SW0iiBSc6zWTWvYTKllHoNFb1D/R3N2IFjQ2aC/1fxxOK1xZXS9
 QNl+BcW6N6wwjCx4JpI0LYvU/fC5sL63F4LYwdrO0rudcqVjemlr2mB6c
 UpuDU2aeiWGIIiflBRylB5RfPNv+e+TxQF2EF+Qi9kynsdEupZ723LxoM
 Lr/RkU7ZN2xp4HoguhgP4wHCuBgcPXIYh7a9fZe6CHDYLnSsJ0pDI/SL/ g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10342"; a="294574799"
X-IronPort-AV: E=Sophos;i="5.91,214,1647327600"; d="scan'208";a="294574799"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2022 04:21:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,214,1647327600"; d="scan'208";a="813942322"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga006.fm.intel.com with ESMTP; 10 May 2022 04:21:46 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 10 May 2022 04:21:45 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 10 May 2022 04:21:45 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 10 May 2022 04:21:45 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 10 May 2022 04:21:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VVLpwLYiGeoN+kSzLCt1SjSJaBCCEK77ZnMPIVxZnH7DkFsYO02KOEnqfV/B6hKnAEO+FZFWTbXApNwl5M7QBJ/cxmO830mTJWH6Td9uL7vwrBBMHVR1w04GXSDoSMsWPO8Q0W9oHAb3u9GdY1OzqMB+GdpvTNUoQyNKYTd06NcFxalce3qkKprks4g/ldcZ/bxvtytTrt8A0+/0LtUGAOyXKxojNd3GqSpbwA+YY/juVpT13CUkn2u8ms9JnzjUB6K9jB1QuskwXm95AXwD1ItFMveGNXEuAZGmYHO15yg5mZmBYKbpBzORiN8WLUvpHDZ/Q7jOS2s8vAMWbShSfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cvzYSSc08CyMisFNEIWJhx8axtkyn21KLnrcY19Qnq0=;
 b=KoFHtdB03BpCjMRQtov7jV1BJavR+rkTUhzgaLIaqjuzB7ZD/JmtGtYC+1wFOCQ5hOibEcMEBDtDi3uHC88L5CRPfLN3QLBiKHZTVLMSGMYIEct6xUCl9bmDlzcmGe/hSdzUK+9ZqC3ivrSZuh7CJRtikE8xwikQooivIX+jxmEdmlLms+z4An1etvJRyASv5NPdEw4W7gIZKWOBrfhT2eVd6wp39iVE3ZK2IUWeK5yTenDRd01QhsY/snhXuIUcfSI6RBruAFeS/J8NGAfnZbBdqv9+lItiOayCAIJal0WIkTAupQmisc1Ks9Wyga5FoqSzvpFCH0KmK2TyqviAqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB2993.namprd11.prod.outlook.com (2603:10b6:208:75::28)
 by CO1PR11MB5042.namprd11.prod.outlook.com (2603:10b6:303:99::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5227.20; Tue, 10 May
 2022 11:21:42 +0000
Received: from BL0PR11MB2993.namprd11.prod.outlook.com
 ([fe80::b5e2:6a18:aace:7ece]) by BL0PR11MB2993.namprd11.prod.outlook.com
 ([fe80::b5e2:6a18:aace:7ece%6]) with mapi id 15.20.5227.023; Tue, 10 May 2022
 11:21:42 +0000
From: "Skajewski, PiotrX" <piotrx.skajewski@intel.com>
To: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2 1/1] ixgbe: correct SDP0 check of
 SFP  cage for X550
Thread-Index: AdhkX0Ccyvea581FQYGQuAZmFQSAag==
Date: Tue, 10 May 2022 11:21:42 +0000
Message-ID: <BL0PR11MB299331AAD0B587D12B965D5899C99@BL0PR11MB2993.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b1d1f7f3-95c4-4e99-6898-08da3277429d
x-ms-traffictypediagnostic: CO1PR11MB5042:EE_
x-microsoft-antispam-prvs: <CO1PR11MB5042D8BEB6FADB3EB6D598AF99C99@CO1PR11MB5042.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: i8izt9BAP1K3POmIpT/TQaXVwgV1lc8Dil9XA6IR+G+SOL3ISIq8Sj/wdqULihpImC6kvqety65fds8Q83aawGFyx2Zg0HWHi9HDfTZ/JcvIkNNxDwn3mWnpzcRV8tsDKLMBuA/DgCUaXFcAoS8hF7Ry6YxeONZc1nrahrm3GIW5neJvht7V2yL7viK05AcpnuUREA4+cvpPZRCimphaRvmVDdqDMJgENSMm+iSIt2yP0WEzZ+S/s9xYNZxuTaPVeJDxgiK2Pw/gAwrGzBvPOd4p3iLum6kCmmscVs/zjcQr4bzDC8ohBAPjNX3IaRcmDsRtSVX07rBkIAmVnICN5dsKZQo6HH5uY9kXlHGdkKk0g0Jo/YexRk1fPBW4JuDd460I+Go5NodY/kHDsMSXmTY/RIVw0aDRVZXkmolVLJqk7iE23FapQ9qmfTr7BsIg7xP+QWN0ShD5Lc4UOip9aav2oQ9IMWUwoRVczvsPzK8DMzX2h1ENSKSIVDJp/MNXQZ5zxqA/CCPLShTGEP+EFySZxdK58D/EGGSqOWBVktrjEZ/d25meSUO8PwqtmIC1Wjoyk596iwR3N2gg4ntsUISwtqg5PWQEQn0G0DHSyehCBGfJMqvJEZ1hD+9QokQmUsfpZgyyryvhiX2PXwRirwfFeT62eJzRVoQI3ok3aO1QIWZusBP1ZQGT6kTWvWvjHwLeIhoGj3RdPMyjJGzUcw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB2993.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(38100700002)(38070700005)(122000001)(26005)(82960400001)(55016003)(9686003)(66446008)(64756008)(6916009)(186003)(316002)(66556008)(76116006)(66946007)(66476007)(2906002)(6506007)(86362001)(508600001)(5660300002)(8936002)(52536014)(33656002)(7696005)(4744005)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?piF4vXJlHrwf9gUCSpQ56UovDz0QClkc5QGJts01LYfqXOfpRLhpjmtKcAch?=
 =?us-ascii?Q?5tgWl1vmOBjPnJ1eYpIrFdwW8itmZ+S693IvlOqqeBKI/RXh2Umzom0X1xH5?=
 =?us-ascii?Q?2b5FS0RX+54OMXSLR0q1/M9fHmOeazAHcImHPdf6aq4mt8ejKOfb0eSykP6z?=
 =?us-ascii?Q?lO1fvE+IScT09kS9WwgcBK+JOaKPqgl3zmmhJ7GzceMnSoIAdx0+B+/NTc3d?=
 =?us-ascii?Q?RFTFzMXXZTSN+5AUZ/QdqLwP6O8cwsvY4x9a8jLH6gJtQAIgs5sbUjjH/vDX?=
 =?us-ascii?Q?RrFB9X/ANvPQGavxmzTxaXZkhPk/vzddtiRvHSqLgUXrZfya2XiTSDwWpkf0?=
 =?us-ascii?Q?gTO5dp2EW2qBTSYt6R4WRBgqutdCc/W0er3c+90tBEqkWF/UDfTQwK38qj7O?=
 =?us-ascii?Q?ESX0+JfK7CmKTaevwidcVqQ/r5guSs+iThjd+IG8COPqjm+UsFeqg3CuGiQQ?=
 =?us-ascii?Q?cV79qRPzx3i+Frf4VoY2BKkd7plTKZKc0sshFWPxlLZWOCqTh8AJc1p7HanR?=
 =?us-ascii?Q?lptPevz0ycgZR+Um64X5TyxNyRxNmltVN950rWc3BUq+0AKiyk6670GVm9rm?=
 =?us-ascii?Q?mmBa5AJXgIXLeszBoPQ+16X2SaCgbiJCdtdKI4vuJjTBMrqD+cxgxLV4DLKM?=
 =?us-ascii?Q?zUHV5rYHeePhYksEdGYbIq6Q/AixTv/v3nSMgbhiwLQh1mRrDXqQwG9XWlNe?=
 =?us-ascii?Q?JZ+EEShvtTCGSzSM3t3++Rebzfw5J7vQVFJ50+BNxg9cNKrwXzcq0nmWUKF0?=
 =?us-ascii?Q?1XsdxoP3VRmBVFIx0jpaDo3LbT5xBdREBCQVUuouVbyx0nQQ0hhRGwhDpPKo?=
 =?us-ascii?Q?VHJSaeJfnV3XptZwcs4mZpv6qMQNKKwgBT9jAR5MjdHIcWTr/hm70bXmICwO?=
 =?us-ascii?Q?7PFH409xTT8jayzZc4ZbeVRwBP05GLG2ek9B+DKOxrWlLOyr97QOLgcI/xrB?=
 =?us-ascii?Q?fxzC1H43Ai1H34DjcselyNMCiSfx9uQ1+q6GKDj6PYY9tcADFhLHFCruIu2R?=
 =?us-ascii?Q?VzASyY4ou84LegAVaTQEFTzLczfpKfJLWfiu6CoZayGkH2FuV+xxoh+W7tWx?=
 =?us-ascii?Q?33XyVz5xwpIE1+f757wupxQ7z89jE7EqQmoTzRANTvlk28oTP6nX4ODve85s?=
 =?us-ascii?Q?mngTwtx7xj8wdPLmR4tWCljcAdoYFIUOJwC+ausQAOR5S9EHSnAGLecvn/y8?=
 =?us-ascii?Q?MVqzvfy854/PHdiTfp4Gi28KQMeeWeYgtGyNp4IlPNebi+r3YViHT8KXeYxQ?=
 =?us-ascii?Q?oi+xi1yFl9Y69C1zB3okyEdchlMwMArfA7pIANielA8mgGAZx1aEH+RUj1B3?=
 =?us-ascii?Q?hT9lyRtmwZFCryvESr9B8VEmcTfU9WLNOK1vMZLm8s2/k5p11J/EGNGpx2wK?=
 =?us-ascii?Q?i1r3jOiEpj4IJ1inLMvaFG0rd1la9UkaD6KX7kdy4sanxi0LCMJL8D3f0Fup?=
 =?us-ascii?Q?kPB/lYYMzCMxIK2oIjt6XD+Oxs10r0xCIbSXPOcTG+sExRe1s/hJ0id101+y?=
 =?us-ascii?Q?f5X5+5L/gAjlql3TBqnka51hoNAugSP8v4gcglOlnhMDuoPrzB1IOTU08eQy?=
 =?us-ascii?Q?58C1BjJhL3TVEloX6zhsOKl222LSyceIjFK+9gL0SFXpdw1vwGRmUS8jbLHe?=
 =?us-ascii?Q?TU4Q6mE/4yBJuPhk6Kr7E965WjfRZknkRZBQsFvhtVRfKUe8RhcFCteN6n6J?=
 =?us-ascii?Q?pYm3G/PFIp2EGPRz7HaAVV+zeePuuP/RQa7KnFG/NcNyrTJhyNHSQEleyl+/?=
 =?us-ascii?Q?FOWqvlSNmr3ci+k1ijyHN/9k4aCCaII=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB2993.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b1d1f7f3-95c4-4e99-6898-08da3277429d
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 May 2022 11:21:42.6143 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rJg9IuQTcIu+mkoQAqyZ1AElSqodyQ/QVkWupp1QFk6WkiOIgrcajYdgJbUwTL2zpGp6hVvMY1sALHMye6iP0P2D84n0RalN0Y81vCKER+M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5042
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v2 1/1] ixgbe: correct SDP0 check of
 SFP cage for X550
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

Hi Jeff,

Our analysis (using 0x15c4) showed that every time the cage is empty SDP indicates 0 and when cage is full it indicates 1.
No matter what transceiver we used, from those we have.
The same happens even we don't use the device which fall into crosstalk fix e.g 0x15c2.

When proposed patch was applied, the devices are no longer able to negotiate speed.
so basically this patch should not be accepted.

NACK

BR,
Piotr
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
