Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1982559BA22
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Aug 2022 09:21:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1CE1E4092C;
	Mon, 22 Aug 2022 07:21:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1CE1E4092C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661152875;
	bh=yMZbqA2m3QnXpMboDgs3nmaoqs+zNda433k9nIuMqhU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=v9sZNG03FT4Ee+TgapL4hoIJHqgivysLKK+hCH5agj0U7tciSNM1SN3UQ/SPyQ/iF
	 nqG+CgKXWfncOmMKP6Lhn5qLNbVwbTttkjS0YpH6S1evzlQoRfVW76ORWlrpsYRB1F
	 gcfOwEQbp6mXlkrw6kaA4zh4EkWMEumD1l36eBrNdIxT2f33BLpRDlBoES3i0i9fuq
	 OMi2u3BM+BhfSo7xVF7sS1E4Tt00paeWbCSDMziDvlUA4Uya3WvGw7uJ5yXsYQGP/z
	 zFxj9DHZIP3QktBQ1WJxRb68RGxv2nA4P1z1wIynpbiaaFGkyaDsaYCogmTraTSx+5
	 qLfcGGM6Y+NtA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rumvOJIs8QTd; Mon, 22 Aug 2022 07:21:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 899154026D;
	Mon, 22 Aug 2022 07:21:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 899154026D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A94AD1BF577
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Aug 2022 07:21:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7916A81BC2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Aug 2022 07:21:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7916A81BC2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TZBZRzGAYeRg for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Aug 2022 07:21:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1B85181CFE
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1B85181CFE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Aug 2022 07:21:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10446"; a="294625851"
X-IronPort-AV: E=Sophos;i="5.93,254,1654585200"; d="scan'208";a="294625851"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2022 00:21:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,254,1654585200"; d="scan'208";a="638074172"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga008.jf.intel.com with ESMTP; 22 Aug 2022 00:21:05 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 22 Aug 2022 00:21:05 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 22 Aug 2022 00:21:05 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.48) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 22 Aug 2022 00:21:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gysGsTwRErMJMY4pa9WAq5SwsyDlu5/OiQX5kd8D7YsLMtcZX6Jop8UPeKUdhITyC7xYkKQdRFfpBy1XHIShPsFkquNBkAppN02hh3v7w5b+D1x/pr/3YnX1FfV/PmQiCOzqpTok1vfzNPo3MVvt4Ze0eNc4QpOH+HWf+ix+LtaIVLbFvGTJfhws0sePnEMaJOuG0u4JB23XxrCHCL6r0XvKZBdHVE2LiXtz+XRnw0GgE4T2sV05ulF2GP5gFt6YXaSqypI1+4YISU0mWp/IFwzMtvHdbnE2RvEqpJIkf7YJ+jcIoD1xkRle8uleYAhllQFRiG7IF3jKimJvaqN4RA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Fm0ru/cHAoDketY0xFz8uIiOvV29rPl+9a6zF3mNYxQ=;
 b=mRxnLCvnXQsMV6YKaVfK6s+QoAvlpgDPHExPIbLoS9dEf7KxtlPII0ugVCbtHYti947E50ELlU3SgglBKYr34NkFQOpr5J0shdAOipG+TeTIUe/8ZwM6F6uw9yx8GapDBYW/ROo77ai5CYOA08Iai2sESrS3N0E0Jt7zmw2NbIToolXU+VDCTqhPCT2vDXoztO3mEG/gKZQLGuj/vRAaakqnAQxODqJ6FZ+uN4OqLCgdzxQTkTY/omO2ftokdvBFfc+FLTQoiogyFDDZK2wDZvvuj45BhUyXv91MImeAjJ1NsYpIYdKcIJ4CFjv3TLtOesXOMS5IfxyvttGaFTdH9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by PH8PR11MB6780.namprd11.prod.outlook.com (2603:10b6:510:1cb::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5546.21; Mon, 22 Aug
 2022 07:21:02 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9%4]) with mapi id 15.20.5546.022; Mon, 22 Aug 2022
 07:21:02 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Plachno, Lukasz" <lukasz.plachno@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2] ice: Print human-friendly
 PHY types
Thread-Index: AQHYsgqbtV4+yWaki0CgQ7y2YuM86a26izEA
Date: Mon, 22 Aug 2022 07:21:01 +0000
Message-ID: <BYAPR11MB3367B57EC2370FCD117E087FFC719@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220817071211.1631-1-lukasz.plachno@intel.com>
In-Reply-To: <20220817071211.1631-1-lukasz.plachno@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fb60c340-6fd3-4f51-b66e-08da840ede43
x-ms-traffictypediagnostic: PH8PR11MB6780:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: r8CA9RJKurCiaaFh+lmlqVvVMsZj0ofE5TwEVeqmtEWc1+Q1JFEw/+WDkApA+eOUoO8bY5qfVaUASUpERX2437X9fTDLeNCD617ghWQhOvLJjWPtTie0Mzn+MDkFv9SQIoWLR8lJpiCBWzpDXRnu1uuAPWaMpKzA86iAGBpuruxoWp0ogaWZlcDQvSUB4a8ZSCoBnZrqY8QxjRm7CvpjtVvotBy0VuW/8VCky/1EgqX1Ifnibxmwt4z5yf74/w98rdv4kuEG+mlfGu84ZPK3pF7kUyG4b0kTcpzkGswxvecrfyBVxU68uS6hW1Kon7VnvX9csomMTc8CyUi+6x+5Nc7sMandLpM0sPvGUyOYJM0sdvDky0K9Tu9kyQvF2+Qd4+KfiymYUYm0Pguke62Nr8zLaeg1TGf6jLGPwAHq53JNbvl9SH1BVXj+u/FhhJ89gZNLR4vAI0lHhyysZLHrdpDu32bq/95KsU0syFjLDMO9w5u3sQJtpafpndDP0rzEE1L9iYhfVYCp8L2piOMLYh2fXiQilnovELlQACSQO/KJfzhXSYDgoTMtHtb95EncYOYr5d/ctItiCXN3T4ULTG77hnZch8372FfdQCDS6fJtrj/OcY3FmxQyjvqBY5zfguxp0waJQBCbSJIcHD6EgzKybPOcq135+VHRqBepAv6yFErsuqav4RVZnkPBQD8N5DIzJr8lVvHAzmAY28tRFu94dOayfvNp0CD985T+LsBx0j97eMexEh7BHr334mJK3jBslVOFBR359pTIMGwt2w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(366004)(136003)(376002)(346002)(396003)(66946007)(86362001)(82960400001)(76116006)(55016003)(110136005)(38070700005)(316002)(71200400001)(83380400001)(9686003)(7696005)(26005)(6506007)(53546011)(186003)(38100700002)(41300700001)(122000001)(478600001)(64756008)(2906002)(8936002)(66446008)(52536014)(33656002)(5660300002)(8676002)(66556008)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Pwn+ArCwBJVYsRfLRDw326+DlYo4Gq/LUnq497T69blTyjlUv86mY4cXjMW/?=
 =?us-ascii?Q?My4dUdW++udQMzpJVzSgxv8xAVuYaeWIixRGoP8LAYXVE2nZbKpRr5Z7Acm+?=
 =?us-ascii?Q?+kNhnQaNWQ5zQchpznSMUL/SFQ948MBAUQfeIWb5AYWAPyqdjCWZ8rA1XRfg?=
 =?us-ascii?Q?EoK7sE3DcLftAt+1XIBAB7wP8ZQPMtNWeK8McPb7ngDFdtI0C3+Lzlm4GIB7?=
 =?us-ascii?Q?VBpjOE60/o6jaeQxi3G5ziFIDkR8F5vTbMY3wmAP/otxPdCl1yeMhqcFm/9i?=
 =?us-ascii?Q?oSJrtVc11/HP7q9ffSksVxul7IT6dOy14FRu0G9mb5swO2g4cQTgNauX+Geb?=
 =?us-ascii?Q?pOm2PEWcBNYvO/B8Y8nV1WL1LhgBRFQ38TuvvVbfaIkQnUhJbXfgtHjUGSMX?=
 =?us-ascii?Q?KZ1QTgQTeiu61LueFAsX8ROKj2mLrKjcb+BvBi0mwUQr90JR9sB8Qu+saRv2?=
 =?us-ascii?Q?J7RZuQxLkRGbEDE33YADWEGcXN1e0wL/bPOmkAJu0yRlRS5I3U56AcpCXscV?=
 =?us-ascii?Q?1YMK9SOmdw2YL4vc79GOFSBBfG6JUrp7tD8nLyqYwRoZmuz2otRLUA6oiAEm?=
 =?us-ascii?Q?SkhB/YOVM1NpAFDLiOvrUZF7u/Aw1F00/07BGkNMB31mpHs3TIqObRrChvgI?=
 =?us-ascii?Q?ORVT4x6+vUt47i9tOP1mWzYWjStuXGR3B4Zp9L4ze6Mfy9rwmbbyBil3zbuk?=
 =?us-ascii?Q?gXvgj5z3jD+xZ0YcxZZZIIOQ1MxYpVT8gZEvmFBtptSVjIsFazvjDaAMr2Fq?=
 =?us-ascii?Q?iBd9vNksNoVQbIsoJjAYiSmb1IBh6r8sNt4Zzj6Kf9NpYS5wDyIZbCv4RBkc?=
 =?us-ascii?Q?iWU1T7NCpor+6bzlIlcfigCVKZih6uF+uZ+krHOmRYaMzs4ejt1SoA9/gGlY?=
 =?us-ascii?Q?LEdes6LONVPkijPO0D/hXQkp2ANkxvJ4dxJJKOH1fokW+RvXx7fCFjYYvY5u?=
 =?us-ascii?Q?+gvrD9KInYLAQTOi4XDW+7uezEawswaKwVOoweKUdDgl+LdANYn03YDimZ8t?=
 =?us-ascii?Q?usiEu57POpSY2Xhkqo1AlAwV852TpG7GNK7rCrEa+ACKArqYYHSrHHmUosnH?=
 =?us-ascii?Q?/eJNnHOBowyCYl6kxMmvt0FTMDhMDy4H1COniFBjHdQbwGUEKkNKQkQR9Ec1?=
 =?us-ascii?Q?R3a/qqg+KPxen8ezQGkOGSYwvhycvSG5BquMwaaicw9E3N5t1vc5tTvMJZLk?=
 =?us-ascii?Q?7V/vyuvgLWYcp8nL39bh/lFeVL4shXrvHdCaPmgSNENmwnf80YmFQ9HcxDHJ?=
 =?us-ascii?Q?iMyeV8FHqFS0cTDUoynIolsiJ/3twff8+f8b/RZuXMJGmTkExN2tQmz54/eA?=
 =?us-ascii?Q?JexBqiNt9wfgLhpM0Nk6ki13R3wLeRJzXLseq1gsxSRHKJ1ZIuJGW4HoE/+2?=
 =?us-ascii?Q?hs5kay3TCX16tYGLInuddvy9vbCqGTSV5DnGG9I/5cqyRSYZsed0VEXakiAW?=
 =?us-ascii?Q?59R0VJZXJBuHsHIG2T+v95BQkTus061Q+7Kke/w7yNjvHH1nBN6D9gJ7xnAj?=
 =?us-ascii?Q?bWmItasmE9mE8QSsyEkEQEtJur7yYRUSlCHhYXUBMQa5u9BLrTXB/IdFbP+T?=
 =?us-ascii?Q?PHRhKMhp85jCYxBEBFITr3plcTB+PuXu/rlfDfZI?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fb60c340-6fd3-4f51-b66e-08da840ede43
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2022 07:21:01.9578 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JmOqzOspF6q94mmG8SCYHfzrf/JePvUmZxgNTnVkZ5GF5UFR7QNsW37KoYjrtOA9chC2qRe59IUUd800UsXzag==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6780
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661152866; x=1692688866;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=+QIDItQ+wRSnkkKCDAzPjeTeCsBSQSLkpB/0uZIIwPg=;
 b=Tfs+MdiKpYhC7lI6FFAKs4KyRBI6pKPEbbqGEfK9LBmB3jKiaStCGsM3
 6qfBWoLOaeoXgVAYZ5aZ7yr8adrnB9ka0rKd34CPXo2If/rFEcBSIDFxF
 K/vXvFdTrXs9o0Gtx6JrewWBnqqkEEQmE3pau5pMeExeV7DESQLo60Lk8
 9PWtr/ifPWHb+3S5CYANkrzTAPeEXUQGh2X8/INPK62JLAl6PezNjFBBV
 mllWLfJ/zseiQtj/j8k9JUDodRWQgWYHnME9g0AW58MJDCl4u4F0rE8Bk
 oYCqL262cyzECpGDjbuYVpzuKo7p4PqEusQ6OydEHsRYfW4gIghNlOqvm
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Tfs+MdiK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ice: Print human-friendly
 PHY types
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
> Lukasz Plachno
> Sent: Wednesday, August 17, 2022 12:42 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v2] ice: Print human-friendly PHY
> types
> 
> From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
> 
> Provide human readable description of PHY capabilities and report_mode.
> 
> Sample output:
> 
> Old:
> [  286.130405] ice 0000:16:00.0: get phy caps - report_mode = 0x2
> [  286.130409] ice 0000:16:00.0:        phy_type_low = 0x108021020502000
> [  286.130412] ice 0000:16:00.0:        phy_type_high = 0x0
> [  286.130415] ice 0000:16:00.0:        caps = 0xc8
> [  286.130419] ice 0000:16:00.0:        low_power_ctrl_an = 0x4
> [  286.130421] ice 0000:16:00.0:        eee_cap = 0x0
> [  286.130424] ice 0000:16:00.0:        eeer_value = 0x0
> [  286.130427] ice 0000:16:00.0:        link_fec_options = 0xdf
> [  286.130430] ice 0000:16:00.0:        module_compliance_enforcement = 0x0
> [  286.130433] ice 0000:16:00.0:    extended_compliance_code = 0xb
> [  286.130435] ice 0000:16:00.0:    module_type[0] = 0x11
> [  286.130438] ice 0000:16:00.0:    module_type[1] = 0x1
> [  286.130441] ice 0000:16:00.0:    module_type[2] = 0x0
> 
> New:
> [ 1128.297347] ice 0000:16:00.0: get phy caps dump [ 1128.297351] ice
> 0000:16:00.0: phy_caps_active: phy_type_low: 0x0108021020502000
> [ 1128.297355] ice 0000:16:00.0: phy_caps_active:   bit(13): 10G_SFI_DA
> [ 1128.297359] ice 0000:16:00.0: phy_caps_active:   bit(20): 25GBASE_CR
> [ 1128.297362] ice 0000:16:00.0: phy_caps_active:   bit(22): 25GBASE_CR1
> [ 1128.297365] ice 0000:16:00.0: phy_caps_active:   bit(29): 25G_AUI_C2C
> [ 1128.297368] ice 0000:16:00.0: phy_caps_active:   bit(36): 50GBASE_CR2
> [ 1128.297371] ice 0000:16:00.0: phy_caps_active:   bit(41): 50G_LAUI2
> [ 1128.297374] ice 0000:16:00.0: phy_caps_active:   bit(51): 100GBASE_CR4
> [ 1128.297377] ice 0000:16:00.0: phy_caps_active:   bit(56): 100G_CAUI4
> [ 1128.297380] ice 0000:16:00.0: phy_caps_active: phy_type_high:
> 0x0000000000000000 [ 1128.297383] ice 0000:16:00.0: phy_caps_active:
> report_mode = 0x4 [ 1128.297386] ice 0000:16:00.0: phy_caps_active: caps =
> 0xc8 [ 1128.297389] ice 0000:16:00.0: phy_caps_active: low_power_ctrl_an =
> 0x4 [ 1128.297392] ice 0000:16:00.0: phy_caps_active: eee_cap = 0x0 [
> 1128.297394] ice 0000:16:00.0: phy_caps_active: eeer_value = 0x0 [
> 1128.297397] ice 0000:16:00.0: phy_caps_active: link_fec_options = 0xdf [
> 1128.297400] ice 0000:16:00.0: phy_caps_active:
> module_compliance_enforcement = 0x0 [ 1128.297402] ice 0000:16:00.0:
> phy_caps_active: extended_compliance_code = 0xb [ 1128.297405] ice
> 0000:16:00.0: phy_caps_active: module_type[0] = 0x11 [ 1128.297408] ice
> 0000:16:00.0: phy_caps_active: module_type[1] = 0x1 [ 1128.297411] ice
> 0000:16:00.0: phy_caps_active: module_type[2] = 0x0
> 
> Signed-off-by: Anirudh Venkataramanan
> <anirudh.venkataramanan@intel.com>
> Co-developed-by: Lukasz Plachno <lukasz.plachno@intel.com>
> Signed-off-by: Lukasz Plachno <lukasz.plachno@intel.com>
> Reviewed-by: Alexander Lobakin <alexandr.lobakin@intel.com>
> 
> ---
> v2: Fix indentation
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c | 158 +++++++++++++++++--
> -
>  1 file changed, 140 insertions(+), 18 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
