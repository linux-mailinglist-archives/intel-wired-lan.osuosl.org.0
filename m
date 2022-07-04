Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E76C5653FF
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Jul 2022 13:45:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CA49F41573;
	Mon,  4 Jul 2022 11:45:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CA49F41573
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656935110;
	bh=q29rivAI3CO7tN3sHfCvtcf4Kdk68lfupGR1/7y0V1k=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qk6e4udlvcPqGlIBv3Uv0jhxB4Odmv+5lWDSq15M4XNoPEgyD37K6f1+JA9Isewz9
	 MLTSFakskiOcVMaRmILpPF0/+Uk9NXbUnmewFPZAj5633dxr6IeSeovt1eRPbkF2lK
	 hW+IhBJQHXm6WByQ2QytwdKbGPo2Nt+y1xKvnRUmDSqwTiuoxTah5bVMD/XNQHNflJ
	 fup1GKGzRzTFuVRPU7ViPwojG56+jG5UVCe/db1RowSbzhl/eMoseK+hCRZ7uqfXxf
	 I2ffpo+Bj8hm3lPMGO53jeVAiItEKa3ydKu5ycjjd6Utv74DEzSt+Kb7+xgCgjlt8G
	 D2D/jtGMeac6g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0OhcGFTjehnJ; Mon,  4 Jul 2022 11:45:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2C44B41521;
	Mon,  4 Jul 2022 11:45:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2C44B41521
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 227581BF3DB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Jul 2022 11:45:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EDF5360E37
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Jul 2022 11:45:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EDF5360E37
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wKE04493dCdA for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Jul 2022 11:45:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EF2E460E11
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EF2E460E11
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Jul 2022 11:45:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10397"; a="283838059"
X-IronPort-AV: E=Sophos;i="5.92,243,1650956400"; d="scan'208";a="283838059"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2022 04:45:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,243,1650956400"; d="scan'208";a="769235067"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP; 04 Jul 2022 04:45:01 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 4 Jul 2022 04:45:00 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 4 Jul 2022 04:45:00 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 4 Jul 2022 04:45:00 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 4 Jul 2022 04:44:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cFWeOfKM/6JuYceHaIr7zDsmeQUEGlp8+2QTa9RkyRWT8qLQmSm3QkrQMxyBrecXRh3Cnu/zilTo3EXAKeFIJcf3ERLxcXjbqVG1YqERLREmkVyGeh8d7xIzD9e0V91P8/KDzi9disJCxuvre7f4XpjMUhucAU1iwN7HjwU+mSNrTbImp/LPas6mi6K1e9aHMBPCLu23uD3LH+F9SWqomEgKKd3wns06HhqX+1r0tOFajR9Gt8jnhaW7YdyqW9uadb3Wa2EvIBbmFRvi8gqhlmzzxWt5QN7TAMfFU0VSkiZrRwwsjZjl7DUw9nACYvCtg9nd3qt9TKxGynT0Tbzz6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6qGYjTsC0ENyq8OcxmfTng2K19YOrSCVEoco+4NjujM=;
 b=gQP/nXARc72z+EU4yZGkeMs9mMP3AcwbBipkJEZ+ihkEmD9vP8Aby3SjEYWjzjw43umLoRmNVc09+5VobqD6OVS3Qsi1Iokqvcy5bPZf8LZzQCuLM96Ob6aiLpujbus8rO0eVpxYnM2QKdmeINT6S5ji3rLwS919ftGRP2Wv5nJqEGrc6lKLW4sKinkkVGKcVd08C+VMaJKGg0J8F6Ly3IFWFsnJH+XIm6C23uA+e3CMTlpqEBKRPfE0NqpcUz6KLYZByvvTtHCcphPSblpm6VvdkYs6NruVx6V6CGnhpdz1PGLaPs3Kjp/ydF3JENNp5kKcgc4GJdjvrq1akLe1kw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR11MB1624.namprd11.prod.outlook.com (2603:10b6:910:8::12)
 by BN6PR11MB1588.namprd11.prod.outlook.com (2603:10b6:405:e::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5395.15; Mon, 4 Jul
 2022 11:44:58 +0000
Received: from CY4PR11MB1624.namprd11.prod.outlook.com
 ([fe80::6023:b392:54a4:a0a6]) by CY4PR11MB1624.namprd11.prod.outlook.com
 ([fe80::6023:b392:54a4:a0a6%12]) with mapi id 15.20.5395.020; Mon, 4 Jul 2022
 11:44:52 +0000
From: "Szlosek, Marek" <marek.szlosek@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1 2/3] iavf: Fix NULL pointer
 dereference in iavf_get_link_ksettings
Thread-Index: AQHYgLNW9V4xAHDR8EKVveTrgt1/BK1uNUfA
Date: Mon, 4 Jul 2022 11:44:52 +0000
Message-ID: <CY4PR11MB16244023D6A6B768B5A15974E6BE9@CY4PR11MB1624.namprd11.prod.outlook.com>
References: <20220615122714.27177-1-mateusz.palczewski@intel.com>
In-Reply-To: <20220615122714.27177-1-mateusz.palczewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3431ea53-13ba-4df5-b8fd-08da5db29b90
x-ms-traffictypediagnostic: BN6PR11MB1588:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5lg7bHdXbu06PWj5Sqz+FDihg9Ud+LtP4V3/OWHTaNFh0h87LlzVFToeVigfoWzjwkaMSdxwVIsIdkj8NYFo89P5d8Vjqt8Gk12EmOKN+LixKHJJNTxKJuzpMeyAgopDnX3w98OaeakzkP/4Y4YTWJGlCxtpVGcqVR9IOIBNQN+wM3PwvkQZCCdyz5oipaMZqJoJcnWyyeIm3iJ7/kfWcgyRPMr9hML4vGoXAtC9hngyClyX/H/d1k2K70pQMYgo+Qc0a3S+86JemEWKQtGu/scU1v4oFZbPElpIE+6leCrvL2E20jxpT7Lv6YU4U8HzXbvkpkEQAzcYhHfWrlESSqqTwq3RsMBM0kkk85vY87UdswJLRst9wrqpeg8i5Uop+RkfNkRpZ84EnXCfR88xbg1wRV+ZjaApLGQy2ImECGh8qplwlgXbxJLc9ErmCRD8+4NVbVn58/E9q16cRATsUJLgPT46jWlR6gfD4V5Ec1LhpeVzq6+HMB2uXfXDz/H5+sOCg2en11wTCaTUSFqKJ9hg/64aoi0wRK/Z5QMqc95bnKVfK9MjOK9OEoMKEru+3Ab2DLFAMH1GWMhLQ8azVkwBan85goKe6czmOEergo9Xmn4lYqjZM8Uc9ycveC6xiKGILemErtPDrRDtW+qrN3ZP1auLrH0bECrXLcITqCpyan6Mwknluae+YaC3hxNMunOXFJ7645fXg+MQWdrP3VopzZ9tJWm7N/3mT3cXFxSZSFGEuGyyFDNiIRy6EUgjiBUW5CjbqaQ+lpOLm8QePLC/8iLp2DefzaCSctg/NOABnu9PbVCtulB0y6xjU18D
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB1624.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(39860400002)(396003)(366004)(376002)(136003)(478600001)(5660300002)(52536014)(8936002)(122000001)(82960400001)(110136005)(38070700005)(33656002)(316002)(86362001)(76116006)(45080400002)(71200400001)(66946007)(4326008)(66476007)(8676002)(64756008)(66446008)(66556008)(7696005)(83380400001)(107886003)(186003)(9686003)(26005)(53546011)(38100700002)(6506007)(41300700001)(2906002)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?64ryMArBcy+nUf5GbVZLP98E5+o5/cbpzVvw6uNQvinlluBRZ/WYBM+U8x?=
 =?iso-8859-2?Q?TpWTaFwvqkSLvie39EfU48gHWS5AKr11603WIzW9AHW239tHKfKs7hk4BC?=
 =?iso-8859-2?Q?VVAgz6PdibJs3fRORxufB7+E7KGswUHztJ+StL2i1Y4p7fN4Dc47Zu+mX5?=
 =?iso-8859-2?Q?W7flmj6tYvX+vAvvLhSHhflzGhQsh8nRRiyQCbRpMvxcPNd75yVxkPw8FP?=
 =?iso-8859-2?Q?eo7SNjipzjC6KFbPFVrMoR/U1yyY28xZ42a67feqF3mqB8z0n5GFdf/4tl?=
 =?iso-8859-2?Q?3J4FiFG0VidF2mg9MrqAX6eLjj0AXf4k4tPAhauZomOaxolvrgvkN7gvLh?=
 =?iso-8859-2?Q?C/0/M+dWHAyBiVNfVHyueJ3BfEkn2V8uUECGeO1MRrfxNmw3C+PjN/XpsJ?=
 =?iso-8859-2?Q?GUSOnzmg5QoE1DtTOYCky9vZjX+XJoMCx3HTa/N1WMuaNyqMF9NMa8VguA?=
 =?iso-8859-2?Q?WEWzSQ+IW0U4fT0LsNyQ+oHPtqzCtgn5Y3bsXjieX9Vf484V3BPs+t8WTy?=
 =?iso-8859-2?Q?Z+bGK5ZFXjp1gITx8hLZLF+udw5q/MswBgvn2kvTZAjwHzj4BA1B/+UpXr?=
 =?iso-8859-2?Q?7tznxOP94dhZ8bPKpixhWw2eyTUJEEp5CKR0Mb/dE8jfOS1gEU0P/s7sqG?=
 =?iso-8859-2?Q?Esl5/mWSOoKYnKUUuuRPDSt3fsqcHUkGEOE9qIrBxs47fkFvMdux5SxIPz?=
 =?iso-8859-2?Q?Uk7krARsnA/XXO6XzdQpFJhsd1PKAJuHd3LP1hXVJtdugsKooVMhj97yQ9?=
 =?iso-8859-2?Q?mkI9QdFcyveyz+JHkFUAEMIMaJQIMUjbOexgFcIld4qir221KhtEemzDkn?=
 =?iso-8859-2?Q?Ri7gQ7iAML7+NKtVR1hnccIf/BoAMcDIH8jodXeb/WvfN9ywiGSwspSA18?=
 =?iso-8859-2?Q?NKrMW6XCv0coTz68VDbIHkDSqcxFybNoOyblf98aJLpfiJeoNOv9PVz8W7?=
 =?iso-8859-2?Q?K4Zz77hNo2C+33wvjZW1V67tOmXuP5YPWB3suAJlW2mfplJqCLd/wbj9Na?=
 =?iso-8859-2?Q?kNi3ouq5WohfskeHuPtJwJQnUSThI9Y9txuKIypSzNVxFi2PHWEYCRqHVl?=
 =?iso-8859-2?Q?69Y+ad3z7rLY8UK7ph6MbZpOSy6m7UBFeGARz38IA0ilzN+HA0SVrN2pjP?=
 =?iso-8859-2?Q?vEt4Gbn8zcUXNyIK323YieVIkcgnckZOa73YkLsTxEeyXE61fSJwKO8l1g?=
 =?iso-8859-2?Q?U7GdyfggakeDL5TVjkMMz0MNI2UQOwI/y7jAGep5ATMzUGXKRdh3m5A+4M?=
 =?iso-8859-2?Q?DlB+ijV4bEebdRIwJyWTSDmMZD3voxEY5ZDcLiDBtH5DAyU6Uzo96vLz31?=
 =?iso-8859-2?Q?lIsFEaMmzqR3f9Obx9ojG3kVLwii7VCjHciU3v8L15FXBYxijCDzCnyL6u?=
 =?iso-8859-2?Q?ISM4iVF1nwMD+sEHApufLSqKtHu8acFl0Tdy3vh2gwPcDvj3YSjT/G7tza?=
 =?iso-8859-2?Q?Y0b4nLuLFExMW6cIxTk9w3IFQ02FZw9x4ztwJoAe2YYhARg8GAL1C5L1Tt?=
 =?iso-8859-2?Q?8ZXs7OBf2Mh5pnXMsCvM7jTD6h9huQhWDpSUMWjYE0BjIlbWmgfjL6Piid?=
 =?iso-8859-2?Q?LkW2EK1opbmExnLLLf+UBoWTgvk6EkLPgtqZe0CWksbIjGMgORM60EI+gT?=
 =?iso-8859-2?Q?VsQlUTpA+xBp0xAf6x9C+NW6BCGcBQatkJ?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB1624.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3431ea53-13ba-4df5-b8fd-08da5db29b90
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jul 2022 11:44:52.1236 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0H2kMPs/2d8KAIIgB79/I6S+TdR5+NGiVvTtsr6OuvHXtYks0U8Yzn/pEY8eJOmbuRctTXFQCfcmfmN+G7o8Kg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1588
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656935102; x=1688471102;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YDC0Tvm4itYYvDYwO5r39ffLzjTvSpE2mq0gwPN6x0A=;
 b=JdHoX4p+lkLsXm1ryiIsfdvtUJlIUbvL+LUiF30i2g6eM2W8qEfdPSE3
 fZooATtEeC4ut/yH8IM4hyT0Gh4BHs1o0kuG/6lPSLY6vfONi5hXvAGfE
 B4oBF1t+MVWe3xf17hOA2W/dCAU/HQIlWL2ExNgnDPa9prD3NScG3EIPh
 Oq8jqyKAwRbYXyzTAIR2UKpcVlH6DnCXskd2KVAyEfxxB2/PmE6yIJrR9
 64FAJy0GMJuUVYn7QzG9+r8A0v6aOtRgMOewehHyWruNXF6KxhlEvHnaH
 MWUxkusG90mRzywJf6pTq5Cq9AV2ooC8S5RPQZ2baeLZy0sC3E0wo1kyY
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JdHoX4p+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1 2/3] iavf: Fix NULL pointer
 dereference in iavf_get_link_ksettings
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
Cc: "Patynowski, PrzemyslawX" <przemyslawx.patynowski@intel.com>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



-----Original Message-----
From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Pal=
czewski, Mateusz
Sent: =B6roda, 15 czerwca 2022 14:27
To: intel-wired-lan@lists.osuosl.org
Cc: Patynowski, PrzemyslawX <przemyslawx.patynowski@intel.com>
Subject: [Intel-wired-lan] [PATCH net v1 2/3] iavf: Fix NULL pointer derefe=
rence in iavf_get_link_ksettings

From: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>

Fix possible NULL pointer dereference, due to freeing of adapter->vf_res in=
 iavf_init_get_resources. Commit #209f2f9c7181 introduced a regression, whe=
re receiving IAVF_ERR_ADMIN_QUEUE_NO_WORK from iavf_get_vf_config would fre=
e adapter->vf_res. However, netdev is still registered, so ethtool_ops can =
be called. Calling iavf_get_link_ksettings with no vf_res, will result with:
[ 9385.242676] BUG: kernel NULL pointer dereference, address: 0000000000000=
008 [ 9385.242683] #PF: supervisor read access in kernel mode [ 9385.242686=
] #PF: error_code(0x0000) - not-present page [ 9385.242690] PGD 0 P4D 0 [ 9=
385.242696] Oops: 0000 [#1] PREEMPT SMP DEBUG_PAGEALLOC PTI
[ 9385.242701] CPU: 6 PID: 3217 Comm: pmdalinux Kdump: loaded Tainted: G S =
         E     5.18.0-04958-ga54ce3703613-dirty #1
[ 9385.242708] Hardware name: Dell Inc. PowerEdge R730/0WCJNT, BIOS 2.11.0 =
11/02/2019 [ 9385.242710] RIP: 0010:iavf_get_link_ksettings+0x29/0xd0 [iavf=
] [ 9385.242745] Code: 00 0f 1f 44 00 00 b8 01 ef ff ff 48 c7 46 30 00 00 0=
0 00 48 c7 46 38 00 00 00 00 c6 46 0b 00 66 89 46 08 48 8b 87 68 0e 00 00 <=
f6> 40 08 80 75 50 8b 87 5c 0e 00 00 83 f8 08 74 7a 76 1d 83 f8 20 [ 9385.2=
42749] RSP: 0018:ffffc0560ec7fbd0 EFLAGS: 00010246 [ 9385.242755] RAX: 0000=
000000000000 RBX: ffffc0560ec7fc08 RCX: 0000000000000000 [ 9385.242759] RDX=
: ffffffffc0ad4550 RSI: ffffc0560ec7fc08 RDI: ffffa0fc66674000 [ 9385.24276=
2] RBP: 00007ffd1fb2bf50 R08: b6a2d54b892363ee R09: ffffa101dc14fb00 [ 9385=
.242765] R10: 0000000000000000 R11: 0000000000000004 R12: ffffa0fc66674000 =
[ 9385.242768] R13: 0000000000000000 R14: ffffa0fc66674000 R15: 00000000fff=
fffa1 [ 9385.242771] FS:  00007f93711a2980(0000) GS:ffffa0fad72c0000(0000) =
knlGS:0000000000000000 [ 9385.242775] CS:  0010 DS: 0000 ES: 0000 CR0: 0000=
000080050033 [ 9385.242778] CR2: 0000000000000008 CR3: 0000000a8e61c003 CR4=
: 00000000003706e0 [ 9385.242781] DR0: 0000000000000000 DR1: 00000000000000=
00 DR2: 0000000000000000 [ 9385.242784] DR3: 0000000000000000 DR6: 00000000=
fffe0ff0 DR7: 0000000000000400 [ 9385.242787] Call Trace:
[ 9385.242791]  <TASK>
[ 9385.242793]  ethtool_get_settings+0x71/0x1a0 [ 9385.242814]  __dev_ethto=
ol+0x426/0x2f40 [ 9385.242823]  ? slab_post_alloc_hook+0x4f/0x280 [ 9385.24=
2836]  ? kmem_cache_alloc_trace+0x15d/0x2f0
[ 9385.242841]  ? dev_ethtool+0x59/0x170 [ 9385.242848]  dev_ethtool+0xa7/0=
x170 [ 9385.242856]  dev_ioctl+0xc3/0x520 [ 9385.242866]  sock_do_ioctl+0xa=
0/0xe0 [ 9385.242877]  sock_ioctl+0x22f/0x320 [ 9385.242885]  __x64_sys_ioc=
tl+0x84/0xc0 [ 9385.242896]  do_syscall_64+0x3a/0x80 [ 9385.242904]  entry_=
SYSCALL_64_after_hwframe+0x46/0xb0
[ 9385.242918] RIP: 0033:0x7f93702396db
[ 9385.242923] Code: 73 01 c3 48 8b 0d ad 57 38 00 f7 d8 64 89 01 48 83 c8 =
ff c3 66 2e 0f 1f 84 00 00 00 00 00 90 f3 0f 1e fa b8 10 00 00 00 0f 05 <48=
> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 7d 57 38 00 f7 d8 64 89 01 48 [ 9385.242=
927] RSP: 002b:00007ffd1fb2bf18 EFLAGS: 00000246 ORIG_RAX: 0000000000000010=
 [ 9385.242932] RAX: ffffffffffffffda RBX: 000055671b1d2fe0 RCX: 00007f9370=
2396db [ 9385.242935] RDX: 00007ffd1fb2bf20 RSI: 0000000000008946 RDI: 0000=
000000000007 [ 9385.242937] RBP: 00007ffd1fb2bf20 R08: 0000000000000003 R09=
: 0030763066307330 [ 9385.242940] R10: 0000000000000000 R11: 00000000000002=
46 R12: 00007ffd1fb2bf80 [ 9385.242942] R13: 0000000000000007 R14: 00005567=
19f6de90 R15: 00007ffd1fb2c1b0 [ 9385.242948]  </TASK> [ 9385.242949] Modul=
es linked in: iavf(E) xt_CHECKSUM xt_MASQUERADE xt_conntrack ipt_REJECT nft=
_compat nf_nat_tftp nft_objref nf_conntrack_tftp bridge stp llc nft_fib_ine=
t nft_fib_ipv4 nft_fib_ipv6 nft_fib nft_reject_inet nf_reject_ipv4 nf_rejec=
t_ipv6 nft_reject nft_ct nft_chain_nat nf_nat nf_conntrack nf_defrag_ipv6 n=
f_defrag_ipv4 ip_set nf_tables rfkill nfnetlink vfat fat irdma ib_uverbs ib=
_core intel_rapl_msr intel_rapl_common sb_edac x86_pkg_temp_thermal intel_p=
owerclamp coretemp kvm_intel kvm iTCO_wdt iTCO_vendor_support ice irqbypass=
 crct10dif_pclmul crc32_pclmul ghash_clmulni_intel rapl i40e pcspkr intel_c=
state joydev mei_me intel_uncore mxm_wmi mei ipmi_ssif lpc_ich ipmi_si acpi=
_power_meter xfs libcrc32c mgag200 i2c_algo_bit drm_shmem_helper drm_kms_he=
lper sd_mod t10_pi crc64_rocksoft crc64 syscopyarea sg sysfillrect sysimgbl=
t fb_sys_fops drm ixgbe ahci libahci libata crc32c_intel mdio dca wmi dm_mi=
rror dm_region_hash dm_log dm_mod ipmi_devintf ipmi_msghandler fuse [ 9385.=
243065]  [last unloaded: iavf]

Dereference happens in if (ADV_LINK_SUPPORT(adapter)) statement

Fixes: 209f2f9c7181 ("iavf: Add support for VIRTCHNL_VF_OFFLOAD_VLAN_V2 neg=
otiation")
Signed-off-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_ethtool.c | 6 ++++++
 drivers/net/ethernet/intel/iavf/iavf_main.c    | 2 +-
 2 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/e=
thernet/intel/iavf/iavf_ethtool.c
index e535d4c3da49..01e4037407e5 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c

Tested-by: Marek Szlosek <marek.szlosek@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
