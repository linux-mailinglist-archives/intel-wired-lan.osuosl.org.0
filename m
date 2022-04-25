Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B25C50DB9D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Apr 2022 10:49:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B1D1A60B8D;
	Mon, 25 Apr 2022 08:49:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UZXRRMH5b1Cn; Mon, 25 Apr 2022 08:49:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8516F60B43;
	Mon, 25 Apr 2022 08:49:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8E9851BF3D7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Apr 2022 08:48:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 88EED408F7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Apr 2022 08:48:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bSKVdsUJuEdy for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Apr 2022 08:48:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2BC7240174
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Apr 2022 08:48:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650876535; x=1682412535;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=me5byuByPMaXDFdZkQ4h7JUT10Oh2T3w4kkmkj8xQAA=;
 b=IkF34hE9IWhLT3rnyA/pmlaXGj+/uX2MHQ0x0X0Qo6Gix/6P05lI2twb
 PxKWFN04A1S8f7dxq3u0ZEoyd2gsM0uYSlk/yOtcLu25+gZwYK7o1Vq0h
 1v/ennqY08ubJFkOm7JipuceJ7xnmWPEl2zS4CmKiMpEotFxYxYIIe5hh
 FTJF12KvRsAkb5OYUrFSmUCRj3xgnD5K0TzvWG7dj/LqhBvtzkOXX41Ag
 MsPQzOoRpqne7G3Fwo+Mz1lQvDC2VZS0vLu5D4BwzeuXFgbf+ActZ616Y
 HQysYEQ+qZm29bAkKF21QABkMUWF6PsxJEh5ZulleeuzID2Pdaem6S52u A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10327"; a="328126221"
X-IronPort-AV: E=Sophos;i="5.90,287,1643702400"; d="scan'208";a="328126221"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2022 01:48:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,287,1643702400"; d="scan'208";a="512551384"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga003.jf.intel.com with ESMTP; 25 Apr 2022 01:48:54 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 25 Apr 2022 01:48:54 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 25 Apr 2022 01:48:54 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 25 Apr 2022 01:48:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QA/iTaK+X2pHPU+8rLEYD73iX9JvX/blWNgwmAC9fKa/f6yVQYVukIIN/y2SNjXR61n2uFuMBS/qGzy0t+/r795MDowFfAYktxPDIK6DD4IK+J1/YCZRMWDHYPsitiMmVNrrBnL5zACKoHN3Vdry22Q1t0tXvv3D2gXj2PP3LogqmIDNtjixDdbyvBtLlSyjZIoQjKg3stSu67ajbuVBtZ43utzYof/lPuyAXRrmHcSTh38oS02sdHmngMkbQaFbU/zsbOycW3ttSoJVz7/UwmVNF7Bhgwb16yQcSp4aUmYhGx2EK3tg2icsyaVYFkjFGApI+rPAHs9X+yJUSv75YQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KAVoiTVDlZjsI7OHltyM+c9UB5RfhHu0wyTYoFMXpOI=;
 b=ZHTmQVUOvOXHCeU+1foGcYRs6134gmezwJbIrk5gnXBabWcSvYEt61HYvjkjf3LtcAeQ2zA2ECNkzdxinOnfr8n6Ubta7CLd83H5c08LZUxFO2uwReSgIofHb+KDyPvhYbIR1TjkFjEdQmwSfuj3XwRjks7eonDndJkDmqPE4NOEcHLAwWE8awEo8CxE6LMdeFmN1kL3ix/CLWQIUz7tMInQLdLPZLjC/DWPP5IZcJs6zBB4zprivfYd3R/A0//12Emw64fpybRlpiepxmTfi41aeAXuVZMNrHt9mOakja+T6wtDnRVsX+ixWzv2ey+TrfnuI37wEatRlXtzhftESA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 BN8PR11MB3761.namprd11.prod.outlook.com (2603:10b6:408:85::25) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5186.14; Mon, 25 Apr 2022 08:48:50 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::555a:eb0d:3532:d9d8]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::555a:eb0d:3532:d9d8%7]) with mapi id 15.20.5186.021; Mon, 25 Apr 2022
 08:48:50 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2] i40e: Add VF VLAN pruning
Thread-Index: AQHYTZ0u3Nv0tc1wt0KurWbtG+qsFK0AZzTg
Date: Mon, 25 Apr 2022 08:48:50 +0000
Message-ID: <DM8PR11MB56218477304F15B9693A9BACABF89@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20220411120714.27462-1-mateusz.palczewski@intel.com>
In-Reply-To: <20220411120714.27462-1-mateusz.palczewski@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7eb81228-cb78-4891-07aa-08da26986b50
x-ms-traffictypediagnostic: BN8PR11MB3761:EE_
x-microsoft-antispam-prvs: <BN8PR11MB3761392D27F391F9C69529FBABF89@BN8PR11MB3761.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YZok6ipFc7KX3MJbB2sKiTcHJffrvb+onX7gn3AbgPiwvZOs1z91dYy2zXB+HP9VHi0oeX1EwvxWVVwHp0yem/nabnurHScN2mUAbsvldqh7khc5N+KviupPbCjk9cjWqIKqtiqPNIAHPU7/ZRvkDa7ZlhdLPLbs9f+CLXFn034oheohP3tYh5l3ZujcEKkm/gnlTiANaZXa7ct+aKn+jLKvPV0iRDjIeFHapOHzkTa7ZbY7cjh/kCYt6IXI3T3h54KfFFD477N4rGGTgfl0dz8mRbSShorg//6nQ+8Rg0r0GPRHpnawIYwC4PIdUc31V56zIUNiP4plH2f1RNaXOvHQTPZtzVopIIluSfBJb9IUvInBvdORbAu/czaYJKt8w5ZStjldXSfhtSD0ptV647J1x68ily6g55KUUbmXTlY84ZOFi88QNS3XQ8rv2ADme9Twm14j+SQYXOfmJaAmVoytnkI4OgWCMyKjlYrx+nnhg7pQYMrWLDdgWexaBKJ27htevui9lfprNmk7ySqQ7fqi3aB/NemSRH1hTJ2/MwPet8Qe/EEQSlYaJriUpHSt/KgTDf5Z2F4Jukgr+fVTqaIJUSmCNH5HoQqBXQU3nNnHUNjz9uwQ21Knd17Yh/Z5/vSbcEBZVp9AIqotVA9RtV9SVQ1nanNaGnbTRbBchqOTbXBtxfwg0hjUE/cOebCQ9Qyl5pAc7/fNT4BI50u7dQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(71200400001)(7696005)(6506007)(38070700005)(82960400001)(38100700002)(26005)(86362001)(64756008)(110136005)(54906003)(316002)(8676002)(76116006)(66946007)(66476007)(66446008)(66556008)(4326008)(2906002)(508600001)(9686003)(53546011)(8936002)(52536014)(5660300002)(186003)(55016003)(83380400001)(107886003)(33656002)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?9ZxnAe1XBUsVQOrMUUIX88rJDSee3lzzetXFMSPpvllnb8Qc20Eu6Ix6OFdr?=
 =?us-ascii?Q?AaeucfM+0IcTv238iu68YwpB784PVHXxNxMsDWceniXq/IwpFEmbzWwVzxsz?=
 =?us-ascii?Q?Y/AQPuXpaKg4hnUScTQawaL6lCxCmhpH981U+D/F4+erpkJ7BqHzEXzBUB5R?=
 =?us-ascii?Q?g0lw6ih4O40Hr5AW0s0dHYDqvoP7PejslDN4KWwJvVEjhrOhSnXgVw3i5+kn?=
 =?us-ascii?Q?eB2POJKpqSb83SdCx84I3Q4ONXEJpkmZCjLcg5HnJpQLIxvS6kDj5YsfuEmN?=
 =?us-ascii?Q?7SxMH415XSUF7yOHrUSEq5jm4LjRFgyPsmxSIQkPj1Iep+tpJtD8T7fHVwFB?=
 =?us-ascii?Q?8Jtss5HzQmHkIHMhF26WdhxZDi/mEc49QAv3uVNdohBNrNyjtPTN/Ts4xHBo?=
 =?us-ascii?Q?vr7WbC2dA9OyGwME141aKIXEWJACj63ylcFC58okypm8YT1AlJoWg91k+W2i?=
 =?us-ascii?Q?xKG9ZBxVeftMsbjg+Jks0JYxVC6QBGXYFNhnU2wss2dOt8dPv76NV+TeeNSw?=
 =?us-ascii?Q?xIiXifdVjagqTTq7nNJ04ZwCPjBF2To9u/83xiYdHIPin3P+KR6BSVgg76Go?=
 =?us-ascii?Q?pSdbeWPpsKd9FqJB9J5mD3/eHTnRQCtCLL5YqprNWllVZgF/uhwa3AlM2vAB?=
 =?us-ascii?Q?JHK+RySLElXRsDKxz56Vea4E7KZcnj6+uzkby2/Ecj2414oqsqYJzIFWQxMo?=
 =?us-ascii?Q?2IydPdDznYzuyKIvP5ZthDfCskEbtbYFw6fLXst8sCmCo9GNt/0j/NKvQwyU?=
 =?us-ascii?Q?f9zOkhum2eb9ecNycQy9Wm0PobE7D4Zvtd0qvj/mAAtQvk9vPAmOmeXZzJji?=
 =?us-ascii?Q?WmUAQ5l16LRgjO6zWhahxz9B872YJuQkLWyHsJd/5mInJNqMkk8sek/LrIgE?=
 =?us-ascii?Q?PBafZRG+J8kKztQy9qYa7gZCJ/nP5qwllic+c+BcV6ssg2Sw/Xwcdqpdm0T0?=
 =?us-ascii?Q?R7+5omMwHlj/yCi3tsDM8Q0GwBP50BexF/2qhXaBwNsgmcT8YhNhl6pPo4k1?=
 =?us-ascii?Q?BIOegp7V3RCY9m63EXBBTrVATbifGXCQHpacMyaz5WzUo63EhDpIBDsQc202?=
 =?us-ascii?Q?IYiPGWLXhHZJNgfwm65tpJFnRbW4BJI/7URErz1oYDUfV7D0fyZLrkrF28cG?=
 =?us-ascii?Q?6UhrS8pJOR3c20cs9IoVn6LGI33QNTSsePIhaqsaMjlRdRwttXA09ZaiZ8O1?=
 =?us-ascii?Q?u4rlPHR5m6izQYLPDkC2N8+sWOI/0UwhRgAeuyTWFEjVro+xS29u29+N76xN?=
 =?us-ascii?Q?B0FyKhUZQVZQ2IE7fuRFGCgmP2aw489307fK4p6MDVdYOpQ73kZKI2gS0jlv?=
 =?us-ascii?Q?SgwieZCxI2COrC4YkMfSRWAWibZNFHvCX2JbOGEaSRh1kZ2EM16VgYXSA8Tv?=
 =?us-ascii?Q?vuVV2q+TGbG0pbo9kCdr3QVISCG+iQE+lU7g0BCuy8C9Glw/ncZ8ab8IqB8B?=
 =?us-ascii?Q?9AlSuoCkxcapqCpgOCFvY/4noc9kqsjWHaOFxTQvZndcKzO3s1FkjNOUQ0dH?=
 =?us-ascii?Q?kvCipUAiX2CQivsNGNYtwQlA+qDEEUH2Eugqa8MMnWMCjDO+UlL/Q/AWMzXL?=
 =?us-ascii?Q?xPT0RPPjA/ztwO3cmKyaUYLhvFa/SHRWHNyCfizefNO0tJZ+5O+RsV0wCvdC?=
 =?us-ascii?Q?2biGY6hZawx8W1NPAUEiigHp/DGmUxEE1om47tIMhDeWHB6HjQInzuYtI5mB?=
 =?us-ascii?Q?FG71cRmn7JcpuPfSlxJf1R+WY/aopQzEt1eR8oIWYoyC1tcscTTfVhP4OaI3?=
 =?us-ascii?Q?X1CAEKvnfz7FJM6fMVat5ylyqaYaGzU=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7eb81228-cb78-4891-07aa-08da26986b50
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Apr 2022 08:48:50.3481 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Kc2DIUkqNVnj4vCX4EcKAoRdX5xDmCdrbOIp1yAGkcoILCK5dmR4dX1EO+H/uQK4xQ8NQvdnAIGcoTz48F2CUgrxo1rpMPWvDmikZrn1K44=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3761
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] i40e: Add VF VLAN pruning
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
Cc: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>, "Patynowski,
 PrzemyslawX" <przemyslawx.patynowski@intel.com>,
 Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mateusz Palczewski
> Sent: Monday, April 11, 2022 2:07 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Palczewski, Mateusz <mateusz.palczewski@intel.com>; Patynowski,
> PrzemyslawX <przemyslawx.patynowski@intel.com>; Sylwester Dziedziuch
> <sylwesterx.dziedziuch@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v2] i40e: Add VF VLAN pruning
> 
> VFs by default are able to see all tagged traffic regardless of trust and VLAN
> filters configured.
> 
> Add new private flag vf-vlan-pruning that allows changing of default VF
> behavior for tagged traffic. When the flag is turned on untrusted VF will only
> be able to receive untagged traffic or traffic with VLAN tags it has created
> interfaces for
> 
> The flag is off by default and can only be changed if there are no VFs
> spawned on the PF. This flag will only be effective when no PVID is set on VF
> and VF is not trusted.
> Add new function that computes the correct VLAN ID for VF VLAN filters
> based on trust, PVID, vf-vlan-prune-disable flag and current VLAN ID.
> 
> Testing Hints:
> 
> Test 1: vf-vlan-pruning == off
> ==============================
> 1. Set the private flag
> > ethtool --set-priv-flag eth0 vf-vlan-pruning off (default setting)
> 2. Use scapy to send any VLAN tagged traffic and make sure the VF receives
> all VLAN tagged traffic that matches its destination MAC filters (unicast,
> multicast, and broadcast).
> 
> Test 2: vf-vlan-pruning == on
> ==============================
> 1. Set the private flag
> > ethtool --set-priv-flag eth0 vf-vlan-pruning on
> 2. Use scapy to send any VLAN tagged traffic and make sure the VF does not
> receive any VLAN tagged traffic that matches its destination MAC filters
> (unicast, multicast, and broadcast).
> 3. Add a VLAN filter on the VF netdev
> > ip link add link eth0v0 name vlan10 type vlan id 10
> 4. Bring the VLAN netdev up
> > ip link set vlan10 up
> 4. Use scapy to send traffic with VLAN 10, VLAN 11 (anything not VLAN 10),
> and untagged traffic. Make sure the VF only receives VLAN 10 and untagged
> traffic when the link partner is sending.
> 
> Test 3: vf-vlan-pruning == off && VF is in a port VLAN
> ============================== 1. Set the private flag
> > ethtool --set-priv-flag eth0 vf-vlan-pruning off (default setting)
> 2. Create a VF
> > echo 1 > sriov_numvfs
> 3. Put the VF in a port VLAN
> > ip link set eth0 vf 0 vlan 10
> 4. Use scapy to send traffic with VLAN 10 and VLAN 11 (anything not VLAN
> 10) and make sure the VF only receives untagged traffic when the link
> partner is sending VLAN 10 tagged traffic as the VLAN tag is expected to be
> stripped by HW for port VLANs and not visible to the VF.
> 
> Test 4: Change vf-vlan-pruning while VFs are created
> ============================== echo 0 > sriov_numvfs ethtool --set-
> priv-flag eth0 vf-vlan-pruning off echo 1 > sriov_numvfs ethtool --set-priv-
> flag eth0 vf-vlan-pruning on (expect failure)
> 
> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Signed-off-by: Przemyslaw Patynowski
> <przemyslawx.patynowski@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  v2: Fix checpatch issues
> ---
>  drivers/net/ethernet/intel/i40e/i40e.h        |   1 +
>  .../net/ethernet/intel/i40e/i40e_ethtool.c    |   9 ++
>  drivers/net/ethernet/intel/i40e/i40e_main.c   | 135 +++++++++++++++++-
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.c    |   8 +-
>  4 files changed, 147 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e.h
> b/drivers/net/ethernet/intel/i40e/i40e.h
> index 18558a0..57f4ec4 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e.h
> @@ -565,6 +565,7 @@ struct i40e_pf {
>  #define I40E_FLAG_DISABLE_FW_LLDP		BIT(24)
>  #define I40E_FLAG_RS_FEC			BIT(25)
>  #define I40E_FLAG_BASE_R_FEC			BIT(26)
> +#define I40E_FLAG_VF_VLAN_PRUNING		BIT(27)
>  /* TOTAL_PORT_SHUTDOWN
>   * Allows to physically disable the link on the NIC's port.
>   * If enabled, (after link down request from the OS) diff --git
> a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> index 610f00c..c65e9e2 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> @@ -457,6 +457,8 @@ static const struct i40e_priv_flags
> i40e_gstrings_priv_flags[] = {

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
