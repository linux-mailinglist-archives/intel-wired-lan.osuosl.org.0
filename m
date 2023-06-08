Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 73F8E727FAB
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Jun 2023 14:12:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0FF5041F95;
	Thu,  8 Jun 2023 12:12:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0FF5041F95
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686226342;
	bh=UAKZ9jwR+KeLzPKVSaNafe/CRQNOoaOk50BIm5Wc4JE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=La21SbJjO7Qfy+PmddYqS7Y/lnhGb07vaJddOkD44ho8Hoj8fgIjdsPnx2ZSASOkG
	 WhRI7I6CrkUvl3mHRmYqf/VXQq2o4CVl4QRGOQ6aMEtxg3wjBX6PRxbmzYxEy9dFix
	 U0otNYezGnYOh1uheTtPoWKJtw+raN12/IwLy5ZU5G7ZrQFn8wB0JXL0Xpor7SHNie
	 A68KgkcEriUzOSihoSrIqFu8gdONRsOFupvzLGdARY2cAi1SrGllyBRi1ngnXAuxzZ
	 yA4HffUpn0EaDRXgEQsehaqddwTtUzN20fxxnKIoCiF9I7WdYa1FcDIvga6uraR9F1
	 zMFiN+8MAzUTw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tFOnMPTNYzcM; Thu,  8 Jun 2023 12:12:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6A38341F80;
	Thu,  8 Jun 2023 12:12:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6A38341F80
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8C3571BF35A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jun 2023 12:12:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5F2BC402E4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jun 2023 12:12:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5F2BC402E4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yDCMTAkwC_1L for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Jun 2023 12:12:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5F4E14025D
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5F4E14025D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jun 2023 12:12:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="337645650"
X-IronPort-AV: E=Sophos;i="6.00,226,1681196400"; d="scan'208";a="337645650"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 05:12:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="799805398"
X-IronPort-AV: E=Sophos;i="6.00,226,1681196400"; d="scan'208";a="799805398"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by FMSMGA003.fm.intel.com with ESMTP; 08 Jun 2023 05:12:13 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 8 Jun 2023 05:12:13 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 8 Jun 2023 05:12:12 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 8 Jun 2023 05:12:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JAxFyEAKjy+k4zGMKFWg7smVdP4W2ugoyJqug2fzjbehgkSEOMjFZxXnHgiKBJfGrEtDgfrfOJSpdCvKw46i/0HKdn3FNOSUW9kOPkGq8UHzk0wgJFBiMuTAJKk7rKYv6nBvVweVre+16fgFhb/HQkBVC1ZHn6sH1gu0sm8VryQsXTEf/1KOdKQmqejq4CIes4kNHsgzvYE0UuvZFL4DX/qe5gA7YTZqhsOfAb4ndp6/xnsWn0oPu9QFytG9eSParskOV++jzMeyxY0xglanFywicY3KzFFuYMI13bEi6TPXe0ilmmXq2kRBC1TbyVw8X2wk+daD9vErD9ALoIITjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WdR48AJnPI0xitdePWciVndGc0jsYF7Zg5vNO2/iNNE=;
 b=Bb6NjRq5Wi7ra9HSZdmCI81w3En78TdMg7vZkkkZa161adhNVa3TPsnivxiTUHnQDeM6kjhg26hx9j8v/g9kRogGe3hqQzaaW/uv84A5r36U7b5iXAtzxPkANIK84q/7dGGX4xaqup2FNSKnHU8qk9hFKQYZ+lKIgffhqmHNPfoMZKEsHVnIs+2tMfy+YlaWnHofKsXsLvjdQ3bZ2ZahLb11ZOVjPNjbRx/Cg71tQreV+tTfeuMAh0WSLlepX+vPi6dQaCssU5Vg0iV5M3rE1dLUzeX39nAPmpCXTfPOLLM6I2aKsCTqaZWvf2/JFPcuuotWeFoblVjJWtqHDLzARg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5354.namprd11.prod.outlook.com (2603:10b6:408:11b::7)
 by MW3PR11MB4618.namprd11.prod.outlook.com (2603:10b6:303:5f::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.33; Thu, 8 Jun
 2023 12:12:12 +0000
Received: from BN9PR11MB5354.namprd11.prod.outlook.com
 ([fe80::cf52:d7:14f9:f2bf]) by BN9PR11MB5354.namprd11.prod.outlook.com
 ([fe80::cf52:d7:14f9:f2bf%4]) with mapi id 15.20.6455.030; Thu, 8 Jun 2023
 12:12:12 +0000
From: "Arland, ArpanaX" <arpanax.arland@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v3 1/5] ice: handle extts in
 the miscellaneous interrupt thread
Thread-Index: AQHZlM4/vLYN+8+XgESH1YJMP+pAUa+AzmLA
Date: Thu, 8 Jun 2023 12:12:12 +0000
Message-ID: <BN9PR11MB53543E3C434FBE10AEF834018050A@BN9PR11MB5354.namprd11.prod.outlook.com>
References: <20230601211507.707619-1-jacob.e.keller@intel.com>
 <20230601211507.707619-2-jacob.e.keller@intel.com>
In-Reply-To: <20230601211507.707619-2-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN9PR11MB5354:EE_|MW3PR11MB4618:EE_
x-ms-office365-filtering-correlation-id: f5c0dfc7-1e0b-4f8b-91db-08db68199721
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GkhR7xlp5lZoAig4Ip78nGIC8vNmErkcBMyDenpBZaFev/ZfQW1XNNdt/Y1lXIbfKPSQWR/cQyO9dnNC9CjQvEDRUiUK4sb/hGN0uv1fUW3WBLEYyT+yNzPITvW2waNYLcJKX9eAQ8rRbL/Z2SwQR0BYIpFZ+s90VFqd4MAay3SM1eRKEimf66PcDiQpxWdJnQ/d0rjKKbnvYsDjjP5i7zcFopums6WSEMOeEH3URP2YJcKg4NZI+56AUPDD5tWdYUajr2eRyDWNotmZ804CHsqwTJv85d6nmUvY+SuZ3aZmLS+V/J6M4NogEJ7HkLSYocHKGivw1lWM6OfourG0uLb+wdNnrEYVnji2DZ2TCca+pALN96CX7meLUz8gCWpNGfM7ZqngXypYztb3zQ62qqNqa7u7j4G0pPfZQflNzmRFykx0yM5ti5/SbtRkXypgIpf+js7G/JOyd+swkk84WL8+PkFNMosb8AwsEfb3lbmlybt2za08k7d/wZk6/pR1IWsgXA9M2KQL5AbbxGuqTGkk1xhOWooU+KrTicPRBTRN6Z+iYBWoEHHr08EVFdrVSjfhfSoSaM+KzP28iCL7m+RwyRis3i7todRyPOSFZQI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5354.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(366004)(396003)(39860400002)(136003)(346002)(451199021)(6506007)(53546011)(9686003)(26005)(107886003)(52536014)(83380400001)(122000001)(86362001)(33656002)(186003)(82960400001)(316002)(55016003)(2906002)(5660300002)(8676002)(38070700005)(8936002)(41300700001)(38100700002)(966005)(76116006)(66446008)(110136005)(66556008)(66476007)(66946007)(4326008)(6636002)(64756008)(478600001)(71200400001)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Kl+uT5boFnhiUV2dRkIaT37rUmAjB5d1M1ye5XjeoFc4haFariDaahCrhsP2?=
 =?us-ascii?Q?/4elGEvfh0w8wmIgXmzuaa4WDIJTeIg6bt+eqxSM71ai9ovXFomqjAv6JC9k?=
 =?us-ascii?Q?vBFd0x3HUi7XMNI0ZdlrHas028NFkbxebkhN93oBJoDMJzm4se7RRWuJi/eX?=
 =?us-ascii?Q?KuKymVFaj+uES1HY+8I8HZHOISB6aAMVLvdiF90JduH2bT6cW9eGpDxcSlUi?=
 =?us-ascii?Q?4TdoUJ7IwPE8N/1D5fDwRZQwmELXHI/wqWlb44dC1jIbi9vYPNg4qornmxe2?=
 =?us-ascii?Q?Hb8pPwk0hpaykD78d3DEJdNzh6QFc5svm+KkJoUbcuZNXH/6yTEsny7gdMqR?=
 =?us-ascii?Q?pG8muu5UQqiv0wgyuQKd/u8iPO/LSV1G6mGHgKN4Sj8Iwyb6NTJ3N/hJl4BT?=
 =?us-ascii?Q?m7rlO3aWrvSqharsJhwcddbYyZcl9BtZt/ntO20BVLnVZfPoLElkRDwOZw5q?=
 =?us-ascii?Q?6SfOVaXfJM0ljjPAuqD9+1He2g91r+lIOvZWw3NYk6GSuVDM8KarFrZ66mzp?=
 =?us-ascii?Q?YcI/JXTZzSNXfCqSgbMp0+RuS09FVMChWaiMTZXrbJw3m2cxYlNBW0S5MrvE?=
 =?us-ascii?Q?qw/wAAVqW1PGEDDDo4sSxEeDKX4ZXetd1wysb1CZAH4uowWG2982htkwtz0H?=
 =?us-ascii?Q?IOBscSdpX4DjfZ5Do7MwLT7zSk7nPL1YKb7tdoQRm+K8FZrNJ5N4RqF0VA0d?=
 =?us-ascii?Q?x+XRQyrNKs7EJN8r2dcmUKyCmgLKsE3diNLHqzG4xB5EtBz4HQk1moBQBbTa?=
 =?us-ascii?Q?EjRW4PNDLFwDD6LjZk94sGvajsyHlOxtoa3LAsM+URKv/71hGYiwgcW3uFLg?=
 =?us-ascii?Q?8ZhMg4AzSP6T1Ru/lqSVqzZ4AfUaOsJC6QzWeb7WQCK40hhuIk86rSkWHiav?=
 =?us-ascii?Q?I3dRY2PdNPv00eqjVj2USiZgClK9C3ykkeSdrqP1KIb9//v0WI2sALEERU6d?=
 =?us-ascii?Q?1v4V7iPD57puxY/t4LPhQyCDhsfPDgdKaVh+e22Qjf+GZMsx0N1+uRIIklzB?=
 =?us-ascii?Q?PW57RZT6LLnV/DpQ4N1N50PJjTsH5YHkETMobMyaPQ/rLKkwA2hUtRdH6aMP?=
 =?us-ascii?Q?cB5uDiCoXDhZPJOwXvkrpaedsws9Q2p6vFfcIQ4PfhiawRQESN829ZLEo4F2?=
 =?us-ascii?Q?XYQWcq6bovS59LAIbl0RRZNO/Nt16lyKY2BjmxV1NUozB1x7Yo64h6Q4jK2J?=
 =?us-ascii?Q?O5hpGJkABacgFMvHeQRd1B/3iT74kah5KA6Im/I+R+ZNkqVdxAH6hSg7Eo+/?=
 =?us-ascii?Q?UbgUtk4kcxdLIxjNjI5XQ6ZvDExQzm9GXB9TA+ZX6r85KclQDZmHy5Ki2IDR?=
 =?us-ascii?Q?U5TIvTG+bZCtVeHhPCsSm5ZWAYix+7jRErXlTz17HuSr22fGF+JFsgUaE3AK?=
 =?us-ascii?Q?aLGC/f/UOQ7o5EfYaisM7WpdH28kb50iG9/XVy6FBxJiR2Vit8/YfiAr+rLc?=
 =?us-ascii?Q?h/u1Ul1/kMC6xYgvsk+oC+menHJWfKBhLOMvhSRORewSMSjP6Uvjvmgq24rY?=
 =?us-ascii?Q?cgywp6agME2EoQNmZ29aDc0UxDyTAPORpSBxh277na86sqECqSZAM97I5wWl?=
 =?us-ascii?Q?VWXMfDR9FFJEOk2XNLOg9NSPO9c2e4UXCs9tg5Qd?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5354.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f5c0dfc7-1e0b-4f8b-91db-08db68199721
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2023 12:12:12.1723 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: R5kQLpJ1+7E99Pl5ge2MmZGIUPuCxvxygwf2+SzzFgAO9bQ5YzAk1nzwARRqJIPlbBY1Ac4xfzBFZp30RoncZXqkz/iWgVUQNEsMK/LiDMg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4618
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686226334; x=1717762334;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yU8QGZ6DHO1skWG/hDOJ4LYgFb3aKd2eU6xeRx2VLbw=;
 b=NC2AT8U9IgoPCJOKdi3zz8Z3uRjP4TpjXqcoxWCfRHBdiOOmDCD9Eb/D
 a1j7e0bTskTFjY8KL1WmcoTNkTSuMo6btft0SXOarUPKKuv3p5IonDrTf
 AE0gsV4SqUiB/d57MSbTRZH0ua6yfFYnVvXPrwnpfeOnUkzCBgYbX5l0t
 QOkFOBThmDyWzrrPd3QiIEk89E4KShCmcscJQCg1ekxXX4eNOztU+KeHc
 axH3gp4JmJZ2m0YyaEKl+ygOgU+66sb5lnm08xbDptaLG9R845ZCeiILm
 Ptc0e44M14vTTamCXM/Qb02rYOIrUszJhRCDD2c4wliD835ErE042iqSL
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NC2AT8U9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 1/5] ice: handle extts in
 the miscellaneous interrupt thread
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
Cc: "Kolacinski, Karol" <karol.kolacinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jacob Keller
> Sent: Friday, June 2, 2023 2:45 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Cc: Kolacinski, Karol <karol.kolacinski@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v3 1/5] ice: handle extts in the miscellaneous interrupt thread
>
> From: Karol Kolacinski <karol.kolacinski@intel.com>
>
> The ice_ptp_extts_work() and ice_ptp_periodic_work() functions are both scheduled on the same kthread worker, pf.ptp.kworker. The
> ice_ptp_periodic_work() function sends to the firmware to interact with the PHY, and must block to wait for responses.
>
> This can cause delay in responding to the PFINT_OICR_TSYN_EVNT interrupt cause, ultimately resulting in disruption to processing an input signal of the frequency is high enough. In our testing, even 100 Hz > signals get disrupted.
>
> Fix this by instead processing the signal inside the miscellaneous interrupt thread prior to handling Tx timestamps.
>
> Use atomic bits in a new pf->misc_thread bitmap in order to safely communicate which tasks require processing within the ice_misc_intr_thread_fn(). This ensures the communication of desired tasks from > the ice_misc_intr() are correctly processed without racing even in the event that the interrupt triggers again before the thread function exits.
>
> Fixes: 172db5f91d5f ("ice: add support for auxiliary input/output pins")
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h      |  7 ++++++
>  drivers/net/ethernet/intel/ice/ice_main.c | 29 ++++++++++++++++-------  drivers/net/ethernet/intel/ice/ice_ptp.c  | 12 +++-------  drivers/net/ethernet/intel/ice/ice_ptp.h  |  4 ++--
>  4 files changed, 33 insertions(+), 19 deletions(-)
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
